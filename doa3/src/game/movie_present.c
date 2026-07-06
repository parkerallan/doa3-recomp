/**
 * Movie-surface presenter (CLAUDE.md item 82).
 *
 * During Sofdec movie playback the game never calls D3DDevice_Present: on
 * Xbox it CSCs each frame straight into the front-buffer flip pair
 * (0x258C000/0x2A24000) and the display just scans them out. Our host
 * swapchain therefore stays black even though frames decode. This module
 * uploads the CSC'd 32bpp frame into a dynamic D3D11 texture, draws it as a
 * fullscreen triangle into the swapchain backbuffer (720x480 anamorphic ->
 * 640x480 window), and presents.
 *
 * Called from the sub_001762B0 (frame copy) wrapper in recomp_manual.c after
 * each completed movie blit. Clobbering the pgraph pipeline state is fine:
 * the game issues no pushbuffer draws while a movie is playing (draws=0).
 */
#define COBJMACROS
#include <windows.h>
#include <d3d11.h>
#include <d3dcompiler.h>
#include <stdio.h>
#include <string.h>

#pragma comment(lib, "d3dcompiler.lib")



extern ID3D11Device        *d3d8_GetD3D11Device(void);
extern ID3D11DeviceContext *d3d8_GetD3D11Context(void);
extern IDXGISwapChain      *d3d8_GetSwapChain(void);
extern void                 d3d8_PresentFrame(void);

static ID3D11Texture2D          *s_tex;
static ID3D11ShaderResourceView *s_srv;
static ID3D11RenderTargetView   *s_rtv;
static ID3D11VertexShader       *s_vs;
static ID3D11PixelShader        *s_ps;
static ID3D11SamplerState       *s_smp;
static int s_w, s_h, s_failed;

static const char s_hlsl[] =
    "Texture2D t : register(t0); SamplerState s : register(s0);\n"
    "struct V { float4 p : SV_Position; float2 uv : TEXCOORD0; };\n"
    "V vsmain(uint id : SV_VertexID) {\n"
    "  V o; float2 uv = float2((id << 1) & 2, id & 2);\n"
    "  o.p = float4(uv * float2(2, -2) + float2(-1, 1), 0, 1); o.uv = uv; return o;\n"
    "}\n"
    "float4 psmain(V i) : SV_Target { return float4(t.Sample(s, i.uv).rgb, 1); }\n";

static int movie_present_init(ID3D11Device *dev, int w, int h)
{
    ID3DBlob *vsb = NULL, *psb = NULL, *err = NULL;
    if (FAILED(D3DCompile(s_hlsl, sizeof(s_hlsl) - 1, "movie_vs", NULL, NULL,
                          "vsmain", "vs_4_0", 0, 0, &vsb, &err)) ||
        FAILED(D3DCompile(s_hlsl, sizeof(s_hlsl) - 1, "movie_ps", NULL, NULL,
                          "psmain", "ps_4_0", 0, 0, &psb, &err))) {
        fprintf(stderr, "[MVPRES] shader compile failed: %s\n",
                err ? (const char *)ID3D10Blob_GetBufferPointer(err) : "?");
        fflush(stderr);
        return 0;
    }
    if (FAILED(ID3D11Device_CreateVertexShader(dev,
            ID3D10Blob_GetBufferPointer(vsb), ID3D10Blob_GetBufferSize(vsb),
            NULL, &s_vs)) ||
        FAILED(ID3D11Device_CreatePixelShader(dev,
            ID3D10Blob_GetBufferPointer(psb), ID3D10Blob_GetBufferSize(psb),
            NULL, &s_ps)))
        return 0;
    ID3D10Blob_Release(vsb);
    ID3D10Blob_Release(psb);

    D3D11_TEXTURE2D_DESC td;
    memset(&td, 0, sizeof(td));
    td.Width = w; td.Height = h;
    td.MipLevels = 1; td.ArraySize = 1;
    td.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
    td.SampleDesc.Count = 1;
    td.Usage = D3D11_USAGE_DYNAMIC;
    td.BindFlags = D3D11_BIND_SHADER_RESOURCE;
    td.CPUAccessFlags = D3D11_CPU_ACCESS_WRITE;
    if (FAILED(ID3D11Device_CreateTexture2D(dev, &td, NULL, &s_tex)))
        return 0;
    if (FAILED(ID3D11Device_CreateShaderResourceView(dev,
            (ID3D11Resource *)s_tex, NULL, &s_srv)))
        return 0;

    D3D11_SAMPLER_DESC sd;
    memset(&sd, 0, sizeof(sd));
    sd.Filter = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
    sd.AddressU = sd.AddressV = sd.AddressW = D3D11_TEXTURE_ADDRESS_CLAMP;
    if (FAILED(ID3D11Device_CreateSamplerState(dev, &sd, &s_smp)))
        return 0;

    IDXGISwapChain *sc = d3d8_GetSwapChain();
    ID3D11Texture2D *bb = NULL;
    if (!sc || FAILED(IDXGISwapChain_GetBuffer(sc, 0, &IID_ID3D11Texture2D,
                                               (void **)&bb)) || !bb)
        return 0;
    HRESULT hr = ID3D11Device_CreateRenderTargetView(dev, (ID3D11Resource *)bb,
                                                     NULL, &s_rtv);
    ID3D11Texture2D_Release(bb);
    if (FAILED(hr))
        return 0;
    s_w = w; s_h = h;
    fprintf(stderr, "[MVPRES] initialized (%dx%d -> window)\n", w, h);
    fflush(stderr);
    return 1;
}

static unsigned s_frames = 0;

