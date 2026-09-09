/*
 * NV2A PGRAPH → D3D11 Translator
 *
 * Translates NV2A push buffer methods into D3D8→D3D11 rendering calls.
 * Designed for Xbox static recompilation (xboxrecomp toolkit).
 *
 * Menu rendering profile (captured from xemu):
 *   - INLINE_ARRAY with 5-dword vertices (X, Y, U, V, Color)
 *   - TRIANGLE_STRIP topology
 *   - ~448 vertices per frame (~89 quads)
 *   - Textured 2D elements in 640×480 screen space
 */

#include "nv2a_pgraph_d3d11.h"
#include "nv2a_regs.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>

/* D3D8 device — we include the full header for COM vtable access */
#include "../d3d/d3d8_xbox.h"
#include "../d3d/d3d8_swizzle.h"
#include "nv2a_vertex_program.h"
extern IDirect3DDevice8 *xbox_GetD3DDevice(void);

/* Global.txd texture lookup */
typedef struct { char name[24]; IDirect3DTexture8 *texture; uint32_t width, height, format; } TXD_Entry;
typedef struct { TXD_Entry entries[512]; int count; } TXD_Dict;
extern TXD_Dict g_global_txd;
extern int g_textures_loaded;
extern IDirect3DTexture8 *txd_find(const TXD_Dict *dict, const char *name);

/* Font atlas DXT5 data captured from xemu */
#include "font_atlas_data.h"

/* Create a D3D8 texture from raw DXT5 data */
static IDirect3DTexture8 *create_dxt5_texture(IDirect3DDevice8 *dev,
    uint32_t width, uint32_t height, const void *dxt5_data, uint32_t data_size)
{
    IDirect3DTexture8 *tex = NULL;
    /* D3DFMT_DXT5 = 0x35545844 ('DXT5') on Xbox, mapped to DXGI_FORMAT_BC3 in our layer.
     * Our d3d8 layer uses format code 0x0F for DXT5. */
    HRESULT hr = dev->lpVtbl->CreateTexture(dev, width, height, 1,
        0 /*Usage*/, 0x0F /*DXT5*/, 0 /*D3DPOOL_DEFAULT*/, &tex);
    if (hr != 0 || !tex) {
        fprintf(stderr, "[PGRAPH-D3D11] Failed to create font atlas texture: hr=0x%08X\n", hr);
        return NULL;
    }

    /* Lock and fill with DXT5 data */
    D3DLOCKED_RECT lr = {0};
    hr = tex->lpVtbl->LockRect(tex, 0, &lr, NULL, 0);
    if (hr == 0 && lr.pBits) {
        memcpy(lr.pBits, dxt5_data, data_size);
        tex->lpVtbl->UnlockRect(tex, 0);
        fprintf(stderr, "[PGRAPH-D3D11] Created font atlas: %ux%u DXT5 (%u bytes)\n",
                width, height, data_size);
    } else {
        fprintf(stderr, "[PGRAPH-D3D11] Failed to lock font atlas: hr=0x%08X\n", hr);
    }
    return tex;
}

/* ══════════════════════════════════════════════════════════════════════
 * NV2A method constants (from nv2a_regs.h, subset for translator)
 * ══════════════════════════════════════════════════════════════════════ */

#define NV097_SET_BEGIN_END             0x17FC
#define NV097_INLINE_ARRAY              0x1818
/* These four were wrong: 0x01D0..0x01DC are not NV2A methods at all, so the
 * clear command was never recognised and the backbuffer was never erased --
 * the swapchain just kept flipping whatever frames were left in it. Values
 * per nv2a_regs.h (NV097_SET_ZSTENCIL_CLEAR_VALUE 0x1D8C follows). */
#define NV097_CLEAR_SURFACE             0x1D94
#define NV097_SET_COLOR_CLEAR_VALUE     0x1D90
#define NV097_SET_CLEAR_RECT_HORIZONTAL 0x1D98
#define NV097_SET_CLEAR_RECT_VERTICAL   0x1D9C

#define NV097_SET_DEPTH_TEST_ENABLE     0x0354
#define NV097_SET_BLEND_ENABLE          0x0304
#define NV097_SET_BLEND_FUNC_SFACTOR    0x0344
#define NV097_SET_BLEND_FUNC_DFACTOR    0x0348
#define NV097_SET_CULL_FACE_ENABLE      0x039C
#define NV097_SET_ALPHA_TEST_ENABLE     0x0300
#define NV097_SET_COLOR_MASK            0x0358
#define NV097_SET_SHADE_MODE            0x0368

#define NV097_SET_VIEWPORT_OFFSET       0x0A20
#define NV097_SET_VIEWPORT_SCALE        0x0AF0
#define NV097_SET_SURFACE_CLIP_HORIZONTAL 0x0200
#define NV097_SET_SURFACE_CLIP_VERTICAL 0x0204

#define NV097_SET_TEXTURE_OFFSET        0x1B00  /* +0x40 per stage */
#define NV097_SET_TEXTURE_FORMAT        0x1B04  /* +0x40 per stage */
#define NV097_SET_TEXTURE_CONTROL0      0x1B08  /* +0x40 per stage */

/* NV2A draw modes → D3D primitive types */
static int nv2a_draw_mode_to_d3d(uint32_t mode) {
    switch (mode) {
        case 1:  return D3DPT_POINTLIST;
        case 2:  return D3DPT_LINELIST;
        case 3:  return D3DPT_LINESTRIP;  /* LINE_LOOP → LINE_STRIP */
        case 4:  return D3DPT_LINESTRIP;
        case 5:  return D3DPT_TRIANGLELIST;
        case 6:  return D3DPT_TRIANGLESTRIP;
        case 7:  return D3DPT_TRIANGLEFAN;
        case 8:  return D3DPT_TRIANGLELIST; /* QUADS → TRI_LIST (needs conversion) */
        default: return D3DPT_TRIANGLELIST;
    }
}

/* NV2A blend factors → D3D blend */
static uint32_t nv2a_blend_to_d3d(uint32_t nv) {
    switch (nv) {
        case 0x0000: return D3DBLEND_ZERO;
        case 0x0001: return D3DBLEND_ONE;
        case 0x0302: return D3DBLEND_SRCALPHA;
        case 0x0303: return D3DBLEND_INVSRCALPHA;
        default:     return D3DBLEND_ONE;
    }
}

/* ══════════════════════════════════════════════════════════════════════
 * Translator State
 * ══════════════════════════════════════════════════════════════════════ */

/* Inline vertex buffer - max 16K vertices per draw */
#define MAX_INLINE_VERTS 16384
#define INLINE_VERT_DWORDS 5  /* X, Y, U, V, Color */

/* RwIm2DVertex-compatible output vertex (28 bytes) */
typedef struct {
    float x, y, z, rhw;
    uint32_t color;
    float u, v;
} OutputVertex;

static struct {
    /* Draw state */
    int in_draw;           /* Between BEGIN and END */
    uint32_t draw_mode;    /* NV2A draw mode (0=end, 6=tristrip, etc.) */
    int d3d_prim_type;     /* Translated D3D prim type */

    /* Inline vertex accumulator */
    uint32_t inline_data[MAX_INLINE_VERTS * INLINE_VERT_DWORDS];
    uint32_t inline_count; /* Number of dwords accumulated */
    uint32_t vert_stride;  /* Dwords per vertex (auto-detected) */
    /* DOA3: inline vertex LAYOUT supplied by the recompiled D3D draw wrapper
     * (sub_001B3760 in recomp_manual.c). The XDK never emits
     * SET_VERTEX_DATA_ARRAY_FORMAT on this path, so the pgraph can't derive
     * it from methods; the CPU-side FVF object holds the truth. Offsets are
     * DWORD indices within a vertex; -1 = attribute absent. */
    int layout_pos_dw;     /* dwords of position (2=XY, 3=XYZ, 4=XYZRHW) */
    int layout_uv_off;     /* dword offset of texcoord0, or -1 */
    int layout_color_off;  /* dword offset of diffuse (D3DCOLOR), or -1 */

    /* Clear state */
    uint32_t clear_color;
    uint32_t clear_rect_h;  /* (width << 16) | x */
    uint32_t clear_rect_v;  /* (height << 16) | y */

    /* Render state cache */
    int depth_test;
    int blend_enable;
    uint32_t blend_sfactor;
    uint32_t blend_dfactor;
    int cull_enable;
    int alpha_test;
    uint32_t color_mask;

    /* Viewport */
    float vp_offset[4];
    float vp_scale[4];
    uint32_t surface_clip_h;
    uint32_t surface_clip_v;

    /* Texture state per stage (4 stages) */
    struct {
        uint32_t offset;     /* NV2A VRAM offset (method 0x1B00) */
        uint32_t format;     /* Format register (method 0x1B04) */
        uint32_t control0;   /* Control0 register (method 0x1B08) */
        uint32_t control1;   /* Control1: linear pitch in hi16 (method 0x1B0C) */
        uint32_t image_rect; /* Linear size: (width<<16)|height (method 0x1B1C) */
        int enabled;         /* Decoded from control0 bit 30 */
    } tex[4];

    /* DOA3: dynamic texture created from guest RAM (the movie frame surface
     * and other linear textures the game renders from memory). Re-uploaded
     * every draw; recreated when offset/dims/format change. */
    IDirect3DTexture8 *dyn_tex;   /* the binding the last draw resolved to */
    uint32_t dyn_src_off;   /* guest address of the last upload */
    int      dyn_src_valid; /* last upload was static (swizzled/DXT) */
    uint32_t dyn_w, dyn_h, dyn_fmt;
    /* Guest-texture cache: one D3D texture per (address, size, format). */
#define TEXCACHE_N 192
    struct {
        IDirect3DTexture8 *tex;
        uint32_t off, w, h, fmt;
        int uploaded;       /* immutable source already uploaded */
    } texcache[TEXCACHE_N];
    uint32_t texcache_next;

    /* Cached texture pointers */
    void *menu_texture;           /* IDirect3DTexture8* from Global.txd */
    IDirect3DTexture8 *font_atlas; /* Created from captured DXT5 data */
    int texture_lookup_done;

    /* Stats */
    PgraphD3D11Stats stats;

    /* Chyron scroll */
    float chyron_scroll_offset;  /* Pixels to shift X for chyron text */

    /* Transform program state.
     *
     * DOA3 draws its 3D screens with MODE_PROGRAM, so attribute 0 is an
     * object-space position that only becomes screen space after the uploaded
     * program runs. `attr_fmt` is the authoritative inline vertex layout from
     * SET_VERTEX_DATA_ARRAY_FORMAT, which this title does emit (the previous
     * title did not, hence the wrapper-supplied fallback layout above). */
    Nv2aVertexProgram vp;
    uint32_t xform_mode;        /* NV097_SET_TRANSFORM_EXECUTION_MODE */
    uint32_t attr_fmt[16];      /* SET_VERTEX_DATA_ARRAY_FORMAT per slot */
    int      attr_fmt_seen;

