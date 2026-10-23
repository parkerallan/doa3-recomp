/* recomp_manual_jpn.c - hand-written overrides for the Japanese release, the
 * counterpart of recomp_manual.c. */
/* Dead or Alive 3 - Manually implemented / overridden recompiled functions
 * Functions the automatic recompiler can't handle correctly (mid-function... */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stddef.h>
#include <stdio.h>
#include <intrin.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include "online/netplay_session.h"
#include "online/netplay.h"
#include "kernel/perf.h"

   /* CaptureStackBackTrace (SBH alloc-loop diagnostics) */

extern uint32_t xbox_HeapAlloc(uint32_t size, uint32_t alignment);
extern void xbox_fiber_yield(void);
extern int  xbox_fiber_active(void);
extern void xbox_fiber_wake(uint32_t event_va);

/* Pulse the D3D vblank event (USA: the fixed 0x001C2CF0). */
static void jpn_vblank_pulse(void)
{
    uint32_t dev = MEM32(0x001EDE80u);
    if (dev && dev < 0x04000000u) {
        MEM32(dev + 0x2430 + 4) = 1;            /* KEVENT.SignalState = 1 */
        xbox_fiber_wake(dev + 0x2430);
    }
}

/* sub_0019A330 — CRI vsprintf logger; the main thread's CRI poll
 * (sub_00190B00) reaches it every failed iteration. */
void sub_0019A330(void)
{
    extern void sub_0019A330_gen(void);
    /* VBLANK emulation (cxbx-verified): */
    jpn_vblank_pulse();
    {   /* DIAG: are the ADXM server callbacks registered? (one-shot + on change) */
        static uint32_t s_cb0 = 0xDEAD, s_cb1 = 0xDEAD;
        uint32_t cb0 = MEM32(0x0040CDF0), cb1 = MEM32(0x0040CDF8);
        if (cb0 != s_cb0 || cb1 != s_cb1) {
            s_cb0 = cb0; s_cb1 = cb1;
        }
    }
    if (xbox_fiber_active())
        xbox_fiber_yield();
    sub_0019A330_gen();
    {   /* DIAG: surface the CRI's formatted log text (buffer 0x00C75500), deduped. */
        extern ptrdiff_t g_xbox_mem_offset;
        const char *msg = (const char *)((uintptr_t)0x00C75500 + g_xbox_mem_offset);
        static char s_last[256];
        if (msg[0] && strncmp(msg, s_last, sizeof(s_last) - 1) != 0) {
            strncpy(s_last, msg, sizeof(s_last) - 1); s_last[sizeof(s_last) - 1] = 0;
            static int dumped = 0;
            if (!dumped && (strstr(msg, "device") || strstr(msg, "cvFs"))) {
                dumped = 1;
                char dd[16]; int i; for (i = 0; i < 15; i++) { dd[i] = (char)MEM8(0x0040C8A0 + i); if (!dd[i]) break; } dd[15] = 0;
                for (int s = 0; s < 4; s++) {
                    uint32_t ent = 0x0040CB20 + s * 0x10;
                    char nm[16]; for (i = 0; i < 15; i++) { nm[i] = (char)MEM8(ent + 4 + i); if (!nm[i]) break; } nm[15] = 0;
                }
            }
        }
    }
}

/* ── XAPI fiber API → host fibers ─────────────────────────────────────────
 * DOA3 runs its game tasks (boot screens, intro, menus —... */
extern int  xbox_fiber_create_dormant(uint32_t routine_va, uint32_t param,
                                      uint32_t stack_size);
extern void xbox_fiber_destroy(int idx);
extern void xbox_fiber_switch_direct(int idx);
/* SwitchToFiber(handle) — stdcall ret 4. Completes the call frame FIRST, then
 * transfers; when something switches back here, we return normally. */
#define XFIBER_TAG  0xF1BE0000u

/* CreateFiber(stack_size, start_routine, param) â€” stdcall ret 12. */
void sub_0018C934(void)
{
    extern uint32_t g_eax, g_esp;
    uint32_t stack_sz = MEM32(g_esp + 4);   /* arg0: the size the game asked for */
    uint32_t routine = MEM32(g_esp + 8);
    uint32_t param   = MEM32(g_esp + 0xC);
    int idx = xbox_fiber_create_dormant(routine, param, stack_sz);
    g_eax = (idx > 0) ? (XFIBER_TAG | (uint32_t)idx) : 0;
    g_esp += 16;
}

/* DeleteFiber(handle) â€” stdcall ret 4. */
void sub_0018C9C0(void)
{
    extern uint32_t g_esp;
    uint32_t h = MEM32(g_esp + 4);
    if ((h & 0xFFFF0000u) == XFIBER_TAG)
        xbox_fiber_destroy((int)(h & 0xFFFF));
    g_esp += 8;
}

void sub_0018C9D3(void)
{
    extern uint32_t g_esp;
    uint32_t h = MEM32(g_esp + 4);
    g_esp += 8;                                  /* finish the call (stdcall ret 4) */
    if ((h & 0xFFFF0000u) == XFIBER_TAG) {
        xbox_fiber_switch_direct((int)(h & 0xFFFF));
    } else {
        /* Foreign handle = the "main fiber" (dispatcher). We are a task fiber
         * yielding back: our creator/switcher resumes via the trampoline path. */
        extern void xbox_fiber_yield_back(void);
        xbox_fiber_yield_back();
    }
}

/* Boot-progress markers: the four init calls after sub_000A5DC0 in sub_000A6400.
 * One of them loops forever (frame-pumping wait); the markers show which. */
#define BOOT_MARK(name) \
    void name(void) { \
        extern void name##_gen(void); \
        static int n = 0; \
        int log = (n < 4); n++; \
        if (log) {   } \
        name##_gen(); \
        if (log) {   } \
    }
BOOT_MARK(sub_000A4D40)
BOOT_MARK(sub_001C63EB)
#undef BOOT_MARK

/* sub_001F2A27 — DSOUND stream play/start (IDirectSoundStream-style; */
void sub_001F2A27(void)
{
    extern void sub_001F2A27_gen(void);
    extern uint32_t g_eax, g_esp;
    static int n = 0;
    uint32_t self = MEM32(g_esp + 4), a2 = MEM32(g_esp + 8), a3 = MEM32(g_esp + 12);
    /* Un-stubbed 2026-09-12: the stub dated from before the DSOUND per-frame
     * service esp leaks (sub_001F13C5 / sub_001C883B) were enforced; */
    /* STUB again (2026-09-12): the game hands this call a NULL stream because
     * the host DirectSound shim creates no stream objects yet; */
    g_eax = 0; g_esp += 16;
    if (n < 8) {  n++; }
}

/* sub_001907A0 — ADXF op GetStat (used by the game's own load-wait spins,
 * e.g. sub_00084C18). */
void sub_001907A0(void)
{
    extern void sub_001907A0_gen(void);
    jpn_vblank_pulse();
    {   /* load-wait spin: keep the window serviced (no presents here) */
        extern void doa3_pump_messages(void);
        static unsigned s_mp3 = 0;
        if ((++s_mp3 & 63) == 0) doa3_pump_messages();
    }
    if (xbox_fiber_active())
        xbox_fiber_yield();
    sub_001907A0_gen();
}

/* sub_00190B00 — ADXF partition mount/install status poll (USA sub_00169150). */
void sub_00190B00(void)
{
    extern void sub_00190B00_gen(void);
    sub_00190B00_gen();
    if (eax != 3) {
        jpn_vblank_pulse();
        {   /* no presents happen during this spin — service the window */
            extern void doa3_pump_messages(void);
            static unsigned s_mp2 = 0;
            if ((++s_mp2 & 63) == 0) doa3_pump_messages();
        }
        {   /* Mount-stall net (USA item 100): */
            static unsigned s_nudge = 0;
            if (++s_nudge >= 50000 && (s_nudge & 8191) == 0 &&
                MEM32(0x00C7D140) == 0xFFFFFFFFu &&
                MEM32(0x0040C6F8) == 0 && MEM32(0x00C85160) == 0) {
                extern int xbox_fiber_wake_count(uint32_t event_va);
                xbox_fiber_wake_count(0xBEEF0001u);
            }
        }
        if (xbox_fiber_active())
            xbox_fiber_yield();
    }
}

/* sub_0018AB51 — XAPI ReadFileEx(hFile, buf, len, overlapped, completion).
 * DIAG: log args, the NtReadFile thunk value, and the result. */
void sub_0018AB51(void)
{
    extern void sub_0018AB51_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t hf = MEM32(g_esp + 4), buf = MEM32(g_esp + 8), len = MEM32(g_esp + 0xC);
    uint32_t ov = MEM32(g_esp + 0x10);
    uint32_t thunk = MEM32(0x00217A0C);
    sub_0018AB51_gen();
    static int n = 0;
    if (n < 10) {   n++; }
}

/* sub_001938E0 — cvFs stream stepper (issues device seek/read for an active stream).
 * DIAG: dump the stream + file-object fields around the call. */
void sub_001938E0(void)
{
    extern void sub_001938E0_gen(void);
    extern uint32_t g_esp;
    uint32_t stm = MEM32(g_esp + 4);
    static int n = 0;
    int log = (n < 10);
    if (log && stm) {
        n++;
        uint32_t fo = MEM32(stm + 4);
    }
    sub_001938E0_gen();
}

/* sub_00198C60 — wxCi real size query (stats the file by NAME via sub_0018B090).
 * DIAG: log the name + result. */
