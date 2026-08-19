/**
 * Movie-surface presenter (see NOTES.md, "Opening movie").
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
#include <stdlib.h>
#include <string.h>

#define PL_MPEG_IMPLEMENTATION
#include "pl_mpeg.h"

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
static int s_host_stopped;
static plm_video_t *s_host_video;
static unsigned char *s_host_frame;
static unsigned s_host_frames;
static LARGE_INTEGER s_host_start, s_host_frequency;

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

static int movie_extract_video(const char *path, uint8_t **video, size_t *video_size)
{
    FILE *file = fopen(path, "rb");
    uint8_t *input = NULL, *output = NULL;
    long file_size;
    size_t input_size, read_size, position = 0, output_size = 0;

    if (!file || fseek(file, 0, SEEK_END) != 0 ||
        (file_size = ftell(file)) <= 0 || fseek(file, 0, SEEK_SET) != 0)
        goto fail;
    input_size = (size_t)file_size;
    input = (uint8_t *)malloc(input_size);
    output = (uint8_t *)malloc(input_size);
    if (!input || !output)
        goto fail;
    read_size = fread(input, 1, input_size, file);
    fclose(file);
    file = NULL;
    if (read_size != input_size)
        goto fail;

    while (position + 6 <= input_size) {
        size_t packet_end, payload;
        uint8_t stream_id;
        while (position + 3 < input_size &&
               (input[position] != 0 || input[position + 1] != 0 ||
                input[position + 2] != 1))
            position++;
        if (position + 6 > input_size)
            break;
        stream_id = input[position + 3];
        if (stream_id != 0xE0) {
            if (stream_id == 0xBA) {
                if ((input[position + 4] & 0xC0) == 0x40) {
                    if (position + 14 > input_size)
                        goto fail;
                    position += 14u + (input[position + 13] & 7u);
                } else {
                    position += 12;
                }
            } else if (stream_id == 0xB9) {
                position += 4;
            } else {
                packet_end = position + 6u +
                    ((size_t)input[position + 4] << 8) + input[position + 5];
                if (packet_end > input_size || packet_end <= position + 6)
                    goto fail;
                position = packet_end;
            }
            continue;
        }
        packet_end = position + 6u +
            ((size_t)input[position + 4] << 8) + input[position + 5];
        if (packet_end > input_size || packet_end <= position + 6)
            goto fail;
        payload = position + 6;
        while (payload < packet_end && input[payload] == 0xFF)
            payload++;
        if (payload + 1 < packet_end && (input[payload] & 0xC0) == 0x40)
            payload += 2;
        if (payload >= packet_end)
            goto fail;
        if ((input[payload] & 0xF0) == 0x20)
            payload += 5;
        else if ((input[payload] & 0xF0) == 0x30)
            payload += 10;
        else if (input[payload] == 0x0F)
            payload++;
        else if ((input[payload] & 0xC0) == 0x80 && payload + 2 < packet_end)
            payload += 3u + input[payload + 2];
        else
            goto fail;
        if (payload > packet_end)
            goto fail;
        memcpy(output + output_size, input + payload, packet_end - payload);
        output_size += packet_end - payload;
        position = packet_end;
    }
    free(input);
    if (!output_size) {
        free(output);
        return 0;
    }
    *video = output;
    *video_size = output_size;
    return 1;

fail:
    if (file)
        fclose(file);
    free(input);
    free(output);
    return 0;
}

static const void *movie_host_frame(void)
{
    enum { WIDTH = 720, HEIGHT = 480, FRAME_SIZE = WIDTH * HEIGHT * 4 };
    if (s_host_stopped)
        return NULL;
    if (!s_host_video) {
        static const char *assets[] = {
            "..\\doa3gamefiles\\ninja.sfd",
            "..\\..\\doa3gamefiles\\ninja.sfd"
        };
        const char *asset = NULL;
        uint8_t *video_data = NULL;
        size_t video_size = 0;
        plm_buffer_t *video_buffer;
        for (unsigned i = 0; i < sizeof assets / sizeof assets[0]; i++) {
            if (GetFileAttributesA(assets[i]) != INVALID_FILE_ATTRIBUTES) {
                asset = assets[i];
                break;
            }
        }
        if (!asset || !movie_extract_video(asset, &video_data, &video_size)) {
            fprintf(stderr, "[HOSTFMV] ninja.sfd video stream not found\n");
            s_host_stopped = 1;
            return NULL;
        }
        video_buffer = plm_buffer_create_with_memory(video_data, video_size, TRUE);
        s_host_video = plm_video_create_with_buffer(video_buffer, TRUE);
        s_host_frame = (unsigned char *)malloc(FRAME_SIZE);
        if (!s_host_video || !plm_video_has_header(s_host_video) || !s_host_frame ||
            plm_video_get_width(s_host_video) != WIDTH ||
            plm_video_get_height(s_host_video) != HEIGHT) {
            fprintf(stderr, "[HOSTFMV] decoder startup failed\n");
            s_host_stopped = 1;
            return NULL;
        }
        QueryPerformanceFrequency(&s_host_frequency);
        QueryPerformanceCounter(&s_host_start);
        fprintf(stderr, "[HOSTFMV] embedded presenter streaming %s at %.2f fps\n",
            asset, plm_video_get_framerate(s_host_video));
        fflush(stderr);
    }
    {
        LARGE_INTEGER now;
        unsigned target;
        QueryPerformanceCounter(&now);
        target = (unsigned)(((now.QuadPart - s_host_start.QuadPart) * 30) /
                            s_host_frequency.QuadPart);
        while (s_host_frames <= target) {
            plm_frame_t *frame = plm_video_decode(s_host_video);
            if (!frame) {
                fprintf(stderr, "[HOSTFMV] presenter ended at frame %u\n", s_host_frames);
                fflush(stderr);
                s_host_stopped = 1;
                break;
            }
            plm_frame_to_bgra(frame, s_host_frame, WIDTH * 4);
            s_host_frames++;
            if (s_host_frames <= 4 || (s_host_frames % 64) == 0) {
                fprintf(stderr, "[HOSTFMV] decoded frame %u\n", s_host_frames);
                fflush(stderr);
            }
        }
    }
    return s_host_frames ? s_host_frame : NULL;
}

static void movie_upload(ID3D11DeviceContext *ctx, const void *src, int pitch)
{
    D3D11_MAPPED_SUBRESOURCE map;
    if (FAILED(ID3D11DeviceContext_Map(ctx, (ID3D11Resource *)s_tex, 0,
                                       D3D11_MAP_WRITE_DISCARD, 0, &map)))
        return;
    for (int y = 0; y < s_h; y++)
        memcpy((char *)map.pData + (size_t)y * map.RowPitch,
               (const char *)src + (size_t)y * pitch, (size_t)s_w * 4);
    ID3D11DeviceContext_Unmap(ctx, (ID3D11Resource *)s_tex, 0);
}

/* Redraw the last uploaded movie frame and present. Called from the server
 * pump (~60Hz) so the window keeps showing the movie instead of reverting
 * to black when no new frame arrives (decode is slower than realtime, and
 * after a stall/teardown nothing else presents). */
void doa3_movie_repaint(void)
{
    ID3D11DeviceContext *ctx = d3d8_GetD3D11Context();
    if (!ctx || !s_tex || s_failed || !s_frames)
        return;
    {
        const void *host = movie_host_frame();
        if (host)
            movie_upload(ctx, host, 720 * 4);
    }

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

    {
        const void *host = movie_host_frame();
        if (host) {
            src = host;
            pitch = w * 4;
        }
    }
    movie_upload(ctx, src, pitch);

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
}