    /* Vertex-array (indexed / DRAW_ARRAYS) submission.
     *
     * The title screen does not use INLINE_ARRAY at all: it binds vertex
     * buffers and issues ~378 D3DDevice_DrawIndexedVertices per frame with
     * fixed-function T&L (confirmed against a cxbx trace of the real game).
     * Those arrive as SET_VERTEX_DATA_ARRAY_OFFSET + ARRAY_ELEMENT/DRAW_ARRAYS,
     * every one of which this translator previously ignored -- so the whole
     * screen was silently dropped. */
    uint32_t attr_off[16];      /* SET_VERTEX_DATA_ARRAY_OFFSET per slot */
    uint32_t idx[MAX_INLINE_VERTS];
    uint32_t idx_count;
    float    composite[16];     /* NV097_SET_COMPOSITE_MATRIX */
    int      composite_seen;

    /* Init flag */
    int initialized;
} g_pg;

/* ══════════════════════════════════════════════════════════════════════
 * Float/uint32 conversion
 * ══════════════════════════════════════════════════════════════════════ */
static float u2f(uint32_t u) {
    union { float f; uint32_t i; } x;
    x.i = u;
    return x.f;
}

/* ══════════════════════════════════════════════════════════════════════
 * Initialization
 * ══════════════════════════════════════════════════════════════════════ */

void pgraph_d3d11_init(void)
{
    memset(&g_pg, 0, sizeof(g_pg));
    g_pg.vert_stride = INLINE_VERT_DWORDS;  /* Default: 5 dwords per vertex */
    g_pg.layout_pos_dw = 2;                 /* burnout default: X,Y,U,V,color */
    g_pg.layout_uv_off = 2;
    g_pg.layout_color_off = 4;
    g_pg.clear_color = 0xFF000000;
    g_pg.color_mask = 0x01010101;
    g_pg.initialized = 1;

    fprintf(stderr, "[PGRAPH-D3D11] Translator initialized\n");
}

void pgraph_d3d11_shutdown(void)
{
    g_pg.initialized = 0;
    fprintf(stderr, "[PGRAPH-D3D11] Translator shut down (draws=%u, verts=%u)\n",
            g_pg.stats.draw_calls, g_pg.stats.vertices_submitted);
}

/* ══════════════════════════════════════════════════════════════════════
 * Draw Submission
 * ══════════════════════════════════════════════════════════════════════ */

/* Build/refresh a D3D8 texture from guest RAM for the formats DOA3 uses.
 *
 * This previously handled only the four LIN_* formats, so every swizzled or
 * DXT-compressed texture returned NULL and the draw fell through to
 * vertex-colour only -- with alpha blending forced on, that is invisible. The
 * DOA3 title screen binds swizzled and compressed textures, so none of it
 * appeared on screen.
 *
 * Two things the linear-only path got wrong for those formats:
 *   - size: only linear textures carry it in SET_TEXTURE_IMAGE_RECT. Swizzled
 *     and DXT textures encode log2(width)/log2(height) in the format register
 *     (BASE_SIZE_U/V), which is why they arrived as 0x0.
 *   - layout: swizzled textures are Z-order (Morton) and must be unswizzled to
 *     row-major before upload. DXT blocks are already linear.
 *
 * The Xbox D3DFORMAT codes are not all equal to the NV2A colour codes (NV A8 is
 * 0x19 but D3DFMT_A8 is 19 decimal; NV A1R5G5B5 is 0x02 but D3DFMT_A1R5G5B5 is
 * 3), so map them explicitly instead of passing the raw NV code through. */
extern ptrdiff_t g_xbox_mem_offset;

static int nv_texture_format(uint32_t nvfmt, D3DFORMAT *out_fmt,
                             uint32_t *out_bpp, int *out_swizzled,
                             int *out_compressed)
{
    D3DFORMAT f;
    uint32_t bpp;
    int comp = 0;
    switch (nvfmt) {
    case 0x00: f = D3DFMT_L8;           bpp = 1; break;  /* SZ_Y8       */
    case 0x01: f = D3DFMT_L8;           bpp = 1; break;  /* SZ_AY8      */
    case 0x02: f = D3DFMT_A1R5G5B5;     bpp = 2; break;  /* SZ_A1R5G5B5 */
    case 0x03: f = D3DFMT_A1R5G5B5;     bpp = 2; break;  /* SZ_X1R5G5B5 */
    case 0x04: f = D3DFMT_A4R4G4B4;     bpp = 2; break;
    case 0x05: f = D3DFMT_R5G6B5;       bpp = 2; break;
    case 0x06: f = D3DFMT_A8R8G8B8;     bpp = 4; break;
    case 0x07: f = D3DFMT_X8R8G8B8;     bpp = 4; break;
    case 0x0C: f = D3DFMT_DXT1;         bpp = 0; comp = 1; break;
    case 0x0E: f = D3DFMT_DXT3;         bpp = 0; comp = 1; break;
    case 0x0F: f = D3DFMT_DXT5;         bpp = 0; comp = 1; break;
    case 0x19: f = D3DFMT_A8;           bpp = 1; break;  /* SZ_A8       */
    case 0x1A: f = D3DFMT_A8L8;         bpp = 2; break;  /* SZ_A8Y8     */
    case 0x10: f = D3DFMT_LIN_A1R5G5B5; bpp = 2; break;
    case 0x11: f = D3DFMT_LIN_R5G6B5;   bpp = 2; break;
    case 0x12: f = D3DFMT_LIN_A8R8G8B8; bpp = 4; break;
    case 0x13: f = D3DFMT_L8;           bpp = 1; break;  /* LIN_Y8      */
    case 0x1C: f = D3DFMT_LIN_A1R5G5B5; bpp = 2; break;
    case 0x1D: f = D3DFMT_LIN_A4R4G4B4; bpp = 2; break;
    case 0x1E: f = D3DFMT_LIN_X8R8G8B8; bpp = 4; break;
    case 0x1F: f = D3DFMT_A8;           bpp = 1; break;  /* LIN_A8      */
    default: return 0;
    }
    *out_fmt = f;
    *out_bpp = bpp;
    *out_compressed = comp;
    *out_swizzled = !comp && d3d8_format_is_swizzled(nvfmt);
    return 1;
}

static IDirect3DTexture8 *get_dynamic_texture(IDirect3DDevice8 *dev)
{
    uint32_t fmtreg = g_pg.tex[0].format;
    uint32_t off    = g_pg.tex[0].offset;
    uint32_t nvfmt  = (fmtreg >> 8) & 0xFF;
    uint32_t w, h, bpp, pitch;
    int swizzled, compressed;
    D3DFORMAT d3dfmt;

    if (!off || off >= 0x04000000u) return NULL;
    {   /* DOA3 DIAG: why textures do or do not materialise. */
        extern uint32_t g_texfmt[64], g_texnull[4];
        g_texfmt[nvfmt & 63]++;
        if (!off || off >= 0x04000000u) g_texnull[0]++;
    }
    if (!nv_texture_format(nvfmt, &d3dfmt, &bpp, &swizzled, &compressed)) {
        extern uint32_t g_texnull[4];
        g_texnull[1]++;
        return NULL;
    }

    /* Size: swizzled/compressed carry log2 dims in the format register;
     * linear ones use the image-rect method. */
    {
        uint32_t lu = (fmtreg & NV097_SET_TEXTURE_FORMAT_BASE_SIZE_U) >> 20;
        uint32_t lv = (fmtreg & NV097_SET_TEXTURE_FORMAT_BASE_SIZE_V) >> 24;
        if (swizzled || compressed) {
            if (lu > 12 || lv > 12) return NULL;
            w = 1u << lu;
            h = 1u << lv;
        } else {
            w = g_pg.tex[0].image_rect >> 16;
            h = g_pg.tex[0].image_rect & 0xFFFF;
            if (!w || !h) {
                if (lu > 12 || lv > 12) return NULL;
                w = 1u << lu;
                h = 1u << lv;
            }
        }
    }
    if (w == 0 || h == 0 || w > 2048 || h > 2048) {
        extern uint32_t g_texnull[4];
        g_texnull[2]++;
        return NULL;
    }

    /* Source stride. control1 carries a linear pitch and is only meaningful
     * for linear formats; swizzled and DXT data are tightly packed. */
    if (compressed) {
        pitch = ((w + 3) / 4) * ((d3dfmt == D3DFMT_DXT1) ? 8u : 16u);
    } else if (swizzled) {
        pitch = w * bpp;
    } else {
        pitch = g_pg.tex[0].control1 >> 16;
        if (pitch < w * bpp || pitch > 0x4000) pitch = w * bpp;
    }

    /* Bounds-check the whole source against guest RAM before reading it. */
    {
        unsigned long long need = compressed
            ? (unsigned long long)pitch * ((h + 3) / 4)
            : (unsigned long long)pitch * h;
        if ((unsigned long long)off + need > 0x04000000ull) {
            extern uint32_t g_texnull[4];
            g_texnull[3]++;
            return NULL;
        }
    }

    /* One texture per distinct binding, kept alive.
     *
     * There used to be a single slot here, so a screen that binds fifty
     * different textures in a frame destroyed and recreated a D3D texture on
     * nearly every draw -- ~500 CreateTexture + upload pairs a frame, which is
     * what held the post-movie screen at 0.4 fps. Cache by the guest address,
     * format and size instead; immutable (swizzled/DXT) sources then upload
     * exactly once and linear ones (movie frames, render targets) re-upload in
     * place. */
    {
        int slot = -1, i;
        for (i = 0; i < TEXCACHE_N; i++) {
            if (g_pg.texcache[i].tex && g_pg.texcache[i].off == off &&
                g_pg.texcache[i].w == w && g_pg.texcache[i].h == h &&
                g_pg.texcache[i].fmt == (uint32_t)d3dfmt) {
                slot = i;
                break;
            }
        }
        if (slot < 0) {
            for (i = 0; i < TEXCACHE_N; i++)
                if (!g_pg.texcache[i].tex) { slot = i; break; }
            if (slot < 0) {                    /* full: round-robin evict */
                slot = (int)(g_pg.texcache_next++ % TEXCACHE_N);
                g_pg.texcache[slot].tex->lpVtbl->Release(g_pg.texcache[slot].tex);
                g_pg.texcache[slot].tex = NULL;
            }
            if (dev->lpVtbl->CreateTexture(dev, w, h, 1, 0, d3dfmt, 0,
                                           &g_pg.texcache[slot].tex) != 0 ||
                !g_pg.texcache[slot].tex) {
                g_pg.texcache[slot].tex = NULL;
                return NULL;
            }
            g_pg.texcache[slot].off = off;
            g_pg.texcache[slot].w = w;
            g_pg.texcache[slot].h = h;
            g_pg.texcache[slot].fmt = (uint32_t)d3dfmt;
            g_pg.texcache[slot].uploaded = 0;
            {   static unsigned s_made = 0;
                if (s_made < 64) { s_made++;
                    fprintf(stderr, "[PGRAPH-D3D11] texture %ux%u nvfmt=0x%02X d3dfmt=%d %s "
                                    "pitch=%u off=0x%08X\n",
                            w, h, nvfmt, (int)d3dfmt,
                            compressed ? "dxt" : (swizzled ? "swizzled" : "linear"),
                            pitch, off); } }
        }
        g_pg.dyn_tex = g_pg.texcache[slot].tex;
        g_pg.dyn_w = w; g_pg.dyn_h = h; g_pg.dyn_fmt = (uint32_t)d3dfmt;

        /* Swizzled and DXT textures come from the immutable XPR0 bundles, so
         * once uploaded they never need redoing -- re-unswizzling them every
         * draw costs far more than the whole rest of the frame. Linear
         * surfaces (the movie frame, render targets) do change in place, so
         * those are always re-uploaded. */
        if ((swizzled || compressed) && g_pg.texcache[slot].uploaded)
            return g_pg.dyn_tex;
        g_pg.texcache[slot].uploaded = (swizzled || compressed);
    }
    {
        D3DLOCKED_RECT lr;
        if (g_pg.dyn_tex->lpVtbl->LockRect(g_pg.dyn_tex, 0, &lr, NULL, 0) == 0 && lr.pBits) {
            const uint8_t *srcp = (const uint8_t *)((uintptr_t)off + g_xbox_mem_offset);
            uint8_t *dstp = (uint8_t *)lr.pBits;
            if (compressed) {
                /* DXT blocks are already linear; copy block-row by block-row. */
                uint32_t rows = (h + 3) / 4;
                for (uint32_t r = 0; r < rows; r++)
                    memcpy(dstp + (size_t)r * lr.Pitch,
                           srcp + (size_t)r * pitch, pitch);
            } else if (swizzled) {
                /* Z-order -> row-major, then copy honouring the lock pitch. */
                uint8_t *lin = (uint8_t *)malloc((size_t)w * h * bpp);
                if (lin) {
                    xbox_unswizzle_rect(lin, srcp, w, h, bpp);
                    for (uint32_t yy = 0; yy < h; yy++)
                        memcpy(dstp + (size_t)yy * lr.Pitch,
                               lin + (size_t)yy * w * bpp, (size_t)w * bpp);
                    free(lin);
                }
            } else {
                uint32_t row_bytes = w * bpp;
                for (uint32_t yy = 0; yy < h; yy++)
                    memcpy(dstp + (size_t)yy * lr.Pitch,
                           srcp + (size_t)yy * pitch, row_bytes);
            }
            g_pg.dyn_tex->lpVtbl->UnlockRect(g_pg.dyn_tex, 0);
        }
    }
    return g_pg.dyn_tex;
}

