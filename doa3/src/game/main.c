/**
 * Dead or Alive 3 - Recompiled Game Host Entry Point
 *
 * Boots the statically-recompiled DOA3 code on Windows:
 *   load XBE -> map Xbox memory -> kernel init -> install fault-skip VEH ->
 *   call recompiled entry point (xbe_entry_point @ 0x001651A5).
 *
 * The VEH decoders (veh_skip_faulting_read / _write) are ported verbatim from
 * the burnout3 reference. They decode a faulting x86-64 instruction, return 0
 * for reads (and skip stores), and advance RIP so boot can push through wild
 * pointer probes and reveal real blockers. D3D/audio/input come later.
 */

#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>

#include "../kernel/kernel.h"
#include "../kernel/xbox_memory_layout.h"
#include "../kernel/xbox_fiber.h"
#include "../d3d/d3d8_xbox.h"
#include "../audio/dsound_xbox.h"
#include "recomp/gen/recomp_funcs.h"

#define DOA3_ENTRY_POINT   0x001651A5
#define DOA3_XBE_PATH      "../doa3gamefiles/default.xbe"
#define DOA3_GAME_DIR      "../doa3gamefiles"
#define DOA3_WIN_W         640
#define DOA3_WIN_H         480

/* Host window + D3D8->D3D11 device (mirrors burnout3's graphics init). The NV2A
 * pgraph->D3D11 translator renders through this device via xbox_GetD3DDevice(). */
static HWND          g_hwnd;
static IDirect3D8   *g_d3d8;
static IDirect3DDevice8 *g_d3d_device;
static IDirectSound8 *g_dsound;   /* host DirectSound (mirrors burnout3) */

static LRESULT CALLBACK doa3_wndproc(HWND h, UINT m, WPARAM w, LPARAM l)
{
    if (m == WM_CLOSE)   { DestroyWindow(h); return 0; }
    if (m == WM_DESTROY) { PostQuitMessage(0); return 0; }
    return DefWindowProcA(h, m, w, l);
}

static HWND doa3_create_window(void)
{
    WNDCLASSA wc; RECT r = { 0, 0, DOA3_WIN_W, DOA3_WIN_H };
    memset(&wc, 0, sizeof(wc));
    wc.lpfnWndProc = doa3_wndproc;
    wc.hInstance = GetModuleHandleA(NULL);
    wc.lpszClassName = "DOA3Window";
    wc.hCursor = LoadCursorA(NULL, IDC_ARROW);
    RegisterClassA(&wc);
    AdjustWindowRect(&r, WS_OVERLAPPEDWINDOW, FALSE);
    HWND h = CreateWindowExA(0, "DOA3Window", "Dead or Alive 3 (recomp)",
                             WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, CW_USEDEFAULT,
                             r.right - r.left, r.bottom - r.top, NULL, NULL,
                             wc.hInstance, NULL);
    if (h) { ShowWindow(h, SW_SHOW); UpdateWindow(h); }
    return h;
}

/* Create the D3D8->D3D11 device (burnout3 graphics init). */
static int doa3_init_graphics(void)
{
    D3DPRESENT_PARAMETERS pp;
    HRESULT hr;

    g_hwnd = doa3_create_window();
    if (!g_hwnd) { fprintf(stderr, "WARNING: window creation failed\n"); }

    g_d3d8 = xbox_Direct3DCreate8(0);
    if (!g_d3d8) { fprintf(stderr, "WARNING: xbox_Direct3DCreate8 failed\n"); return 0; }

    memset(&pp, 0, sizeof(pp));
    pp.BackBufferWidth = DOA3_WIN_W;
    pp.BackBufferHeight = DOA3_WIN_H;
    pp.BackBufferFormat = D3DFMT_X8R8G8B8;
    pp.BackBufferCount = 1;
    pp.SwapEffect = D3DSWAPEFFECT_DISCARD;
    pp.hDeviceWindow = g_hwnd;
    pp.Windowed = TRUE;
    pp.EnableAutoDepthStencil = TRUE;
    pp.AutoDepthStencilFormat = D3DFMT_D24S8;

    hr = g_d3d8->lpVtbl->CreateDevice(g_d3d8, 0, 0, g_hwnd, 0, &pp, &g_d3d_device);
    if (FAILED(hr)) { fprintf(stderr, "WARNING: CreateDevice failed 0x%08lX\n", (unsigned long)hr); return 0; }

    { extern void pgraph_d3d11_init(void); pgraph_d3d11_init(); }
    fprintf(stderr, "  Graphics: D3D8->D3D11 device created (host window %dx%d)\n",
            DOA3_WIN_W, DOA3_WIN_H);
    return 1;
}

/* Present the host D3D8->D3D11 swapchain (flip the window). Called once per game
 * frame from the push-buffer translator in recomp_manual.c. Also pumps the Win32
 * message queue so the window stays responsive. (mirrors burnout's g_d3d_device
 * Present in its render loop.) */
/* Service the window's message queue WITHOUT presenting. The game only
 * presents from its frame loop; during the multi-second asset-load spins no
 * presents happen, the queue goes unserviced, and one click marks the window
 * "Not Responding" (users then close it, killing boot). Called from the
 * load-wait wrappers (main thread). */
void doa3_pump_messages(void)
{
    MSG msg;
    while (PeekMessageA(&msg, NULL, 0, 0, PM_REMOVE)) {
        if (msg.message == WM_QUIT) {
            fprintf(stderr, "[EXIT] window closed by user%c", 10);
            fflush(stderr);
            ExitProcess(0);
        }
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }
}

void doa3_present_frame(void)
{
    if (getenv("DOA3_NO_PRESENT")) return;   /* isolation: skip pump + present entirely */
    MSG msg;
    while (PeekMessageA(&msg, NULL, 0, 0, PM_REMOVE)) {
        if (msg.message == WM_QUIT) {
            /* The recompiled game never returns to us — hard-exit the host
             * when the user closes the window. */
            fprintf(stderr, "[EXIT] window closed by user\n");
            fflush(stderr);
            ExitProcess(0);
        }
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }
    if (g_d3d_device)
        g_d3d_device->lpVtbl->Present(g_d3d_device, NULL, NULL, NULL, NULL);
    if (getenv("DOA3_THROTTLE")) Sleep(15);   /* legacy rig knob */

    /* item 101: presents are vsync-OFF (a blocking Present held the ONE
     * thread hosting every decode fiber at the monitor rate: the loop ran 40
     * rounds/s on the user's desktop -> the movie served 20fps, and the boot
     * spins crawled through their 30s black phase). Do NOT re-add a QPC
     * "self-pace to 60Hz, spend slack in yields" loop here (item 98 fix B):
     * re-tried 2026-07-05 (doa3_log_r6.txt) and it collapsed the loop to 2
     * rounds/s — each slack yield can burn unbounded decode work (item 94's
     * budget-collapse mechanism). Pacing comes from the wall-time movie
     * clock (recomp_manual.c synthetic-clock block); free-running the loop
     * is safe since that clock stopped being pump-rate-derived. */
}