void sub_00198C60(void)
{
    extern void sub_00198C60_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = name ? (char)MEM8(name + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_00198C60_gen();
    static int n = 0;
    if (n < 12) {   n++; }
}

/* sub_0018B090 — XAPI GetFileAttributesExA-like stat. DIAG: log name + result. */
void sub_0018B090(void)
{
    extern void sub_0018B090_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = name ? (char)MEM8(name + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_0018B090_gen();
    static int n = 0;
    if (n < 12) {   n++; }
}

/* sub_0018A4F0 — XAPI CreateFileA(name, access, share, sa, disposition, flags).
 * DIAG: log args + returned handle to see where the CRI's file opens die. */
void sub_0018A4F0(void)
{
    extern void sub_0018A4F0_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t fname = MEM32(g_esp + 4);
    uint32_t access = MEM32(g_esp + 8);
    uint32_t disp = MEM32(g_esp + 0x14);
    uint32_t flags = MEM32(g_esp + 0x18);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = fname ? (char)MEM8(fname + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_0018A4F0_gen();
    static int n = 0;
    if (n < 20) {   n++; }
}

/* sub_00194750 — cvFs device resolver. The CRI registers named devices (MFS,
 * WX) with WX as the default; */
void sub_00194750(void)
{
    extern void sub_00194750_gen(void);
    extern uint32_t g_eax, g_ebx;
    uint32_t devbuf = g_ebx;
    uint8_t c0 = devbuf ? (uint8_t)MEM8(devbuf) : 0;
    uint8_t c1 = devbuf ? (uint8_t)MEM8(devbuf + 1) : 0;
    char dn[16]; int di; for (di = 0; di < 15; di++) { dn[di] = devbuf ? (char)MEM8(devbuf + di) : 0; if (!dn[di]) break; } dn[15] = 0;
    sub_00194750_gen();
    { static int dn_n = 0; if (dn_n < 12) {   dn_n++; } }
    if (g_eax == 0 && c0 && !c1) {        /* single-char drive-letter device not found */
        MEM8(devbuf) = 0;                  /* clear prefix → resolver uses the default device */
        g_ebx = devbuf;
        sub_00194750_gen();
        static int n = 0;
        if (n < 8) {   n++; }
    }
}

/* sub_001947F0 — cvFsOpen wrapper. DIAG: log the filename it's asked to open, to find
 * where ADXF_LoaddPartitionNw's empty AFS filename comes from. */
void sub_001947F0(void)
{
    extern void sub_001947F0_gen(void);
    extern uint32_t g_esp;
    uint32_t fname = MEM32(g_esp + 4);
    char nm[48]; int i; for (i = 0; i < 47; i++) { nm[i] = fname ? (char)MEM8(fname + i) : 0; if (!nm[i]) break; } nm[47] = 0;
    static int n = 0;
    extern volatile int g_doa3_post_movie;
    if (n < 16 || g_doa3_post_movie) {   n++; }
    sub_001947F0_gen();
}

/* sub_001B8F50 — CRT strncmp(s1, s2, n). */
void sub_001B8F50(void)
{
    extern uint32_t g_eax, g_esp;
    uint32_t s1 = MEM32(g_esp + 4);
    uint32_t s2 = MEM32(g_esp + 8);
    uint32_t n  = MEM32(g_esp + 0xC);
    int r = 0;
    for (uint32_t i = 0; i < n; i++) {
        unsigned char c1 = (unsigned char)MEM8(s1 + i);
        unsigned char c2 = (unsigned char)MEM8(s2 + i);
        if (c1 != c2) { r = (c1 < c2) ? -1 : 1; break; }
        if (c1 == 0) break;          /* both reached NUL, equal */
    }
    g_eax = (uint32_t)r;
    g_esp += 4;                      /* mimic the original `ret` popping the dummy slot */
}

/* sub_00193F40 — CRI cvFs device-find-by-name. DIAG wrapper: log the name arg, its
 * content, and the result, to see why cvFsAddDev("WX") thinks the device exists. */
void sub_00193F40(void)
{
    extern void sub_00193F40_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[20]; int i; for (i = 0; i < 19; i++) { nm[i] = (char)MEM8(name + i); if (!nm[i]) break; } nm[19] = 0;
    sub_00193F40_gen();
    static int n = 0;
    if (n < 10) {   n++; }
}
/* sub_000A5C60 — DirectSound effects-image download (USA sub_0009F640). The
 * boot asset+audio init sub_000A5DC0 calls, in order: */
void sub_000A5C60(void) { eax = 0; esp += 4; }

/* sub_0018FDF5 — the CRT's _initterm(__xi_a, __xi_z), run by the main
 * thread's startup (0x0018CB1A) before main. */
void sub_0018FDF5(void) { esp += 4; }

/* sub_001926B0 — CRI watchdog worker thread (cooperative-fiber override; USA
 * sub_0016A530, identical code with the CRI globals moved: */
void sub_001926B0(void)
{
    extern void xbox_fiber_dump(void);
    unsigned long long it = 0;
    for (;;) {
        if (MEM32(0x0040C718) != 0) break;
        MEM32(0x0040C700) = MEM32(0x0040C700) + 1;
        if (++it == 3000000ULL) {   /* DIAG: once the watchdog is clearly the only runnable fiber, dump the deadlock */
            fprintf(stderr, "[CRI-WD] watchdog-only spin; 0x40C700=%u 0x40C704=%u 0x40C708=%u 0x40C730=%u\n",
                    MEM32(0x0040C700), MEM32(0x0040C704), MEM32(0x0040C708), MEM32(0x0040C730));
            xbox_fiber_dump();
        }
        xbox_fiber_yield();
    }
    MEM32(0x0040C71C) = 1;
    esp += 4; /* clean ret 0 */
}

/* ── CRT memcpy/memmove native overrides (recomp bug #6 casualties)
 * ────────── The XBE has two identical MSVC CRT memcpy implementations (0x001B73D0... */
static void doa3_native_memmove(void)
{
    extern ptrdiff_t g_xbox_mem_offset;
    uint32_t dst = MEM32(esp + 4), src = MEM32(esp + 8), n = MEM32(esp + 0xC);
    if (n)
        memmove((void *)((uintptr_t)dst + g_xbox_mem_offset),
                (void *)((uintptr_t)src + g_xbox_mem_offset), n);
    eax = dst;
    esp += 4; /* pop dummy return; caller cleans args (cdecl) */
}
void sub_001B73D0(void) { doa3_native_memmove(); }
void sub_001B7CB0(void) { doa3_native_memmove(); }

/* DIAG: esp-load chokepoints (longjmp/SEH unwind sites in the gen — the only
 * places that assign esp from memory). site: */
void doa3_esp_load_log(int site, uint32_t esp_now, uint32_t esp_new)
{
    static int s_n = 0;
    if (s_n < 20) {
        s_n++;
    }
}

/* DIAG: the game-task yield (sub_001C65D8) — backtrace every 600th call to
 * pinpoint WHICH sequencer loop each task spins in. */
void sub_001C65D8_gen(void);
void sub_001C65D8(void)
{
    static int s_n = 0;
    extern int xbox_fiber_current(void);
    extern uint32_t g_task_yields[16];
    {   int fi = xbox_fiber_current();
        if (fi >= 0 && fi < 16) g_task_yields[fi]++; }
    s_n++;
    if (xbox_fiber_current() == 5 && (g_task_yields[5] % 600) == 0) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
    }
    sub_001C65D8_gen();
}

/* DIAG: per-fiber yield counters, dumped with the fiber dump. */
uint32_t g_task_yields[16];

/* ── XPP (Xbox Peripheral Port) input overrides — host-backed pad 0 ─────────
 * DOA3's boot screens hold forever on the controller-present check (cxbx... */
/* Guest-memory peek for the overlay Debug tab. The overlay is C++ and has no
 * MEM32; these keep the address arithmetic on this side. */
uint32_t doa3_dbg_read32(uint32_t va) { return MEM32(va); }
uint32_t doa3_dbg_read8(uint32_t va)  { return MEM8(va); }

static uint32_t s_xpp_prev_mask;   /* XGetDeviceChanges baseline (real XAPI PreviousConnected) */
void sub_0021157D(void)   /* XGetDevices(type) -> connected mask, stdcall ret 4 */
{
    static int s_n = 0;
    if (s_n < 4) { s_n++;   }
    /* Report the controllers the host actually has. This used to hardcode a
     * single connected pad, because the boot flow needed one. */
    {
        extern DWORD xbox_InputHostMask(void);
        uint32_t mask = netplay_filter_pad_mask(xbox_InputHostMask());
        /* Real XAPI semantics (cxbx Xapi.cpp, XGetDevices): */
        s_xpp_prev_mask = mask;
        if (s_n <= 4) {   }
        eax = mask;
    }
    esp += 8;
}
void sub_0021159F(void)   /* XGetDeviceChanges(type, &ins, &rem), stdcall ret 12 */
{
    /* Real XAPI semantics (cxbx Xapi.cpp, XGetDeviceChanges): */
    extern DWORD xbox_InputHostMask(void);
    uint32_t p_ins = MEM32(esp + 8), p_rem = MEM32(esp + 12);
    /* A netplay session fixes the topology at ports 0 and 1 on both
     * machines, whatever pads they have (netplay_session.c). */
    uint32_t cur = netplay_filter_pad_mask(xbox_InputHostMask());
    uint32_t ins = cur & ~s_xpp_prev_mask;
    uint32_t rem = s_xpp_prev_mask & ~cur;
    {   /* A forced port the game has not opened yet (no handle at pad+0x78)
     * is reported as an insertion whatever the baseline says: */
        uint32_t forced = netplay_forced_pads(), p;
        for (p = 0; p < 4; p++)
            if ((forced & (1u << p)) && MEM32(0x0073C6C8u + 0x80u * p + 0x78u) == 0)
                ins |= 1u << p;
    }
    s_xpp_prev_mask = cur;
    if (p_ins) MEM32(p_ins) = ins;
    if (p_rem) MEM32(p_rem) = rem;
    if (ins | rem) {
    }
    eax = (ins | rem) ? 1u : 0u;
    esp += 16;
}
/* CRT rand() (sub_001B7C48; seed at [[0x1C] + 0x14]). Netplay sessions
 * account for every call (netplay_note_rand). */
void sub_001B7C48_gen(void);
/* Worker fibers' private rand() state, one stream per fiber, reseeded from
 * the session seed at session start and every screen change. */
static uint32_t s_wseed[64];
void doa3_worker_rand_seed(uint32_t seed)
{
    int i;
    for (i = 0; i < 64; i++) s_wseed[i] = (seed ^ (uint32_t)(i * 0x9E3779B1u)) | 1u;
}
void sub_001B7C48(void)
{
    netplay_note_rand();
    /* Online session: worker fibers (audio/file) call rand() a host-timing
     * dependent number of times; */
    extern int xbox_fiber_active(void), xbox_fiber_is_primary(void), xbox_fiber_is_coroutine(void);
    if (netplay_active() && xbox_fiber_active() && !xbox_fiber_is_primary() && !xbox_fiber_is_coroutine()) {
        extern int xbox_fiber_current(void);
        int f = xbox_fiber_current();
        uint32_t *w = &s_wseed[(f >= 0 && f < 64) ? f : 63];
        if (!*w) *w = 0x12345u | (uint32_t)f;
        *w = *w * 214013u + 2531011u;
        eax = (*w >> 16) & 0x7FFFu;
        return;
    }
    sub_001B7C48_gen();
}
void sub_00211898_xppgen(void);
void sub_00211898(void)   /* XInputClose(handle), stdcall ret 4 */
{
    /* Reached on a removal (sub_000A4DD0 closes the handle it opened). The
     * handles are fake and there is no USB device behind them. */
    fprintf(stderr, "[XPP] XInputClose(0x%08X)\n", MEM32(esp + 4));
    eax = 0;
    esp += 8;
}
void sub_00211823(void)   /* XInputOpen(type, port, slot, attrs) -> handle, ret 16 */
{
    uint32_t port = MEM32(esp + 8);
    eax = 0x0AD00001u + port;   /* fake but consistent nonzero handle */
    esp += 20;
}
void sub_002118A4(void)   /* XInputGetCapabilities(handle, caps->pad), ret 8 */
{
    /* arg2 is the PAD STRUCT base; */
    uint32_t caps = MEM32(esp + 8);
    if (caps) {
        for (int i = 0; i < 0x18; i += 4) MEM32(caps + i) = 0;
        MEM8(caps + 0x18) = 0;
        MEM8(caps) = 1;   /* XINPUT_DEVSUBTYPE_GC_GAMEPAD */
    }
    eax = 0;
    esp += 12;
}
void sub_00211A96(void)   /* XInputPoll(handle, out) — complete instantly, ret 8 */
{
    /* The real XAPI kicks an async USB read and stores ERROR_IO_PENDING
     * (0x3E5) in the pad's state dword; */
    for (int i = 0; i < 4; i++) {
        uint32_t st = 0x0073C6F7 + 0x80u * i;
        if (MEM32(st) == 0x3E5) MEM32(st) = 0;
    }
    eax = 0;
    esp += 12;
}
void sub_00211B07(void)   /* XInputGetState(handle, state) -> 0, ret 8 */
{
    { extern unsigned g_in_getstate; g_in_getstate++; }
    uint32_t st = MEM32(esp + 8);
    static uint32_t s_packet = 0x1000;   /* never collide with the 0x3E5
                                          * IO_PENDING marker */
    s_packet++;
    if (st) {
        uint16_t buttons = 0;
        uint8_t a = 0, b = 0;
        uint8_t an[8] = {0};          /* X, Y, Black, White, LT, RT at [2..7] */
        int16_t lx = 0, ly = 0, rx = 0, ry = 0;
        /* Which guest port is this? The state pointer is pad+0x2F of the pad
         * struct (base 0x0073C6C8, stride 0x80). */
        uint32_t port = 0;
        {
            uint32_t pi;
            for (pi = 0; pi < 4; pi++)
                if (st == 0x0073C6F7u + 0x80u * pi || st == 0x0073C6E1u + 0x80u * pi) port = pi;
        }
        /* host pad for this port (mapping; keyboard only overlays port 0) */
        {
            extern DWORD xbox_InputGetState(DWORD, void *);
            uint8_t raw[32] = {0};
            if (xbox_InputGetState(port, raw) == 0) {
                buttons = *(uint16_t *)(raw + 4);
                memcpy(an, raw + 6, 8);
                a = an[0]; b = an[1];
                lx = *(int16_t *)(raw + 14); ly = *(int16_t *)(raw + 16);
                rx = *(int16_t *)(raw + 18); ry = *(int16_t *)(raw + 20);
            }
        }
        /* Keyboard input comes ONLY through the Esc-menu mapping now; */
        {   /* DIAGNOSTIC ONLY (DOA3_FAKESTART=1), never on by default. The
         * post-movie screen advances only on a real button press: */
            extern volatile int g_doa3_post_movie;
            static int s_fake = -1;
            static unsigned s_n = 0;
            if (s_fake < 0) {
                const char *e = getenv("DOA3_FAKESTART");
                s_fake = (e && *e && *e != '0') ? 1 : 0;
            }
            if (s_fake && g_doa3_post_movie) {
                s_n++;
                /* ONE press, then released for good. */
                if (s_n >= 300 && s_n < 340) {
                    buttons |= 0x0010;   /* START */
                    /* The post-movie screen gate at 0x000D5208 wants bit 0x20
                     * or 0x200 of the pad word at 0x0073C8D0 + pad*0x2C... */
                    /* BACK omitted: holding it pins the screen in state 0 */
                    a = 255;             /* A */
                }
                if (s_n == 300 || s_n == 340)
                    fprintf(stderr, "[FAKESTART] %s at frame %u\n",
                            s_n == 300 ? "press" : "release", s_n), fflush(stderr);
            }
        }
        an[0] = a; an[1] = b;
        {   /* One line per press edge (first 24): what the guest received and
             * what screen it was on, so a run log shows where a press went. */
            static int s_log = 0, s_was = 0;
            int now = (buttons != 0), ai;
            for (ai = 0; ai < 8; ai++) if (an[ai] >= 30) now = 1;
            if (now && !s_was && s_log < 24) {
                s_log++;
            }
            s_was = now;
        }
        /* Each pad struct (base 0x0073C6C8, stride 0x80) holds TWO
         * consecutive XINPUT_STATEs, 0x16 bytes each: */
        uint32_t slots[2];
        int nslots = 1;
        slots[0] = st;
        for (int i = 0; i < 4; i++) {
            if (st == 0x0073C6F7u + 0x80u * (uint32_t)i) {
                slots[1] = 0x0073C6E1u + 0x80u * (uint32_t)i;
                nslots = 2;
                break;
            }
        }
        for (int si = 0; si < nslots; si++) {
            uint32_t d = slots[si];
            MEM32(d) = s_packet;          /* dwPacketNumber */
            MEM16(d + 4) = buttons;       /* wButtons */
            for (int i = 0; i < 8; i++) MEM8(d + 6 + i) = an[i];   /* A B X Y Black White LT RT */
            MEM16(d + 14) = (uint16_t)lx; /* sThumbLX */
            MEM16(d + 16) = (uint16_t)ly; /* sThumbLY */
            MEM16(d + 18) = (uint16_t)rx; /* sThumbRX */
            MEM16(d + 20) = (uint16_t)ry; /* sThumbRY */
        }
    }
    {   extern unsigned g_in_getstate, g_in_build;
        extern volatile int g_doa3_post_movie;
        static unsigned n = 0;
        if (g_doa3_post_movie && (g_in_getstate % 256u) == 0 && n < 20) {
            n++;
             }
    }
    eax = 0;    /* ERROR_SUCCESS */
    esp += 12;
}

/* DIAG: */
/* DIAG: */
void sub_001946A0_gen(void);
void sub_001946A0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4);
    char name[24] = {0};
    for (int i = 0; i < 23 && a1; i++) { name[i] = (char)MEM8(a1 + i); if (!name[i]) break; }
    char pre[24] = {0};
    for (int i = 0; i < 23; i++) { pre[i] = (char)MEM8(0x0040C8A0 + i); if (!pre[i]) break; }
    sub_001946A0_gen();
    s_n++;
    if (s_n <= 12) {
        char post[24] = {0};
        for (int i = 0; i < 23; i++) { post[i] = (char)MEM8(0x0040C8A0 + i); if (!post[i]) break; }
        void *bt[5]; int n = CaptureStackBackTrace(1, 5, bt, NULL);
    }
}

void sub_00194530_gen(void);
void sub_00194530(void)
{
    static int s_n = 0;
    s_n++;
    if (s_n <= 8) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
    }
    sub_00194530_gen();
}

/* DIAG: screen-element/texture-bind chain counters (draws=0 root hunt). */
/* High-rate pump/service traces. These emit tens of thousands of lines per
 * run; */
static int doa3_pumptrace(void)
{
    static int s_v = -1;
    if (s_v < 0) {
        const char *e = getenv("DOA3_PUMPTRACE");
        s_v = (e && *e && *e != '0') ? 1 : 0;
    }
    return s_v;
}

#define CALL_COUNT_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        s_n++; \
        if (doa3_pumptrace() && (s_n <= 3 || (s_n % 5000) == 0)) { \
             \
             } \
        fn##_gen(); \
    }
CALL_COUNT_PROBE(sub_0019BF30)   /* wxCi cache-copy stream starter */
CALL_COUNT_PROBE(sub_0019ED00)   /* Sofdec movie player create */