/* Called by the recompiled D3D draw wrapper before each inline draw. */
void pgraph_d3d11_set_vertex_layout(uint32_t stride_dw, int pos_dw,
                                    int uv_off, int color_off)
{
    if (stride_dw >= 2 && stride_dw <= 16) {
        g_pg.vert_stride = stride_dw;
        g_pg.layout_pos_dw = pos_dw;
        g_pg.layout_uv_off = uv_off;
        g_pg.layout_color_off = color_off;
    }
}

/* DOA3 DIAG counters */
uint32_t g_mhist[0x800];
uint32_t g_xmode, g_xmode_n[4];
uint32_t g_dstat[16][3];
uint32_t g_census[12];

uint32_t g_texfmt[64], g_texnull[4];
/* Read one vertex attribute out of guest memory.
 *
 * Slot layout comes from SET_VERTEX_DATA_ARRAY_FORMAT: type in bits 0-3,
 * component count in bits 4-7, stride in bits 8-31. A count of 0 means the
 * slot is disabled. */
static int nv_fetch_attr(int slot, uint32_t index, float out[4], uint32_t *out_color)
{
    extern ptrdiff_t g_xbox_mem_offset;
    uint32_t fmt = g_pg.attr_fmt[slot];
    uint32_t type = fmt & 0xF;
    uint32_t count = (fmt >> 4) & 0xF;
    uint32_t stride = fmt >> 8;
    uint32_t base = g_pg.attr_off[slot];
    uint32_t addr;
    const uint8_t *p;
    uint32_t c;

    if (count == 0 || base == 0 || base >= 0x04000000u)
        return 0;
    addr = base + index * stride;
    if (addr + 16u > 0x04000000u)
        return 0;
    p = (const uint8_t *)((uintptr_t)addr + g_xbox_mem_offset);

    out[0] = out[1] = out[2] = 0.0f;
    out[3] = 1.0f;

    switch (type) {
    case 2:   /* float32 */
        for (c = 0; c < count && c < 4; c++) {
            float f;
            memcpy(&f, p + c * 4, 4);
            out[c] = f;
        }
        return 1;
    case 0:   /* normalised ubyte, D3D (BGRA) order -- a colour */
        if (out_color) {
            memcpy(&c, p, 4);
            *out_color = c;
        }
        for (c = 0; c < count && c < 4; c++)
            out[c] = (float)p[c] * (1.0f / 255.0f);
        return 1;
    case 4:   /* normalised ubyte, OGL (RGBA) order */
        if (out_color)
            *out_color = ((uint32_t)p[3] << 24) | ((uint32_t)p[0] << 16) |
                         ((uint32_t)p[1] << 8)  |  (uint32_t)p[2];
        for (c = 0; c < count && c < 4; c++)
            out[c] = (float)p[c] * (1.0f / 255.0f);
        return 1;
    case 1: { /* normalised signed short */
        for (c = 0; c < count && c < 4; c++) {
            int16_t v;
            memcpy(&v, p + c * 2, 2);
            out[c] = (float)v * (1.0f / 32767.0f);
        }
        return 1;
    }
    case 5: { /* signed short, unscaled */
        for (c = 0; c < count && c < 4; c++) {
            int16_t v;
            memcpy(&v, p + c * 2, 2);
            out[c] = (float)v;
        }
        return 1;
    }
    default:
        return 0;
    }
}

/* Object space -> screen space for the fixed-function path.
 *
 * The game feeds these draws through fixed-function T&L, so the hardware
 * applies the composite matrix, then the perspective divide, then the
 * viewport. Reproduce that here and hand the result to the D3D8 layer as
 * pre-transformed XYZRHW, which is what the rest of this path expects. */
static void nv_transform_clip(const float in[4], OutputVertex *v,
                              int apply_composite);

static void nv_transform_position(const float in[4], OutputVertex *v)
{
    nv_transform_clip(in, v, g_pg.composite_seen);
}

/* Clip space -> screen space.
 *
 * `apply_composite` selects the fixed-function path (multiply by the composite
 * matrix first); the transform-program path passes 0 because the program has
 * already produced clip-space coordinates in o[0]. */
static void nv_transform_clip(const float in[4], OutputVertex *v,
                              int apply_composite)
{
    float c[4];
    float w, inv;
    float sx, sy, sz, ox, oy, oz;
    int i;

    if (apply_composite) {
        /* row-vector convention: c = in * M */
        for (i = 0; i < 4; i++)
            c[i] = in[0] * g_pg.composite[0 * 4 + i] +
                   in[1] * g_pg.composite[1 * 4 + i] +
                   in[2] * g_pg.composite[2 * 4 + i] +
                   in[3] * g_pg.composite[3 * 4 + i];
    } else {
        c[0] = in[0]; c[1] = in[1]; c[2] = in[2]; c[3] = in[3];
    }

    w = c[3];
    inv = (w != 0.0f) ? (1.0f / w) : 1.0f;

    /* Fall back to a full-surface viewport when the game has not set one;
     * a zero scale would collapse every vertex onto a point. */
    sx = g_pg.vp_scale[0]; sy = g_pg.vp_scale[1]; sz = g_pg.vp_scale[2];
    ox = g_pg.vp_offset[0]; oy = g_pg.vp_offset[1]; oz = g_pg.vp_offset[2];
    if (sx == 0.0f && sy == 0.0f) {
        sx = 320.0f;  ox = 320.0f;
        sy = -240.0f; oy = 240.0f;
        sz = 1.0f;    oz = 0.0f;
    }

    v->x   = c[0] * inv * sx + ox;
    v->y   = c[1] * inv * sy + oy;
    v->z   = c[2] * inv * sz + oz;
    v->rhw = inv;
}

/* Build one OutputVertex from the bound vertex arrays. */
/* DOA3 DIAG: did the transform-program path actually run for the last vertex,
 * and what did it produce? Reported on the [PG-ARRAY] line. */
int   g_vp_used, g_vpn;
float g_mv[16];
float g_vp_in0[4], g_vp_out0[4], g_fix_in0[4];
float g_vp_d0[4], g_vp_t0[4], g_vpbb[8];

/* Is the fixed-function composite matrix something we could actually transform
 * with? An unset or all-zero matrix maps every vertex onto the viewport
 * centre, which is never what the game meant. */
static int nv_composite_usable(void)
{
    int i;
    if (!g_pg.composite_seen)
        return 0;
    for (i = 0; i < 16; i++)
        if (g_pg.composite[i] != 0.0f)
            return 1;
    return 0;
}

static uint32_t nv_pack_color(const float c[4])
{
    int a = (int)(c[3] * 255.0f + 0.5f);
    int r = (int)(c[0] * 255.0f + 0.5f);
    int g = (int)(c[1] * 255.0f + 0.5f);
    int b = (int)(c[2] * 255.0f + 0.5f);
    if (a < 0) a = 0; if (a > 255) a = 255;
    if (r < 0) r = 0; if (r > 255) r = 255;
    if (g < 0) g = 0; if (g > 255) g = 255;
    if (b < 0) b = 0; if (b > 255) b = 255;
    return ((uint32_t)a << 24) | ((uint32_t)r << 16) |
           ((uint32_t)g << 8)  |  (uint32_t)b;
}