extern volatile uint32_t g_icall_trace[16];
extern volatile uint32_t g_icall_trace_idx;
extern volatile uint64_t g_icall_count;

/* ── Fault-skip decoders (ported verbatim from burnout3/src/game/main.c) ── */
static BOOL veh_skip_faulting_read(PCONTEXT ctx)
{
    uint8_t *rip = (uint8_t *)ctx->Rip;
    int prefix_len = 0;
    int rex_w = 0, rex_r = 0, rex_x = 0, rex_b = 0;

    /* Map register index to CONTEXT field */
    DWORD64 *gpr[] = {
        &ctx->Rax, &ctx->Rcx, &ctx->Rdx, &ctx->Rbx,
        &ctx->Rsp, &ctx->Rbp, &ctx->Rsi, &ctx->Rdi,
        &ctx->R8,  &ctx->R9,  &ctx->R10, &ctx->R11,
        &ctx->R12, &ctx->R13, &ctx->R14, &ctx->R15
    };

    /* Parse legacy prefixes (segment, operand size, etc.) */
    while (prefix_len < 4) {
        uint8_t b = rip[prefix_len];
        if (b == 0x66 || b == 0x67 || b == 0xF2 || b == 0xF3 ||
            b == 0x2E || b == 0x3E || b == 0x26 || b == 0x36 ||
            b == 0x64 || b == 0x65) {
            prefix_len++;
        } else {
            break;
        }
    }

    /* Parse REX prefix (0x40-0x4F) */
    if ((rip[prefix_len] & 0xF0) == 0x40) {
        uint8_t rex = rip[prefix_len];
        rex_w = (rex >> 3) & 1;
        rex_r = (rex >> 2) & 1;
        rex_x = (rex >> 1) & 1;
        rex_b = rex & 1;
        prefix_len++;
    }

    uint8_t *op = rip + prefix_len;

    /* Calculate ModRM displacement length */
    /* Returns total bytes for modrm + optional SIB + displacement */
    #define MODRM_LEN(modrm_byte) do { \
        int _mod = ((modrm_byte) >> 6) & 3; \
        int _rm  = ((modrm_byte) & 7) | (rex_b << 3); \
        modrm_total = 1; /* modrm byte itself */ \
        if (_mod == 0 && (_rm & 7) == 4) modrm_total++; /* SIB */ \
        if (_mod == 0 && (_rm & 7) == 5) modrm_total += 4; /* RIP-rel disp32 */ \
        if (_mod == 1) { modrm_total++; if ((_rm & 7) == 4) modrm_total++; } \
        if (_mod == 2) { modrm_total += 4; if ((_rm & 7) == 4) modrm_total++; } \
        if (_mod == 3) modrm_total = 1; /* reg-reg, shouldn't fault */ \
    } while(0)

    int modrm_total = 0;
    int reg_idx;

    /* 8B /r : mov r32/r64, r/m32/r/m64 */
    if (op[0] == 0x8B) {
        reg_idx = ((op[1] >> 3) & 7) | (rex_r << 3);
        MODRM_LEN(op[1]);
        *gpr[reg_idx] = 0;
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* 8A /r : mov r8, r/m8 */
    if (op[0] == 0x8A) {
        reg_idx = ((op[1] >> 3) & 7) | (rex_r << 3);
        MODRM_LEN(op[1]);
        /* Zero just the low byte of the register */
        *gpr[reg_idx] &= ~(DWORD64)0xFF;
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* 0F B6 /r : movzx r32, r/m8 */
    /* 0F B7 /r : movzx r32, r/m16 */
    /* 0F BE /r : movsx r32, r/m8 */
    /* 0F BF /r : movsx r32, r/m16 */
    if (op[0] == 0x0F && (op[1] == 0xB6 || op[1] == 0xB7 ||
                           op[1] == 0xBE || op[1] == 0xBF)) {
        reg_idx = ((op[2] >> 3) & 7) | (rex_r << 3);
        MODRM_LEN(op[2]);
        *gpr[reg_idx] = 0;
        ctx->Rip += prefix_len + 2 + modrm_total;
        return TRUE;
    }

    /* 3B /r : cmp r32, r/m32 - set flags as if comparing with 0 */
    if (op[0] == 0x3B) {
        reg_idx = ((op[1] >> 3) & 7) | (rex_r << 3);
        MODRM_LEN(op[1]);
        /* Set ZF=0, CF based on comparison with 0 */
        DWORD64 val = *gpr[reg_idx];
        ctx->EFlags &= ~(0x8D5);  /* clear OF, SF, ZF, AF, PF, CF */
        if (val == 0) ctx->EFlags |= 0x40;  /* ZF */
        if (val & (rex_w ? 0x8000000000000000ULL : 0x80000000ULL))
            ctx->EFlags |= 0x80;  /* SF */
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* 39 /r : cmp r/m32, r32 - set flags as if mem=0 */
    if (op[0] == 0x39) {
        reg_idx = ((op[1] >> 3) & 7) | (rex_r << 3);
        MODRM_LEN(op[1]);
        DWORD64 val = *gpr[reg_idx];
        ctx->EFlags &= ~(0x8D5);
        if (val == 0) ctx->EFlags |= 0x40;  /* ZF: 0 == val */
        /* 0 - val: CF set if val != 0 */
        if (val != 0) ctx->EFlags |= 0x01;  /* CF */
        /* SF: sign of (0 - val) */
        DWORD64 result = (rex_w ? (DWORD64)(-(int64_t)val) : (DWORD64)(uint32_t)(-(int32_t)(uint32_t)val));
        if (result & (rex_w ? 0x8000000000000000ULL : 0x80000000ULL))
            ctx->EFlags |= 0x80;  /* SF */
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* SSE instructions with memory operands.
     * These use legacy prefixes (F3/F2/66/none) + 0F opcode + modrm.
     * For faulting memory reads, zero the destination XMM register
     * and advance RIP to let execution continue.
     */
    {
        int has_f3 = 0, has_f2 = 0, has_66 = 0;
        for (int i = 0; i < prefix_len; i++) {
            if (rip[i] == 0xF3) has_f3 = 1;
            if (rip[i] == 0xF2) has_f2 = 1;
            if (rip[i] == 0x66) has_66 = 1;
        }

        if (op[0] == 0x0F) {
            int is_sse_mem_read = 0;

            /* F3 0F xx: scalar single-precision */
            if (has_f3) {
                switch (op[1]) {
                case 0x10: /* movss xmm, m32 */
                case 0x58: /* addss xmm, m32 */
                case 0x59: /* mulss xmm, m32 */
                case 0x5C: /* subss xmm, m32 */
                case 0x5E: /* divss xmm, m32 */
                case 0x51: /* sqrtss xmm, m32 */
                case 0x5D: /* minss xmm, m32 */
                case 0x5F: /* maxss xmm, m32 */
                case 0x2A: /* cvtsi2ss xmm, r/m32 */
                case 0x2C: /* cvttss2si r32, xmm/m32 */
                case 0x2D: /* cvtss2si r32, xmm/m32 */
                    is_sse_mem_read = 1;
                    break;
                }
            }
            /* F2 0F xx: scalar double-precision */
            else if (has_f2) {
                switch (op[1]) {
                case 0x10: /* movsd xmm, m64 */
                case 0x58: /* addsd */
                case 0x59: /* mulsd */
                case 0x5C: /* subsd */
                case 0x5E: /* divsd */
                    is_sse_mem_read = 1;
                    break;
                }
            }
            /* 66 0F xx: packed double / integer */
            else if (has_66) {
                switch (op[1]) {
                case 0x28: /* movapd xmm, m128 */
                case 0x10: /* movupd xmm, m128 */
                case 0x6F: /* movdqa xmm, m128 */
                    is_sse_mem_read = 1;
                    break;
                }
            }
            /* No prefix: packed single-precision */
            else {
                switch (op[1]) {
                case 0x28: /* movaps xmm, m128 */
                case 0x10: /* movups xmm, m128 */
                case 0x58: /* addps xmm, m128 */
                case 0x59: /* mulps xmm, m128 */
                case 0x5C: /* subps xmm, m128 */
                case 0x5E: /* divps xmm, m128 */
                    is_sse_mem_read = 1;
                    break;
                }
            }

            if (is_sse_mem_read) {
                int xmm_idx = ((op[2] >> 3) & 7) | (rex_r << 3);
                MODRM_LEN(op[2]);

                /* For cvttss2si/cvtss2si, dest is GPR, not XMM */
                if ((has_f3 && (op[1] == 0x2C || op[1] == 0x2D))) {
                    *gpr[xmm_idx] = 0;
                } else if (xmm_idx < 16) {
                    M128A *xmm = &ctx->Xmm0 + xmm_idx;
                    xmm->Low = 0;
                    xmm->High = 0;
                }
                ctx->Rip += prefix_len + 2 + modrm_total;
                return TRUE;
            }
        }
    }

    #undef MODRM_LEN
    return FALSE;
}

/**
 * Skip a faulting write instruction by advancing RIP past it.
 * Unlike read skips, write skips don't need to set a register.
 * Handles common store instructions: mov r/m, r and mov r/m, imm.
 */
static BOOL veh_skip_faulting_write(PCONTEXT ctx)
{
    uint8_t *rip = (uint8_t *)ctx->Rip;
    int prefix_len = 0;
    int rex_w = 0, rex_r = 0, rex_b = 0;

    /* Parse legacy prefixes */
    while (prefix_len < 4) {
        uint8_t b = rip[prefix_len];
        if (b == 0x66 || b == 0x67 || b == 0xF2 || b == 0xF3 ||
            b == 0x2E || b == 0x3E || b == 0x26 || b == 0x36 ||
            b == 0x64 || b == 0x65) {
            prefix_len++;
        } else {
            break;
        }
    }

    /* Parse REX prefix */
    if ((rip[prefix_len] & 0xF0) == 0x40) {
        uint8_t rex = rip[prefix_len];
        rex_w = (rex >> 3) & 1;
        rex_r = (rex >> 2) & 1;
        rex_b = rex & 1;
        prefix_len++;
    }

    uint8_t *op = rip + prefix_len;
    int modrm_total = 0;

    #define MODRM_LEN(modrm_byte) do { \
        int _mod = ((modrm_byte) >> 6) & 3; \
        int _rm  = ((modrm_byte) & 7) | (rex_b << 3); \
        modrm_total = 1; \
        if (_mod == 0 && (_rm & 7) == 4) modrm_total++; \
        if (_mod == 0 && (_rm & 7) == 5) modrm_total += 4; \
        if (_mod == 1) { modrm_total++; if ((_rm & 7) == 4) modrm_total++; } \
        if (_mod == 2) { modrm_total += 4; if ((_rm & 7) == 4) modrm_total++; } \
        if (_mod == 3) modrm_total = 1; \
    } while(0)

    (void)rex_r; (void)rex_w;

    /* 89 /r : mov r/m32, r32 */
    if (op[0] == 0x89) {
        MODRM_LEN(op[1]);
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* 88 /r : mov r/m8, r8 */
    if (op[0] == 0x88) {
        MODRM_LEN(op[1]);
        ctx->Rip += prefix_len + 1 + modrm_total;
        return TRUE;
    }

    /* C7 /0 id : mov r/m32, imm32 */
    if (op[0] == 0xC7) {
        MODRM_LEN(op[1]);
        ctx->Rip += prefix_len + 1 + modrm_total + 4;
        return TRUE;
    }

    /* C6 /0 ib : mov r/m8, imm8 */
    if (op[0] == 0xC6) {
        MODRM_LEN(op[1]);
        ctx->Rip += prefix_len + 1 + modrm_total + 1;
        return TRUE;
    }

    /* 66 89 /r : mov r/m16, r16 (handled via 0x66 prefix + 89) */
    /* Already handled above since 0x66 is parsed as prefix */

    /* 0F 11 /r : movups xmm, m128 (SSE store) */
    if (op[0] == 0x0F && op[1] == 0x11) {
        MODRM_LEN(op[2]);
        ctx->Rip += prefix_len + 2 + modrm_total;
        return TRUE;
    }

    /* F3 0F 11 /r : movss m32, xmm (SSE scalar store) */
    {
        int has_f3 = 0;
        for (int i = 0; i < prefix_len; i++) {
            if (rip[i] == 0xF3) has_f3 = 1;
        }
        if (has_f3 && op[0] == 0x0F && op[1] == 0x11) {
            MODRM_LEN(op[2]);
            ctx->Rip += prefix_len + 2 + modrm_total;
            return TRUE;
        }

        /* F3 A4 : rep movsb (inline memcpy)
         * F3 A5 : rep movsd (inline memcpy, 4-byte)
         * F3 AA : rep stosb (inline memset)
         * F3 AB : rep stosd (inline memset, 4-byte)
         *
         * Cancel remaining iterations: set RCX=0, advance RSI/RDI past
         * the unmapped region. The rep prefix with RCX=0 is a no-op,
         * so the CPU will naturally advance RIP past the instruction.
         * Assumes DF=0 (CLD), which is standard for MSVC code.
         */
        if (has_f3 && (op[0] == 0xA4 || op[0] == 0xA5)) {
            /* rep movsb / rep movsd */
            uint64_t stride = (op[0] == 0xA5) ? 4 : 1;
            uint64_t remaining = ctx->Rcx * stride;
            ctx->Rcx = 0;
            ctx->Rsi += remaining;
            ctx->Rdi += remaining;
            return TRUE;
        }
        if (has_f3 && (op[0] == 0xAA || op[0] == 0xAB)) {
            /* rep stosb / rep stosd */
            uint64_t stride = (op[0] == 0xAB) ? 4 : 1;
            uint64_t remaining = ctx->Rcx * stride;
            ctx->Rcx = 0;
            ctx->Rdi += remaining;
            return TRUE;
        }
    }

    #undef MODRM_LEN
    return FALSE;
}

/* ── Crash / fault-skip VEH ─────────────────────────────────────── */

static uint64_t g_fault_skips = 0;
static uint64_t g_fault_logged = 0;
#define XBOX_MEM_SIZE (64u * 1024u * 1024u)

/* ── Write-watch (diagnostic): page-protect a guest range and log the RIP of
 * every writer via AV + single-step re-arm. Used to catch the corruption of
 * the mwPly slot table (guest 0xC0E544..0xC0EFFF). ── */
static volatile uintptr_t g_watch_page = 0;     /* host page base (0 = off) */
static volatile int g_watch_pending = 0;        /* reprotect after single-step */
static uint32_t g_watch_rips_seen[24];
static int g_watch_rips_n = 0;

void doa3_watch_arm(uint32_t xb_page)
{
    uintptr_t host = (uintptr_t)g_xbox_mem_offset + xb_page;
    DWORD old;
    if (VirtualProtect((LPVOID)host, 0x1000, PAGE_READONLY, &old))
        g_watch_page = host;
}

void doa3_watch_disarm(void)
{
    if (g_watch_page) {
        DWORD old;
        VirtualProtect((LPVOID)g_watch_page, 0x1000, PAGE_READWRITE, &old);
        g_watch_page = 0;
    }
}

static uint32_t g_watch_last_va = 0;
static uintptr_t g_watch_last_rip = 0;
static uint32_t g_watch_last_old = 0;

/* item 102: sfdec picture-slot STATE words (h=0xC0F7C0, +0x366C + 0x50*i).
 * Slot 6 (0xC1300C) is off the watched page; slots 0-5 suffice. The slot
 * lifecycle (0 free -> decoded 2 -> served -> back to 0) is the item-95
 * killer: stalled runs park ALL slots at state 2 (release never runs). */
static int watch_slot_state(uint32_t xbva)
{
    if (xbva < 0xC12E2Cu || xbva > 0xC12FBCu) return -1;
    uint32_t rel = xbva - 0xC12E2Cu;
    if (rel % 0x50u) return -1;
    return (int)(rel / 0x50u);
}
static LONG WINAPI crash_veh(PEXCEPTION_POINTERS info)
{
    DWORD code = info->ExceptionRecord->ExceptionCode;
    /* write-watch single-step: re-protect and resume */
    if (code == EXCEPTION_SINGLE_STEP && g_watch_pending) {
        g_watch_pending = 0;
        if (g_watch_last_va) {   /* log the VALUE the watched write stored */
            uint32_t newv = *(volatile uint32_t *)((uintptr_t)g_xbox_mem_offset + g_watch_last_va);
            int slot = watch_slot_state(g_watch_last_va);
            if (slot >= 0) {
                /* slot-state transition: log only real changes, dedupe by
                 * (slot, old, new, rip) so steady-state cycles print once */
                static uint64_t s_seen[64]; static int s_sn = 0; static int s_prints = 0;
                if (newv != g_watch_last_old && s_prints < 200) {
                    uint64_t key = ((uint64_t)(uint32_t)g_watch_last_rip << 16) |
                                   ((uint64_t)slot << 8) |
                                   ((g_watch_last_old & 0xF) << 4) | (newv & 0xF);
                    int dup = 0;
                    for (int i = 0; i < s_sn; i++) if (s_seen[i] == key) { dup = 1; break; }
                    if (!dup) {
                        if (s_sn < 64) s_seen[s_sn++] = key;
                        s_prints++;
                        fprintf(stderr, "[SLOTST] slot=%d %u->%u rip=0x%llX%c",
                                slot, g_watch_last_old, newv,
                                (unsigned long long)g_watch_last_rip, 10);
                        fflush(stderr);
                    }
                }
            } else {
                static int s_vals = 0;
                if (s_vals < 40) {
                    s_vals++;
                    fprintf(stderr, "[WATCHV] xbva=0x%08X = 0x%X (rip 0x%llX)%c",
                            g_watch_last_va, newv,
                            (unsigned long long)g_watch_last_rip, 10);
                    fflush(stderr);
                }
            }
            g_watch_last_va = 0;
        }
        if (g_watch_page) {
            DWORD old;
            VirtualProtect((LPVOID)g_watch_page, 0x1000, PAGE_READONLY, &old);
        }
        return EXCEPTION_CONTINUE_EXECUTION;
    }
    /* write-watch fault: log new writer RIPs, unprotect, single-step */
    if (code == EXCEPTION_ACCESS_VIOLATION && g_watch_page) {
        uintptr_t f = info->ExceptionRecord->ExceptionInformation[1];
        if (f >= g_watch_page && f < g_watch_page + 0x1000 &&
            info->ExceptionRecord->ExceptionInformation[0]) {
            uint32_t rip32 = (uint32_t)info->ContextRecord->Rip;
            uint32_t xbva = (uint32_t)(f - (uintptr_t)g_xbox_mem_offset);
            /* focus filter (item 87): the decode-slot index [h+0x35F8]
             * (0xC12DB8) — its writer is the decode-path slot manager we
             * cannot find statically (computed addressing). */
            int slot_idx = watch_slot_state(xbva);
            int interesting = (xbva == 0xC12DB8u) || slot_idx >= 0;
            if (interesting) {
                g_watch_last_va = xbva;
                g_watch_last_rip = (uintptr_t)info->ContextRecord->Rip;
                g_watch_last_old = *(volatile uint32_t *)f;   /* pre-write value (page readable) */
            }
            int seen = !interesting;   /* value log below covers repeats */
            for (int i = 0; i < g_watch_rips_n; i++)
                if (g_watch_rips_seen[i] == rip32) { seen = 1; break; }
            if (interesting && !seen && g_watch_rips_n < 24) {
                g_watch_rips_seen[g_watch_rips_n++] = rip32;
                fprintf(stderr, "[WATCHW] rip=0x%llX xbva=0x%08X\n",
                        (unsigned long long)info->ContextRecord->Rip,
                        (uint32_t)(f - (uintptr_t)g_xbox_mem_offset));
                fflush(stderr);
            }
            DWORD old;
            VirtualProtect((LPVOID)g_watch_page, 0x1000, PAGE_READWRITE, &old);
            info->ContextRecord->EFlags |= 0x100;   /* TF: single-step */
            g_watch_pending = 1;
            return EXCEPTION_CONTINUE_EXECUTION;
        }
    }
    if (code == STATUS_GUARD_PAGE_VIOLATION) {
        /* Recompiled code occasionally touches a page inside a fiber stack's
         * guard region (wild pointer landing in a stack reserve). Windows
         * clears PAGE_GUARD before raising this, so resuming simply retries
         * the access against the now-normal committed page. */
        static int s_guard_logged = 0;
        if (s_guard_logged < 8) {
            s_guard_logged++;
            fprintf(stderr, "[GUARD] rip=0x%llX %s fault=0x%llX g_esp=0x%08X (unguarded, resuming)\n",
                    (unsigned long long)info->ContextRecord->Rip,
                    info->ExceptionRecord->ExceptionInformation[0] ? "write" : "read",
                    (unsigned long long)info->ExceptionRecord->ExceptionInformation[1], g_esp);
            fflush(stderr);
        }
        return EXCEPTION_CONTINUE_EXECUTION;
    }
    if (code != EXCEPTION_ACCESS_VIOLATION) {
        /* Surface non-AV crashes (stack overflow, illegal instr, etc.) that would
         * otherwise terminate the process silently. */
        static int s_nonav_logged = 0;
        if (s_nonav_logged < 8) {
            s_nonav_logged++;
            fprintf(stderr, "[CRASH-NONAV] code=0x%08lX rip=0x%llX g_esp=0x%08X fault=0x%llX\n",
                    (unsigned long)code,
                    (unsigned long long)info->ContextRecord->Rip, g_esp,
                    (unsigned long long)info->ExceptionRecord->ExceptionInformation[1]);
            fflush(stderr);
        }
        return EXCEPTION_CONTINUE_SEARCH;
    }

    uintptr_t fault = info->ExceptionRecord->ExceptionInformation[1];
    int is_write = (int)info->ExceptionRecord->ExceptionInformation[0];
    uintptr_t base = (uintptr_t)g_xbox_mem_offset;

    /* Only handle faults that land in / near the Xbox mapped region's wrap
     * space (a recompiled MEM access with a bad VA). Genuine host crashes
     * fall through to the OS. We treat the whole 4 GB above base as ours
     * because wild 32-bit VAs (e.g. 0xFFFFFFFC) land there after +offset. */
    /* +64KB margin past the 4GB alias: wild pointers like 0xFFFFFFFC plus a small
     * positive offset land just beyond base+4GB and still need the skip treatment. */
    int in_region = (fault >= base && fault < base + 0x100010000ull);

    /* Log the first 60 faults, then every 1,000,000th (to reveal a spin's
     * repeated faulting access without flooding). */
    g_fault_logged++;
    if (g_fault_logged <= 60 || (g_fault_logged % 1000000ull) == 0) {
        fprintf(stderr,
            "[FAULT] #%llu %s 0x%llX (xbva 0x%08X) rip=0x%llX  eax=%08X ecx=%08X edx=%08X "
            "ebx=%08X esi=%08X edi=%08X esp=%08X\n",
            (unsigned long long)g_fault_logged,
            is_write ? "write" : "read",
            (unsigned long long)fault,
            (uint32_t)(fault - base),
            (unsigned long long)info->ContextRecord->Rip,
            g_eax, g_ecx, g_edx, g_ebx, g_esi, g_edi, g_esp);
        fflush(stderr);
    }

    /* NV2A GPU / hardware I/O address space (Xbox VA >= 0xF0000000):
     *   0xFD000000-0xFDFFFFFF  GPU MMIO registers -> NV2A register state machine
     *   0xF0000000-0xFCFFFFFF  framebuffer / push-buffer DMA / AGP -> zero pages
     * Routing MMIO register reads to the NV2A emulation (instead of skip-as-0)
     * lets CMiniport_InitHardware's GPU-ready polling complete. (burnout pattern) */
    if (in_region) {
        uint32_t fault_xbox_va = (uint32_t)(fault - base);
        /* Cached RAM mirror (Xbox VA 0x80000000-0x83FFFFFF = cached alias of the
         * 64 MB physical RAM). The D3D fence notifier lives here, so map a 64 MB
         * view of the same file mapping on demand to alias the real pages. NOTE:
         * keep this range TIGHT — mapping arbitrary out-of-range faults as RAM would
         * turn a wild/corrupted-pointer write (which must be skipped) into a
         * silently-continued infinite fault loop. */
        if (fault_xbox_va >= 0x80000000u && fault_xbox_va < 0x84000000u) {
            extern HANDLE xbox_GetMappingHandle(void);
            HANDLE h = xbox_GetMappingHandle();
            if (h) {
                uintptr_t mbase = fault & ~(uintptr_t)(0x4000000u - 1);  /* 64 MB align (host) */
                LPVOID p = MapViewOfFileEx(h, FILE_MAP_ALL_ACCESS, 0, 0,
                                           0x4000000u, (LPVOID)mbase);
                if (p) {
                    if (g_fault_logged < 60) {
                        fprintf(stderr, "  [MIRROR] RAM mirror view for xbva 0x%08X\n",
                                fault_xbox_va & ~0x3FFFFFFu);
                        fflush(stderr);
                    }
                    return EXCEPTION_CONTINUE_EXECUTION;
                }
            }
        }
        if (fault_xbox_va >= 0xF0000000u) {
            if (fault_xbox_va >= 0xFD000000u && fault_xbox_va < 0xFE000000u) {
                extern bool nv2a_hook_handle_mmio(PCONTEXT ctx, uintptr_t fault_addr,
                                                  uint32_t fault_xbox_va, int is_write);
                if (nv2a_hook_handle_mmio(info->ContextRecord, fault, fault_xbox_va, is_write))
                    return EXCEPTION_CONTINUE_EXECUTION;
                /* decode failed -> fall through to zero page */
            }
            /* MCPX APU MMIO registers: 0xFE800000-0xFE87FFFF (mirrors burnout3). The
             * recompiled DirectSound driver pokes these to init/run the audio DSP. */
            if (fault_xbox_va >= 0xFE800000u && fault_xbox_va < 0xFE880000u) {
                extern bool apu_hook_handle_mmio(PCONTEXT ctx, uintptr_t fault_addr,
                                                 uint32_t fault_xbox_va, int is_write);
                if (apu_hook_handle_mmio(info->ContextRecord, fault, fault_xbox_va, is_write))
                    return EXCEPTION_CONTINUE_EXECUTION;
            }
            /* framebuffer / DMA / other GPU memory: back with a zero page */
            uintptr_t alloc_base = fault & ~(uintptr_t)0xFFFF;
            LPVOID p = VirtualAlloc((LPVOID)alloc_base, 0x10000,
                                    MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
            if (!p) p = VirtualAlloc((LPVOID)alloc_base, 0x10000, MEM_COMMIT, PAGE_READWRITE);
            if (p) {
                memset(p, 0, 0x10000);
                if (g_fault_logged < 60) {
                    fprintf(stderr, "  [NV2A] GPU mem page 0x%08X (%s)\n",
                            fault_xbox_va & 0xFFFF0000u, is_write ? "W" : "R");
                    fflush(stderr);
                }
                return EXCEPTION_CONTINUE_EXECUTION;
            }
        }
    }

    if (in_region) {
        /* Fault RIP inside a host DLL (CRT memcpy/memset called by recompiled code
         * with a wild Xbox pointer, e.g. the lifted `rep movs` helpers): we cannot
         * decode-and-skip a system routine, so back the page with junk memory and
         * let the copy complete harmlessly (same strategy as the GPU zero-page). */
        uintptr_t rip = (uintptr_t)info->ContextRecord->Rip;
        if (rip < 0x140000000ull || rip >= 0x142000000ull) {
            uintptr_t alloc_base = fault & ~(uintptr_t)0xFFFF;
            LPVOID p = VirtualAlloc((LPVOID)alloc_base, 0x10000,
                                    MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
            if (!p) p = VirtualAlloc((LPVOID)alloc_base, 0x10000, MEM_COMMIT, PAGE_READWRITE);
            if (p) {
                if (g_fault_logged < 60) {
                    fprintf(stderr, "  [JUNK] backed wild page 0x%08X for host-DLL access (%s, rip=0x%llX)\n",
                            (uint32_t)(fault - base) & 0xFFFF0000u, is_write ? "W" : "R",
                            (unsigned long long)rip);
                    fflush(stderr);
                }
                return EXCEPTION_CONTINUE_EXECUTION;
            }
        }
        BOOL handled = is_write
            ? veh_skip_faulting_write(info->ContextRecord)
            : veh_skip_faulting_read(info->ContextRecord);
        if (handled) {
            g_fault_skips++;
            /* Safety valve: if we're skipping endlessly we're stuck in a loop. */
            if (g_fault_skips > 2000000ull) {
                fprintf(stderr, "[FAULT] skip cap reached (%llu) - aborting\n",
                        (unsigned long long)g_fault_skips);
                return EXCEPTION_CONTINUE_SEARCH;
            }
            return EXCEPTION_CONTINUE_EXECUTION;
        }
        if (g_fault_logged < 60) {
            fprintf(stderr, "[FAULT] could not decode faulting instr at rip=0x%llX\n",
                    (unsigned long long)info->ContextRecord->Rip);
            fflush(stderr);
        }
    } else {
        /* Native (non-Xbox-region) access violation — a real host-side crash, e.g.
         * in the pgraph/D3D11 path. Log it so we can locate the culprit. */
        fprintf(stderr, "[NATIVE-CRASH] %s 0x%llX rip=0x%llX\n",
                is_write ? "write" : "read",
                (unsigned long long)fault,
                (unsigned long long)info->ContextRecord->Rip);
        fflush(stderr);
    }
    return EXCEPTION_CONTINUE_SEARCH;
}

/* ── XBE loading ────────────────────────────────────────────────── */

static BOOL load_xbe(const char *path, void **out_data, size_t *out_size)
{
    FILE *f = fopen(path, "rb");
    if (!f) { fprintf(stderr, "Cannot open XBE: %s\n", path); return FALSE; }
    fseek(f, 0, SEEK_END); long size = ftell(f); fseek(f, 0, SEEK_SET);
    if (size <= 0) { fclose(f); return FALSE; }
    void *data = malloc((size_t)size);
    if (!data) { fclose(f); return FALSE; }
    if (fread(data, 1, (size_t)size, f) != (size_t)size) { free(data); fclose(f); return FALSE; }
    fclose(f);
    *out_data = data; *out_size = (size_t)size;
    return TRUE;
}

static HANDLE g_diag_main_thread;
/* Sampling profiler (task #1): after 45s (movie running), sample the main
 * thread RIP every 2ms for 90s, aggregate into 256-byte buckets, and dump
 * the top buckets — symbolize against bin/doa3.map to find the decode
 * hotspots. Enabled with DOA3_PROFILE=1. */
static DWORD WINAPI diag_sampler(LPVOID p)
{
    (void)p;
    if (!getenv("DOA3_PROFILE")) return 0;
    Sleep(45000);
    enum { NBUK = 8192 };
    static uintptr_t keys[NBUK]; static unsigned cnt[NBUK];
    unsigned total = 0;
    ULONGLONG end = GetTickCount64() + 90000;
    while (GetTickCount64() < end) {
        CONTEXT c; c.ContextFlags = CONTEXT_CONTROL;
        SuspendThread(g_diag_main_thread);
        GetThreadContext(g_diag_main_thread, &c);
        ResumeThread(g_diag_main_thread);
        uintptr_t k = c.Rip >> 8;   /* 256-byte buckets */
        unsigned h = (unsigned)(k * 2654435761u) & (NBUK - 1);
        for (int probe = 0; probe < 64; probe++) {
            unsigned i = (h + probe) & (NBUK - 1);
            if (cnt[i] == 0) { keys[i] = k; cnt[i] = 1; break; }
            if (keys[i] == k) { cnt[i]++; break; }
        }
        total++;
        Sleep(2);
    }
    fprintf(stderr, "[PROF] %u samples; top buckets:%c", total, 10);
    for (int rank = 0; rank < 40; rank++) {
        unsigned best = 0, bi = 0;
        for (unsigned i = 0; i < NBUK; i++)
            if (cnt[i] > best) { best = cnt[i]; bi = i; }
        if (!best) break;
        fprintf(stderr, "[PROF] %6.2f%% 0x%llX00%c",
                100.0 * best / total, (unsigned long long)keys[bi], 10);
        cnt[bi] = 0;
    }
    return 0;
}

static void doa3_atexit(void)
{
    fprintf(stderr, "[EXIT] process exiting via exit()/CRT (g_esp=0x%08X)\n", g_esp);
    fflush(stderr);
}

static LONG WINAPI doa3_unhandled(PEXCEPTION_POINTERS info)
{
    fprintf(stderr, "[EXIT] UNHANDLED exception 0x%08lX rip=0x%llX g_esp=0x%08X",
            (unsigned long)info->ExceptionRecord->ExceptionCode,
            (unsigned long long)info->ContextRecord->Rip, g_esp);
    if (info->ExceptionRecord->ExceptionCode == EXCEPTION_ACCESS_VIOLATION)
        fprintf(stderr, " %s 0x%llX",
                info->ExceptionRecord->ExceptionInformation[0] ? "write" : "read",
                (unsigned long long)info->ExceptionRecord->ExceptionInformation[1]);
    fprintf(stderr, "\n[EXIT] our frames:");
    {
        uintptr_t *sp = (uintptr_t *)info->ContextRecord->Rsp;
        int shown = 0;
        for (int k = 0; k < 2000 && shown < 16; k++) {
            if (IsBadReadPtr(&sp[k], 8)) break;
            uintptr_t v = sp[k];
            if (v >= 0x140000000ull && v < 0x142000000ull) {
                fprintf(stderr, " 0x%llX", (unsigned long long)v);
                shown++;
            }
        }
    }
    fprintf(stderr, "\n");
    fflush(stderr);
    return EXCEPTION_CONTINUE_SEARCH;
}

int main(int argc, char **argv)
{
    void *xbe_data = NULL; size_t xbe_size = 0;
    (void)argc; (void)argv;
    /* Find the project root so relative asset paths work from any build
     * configuration directory. */
    {
        char exedir[MAX_PATH];
        DWORD n = GetModuleFileNameA(NULL, exedir, MAX_PATH);
        if (n > 0 && n < MAX_PATH) {
            char *slash = strrchr(exedir, 0x5c);
            if (slash) {
                char asset[MAX_PATH];
                *slash = 0;
                for (int depth = 0; depth < 4; depth++) {
                    snprintf(asset, sizeof(asset),
                             "%s\\..\\doa3gamefiles\\default.xbe", exedir);
                    if (GetFileAttributesA(asset) != INVALID_FILE_ATTRIBUTES) {
                        SetCurrentDirectoryA(exedir);
                        break;
                    }
                    slash = strrchr(exedir, 0x5c);
                    if (!slash)
                        break;
                    *slash = 0;
                }
            }
        }
    }
    setvbuf(stdout, NULL, _IONBF, 0);
#ifdef NDEBUG
    /* Release builds have no console; keep diagnostics beside the project. */
    freopen("doa3_log.txt", "w", stderr);
#endif
    setvbuf(stderr, NULL, _IONBF, 0);

    atexit(doa3_atexit);
    SetUnhandledExceptionFilter(doa3_unhandled);

    printf("=== Dead or Alive 3 - Static Recompilation (boot bring-up) ===\n");
    AddVectoredExceptionHandler(1, crash_veh);
    DuplicateHandle(GetCurrentProcess(), GetCurrentThread(), GetCurrentProcess(),
                    &g_diag_main_thread, 0, FALSE, DUPLICATE_SAME_ACCESS);
    CreateThread(NULL, 0, diag_sampler, NULL, 0, NULL);

    if (!load_xbe(DOA3_XBE_PATH, &xbe_data, &xbe_size)) {
        {
            char cwd[MAX_PATH] = {0};
            GetCurrentDirectoryA(MAX_PATH, cwd);
            char msg[512];
            snprintf(msg, sizeof(msg),
                     "Could not load %s\n(working directory: %s)\n\n"
                     "Expected the game files in a doa3gamefiles folder next to the doa3 project folder.",
                     DOA3_XBE_PATH, cwd);
            fprintf(stderr, "FATAL: %s\n", msg);
            MessageBoxA(NULL, msg, "DOA3 recomp - startup error", 0x10);
            return 1;
        }
    }
    printf("XBE loaded: %zu bytes\n", xbe_size);

    if (!xbox_MemoryLayoutInit(xbe_data, xbe_size)) {
        fprintf(stderr, "FATAL: xbox_MemoryLayoutInit failed\n"); return 1;
    }
    printf("Xbox memory mapped. Offset: 0x%llX\n",
           (unsigned long long)(uintptr_t)xbox_GetMemoryOffset());

    xbox_kernel_init();
    xbox_path_init(DOA3_GAME_DIR, NULL);
    xbox_kernel_bridge_init();

    /* Pre-initialize CRT bootstrap locks (replicates _mtinitlocks @ 0x00191ACA).
     *
     * DOA3's CRT lock table is at VA 0x3C0FB8 (36 entries, 8 bytes each:
     * [CRITICAL_SECTION* ptr, ULONG flag]). Bootstrap locks have flag==1 and
     * must have a non-NULL ptr before any __lock() (sub_00191B96) runs. We
     * bypass the CRT entry point that would call _mtinitlocks, so without this
     * __lock(n) -> _mtinitlocknum(n) -> __lock(m) recurses forever (the Enter/
     * Leave-CriticalSection storm) and the heap init (which takes a lock) fails,
     * leaving the heap descriptor (0xBF5000) NULL. CS ops are no-ops here, so
     * the ptr just needs to be non-NULL; we use the CRT's own CS buffer at
     * 0xBF4CF0 (stride 0x1C), exactly as the original _mtinitlocks does. */
    {
        uint32_t cs_addr = 0xBF4CF0;   /* DOA3 CS buffer array (BSS) */
        int locks = 0;
        for (int i = 0; i < 36; i++) {
            uint32_t ptr_va  = 0x3C0FB8 + i * 8;
            uint32_t flag_va = ptr_va + 4;
            if (MEM32(flag_va) == 1) {
                MEM32(ptr_va) = cs_addr;
                cs_addr += 0x1C;
                locks++;
            }
        }
        fprintf(stderr, "  CRT locks: %d bootstrap locks pre-initialized\n", locks);
    }

    /* Initialize the NV2A GPU register emulation (allocates VRAM/RAMIN, sets up
     * the register state machine). The VEH routes 0xFD000000 MMIO faults to it
     * so GPU hardware init (CMiniport_InitHardware) can complete. */
    {
        extern void nv2a_hook_init(ptrdiff_t xbox_mem_offset);
        nv2a_hook_init(g_xbox_mem_offset);
    }

    /* D3D8 push-buffer RAM backing (mirrors burnout3 main.c step 2d/2e).
     * DOA3's retail-D3D8 driver points its push-buffer write cursor (device[0])
     * at the GPU command aperture (0xFDFExxxx), which isn't CPU-mapped here, so
     * push-buffer writes would fault. Allocate a real RAM buffer; the PB-trio
     * overrides in recomp_manual.c (CDevice_KickOff/MakeSpace/XMETAL_StartPush)
     * keep the device write cursor inside it — exactly as burnout's
     * sub_003518E0/sub_00351770 overrides keep device[0] in its cmd_buf. */
    {
        /* High heap: the PB is CPU-only in this port (game writes it, the
         * pgraph translator parses it) — no GPU physical addressing touches
         * it, and the low 45MB heap is needed for the game's own contiguous
         * allocations (3x4.8MB screen workspaces + 14MB frame buffers). */
        extern uint32_t xbox_HeapAllocHigh(uint32_t size, uint32_t alignment);
        extern uint32_t g_doa3_pb_base, g_doa3_pb_end;
        uint32_t sz = 4u * 1024 * 1024;
        g_doa3_pb_base = xbox_HeapAllocHigh(sz, 4096);
        g_doa3_pb_end  = g_doa3_pb_base + sz;
        fprintf(stderr, "  D3D8 push buffer: %u KB at Xbox VA 0x%08X-0x%08X\n",
                sz / 1024, g_doa3_pb_base, g_doa3_pb_end);
        fflush(stderr);
    }

    /* Graphics: window + D3D8->D3D11 device (the NV2A translator renders here). */
    doa3_init_graphics();

    /* Audio: MCPX APU emulation + host DirectSound (mirrors burnout3 main.c steps
     * 5 + 10). DOA3's recompiled DirectSound init (DirectSoundCreate ->
     * DownloadEffectsImage of dsstdfx.bin) talks to the APU via MMIO
     * (0xFE800000-0xFE87FFFF, routed in the VEH) and to the host DirectSound
     * backend; without these the game's audio init fails and its boot state
     * machine never advances to load assets. */
    {
        typedef struct MCPXAPUState MCPXAPUState;
        extern MCPXAPUState *mcpx_apu_init_standalone(uint8_t *ram_ptr);
        extern MCPXAPUState *g_apu_state;
        /* APU reads voice data from physical RAM, mapped at g_xbox_mem_offset+0. */
        uint8_t *phys_ram = (uint8_t *)(uintptr_t)g_xbox_mem_offset;
        g_apu_state = mcpx_apu_init_standalone(phys_ram);
        fprintf(stderr, "  APU: %s\n", g_apu_state ? "MCPX APU emulation initialized"
                                                    : "APU init FAILED");
        fflush(stderr);
    }
    {
        extern HRESULT xbox_DirectSoundCreate(void *pGuid, IDirectSound8 **ppDS, void *pUnkOuter);
        HRESULT hr = xbox_DirectSoundCreate(NULL, &g_dsound, NULL);
        fprintf(stderr, "  DirectSound: %s (hr=0x%08lX)\n",
                SUCCEEDED(hr) ? "host DirectSound created" : "FAILED", (unsigned long)hr);
        fflush(stderr);
    }

    /* Convert this (main) OS thread into the primary cooperative fiber before the
     * game runs, so DOA3's CRI worker threads can be spawned as fibers and run
     * cooperatively (they pump the file-load queue). See src/kernel/xbox_fiber.*. */
    xbox_fiber_init();

    printf("Init complete. Entry=0x%08X  ESP=0x%08X\n", DOA3_ENTRY_POINT, g_esp);
    printf("\n--- Calling xbe_entry_point() ---\n");
    fflush(stdout);

    xbe_entry_point();

    fprintf(stderr, "\nxbe_entry_point returned (g_eax=0x%08X), fault-skips=%llu\n",
            g_eax, (unsigned long long)g_fault_skips);

    xbox_kernel_shutdown();
    xbox_MemoryLayoutShutdown();
    free(xbe_data);
    return 0;
}