/* sub_001A6300 — "is the movie data stream finished?" = (streamStat == 4). */
void sub_001A6300(void)
{
    extern void sub_001911C0(void);
    uint32_t h = MEM32(esp + 4);
    PUSH32(esp, h);
    PUSH32(esp, 0); sub_001911C0();
    esp += 4;                 /* our arg push */
    eax = (eax == 4) ? 1 : 0;
    esp += 4;                 /* consume fake return */
}
CALL_COUNT_PROBE(sub_0019EFC0)   /* mwPly destroy (DF60 bail path) */
CALL_COUNT_PROBE(sub_00083510)   /* last call before 4A10D0 clear */
CALL_COUNT_PROBE(sub_000869A0)   /* first call in screen-flip task */
CALL_COUNT_PROBE(sub_0019A660)   /* ADXM group-2 slot-1 dispatch (mwPly server) */
CALL_COUNT_PROBE(sub_0019A690)   /* ADXM group-5 dispatch (sfdec decode cb) */
CALL_COUNT_PROBE(sub_001A0260)   /* sfdec main server */

/* DIAG: result probes along the ADXSTM-create chain. */
#define RET_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        fn##_gen(); \
        if (s_n < 8) { s_n++; \
             \
             } \
    }

/* DIAG: sfdec error reporter — log every error with a small backtrace of the
 * guest stack so the failing parse site is identifiable. item 102: */
void sub_001A5DC0_gen(void);
void sub_001A5DC0(void)
{
    static uint32_t s_codes[16]; static int s_counts[16]; static int s_nc = 0;
    uint32_t h = MEM32(esp + 4), err = MEM32(esp + 8);
    int ci = -1;
    for (int i = 0; i < s_nc; i++) if (s_codes[i] == err) { ci = i; break; }
    if (ci < 0 && s_nc < 16) { ci = s_nc++; s_codes[ci] = err; s_counts[ci] = 0; }
    int s_n = (ci >= 0) ? s_counts[ci] : 999;
    if (ci >= 0) s_counts[ci]++;
    if (s_n < 6) {
        /* NATIVE backtrace: the recompiled guest functions are host functions,
         * so the host stack IS the guest call chain. Resolve via doa3.map. */
        {
            void *bt[24];
            USHORT nfr = CaptureStackBackTrace(1, 24, bt, NULL);
        }
    }
    /* BACKPRESSURE: FF00040B = "substream ring full, cannot append". On
     * hardware the ingest simply retries next tick as the decoder drains; */
    if (err == 0xFF00040B) {
        static int s_bp = 0;
        if (s_bp < 4) {
            s_bp++;
        }
        eax = 0; esp += 4; return;
    }
    {   /* A parse error on the movie handle while the host presenter is still
     * playing that movie: */
        extern int doa3_movie_presenter_active(void);
        extern int g_doa3_host_movie_ended;
        if (err && h == MEM32(0x00C85148u) && MEM32(h + 0x40) == 4 &&
            doa3_movie_presenter_active() && !g_doa3_host_movie_ended) {
            eax = err; esp += 4; return;
        }
    }
    sub_001A5DC0_gen();
}
/* DIAG: SJ sub-region carve helper (register-arg: eax=end, ecx=cur, edx=base,
 * ebx=mode, esi=out struct). size = eax-ecx; */
void sub_001A7F10_gen(void);
void sub_001A7F10(void)
{
    static int s_n = 0;
    if (s_n < 40) {
        s_n++;
    }
    sub_001A7F10_gen();
}

/* GUARD: */
static int sfdec_pool_obj_ok(uint32_t obj)
{
    /* Reject only objects OUTSIDE guest RAM. */
    return obj >= 0x1000 && obj < 0x8000000u;
}
/* sub_001A0B60 also decides end of stream for a PLAYING handle (sets cmd 6
 * once the input is used up). */
void sub_001A0B60_gen(void);
void sub_001A0B60(void)
{
    extern int doa3_movie_presenter_active(void);
    extern int g_doa3_host_movie_ended;
    static int s_junk = 0;
    if (!sfdec_pool_obj_ok(eax)) {
        if (s_junk < 4) {
            s_junk++;
        }
        eax = 0; esp += 4; return;
    }
    if (eax == MEM32(0x00C85148u) && MEM32(eax + 0x40) == 4 &&
        doa3_movie_presenter_active() && !g_doa3_host_movie_ended) {
        eax = 0; esp += 4; return;
    }
    sub_001A0B60_gen();
}
/* sub_0019EA30 — mwPly frame copy + colour conversion into the D3D surface
 * the game locked (USA sub_001762B0). As USA: */
void sub_0019EA30_gen(void);
void sub_0019EA30(void)
{
    extern uint32_t g_doa3_movie_frames;
    extern void doa3_present_movie_surface(const void *src, int w, int h, int pitch);
    uint32_t dst = MEM32(esp + 8) & 0x07FFFFFFu;
    sub_0019EA30_gen();
    g_doa3_movie_frames++;
    if (dst >= 0x1000 && dst + 2880u * 480u < 0x8000000u)
        doa3_present_movie_surface(XBOX_PTR(dst), 720, 480, 2880);
}
/* sub_001A0BD0 — sfdec create (USA sub_0017D240 +
 * doa3_relocate_picture_index). */
void sub_001A0BD0_gen(void);
void sub_001A0BD0(void)
{
    extern uint32_t xbox_HeapAllocHigh(uint32_t size, uint32_t alignment);
    uint32_t h, q, base = MEM32(0x00C85148), cnt = MEM32(0x00C85144);
    sub_001A0BD0_gen();
    h = eax;
    if (h < base || h >= base + cnt * 0x6328u || (h - base) % 0x6328u) return;
    for (q = 0; q < 8; q++) {
        uint32_t rec = h + q * 0x388u + 0xF88u;
        uint32_t idxsz = MEM32(rec + 0x24), table;
        if (MEM32(rec) != 5 || !MEM32(rec + 0x18) || !idxsz || MEM32(rec + 0x40)) continue;
        table = xbox_HeapAllocHigh(idxsz + 4096u, 4096);
        if (!table) continue;
        memset(XBOX_PTR(table), 0, idxsz);
        MEM32(rec + 0x40) = table;                  /* table */
        MEM32(rec + 0x44) = idxsz / 12u;            /* capacity (entries) */
        MEM32(rec + 0x48) = 0;                      /* count */
        MEM32(rec + 0x4C) = 0;                      /* write cursor */
        MEM32(rec + 0x50) = 0;                      /* read cursor */
    }
}
/* sub_001B03C0 — block store (dequant/IDCT output; USA sub_00186D00 guard). */
void sub_001B03C0_gen(void);
void sub_001B03C0(void)
{
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    uint32_t cnt = ((int32_t)a2 < 0) ? MEM32(0x004D79C8u - 4u * a2) : a2;
    if (a1 < 0x100000u || a1 >= 0x8000000u || (int32_t)cnt < 0 || cnt > 2048u) {
        eax = 0;
        esp += 4;
        return;
    }
    sub_001B03C0_gen();
}
/* sub_001A5340 — sfdec start-code scanner (eax = parse ptr, ebx = length; USA
 * sub_0017BCC0 guard). */
void sub_001A5340_gen(void);
void sub_001A5340(void)
{
    if ((int32_t)ebx < 4) { eax = 0; esp += 4; return; }
    sub_001A5340_gen();
}
/* sub_001A0E00(h) — per-handle server entry (USA sub_0017D470 guard): skip
 * handles outside guest RAM. */
void sub_001A0E00_gen(void);
void sub_001A0E00(void)
{
    if (!sfdec_pool_obj_ok(MEM32(esp + 4))) { eax = 0; esp += 4; return; }
    sub_001A0E00_gen();
}
/* Is rec one of the decoder pool's picture-slot records (h+0x38C0, 7 x 0x50)? */
static int jpn_sfd_slot_rec(uint32_t rec)
{
    uint32_t base = MEM32(0x00C85148), cnt = MEM32(0x00C85144), k;
    for (k = 0; k < cnt && k < 8; k++) {
        uint32_t first = base + k * 0x6328u + 0x38C0u;
        if (rec >= first && rec < first + 7u * 0x50u && (rec - first) % 0x50u == 0) return 1;
    }
    return 0;
}
/* sub_001A6680 / sub_001A6690 — picture slot marks "decoded" (-> 2) and
 * "serving" (-> 4); USA sub_0017DAF0 / sub_0017DB00: */
void sub_001A6680_gen(void);
void sub_001A6680(void)
{
    uint32_t rec = MEM32(esp + 4);
    if (rec && jpn_sfd_slot_rec(rec) && MEM32(rec) == 0) { esp += 4; return; }
    sub_001A6680_gen();
}
void sub_001A6690_gen(void);
void sub_001A6690(void)
{
    uint32_t rec = MEM32(esp + 4);
    if (rec && jpn_sfd_slot_rec(rec) && MEM32(rec) == 0) { esp += 4; return; }
    sub_001A6690_gen();
}
/* sub_001A65B0 — sfdec display gate: counts decoded slots (count h+0x38BC,
 * slots h+0x38C0 stride 0x50). USA sub_0017DA20's guard: */
void sub_001A65B0_gen(void);
void sub_001A65B0(void)
{
    uint32_t h = MEM32(esp + 4);
    if (!(h >= 0x1000 && h < 0x8000000u) || MEM32(h + 0x38BC) > 16) {
        eax = 0xFFFFFFFFu;   /* "no displayable frames" */
        esp += 4;
        return;
    }
    sub_001A65B0_gen();
}
/* sub_001A0D10 — sfdec per-object state machine (register arg eax = obj; USA
 * sub_0017D380). Skip objects outside guest RAM, as USA does. */
void sub_001A0D10_gen(void);
void sub_001A0D10(void)
{
    uint32_t s_esi = esi, s_edi = edi, s_ebx = ebx;
    if (!sfdec_pool_obj_ok(eax)) { esp += 4; return; }
    sub_001A0D10_gen();
    esi = s_esi; edi = s_edi; ebx = s_ebx;
}
/* NATIVE: */
void sub_001A77C0(void)
{
    uint32_t h = MEM32(esp + 4), idx = MEM32(esp + 8);
    uint32_t s_esi = esi, s_edi = edi, s_ebx = ebx;
    uint32_t result = 0;
    int i;
    if (h >= 0x1000 && h < 0x8000000u && idx < 32) {
        for (i = 0; i < 9 && !result; i++) {
            uint32_t vt = MEM32(h + 0x31A0 + (uint32_t)i * 0x610), fn;
            if (!vt || vt < 0x10000 || vt >= 0x8000000u) continue;
            fn = MEM32(vt + idx * 4);
            if (!fn || fn < 0x00011000 || fn >= 0x00217A00) continue;
            {
                uint32_t saved_esp = esp;
                PUSH32(esp, 0);
                PUSH32(esp, 0);
                PUSH32(esp, 0);
                PUSH32(esp, h);
                PUSH32(esp, 0);
                RECOMP_ICALL_SAFE(fn, saved_esp);
                result = eax;
                esp = saved_esp;
                esi = s_esi; edi = s_edi; ebx = s_ebx;
            }
        }
    }
    eax = result;
    esp += 4;
}
/* DIAG: frame get + YUV->RGB CSC kernel. */
void sub_001A6220_gen(void);
void sub_001A6220(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), outp = MEM32(esp + 8);
    sub_001A6220_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
    }
    s_n++;
}
void sub_001A3480_gen(void);
void sub_001A3480(void)
{
    static int s_n = 0;
    sub_001A3480_gen();
    if (s_n < 6 || (s_n % 2048) == 0) {
    }
    s_n++;
}
/* Unresolved RECOMP_ITAIL logger (see recomp_types.h). */
void recomp_itail_fail_log(uint32_t va)
{
    static uint32_t seen[16];
    static int n = 0;
    for (int i = 0; i < n; i++) if (seen[i] == va) return;
    if (n < 16) {
        seen[n++] = va;
    }
}
/* DIAG: esp-delta bisect for the skip-path -4 drift. */
#define DPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     uint32_t e0 = esp;     fn##_gen();     if ((int)(esp - e0) != 4 && s_n < 6) {         s_n++;                       } }
DPROBE(sub_001A9E80)
DPROBE(sub_001A8AC0)
DPROBE(sub_001B0980)
DPROBE(sub_001AFA30)
DPROBE(sub_001AFA80)
DPROBE(sub_001AA4B0)
DPROBE(sub_001AA0F0)
DPROBE(sub_001AA1E0)
#undef DPROBE
/* Per-picture slot FIFO (item 90): */
uint32_t g_doa3_slotq[16];
uint32_t g_doa3_slotq_w = 0, g_doa3_slotq_r = 0;

static int doa3_reftrace_enabled(void)
{
    static int enabled = -1;
    if (enabled < 0)
        enabled = GetEnvironmentVariableA("DOA3_REFTRACE", NULL, 0) != 0;
    return enabled;
}

static int doa3_iframe_dump_enabled(void)
{
    static int enabled = -1;
    if (enabled < 0)
        enabled = GetEnvironmentVariableA("DOA3_IFRAME", NULL, 0) != 0;
    return enabled;
}

static uint32_t g_doa3_plane_hash[7][30];
static uint32_t g_doa3_plane_addr[7];
static uint32_t g_doa3_plane_serial[7];
static uint32_t g_doa3_plane_next_serial;

static uint32_t doa3_hash_bytes(const uint8_t *data, uint32_t size, uint32_t hash)
{
    for (uint32_t i = 0; i < size; i++) {
        hash ^= data[i];
        hash *= 16777619u;
    }
    return hash;
}

static uint32_t doa3_hash_plane_row(uint32_t plane, int macroblock_row)
{
    const uint8_t *y = (const uint8_t *)XBOX_PTR(plane);
    const uint8_t *u = y + 736u * 480u;
    const uint8_t *v = u + 384u * 240u;
    uint32_t hash = 2166136261u;
    for (int row = 0; row < 16; row++)
        hash = doa3_hash_bytes(y + (macroblock_row * 16 + row) * 736u, 720, hash);
    for (int row = 0; row < 8; row++) {
        hash = doa3_hash_bytes(u + (macroblock_row * 8 + row) * 384u, 360, hash);
        hash = doa3_hash_bytes(v + (macroblock_row * 8 + row) * 384u, 360, hash);
    }
    return hash;
}