static void nv_build_array_vertex(uint32_t index, OutputVertex *v)
{
    float pos[4], tex[4], col[4];
    uint32_t colour = 0xFFFFFFFFu;

    memset(v, 0, sizeof(*v));
    v->color = 0xFFFFFFFFu;
    v->rhw = 1.0f;

    /* MODE_PROGRAM: attribute 0 is an object-space position that only becomes
     * clip space after the uploaded transform program runs. DOA3 draws every
     * post-movie screen this way. Treating those positions as fixed-function
     * input multiplied them by a composite matrix the game never set, which
     * collapsed every batch onto the viewport centre -- ~500 draws a frame,
     * all degenerate, and a black window.
     *
     * The mode bit alone is not a reliable selector here: the pushbuffer
     * carries SET_TRANSFORM_EXECUTION_MODE = FIXED for many of these draws
     * while every piece of fixed-function transform state it also carries is
     * zero -- the composite matrix streams in as 16 zero dwords and the
     * viewport scale as (0, -0, 0, 0). A zero matrix cannot be a real
     * transform, so when the game has a program loaded and has given the
     * fixed pipeline nothing to work with, run the program. */
    if (g_pg.vp.have_program &&
        ((g_pg.xform_mode & 3) == 2 || !nv_composite_usable())) {
        float in[NV2A_VP_NUM_INPUT][4];
        float out[NV2A_VP_NUM_OUTPUT][4];
        int s;
        for (s = 0; s < NV2A_VP_NUM_INPUT; s++) {
            /* Unwritten input registers read as (0,0,0,1) on hardware. */
            in[s][0] = in[s][1] = in[s][2] = 0.0f;
            in[s][3] = 1.0f;
            nv_fetch_attr(s, index, in[s], NULL);
        }
        if (nv2a_vp_execute(&g_pg.vp, in, out)) {
            {   /* Raw program output, accumulated over the batch: the only
                 * way to tell screen space from clip space is the range of
                 * o[0] across a whole draw. */
                extern int g_vp_used, g_vpn;
                extern float g_vp_in0[4], g_vp_out0[4], g_vp_d0[4], g_vp_t0[4];
                extern float g_vpbb[8];
                const float *o = out[NV2A_VP_OUT_POS];
                int k;
                g_vp_used = 1;
                if (g_vpn == 0) {
                    for (k = 0; k < 4; k++) { g_vpbb[k*2] = g_vpbb[k*2+1] = o[k]; }
                    memcpy(g_vp_in0, in[0], sizeof g_vp_in0);
                    memcpy(g_vp_out0, o, sizeof g_vp_out0);
                    memcpy(g_vp_d0, out[NV2A_VP_OUT_D0], sizeof g_vp_d0);
                    memcpy(g_vp_t0, out[NV2A_VP_OUT_T0], sizeof g_vp_t0);
                } else {
                    for (k = 0; k < 4; k++) {
                        if (o[k] < g_vpbb[k*2])   g_vpbb[k*2]   = o[k];
                        if (o[k] > g_vpbb[k*2+1]) g_vpbb[k*2+1] = o[k];
                    }
                }
                g_vpn++;
            }
            /* A transform program writes o[0] already in screen space with
             * 1/w in o[0].w -- the Xbox D3D8 runtime folds the viewport
             * transform into the program through c[-38]/c[-37], which is why
             * the hardware viewport registers arrive as (0, -0, 0, 0). That is
             * exactly D3D's XYZRHW, so hand it straight through instead of
             * running the fixed-function viewport transform over it. */
            v->x   = out[NV2A_VP_OUT_POS][0];
            v->y   = out[NV2A_VP_OUT_POS][1];
            v->z   = out[NV2A_VP_OUT_POS][2];
            v->rhw = out[NV2A_VP_OUT_POS][3];
            v->color = nv_pack_color(out[NV2A_VP_OUT_D0]);
            v->u = out[NV2A_VP_OUT_T0][0];
            v->v = out[NV2A_VP_OUT_T0][1];
            return;
        }
    }
    { extern int g_vp_used; g_vp_used = 0; }

    if (nv_fetch_attr(0, index, pos, NULL)) {
        {   extern float g_fix_in0[4];
            memcpy(g_fix_in0, pos, sizeof g_fix_in0); }
        nv_transform_position(pos, v);
    }
    if (nv_fetch_attr(3, index, col, &colour))
        v->color = colour;
    if (nv_fetch_attr(9, index, tex, NULL)) {
        v->u = tex[0];
        v->v = tex[1];
    }
}

/* Render state + texture binding shared by both submission paths.
 *
 * Factored out of submit_draw so the vertex-array path applies exactly the
 * same state; it previously existed only on the inline path. */