/* Redraw the last uploaded movie frame and present. Called from the server
 * pump (~60Hz) so the window keeps showing the movie instead of reverting
 * to black when no new frame arrives (decode is slower than realtime, and
 * after a stall/teardown nothing else presents). */
void doa3_movie_repaint(void)
{
    ID3D11DeviceContext *ctx = d3d8_GetD3D11Context();
    if (!ctx || !s_tex || s_failed || !s_frames)
        return;

    D3D11_VIEWPORT vp;
    IDXGISwapChain *sc = d3d8_GetSwapChain();
    DXGI_SWAP_CHAIN_DESC scd;
    vp.TopLeftX = 0; vp.TopLeftY = 0;
    vp.Width = 640; vp.Height = 480;
    if (sc && SUCCEEDED(IDXGISwapChain_GetDesc(sc, &scd))) {
        vp.Width = (FLOAT)scd.BufferDesc.Width;
        vp.Height = (FLOAT)scd.BufferDesc.Height;
    }
    vp.MinDepth = 0.0f; vp.MaxDepth = 1.0f;

    ID3D11DeviceContext_OMSetRenderTargets(ctx, 1, &s_rtv, NULL);
    ID3D11DeviceContext_RSSetViewports(ctx, 1, &vp);
    ID3D11DeviceContext_IASetInputLayout(ctx, NULL);
    ID3D11DeviceContext_IASetPrimitiveTopology(ctx,
        D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    ID3D11DeviceContext_VSSetShader(ctx, s_vs, NULL, 0);
    ID3D11DeviceContext_PSSetShader(ctx, s_ps, NULL, 0);
    ID3D11DeviceContext_PSSetShaderResources(ctx, 0, 1, &s_srv);
    ID3D11DeviceContext_PSSetSamplers(ctx, 0, 1, &s_smp);
    ID3D11DeviceContext_Draw(ctx, 3, 0);
    d3d8_PresentFrame();

    /* prove persistence: dump what the window shows well after the last
     * decoded frame */
    {
        static unsigned s_rp = 0;
        s_rp++;
        if (s_rp == 900) {   /* ~15s after the movie froze */
            extern void d3d8_DumpBackbufferBMP(const char *path);
            d3d8_DumpBackbufferBMP("movie_window_late.bmp");
        }
    }
}

void doa3_present_movie_surface(const void *src, int w, int h, int pitch)
{
    ID3D11Device *dev = d3d8_GetD3D11Device();
    ID3D11DeviceContext *ctx = d3d8_GetD3D11Context();
    if (!dev || !ctx || !src || s_failed)
        return;
    if (!s_tex) {
        if (!movie_present_init(dev, w, h)) {
            s_failed = 1;
            fprintf(stderr, "[MVPRES] init FAILED — movie present disabled\n");
            fflush(stderr);
            return;
        }
    }
    if (w != s_w || h != s_h)
        return;

    D3D11_MAPPED_SUBRESOURCE map;
    if (FAILED(ID3D11DeviceContext_Map(ctx, (ID3D11Resource *)s_tex, 0,
                                       D3D11_MAP_WRITE_DISCARD, 0, &map)))
        return;
    for (int y = 0; y < h; y++)
        memcpy((char *)map.pData + (size_t)y * map.RowPitch,
               (const char *)src + (size_t)y * pitch, (size_t)w * 4);
    ID3D11DeviceContext_Unmap(ctx, (ID3D11Resource *)s_tex, 0);

    D3D11_VIEWPORT vp;
    IDXGISwapChain *sc = d3d8_GetSwapChain();
    DXGI_SWAP_CHAIN_DESC scd;
    vp.TopLeftX = 0; vp.TopLeftY = 0;
    vp.Width = 640; vp.Height = 480;      /* window size fallback */
    if (sc && SUCCEEDED(IDXGISwapChain_GetDesc(sc, &scd))) {
        vp.Width = (FLOAT)scd.BufferDesc.Width;
        vp.Height = (FLOAT)scd.BufferDesc.Height;
    }
    vp.MinDepth = 0.0f; vp.MaxDepth = 1.0f;

    ID3D11DeviceContext_OMSetRenderTargets(ctx, 1, &s_rtv, NULL);
    ID3D11DeviceContext_RSSetViewports(ctx, 1, &vp);
    ID3D11DeviceContext_IASetInputLayout(ctx, NULL);
    ID3D11DeviceContext_IASetPrimitiveTopology(ctx,
        D3D11_PRIMITIVE_TOPOLOGY_TRIANGLELIST);
    ID3D11DeviceContext_VSSetShader(ctx, s_vs, NULL, 0);
    ID3D11DeviceContext_PSSetShader(ctx, s_ps, NULL, 0);
    ID3D11DeviceContext_PSSetShaderResources(ctx, 0, 1, &s_srv);
    ID3D11DeviceContext_PSSetSamplers(ctx, 0, 1, &s_smp);
    ID3D11DeviceContext_Draw(ctx, 3, 0);

    d3d8_PresentFrame();                   /* message pump + vsync present */

    s_frames++;
    if (s_frames <= 4 || (s_frames % 256) == 0) {
        fprintf(stderr, "[MVPRES] frame %u presented\n", s_frames);
        fflush(stderr);
    }
    /* headless visual verification: what the window actually shows */
    if (s_frames == 3 || s_frames == 40) {
        extern void d3d8_DumpBackbufferBMP(const char *path);
        char p[64];
        snprintf(p, sizeof(p), "movie_window_%u.bmp", s_frames);
        d3d8_DumpBackbufferBMP(p);
    }
}