static void doa3_compare_completed_plane(uint32_t plane)
{
    if (!doa3_reftrace_enabled())
        return;
    for (int slot = 0; slot < 7; slot++) {
        if (g_doa3_plane_addr[slot] != plane || !g_doa3_plane_serial[slot])
            continue;
        uint32_t changed = 0;
        for (int row = 0; row < 30; row++)
            if (g_doa3_plane_hash[slot][row] != doa3_hash_plane_row(plane, row))
                changed |= 1u << row;
        g_doa3_plane_serial[slot] = 0;
        return;
    }
}
uint32_t g_doa3_a6d0_frame = 0;   /* item 90(c): A6D0 frame base (absolute) */
/* item 104 (defect #2 start offset): decode races ~47 pictures ahead before
 * the first blit; */
static uint8_t  g_doa3_slot_pending[7];
static uint32_t g_doa3_defer_age[16];
/* item 104 decode-ahead accounting (cap enforced in sub_001A17B0) */
uint32_t g_doa3_pics_decoded = 0, g_doa3_pics_served = 0;
static uint32_t g_doa3_rel_defer[16];
static int g_doa3_rel_defer_n = 0;
static void doa3_defer_release(uint32_t rec, int to3)
{
    for (int i = 0; i < g_doa3_rel_defer_n; i++)
        if ((g_doa3_rel_defer[i] & ~1u) == rec) return;
    if (g_doa3_rel_defer_n < 16) {
        g_doa3_defer_age[g_doa3_rel_defer_n] = 0;
        g_doa3_rel_defer[g_doa3_rel_defer_n++] = rec | (to3 ? 1u : 0u);
    }
}
void doa3_reset_slot_pending(void)
{
    for (int i = 0; i < 7; i++) g_doa3_slot_pending[i] = 0;
}
static int doa3_release_must_defer(uint32_t rec)
{
    /* item 110 (user revert): */
    (void)rec;
    return 0;
}
void sub_001A89D0_gen(void);
void sub_001A89D0(void)
{
    static unsigned s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC), a4 = MEM32(esp + 0x10);
    sub_001A89D0_gen();
    if (++s_n <= 40) {
    }
}
/* DIAG: video ES delivery + guarded index append. */
void sub_001A4E70_gen(void);
void sub_001A4E70(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_001A4E70_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
    }
    s_n++;
}
/* DIAG: picture registration in the bitfeeder (writes rec+0x40?). */
void sub_001AAEE0_gen(void);
void sub_001AAEE0(void)
{
    static int s_n = 0;
    uint32_t ctx = eax;
    sub_001AAEE0_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
    }
    s_n++;
}
/* DIAG: start-code class scanner + picture bitstream setup. */
void sub_001A9860_gen(void);
void sub_001A9860(void)
{
    static int s_n = 0;
    uint32_t p = MEM32(esp + 4), len = MEM32(esp + 8), mask = MEM32(esp + 0xC);
    sub_001A9860_gen();
    if (mask == 4 && (s_n < 8 || (s_n % 4096) == 0)) {
    }
    if (mask == 4) s_n++;
}
/* DIAG: picture decode initiators inside sub_001A3070's tail. If the
 * sub_001A28E0 out-flag stays 0 these never run and no picture decodes. */
#define CNTPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     fn##_gen();     if (s_n < 6 || (s_n % 4096) == 0) {                       }     s_n++; }
#undef CNTPROBE
/* DIAG: picture-header parse chain (bit readers on ctx h+0x35E0). */
#define PICPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     uint32_t inh = eax, inc = ecx, ind = edx;     fn##_gen();     if (s_n < 40) {         s_n++;                       } }
PICPROBE(sub_001A1730)
PICPROBE(sub_001A1770)
#undef PICPROBE
/* DIAG: slice decoder sub_001A2630(a1=win, a2=0xCC; esi=&ctx). Consumes slice
 * start codes from the ES window; */
void sub_001A2630_gen(void);
void sub_001A2630(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), sctx = esi;
    sub_001A2630_gen();
    if (s_n < 12 || (s_n % 4096) == 0) {
    }
    s_n++;
}
/* item 100: movie AV-clock QPC pacing state (see the synthetic-clock block
 * below). File-scope so the not-playing branch can reset it between movies. */
static LONGLONG s_mvclk_last = 0;
static LONGLONG s_mvclk_qpf = 0;
static double   s_mvclk_accum = 0.0;
void sub_001A7FC0_gen(void);
void sub_001A7FC0(void)
{
    static int s_n = 0;
    uint32_t slot = esi, vt = (esi >= 0x10000 && esi < 0x8000000) ? MEM32(esi) : 0;
    sub_001A7FC0_gen();
    if (s_n < 8) { s_n++;
        (void)vt;
         }
}
RET_PROBE(sub_001A7C00)
RET_PROBE(sub_00195180)
RET_PROBE(sub_00195510)
RET_PROBE(sub_0019BD40)
RET_PROBE(sub_0019C4E0)

/* DIAG: SJ creator + wxCi session creator (both inside the ADXSTM create). */
void sub_00192400_gen(void);
void sub_00192400(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    if (a2 & 0x80000000u) {
        /* Negative region size (X-0x800 with X=0 upstream). */
        MEM32(esp + 8) = 0x800;  /* clamp: minimal sane ring */
    }
    sub_00192400_gen();
    {   extern volatile int g_doa3_post_movie;
        if (s_n < 40 || g_doa3_post_movie) { s_n++;
             } }
}
void sub_00195670_gen(void);
void sub_00195670(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4);
    sub_00195670_gen();
    if (s_n < 12) { s_n++;
         }
}

/* DIAG: sfdec size calculator (create path) — print the size table it fills. */
void sub_0019EAB0_gen(void);
void sub_0019EAB0(void)
{
    static int s_n = 0;
    sub_0019EAB0_gen();
    if (s_n < 3) {
        s_n++;
    }
}

/* DIAG: sfdec state-2 evaluator (fastcall, handle in eax): print cmd (+0x44),
 * gate sub_001A0310 result path, and the state it returns. */
void sub_001A0A70_gen(void);
void sub_001A0A70(void)
{
    static unsigned s_n = 0;
    uint32_t h = eax;
    uint32_t cmd = MEM32(h + 0x44), st = MEM32(h + 0x40);
    sub_001A0A70_gen();
    if (++s_n <= 6 || (s_n % 2000) == 0) {
    }
}

/* DIAG: gate sub_001A0310 (fastcall-ish, handle in esi). */
void sub_001A0310_gen(void);
void sub_001A0310(void)
{
    static unsigned s_n = 0;
    uint32_t h = esi;
    sub_001A0310_gen();
    if (++s_n <= 6 || (s_n % 2000) == 0) {
        for (int si = 0; si < 9; si++) {
            uint32_t vt = MEM32(h + 0x2F4C + 0x610u * si);
        }
    }
}
/* Boot-task body enter/exit markers (BOOT_MARK was #undef'd above). */
#define BOOT_MARK2(name) \
    void name(void) { \
        extern void name##_gen(void); \
        static int n = 0; \
        int log = (n < 60); n++; \
        if (log) {   } \
        name##_gen(); \
        if (log) {   } \
    }
/* DirectSoundCreate chain (cxbx symbol cache names): */
#define BOOT_MARK2_ABI(name) \
    void name(void) { \
        extern void name##_gen(void); \
        static int n = 0; \
        uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; \
        int log = (n < 60); n++; \
        if (log) {   } \
        name##_gen(); \
        if (log) {   } \
        edi = s_edi; esi = s_esi; ebx = s_ebx; \
    }
BOOT_MARK2_ABI(sub_001F1E95)
BOOT_MARK2_ABI(sub_001F1DF9)
BOOT_MARK2_ABI(sub_001F2227)
/* APU interrupt delivery (see apu_core.c g_apu_irq_pending). */
void doa3_apu_deliver_irq(void)
{
    typedef struct MCPXAPUState MCPXAPUState;
    extern MCPXAPUState *g_apu_state;
    extern uint64_t mcpx_apu_mmio_read(MCPXAPUState *, uint64_t, unsigned int);
    extern int mcpx_apu_take_irq(void);
    extern int xbox_kernel_get_isr(int, uint32_t *, uint32_t *, uint32_t *);
    extern int xbox_kernel_pop_dpc(uint32_t *, uint32_t *, uint32_t *);
    extern recomp_func_t recomp_lookup(uint32_t xbox_va);
    extern recomp_func_t recomp_lookup_manual(uint32_t xbox_va);
    static unsigned s_isr_calls = 0, s_dpc_calls = 0;
    static int s_delivering = 0;
    uint32_t obj, routine, ctx, dpc, a1, a2;
    int i;
    if (s_delivering) return;   /* an interrupt does not preempt its own service routine or DPC */
    if (!mcpx_apu_take_irq()) return;
    s_delivering = 1;
    for (i = 0; xbox_kernel_get_isr(i, &obj, &routine, &ctx); i++) {
        recomp_func_t fn;
        if (routine < 0x001EE000u || routine >= 0x0020D000u) continue;   /* DSOUND (USA 0x1C0000..0x1E0000) */
        fn = recomp_lookup_manual(routine);
        if (!fn) fn = recomp_lookup(routine);
        if (!fn) continue;
        {
            uint32_t saved_esp = esp;
            PUSH32(esp, ctx);
            PUSH32(esp, obj);
            PUSH32(esp, 0);           /* dummy return address */
            fn();
            esp = saved_esp;
        }
        s_isr_calls++;
        if (s_isr_calls <= 5 || (s_isr_calls % 500) == 0) {
            
        }
    }
    while (xbox_kernel_pop_dpc(&dpc, &a1, &a2)) {
        uint32_t droutine = MEM32(dpc + 12), dctx = MEM32(dpc + 16);
        recomp_func_t fn = recomp_lookup_manual(droutine);
        if (!fn) fn = recomp_lookup(droutine);
        if (!fn) continue;
        {
            uint32_t saved_esp = esp;
            PUSH32(esp, a2);
            PUSH32(esp, a1);
            PUSH32(esp, dctx);
            PUSH32(esp, dpc);
            PUSH32(esp, 0);
            fn();
            esp = saved_esp;
        }
        s_dpc_calls++;
        if (s_dpc_calls <= 5 || (s_dpc_calls % 500) == 0) {
            
        }
    }
    s_delivering = 0;
}

/* DirectSound's retire wait (sub_001F5157): spin until the buffer's
 * retire-pending bit (0x10000000) is cleared by the ISR's idle-voice retirement. */
void doa3_apu_wait_retire(uint32_t obj)
{
    uint32_t r_eax = eax, r_ecx = ecx, r_edx = edx, r_ebx = ebx, r_esi = esi,
             r_edi = edi, r_esp = esp, r_seh = g_seh_ebp;
    DWORD t0 = GetTickCount();
    int warned = 0;
    while (MEM32(obj + 8) & 0x10000000u) {
        doa3_apu_deliver_irq();
        eax = r_eax; ecx = r_ecx; edx = r_edx; ebx = r_ebx; esi = r_esi;
        edi = r_edi; esp = r_esp; g_seh_ebp = r_seh;
        if (!(MEM32(obj + 8) & 0x10000000u)) break;
        {   /* netplay session: the chip only moves when stepped (apu_core.c) */
            extern volatile int g_apu_det;
            extern void mcpx_apu_det_step(void);
            if (g_apu_det) { mcpx_apu_det_step(); continue; }
        }
        Sleep(1);
        if (!warned && GetTickCount() - t0 > 500) {
            warned = 1;
        }
    }
}
#define BOOT_MARK2_ABI_ESI(name)     void name(void) {         extern void name##_gen(void);         static int n = 0;         uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx, s_esp = esp;         int log = (n < 12); n++;         name##_gen();         if (log) {   }         edi = s_edi; esi = s_esi; ebx = s_ebx;     }
BOOT_MARK2_ABI_ESI(sub_001A6020)
BOOT_MARK2_ABI_ESI(sub_001A0390)
/* sub_001A8B30(dst, src, n) — Sofdec byte copy (video ES delivery). Refuse a
 * copy that leaves guest RAM: */