static void nv_apply_draw_state(IDirect3DDevice8 *dev, OutputVertex *out,
                                uint32_t out_vert_count)
{
    int diffuse_all_zero = 1;
    uint32_t _i;
    for (_i = 0; _i < out_vert_count; _i++)
        if (out[_i].color != 0) { diffuse_all_zero = 0; break; }

    /* Set up 2D render state — always enable alpha for menu transparency */
    dev->lpVtbl->SetRenderState(dev, D3DRS_ZENABLE, FALSE);
    dev->lpVtbl->SetRenderState(dev, D3DRS_LIGHTING, FALSE);
    dev->lpVtbl->SetRenderState(dev, D3DRS_CULLMODE, D3DCULL_NONE);
    dev->lpVtbl->SetRenderState(dev, D3DRS_ALPHABLENDENABLE, TRUE);
    dev->lpVtbl->SetRenderState(dev, D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
    dev->lpVtbl->SetRenderState(dev, D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);

    /* Set FVF for pre-transformed 2D with texture */
    dev->lpVtbl->SetVertexShader(dev, D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1);

    /* Bind texture from Global.txd based on NV2A VRAM offset.
     * We match the push buffer's SET_TEXTURE_OFFSET value to known
     * Global.txd entries identified via xemu dimension/format matching. */
    if (g_textures_loaded) {
        /* Build lookup table on first use */
        if (!g_pg.texture_lookup_done) {
            g_pg.texture_lookup_done = 1;
            fprintf(stderr, "[PGRAPH-D3D11] Texture lookup init (global_txd has %d textures)\n",
                    g_global_txd.count);
            /* Dump all texture names+sizes for reference */
            for (int ti = 0; ti < g_global_txd.count; ti++) {
                fprintf(stderr, "    [%3d] %-24s %3ux%-3u fmt=0x%X\n",
                        ti, g_global_txd.entries[ti].name,
                        g_global_txd.entries[ti].width,
                        g_global_txd.entries[ti].height,
                        g_global_txd.entries[ti].format);
            }
        }

        /* Match NV2A VRAM offset → Global.txd name (from xemu analysis).
         * Offsets identified by capturing PGRAPH texture registers from xemu
         * and matching by texture dimension + format code. */
        IDirect3DTexture8 *tex = NULL;
        uint32_t vram_off = g_pg.tex[0].offset;
        switch (vram_off) {
            case 0x03C1ED00: tex = txd_find(&g_global_txd, "B3Logo"); break;      /* 256x64 A1R5G5B5 */
            case 0x03C24700: tex = txd_find(&g_global_txd, "bg"); break;           /* 64x32 DXT1 */
            case 0x03C24B80: tex = txd_find(&g_global_txd, "big_curve"); break;    /* 128x128 DXT5 */
            case 0x03C7BE00: tex = txd_find(&g_global_txd, "Buttons"); break;      /* 128x64 DXT5 */
            case 0x03C95700: tex = txd_find(&g_global_txd, "dpad"); break;          /* 32x16 DXT5 */
            case 0x03C95980: tex = txd_find(&g_global_txd, "FE"); break;            /* 32x32 DXT5 */
            case 0x03CA1A80: tex = txd_find(&g_global_txd, "small_curve"); break;   /* 32x32 DXT5 */
            case 0x03D57000: tex = txd_find(&g_global_txd, "box_curve"); break;     /* 32x32 DXT5 */
            case 0x03CB9200: tex = txd_find(&g_global_txd, "grid"); break;          /* 16x16 DXT1 */
            case 0x02EC0400:
                /* Render target / framebuffer texture — skip this draw entirely.
                 * In xemu this shows the looping background video; in our recomp
                 * the background is rendered separately. Drawing this as vertex-color
                 * produces a solid white quad that washes out everything. */
                dev->lpVtbl->EndScene(dev);
                g_pg.inline_count = 0;
                return;  /* Skip draw */
            case 0x021C4100:
                /* Font atlas — create from captured DXT5 data on first use */
                if (!g_pg.font_atlas) {
                    g_pg.font_atlas = create_dxt5_texture(dev,
                        FONT_ATLAS_WIDTH, FONT_ATLAS_HEIGHT,
                        font_atlas_dxt5, FONT_ATLAS_SIZE);
                }
                tex = g_pg.font_atlas;
                break;
            case 0: tex = NULL; break;  /* No texture set — vertex color only */
            default: tex = NULL; break; /* Unknown — render with vertex color only */
        }

        if (tex) {
            dev->lpVtbl->SetTexture(dev, 0, (IDirect3DBaseTexture8 *)tex);
            dev->lpVtbl->SetTextureStageState(dev, 0, 1 /*COLOROP*/, 4 /*MODULATE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 2 /*COLORARG1*/, 2 /*TEXTURE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 3 /*COLORARG2*/, 0 /*DIFFUSE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 4 /*ALPHAOP*/, 4 /*MODULATE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 5 /*ALPHAARG1*/, 2 /*TEXTURE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 6 /*ALPHAARG2*/, 0 /*DIFFUSE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 13 /*ADDRESSU*/, 3 /*CLAMP*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 14 /*ADDRESSV*/, 3 /*CLAMP*/);
        } else {
            /* No texture — use vertex color only */
            dev->lpVtbl->SetTexture(dev, 0, NULL);
            dev->lpVtbl->SetTextureStageState(dev, 0, 1 /*COLOROP*/, 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 2 /*COLORARG1*/, 0 /*DIFFUSE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 4 /*ALPHAOP*/, 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 5 /*ALPHAARG1*/, 0 /*DIFFUSE*/);
        }
    } else {
        /* DOA3 (no Global.txd): bind a dynamic texture built from the guest
         * memory the game pointed SET_TEXTURE_OFFSET at (the movie frame
         * surface, loading screens, etc.). Vertex-color-only when absent. */
        IDirect3DTexture8 *dtex = get_dynamic_texture(dev);
        if (dtex) {
            /* DOA3 configures the pixel pipeline through the register
             * combiners, which this translator does not implement; it
             * substitutes the fixed-function equivalent. Modulating by the
             * diffuse register is only valid when the game actually supplies
             * one. DOA3 leaves vertex attribute 3 at zero for these draws and
             * sources colour from the combiners instead, so modulating turned
             * every textured pixel into transparent black -- the whole screen.
             * When the diffuse register is degenerate, take the texture
             * directly rather than multiplying the image away. */
            int use_diffuse = !diffuse_all_zero;
            dev->lpVtbl->SetTexture(dev, 0, (IDirect3DBaseTexture8 *)dtex);
            dev->lpVtbl->SetTextureStageState(dev, 0, 1 /*COLOROP*/,
                                              use_diffuse ? 4 /*MODULATE*/ : 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 2 /*COLORARG1*/, 2 /*TEXTURE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 3 /*COLORARG2*/, 0 /*DIFFUSE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 4 /*ALPHAOP*/, 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 5 /*ALPHAARG1*/,
                                              use_diffuse ? 0 /*DIFFUSE*/ : 2 /*TEXTURE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 13 /*ADDRESSU*/, 3 /*CLAMP*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 14 /*ADDRESSV*/, 3 /*CLAMP*/);
        } else {
            dev->lpVtbl->SetTexture(dev, 0, NULL);
            dev->lpVtbl->SetTextureStageState(dev, 0, 1 /*COLOROP*/, 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 2 /*COLORARG1*/, 0 /*DIFFUSE*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 4 /*ALPHAOP*/, 2 /*SELECTARG1*/);
            dev->lpVtbl->SetTextureStageState(dev, 0, 5 /*ALPHAARG1*/, 0 /*DIFFUSE*/);
        }
    }

}

/* Draw from the bound vertex arrays (the title-screen path). */
static void submit_array_draw(void)
{
    IDirect3DDevice8 *dev;
    OutputVertex *out;
    uint32_t n = g_pg.idx_count, i, prim_count, out_n;
    int prim = g_pg.d3d_prim_type;
    int is_quads = (g_pg.draw_mode == 8);

    if (n < 3) { g_pg.idx_count = 0; return; }

    out_n = is_quads ? (n / 4) * 6 : n;
    if (is_quads) prim = D3DPT_TRIANGLELIST;

    switch (prim) {
    case D3DPT_TRIANGLELIST:  prim_count = out_n / 3; break;
    case D3DPT_TRIANGLESTRIP:
    case D3DPT_TRIANGLEFAN:   prim_count = out_n - 2; break;
    case D3DPT_LINELIST:      prim_count = out_n / 2; break;
    case D3DPT_LINESTRIP:     prim_count = out_n - 1; break;
    default:                  prim_count = out_n / 3; break;
    }
    if (prim_count == 0) { g_pg.idx_count = 0; return; }

    dev = xbox_GetD3DDevice();
    if (!dev) { g_pg.idx_count = 0; return; }

    out = (OutputVertex *)_alloca(out_n * sizeof(OutputVertex));
    { extern int g_vpn; g_vpn = 0; }   /* reset the per-batch program-output range */
    if (is_quads) {
        uint32_t q, o = 0;
        for (q = 0; q + 3 < n; q += 4) {
            nv_build_array_vertex(g_pg.idx[q + 0], &out[o + 0]);
            nv_build_array_vertex(g_pg.idx[q + 1], &out[o + 1]);
            nv_build_array_vertex(g_pg.idx[q + 2], &out[o + 2]);
            out[o + 3] = out[o + 0];
            out[o + 4] = out[o + 2];
            nv_build_array_vertex(g_pg.idx[q + 3], &out[o + 5]);
            o += 6;
        }
    } else {
        for (i = 0; i < n; i++)
            nv_build_array_vertex(g_pg.idx[i], &out[i]);
    }

    {   /* Post-movie the title screen submits ~500 of these per frame and the
         * window stays black. pos0 alone cannot separate a degenerate batch
         * (every vertex on one point) from a shading problem, so report the
         * screen bounding box, the colour range and the bound texture. */
        extern volatile int g_doa3_post_movie;
        static int s_n = 0, s_pm = 0;
        static DWORD s_next = 0;
        static int s_burst = 0;
        int want = (s_n < 8);
        /* Post-movie: a burst of draws every couple of seconds rather than the
         * first 20 in a row, so the sample spans different batches. */
        if (!want && g_doa3_post_movie && s_pm < 80) {
            DWORD now = GetTickCount();
            if (now >= s_next) { s_next = now + 2000; s_burst = 0; }
            if (s_burst < 4) { s_burst++; s_pm++; want = 1; }
        }
        if (want) {
            float x0 = out[0].x, x1 = out[0].x, y0 = out[0].y, y1 = out[0].y;
            uint32_t cmin = out[0].color, cmax = out[0].color, k;
            for (k = 1; k < out_n; k++) {
                if (out[k].x < x0) x0 = out[k].x;
                if (out[k].x > x1) x1 = out[k].x;
                if (out[k].y < y0) y0 = out[k].y;
                if (out[k].y > y1) y1 = out[k].y;
                if (out[k].color < cmin) cmin = out[k].color;
                if (out[k].color > cmax) cmax = out[k].color;
            }
            if (s_n < 8) s_n++;
            fprintf(stderr, "[PG-ARRAY] %u idx -> %u verts prim=%d box=(%.1f,%.1f)-(%.1f,%.1f) "
                            "rhw=%.4f col=%08X..%08X uv0=(%.2f,%.2f) tex=0x%08X fmt=0x%08X comp=%d pm=%d\n",
                    n, out_n, prim, x0, y0, x1, y1,
                    out[0].rhw, cmin, cmax, out[0].u, out[0].v,
                    g_pg.tex[0].offset, g_pg.tex[0].format,
                    g_pg.composite_seen, g_doa3_post_movie);
            { extern int g_vp_used, g_vpn;
              extern float g_vp_in0[4], g_vp_out0[4], g_vp_d0[4], g_vp_t0[4], g_vpbb[8];
              if (g_vpn)
                  fprintf(stderr, "          VP n=%d o0x=[%.2f %.2f] o0y=[%.2f %.2f] "
                                  "o0z=[%.3f %.3f] o0w=[%.4f %.4f] d0=(%.3f %.3f %.3f %.3f) "
                                  "t0=(%.3f %.3f)\n",
                          g_vpn, g_vpbb[0], g_vpbb[1], g_vpbb[2], g_vpbb[3],
                          g_vpbb[4], g_vpbb[5], g_vpbb[6], g_vpbb[7],
                          g_vp_d0[0], g_vp_d0[1], g_vp_d0[2], g_vp_d0[3],
                          g_vp_t0[0], g_vp_t0[1]);
            fprintf(stderr, "          xform=0x%X prog=%d instr=%u start=%u vpused=%d "
                            "in0=(%.3f %.3f %.3f %.3f) out0=(%.3f %.3f %.3f %.3f) "
                            "vps=(%.1f %.1f %.1f) vpo=(%.1f %.1f %.1f)\n",
                    g_pg.xform_mode, g_pg.vp.have_program, g_pg.vp.instr_count,
                    g_pg.vp.start, g_vp_used,
                    g_vp_in0[0], g_vp_in0[1], g_vp_in0[2], g_vp_in0[3],
                    g_vp_out0[0], g_vp_out0[1], g_vp_out0[2], g_vp_out0[3],
                    g_pg.vp_scale[0], g_pg.vp_scale[1], g_pg.vp_scale[2],
                    g_pg.vp_offset[0], g_pg.vp_offset[1], g_pg.vp_offset[2]);
            { extern float g_fix_in0[4];
              fprintf(stderr, "          fixin0=(%.3f %.3f %.3f %.3f) a0fmt=%08X a0off=%08X "
                              "M=[%.3f %.3f %.3f %.3f | %.3f %.3f %.3f %.3f | "
                              "%.3f %.3f %.3f %.3f | %.3f %.3f %.3f %.3f]\n",
                    g_fix_in0[0], g_fix_in0[1], g_fix_in0[2], g_fix_in0[3],
                    g_pg.attr_fmt[0], g_pg.attr_off[0],
                    g_pg.composite[0], g_pg.composite[1], g_pg.composite[2], g_pg.composite[3],
                    g_pg.composite[4], g_pg.composite[5], g_pg.composite[6], g_pg.composite[7],
                    g_pg.composite[8], g_pg.composite[9], g_pg.composite[10], g_pg.composite[11],
                    g_pg.composite[12], g_pg.composite[13], g_pg.composite[14], g_pg.composite[15]); } }
            fflush(stderr); }
    }

    nv_apply_draw_state(dev, out, out_n);

    {   DWORD prev_vs = 0;
        HRESULT got = dev->lpVtbl->GetVertexShader(dev, &prev_vs);
        dev->lpVtbl->SetVertexShader(dev,
            D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1);
        dev->lpVtbl->BeginScene(dev);
        dev->lpVtbl->DrawPrimitiveUP(dev, (D3DPRIMITIVETYPE)prim,
                                     prim_count, out, sizeof(OutputVertex));
        if (got == 0) dev->lpVtbl->SetVertexShader(dev, prev_vs);
    }
    g_pg.stats.draw_calls++;
    g_pg.stats.vertices_submitted += out_n;
    g_pg.idx_count = 0;
}

uint32_t g_dbail[8];        /* 0=calls 1=no-inline 2=no-stride 3=too-few 4=drawn 5=movie-gate */
uint32_t g_dbail_lastic, g_dbail_lastst;

static void submit_draw(void)
{
    /* Vertex-array draws take precedence: the game issues these with no
     * INLINE_ARRAY data at all, so the inline path below would see an
     * empty buffer and drop them. */
    if (g_pg.idx_count >= 3) {
        submit_array_draw();
        return;
    }
    g_pg.idx_count = 0;

    /* DOA3 DIAG: why are ~89k of 90k BEGIN/END blocks dropped? */
    g_dbail[0]++;
    if (g_pg.inline_count == 0) { g_dbail[1]++; return; }
    if (g_pg.vert_stride == 0)  { g_dbail[2]++; return; }

    /* While the intro movie is playing, movie_present.c owns the screen: it
     * uploads and presents each decoded frame itself, because Sofdec writes
     * frames straight into the Xbox front-buffer pair instead of calling
     * Present. Guest geometry submitted during that window is not part of the
     * movie and compositing it produces flashing shapes over the video, so
     * hold it back until the presenter hands the screen over. */
    {
        extern int doa3_movie_host_owns_screen(void);
        if (doa3_movie_host_owns_screen()) {
            g_dbail[5]++;
            g_pg.inline_count = 0;
            return;
        }
    }

    uint32_t num_verts = g_pg.inline_count / g_pg.vert_stride;
    if (num_verts < 3) { g_dbail[3]++; g_dbail_lastic = g_pg.inline_count;
                         g_dbail_lastst = g_pg.vert_stride; return; }
    g_dbail[4]++;

    {   /* DOA3 DIAG: one-shot dump of a program-mode draw. */
        static int s_dumped = 0;
        if (!s_dumped && (g_pg.xform_mode & 3) == 2 && g_pg.vp.have_program &&
            g_pg.stats.draw_calls > 180000) {
            s_dumped = 1;
            fprintf(stderr, "[VPDUMP] xform_mode=%u attr_fmt_seen=%d stride=%u "
                            "inline_dw=%u vp_scale=(%.2f %.2f %.2f %.2f) "
                            "vp_off=(%.2f %.2f %.2f %.2f)\n",
                    g_pg.xform_mode, g_pg.attr_fmt_seen, g_pg.vert_stride,
                    g_pg.inline_count,
                    g_pg.vp_scale[0], g_pg.vp_scale[1], g_pg.vp_scale[2], g_pg.vp_scale[3],
                    g_pg.vp_offset[0], g_pg.vp_offset[1], g_pg.vp_offset[2], g_pg.vp_offset[3]);
            for (int i = 0; i < 16; i++)
                if (g_pg.attr_fmt[i] & 0xF0)
                    fprintf(stderr, "  attr[%2d] type=%u size=%u stride=%u\n", i,
                            g_pg.attr_fmt[i] & 0xF, (g_pg.attr_fmt[i] >> 4) & 0xF,
                            g_pg.attr_fmt[i] >> 8);
            nv2a_vp_dump(&g_pg.vp);
            fprintf(stderr, "  inline dwords:");
            for (uint32_t i = 0; i < g_pg.inline_count && i < 32; i++)
                fprintf(stderr, " %08X(%.3f)", g_pg.inline_data[i], u2f(g_pg.inline_data[i]));
            fprintf(stderr, "\n  consts c96..c103:");
            for (int i = 96; i < 104; i++)
                fprintf(stderr, "\n    c%d = %.4f %.4f %.4f %.4f", i,
                        g_pg.vp.consts[i][0], g_pg.vp.consts[i][1],
                        g_pg.vp.consts[i][2], g_pg.vp.consts[i][3]);
            fprintf(stderr, "\n");
            fflush(stderr);
        }
    }

    {   /* DOA3 DIAG: per-draw-mode tally (count, last vert count, stride). */
            int dm = g_pg.draw_mode & 15;
        g_dstat[dm][0]++; g_dstat[dm][1] = num_verts; g_dstat[dm][2] = g_pg.vert_stride;
    }

    const uint32_t *src = g_pg.inline_data;

    {   /* DOA3 DIAG: census of post-FMV draws -- what is actually being
         * submitted, and why none of it reaches the screen. */
        extern uint32_t g_census[12];
        if (g_pg.stats.draw_calls > 150000) {
            uint32_t nv = num_verts;
            int all_zero_col = 1, any_alpha = 0;
            float mnx = 1e9f, mxx = -1e9f, mny = 1e9f, mxy = -1e9f;
            for (uint32_t i = 0; i < nv && i < 64; i++) {
                uint32_t b = i * g_pg.vert_stride;
                float x = u2f(src[b + 0]), y = u2f(src[b + 1]);
                if (x < mnx) mnx = x;
                if (x > mxx) mxx = x;
                if (y < mny) mny = y;
                if (y > mxy) mxy = y;
                if (g_pg.layout_color_off >= 0) {
                    uint32_t c = src[b + g_pg.layout_color_off];
                    if (c) all_zero_col = 0;
                    if (c >> 24) any_alpha = 1;
                }
            }
            g_census[0]++;
            if (all_zero_col) g_census[1]++;
            if (any_alpha) g_census[2]++;
            if (g_pg.tex[0].offset) g_census[3]++;
            if (mnx >= 0.0f && mxx <= 720.0f && mny >= 0.0f && mxy <= 512.0f)
                g_census[4]++;      /* plausibly on-screen */
            else
                g_census[5]++;      /* off-screen / not screen space */
            if (g_pg.blend_enable) g_census[6]++;
            if (g_pg.alpha_test) g_census[7]++;
            if ((g_pg.xform_mode & 3) == 2) g_census[8]++;
            if (mxx - mnx > 8.0f && mxy - mny > 8.0f) g_census[9]++;
        }
    }

    int actual_prim_type = g_pg.d3d_prim_type;
    uint32_t out_vert_count = num_verts;

    /* Handle QUADS (mode 8): convert to triangle list (6 verts per quad) */
    int is_quads = (g_pg.draw_mode == 8);
    uint32_t num_quads = is_quads ? (num_verts / 4) : 0;
    if (is_quads) {
        out_vert_count = num_quads * 6;  /* 2 triangles per quad */
        actual_prim_type = D3DPT_TRIANGLELIST;
    }

    /* Calculate primitive count */
    uint32_t prim_count = 0;
    switch (actual_prim_type) {
        case D3DPT_TRIANGLELIST:  prim_count = out_vert_count / 3; break;
        case D3DPT_TRIANGLESTRIP: prim_count = out_vert_count - 2; break;
        case D3DPT_TRIANGLEFAN:   prim_count = out_vert_count - 2; break;
        case D3DPT_LINELIST:      prim_count = out_vert_count / 2; break;
        case D3DPT_LINESTRIP:     prim_count = out_vert_count - 1; break;
        default: prim_count = out_vert_count / 3; break;
    }
    if (prim_count == 0)
        return;

    /* Convert inline vertices to OutputVertex (28 bytes) */
    OutputVertex *out = (OutputVertex *)_alloca(out_vert_count * sizeof(OutputVertex));

    /* Helper to convert one inline vertex */
    #define CONVERT_VERT(dst_idx, src_idx) do { \
        uint32_t _b = (src_idx) * g_pg.vert_stride; \
        out[dst_idx].x     = u2f(src[_b + 0]); \
        out[dst_idx].y     = u2f(src[_b + 1]); \
        out[dst_idx].z     = 0.0f; \
        out[dst_idx].rhw   = 1.0f; \
        out[dst_idx].u     = (g_pg.layout_uv_off >= 0) ? u2f(src[_b + g_pg.layout_uv_off]) : 0.0f; \
        out[dst_idx].v     = (g_pg.layout_uv_off >= 0) ? u2f(src[_b + g_pg.layout_uv_off + 1]) : 0.0f; \
        out[dst_idx].color = (g_pg.layout_color_off >= 0) ? src[_b + g_pg.layout_color_off] : 0xFFFFFFFFu; \
    } while(0)

    if (is_quads) {
        /* Convert quads (v0,v1,v2,v3) → two triangles (v0,v1,v2), (v0,v2,v3) */
        uint32_t out_idx = 0;
        for (uint32_t q = 0; q < num_quads; q++) {
            uint32_t qi = q * 4;
            CONVERT_VERT(out_idx + 0, qi + 0);  /* tri 1: v0 */
            CONVERT_VERT(out_idx + 1, qi + 1);  /* tri 1: v1 */
            CONVERT_VERT(out_idx + 2, qi + 2);  /* tri 1: v2 */
            CONVERT_VERT(out_idx + 3, qi + 0);  /* tri 2: v0 */
            CONVERT_VERT(out_idx + 4, qi + 2);  /* tri 2: v2 */
            CONVERT_VERT(out_idx + 5, qi + 3);  /* tri 2: v3 */
            out_idx += 6;
        }
    } else {
        for (uint32_t i = 0; i < num_verts; i++) {
            CONVERT_VERT(i, i);
        }
    }
    #undef CONVERT_VERT

    /* A draw whose every vertex carries a zero diffuse cannot be intending to
     * modulate by it; see the texture-stage setup below. */
    int diffuse_all_zero = 1;
    for (uint32_t i = 0; i < out_vert_count; i++)
        if (out[i].color != 0) { diffuse_all_zero = 0; break; }

    /* DOA3 interim: the movie quad's UVs are never written by the game-side
     * builder (all zeros). When a draw has NO usable texcoords but positions
     * span an area, derive full-range UVs from the position bounding box so
     * the bound dynamic texture (movie frame) maps across the quad. */
    if (g_pg.layout_uv_off >= 0 && out_vert_count >= 3) {
        int all_zero = 1;
        for (uint32_t i = 0; i < out_vert_count; i++)
            if (out[i].u != 0.0f || out[i].v != 0.0f) { all_zero = 0; break; }
        if (all_zero) {
            float mnx = 1e9f, mxx = -1e9f, mny = 1e9f, mxy = -1e9f;
            for (uint32_t i = 0; i < out_vert_count; i++) {
                if (out[i].x < mnx) mnx = out[i].x;
                if (out[i].x > mxx) mxx = out[i].x;
                if (out[i].y < mny) mny = out[i].y;
                if (out[i].y > mxy) mxy = out[i].y;
            }
            if (mxx > mnx && mxy > mny) {
                for (uint32_t i = 0; i < out_vert_count; i++) {
                    out[i].u = (out[i].x - mnx) / (mxx - mnx);
                    out[i].v = (out[i].y - mny) / (mxy - mny);
                }
            }
        }
    }

    /* Chyron scroll: shift X for vertices in the chyron Y band (366-382).
     * Simple continuous scroll — no per-vertex wrapping to avoid artifacts
     * from split triangle-strip quads spanning the screen. */
    if (g_pg.chyron_scroll_offset != 0.0f && out_vert_count >= 6) {
        /* Check if this draw is in the chyron band */
        int is_chyron = 1;
        for (uint32_t i = 0; i < (out_vert_count < 8 ? out_vert_count : 8); i++) {
            if (out[i].y < 360.0f || out[i].y > 390.0f) {
                is_chyron = 0;
                break;
            }
        }
        if (is_chyron) {
            /* Find the total text width */
            float min_x = 9999.0f, max_x = -9999.0f;
            for (uint32_t i = 0; i < out_vert_count; i++) {
                if (out[i].x < min_x) min_x = out[i].x;
                if (out[i].x > max_x) max_x = out[i].x;
            }
            float text_width = max_x - min_x;

            /* Scroll loops: text slides left, then resets to start position.
             * Total cycle = text scrolls fully off-left + re-enters from right. */
            float cycle = text_width + 640.0f;
            float scroll = fmodf(g_pg.chyron_scroll_offset, cycle);

            /* Apply uniform shift to ALL vertices (no per-vertex wrap) */
            for (uint32_t i = 0; i < out_vert_count; i++) {
                out[i].x -= scroll;
            }
        }
    }

    /* Log first few draws' vertex positions (once) */
    if (g_pg.stats.draw_calls < 3 && num_verts >= 3) {
        fprintf(stderr, "[PGRAPH-D3D11] Draw verts (mode=%u, %u in → %u out):\n",
                g_pg.draw_mode, num_verts, out_vert_count);
        uint32_t show = num_verts < 8 ? num_verts : 8;
        for (uint32_t i = 0; i < show; i++) {
            uint32_t b = i * g_pg.vert_stride;
            fprintf(stderr, "  [%u] pos=(%.1f, %.1f) uv=(%.3f, %.3f) color=0x%08X\n",
                    i, u2f(src[b+0]), u2f(src[b+1]), u2f(src[b+2]), u2f(src[b+3]), src[b+4]);
        }
    }

    /* Get D3D8 device */
    IDirect3DDevice8 *dev = xbox_GetD3DDevice();
    if (!dev) return;

    nv_apply_draw_state(dev, out, out_vert_count);

    /* Begin scene if needed */
    dev->lpVtbl->BeginScene(dev);

    {   /* DOA3 DIAG: the D3D11 state the draw actually lands in.
         * movie_present.c binds its own RTV and viewport for the intro
         * movie and never restores the D3D8 layer's, so a post-movie
         * draw can be perfectly valid and still rasterise nowhere. */
        extern volatile int g_doa3_post_movie;
        extern void d3d8_DebugDumpTargetState(void);
        static int s_n = 0;
        (void)g_doa3_post_movie;
        /* Sampled unconditionally: the same wiring question applies to the
         * draws issued while the movie is still playing. */
        if (s_n < 3 || (g_doa3_post_movie && s_n < 6)) { s_n++; d3d8_DebugDumpTargetState(); }
    }
    /* Draw.
     *
     * OutputVertex is PRE-TRANSFORMED (XYZRHW screen space, diffuse, one
     * texcoord), so it must go through the fixed-function pipeline. If the
     * game currently has a programmable vertex shader bound -- and DOA3 always
     * does on its 3D screens -- the D3D8 layer would otherwise bind that
     * shader plus its own input layout (d3d8_vsh_prepare_draw) and run our
     * screen-space quads through the game's object-space vertex program with
     * the game's matrices. The geometry then lands nowhere and nothing is
     * visible, whatever colour or texture the draw asked for.
     *
     * Select the matching FVF for the duration of the draw and restore the
     * game's shader afterwards, so the guest's own pipeline state is
     * unaffected. */
    {
        DWORD prev_vs = 0;
        HRESULT got = dev->lpVtbl->GetVertexShader(dev, &prev_vs);
        dev->lpVtbl->SetVertexShader(dev,
            D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_TEX1);

        dev->lpVtbl->DrawPrimitiveUP(dev, (D3DPRIMITIVETYPE)g_pg.d3d_prim_type,
                                      prim_count, out, sizeof(OutputVertex));

        if (got == 0)
            dev->lpVtbl->SetVertexShader(dev, prev_vs);
    }

    g_pg.stats.draw_calls++;
    g_pg.stats.vertices_submitted += num_verts;

    {   /* DOA3 DIAG: what the post-movie screen actually submits --
         * which texture, where on screen, and with what colour. */
        extern volatile int g_doa3_post_movie;
        static int s_n = 0;
        if (g_doa3_post_movie && s_n < 24) {
            float mnx = 1e9f, mxx = -1e9f, mny = 1e9f, mxy = -1e9f;
            uint32_t i;
            s_n++;
            for (i = 0; i < out_vert_count; i++) {
                if (out[i].x < mnx) mnx = out[i].x;
                if (out[i].x > mxx) mxx = out[i].x;
                if (out[i].y < mny) mny = out[i].y;
                if (out[i].y > mxy) mxy = out[i].y;
            }
            fprintf(stderr, "[POSTDRAW] #%d nvfmt=0x%02X texoff=0x%08X %ux%u "
                            "box=(%.0f,%.0f)-(%.0f,%.0f) col=%08X uv0=(%.2f,%.2f) "
                            "blend=%d prim=%d\n",
                    s_n, (g_pg.tex[0].format >> 8) & 0xFF, g_pg.tex[0].offset,
                    g_pg.dyn_w, g_pg.dyn_h, mnx, mny, mxx, mxy, out[0].color,
                    out[0].u, out[0].v, g_pg.blend_enable, g_pg.d3d_prim_type);
            fflush(stderr);
            {   /* Is the source surface the fade samples actually non-black? */
                extern ptrdiff_t g_xbox_mem_offset;
                const uint32_t *src32 =
                    (const uint32_t *)((uintptr_t)g_pg.tex[0].offset + g_xbox_mem_offset);
                unsigned nz = 0, k;
                for (k = 0; k < 4096; k++)
                    if (src32[k * 64] & 0x00FFFFFFu) nz++;
                fprintf(stderr, "[TEXSRC] off=0x%08X px=%08X %08X %08X nonblack=%u/4096\n",
                        g_pg.tex[0].offset, src32[0], src32[64 * 100],
                        src32[64 * 2000], nz);
                fflush(stderr);
            }
        }
    }
    {   /* DOA3 DIAG: dump presented frames after the movie hand-off, timed
         * relative to it (g_doa3_post_movie is set when the movie teardown
         * sub_0009E340 returns) -- absolute draw marks either land inside the
         * movie or never arrive, depending on how far a debug run gets. */
        extern void doa3_capture_backbuffer(const char *path);
        extern volatile int g_doa3_post_movie;
        static unsigned s_base = 0;
        static int s_shot = 0;
        static const unsigned offs[4] = { 200u, 2000u, 8000u, 20000u };
        /* DOA3: unconditional early captures -- runs reach ~3k draws, so the
         * 5000/60000 marks below and the post-movie offsets never fire. */
        if (g_pg.stats.draw_calls == 5u || g_pg.stats.draw_calls == 15u ||
            g_pg.stats.draw_calls == 30u ||
            g_pg.stats.draw_calls == 400u || g_pg.stats.draw_calls == 1200u ||
            g_pg.stats.draw_calls == 2400u ||
            g_pg.stats.draw_calls == 5000u || g_pg.stats.draw_calls == 60000u) {
            char ep[64];
            sprintf(ep, "frame_at%u.bmp", g_pg.stats.draw_calls);
            doa3_capture_backbuffer(ep);
            fprintf(stderr, "[CAPTURE] wrote %s\n", ep);
            fflush(stderr);
        }
        if (g_doa3_post_movie) {
            if (!s_base) s_base = g_pg.stats.draw_calls;
            if (s_shot < 4 && g_pg.stats.draw_calls == s_base + offs[s_shot]) {
                char path[64];
                sprintf(path, "frame_post%u.bmp", offs[s_shot]);
                s_shot++;
                doa3_capture_backbuffer(path);
                fprintf(stderr, "[CAPTURE] wrote %s at draw %u\n",
                        path, g_pg.stats.draw_calls);
                fflush(stderr);
            }
        }
    }

    if (g_pg.stats.draw_calls <= 5 || (g_pg.stats.draw_calls % 1000) == 0) {
        fprintf(stderr, "[PGRAPH-D3D11] Draw #%u: %u verts, prim=%d, prims=%u\n",
                g_pg.stats.draw_calls, num_verts, g_pg.d3d_prim_type, prim_count);
    }
}

/* ══════════════════════════════════════════════════════════════════════
 * Method Handler
 * ══════════════════════════════════════════════════════════════════════ */

/* DOA3 DIAG: which program slots the game loads and runs after the movie. */
#define DIAG_VP_PTR(what, val) do { \
    extern volatile int g_doa3_post_movie; \
    static int s_dn = 0; \
    if (g_doa3_post_movie && s_dn < 40) { s_dn++; \
        fprintf(stderr, "[VPPTR] %s=%u (instr_count=%u start=%u)\n", \
                (what), (val), g_pg.vp.instr_count, g_pg.vp.start); \
        fflush(stderr); } \
} while (0)

int pgraph_d3d11_method(int subchannel, uint32_t method, uint32_t param)
{
    if (!g_pg.initialized)
        return 0;

    g_pg.stats.methods_handled++;

    {   /* DOA3 DIAG: exact per-method histogram + transform mode. */
        extern uint32_t g_mhist[0x800];
        extern uint32_t g_xmode, g_xmode_n[4];
        if (method < 0x2000) g_mhist[method >> 2]++;
        if (method == 0x1E94) { g_xmode = param; g_xmode_n[param & 3]++; }
    }

    /* Range methods: the pushbuffer streams these as runs, so they cannot be
     * expressed as switch cases. */
    if (method >= 0x0B00 && method <= 0x0B7C) {          /* TRANSFORM_PROGRAM  */
        nv2a_vp_write_program(&g_pg.vp, (method - 0x0B00) / 4, param);
        return 1;
    }
    if (method >= 0x0B80 && method <= 0x0B9C) {          /* TRANSFORM_CONSTANT */
        nv2a_vp_write_constant(&g_pg.vp, (method - 0x0B80) / 4, param);
        return 1;
    }
    if (method >= 0x1760 && method <= 0x179C) {          /* VERTEX_DATA_ARRAY_FORMAT */
        g_pg.attr_fmt[(method - 0x1760) / 4] = param;
        g_pg.attr_fmt_seen = 1;
        return 1;
    }
    if (method >= 0x1720 && method <= 0x175C) {          /* VERTEX_DATA_ARRAY_OFFSET */
        g_pg.attr_off[(method - 0x1720) / 4] = param;
        return 1;
    }
    if (method >= 0x0480 && method <= 0x04BC) {          /* SET_MODEL_VIEW_MATRIX */
        /* DOA3 DIAG: the composite matrix arrives as 16 zero dwords. Is the
         * model-view matrix -- streamed the same way, the same number of
         * times -- real? If it is zero too the parse is at fault; if it is
         * real the game genuinely drives the transform some other way. */
        extern float g_mv[16];
        extern volatile int g_doa3_post_movie;
        static int s_n = 0;
        g_mv[(method - 0x0480) / 4] = u2f(param);
        if (g_doa3_post_movie && method == 0x04BC && s_n < 4) { s_n++;
            fprintf(stderr, "[PG-M] modelview=[%g %g %g %g | %g %g %g %g | "
                            "%g %g %g %g | %g %g %g %g]\n",
                    g_mv[0], g_mv[1], g_mv[2], g_mv[3],
                    g_mv[4], g_mv[5], g_mv[6], g_mv[7],
                    g_mv[8], g_mv[9], g_mv[10], g_mv[11],
                    g_mv[12], g_mv[13], g_mv[14], g_mv[15]);
            fflush(stderr); }
        return 1;
    }
    if (method >= 0x0680 && method <= 0x06BC) {          /* SET_COMPOSITE_MATRIX */
        g_pg.composite[(method - 0x0680) / 4] = u2f(param);
        g_pg.composite_seen = 1;
        {   /* DOA3 DIAG: the stored matrix reads all-zero at draw time even
             * though these methods are streamed ~1600x a frame -- print what
             * the pushbuffer actually carries. */
            extern volatile int g_doa3_post_movie;
            static int s_n = 0;
            if (g_doa3_post_movie && method == 0x06BC && s_n < 6) { s_n++;
                fprintf(stderr, "[PG-M] composite raw=%08X row3=(%g %g %g %g) "
                                "row0=(%g %g %g %g)\n", param,
                        g_pg.composite[12], g_pg.composite[13],
                        g_pg.composite[14], g_pg.composite[15],
                        g_pg.composite[0], g_pg.composite[1],
                        g_pg.composite[2], g_pg.composite[3]);
                fflush(stderr); }
        }
        return 1;
    }

    switch (method) {

    /* ── Draw Begin/End ── */
    case NV097_SET_BEGIN_END:
        if (param == 0) {
            /* END: submit accumulated vertices */
            if (g_pg.in_draw) {
                submit_draw();
                g_pg.in_draw = 0;
            }
        } else {
            /* BEGIN: start new draw */
            g_pg.in_draw = 1;
            g_pg.draw_mode = param;
            g_pg.d3d_prim_type = nv2a_draw_mode_to_d3d(param);
            g_pg.inline_count = 0;
            g_pg.idx_count = 0;
        }
        return 1;

    /* -- Vertex-array submission (indexed and range draws) --
     *
     * Both are reduced to a flat index list here; the vertices themselves
     * are assembled from the bound arrays at END. */
    case 0x1800:   /* ARRAY_ELEMENT16: two indices per dword */
        if (g_pg.in_draw) {
            if (g_pg.idx_count < MAX_INLINE_VERTS)
                g_pg.idx[g_pg.idx_count++] = param & 0xFFFFu;
            if (g_pg.idx_count < MAX_INLINE_VERTS)
                g_pg.idx[g_pg.idx_count++] = param >> 16;
        }
        return 1;

    case 0x1808:   /* ARRAY_ELEMENT32 */
        if (g_pg.in_draw && g_pg.idx_count < MAX_INLINE_VERTS)
            g_pg.idx[g_pg.idx_count++] = param;
        return 1;

    case 0x1810: { /* DRAW_ARRAYS: start in bits 0-23, count-1 in 24-31 */
        uint32_t start = param & 0x00FFFFFFu;
        uint32_t count = ((param >> 24) & 0xFF) + 1u;
        uint32_t k;
        if (g_pg.in_draw)
            for (k = 0; k < count && g_pg.idx_count < MAX_INLINE_VERTS; k++)
                g_pg.idx[g_pg.idx_count++] = start + k;
        return 1;
    }

    /* ── Inline Vertex Data ── */
    case NV097_INLINE_ARRAY:
        if (g_pg.in_draw && g_pg.inline_count < MAX_INLINE_VERTS * INLINE_VERT_DWORDS) {
            g_pg.inline_data[g_pg.inline_count++] = param;
        }
        return 1;

    /* ── Clear ── */
    case NV097_SET_COLOR_CLEAR_VALUE:
        g_pg.clear_color = param;
        return 1;

    case NV097_SET_CLEAR_RECT_HORIZONTAL:
        g_pg.clear_rect_h = param;
        return 1;

    case NV097_SET_CLEAR_RECT_VERTICAL:
        g_pg.clear_rect_v = param;
        return 1;

    case NV097_CLEAR_SURFACE:
    {
        IDirect3DDevice8 *dev = xbox_GetD3DDevice();
        if (dev) {
            uint32_t flags = 0;
            if (param & 0xF0) flags |= 1;  /* D3DCLEAR_TARGET */
            if (param & 0x01) flags |= 2;  /* D3DCLEAR_ZBUFFER */
            if (param & 0x02) flags |= 4;  /* D3DCLEAR_STENCIL */
            dev->lpVtbl->Clear(dev, 0, NULL, flags, g_pg.clear_color, 1.0f, 0);
        }
        g_pg.stats.clears++;
        return 1;
    }

    /* ── Render State ── */
    case NV097_SET_DEPTH_TEST_ENABLE:
        g_pg.depth_test = param ? 1 : 0;
        return 1;

    case NV097_SET_BLEND_ENABLE:
        g_pg.blend_enable = param ? 1 : 0;
        return 1;

    case NV097_SET_BLEND_FUNC_SFACTOR:
        g_pg.blend_sfactor = param;
        return 1;

    case NV097_SET_BLEND_FUNC_DFACTOR:
        g_pg.blend_dfactor = param;
        return 1;

    case NV097_SET_CULL_FACE_ENABLE:
        g_pg.cull_enable = param ? 1 : 0;
        return 1;

    case NV097_SET_ALPHA_TEST_ENABLE:
        g_pg.alpha_test = param ? 1 : 0;
        return 1;

    case NV097_SET_COLOR_MASK:
        g_pg.color_mask = param;
        return 1;

    case NV097_SET_SHADE_MODE:
        /* 1=flat, 2=gouraud — we always use gouraud */
        return 1;

    /* ── Viewport ── */
    case NV097_SET_VIEWPORT_OFFSET:
    case NV097_SET_VIEWPORT_OFFSET + 4:
    case NV097_SET_VIEWPORT_OFFSET + 8:
    case NV097_SET_VIEWPORT_OFFSET + 12:
    {
        int idx = (method - NV097_SET_VIEWPORT_OFFSET) / 4;
        g_pg.vp_offset[idx] = u2f(param);
        {   extern volatile int g_doa3_post_movie;
            static int s_n = 0;
            if (g_doa3_post_movie && idx == 3 && s_n < 6) { s_n++;
                fprintf(stderr, "[PG-M] vp_offset=(%g %g %g %g) vp_scale=(%g %g %g %g)\n",
                        g_pg.vp_offset[0], g_pg.vp_offset[1],
                        g_pg.vp_offset[2], g_pg.vp_offset[3],
                        g_pg.vp_scale[0], g_pg.vp_scale[1],
                        g_pg.vp_scale[2], g_pg.vp_scale[3]);
                fflush(stderr); } }
        return 1;
    }

    case NV097_SET_VIEWPORT_SCALE:
    case NV097_SET_VIEWPORT_SCALE + 4:
    case NV097_SET_VIEWPORT_SCALE + 8:
    case NV097_SET_VIEWPORT_SCALE + 12:
    {
        int idx = (method - NV097_SET_VIEWPORT_SCALE) / 4;
        g_pg.vp_scale[idx] = u2f(param);
        return 1;
    }

    /* -- Transform program -- */
    case 0x1E94:                       /* SET_TRANSFORM_EXECUTION_MODE */
        g_pg.xform_mode = param;
        return 1;

    /* The NV2A order is LOAD, START, CONSTANT_LOAD. START and CONSTANT_LOAD
     * were swapped here, so every SET_TRANSFORM_CONSTANT run landed at the
     * index the game had just selected as its program entry point (usually 0)
     * and the entry point itself came from the constant pointer. The programs
     * therefore ran with their matrices in the wrong constant slots and only
     * the screen-space bias survived -- the post-movie geometry came out as
     * the raw object-space position plus 0.53, which is nowhere near the
     * screen. */
    case 0x1E9C:                       /* SET_TRANSFORM_PROGRAM_LOAD */
        g_pg.vp.prog_ld_ptr = param;
        DIAG_VP_PTR("load", param);
        return 1;

    case 0x1EA0:                       /* SET_TRANSFORM_PROGRAM_START */
        g_pg.vp.start = param;
        DIAG_VP_PTR("start", param);
        return 1;

    case 0x1EA4:                       /* SET_TRANSFORM_CONSTANT_LOAD */
        g_pg.vp.const_ld_ptr = param;
        DIAG_VP_PTR("cload", param);
        return 1;

    case NV097_SET_SURFACE_CLIP_HORIZONTAL:
        g_pg.surface_clip_h = param;
        return 1;

    case NV097_SET_SURFACE_CLIP_VERTICAL:
        g_pg.surface_clip_v = param;
        return 1;

    /* ── Texture state tracking (4 stages, 0x40 stride) ── */
    case NV097_SET_TEXTURE_OFFSET:
    case NV097_SET_TEXTURE_OFFSET + 0x40:
    case NV097_SET_TEXTURE_OFFSET + 0x80:
    case NV097_SET_TEXTURE_OFFSET + 0xC0:
    {
        int stage = (method - NV097_SET_TEXTURE_OFFSET) / 0x40;
        g_pg.tex[stage].offset = param;
        return 1;
    }
    case NV097_SET_TEXTURE_FORMAT:
    case NV097_SET_TEXTURE_FORMAT + 0x40:
    case NV097_SET_TEXTURE_FORMAT + 0x80:
    case NV097_SET_TEXTURE_FORMAT + 0xC0:
    {
        int stage = (method - NV097_SET_TEXTURE_FORMAT) / 0x40;
        g_pg.tex[stage].format = param;
        return 1;
    }
    case NV097_SET_TEXTURE_CONTROL0:
    case NV097_SET_TEXTURE_CONTROL0 + 0x40:
    case NV097_SET_TEXTURE_CONTROL0 + 0x80:
    case NV097_SET_TEXTURE_CONTROL0 + 0xC0:
    {
        int stage = (method - NV097_SET_TEXTURE_CONTROL0) / 0x40;
        g_pg.tex[stage].control0 = param;
        g_pg.tex[stage].enabled = (param >> 30) & 1;
        return 1;
    }

    case 0x1B0C: case 0x1B0C + 0x40: case 0x1B0C + 0x80: case 0x1B0C + 0xC0:
    {
        int stage = (method - 0x1B0C) / 0x40;
        g_pg.tex[stage].control1 = param;
        return 1;
    }
    case 0x1B1C: case 0x1B1C + 0x40: case 0x1B1C + 0x80: case 0x1B1C + 0xC0:
    {
        int stage = (method - 0x1B1C) / 0x40;
        g_pg.tex[stage].image_rect = param;
        return 1;
    }

    default:
        /* Check if it's in a known range we can safely ignore */
        if ((method >= 0x0B80 && method < 0x0C00) ||  /* Transform program */
            (method >= 0x0E00 && method < 0x1000) ||  /* Transform constants */
            (method >= 0x1680 && method < 0x1780) ||  /* Vertex array format/offset */
            (method >= 0x1B00 && method < 0x1C00) ||  /* Texture registers */
            (method >= 0x1D60 && method < 0x1EA0) ||  /* Combiners */
            method == 0x0100 ||                        /* NOP */
            method == 0x0180 ||                        /* SET_OBJECT */
            method == 0x0394 ||                        /* TRANSFORM_EXECUTION_MODE */
            method == 0x0398 ||                        /* TRANSFORM_PROGRAM_CXT_WRITE_EN */
            method == 0x039C ||                        /* TRANSFORM_PROGRAM_LOAD */
            method == 0x01E0 ||                        /* SHADER_STAGE_PROGRAM */
            method == 0x0108 || method == 0x010C ||    /* FLIP_READ/WRITE */
            method == 0x0110 || method == 0x0114 ||    /* FLIP_MODULO/INCREMENT */
            method == 0x0118)                          /* FLIP_STALL */
        {
            return 1;  /* Silently handled (ignored but acknowledged) */
        }

        g_pg.stats.methods_ignored++;
        {   /* DOA3 DIAG: histogram of ignored method IDs (dump via
             * pgraph_d3d11_dump_ignored from the frame wrapper). */
            extern void pgraph_diag_count_ignored(uint32_t method);
            pgraph_diag_count_ignored(((uint32_t)subchannel << 16) | method);
        }
        return 0;  /* Truly unhandled */
    }
}