void sub_001A8B30_gen(void);
void sub_001A8B30(void)
{
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    uint32_t d = MEM32(esp + 4), s = MEM32(esp + 8), n = MEM32(esp + 0xC);
    if (n && (d < 0x1000 || s < 0x1000 || n >= 0x8000000u ||
              d >= 0x8000000u - n || s >= 0x8000000u - n)) {
        esp += 4; return;
    }
    sub_001A8B30_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
uint32_t g_doa3_last_adx_dev = 0;   /* device handed to the ADX Start method most recently (the movie voice) */
BOOT_MARK2_ABI_ESI(sub_001F91CD)
static void apu_dump_block(const char *tag, uint32_t apu)
{
    int i;
}
void sub_001F1D89_gen(void);
void sub_001F1D89(void)   /* IDirectSoundBuffer method (this, value); this-0x1C = CDirectSoundBuffer */
{
    static int n = 0;
    uint32_t self = MEM32(esp + 4), arg = MEM32(esp + 8);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    if (self < 0x10000 || self >= 0x08000000u) {
        if (n < 20) { n++;
             }
        eax = 0x80004005u; esp += 12; return;   /* ret 8: refuse instead of walking the zero page */
    }
    if (n < 8) { n++;  }
    sub_001F1D89_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
void sub_001F2CAB_gen(void);
void sub_001F2CAB(void)   /* IDirectSound_CreateSoundBuffer(this, desc, out) */
{
    static int n = 0;
    uint32_t ds = MEM32(esp + 4), desc = MEM32(esp + 8), out = MEM32(esp + 12);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx, e_esp = esp;
    sub_001F2CAB_gen();
    if (n < 12) { n++;
         }
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
void sub_001F1ED1_gen(void);
void sub_001F1ED1(void)   /* IDirectSoundBuffer_Lock(this, off, bytes, ppv1, pcb1, ppv2, pcb2, flags) */
{
    static int n = 0;
    uint32_t a[8], i; for (i = 0; i < 8; i++) a[i] = MEM32(esp + 4 + 4 * i);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    {   static uint32_t s_ppv = 0, s_pcb = 0;   /* what did the caller write into the region it locked last time? */
        if (s_ppv > 0x1000 && s_ppv < 0x8000000 && n < 80) { uint32_t k, nz = 0; for (k = 0; k < s_pcb; k += 4) nz += (MEM32(s_ppv + k) != 0);
             }
        sub_001F1ED1_gen();
        s_ppv = (a[3] > 0x1000 && a[3] < 0x8000000) ? MEM32(a[3]) : 0; s_pcb = (a[4] > 0x1000 && a[4] < 0x8000000) ? MEM32(a[4]) : 0; if (s_pcb > 0x10000) s_pcb = 0;
    }
    if (n < 80) { n++;
         }
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
void sub_0019B0F0_gen(void);
void sub_0019B0F0(void)   /* CRI ADX output writer: (obj) -> pushes decoded PCM to each attached device */
{
    static int n = 0;
    uint32_t obj = MEM32(esp + 4);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    if (n < 40) { n++;
         }
    sub_0019B0F0_gen();
    if (n <= 40) {  }
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
void sub_0019B380_gen(void);
void sub_0019B380(void)   /* CRI ADX output server step: gates the PCM writer on the manager state at 0x00C6F200 */
{
    static int n = 0; static uint32_t last[4] = {0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF};
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx, k;
    for (k = 0; k < 4; k++) { uint32_t m = 0x00C6F200 + k * 0x4D8, st = MEM32(m);
        if (st != last[k] && n < 60) { n++; last[k] = st;
             } }
    sub_0019B380_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
void sub_0019B040_gen(void);
void sub_0019B040(void)   /* CRI ADX output server, mode 1: pull decoded data from the source and probe it */
{
    static int n = 0;
    uint32_t obj = MEM32(esp + 4), src = MEM32(obj + 0x1C);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_0019B040_gen();
    if (n < 24) { n++;
         }
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}

/* The resource-load service (sub_000804EB) keeps the slot pointer in ESI
 * across its callees and, on completion at 0x00080646, writes the request key... */
#define ABI_MARK2(name) \
    void name##_gen(void); \
    void name(void) { \
        uint32_t _di = edi, _si = esi, _bx = ebx; \
        static int n = 0; int log = (n < 60); n++; \
        if (log) {   } \
        name##_gen(); \
        edi = _di; esi = _si; ebx = _bx; \
        if (log) {   } \
    }
#define ABI_MARK(name) \
    void name##_gen(void); \
    void name(void) { \
        uint32_t _di = edi, _si = esi, _bx = ebx; \
        name##_gen(); \
        edi = _di; esi = _si; ebx = _bx; \
    }
BOOT_MARK2(sub_000A5B40)
BOOT_MARK2(sub_00086980)
BOOT_MARK2(sub_00085820)
BOOT_MARK2(sub_00084FD0)
BOOT_MARK2(sub_001C663F)
/* Load-wait exit: what did the resource loader actually leave in the
 * destination? id/dest are the request globals (sub_0007E4A0). */
void sub_00085D70_gen(void);
void sub_00085D70(void) {
    uint32_t _di = edi, _si = esi, _bx = ebx;
    static int n = 0; int log = (n < 60); n++;
    if (log) {   }
    sub_00085D70_gen();
    edi = _di; esi = _si; ebx = _bx;
    if (log) {
        uint32_t dst = MEM32(0x005B3194); int k;
    }
}
BOOT_MARK2(sub_0007D5C0)
ABI_MARK2(sub_001E0900)
ABI_MARK2(sub_00086F50)
BOOT_MARK2(sub_0008A240)
BOOT_MARK2(sub_0019F7D0)   /* movie teardown chain (enter/exit) */
BOOT_MARK2(sub_001A0CB0)   /* movie teardown chain (enter/exit) */
BOOT_MARK2(sub_00192C10)   /* movie teardown chain (enter/exit) */
BOOT_MARK2(sub_001A0010)   /* movie teardown chain (enter/exit) */
/* Set once the movie teardown has returned -- i.e. the game has genuinely
 * left the intro movie. The frame-capture diagnostic keys off this. */
volatile int g_doa3_post_movie = 0;
volatile int g_doa3_in_pump = 0;   /* doa3_pump_cri_servers is on the stack */
/* May the primary fiber hand a time slice to the worker threads right now?
 * Only after the movie (its verified timing is left alone), never from... */
int doa3_workers_may_run(void)
{
    return g_doa3_post_movie && !g_doa3_in_pump && MEM32(0x0040C6F8) == 0 && MEM32(0x00C85160) == 0;
}

/* [FLOWCNT] which links of the title-screen chain actually execute. */
unsigned g_fc[16];
void doa3_flowcount_dump(void)
{
}


/* D3DDevice_SetTransform (0x001DC3F0) and D3DDevice_SetViewport (0x001DD240)
 * and D3D_UpdateProjectionViewportTransform (0x001DDF40), from the cxbx... */
void doa3_dump_mat4(const char *tag, uint32_t p)
{
    int i;
    for (i = 0; i < 16; i++) {
        float f; uint32_t u = MEM32(p + i * 4);
        memcpy(&f, &u, 4);
    }
}
/* Render-target identity for the pgraph translator: the implicit back buffer
 * surface lives inside the device object (dev+0x2150 / dev+0x2168); */
uint32_t g_doa3_fb_offs[4]; int g_doa3_fb_n;
uint32_t g_doa3_offrt_offs[8]; int g_doa3_offrt_n;   /* every texture surface seen */

/* The guest's own D3DPRESENT_PARAMETERS (0x00A48C30): */
int doa3_guest_display_size(unsigned *w, unsigned *h)
{
    uint32_t dw = MEM32(0x00A48C30u), dh = MEM32(0x00A48C34u);
    if (dw < 64u || dw > 4096u || dh < 64u || dh > 4096u) return 0;
    *w = (unsigned)dw; *h = (unsigned)dh;
    return 1;
}


/* CRI callback dispatch: enforce the callee-saved ABI. */
void sub_0019A5E0_gen(void);
void sub_0019A5E0(void) {
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_0019A5E0_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}

/* DOA3 DIAG: */
struct doa3_vbw_ent { uint32_t self, f4, f8, l50, l54, l58, l5c, l60, blk, blk68, seq; };
struct doa3_vbw_ent g_vbw_ring[8]; unsigned g_vbw_seq = 0;
void doa3_vbw_dump(void)
{
    unsigned i;
    for (i = 0; i < 8; i++) {
        struct doa3_vbw_ent *e = &g_vbw_ring[i];
        if (!e->seq) continue;
    }
}

/* [INCHAIN] end-to-end input plumbing. XInputGetState fills the pad state; */
unsigned g_in_getstate, g_in_build;
CALL_COUNT_PROBE(sub_001931E0)   /* ADX stream handle create (movie work buf) */

/* DIAG: ADXF_LoadPartition (sub_00190EF0): print ptid + filename to map which
 * partition mount hits "not AFS". */
void sub_00190EF0_gen(void);
void sub_00190EF0(void)
{
    uint32_t id = MEM32(esp + 4), fn = MEM32(esp + 8);
    char nm[40] = {0};
    if (fn >= 0x10000 && fn < 0x8000000)
        for (int i = 0; i < 39; i++) { nm[i] = (char)MEM8(fn + i); if (!nm[i]) break; }
    sub_00190EF0_gen();
}

/* DIAG: CRI CompareFileTime (used by the cache validator sub_000A4378 to
 * decide 0x0073C0A4 cache-dirty). */
void sub_0018BEB9_gen(void);
void sub_0018BEB9(void)
{
    static int s_n = 0;
    uint32_t a = MEM32(esp + 4), b = MEM32(esp + 8);
    uint32_t alo = MEM32(a), ahi = MEM32(a + 4), blo = MEM32(b), bhi = MEM32(b + 4);
    sub_0018BEB9_gen();
    if (++s_n <= 12) {
    }
}

/* DIAG: wxCi copy pump — gated on the wxCi object state (+1)==2. */
void sub_0019C120_gen(void);
void sub_0019C120(void)
{
    static unsigned s_n = 0;
    uint32_t obj = MEM32(esp + 4);
    s_n++;
    if (s_n <= 4 || (s_n % 3000) == 0) {
    }
    sub_0019C120_gen();
}

/* DIAG: esp-balance probes for the state-block batch callees (drift hunt).
 * Each prints espin/espout for its first few calls. */
#define ESP_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        uint32_t ei = esp; \
        uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; /* enforce callee-saved ABI */ \
        fn##_gen(); \
        edi = s_edi; esi = s_esi; ebx = s_ebx; \
        static int s_n = 0; \
        if (s_n < 4) { s_n++; \
             \
             } \
    }
/* CreateDevice tail: two callees leak the guest stack, and that is what left
 * the device without a render target. */
ESP_PROBE(sub_001E24B0)   /* GPU wait spin (ret 0)            expect d=+4  */
/* (the ESP_FIX uses live next to the macro definition further down) */

ESP_PROBE(sub_0019E9B0)   /* movie ring finalize */
/* Push-buffer append (0x001DDEB0) -- __fastcall(ecx, edx), plain ret.
 * Reserves 8 bytes at the device write cursor and stores ecx/edx there: */
static void doa3_pb_wrap(uint32_t dev, const char *who);
ESP_PROBE(sub_001DC340)
ESP_PROBE(sub_001EEA0C)   /* D3DX draw (8 args, ret 0x20): expect d=+36 */

/* DIAG: drift probes for the 8 dirty-state sub-appliers under sub_001B7690. */
#define DRIFT_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        uint32_t ei = esp; \
        fn##_gen(); \
        if (s_n < 8 && (int)(esp - ei) != 8) { \
            s_n++; \
             \
             } \
    }

/* sub_001B3760 — D3D inline vertex push (BEGIN prim + scatter-gather copy of
 * vertex attributes into the push buffer). */
static int doa3_pb_recording(uint32_t dev);
extern uint32_t g_doa3_pb_base, g_doa3_pb_end;
/* [TASKNEW] temporary: which task entry points actually get registered. */
void sub_001C66A2_gen(void);
void sub_001C66A2(void) {
    uint32_t pri = MEM32(esp + 4), ent = MEM32(esp + 8);
    static int n = 0;
    if (n < 40) { n++;
         }
    sub_001C66A2_gen();
}
void sub_00089AC0_gen(void);
void sub_00089AC0(void) {
    static int n = 0;
    sub_00089AC0_gen();
    if (n < 6) { n++;
          }
}
unsigned g_mw_calls, g_mw_st6, g_mw_set3, g_mw_laststate;
unsigned g_e1f0_calls, g_e1f0_nz;
/* [MVST] temporary: what the movie status vtable slot actually reports. */
unsigned g_st_calls; int g_st_lastret, g_st_lastst8; uint32_t g_st_lastobj;
void sub_0019F460_gen(void);
void sub_0019F460(void) {
    uint32_t obj = MEM32(esp + 4);
    uint32_t h = obj ? MEM32(obj + 0x30) : 0;
    g_mw_calls++;
    if (h) { g_mw_laststate = MEM32(h + 0x40);
             if (g_mw_laststate == 6) g_mw_st6++; }
    sub_0019F460_gen();
    if (obj && MEM32(obj + 8) == 3) g_mw_set3++;
}

/* ESP_FIX: */
#define ESP_FIX(fn, argbytes) \
    void fn##_gen(void); \
    void fn(void) { \
        uint32_t ei = esp; \
        uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; \
        fn##_gen(); \
        edi = s_edi; esi = s_esi; ebx = s_ebx; \
        esp = ei + 4 + (argbytes); \
    }
/* D3DTexture_LockRect (0x001E0570, per cxbx symbols) — full semantic
 * override. */
void sub_001E0570(void)
{
    uint32_t tex   = MEM32(esp + 4);
    uint32_t plr   = MEM32(esp + 0xC);
    static int s_n = 0;
    uint32_t data = 0, fmt = 0, size = 0, pitch = 0;
    if (tex >= 0x1000 && tex < 0x8000000u) {
        data = MEM32(tex + 4);
        fmt  = MEM32(tex + 0xC);
        size = MEM32(tex + 0x10);
        if (size) {
            pitch = (((size >> 24) & 0xFF) + 1) * 64;
        } else {
            /* swizzled/power-of-2 header: pitch from format U/P exponent */
            uint32_t u = (fmt >> 20) & 0xF;              /* log2 width */
            uint32_t bpp = ((fmt >> 8) & 0xFF);
            pitch = (1u << u) * ((bpp == 0x11 || bpp == 0x1E) ? 1 : 2);
        }
    }
    if (plr >= 0x1000 && plr < 0x8000000u) {
        MEM32(plr)     = pitch;                          /* D3DLOCKED_RECT.Pitch */
        MEM32(plr + 4) = data & 0x07FFFFFFu;             /* .pBits (raw RAM addr) */
    }
    if (s_n < 8) {
    }
    s_n++;
    eax = 0;
    esp += 24;   /* fake-ret slot + ret 20 */
}
ESP_FIX(sub_001E96A5, 4)   /* D3DDevice_ApplyStateBlock(handle), ret 4 */
/* Stack-balance fixes ported from USA (recomp_manual.c ESP_FIX list): the JPN
 * counterparts' fragment chains return with the guest stack off. */
ESP_FIX(sub_001E982D, 4)   /* D3DDevice_CaptureStateBlock(handle), ret 4 (USA 0x1BEBC0) */
ESP_FIX(sub_001E57ED, 0)   /* USA 0x1BB770 */
ESP_FIX(sub_001E52E6, 4)   /* USA 0x1BB256 */
ESP_FIX(sub_001E56F2, 0xC) /* USA 0x1BB66A */
ESP_FIX(sub_001E2E00, 0)   /* USA 0x1B8EE0 */
ESP_FIX(sub_0017BCE0, 0)   /* game sound-command flusher (USA 0x153EF0) */
ESP_FIX(sub_001EE0A0, 8)   /* D3DX context factory (dev, out), ret 8 */

/* Main-loop callee balance probes: the frame loop (sub_000A06D0) leaks ~320
 * B/frame; */
#define LOOP_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static unsigned s_n = 0; \
        uint32_t ei = esp; \
        fn##_gen(); \
        s_n++; \
        if ((s_n % 600) == 1) { \
             \
             } \
    }
LOOP_PROBE(sub_000A65B0)
void sub_001A77B0_gen(void);
void sub_001A77B0(void)
{
    static unsigned s_n = 0;
    uint32_t ei = esp;
    sub_001A77B0_gen();
    s_n++;
    if ((s_n % 5000) == 1 && ei > 0xF00000) {   /* task-stack callers only (heap base) */
        void *bt[7]; int n = CaptureStackBackTrace(1, 7, bt, NULL);
    }
}
ESP_FIX(sub_00180490, 0)  /* DSOUND buffer maintenance: leaked 24 B/frame */
LOOP_PROBE(sub_0018BDD1)
LOOP_PROBE(sub_001C650C)
LOOP_PROBE(sub_000A6680)

/* ── DIAG: sprite/glyph blitter (sub_000403F0) — wild-write storm source
 * ───── (struct, count) cdecl. Writes walk from a garbage dest; */
int g_blit_gen_hits = 0;   /* incremented by a probe at sub_000403F0_gen entry */

/* ── D3D8 push-buffer overrides (following burnout3's PB-trio pattern)
 * ──────── burnout3 overrides its push-buffer management functions... */
/* Flags carried across a generated-fragment boundary; see recomp_types.h. */
uint32_t g_flg_a, g_flg_b;
int g_flg_w = 4, g_flg_test;

int rc_flg_cc(int cc)
{
    uint32_t mask = (g_flg_w == 1) ? 0xFFu : (g_flg_w == 2) ? 0xFFFFu : 0xFFFFFFFFu;
    uint32_t sign = (g_flg_w == 1) ? 0x80u : (g_flg_w == 2) ? 0x8000u : 0x80000000u;
    uint32_t a = g_flg_a & mask, b = g_flg_b & mask, r;
    int zf, sf, cf = 0, of = 0, pf, i, ones = 0;
    unsigned lo;

    if (g_flg_test) {
        r = (a & b) & mask;
    } else {
        r = (a - b) & mask;
        cf = (a < b);
        of = ((((a ^ b) & (a ^ r)) & sign) != 0);
    }
    zf = (r == 0);
    sf = ((r & sign) != 0);
    lo = (unsigned)(r & 0xFFu);
    for (i = 0; i < 8; i++) if (lo & (1u << i)) ones++;
    pf = ((ones & 1) == 0);

    switch (cc) {
    case 0:  return zf;                 /* je  */
    case 1:  return !zf;                /* jne */
    case 2:  return cf;                 /* jb  */
    case 3:  return !cf;                /* jae */
    case 4:  return cf || zf;           /* jbe */
    case 5:  return !cf && !zf;         /* ja  */
    case 6:  return sf != of;           /* jl  */
    case 7:  return sf == of;           /* jge */
    case 8:  return zf || (sf != of);   /* jle */
    case 9:  return !zf && (sf == of);  /* jg  */
    case 10: return sf;                 /* js  */
    case 11: return !sf;                /* jns */
    case 12: return of;                 /* jo  */
    case 13: return !of;                /* jno */
    case 14: return pf;                 /* jp  */
    case 15: return !pf;                /* jnp */
    default: return 0;
    }
}

uint32_t g_doa3_pb_base = 0, g_doa3_pb_end = 0;
uint32_t g_doa3_movie_ticks = 0;    /* synthetic movie clock (PTS units) */
uint32_t g_doa3_movie_frames = 0;   /* frames actually blitted (clock pace anchor) */
static uint32_t g_pb_parsed = 0;   /* last push-buffer offset translated to D3D11 */

/* Push-buffer -> D3D11 translation (following burnout3's
 * parse_live_pushbuffer). */
#define NV097_CLEAR_SURFACE 0x01D0u
static void doa3_translate_pb(uint32_t from, uint32_t to)
{
    extern int  pgraph_d3d11_method(int subchannel, uint32_t method, uint32_t param);
    extern void pgraph_d3d11_flush(void);
    extern void doa3_present_frame(void);
    static int drew_since_present = 0;

    (void)drew_since_present;
    perf_begin(PERF_TRANSLATE);
    uint32_t pos = from;
    /* DOA3 DIAG: words the parser cannot read as a method header, and headers
     * whose parameters run past the write cursor. */
    extern volatile int g_doa3_post_movie;
    static uint32_t s_skip = 0, s_over = 0, s_hdrs = 0; static int s_log = 0;
    static DWORD s_next = 0;
    uint32_t last_hdr = 0, last_pos = 0;
    while (pos + 4 <= to) {
        uint32_t word = MEM32(pos); pos += 4;
        if (word == 0) continue;                       /* NOP / padding */
        uint32_t kind = word & 0xE0030003u;
        if (kind == 0 || kind == 0x40000000u) {        /* increasing / non-increasing */
            uint32_t count   = (word >> 18) & 0x7FF;
            uint32_t method  = word & 0x1FFC;
            uint32_t subchan = (word >> 13) & 7;
            s_hdrs++;
            if (count == 0 || pos + count * 4 > to) {
                s_over++;
                if (g_doa3_post_movie && s_log < 40) { s_log++;
                     }
                continue;
            }
            last_hdr = word; last_pos = pos - 4 - from;
            for (uint32_t i = 0; i < count; i++) {
                uint32_t param = MEM32(pos); pos += 4;
                uint32_t m = (kind == 0) ? method + i * 4 : method;
                pgraph_d3d11_method((int)subchan, m, param);   /* translate to D3D11 */
            }
        }
        else {
            s_skip++;
            {   static uint32_t s_ctx = 0; static uint32_t s_ctx_from = 0;
                if (g_doa3_post_movie && s_ctx < 8 && s_ctx_from != from) { s_ctx++; s_ctx_from = from;
                    uint32_t k, b = (pos - 4 - from >= 48) ? pos - 4 - 48 : from;
                      }
            }
            if (g_doa3_post_movie && s_log < 40) { s_log++;
                 }
        }
        /* jump/call/return (low bits 1/2) carry no params we translate — skip */
    }
    if (g_doa3_post_movie && GetTickCount() >= s_next) {
        s_next = GetTickCount() + 2000;
    }
    perf_end(PERF_TRANSLATE);
}

/* Wrap the write cursor back to the base of our RAM push buffer. Burnout's
 * sub_00351770 parses [base, write_ptr) BEFORE it resets the cursor. */
/* Recording mode. The XDK sets bit 2 of [dev+8] (USA: */
static int doa3_pb_recording(uint32_t dev)
{
    return (MEM8(dev + 8) & 4) != 0;
}
static uint32_t doa3_pb_makespace_recording(uint32_t dev)
{
    uint32_t cursor = MEM32(dev);
    uint32_t desc   = MEM32(dev + 0x350);
    uint32_t chunk  = MEM32(desc + 4);
    extern volatile int g_doa3_post_movie;
    static int s_n = 0;
    MEM32(dev + 0x354) = MEM32(dev + 0x354) + (cursor - chunk);
    MEM32(dev) = chunk;
    if (g_doa3_post_movie && s_n < 12) { s_n++;
         }
    return chunk;
}

static void doa3_pb_wrap(uint32_t dev, const char *who)
{
    uint32_t cursor = MEM32(dev);
    extern volatile int g_doa3_post_movie;
    static int s_n = 0;
    if (cursor > g_pb_parsed && g_pb_parsed >= g_doa3_pb_base && cursor <= g_doa3_pb_end)
        doa3_translate_pb(g_pb_parsed, cursor);
    if (g_doa3_post_movie && s_n < 40) { s_n++;
         }
    {   /* DOA3 DIAG: a cursor outside our buffer altogether was not put
         * there by any of our overrides; name the guest routine that did. */
        static int s_odd = 0;
        if (g_doa3_post_movie && s_odd < 8 &&
            (cursor < g_doa3_pb_base || cursor > g_doa3_pb_end)) {
            void *bt[14]; USHORT nf = CaptureStackBackTrace(1, 14, bt, NULL); USHORT k;
            s_odd++;
        }
    }
    MEM32(dev + 0x00) = g_doa3_pb_base;              /* write cursor = base */
    MEM32(dev + 0x04) = g_doa3_pb_end;               /* segment limit = end */
    g_pb_parsed = g_doa3_pb_base;
}

/* CDevice_KickOff (0x1B88C0) — burnout sub_003518E0 analogue. fastcall (ecx=this),
 * ret 0. Simulate GPU drain + fence ack so the FIFO/fence spin loops exit. */
static unsigned g_kick_count = 0;

/* Render command-list walker (0x00180730) — cdecl(end, start), ret 0. The
 * list is built by sub_00158BE0 as a flat run of records: */
uint32_t g_walk_start, g_walk_end, g_walk_canary;

/* Per-record trace of the walk itself (called at loc_00158E20, once per
 * record). */
void doa3_walk_step(uint32_t rec)
{
    extern volatile int g_doa3_post_movie;
    extern volatile LONG g_doa3_heartbeat;
    static uint32_t ring[12]; static unsigned n = 0; static int reported = 0;
    uint32_t t = MEM32(rec);
    ring[n % 12] = rec; n++;
    {   /* Who else touches this buffer while the walk is reading it?
     * sub_00181400 repoints the RECORDING write pointer [0x00AD38FC] at... */
        extern int xbox_fiber_current(void);
        static uint32_t w0, f0, rp0, wp0; static int fib0, armed = 0, told = 0;
        if (w0 != g_walk_start || wp0 != g_walk_end) {
            w0 = g_walk_start; wp0 = g_walk_end;
            f0 = MEM32(0x00B58A84u); rp0 = MEM32(0x00AD38FCu);
            fib0 = xbox_fiber_current(); armed = 1;
        } else if (armed && g_doa3_post_movie && told < 6) {
            uint32_t f = MEM32(0x00B58A84u), rp = MEM32(0x00AD38FCu);
            int fib = xbox_fiber_current();
            if (f != f0 || rp != rp0 || fib != fib0) { told++; armed = 0;
                 }
        }
    }
    if (t <= 2 || !g_doa3_post_movie || reported >= 4) return;
    reported++;
    {
        unsigned i, first = (n > 12) ? n - 12 : 0;
        uint32_t p, good = 0; unsigned gi = 0;
        for (i = first; i < n; i++) {
            uint32_t r = ring[i % 12];
        }
        for (p = g_walk_start; p < g_walk_end; ) {
            uint32_t ct = MEM32(p);
            if (ct > 2) break;
            if (p <= rec) { good = p; gi++; } else break;
            p += (ct == 0) ? 0x290u : (ct == 1) ? 0xCu : 0x14u;
        }
    }
}
int      g_walk_active;

/* DIAG/OVERRIDE: CSC coefficient builder (matrix invert). Dump in/out. */
static double doa3_memd(uint32_t a) { 
    uint64_t q = (uint64_t)MEM32(a) | ((uint64_t)MEM32(a + 4) << 32);
    double d; memcpy(&d, &q, 8); return d;
}
static void doa3_stored(uint32_t a, double d)
{
    uint64_t q; memcpy(&q, &d, 8);
    MEM32(a) = (uint32_t)q; MEM32(a + 4) = (uint32_t)(q >> 32);
}
/* Full C override (item 81): */
void sub_0019E640(void)
{
    static int s_n = 0;
    uint32_t src = MEM32(esp + 4), dst = MEM32(esp + 8);
    double a[9], inv[9];
    for (int k = 0; k < 9; k++) a[k] = doa3_memd(src + 8u * k);
    double det = a[0]*(a[4]*a[8]-a[5]*a[7])
               - a[1]*(a[3]*a[8]-a[5]*a[6])
               + a[2]*(a[3]*a[7]-a[4]*a[6]);
    double s = doa3_memd(0x0021A220) / det;
    inv[0]= (a[4]*a[8]-a[5]*a[7])*s; inv[1]=-(a[1]*a[8]-a[2]*a[7])*s; inv[2]= (a[1]*a[5]-a[2]*a[4])*s;
    inv[3]=-(a[3]*a[8]-a[5]*a[6])*s; inv[4]= (a[0]*a[8]-a[2]*a[6])*s; inv[5]=-(a[0]*a[5]-a[2]*a[3])*s;
    inv[6]= (a[3]*a[7]-a[4]*a[6])*s; inv[7]=-(a[0]*a[7]-a[1]*a[6])*s; inv[8]= (a[0]*a[4]-a[1]*a[3])*s;
    for (int k = 0; k < 9; k++) doa3_stored(dst + 8u * k, inv[k]);
    if (s_n < 2) {
    }
    s_n++;
    esp += 4;   /* cdecl */
}
#undef RESUME_GUARD

/* DIAG: MB-worker esp anomaly probes (the -36 hunt). Print only imbalances. */
#define ESPANOM_PROBE(fn)     void fn##_gen(void);     void fn(void) {         static int s_bad = 0;         uint32_t e0 = esp;         fn##_gen();         int _d = (int)(esp - e0);         if (_d != 4 && _d != 28 && s_bad < 12) {             s_bad++;                           } }
ESPANOM_PROBE(sub_0020FCA0)
#undef ESPANOM_PROBE

/* DIAG: skip-variant picture "decoders" (type-table entries 4/5) — esp
 * balance probes for the -36 leak in the skip chain. */
#define SKIPSTUB_PROBE(fn)     void fn##_gen(void);     void fn(void) {         static int s_n = 0;         uint32_t e0 = esp;         fn##_gen();         if (s_n < 10) {                           }         s_n++; }
#undef SKIPSTUB_PROBE

/* DIAG: post-decode frame handoff (h, cls, fridx) — display-queue push? */
void sub_001A06F0_gen(void);
void sub_001A06F0(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), cls = MEM32(esp + 8), fr = MEM32(esp + 0xC);
    sub_001A06F0_gen();
    if (s_n < 14 || (s_n % 2048) == 0) {
    }
    s_n++;
}
static uint32_t g_doa3_display_frame;
static int doa3_display_trace_enabled(void)
{
    static int enabled = -1;
    if (enabled < 0)
        enabled = GetEnvironmentVariableA("DOA3_DISPLAYTRACE", NULL, 0) != 0;
    return enabled;
}
void sub_001A7680_gen(void);
void sub_001A7680(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), fr = MEM32(esp + 8);
    sub_001A7680_gen();
    if (s_n < 12 || (s_n % 2048) == 0) {
    }
    s_n++;
}

/* DIAG: picture-index entry matcher (fastcall ecx=idxstruct; stack args
 * {pic, ringsize, ringbase}). Returns steps-to-entry or -1. */
void sub_001AB510_gen(void);
void sub_001AB510(void)
{
    static int s_n = 0;
    uint32_t st = ecx;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    sub_001AB510_gen();
    if (s_n < 10 || (s_n % 1024) == 0) {
    }
    s_n++;
}

/* CRI server pump — shared by the per-frame SetFence hook AND the vblank-wait
 * bridge. */

/* DOA3 DIAG: integrity check of the ADXF partition table for loadfile.afs
 * (block 0x005CE8F8: u16 sector sizes at +0x116, 1102 entries). */
void (*g_kernel_ptinfo_hook)(const char *where);   /* kernel_bridge.c calls it from NtReadFile */
static uint16_t s_pt_ref[1102];
static int s_pt_have = 0, s_pt_reported = 0;
static const char *s_pt_last_ok = "none"; static unsigned s_pt_checks = 0;
void doa3_ptinfo_check(const char *where)
{
    const uint32_t blk = 0x005CE8F8u;
    int i;
    /* OFF unless DOA3_PTCHK=1. This walks 1102 entries and is called from the
     * present/flush/kick/pump/read hooks, i.e. several times a frame. */
    {   static int s_want = -1;
        if (s_want < 0) { const char *e = getenv("DOA3_PTCHK"); s_want = (e && *e == '1'); }
        if (!s_want) return; }
    if (s_pt_reported) return;
    if (!s_pt_have) {
        if (MEM32(0x00C7E1C0 + 4) != blk || MEM16(blk + 0xC) != 1102 ||
            MEM16(blk + 0x116 + 2 * 0x15) != 0x328) return;
        for (i = 0; i < 1102; i++) s_pt_ref[i] = MEM16(blk + 0x116 + 2u * i);
        s_pt_have = 1;
        return;
    }
    {   int first = -1, last = -1, n = 0;
        for (i = 0; i < 1102; i++)
            if (MEM16(blk + 0x116 + 2u * i) != s_pt_ref[i]) { if (first < 0) first = i; last = i; n++; }
        if (first >= 0) {
            void *bt[16]; USHORT nb = CaptureStackBackTrace(0, 16, bt, NULL); int k;
            s_pt_reported = 1;
        } else { s_pt_last_ok = where; s_pt_checks++; }
    }
}

/* ── Override: */
static uint32_t g_sbh_next = 0, g_sbh_end = 0;

/* Size-classed allocator with REAL free (the pure bump version leaked every
 * CRT free -> 45 MB Xbox heap exhausted during the boot screen loads, and... */
#define SBH_MAGIC 0x48334142u
#define SBH_NCLASS 16               /* 32 << 0 .. 32 << 15 (= 1 MB) */
static uint32_t g_sbh_class_head[SBH_NCLASS]; /* header VAs */
static uint32_t g_sbh_large_head = 0;

static uint32_t g_sbh_nalloc = 0, g_sbh_nfree = 0, g_sbh_nforeign = 0;
static uint64_t g_sbh_live = 0;

static uint32_t sbh_bump_raw(uint32_t csz)
{
    extern uint32_t xbox_HeapAllocHigh(uint32_t size, uint32_t alignment);
    if (g_sbh_next == 0 || g_sbh_next + csz > g_sbh_end) {
        uint32_t chunk = 8u * 1024u * 1024u;
        uint32_t base;
        if (csz > chunk) chunk = (csz + 0xFFFFFu) & ~0xFFFFFu;
        base = xbox_HeapAllocHigh(chunk, 16);
        if (!base) return 0;
        g_sbh_next = base; g_sbh_end = base + chunk;
    }
    {   uint32_t p = g_sbh_next; g_sbh_next += csz; return p; }
}

static uint32_t sbh_alloc(uint32_t size)
{
    uint32_t csz = (size + 16u + 15u) & ~15u;   /* payload + header */
    uint32_t hdr = 0;
    int cls;
    if (csz <= (32u << (SBH_NCLASS - 1))) {
        for (cls = 0; (32u << cls) < csz; cls++) ;
        csz = 32u << cls;
        hdr = g_sbh_class_head[cls];
        if (hdr) g_sbh_class_head[cls] = MEM32(hdr + 8);
    } else {
        uint32_t prev = 0, cur = g_sbh_large_head;
        cls = 0xFF;
        csz = (csz + 0xFFFFu) & ~0xFFFFu;
        while (cur) {                       /* first fit, no >2x waste */
            uint32_t sz = MEM32(cur + 4);
            if (sz >= csz && sz <= csz * 2) {
                if (prev) MEM32(prev + 8) = MEM32(cur + 8);
                else      g_sbh_large_head = MEM32(cur + 8);
                hdr = cur; csz = sz; break;
            }
            prev = cur; cur = MEM32(cur + 8);
        }
    }
    if (!hdr) {
        hdr = sbh_bump_raw(csz);
        if (!hdr) return 0;
    }
    MEM32(hdr) = SBH_MAGIC;
    MEM32(hdr + 4) = csz;
    MEM32(hdr + 8) = (uint32_t)cls;
    MEM32(hdr + 12) = 0;
    g_sbh_nalloc++; g_sbh_live += csz;
    return hdr + 16;
}

void sub_0018E2DE(void)   /* __sbh_alloc_block(desc, flags, size), stdcall */
{
    uint32_t size = MEM32(esp + 12);
    eax = sbh_alloc(size);
    esp += 16;
}

static void sbh_free(uint32_t block)
{
    if (block < 32) return;
    uint32_t hdr = block - 16;
    if (MEM32(hdr) != SBH_MAGIC) { g_sbh_nforeign++; return; } /* foreign/corrupt: leak */
    MEM32(hdr) = SBH_MAGIC + 1;             /* poison against double free */
    uint32_t cls = MEM32(hdr + 8);
    g_sbh_nfree++; g_sbh_live -= MEM32(hdr + 4);
    if (cls < SBH_NCLASS) {
        MEM32(hdr + 8) = g_sbh_class_head[cls];
        g_sbh_class_head[cls] = hdr;
    } else {
        MEM32(hdr + 8) = g_sbh_large_head;
        g_sbh_large_head = hdr;
    }
}

/* __sbh_free_block(desc, flags, block) — called by the CRT free front
 * sub_0018B857. Was a no-op (blocks leaked). stdcall ret 12 -> esp += 16. */
void sub_0018EA60(void)
{
    sbh_free(MEM32(esp + 12));
    eax = 1;
    esp += 16;
}

/* ── Override: */
void sub_0018DEBA(void)
{
    eax = xbox_HeapAlloc(0x2000, 16);  /* 8 KB zeroed; ~0x600 used by descriptor */
    esp += 28;                          /* pop dummy return (4) + 6 args (24) */
}

/* sub_001F13AF -- IDirectSoundBuffer::Release() adjustor thunk (`push eax;
 * call [vtbl+8]; */
void sub_001F13AF_gen(void);
void sub_001F13AF(void)
{
    uint32_t ei = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001F13AF_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    esp = ei + 4 + 4;   /* dummy return slot + one argument (ret 4) */
}

/* ICALL failure diagnostic (rate-limited). */
static uint64_t g_icall_fail_logged = 0;

/* Census of DISTINCT unresolved indirect-call targets. */
#define ICALL_CENSUS_MAX 256
static struct { uint32_t va; uint32_t hits; } g_icall_census[ICALL_CENSUS_MAX];
static int g_icall_census_n;
static int g_icall_census_overflow;

void recomp_icall_census_dump(void)
{
    int i;
}

void recomp_icall_fail_log(uint32_t va)
{
    int new_target = 0;
    {   int i;
        for (i = 0; i < g_icall_census_n; i++)
            if (g_icall_census[i].va == va) { g_icall_census[i].hits++; break; }
        if (i == g_icall_census_n) {
            if (g_icall_census_n < ICALL_CENSUS_MAX) {
                new_target = 1;
                g_icall_census[g_icall_census_n].va = va;
                g_icall_census[g_icall_census_n].hits = 1;
                g_icall_census_n++;
            } else {
                g_icall_census_overflow = 1;
            }
        }
    }
    if (g_icall_fail_logged < 200 || new_target) {
        if (va == 0) {
            void *bt[10]; int n = CaptureStackBackTrace(1, 10, bt, NULL);
        }
        g_icall_fail_logged++;
    }
}

/* ── Manual override table ────────────────────────────────────────── Map
 * original Xbox VA -> hand-written replacement; */
static const struct {
    uint32_t      xbox_va;
    recomp_func_t func;
} g_manual_funcs[] = {
    { 0u, 0 },  /* sentinel */
};
#define NUM_MANUAL_FUNCS (sizeof(g_manual_funcs) / sizeof(g_manual_funcs[0]))

recomp_func_t recomp_lookup_manual(uint32_t xbox_va)
{
    for (size_t i = 0; i < NUM_MANUAL_FUNCS; i++) {
        if (g_manual_funcs[i].func && g_manual_funcs[i].xbox_va == xbox_va)
            return g_manual_funcs[i].func;
    }
    return NULL;
}

/* DOA3 DIAG: esp balance of the PTS->frame chain under the timecode
 * splitter. Expected net +4 (each returns by popping only the dummy). */
#define ESP_BAL_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        uint32_t ei = esp; static int s_bad = 0, s_n = 0; \
        fn##_gen(); \
        if ((int)(esp - ei) != 4 && s_bad < 12) { s_bad++; \
             \
             } \
        else if (s_n < 3) { s_n++; \
              } \
    }