/* DOA3 DIAG: ignored-method histogram */
static struct { uint32_t method, count; } s_ign[64];
void pgraph_diag_count_ignored(uint32_t method)
{
    for (int i = 0; i < 64; i++) {
        if (s_ign[i].method == method || s_ign[i].count == 0) {
            s_ign[i].method = method;
            s_ign[i].count++;
            return;
        }
    }
}
uint32_t g_mhist[0x800];
void pgraph_diag_dump_ignored(void)
{
    extern uint32_t g_dstat[16][3];
    {
        extern uint32_t g_census[12];
        {
        extern uint32_t g_texfmt[64], g_texnull[4];
        fprintf(stderr, "[PG-TEX] null: badoff=%u badfmt=%u badsize=%u oob=%u | fmts:",
                g_texnull[0], g_texnull[1], g_texnull[2], g_texnull[3]);
        for (int i = 0; i < 64; i++)
            if (g_texfmt[i]) fprintf(stderr, " %02X:%u", i, g_texfmt[i]);
        fprintf(stderr, "%s", " + NL + ");
    }
    fprintf(stderr, "[PG-CENSUS] draws=%u zerocol=%u anyalpha=%u tex=%u "
                        "onscreen=%u offscreen=%u blend=%u atest=%u prog=%u big=%u\n",
                g_census[0], g_census[1], g_census[2], g_census[3], g_census[4],
                g_census[5], g_census[6], g_census[7], g_census[8], g_census[9]);
    }
    { extern uint32_t g_dbail[8], g_dbail_lastic, g_dbail_lastst;
      fprintf(stderr, "[PG-BAIL] calls=%u noinline=%u nostride=%u fewverts=%u drawn=%u moviegate=%u lastic=%u lastst=%u\n",
              g_dbail[0], g_dbail[1], g_dbail[2], g_dbail[3], g_dbail[4],
              g_dbail[5], g_dbail_lastic, g_dbail_lastst); }
    fprintf(stderr, "[PG-XM] mode=%u fixed=%u prog=%u | draws by mode:",
            g_xmode, g_xmode_n[0], g_xmode_n[2]);
    for (int i = 0; i < 16; i++)
        if (g_dstat[i][0]) fprintf(stderr, " m%d:n=%u,v=%u,st=%u", i,
                                   g_dstat[i][0], g_dstat[i][1], g_dstat[i][2]);
    fprintf(stderr, "\n");
    fprintf(stderr, "[PG-MH]");
    for (int m = 0; m < 0x800; m++)
        if (g_mhist[m]) fprintf(stderr, " %04X:%u", m << 2, g_mhist[m]);
    fprintf(stderr, "\n");
    fprintf(stderr, "[PG-IGN]");
    for (int i = 0; i < 64 && s_ign[i].count; i++)
        fprintf(stderr, " %u/%04X:%u", s_ign[i].method >> 16,
                s_ign[i].method & 0xFFFF, s_ign[i].count);
    fprintf(stderr, "\n");
    fflush(stderr);
}

void pgraph_d3d11_flush(void)
{
    if (g_pg.in_draw) {
        submit_draw();
        g_pg.in_draw = 0;
    }
    g_pg.stats.frames++;
}

void pgraph_d3d11_set_chyron_scroll(uint32_t pixels)
{
    g_pg.chyron_scroll_offset = (float)pixels;
}

void pgraph_d3d11_get_stats(PgraphD3D11Stats *out)
{
    if (out) *out = g_pg.stats;
}