ESP_BAL_PROBE(sub_001A99B0)
ESP_BAL_PROBE(sub_001B72AE)
ESP_BAL_PROBE(sub_001BA214)
ESP_BAL_PROBE(sub_001BA0AF)
ESP_BAL_PROBE(sub_001BA0EC)
ESP_BAL_PROBE(sub_001BA00F)

/* DOA3 DIAG: sub_0017C3A0 = translate the matrix-stack top (0x00A49220) by
 * (x,y,z) = args. */
void sub_0017C3A0_gen(void);
void sub_0017C3A0(void)
{
    static int s_bad = 0, s_n = 0;
    uint32_t a = MEM32(esp + 4), b = MEM32(esp + 8), c = MEM32(esp + 0xC);
    int nan = ((a & 0x7F800000u) == 0x7F800000u) || ((b & 0x7F800000u) == 0x7F800000u) || ((c & 0x7F800000u) == 0x7F800000u);
    if ((nan && s_bad < 8) || s_n < 3) { if (nan) s_bad++; else s_n++;
        void *bt[10]; USHORT nb = CaptureStackBackTrace(1, 10, bt, NULL); int k;
        float fa, fb, fc; memcpy(&fa, &a, 4); memcpy(&fb, &b, 4); memcpy(&fc, &c, 4);
          }
    sub_0017C3A0_gen();
}

/* D3DDevice_GetBackBuffer (0x001DCE10) and D3DDevice_GetDepthStencilSurface
 * (0x001DD210) must preserve esi/edi/ebx like any cdecl callee. */
#define D3D_ABI_KEEP(name)                                                   \
    void name##_gen(void);                                                   \
    void name(void) {                                                        \
        uint32_t _si = esi, _di = edi, _bx = ebx;                            \
        name##_gen();                                                        \
        if (esi != _si || edi != _di || ebx != _bx) {                        \
            static int s_n = 0;                                              \
            if (s_n < 6) { s_n++;                                            \
                                       \
                 }                                            \
            esi = _si; edi = _di; ebx = _bx;                                 \
        }                                                                    \
    }

/* Sofdec player flag setter: (player, index, value). Index 6 = audio enabled. */
void sub_001A6030_gen(void);
void sub_001A6030(void)
{
    static int n = 0;
    uint32_t pl = MEM32(esp + 4), idx = MEM32(esp + 8), val = MEM32(esp + 12);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    if (idx == 6 && n < 20) { n++;
         }
    sub_001A6030_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
BOOT_MARK2_ABI_ESI(sub_0018B83A)
/* Callee-saved registers restored after the call, as USA does for the same
 * functions (recomp_manual.c BOOT_MARK2_ABI_ESI / ABI_MARK / D3D_ABI_KEEP): */
BOOT_MARK2_ABI_ESI(sub_00049560)
BOOT_MARK2_ABI_ESI(sub_0006DF00)
BOOT_MARK2_ABI_ESI(sub_0006DF70)
BOOT_MARK2_ABI_ESI(sub_0006DFE0)
BOOT_MARK2_ABI_ESI(sub_0006E1A0)
BOOT_MARK2_ABI_ESI(sub_0006F6D0)
BOOT_MARK2_ABI_ESI(sub_00083290)
BOOT_MARK2_ABI_ESI(sub_00084C10)
BOOT_MARK2_ABI_ESI(sub_00087310)
BOOT_MARK2_ABI_ESI(sub_001A7840)
BOOT_MARK2_ABI_ESI(sub_001A80C0)
BOOT_MARK2_ABI_ESI(sub_001A81E0)
BOOT_MARK2_ABI_ESI(sub_001A8240)
BOOT_MARK2_ABI_ESI(sub_001C6AE0)
BOOT_MARK2_ABI_ESI(sub_001C79F0)
BOOT_MARK2_ABI_ESI(sub_001DC3F0)
BOOT_MARK2_ABI_ESI(sub_001DC5E0)
BOOT_MARK2_ABI_ESI(sub_001DCE10)
BOOT_MARK2_ABI_ESI(sub_001DD210)
BOOT_MARK2_ABI_ESI(sub_001DE150)
BOOT_MARK2_ABI_ESI(sub_001DE470)
BOOT_MARK2_ABI_ESI(sub_001DE590)
BOOT_MARK2_ABI_ESI(sub_001DF690)
BOOT_MARK2_ABI_ESI(sub_001DFF50)
/* sub_001E0310 — SetVertexShader(handle), ret 4 (USA sub_001B45F0): its
 * fragments do not balance the stack in USA; */
void sub_001E0310_gen(void);
void sub_001E0310(void)
{
    uint32_t ei = esp, s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001E0310_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    esp = ei + 4 + 4;   /* ret 4 (enforce; fragments) */
}
BOOT_MARK2_ABI_ESI(sub_001E05A0)
BOOT_MARK2_ABI_ESI(sub_001E44C0)
BOOT_MARK2_ABI_ESI(sub_001E926C)
BOOT_MARK2_ABI_ESI(sub_001E927A)
BOOT_MARK2_ABI_ESI(sub_001E9B7E)
BOOT_MARK2_ABI_ESI(sub_001F13E4)
/* sub_001A3380 (eax = handle) — sfdec video-unit loop: its fetch writes the
 * queue record at h + q*0x388 + 0xFB0 with q = [h+0x3DC4]. */
void sub_001A3380_gen(void);
void sub_001A3380(void)
{
    uint32_t h = eax;
    if (h < 0x1000 || h >= 0x8000000u || MEM32(h + 0x3DC4) >= 9u) {
        eax = 0; esp += 4; return;
    }
    sub_001A3380_gen();
}
/* sub_00196D80(stream) — ADX stream refill accounting (USA sub_0016F650):
 * divides 0x20 by the channel count at stream+8, then by 8x the quotient. */
void sub_00196D80_gen(void);
void sub_00196D80(void)
{
    uint32_t s = MEM32(esp + 4);
    if (s < 0x1000 || s >= 0x8000000u || MEM32(s + 8) - 1u >= 0x20u) {
        esp += 4; return;
    }
    sub_00196D80_gen();
}
/* sub_001F42B6 — DirectSound deferred-command pass (this = ecx): moves the
 * list at this+0x6EC to a local list and runs it. */
void sub_001F42B6_gen(void);
void sub_001F42B6(void)
{
    if (ecx < 0x1000 || ecx >= 0x8000000u) {
        esp += 4; return;
    }
    sub_001F42B6_gen();
}
/* sub_001F1F01 — DirectSoundDoWork. Its deferred-command pass (sub_001F1526
 * -> sub_001F42B6) walks the list at [ds+0xC]+0x6EC; */
void sub_001F1F01_gen(void);
void sub_001F1F01(void)
{
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    uint32_t ds = MEM32(0x0020C4F8u);
    if (ds >= 0x1000 && ds < 0x8000000u && MEM32(ds + 0xC) < 0x1000) {
        esp += 4; return;
    }
    sub_001F1F01_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}
BOOT_MARK2_ABI_ESI(sub_001F2084)
BOOT_MARK2_ABI_ESI(sub_001F2AA7)
BOOT_MARK2_ABI_ESI(sub_001F3810)
BOOT_MARK2_ABI_ESI(sub_001F39A7)
BOOT_MARK2_ABI_ESI(sub_001F4964)
BOOT_MARK2_ABI_ESI(sub_001F54A6)
BOOT_MARK2_ABI_ESI(sub_001F765C)
BOOT_MARK2_ABI_ESI(sub_001F77E4)
BOOT_MARK2_ABI_ESI(sub_001F7973)
BOOT_MARK2_ABI_ESI(sub_001F7C1F)
BOOT_MARK2_ABI_ESI(sub_001F7F66)
BOOT_MARK2_ABI_ESI(sub_001F8BF2)
BOOT_MARK2_ABI_ESI(sub_001F8C5F)
BOOT_MARK2_ABI_ESI(sub_001F8CC7)
BOOT_MARK2_ABI_ESI(sub_001F8E18)
BOOT_MARK2_ABI_ESI(sub_001F8E72)

/* ── Movies and the CRI server pump ──────────────────────────────────────
 * The USA hooks (recomp_manual.c: */

/* sub_000A47E0(index in eax) -- movie starter. Tell the host presenter
 * which file the game is starting, as the USA hook does. */
void sub_000A47E0_gen(void);
void sub_000A47E0(void)
{
    extern void doa3_movie_select(const char *name);
    uint32_t idx = eax, p;
    char nm[32]; int i;
    p = (idx <= 0x12u) ? MEM32(0x002D4DD8u + idx * 4u) : 0;
    if (!p) p = MEM32(0x002D4DD8u);
    for (i = 0; i < 31; i++) { nm[i] = (char)MEM8(p + i); if (!nm[i]) break; }
    nm[31] = 0;
    doa3_movie_select(nm);
    g_doa3_movie_frames = 0;          /* per movie, as USA (end-of-stream gate) */
    sub_000A47E0_gen();
}

/* sub_000A4C10 -- the game leaves the movie (end of stream or START). Hand
 * the screen back from the host presenter and mark the post-movie state. */
void sub_000A4C10_gen(void);
void sub_000A4C10(void)
{
    extern int  doa3_movie_presenter_active(void);
    extern void doa3_movie_present_finish(void);
    extern void xa2_movie_stop(void);
    extern int  g_doa3_host_movie_ended;
    if (doa3_movie_presenter_active()) {
        xa2_movie_stop();
        g_doa3_host_movie_ended = 1;
        doa3_movie_present_finish();
    }
    sub_000A4C10_gen();
    g_doa3_post_movie = 1;
}

static int jpn_movie_playing(void)
{
    uint32_t mo = MEM32(0x0073C308u);
    return mo >= 0x1000u && mo < 0x08000000u && MEM32(mo + 8) == 2;
}

/* sub_000A4680 — movie frame blit (Sofdec frame -> D3D surface; frame
 * descriptor in ecx, cdecl). USA sub_0009DE90's guard: */
void sub_000A4680_gen(void);
void sub_000A4680(void)
{
    if (!jpn_movie_playing()) { esp += 4; return; }
    sub_000A4680_gen();
}

void doa3_pump_cri_servers(void)
{
    extern void sub_0019A5E0(void);
    extern void sub_0019A640(void);
    extern void sub_0019A660(void);
    extern void sub_00191D60(void);
    if (g_doa3_in_pump) return;               /* no recursive pumping */
    if (MEM32(0x0040C6F8) != 0 || MEM32(0x00C85160) != 0) return;  /* lock held / in server */
    {   /* End of stream, as the USA pump: */
        extern int g_doa3_host_movie_ended;
        extern uint32_t g_doa3_movie_frames;
        uint32_t mo = MEM32(0x0073C308u), h = MEM32(0x00C85148u);
        if (jpn_movie_playing() && h >= 0x1000 && h < 0x8000000u) {
            uint32_t herr = MEM32(h + 0x988);
            if ((herr & 0xFF000000u) == 0xFF000000u && g_doa3_movie_frames > 60) {
                MEM32(h + 0x988) = 0;
                MEM32(mo + 8) = 3;
            } else if (g_doa3_host_movie_ended &&
                       (MEM32(h + 0x40) == 4 || (int)MEM32(h + 0x40) < 0)) {
                /* 4 = PLAYING; < 0 = the decoder's error state (FF00xxxx in
                 * h+0x988): */
                MEM32(h + 0x988) = 0;
                MEM32(h + 0x40) = 6;          /* handle: PLAYEND */
                MEM32(mo + 8) = 3;            /* movie object: finished */
            }
        }
    }
    {   /* keep the window responsive even when server work is skipped */
        extern void doa3_pump_messages(void);
        static unsigned s_mp = 0;
        if ((++s_mp & 7) == 0) doa3_pump_messages();
    }
    g_doa3_in_pump = 1;
    {
        uint32_t saved_esp2 = esp;
        int pt, g, sl;
        for (sl = 0; sl < 4; sl++) {          /* group-5 handler-table sanity sweep */
            uint32_t fa = 0x0040CE50u + 8u * sl;
            uint32_t fn = MEM32(fa);
            if (fn && (fn < 0x00011000u || fn >= 0x00217A00u))
                MEM32(fa) = 0;
        }
        for (pt = 0; pt < 2; pt++) {
            PUSH32(esp, 5);                   /* dispatch ADXM user group 5 */
            PUSH32(esp, 0);
            sub_0019A5E0();
            esp = saved_esp2;
        }
        PUSH32(esp, 0); sub_0019A640(); esp = saved_esp2;   /* ADX main server */
        PUSH32(esp, 0); sub_0019A660(); esp = saved_esp2;   /* mwPly tick */
        if (g_doa3_post_movie) {
            /* CRI file server and the other registered ADXM groups, post-movie
             * only (see the USA pump). */
            PUSH32(esp, 0); sub_00191D60(); esp = saved_esp2;
            for (g = 0; g < 5; g++) {
                uint32_t tbl = 0x0040CDB0u + (uint32_t)g * 32u;
                int has = 0;
                for (sl = 0; sl < 4; sl++) {
                    uint32_t fn = MEM32(tbl + (uint32_t)sl * 8);
                    if (fn >= 0x00011000u && fn < 0x00217A00u) { has = 1; break; }
                }
                if (!has) continue;
                PUSH32(esp, (uint32_t)g);
                PUSH32(esp, 0);
                sub_0019A5E0();
                esp = saved_esp2;
            }
        }
        if (jpn_movie_playing()) {
            /* decode runs on worker fibers: fixed slice budget per frame */
            extern void xbox_fiber_yield(void);
            int yi;
            for (yi = 0; yi < 32; yi++) xbox_fiber_yield();
        } else {
            extern void xbox_fiber_timeslice(void);
            xbox_fiber_timeslice();
        }
        {   /* keep the movie frame on screen while it plays */
            static unsigned s_rpn = 0;
            static int s_was_playing = 0;
            extern void doa3_movie_repaint(void);
            extern void doa3_movie_present_finish(void);
            if (jpn_movie_playing()) {
                if (!s_was_playing) {
                    extern void doa3_movie_arm(void);
                    doa3_movie_arm();
                }
                s_was_playing = 1;
                if ((++s_rpn & 1) == 0) doa3_movie_repaint();
            } else if (s_was_playing) {
                s_was_playing = 0;
                doa3_movie_present_finish();
            }
        }
        esp = saved_esp2;
    }
    g_doa3_in_pump = 0;
}

/* ── Not ported yet: inert stubs so the runtime links ──────────── */
/* doa3_netplay_force_pads: online only; the XInput pad block layout changed in XDK 4134 (0x5E5CC8 -> 0x73C6BC sits 0xC below the pads, not 8) */
void doa3_netplay_force_pads(uint32_t mask) { }
/* doa3_rebuild_button_maps: sub_000BB270: code address with no JPN counterpart */
void doa3_rebuild_button_maps(void) { }


/* ── D3D push buffer (XDK 4134) ──────────────────────────────────────────
 * The USA overrides of CDevice_KickOff, MakeSpace, the fence wait and... */
#define JPN_PDEVICE   0x001EDE80u   /* D3D__pDevice */
#define JPN_PB_MARGIN 0x1000u

static void jpn_pb_adopt(uint32_t dev)
{
    uint32_t base = MEM32(dev + 0x24), end = MEM32(dev + 0x28);
    if (base && end > base + 2 * JPN_PB_MARGIN && g_doa3_pb_base != base) {
        g_doa3_pb_base = base;
        g_doa3_pb_end  = end;
        g_pb_parsed    = base;
    }
}

/* CDevice_KickOff (0x1E27C0) -- fastcall (ecx=this), ret 0. */
void sub_001E27C0(void)
{
    uint32_t ctx = ecx;
    if (ctx && ctx < 0x08000000u) {
        uint32_t cursor = doa3_pb_recording(ctx) ? MEM32(ctx + 0x35C) : MEM32(ctx);
        uint32_t notifier = MEM32(ctx + 0x2264);
        jpn_pb_adopt(ctx);
        /* Translate the push-buffer commands written since the last kick. */
        if (g_doa3_pb_base && cursor >= g_doa3_pb_base && cursor <= g_doa3_pb_end) {
            if (g_pb_parsed < g_doa3_pb_base || g_pb_parsed > cursor)
                g_pb_parsed = g_doa3_pb_base;        /* (re)sync after a wrap */
            if (cursor > g_pb_parsed) {
                doa3_translate_pb(g_pb_parsed, cursor);
                g_pb_parsed = cursor;
            }
        }
        /* Publish the write cursor as both PUT and GET: the translation is
         * synchronous, so the GPU has consumed everything. */
        if (notifier && (notifier < 0xF0000000u ||
                         (notifier >= 0xFD000000u && notifier < 0xFE000000u))) {
            MEM32(notifier + 0x40) = cursor & 0x07FFFFFFu;
            MEM32(notifier + 0x44) = cursor & 0x07FFFFFFu;
        }
        {   uint32_t fptr = MEM32(ctx + 0x34);   /* GPU fence word = CPU counter */
            if (fptr && fptr < 0xF0000000u) MEM32(fptr) = MEM32(ctx + 0x30);
        }
        MEM32(ctx + 0x2C)   = cursor;
        MEM32(ctx + 0x2458) = MEM32(ctx + 0x2ABC);
        MEM32(ctx + 0x2AB8) = MEM32(ctx + 0x40);
    }
    esp += 4;   /* ret 0 */
}

/* The make-space core every 4134 space check ends in (0x1E2A50; USA
 * CDevice_MakeSpace 0x1B8B00): */
void sub_001E2A50(void)
{
    uint32_t dev = MEM32(JPN_PDEVICE);
    if (dev && dev < 0x04000000u && doa3_pb_recording(dev)) {
        eax = doa3_pb_makespace_recording(dev);
        esp += 12;  /* fake-ret slot + ret 8 */
        return;
    }
    if (dev && dev < 0x04000000u) {
        jpn_pb_adopt(dev);
        if (g_doa3_pb_base) {
            doa3_pb_wrap(dev, "MakeSpace");
            MEM32(dev + 4) = g_doa3_pb_end - JPN_PB_MARGIN;   /* segment limit */
        }
    }
    eax = dev ? MEM32(dev) : 0;
    esp += 12;  /* fake-ret slot + ret 8 */
}

/* Fence wait (0x1E2960; USA 0x1B8A10): spins until the GPU fence word
 * [[dev+0x34]] catches the fence. */
void sub_001E2960(void)
{
    esp += 12;  /* fake-ret slot + ret 8 */
}

/* D3D_SetFence (0x1E28B0) wrapper; D3DDevice_Swap calls it with arg == 2 once
 * per frame, our frame boundary. As the USA wrapper: */
void sub_001E28B0_gen(void);
void sub_001E28B0(void)
{
    extern void pgraph_d3d11_flush(void);
    extern void doa3_present_frame(void);
    extern void doa3_pump_cri_servers(void);
    extern recomp_func_t recomp_lookup(uint32_t xbox_va);
    extern recomp_func_t recomp_lookup_manual(uint32_t xbox_va);
    uint32_t arg = MEM32(esp + 4);
    uint32_t _sv_esi = esi, _sv_edi = edi, _sv_ebx = ebx;
    sub_001E28B0_gen();                       /* real D3D_SetFence (its own ret 4) */
    if (arg == 2) {
        uint32_t dev = MEM32(JPN_PDEVICE);
        pgraph_d3d11_flush();
        doa3_present_frame();
        if (dev && dev < 0x04000000u) {
            uint32_t cnt = MEM32(dev + 0x245C) + 1;
            uint32_t cb  = MEM32(dev + 0x242C);
            MEM32(dev + 0x245C) = cnt;
            MEM32(dev + 0x2430 + 4) = 1;          /* KEVENT.SignalState */
            xbox_fiber_wake(dev + 0x2430);
            if (cb) {
                recomp_func_t fn = recomp_lookup_manual(cb);
                if (!fn) fn = recomp_lookup(cb);
                if (fn) {
                    uint32_t saved_esp = esp, data;
                    esp -= 16;                    /* D3DVBLANKDATA on the guest stack */
                    data = esp;
                    MEM32(data)     = cnt;
                    MEM32(data + 4) = MEM32(dev + 0x2458);
                    MEM32(data + 8) = 0;
                    PUSH32(esp, data);
                    PUSH32(esp, 0);               /* dummy return address */
                    fn();
                    esp = saved_esp;
                }
            }
        }
        doa3_pump_cri_servers();
    }
    esi = _sv_esi; edi = _sv_edi; ebx = _sv_ebx;
}
