/**
 * Dead or Alive 3 - Manually implemented / overridden recompiled functions
 *
 * Functions the automatic recompiler can't handle correctly (mid-function
 * entry points, hardware register polls, SEH continuations, etc.) are
 * hand-written here using the same register model and calling conventions
 * as the generated code, then registered in g_manual_funcs[] so RECOMP_ICALL
 * and the dispatch chain pick them up ahead of the generated versions.
 *
 * This starts empty. Add overrides during boot bring-up; record each one in
 * doa3/CLAUDE.md under "Manual Function Overrides" so it survives a regen.
 */

#define RECOMP_GENERATED_CODE
#include "gen/recomp_funcs.h"
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>

   /* CaptureStackBackTrace (SBH alloc-loop diagnostics) */

extern uint32_t xbox_HeapAlloc(uint32_t size, uint32_t alignment);
extern void xbox_fiber_yield(void);
extern int  xbox_fiber_active(void);
extern void xbox_fiber_wake(uint32_t event_va);

/* sub_0016D330 — CRI ADXF partition-create wrapper.
 * DOA3 calls sub_00169660(name, 0xFFFFFFFF, buffer=0, size=0) to create CRI
 * partitions. With flags=0xFFFFFFFF the gen takes the "caller supplies the work
 * buffer" path and reads buffer=arg3(esp+0xC) and size=arg4(esp+0x10) — both 0 — so
 * its size check (nameLen <= size) fails and the partition (and thus ALL asset
 * loading) fails. Supply a real work buffer when the game passes 0/0 so the gen
 * creates a valid partition; the CRI then reads the AFS via kernel file I/O.
 * The gen body (renamed sub_0016D330_gen) does the Xbox stack cleanup. */
void sub_0016D330(void)
{
    extern void sub_0016D330_gen(void);
    if (MEM32(esp + 0xC) == 0) {                  /* arg3 = work buffer ptr */
        uint32_t buf = xbox_HeapAlloc(0x40000, 16);   /* 256 KB partition metadata */
        MEM32(esp + 0xC)  = buf;                   /* arg3 = buffer */
        MEM32(esp + 0x10) = 0x40000;               /* arg4 = size */
        fprintf(stderr, "[CRI] partition buffer supplied: 0x%08X (256KB)\n", buf);
        fflush(stderr);
    }
    sub_0016D330_gen();
}

/* sub_00170330 — CRI vsprintf logger; the main thread's CRI poll (sub_00169150)
 * reaches it every failed iteration. Wrap it to yield to the CRI worker fibers so
 * the busy-wait poll cooperatively schedules them. Gen body renamed _gen. */
void sub_00170330(void)
{
    extern void sub_00170330_gen(void);
    /* VBLANK emulation (cxbx-verified): on real hardware the GPU vblank interrupt's
     * D3D DPC (0x1BB0F0) does KeSetEvent(0x001C2CF0) every frame, and the CRI ADX
     * server threads (sub_0016A570/5E0) wait on exactly that event to pump async
     * file/stream I/O. We have no GPU interrupt, so pulse the vblank event at this
     * yield point (the main thread's CRI poll) before switching to the workers. */
    MEM32(0x001C2CF0 + 4) = 1;              /* KEVENT.SignalState = 1 */
    xbox_fiber_wake(0x001C2CF0);
    {   /* DIAG: are the ADXM server callbacks registered? (one-shot + on change) */
        static uint32_t s_cb0 = 0xDEAD, s_cb1 = 0xDEAD;
        uint32_t cb0 = MEM32(0xB254F0), cb1 = MEM32(0xB254F8);
        if (cb0 != s_cb0 || cb1 != s_cb1) {
            s_cb0 = cb0; s_cb1 = cb1;
            fprintf(stderr, "[ADXM-SRV] cb0=0x%08X(arg 0x%08X) cb1=0x%08X(arg 0x%08X)\n",
                    cb0, MEM32(0xB254F4), cb1, MEM32(0xB254FC));
            fflush(stderr);
        }
    }
    if (xbox_fiber_active())
        xbox_fiber_yield();
    sub_00170330_gen();
    {   /* DIAG: surface the CRI's formatted log text (buffer 0xC03220), deduped. */
        extern ptrdiff_t g_xbox_mem_offset;
        const char *msg = (const char *)((uintptr_t)0xC03220 + g_xbox_mem_offset);
        static char s_last[256];
        if (msg[0] && strncmp(msg, s_last, sizeof(s_last) - 1) != 0) {
            strncpy(s_last, msg, sizeof(s_last) - 1); s_last[sizeof(s_last) - 1] = 0;
            fprintf(stderr, "[CRI-LOG] %.200s\n", msg); fflush(stderr);
            static int dumped = 0;
            if (!dumped && (strstr(msg, "device") || strstr(msg, "cvFs"))) {
                dumped = 1;
                char dd[16]; int i; for (i = 0; i < 15; i++) { dd[i] = (char)MEM8(0xB24FE0 + i); if (!dd[i]) break; } dd[15] = 0;
                fprintf(stderr, "[CRI-DEV] default-device='%s' count@0xB25464=%u\n", dd, MEM32(0xB25464));
                for (int s = 0; s < 4; s++) {
                    uint32_t ent = 0xB25260 + s * 0x10;
                    char nm[16]; for (i = 0; i < 15; i++) { nm[i] = (char)MEM8(ent + 4 + i); if (!nm[i]) break; } nm[15] = 0;
                    fprintf(stderr, "   slot%d struct=0x%08X name='%s'\n", s, MEM32(ent), nm);
                }
                fflush(stderr);
            }
        }
    }
}

/* ── XAPI fiber API → host fibers ─────────────────────────────────────────
 * DOA3 runs its game tasks (boot screens, intro, menus — sub_0009E422-registered
 * handlers) as XAPI fibers switched from the per-frame dispatcher sub_0009E69A.
 * The recompiled SwitchToFiber (sub_00164FEF) swaps the Xbox stack pointer but
 * its `ret` maps to a C return — control can NEVER transfer to the fiber, so no
 * game task ever ran. Back the three XAPI entry points with the host cooperative
 * fiber layer (xbox_fiber.c direct-switch coroutines). Handles are encoded as
 * 0xF1BE0000|index; any foreign handle (e.g. the ConvertThreadToFiber main-fiber
 * pointer stored at 0x5E5C48) means "switch back to the dispatcher fiber". */
extern int  xbox_fiber_create_dormant(uint32_t routine_va, uint32_t param);
extern void xbox_fiber_destroy(int idx);
extern void xbox_fiber_switch_direct(int idx);
extern int  xbox_fiber_current(void);
#define XFIBER_TAG  0xF1BE0000u

/* CreateFiber(stack_size, start_routine, param) — stdcall ret 12. */
void sub_00164F50(void)
{
    extern uint32_t g_eax, g_esp;
    uint32_t routine = MEM32(g_esp + 8);
    uint32_t param   = MEM32(g_esp + 0xC);
    int idx = xbox_fiber_create_dormant(routine, param);
    static int n = 0;
    if (n < 24) { fprintf(stderr, "[XFIBER] create routine=0x%08X param=0x%08X -> #%d\n", routine, param, idx); fflush(stderr); n++; }
    g_eax = (idx > 0) ? (XFIBER_TAG | (uint32_t)idx) : 0;
    g_esp += 16;
}

/* DeleteFiber(handle) — stdcall ret 4. */
void sub_00164FDC(void)
{
    extern uint32_t g_esp;
    uint32_t h = MEM32(g_esp + 4);
    if ((h & 0xFFFF0000u) == XFIBER_TAG)
        xbox_fiber_destroy((int)(h & 0xFFFF));
    g_esp += 8;
}

/* SwitchToFiber(handle) — stdcall ret 4. Completes the call frame FIRST, then
 * transfers; when something switches back here, we return normally. */
void sub_00164FEF(void)
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

/* Boot-progress markers: the four init calls after sub_0009F730 in sub_000A0680.
 * One of them loops forever (frame-pumping wait); the markers show which. */
#define BOOT_MARK(name) \
    void name(void) { \
        extern void name##_gen(void); \
        static int n = 0; \
        int log = (n < 4); n++; \
        if (log) { fprintf(stderr, "[BOOTMARK] " #name " enter\n"); fflush(stderr); } \
        name##_gen(); \
        if (log) { fprintf(stderr, "[BOOTMARK] " #name " exit\n"); fflush(stderr); } \
    }
BOOT_MARK(sub_0009EA60)
BOOT_MARK(sub_0009DC00)
BOOT_MARK(sub_0009E59C)
BOOT_MARK(sub_0009DD20)
#undef BOOT_MARK

/* sub_001C7457 — DSOUND stream play/start (IDirectSoundStream-style; pumps the ADX
 * PCM-supply callback synchronously into the sound buffer and waits on the APU
 * voice — which our APU emulation doesn't advance, hanging the boot inside
 * sub_0009F730's final ADX stream start). Stub: report success without playing
 * (silent audio). RENDERING FIRST — restore when the APU voice path works.
 * stdcall ret 12 (gen does esp += 16 including the dummy). */
void sub_001C7457(void)
{
    extern uint32_t g_eax, g_esp;
    static int n = 0;
    if (n < 8) { fprintf(stderr, "[DS-PLAY] stream start stubbed (this=0x%08X)\n", MEM32(g_esp + 4)); fflush(stderr); n++; }
    /* RE-STUBBED (2026-07-02): the real implementation starts an APU voice our
     * emulation never advances -> the DSOUND per-frame service spins on QPC
     * polls (with residual esp leaks in its mis-lifted loop) until the main
     * stack underflows into the game BSS. Silent audio until the APU voice
     * path works — RENDERING FIRST. */
    g_eax = 0;          /* DS_OK */
    g_esp += 16;        /* args(12) + dummy return(4) */
}

/* sub_00168DE0 — ADXF op GetStat (used by the game's own load-wait spins, e.g.
 * sub_0007FFDD). Same vblank pulse + yield as the sub_0016916F wrapper so the CRI
 * worker fibers run while the main thread polls (see that wrapper for the cxbx
 * evidence: the GPU vblank DPC KeSetEvents 0x001C2CF0 every frame). */
void sub_00168DE0(void)
{
    extern void sub_00168DE0_gen(void);
    MEM32(0x001C2CF0 + 4) = 1;
    xbox_fiber_wake(0x001C2CF0);
    {   /* load-wait spin: keep the window serviced (no presents here) */
        extern void doa3_pump_messages(void);
        static unsigned s_mp3 = 0;
        if ((++s_mp3 & 63) == 0) doa3_pump_messages();
    }
    if (xbox_fiber_active())
        xbox_fiber_yield();
    sub_00168DE0_gen();
}

/* sub_00163134 — XAPI ReadFileEx(hFile, buf, len, overlapped, completion).
 * DIAG: log args, the NtReadFile thunk value, and the result. */
void sub_00163134(void)
{
    extern void sub_00163134_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t hf = MEM32(g_esp + 4), buf = MEM32(g_esp + 8), len = MEM32(g_esp + 0xC);
    uint32_t ov = MEM32(g_esp + 0x10);
    uint32_t thunk = MEM32(0x1ED0F4);
    sub_00163134_gen();
    static int n = 0;
    if (n < 10) { fprintf(stderr, "[ReadFileEx] h=0x%X buf=0x%08X len=0x%X ov=0x%08X thunk219=0x%08X -> %u\n", hf, buf, len, ov, thunk, g_eax); fflush(stderr); n++; }
}

/* sub_0016BB00 — cvFs stream stepper (issues device seek/read for an active stream).
 * DIAG: dump the stream + file-object fields around the call. */
void sub_0016BB00(void)
{
    extern void sub_0016BB00_gen(void);
    extern uint32_t g_esp;
    uint32_t stm = MEM32(g_esp + 4);
    static int n = 0;
    int log = (n < 10);
    if (log && stm) {
        n++;
        uint32_t fo = MEM32(stm + 4);
        fprintf(stderr, "[STM-STEP] stm=0x%08X st2=%u file=0x%08X pos0C=0x%X sz14=0x%X f18=0x%X f1C=0x%X f20=0x%X f28=0x%X f2C=0x%X f30=0x%X\n",
                stm, MEM8(stm + 2), fo, MEM32(stm + 0xC), MEM32(stm + 0x14),
                MEM32(stm + 0x18), MEM32(stm + 0x1C), MEM32(stm + 0x20),
                MEM32(stm + 0x28), MEM32(stm + 0x2C), MEM32(stm + 0x30));
        fflush(stderr);
    }
    sub_0016BB00_gen();
}

/* sub_001719E0 — WX per-handle request processor (runs on the worker each vblank).
 * DIAG: log the handle's gates: state byte +1 (2 = read pending), +0x148 (request
 * flag), 0xB2561C (reentry lock), 0xB25618 (async mode). */
void sub_001719E0(void)
{
    extern void sub_001719E0_gen(void);
    extern uint32_t g_esp;
    uint32_t h = MEM32(g_esp + 4);
    static uint32_t s_sig = 0xFFFFFFFF; static int n = 0;
    if (h && MEM8(h)) {
        uint32_t sig = (MEM8(h + 1) << 24) | (MEM32(h + 0x148) << 16) | (MEM32(0xB25618) & 0xFFFF);
        if (sig != s_sig && n < 24) {
            s_sig = sig; n++;
            fprintf(stderr, "[WX-REQ] h=0x%08X active=%u st=%u req148=%u lock=%u async=%u pos18=0x%X len1C=0x%X\n",
                    h, MEM8(h), MEM8(h + 1), MEM32(h + 0x148),
                    MEM32(0xB2561C), MEM32(0xB25618), MEM32(h + 0x18), MEM32(h + 0x1C));
            fflush(stderr);
        }
    }
    sub_001719E0_gen();
}

/* sub_00169BC0 — ADX master server (runs on the CRI worker fibers each vblank).
 * DIAG: count runs; dump the ADXSTM stream pool (0xC0C540, stride 0xA4) and the
 * ADXF op-pool entry states periodically. */
void sub_00169BC0(void)
{
    extern void sub_00169BC0_gen(void);
    static long n = 0;
    n++;
    sub_00169BC0_gen();
    if (n == 1 || n == 50 || n == 2000) {
        fprintf(stderr, "[ADX-SRV] run #%ld; cvFs-streams:", n);
        for (int i = 0; i < 40; i++) {
            uint32_t ent = 0xC05AC0 + i * 0x40;   /* cvFs stream pool (sub_0016BD20) */
            if (!MEM8(ent) && !MEM32(ent + 0x14)) continue;   /* skip empty slots */
            fprintf(stderr, " [%d]a=%u,st=%u,sz=0x%X,h=0x%X,pos=0x%X", i,
                    MEM8(ent), MEM8(ent + 1), MEM32(ent + 0x14), MEM32(ent + 8), MEM32(ent + 0xC));
        }
        uint32_t op = MEM32(0xC07620);
        fprintf(stderr, "  op=0x%08X st=%d fsz=0x%X done=0x%X stm4=0x%08X stm8=0x%08X\n",
                op, op ? (int)(int8_t)MEM8(op + 1) : -1,
                op ? MEM32(op + 0xC) : 0, op ? MEM32(op + 0x14) : 0,
                op ? MEM32(op + 4) : 0, op ? MEM32(op + 8) : 0);
        {   /* the stream's FILE object + its vtbl (stream+4 -> file, file+0 -> vtbl) */
            uint32_t stm = op ? MEM32(op + 4) : 0;
            uint32_t fo = stm ? MEM32(stm + 4) : 0;
            uint32_t vt = fo ? MEM32(fo) : 0;
            fprintf(stderr, "  file=0x%08X vtbl=0x%08X:", fo, vt);
            if (vt) for (int k = 0; k <= 0x28; k += 4)
                fprintf(stderr, " +%02X=0x%08X", k, MEM32(vt + k));
            fprintf(stderr, "  stm+2=%u\n", stm ? MEM8(stm + 2) : 0);
        }
        fflush(stderr);
    }
}

/* sub_001715A0 — wxCi real size query (stats the file by NAME via sub_001633B7).
 * DIAG: log the name + result. */
void sub_001715A0(void)
{
    extern void sub_001715A0_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = name ? (char)MEM8(name + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_001715A0_gen();
    static int n = 0;
    if (n < 12) { fprintf(stderr, "[wxCiSize] name=0x%08X '%s' -> 0x%08X\n", name, nm, g_eax); fflush(stderr); n++; }
}

/* sub_001633B7 — XAPI GetFileAttributesExA-like stat. DIAG: log name + result. */
void sub_001633B7(void)
{
    extern void sub_001633B7_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = name ? (char)MEM8(name + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_001633B7_gen();
    static int n = 0;
    if (n < 12) { fprintf(stderr, "[GetAttrEx] '%s' -> 0x%08X\n", nm, g_eax); fflush(stderr); n++; }
}

/* sub_0016916F — ADXF op processor (state machine). DIAG: log op-state transitions +
 * the AFS header buffer when the state reaches the header check, to find which state
 * swallows the read. */
void sub_0016916F(void)
{
    extern void sub_0016916F_gen(void);
    extern uint32_t g_eax;
    uint32_t op = MEM32(0xC07620);
    int st_in = op ? (int)(int8_t)MEM8(op + 1) : -99;
    /* VBLANK emulation at the poll: the main thread spins here waiting for the async
     * load; on real hardware the GPU vblank DPC KeSetEvents 0x001C2CF0 ~60x/s and the
     * CRI worker threads pump the ADX servers on each tick. Pulse + yield so the
     * workers actually run while the main thread polls (see sub_00170330 note). */
    MEM32(0x001C2CF0 + 4) = 1;
    xbox_fiber_wake(0x001C2CF0);
    if (xbox_fiber_active())
        xbox_fiber_yield();
    sub_0016916F_gen();
    uint32_t op2 = MEM32(0xC07620);
    int st_out = op2 ? (int)(int8_t)MEM8(op2 + 1) : -99;
    static int last = -100; static int n = 0;
    if (st_out != last && n < 40) {
        last = st_out; n++;
        uint32_t buf = MEM32(0xB22C1C);
        fprintf(stderr, "[ADXF-OP] state %d -> %d ret=0x%08X hdr@0x%08X: %02X %02X %02X %02X %02X %02X %02X %02X\n",
                st_in, st_out, g_eax, buf,
                MEM8(buf), MEM8(buf+1), MEM8(buf+2), MEM8(buf+3),
                MEM8(buf+4), MEM8(buf+5), MEM8(buf+6), MEM8(buf+7));
        fflush(stderr);
    }
}

/* sub_001631C0 — XAPI CreateFileA(name, access, share, sa, disposition, flags).
 * DIAG: log args + returned handle to see where the CRI's file opens die. */
void sub_001631C0(void)
{
    extern void sub_001631C0_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t fname = MEM32(g_esp + 4);
    uint32_t access = MEM32(g_esp + 8);
    uint32_t disp = MEM32(g_esp + 0x14);
    uint32_t flags = MEM32(g_esp + 0x18);
    char nm[64]; int i; for (i = 0; i < 63; i++) { nm[i] = fname ? (char)MEM8(fname + i) : 0; if (!nm[i]) break; } nm[63] = 0;
    sub_001631C0_gen();
    static int n = 0;
    if (n < 20) { fprintf(stderr, "[CreateFileA] '%s' access=0x%08X disp=%u flags=0x%08X -> 0x%08X\n", nm, access, disp, flags, g_eax); fflush(stderr); n++; }
}

/* sub_0016D0F0 — cvFs partition-table lookup (searches 0xC057C0.. stride 0x30 for an
 * entry whose "%s%s" (prefix+node) matches the requested filename). DIAG: log the
 * requested name, dump the table entries + their nodes, and the result. */
void sub_0016D0F0(void)
{
    extern void sub_0016D0F0_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t want = MEM32(g_esp + 4);
    char wn[64]; int i; for (i = 0; i < 63; i++) { wn[i] = want ? (char)MEM8(want + i) : 0; if (!wn[i]) break; } wn[63] = 0;
    sub_0016D0F0_gen();
    static int n = 0;
    if (n < 6) {
        n++;
        fprintf(stderr, "[PT-LOOKUP] want='%s' -> eax=0x%08X\n", wn, g_eax);
        for (int e = 0; e < 10; e++) {
            uint32_t ent = 0xC057C0 + e * 0x30;
            uint32_t active = MEM32(ent), prefix = MEM32(ent + 0x18);
            uint32_t count = MEM32(ent + 0x24), head = MEM32(ent + 0x28);
            if (!active && !prefix && !head) continue;
            char pf[32]; for (i = 0; i < 31; i++) { pf[i] = prefix ? (char)MEM8(prefix + i) : 0; if (!pf[i]) break; } pf[31] = 0;
            fprintf(stderr, "   ent%d active=%u prefix=0x%08X'%s' count=%d head=0x%08X\n",
                    e, active, prefix, pf, (int)count, head);
            uint32_t nd = head;
            for (int k = 0; k < 4 && nd; k++) {
                uint32_t nm = MEM32(nd + 0xC);
                char nn[40]; for (i = 0; i < 39; i++) { nn[i] = nm ? (char)MEM8(nm + i) : 0; if (!nn[i]) break; } nn[39] = 0;
                fprintf(stderr, "      node 0x%08X name=0x%08X'%s' next=0x%08X\n", nd, nm, nn, MEM32(nd + 8));
                nd = MEM32(nd + 8);
            }
        }
        fflush(stderr);
    }
}

/* sub_0016C970 — cvFs device resolver. The CRI registers named devices (MFS, WX) with WX
 * as the default; WX handles plain drive-letter paths (d:\, z:\, t:\) via the kernel. The
 * resolver only uses the default device when the path has NO prefix, so a drive-letter
 * path like "d:\loadfile.afs" extracts device "d", fails to match MFS/WX, and returns 0 —
 * cvFsOpen then fails. Fall back to the default device for an unresolved single-char drive
 * prefix (the full path is preserved separately and handed to the WX open). */
void sub_0016C970(void)
{
    extern void sub_0016C970_gen(void);
    extern uint32_t g_eax, g_ebx;
    uint32_t devbuf = g_ebx;
    uint8_t c0 = devbuf ? (uint8_t)MEM8(devbuf) : 0;
    uint8_t c1 = devbuf ? (uint8_t)MEM8(devbuf + 1) : 0;
    char dn[16]; int di; for (di = 0; di < 15; di++) { dn[di] = devbuf ? (char)MEM8(devbuf + di) : 0; if (!dn[di]) break; } dn[15] = 0;
    sub_0016C970_gen();
    { static int dn_n = 0; if (dn_n < 12) { fprintf(stderr, "[cvFs-dev] resolve dev='%s' -> eax=0x%08X\n", dn, g_eax); fflush(stderr); dn_n++; } }
    if (g_eax == 0 && c0 && !c1) {        /* single-char drive-letter device not found */
        MEM8(devbuf) = 0;                  /* clear prefix → resolver uses the default device */
        g_ebx = devbuf;
        sub_0016C970_gen();
        static int n = 0;
        if (n < 8) { fprintf(stderr, "[cvFs-dev] '%c:' -> default device, eax=0x%08X\n", c0, g_eax); fflush(stderr); n++; }
    }
}

/* sub_0016CA10 — cvFsOpen wrapper. DIAG: log the filename it's asked to open, to find
 * where ADXF_LoaddPartitionNw's empty AFS filename comes from. */
void sub_0016CA10(void)
{
    extern void sub_0016CA10_gen(void);
    extern uint32_t g_esp;
    uint32_t fname = MEM32(g_esp + 4);
    char nm[48]; int i; for (i = 0; i < 47; i++) { nm[i] = fname ? (char)MEM8(fname + i) : 0; if (!nm[i]) break; } nm[47] = 0;
    static int n = 0;
    if (n < 16) { fprintf(stderr, "[cvFsOpen] fname=0x%08X '%s'\n", fname, nm); fflush(stderr); n++; }
    sub_0016CA10_gen();
}

/* sub_0018FC20 — CRT strncmp(s1, s2, n). The recompiler does not implement the
 * `repne scasb` / `repe cmpsb` REP string instructions it is built from (they were
 * emitted as comments), so the generated body compares garbage and reports unequal
 * strings as equal — which made cvFsAddDev("WX") collide with "MFS". Replace it with
 * a correct strncmp. cdecl, 3 args, caller-cleaned: pop only the dummy return slot. */
void sub_0018FC20(void)
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

/* sub_0016C160 — CRI cvFs device-find-by-name. DIAG wrapper: log the name arg, its
 * content, and the result, to see why cvFsAddDev("WX") thinks the device exists. */
void sub_0016C160(void)
{
    extern void sub_0016C160_gen(void);
    extern uint32_t g_eax, g_esp;
    uint32_t name = MEM32(g_esp + 4);
    char nm[20]; int i; for (i = 0; i < 19; i++) { nm[i] = (char)MEM8(name + i); if (!nm[i]) break; } nm[19] = 0;
    sub_0016C160_gen();
    static int n = 0;
    if (n < 10) { fprintf(stderr, "[C160] find name=0x%08X '%s' -> ret=0x%08X\n", name, nm, g_eax); fflush(stderr); n++; }
}

/* sub_0016A530 — CRI watchdog worker thread (cooperative-fiber override).
 * The original busy-spins incrementing the liveness counter 0xB24D40 until the
 * shutdown flag 0xB24D58 is set, then terminates the thread (sub_00164B6F + int3).
 * A pure busy-spin would starve the cooperative scheduler, so this version yields
 * each iteration. Shutdown never fires during a load, so the loop runs for the
 * lifetime of the CRI; if it ever does, we return and the fiber is marked done. */
void sub_0016A530(void)
{
    extern void xbox_fiber_dump(void);
    unsigned long long it = 0;
    for (;;) {
        if (MEM32(0xB24D58) != 0) break;
        MEM32(0xB24D40) = MEM32(0xB24D40) + 1;
        if (++it == 3000000ULL) {   /* DIAG: once the watchdog is clearly the only runnable fiber, dump the deadlock */
            fprintf(stderr, "[CRI-WD] watchdog-only spin; 0xB24D40=%u 0xB24D44=%u 0xB24D48=%u 0xB24D70=%u\n",
                    MEM32(0xB24D40), MEM32(0xB24D44), MEM32(0xB24D48), MEM32(0xB24D70));
            xbox_fiber_dump();
        }
        xbox_fiber_yield();
    }
    MEM32(0xB24D5C) = 1;
    esp += 4; /* clean ret 0 */
}

/* sub_0009F640 — DirectSound effects-image download (burnout-style override).
 * The boot asset+audio init sub_0009F730 calls, in order: DirectSoundCreate (OK) ->
 * sub_001C6B72 (OK) -> sub_0009F640 (DSP effects download of dsstdfx.bin) -> THEN
 * sub_0009C840 (load loadfile.afs). The real effects download returns -1 here
 * (its DirectSound buffer-slot alloc sub_001599C0 yields 0), which makes sub_0009F730
 * bail out BEFORE loading loadfile.afs, so the game never loads assets / advances.
 * The DSP effects image is non-essential (cxbx logs "DownloadEffectsImage
 * incomplete!" and the real game proceeds anyway). Mirroring burnout3's audio-init
 * stub (recomp_manual.c sub_00135040: "set the ready state directly... so the audio
 * state machine can proceed"), return success and skip the effects download so the
 * asset load proceeds. cdecl, caller cleans the arg -> ret 0. Gen #if 0'd. */
void sub_0009F640(void) { eax = 0; esp += 4; }  /* effects-download skip: the real one
 * loads dsstdfx.bin fine now, but its aftermath bails sub_0009F730 before the AFS
 * loads (tried 2026-07-01) — keep the stub until that gate is understood. */

/* ── CRT memcpy/memmove native overrides (recomp bug #6 casualties) ──────────
 * The XBE has two identical MSVC CRT memcpy implementations (0x18DF40 and
 * 0x18EE90; overlap-safe = memmove semantics). Their trailing-byte dispatch
 * uses intra-function jump tables interleaved with the case bodies, which the
 * recompiler cannot lift (bug #6) — every non-dword-multiple copy lost its
 * tail AND leaked -4 esp per call through the failed RECOMP_ITAIL. Replace
 * natively. cdecl(dst, src, n) -> eax = dst. Gen bodies renamed _oldjt. */
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
void sub_0018DF40(void) { doa3_native_memmove(); }
void sub_0018EE90(void) { doa3_native_memmove(); }

/* DIAG: esp-load chokepoints (longjmp/SEH unwind sites in the gen — the only
 * places that assign esp from memory). site: 1=recomp_0008.c:3548 (longjmp),
 * 2-4=recomp_0009.c (SEH unwind family). */
void doa3_esp_load_log(int site, uint32_t esp_now, uint32_t esp_new)
{
    static int s_n = 0;
    if (s_n < 20) {
        s_n++;
        fprintf(stderr, "[ESP-LOAD site%d] esp 0x%08X -> 0x%08X\n", site, esp_now, esp_new);
        fflush(stderr);
    }
}

/* DIAG: the game-task yield (sub_0009E562) — backtrace every 600th call to
 * pinpoint WHICH sequencer loop each task spins in. */
void sub_0009E562_gen(void);
void sub_0009E562(void)
{
    static int s_n = 0;
    extern int xbox_fiber_current(void);
    extern uint32_t g_task_yields[16];
    {   int fi = xbox_fiber_current();
        if (fi >= 0 && fi < 16) g_task_yields[fi]++; }
    s_n++;
    if (xbox_fiber_current() == 5 && (g_task_yields[5] % 600) == 0) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
        fprintf(stderr, "[YIELD5] #%u a1=%u callers:", g_task_yields[5], MEM32(esp + 4));
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n");
        fflush(stderr);
    }
    sub_0009E562_gen();
}

/* DIAG: per-fiber yield counters, dumped with the fiber dump. */
uint32_t g_task_yields[16];

/* DIAG: per-frame text-draw helper — backtrace every 600 calls to identify
 * WHICH sequencer loop in sub_00021F70 the intro is stuck in. */
void sub_00055760_gen(void);
void sub_00055760(void)
{
    static int s_n = 0;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    s_n++;
    if ((s_n % 600) == 0) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
        fprintf(stderr, "[TXTLOOP] #%d callers:", s_n);
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n");
        fflush(stderr);
    }
    sub_00055760_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}

/* ── XPP (Xbox Peripheral Port) input overrides — host-backed pad 0 ─────────
 * DOA3's boot screens hold forever on the controller-present check (cxbx ran
 * with emulated pads). Report pad 0 connected and serve XInputGetState from
 * the host (src/input xbox_InputGetState; falls back to a neutral pad +
 * keyboard: Enter = START, arrows = d-pad, Z/X = A/B) so the boot flow takes
 * the pad-present path to the intro movie. Gen bodies renamed _gen. */
void sub_001E6958(void)   /* XGetDevices(type) -> connected mask, stdcall ret 4 */
{
    static int s_n = 0;
    if (s_n < 4) { s_n++; fprintf(stderr, "[XPP] XGetDevices(type=0x%08X) -> 1\n", MEM32(esp + 4)); fflush(stderr); }
    /* Pad 0 present (device emulation — the boot's controller-check screen
     * requires a connected pad, exactly like the cxbx oracle's emulated pads;
     * with no input the press-START screen times out into the attract intro
     * movie, which is the rendering path we're bringing up). */
    eax = 1;
    esp += 8;
}
void sub_001E697A(void)   /* XGetDeviceChanges(type, &ins, &rem), stdcall ret 12 */
{
    uint32_t ins = MEM32(esp + 8), rem = MEM32(esp + 0xC);
    if (ins) MEM32(ins) = 0;
    if (rem) MEM32(rem) = 0;
    eax = 0;              /* no changes */
    esp += 16;
}
void sub_001E6E3A(void)   /* XInputOpen(type, port, slot, attrs) -> handle, ret 16 */
{
    uint32_t port = MEM32(esp + 8);
    eax = 0x0AD00001u + port;   /* fake but consistent nonzero handle */
    esp += 20;
}
void sub_001E6EBB(void)   /* XInputGetCapabilities(handle, caps->pad), ret 8 */
{
    /* arg2 is the PAD STRUCT base; the real XAPI writes a 0x19-byte caps blob
     * there whose FIRST byte is the device (sub)type — the game's pad polls
     * check MEM8(pad)==1||2 (gamepad). */
    uint32_t caps = MEM32(esp + 8);
    if (caps) {
        for (int i = 0; i < 0x18; i += 4) MEM32(caps + i) = 0;
        MEM8(caps + 0x18) = 0;
        MEM8(caps) = 1;   /* XINPUT_DEVSUBTYPE_GC_GAMEPAD */
    }
    eax = 0;
    esp += 12;
}
void sub_001E70AD(void)   /* XInputPoll(handle, out) — complete instantly, ret 8 */
{
    /* The real XAPI kicks an async USB read and stores ERROR_IO_PENDING
     * (0x3E5) in the pad's state dword; the per-frame GetState looper
     * (sub_0009EDC0) skips any pad whose marker is 0x3E5 until the USB
     * completion clears it. We have no USB machinery — mark the poll
     * complete so GetState (our host-backed override) actually runs. */
    for (int i = 0; i < 4; i++) {
        uint32_t st = 0x5E5CFF + 0x80u * i;
        if (MEM32(st) == 0x3E5) MEM32(st) = 0;
    }
    eax = 0;
    esp += 12;
}
void sub_001E711E(void)   /* XInputGetState(handle, state) -> 0, ret 8 */
{
    uint32_t st = MEM32(esp + 8);
    static uint32_t s_packet = 0x1000;   /* never collide with the 0x3E5
                                          * IO_PENDING marker */
    s_packet++;
    if (st) {
        uint16_t buttons = 0;
        uint8_t a = 0, b = 0;
        int16_t lx = 0, ly = 0;
        /* host XInput pad 0 if present */
        {
            typedef struct { uint32_t pkt; uint16_t btn; uint8_t an[8];
                             int16_t tlx, tly, trx, try_; } HostSt;
            extern DWORD xbox_InputGetState(DWORD, void *);
            uint8_t raw[32] = {0};
            if (xbox_InputGetState(0, raw) == 0) {
                buttons = *(uint16_t *)(raw + 4);
                a = raw[6]; b = raw[7];
                lx = *(int16_t *)(raw + 14); ly = *(int16_t *)(raw + 16);
            }
        }
        /* keyboard fallback/overlay (user-driven only — no synthetic input) */
        if (GetAsyncKeyState(VK_RETURN) & 0x8000) buttons |= 0x0010;  /* START */
        if (GetAsyncKeyState(VK_UP)     & 0x8000) buttons |= 0x0001;
        if (GetAsyncKeyState(VK_DOWN)   & 0x8000) buttons |= 0x0002;
        if (GetAsyncKeyState(VK_LEFT)   & 0x8000) buttons |= 0x0004;
        if (GetAsyncKeyState(VK_RIGHT)  & 0x8000) buttons |= 0x0008;
        if (GetAsyncKeyState('Z') & 0x8000) a = 255;
        if (GetAsyncKeyState('X') & 0x8000) b = 255;
        {   static int s_log = 0;
            if (buttons && s_log < 6) {
                s_log++;
                fprintf(stderr, "[XPP-ST] #%u st=0x%08X buttons=%04X\n", s_packet, st, buttons);
                fflush(stderr);
            }
        }
        MEM32(st) = s_packet;          /* dwPacketNumber */
        MEM16(st + 4) = buttons;       /* wButtons */
        MEM8(st + 6) = a;              /* A */
        MEM8(st + 7) = b;              /* B */
        for (int i = 8; i < 14; i++) MEM8(st + i) = 0;
        MEM16(st + 14) = (uint16_t)lx; /* sThumbLX */
        MEM16(st + 16) = (uint16_t)ly; /* sThumbLY */
        MEM16(st + 18) = 0;
        MEM16(st + 20) = 0;
    }
    eax = 0;    /* ERROR_SUCCESS */
    esp += 12;
}

/* DIAG: cvFs device-range writers — the device table "count" (0xB25460/64)
 * goes to an empty range during the boot-phase transition, killing every
 * subsequent file open ('resolve dev="" -> 0', 'ptid range outside'). Trace
 * who resets it and with what values. */
/* DIAG: cvFsSetDefDev (sub_0016C8C0) - the default-device name at 0xB24FE0
 * gets CLEARED during the boot-phase transition (its failure path writes a
 * 0 byte), killing all subsequent default-device opens. Log the requested
 * name + result + the default before/after. */
void sub_0016C8C0_gen(void);
void sub_0016C8C0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4);
    char name[24] = {0};
    for (int i = 0; i < 23 && a1; i++) { name[i] = (char)MEM8(a1 + i); if (!name[i]) break; }
    char pre[24] = {0};
    for (int i = 0; i < 23; i++) { pre[i] = (char)MEM8(0xB24FE0 + i); if (!pre[i]) break; }
    sub_0016C8C0_gen();
    s_n++;
    if (s_n <= 12) {
        char post[24] = {0};
        for (int i = 0; i < 23; i++) { post[i] = (char)MEM8(0xB24FE0 + i); if (!post[i]) break; }
        void *bt[5]; int n = CaptureStackBackTrace(1, 5, bt, NULL);
        fprintf(stderr, "[SETDEF] #%d name='%s' pre='%s' post='%s' eax=0x%08X callers:", s_n, name, pre, post, eax);
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n"); fflush(stderr);
    }
}

void sub_0016C750_gen(void);
void sub_0016C750(void)
{
    static int s_n = 0;
    s_n++;
    if (s_n <= 8) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
        fprintf(stderr, "[DEVRNG] sub_0016C750 #%d a1=0x%08X a2=0x%08X pre60=0x%08X pre64=0x%08X callers:",
                s_n, MEM32(esp + 4), MEM32(esp + 8), MEM32(0xB25460), MEM32(0xB25464));
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n"); fflush(stderr);
    }
    sub_0016C750_gen();
}

void sub_0016C767_gen(void);
void sub_0016C767(void)
{
    static int s_n = 0;
    s_n++;
    if (s_n <= 8) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
        fprintf(stderr, "[DEVRNG] sub_0016C767 #%d a1=0x%08X a2=0x%08X pre60=0x%08X pre64=0x%08X callers:",
                s_n, MEM32(esp + 4), MEM32(esp + 8), MEM32(0xB25460), MEM32(0xB25464));
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n"); fflush(stderr);
    }
    sub_0016C767_gen();
}

void sub_0016C0F0_gen(void);
void sub_0016C0F0(void)
{
    static int s_n = 0;
    s_n++;
    if (s_n <= 8) {
        void *bt[6]; int n = CaptureStackBackTrace(1, 6, bt, NULL);
        fprintf(stderr, "[DEVRNG] sub_0016C0F0 #%d a1=0x%08X a2=0x%08X pre60=0x%08X pre64=0x%08X callers:",
                s_n, MEM32(esp + 4), MEM32(esp + 8), MEM32(0xB25460), MEM32(0xB25464));
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n"); fflush(stderr);
    }
    sub_0016C0F0_gen();
}


/* DIAG: LDW (load-work) op creation — the boot content load (fonts/screen
 * textures) never happens: sub_0009F730 kicks sub_0007FFB0(0x3BE, cfg) ->
 * sub_0007E720 creates the op, but phase op stayed 0. Log args/results. */
void sub_0007E720_gen(void);
void sub_0007E720(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_0007E720_gen();
    s_n++;
    if (s_n <= 10) {
        fprintf(stderr, "[LDW-OP] #%d a1=0x%08X a2=0x%08X -> eax=0x%08X (op tbl0=0x%08X)\n",
                s_n, a1, a2, eax, MEM32(0x4A10A8));
        fflush(stderr);
    }
}
void sub_0007FFB0_gen(void);
void sub_0007FFB0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_0007FFB0_gen();
    s_n++;
    if (s_n <= 10) {
        fprintf(stderr, "[LDW-KICK] #%d a1=0x%08X a2=0x%08X -> phase=0x%08X\n",
                s_n, a1, a2, MEM32(0x4A1004));
        fflush(stderr);
    }
}

/* DIAG: screen-element/texture-bind chain counters (draws=0 root hunt). */
#define CALL_COUNT_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        s_n++; \
        if (s_n <= 3 || (s_n % 5000) == 0) { \
            fprintf(stderr, "[CNT] " #fn " #%d a1=0x%08X ecx=0x%08X\n", s_n, MEM32(esp + 4), ecx); \
            fflush(stderr); } \
        fn##_gen(); \
    }
CALL_COUNT_PROBE(sub_0008038C)
CALL_COUNT_PROBE(sub_000804EB)
CALL_COUNT_PROBE(sub_0006B7E0)
CALL_COUNT_PROBE(sub_0006AAA0)
CALL_COUNT_PROBE(sub_0006AD20)
CALL_COUNT_PROBE(sub_0006ACD0)
CALL_COUNT_PROBE(sub_0006AADC)
CALL_COUNT_PROBE(sub_0006AD6A)
CALL_COUNT_PROBE(sub_001C6740)
CALL_COUNT_PROBE(sub_00173B20)   /* wxCi cache-copy stream starter */
CALL_COUNT_PROBE(sub_0009DF60)   /* intro movie starter */
CALL_COUNT_PROBE(sub_00176580)   /* Sofdec movie player create */
/* sub_0009DE90 — movie frame blit (Sofdec frame -> D3D surface upload via
 * sub_001762B0 -> sub_001B3760/sub_001B37F0 push-buffer inline copy). The
 * per-frame movie service (sub_0009E1F0) calls it whenever sub_00177810
 * reports a frame, but while the mwPly state machine is broken (player state
 * obj+8 stays 0) the "frame" descriptor is garbage and the blit rep-movsd
 * marches off past the 4GB mapping (host memcpy crash, read base+>4GB).
 * Guard: only blit when the player exists and is PLAYING (state 2). */
void sub_0009DE90(void)
{
    extern void sub_0009DE90_gen(void);
    uint32_t obj = MEM32(0x5E5900);
    static int s_skip = 0;
    if (!obj || MEM32(obj + 8) != 2) {
        if (s_skip < 6) {
            s_skip++;
            fprintf(stderr, "[MVBLIT] skipped: obj=0x%X st=%d\n",
                    obj, obj ? (int)MEM32(obj + 8) : -1);
            fflush(stderr);
        }
        esp += 4;   /* cdecl: consume fake return, caller cleans args */
        return;
    }
    {
        static int s_run = 0;
        if (s_run < 6 || (s_run % 512) == 0) {
            fprintf(stderr, "[MVBLIT] RUN #%d obj=0x%X%c", s_run, obj, 10);
            fflush(stderr);
        }
        s_run++;
    }
    sub_0009DE90_gen();
    {
        static int s_done = 0;
        if (s_done < 6 || (s_done % 512) == 0) {
            fprintf(stderr, "[MVBLIT] DONE #%d%c", s_done, 10);
            fflush(stderr);
        }
        s_done++;
    }
}

/* DIAG: mwPly "new frame available?" peek. */
void sub_00177810_gen(void);
void sub_00177810(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4);
    sub_00177810_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
        fprintf(stderr, "[FPEEK] #%d a1=0x%X -> eax=0x%X d:", s_n, a1, eax);
        if (eax >= 0x1000 && eax < 0x8000000)
            for (int k = 0; k < 10; k++) fprintf(stderr, " %X", MEM32(eax + 4u * k));
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
}

/* sub_001779A0 — "is the movie data stream finished?" = (streamStat == 4).
 * The gen lifts the `neg/sbb/inc` equality idiom with recomp bug #10 (carry
 * flag never produced), returning TRUE unconditionally — so the mwPly server
 * declared the ninja.sfd stream complete right after the first 1MB read and
 * killed the player (state 4) before a single frame decoded. Native impl. */
void sub_001779A0(void)
{
    extern void sub_0016D5D0(void);
    uint32_t h = MEM32(esp + 4);
    PUSH32(esp, h);
    PUSH32(esp, 0); sub_0016D5D0();
    esp += 4;                 /* our arg push */
    eax = (eax == 4) ? 1 : 0;
    esp += 4;                 /* consume fake return */
}

/* DIAG: mwPlyCreateSofdec (sub_001773E0/F0): print the config block + result.
 * cfg 0x5E59B0: +0x14 work ptr, +0x18 work size; fails silently (returns 0)
 * on "illegal work size" (needed = sub_00176550(cfg)+sub_00176500(cfg)). */
void sub_001773E0_gen(void);
void sub_001773E0(void)
{
    uint32_t cfg = MEM32(esp + 4);
    uint32_t wptr = cfg ? MEM32(cfg + 0x14) : 0, wsz = cfg ? MEM32(cfg + 0x18) : 0;
    sub_001773E0_gen();
    fprintf(stderr, "[MWPLY] create cfg=0x%X work=0x%X size=0x%X -> obj=0x%X (err 0xC0F74C=0x%X) vtbl=0x%X vt18=0x%X vt2C=0x%X\n",
            cfg, wptr, wsz, eax, MEM32(0xC0F74C),
            eax ? MEM32(eax) : 0,
            eax && MEM32(eax) ? MEM32(MEM32(eax) + 0x18) : 0,
            eax && MEM32(eax) ? MEM32(MEM32(eax) + 0x2C) : 0);
    fflush(stderr);
}
CALL_COUNT_PROBE(sub_00176840)   /* mwPly destroy (DF60 bail path) */
CALL_COUNT_PROBE(sub_0009E1F0)   /* movie stop/clear (writes 0x5E5900) */
CALL_COUNT_PROBE(sub_00082EB0)   /* intro sequencer configure(movie_id) */
CALL_COUNT_PROBE(sub_00081EB0)   /* intro sequencer per-frame body */
CALL_COUNT_PROBE(sub_0007FD90)   /* screen-flip task (clears 0x4A10D0) */
CALL_COUNT_PROBE(sub_0007DFC0)   /* last call before 4A10D0 clear */
CALL_COUNT_PROBE(sub_0007F7B0)   /* first call in screen-flip task */
CALL_COUNT_PROBE(sub_00170660)   /* ADXM group-2 slot-1 dispatch (mwPly server) */
CALL_COUNT_PROBE(sub_00176E90)   /* mwPly server callback body */
CALL_COUNT_PROBE(sub_00170690)   /* ADXM group-5 dispatch (sfdec decode cb) */
CALL_COUNT_PROBE(sub_00176DC0)   /* mwPly group-5 callback (decode side) */
CALL_COUNT_PROBE(sub_0017C8D0)   /* sfdec main server */

/* DIAG: result probes along the ADXSTM-create chain. */
#define RET_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        fn##_gen(); \
        if (s_n < 8) { s_n++; \
            fprintf(stderr, "[RET] " #fn " -> 0x%X\n", eax); \
            fflush(stderr); } \
    }
void sub_0016EEF0_gen(void);
void sub_0016EEF0(void)
{
    static int s_n = 0;
    int u4 = 0;
    for (int k = 0; k < 16; k++)
        if (MEM8(0xC04380 + 0xA4u * k)) u4++;
    sub_0016EEF0_gen();
    if (s_n < 8) { s_n++;
        fprintf(stderr, "[RNA] #%d pre-occupancy=%d/16 -> 0x%X\n", s_n, u4, eax);
        fflush(stderr); }
}
/* DIAG: PES queue append (fastcall eax=substream idx): find which substream
 * overflows (FF00040B). */
void sub_0017F330_gen(void);
void sub_0017F330(void)
{
    static int s_n = 0;
    uint32_t q = eax, cls = ecx, h = MEM32(esp + 4), n = MEM32(esp + 8);
    uint32_t rec = (h >= 0x1000 && h < 0x8000000 && q < 8) ? h + q * 0x388u + 0xD34 : 0;
    uint32_t sj = rec ? MEM32(rec + 0x14) : 0;
    uint32_t c0 = (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0xC) : 0;
    sub_0017F330_gen();
    uint32_t c1 = (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0xC) : 0;
    if (s_n < 20 || (s_n % 2048) == 0 || (q == 1 && (s_n % 256) == 0) || q == 3 || q >= 4) {
        fprintf(stderr, "[PESQ] #%d q=%u cls=%u h=0x%X n=0x%X sj=0x%X c 0x%X->0x%X ret=0x%X%c",
                s_n, q, cls, h, n, sj, c0, c1, eax, 10);
        fflush(stderr);
    }
    s_n++;
}

/* DIAG: start-code scanner input (fastcall-ish: eax=parse ptr, ebx=len). */
void sub_0017BCC0_gen(void);
void sub_0017BCC0(void)
{
    static int s_n = 0;
    uint32_t p = eax, len = ebx;
    if (s_n < 12 || (s_n % 1024) == 0) {
        fprintf(stderr, "[SCAN] #%d ptr=0x%X len=%d bytes:", s_n, p, (int)len);
        if (p >= 0x10000 && p < 0x8000000)
            for (int k = 0; k < 8; k++) fprintf(stderr, " %02X", MEM8(p + k));
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
    /* GUARD: with fewer than 4 bytes buffered there cannot be a start code;
     * the gen's not-enough-data path still reports "found" with code=0 and
     * the dispatcher treats code 0 as a fatal stream error (FF000D05),
     * permanently killing the handle on the FIRST pump tick (which races
     * the first ring read). Report not-found instead until data arrives. */
    if ((int)len < 4) {
        eax = 0;
        esp += 4;
        return;
    }
    sub_0017BCC0_gen();
}

/* item 102: sfdec frame-UNLOCK API (game vtable -> sub_0017AA20 ->
 * sub_00179DA0 -> sub_0017DB10 slot 2->0). If this fails (FF000F0E/F0F) or
 * stops being called, slots jam at state 2 = the item-95 stall. Log the
 * first calls, every 256th, and EVERY failure. Gen renamed _gen
 * (recomp_extra2.c — RE-APPLY after regen). */
void sub_0017AA20_gen(void);
void sub_0017AA20(void)
{
    static unsigned s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_0017AA20_gen();
    s_n++;
    if (s_n <= 10 || (s_n & 255) == 0 || eax != 0) {
        fprintf(stderr, "[UNLOCK] #%u h=0x%X a2=0x%X -> 0x%X%c", s_n, a1, a2, eax, 10);
        fflush(stderr);
    }
}

/* DIAG: sfdec error reporter — log every error with a small backtrace of the
 * guest stack so the failing parse site is identifiable.
 * item 102: budget is PER ERROR CODE (a 40B storm used to eat the whole
 * 10-print budget and hid unlock failures like FF000F0E/F0F). */
void sub_0017C6A0_gen(void);
void sub_0017C6A0(void)
{
    static uint32_t s_codes[16]; static int s_counts[16]; static int s_nc = 0;
    uint32_t h = MEM32(esp + 4), err = MEM32(esp + 8);
    int ci = -1;
    for (int i = 0; i < s_nc; i++) if (s_codes[i] == err) { ci = i; break; }
    if (ci < 0 && s_nc < 16) { ci = s_nc++; s_codes[ci] = err; s_counts[ci] = 0; }
    int s_n = (ci >= 0) ? s_counts[ci] : 999;
    if (ci >= 0) s_counts[ci]++;
    if (s_n < 6) {
        fprintf(stderr, "[SFERR] #%d h=0x%X err=0x%X raw:", s_n, h, err);
        for (int k = 0; k < 16; k++)
            fprintf(stderr, " %X", MEM32(esp + 4u * k));
        fprintf(stderr, "%c", 10);
        /* NATIVE backtrace: the recompiled guest functions are host functions,
         * so the host stack IS the guest call chain. Resolve via doa3.map. */
        {
            void *bt[24];
            USHORT nfr = CaptureStackBackTrace(1, 24, bt, NULL);
            fprintf(stderr, "[SFERR-BT]");
            for (USHORT k = 0; k < nfr; k++)
                fprintf(stderr, " %llX", (unsigned long long)(uintptr_t)bt[k]);
            fprintf(stderr, "%c", 10);
        }
        fflush(stderr);
    }
    /* BACKPRESSURE: FF00040B = "substream ring full, cannot append". On
     * hardware the ingest simply retries next tick as the decoder drains;
     * storing it kills the handle (status -2). Swallow it as a warning. */
    if (err == 0xFF00040B) {
        static int s_bp = 0;
        if (s_bp < 4) {
            s_bp++;
            fprintf(stderr, "[SFERR] 40B swallowed (ring-full backpressure)%c", 10);
            fflush(stderr);
        }
        eax = 0; esp += 4; return;
    }
    sub_0017C6A0_gen();
}
/* SJ commit APIs: sub_0016ABF0(sj, mode, chunk{ptr,len}) appends/credits —
 * mode 1: [sj+0xC] += len (+ ring copy); mode 0: [sj+0x10] += len.
 * sub_0016ACE0 similar family. Focus: does the READ RING SJ 0xC09890 ever
 * get credited (its 0-free state is what starves the demux, item 70/74). */
void sub_0016ABF0_gen(void);
void sub_0016ABF0(void)
{
    static int s_n = 0;
    uint32_t sj = MEM32(esp + 4), mode = MEM32(esp + 8), ch = MEM32(esp + 0xC);
    uint32_t len = (ch >= 0x1000 && ch < 0x8000000) ? MEM32(ch + 4) : 0;
    sub_0016ABF0_gen();
    if (s_n < 24 || sj == 0xC09890) {
        int log = (s_n < 24) || (s_n % 64 == 0);
        s_n++;
        if (log) {
            fprintf(stderr, "[SJPUT] #%d sj=0x%X mode=%u len=0x%X c=0x%X w=0x%X%c",
                    s_n, sj, mode, len,
                    (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0xC) : 0,
                    (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0x10) : 0, 10);
            fflush(stderr);
        }
    } else s_n++;
}
void sub_0016ACE0_gen(void);
void sub_0016ACE0(void)
{
    static int s_n = 0;
    uint32_t sj = MEM32(esp + 4), mode = MEM32(esp + 8), ch = MEM32(esp + 0xC);
    uint32_t len = (ch >= 0x1000 && ch < 0x8000000) ? MEM32(ch + 4) : 0;
    sub_0016ACE0_gen();
    if (s_n < 24 || sj == 0xC09890) {
        int log = (s_n < 24) || (s_n % 64 == 0);
        s_n++;
        if (log) {
            fprintf(stderr, "[SJREL] #%d sj=0x%X mode=%u len=0x%X c=0x%X w=0x%X%c",
                    s_n, sj, mode, len,
                    (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0xC) : 0,
                    (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0x10) : 0, 10);
            fflush(stderr);
        }
    } else s_n++;
}
/* DIAG: decoder-system create chain. The frame-rate global 0xC0E4D0 divides
 * PTS math in sub_0017E240/sub_0017E7B6; if it stays 0 the parser crashes with
 * an integer divide once picture timing runs. It is written ONLY by
 * sub_0017C7B0 (rate = param struct +0xC), reached via
 * sub_0009DD20 -> sub_00175B90 -> sub_001768F0 -> sub_0017C890. */
void sub_00175B90_gen(void);
void sub_00175B90(void)
{
    uint32_t p = MEM32(esp + 4);
    fprintf(stderr, "[VDEC] sub_00175B90 enter p=0x%X f0=0x%X +4=0x%X +8=0x%X +C=0x%X%c",
            p, MEM32(p), MEM32(p + 4), MEM32(p + 8), MEM32(p + 0xC), 10);
    fflush(stderr);
    sub_00175B90_gen();
    fprintf(stderr, "[VDEC] sub_00175B90 exit eax=0x%X rate0xC0E4D0=0x%X%c",
            eax, MEM32(0xC0E4D0), 10);
    fflush(stderr);
}
void sub_001768F0_gen(void);
void sub_001768F0(void)
{
    fprintf(stderr, "[VDEC] sub_001768F0 enter a1=0x%X a2=0x%X%c",
            MEM32(esp + 4), MEM32(esp + 8), 10);
    fflush(stderr);
    sub_001768F0_gen();
    fprintf(stderr, "[VDEC] sub_001768F0 exit eax=0x%X%c", eax, 10);
    fflush(stderr);
}
void sub_0017C7B0_gen(void);
void sub_0017C7B0(void)
{
    fprintf(stderr, "[VDEC] sub_0017C7B0 enter ebx=0x%X rateParam=0x%X%c",
            ebx, (ebx >= 0x10000 && ebx < 0x8000000) ? MEM32(ebx + 0xC) : 0xDEAD, 10);
    fflush(stderr);
    sub_0017C7B0_gen();
    fprintf(stderr, "[VDEC] sub_0017C7B0 exit rate0xC0E4D0=0x%X poolBase=0x%X poolCnt=%d obj0st40=0x%X%c",
            MEM32(0xC0E4D0), MEM32(0xC0E518), MEM32(0xC0E514),
            MEM32(0xC0E518) ? MEM32(MEM32(0xC0E518) + 0x40) : 0xDEAD, 10);
    fflush(stderr);
}
/* DIAG: SJ sub-region carve helper (register-arg: eax=end, ecx=cur,
 * edx=base, ebx=mode, esi=out struct). size = eax-ecx; the negative-size
 * (0xFFFFF800) SJ creations come through here or its callers. */
void sub_0017EC10_gen(void);
void sub_0017EC10(void)
{
    static int s_n = 0;
    if (s_n < 40) {
        s_n++;
        fprintf(stderr, "[CARVE] #%d eax=0x%X ecx=0x%X edx=0x%X ebx=0x%X esi=0x%X diff=%d%c",
                s_n, eax, ecx, edx, ebx, esi, (int)(eax - ecx), 10);
        fflush(stderr);
    }
    sub_0017EC10_gen();
}
/* DIAG: decoder state-machine pump + per-object dispatcher. */
void sub_0017D4B0_gen(void);
void sub_0017D4B0(void)
{
    static int s_n = 0;
    if (s_n < 6 || (s_n % 512) == 0) {
        fprintf(stderr, "[VPUMP] #%d cnt=%d base=0x%X%c", s_n,
                MEM32(0xC0E514), MEM32(0xC0E518), 10);
        fflush(stderr);
    }
    s_n++;
    sub_0017D4B0_gen();
}
/* DIAG: sub_0017D417 is a mid-body fragment of the sub_0017D380 state
 * machine (jumptable case "state 4"). It has NO static callers — reaching it
 * means an ICALL dispatched into the middle of the state machine with junk
 * registers. Dump the icall trace to find the dispatcher. */
void sub_0017D417_gen(void);
void sub_0017D417(void)
{
    static int s_n = 0;
    if (s_n < 8) {
        s_n++;
        fprintf(stderr, "[FRAG417] #%d eax=0x%X esi=0x%X icalls:", s_n, eax, esi);
        for (int k = 1; k <= 8; k++)
            fprintf(stderr, " %X",
                    g_icall_trace[(g_icall_trace_idx - k) & (ICALL_TRACE_SIZE - 1)]);
        fprintf(stderr, " stk:");
        for (int k = 0; k < 6; k++)
            fprintf(stderr, " %X", MEM32(esp + 4u * k));
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    sub_0017D417_gen();
}
/* GUARD: is `obj` one of the legit decoder-pool objects (base=[0xC0E518],
 * count=[0xC0E514], stride 0x60D8)? Junk objects reaching the state machine
 * trigger the sfdec error store at junk+0x988 -> corrupts the mwPly slot
 * table -> self-amplifying cascade (FF000222 spam, junk handles, crash). */
static int sfdec_pool_obj_ok(uint32_t obj)
{
    /* Reject only objects OUTSIDE guest RAM. On real hardware junk/residue
     * pointers inside guest RAM are walked harmlessly (low memory reads,
     * bounded error stores); the poison is 32-bit garbage beyond the 128MB
     * guest range, whose error-store at obj+0x988 aliases onto live
     * structures (mwPly slot table) and cascades. Alignment checks are too
     * strict: the state machine also legitimately runs on substream
     * sub-objects at interior offsets of the sfdec handle. */
    return obj >= 0x1000 && obj < 0x8000000u;
}
void sub_0017D1D0_gen(void);
void sub_0017D1D0(void)
{
    static int s_junk = 0;
    if (!sfdec_pool_obj_ok(eax)) {
        if (s_junk < 4) {
            s_junk++;
            fprintf(stderr, "[VST4] REJECT junk obj=0x%X%c", eax, 10);
            fflush(stderr);
        }
        eax = 0; esp += 4; return;
    }
    sub_0017D1D0_gen();
}
/* DIAG: frame get + YUV->RGB CSC kernel. */
void sub_0017D710_gen(void);
void sub_0017D710(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), outp = MEM32(esp + 8);
    sub_0017D710_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
        fprintf(stderr, "[FGET] #%d h=0x%X -> eax=0x%X out=0x%X%c",
                s_n, h, eax,
                (outp >= 0x1000 && outp < 0x8000000) ? MEM32(outp) : 0xDEAD, 10);
        fflush(stderr);
    }
    s_n++;
}
void sub_001779D0_gen(void);
void sub_001779D0(void)
{
    static int s_n = 0;
    sub_001779D0_gen();
    if (s_n < 6 || (s_n % 2048) == 0) {
        fprintf(stderr, "[CSC] #%d ran%c", s_n, 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: mux queue-start propagation (q0 started + enough bytes ->
 * start queues [h+0x3564/3568/356C]). */
void sub_0017BDB0_gen(void);
void sub_0017BDB0(void)
{
    static int s_n = 0;
    uint32_t h = esi;
    sub_0017BDB0_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
        uint32_t ok = (h >= 0x1000 && h < 0x8000000u);
        fprintf(stderr, "[MUXST] #%d h=0x%X qs={%u,%u,%u,%u} min(%d,%d)%c",
                s_n, h,
                ok ? MEM32(h + 0x3560) : 0, ok ? MEM32(h + 0x3564) : 0,
                ok ? MEM32(h + 0x3568) : 0, ok ? MEM32(h + 0x356C) : 0,
                ok ? (int)MEM32(h + 8) : -1, ok ? (int)MEM32(h + 0x9EC) : -1, 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: prebuffer-complete gates. */
void sub_0017AAF0_gen(void);
void sub_0017AAF0(void)
{
    static int s_n = 0;
    uint32_t h = eax;
    sub_0017AAF0_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
        {
            uint32_t fc = MEM32(h + 0x3668); if (fc > 16) fc = 16;
            int c24 = 0;
            for (uint32_t k = 0; k < fc; k++) {
                uint32_t st = MEM32(h + 0x366C + 0x50u * k);
                if (st == 2 || st == 4) c24++;
            }
            fprintf(stderr, "[GATE1] #%d h=0x%X -> %d (cnt24=%d fc=%u t=%d/%d)%c",
                    s_n, h, (int)eax, c24, fc,
                    (int)MEM32(h + 0x2C), (int)MEM32(h + 0x9F0), 10);
        }
        fflush(stderr);
    }
    s_n++;
}
void sub_00179E60_gen(void);
void sub_00179E60(void)
{
    static int s_n = 0;
    uint32_t h = edi;
    sub_00179E60_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
        fprintf(stderr, "[GATE2] #%d h=0x%X -> %d%c", s_n, h, (int)eax, 10);
        fflush(stderr);
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
        fprintf(stderr, "[ITAILF] unresolved tail-jump target 0x%08X%c", va, 10);
        fflush(stderr);
    }
}
/* DIAG: esp-delta bisect for the skip-path -4 drift. */
#define DPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     uint32_t e0 = esp;     fn##_gen();     if ((int)(esp - e0) != 4 && s_n < 6) {         s_n++;         fprintf(stderr, "[DELTA] " #fn " espDelta=%d%c", (int)(esp - e0), 10);         fflush(stderr);     } }
DPROBE(sub_00179C30)
DPROBE(sub_00180EE0)
DPROBE(sub_00181060)
DPROBE(sub_001872C0)
DPROBE(sub_00186350)
DPROBE(sub_001863A0)
DPROBE(sub_001815D0)
DPROBE(sub_00181210)
DPROBE(sub_00181300)
#undef DPROBE
/* DIAG: skip-path slot alloc+header parse. */
void sub_00179A50_gen(void);
/* Per-picture slot FIFO (item 90): pictures complete in bitstream order,
 * but a picture can suspend across many decode invocations while LATER
 * pictures allocate — a single "last slot" cache binds the wrong slot.
 * PALLOC pushes; the completion patch in sub_0017A6D0 (recomp_cffix.c)
 * pops. */
uint32_t g_doa3_slotq[16];
uint32_t g_doa3_slotq_w = 0, g_doa3_slotq_r = 0;
void sub_00179A50(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), outp = MEM32(esp + 0xC);
    /* item 104: DECODE-AHEAD CAP. On hardware the 2-ref + 2-B-flip buffer
     * budget physically stops decode from running more than a few pictures
     * past display; our port had no such bound — decode raced ~47 pictures
     * ahead before the first serve, recycling the B flip-buffers, so the
     * movie visibly started ~1.5-2s in (item-95 #2) and mid-play content
     * could jump under load. Refuse the slot acquire (the gen's own
     * no-free-slot result, -1) while decode is >= 4 pictures ahead of
     * serve; the decoder retries next tick exactly like a full ring. */
    /* item 110 (user revert): the item-104 decode-ahead CAP is REMOVED. It
     * starved the MPEG parser and only swapped one freeze mode for another. */
    sub_00179A50_gen();
    if (eax == 0 && outp >= 0x1000 && outp < 0x8000000u &&
        g_doa3_slotq_w - g_doa3_slotq_r < 16)
        g_doa3_slotq[g_doa3_slotq_w++ & 15] = MEM32(outp);
    if (s_n < 10) {
        s_n++;
        fprintf(stderr, "[PALLOC] #%d h=0x%X -> eax=0x%X out=0x%X%c",
                s_n, h, eax,
                (outp >= 0x1000 && outp < 0x8000000) ? MEM32(outp) : 0xDEAD, 10);
        fflush(stderr);
    }
}
/* DIAG: picture SKIP path — on hardware, prep-time pictures are skipped
 * (clock -1) and sub_0017A6D0 marks the slot state 2 via sub_0017DAF0;
 * skipped slots count toward the prebuffer target. */
void sub_0017A6D0_gen(void);
uint32_t g_doa3_a6d0_frame = 0;   /* item 90(c): A6D0 frame base (absolute) */
void sub_0017A6D0(void)
{
    static int s_n = 0;
    uint32_t esp_in = esp;
    /* locals live at (entry_esp - 4 fake-ret) - 0x38 frame; the completion
     * patch reads them via this absolute base when esp has drifted */
    uint32_t prev_frame = g_doa3_a6d0_frame;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    g_doa3_a6d0_frame = esp;   /* entry esp; the slot local sits at -0x38 */
    sub_0017A6D0_gen();
    g_doa3_a6d0_frame = prev_frame;
    if (s_n < 10) {
        s_n++;
        fprintf(stderr, "[PSKIP] #%d -> eax=0x%X espDelta=%d (expect 4)%c",
                s_n, eax, (int)(esp - esp_in), 10);
        fflush(stderr);
    }
    /* item 91b attempt REVERTED: reclaiming the dead suspension frames
     * (esp = esp_in + 4) broke playback in the harness env too (frames=4)
     * — the drift ledger is compensated somewhere downstream; enforcement
     * at ANY boundary tried so far breaks it. (void) the saves. */
    (void)s_edi; (void)s_esi; (void)s_ebx;
}
/* ── item 103b: slot-lifecycle legality guards (see CLAUDE.md item 103) ──
 * The cooperative decode workers deliver picture lifecycle events OUT OF
 * ORDER vs real hardware: the user's stalled runs show ref-releases firing
 * on slots still DECODING (state 1 -> freed -> buffer reused mid-write =
 * tearing/half frames + state chaos jamming all slots at 2) and completion
 * marks landing on already-freed slots (0->2, 0->4 resurrections).
 * Semantics (gen): DB10: st==4 -> 3 else -> 0; DB30: st==4 -> 2 else -> 0;
 * DAF0: -> 2 (decode complete); DB00: -> 4 (serve). States: 0 free,
 * 1 decoding, 2 decoded/held, 3 released-after-display, 4 display-locked.
 * Guards: a release aimed at a DECODING slot is DEFERRED until decode
 * completes (then applies the original semantic); marks on freed slots are
 * DROPPED. Gen sub_0017DB10/sub_0017DB30 renamed _gen (recomp_0009.c —
 * RE-APPLY after regen). */
static int doa3_slot_rec_ok(uint32_t rec)
{
    return rec >= 0xC12E2Cu && rec <= 0xC1300Cu && ((rec - 0xC12E2Cu) % 0x50u) == 0;
}
/* item 104 (defect #2 start offset): decode races ~47 pictures ahead before
 * the first blit; the ref rotation frees DECODED-BUT-NEVER-DISPLAYED slots
 * (state 2 is ambiguous: awaiting-display and displayed-now-ref share it)
 * and the early pictures' buffers get rewritten — the movie visibly starts
 * ~1.5s in ([PDECIDE] proved nothing is DROPPED; 120-frame alignment puts
 * our first serves at ref 47-56). During the STARTUP WINDOW (first 90
 * blits) a decoded-but-unserved slot may not be freed: releases against it
 * defer, so decode blocks on slot availability exactly like hardware.
 * Fail-safe: a deferred entry stuck for >2000 drains force-releases (a
 * PSKIP'd never-displayed picture must not jam the ring). */
static uint8_t  g_doa3_slot_pending[7];
static uint32_t g_doa3_defer_age[16];
/* item 104 decode-ahead accounting (cap enforced in sub_00179A50) */
uint32_t g_doa3_pics_decoded = 0, g_doa3_pics_served = 0;
static int doa3_slot_idx(uint32_t rec)
{
    return doa3_slot_rec_ok(rec) ? (int)((rec - 0xC12E2Cu) / 0x50u) : -1;
}
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
void doa3_drain_deferred_releases(void)
{
    for (int i = 0; i < g_doa3_rel_defer_n; ) {
        uint32_t rec = g_doa3_rel_defer[i] & ~1u;
        int to3 = (int)(g_doa3_rel_defer[i] & 1u);
        int idx = doa3_slot_idx(rec);
        uint32_t st = MEM32(rec);
        int hold = (st == 1) ||   /* decoding: never release */
                   (st == 2 && idx >= 0 && g_doa3_slot_pending[idx] &&
                    g_doa3_defer_age[i] <= 2000u);   /* awaiting first display */
        if (!hold) {
            MEM32(rec) = (st == 4) ? (to3 ? 3u : 2u) : 0u;
            if (idx >= 0) g_doa3_slot_pending[idx] = 0;
            g_doa3_rel_defer[i] = g_doa3_rel_defer[--g_doa3_rel_defer_n];
            g_doa3_defer_age[i] = g_doa3_defer_age[g_doa3_rel_defer_n];
        } else {
            g_doa3_defer_age[i]++;
            i++;
        }
    }
}
static int doa3_release_must_defer(uint32_t rec)
{
    /* item 110 (user revert): the item-104 release DEFERRAL is REMOVED — it was
     * a band-aid for the #2 start-offset that only changed the freeze mode, not
     * the underlying decode stall. Releases now run immediately (raw behavior). */
    (void)rec;
    return 0;
}
void sub_0017DB10_gen(void);
void sub_0017DB10(void)
{
    uint32_t rec = MEM32(esp + 4);
    if (doa3_release_must_defer(rec)) {
        static int s_g = 0;
        if (s_g < 16) { s_g++;
            fprintf(stderr, "[STGUARD] DB10 slot 0x%X st=%u -> deferred%c", rec, MEM32(rec), 10);
            fflush(stderr); }
        doa3_defer_release(rec, 1);
        esp += 4;
        return;
    }
    sub_0017DB10_gen();
}
void sub_0017DB30_gen(void);
void sub_0017DB30(void)
{
    uint32_t rec = MEM32(esp + 4);
    if (doa3_release_must_defer(rec)) {
        static int s_g = 0;
        if (s_g < 16) { s_g++;
            fprintf(stderr, "[STGUARD] DB30 slot 0x%X st=%u -> deferred%c", rec, MEM32(rec), 10);
            fflush(stderr); }
        doa3_defer_release(rec, 0);
        esp += 4;
        return;
    }
    sub_0017DB30_gen();
}
void sub_0017DB00_gen(void);
void sub_0017DB00(void)
{
    uint32_t slot = MEM32(esp + 4);
    if (slot && doa3_slot_rec_ok(slot) && MEM32(slot) == 0) {
        static int s_g = 0;
        if (s_g < 12) { s_g++;
            fprintf(stderr, "[STGUARD] DB00 serve-mark on FREE slot 0x%X -> dropped%c", slot, 10);
            fflush(stderr); }
        esp += 4;
        return;
    }
    {   /* item 104: slot is being served — no longer awaiting first display */
        int idx = doa3_slot_idx(slot);
        if (idx >= 0) g_doa3_slot_pending[idx] = 0;
        g_doa3_pics_served++;
    }
    sub_0017DB00_gen();
    {   static int s_n = 0;
        if (s_n < 10) { s_n++;
            fprintf(stderr, "[SLOT4] #%d slot=0x%X%c", s_n, slot, 10); fflush(stderr); } }
}
void sub_0017DAF0_gen(void);
void sub_0017DAF0(void)
{
    static int s_n = 0;
    uint32_t slot = MEM32(esp + 4);
    if (slot && doa3_slot_rec_ok(slot) && MEM32(slot) == 0) {
        static int s_g = 0;
        if (s_g < 12) { s_g++;
            fprintf(stderr, "[STGUARD] DAF0 complete-mark on FREE slot 0x%X -> dropped%c", slot, 10);
            fflush(stderr); }
        esp += 4;
        return;
    }
    {   /* item 104: decode completed (1->2) during startup — this picture
         * must survive in its buffer until it is actually served */
        extern uint32_t g_doa3_movie_frames;
        int idx = doa3_slot_idx(slot);
        if (idx >= 0 && MEM32(slot) == 1) {
            g_doa3_pics_decoded++;
            if (g_doa3_movie_frames < 90u)
                g_doa3_slot_pending[idx] = 1;
        }
    }
    sub_0017DAF0_gen();
    if (s_n < 10) {
        s_n++;
        fprintf(stderr, "[SLOT2] #%d slot=0x%X%c", s_n, slot, 10);
        fflush(stderr);
    }
}
/* GUARD+POLICY: AV-sync picture decide sub_0017A540(ecx=pictype, edi=h).
 * During prep (status 2) the master clock is -1 (its hardware source is the
 * audio decode, which is stubbed) and the clock gate skips every picture, so
 * the prebuffer can never fill (see CLAUDE.md item 76 follow-up). While in
 * prep and below the prebuffer target ([h+0x35D8] < [h+0xA2C]) decide=1
 * (decode) — exactly the behavior a live audio clock produces. Once PLAYING
 * the original pacing logic runs. */
void sub_0017A540_gen(void);
void sub_0017A540(void)
{
    static int s_n = 0; static unsigned s_all = 0, s_drop = 0;
    uint32_t pt = ecx, h = edi;
    sub_0017A540_gen();
    /* (item 89) labels: decide=1 -> DROP (sub_0017A640), 0 -> DECODE. */
    s_all++;
    if (eax == 1) s_drop++;
    /* item 104 (defect #2 start offset): the prep phase consumes ~47
     * pictures before the first serve — log EVERY early decision with the
     * gate inputs so one run names the dropping gate (clock h+0xCCC/0xCD0,
     * prebuffer have h+0x35D8 vs target h+0xA2C, served-pts h+0xCC4). */
    if (s_all <= 64 || (eax == 1 && s_drop <= 64)) {
        fprintf(stderr, "[PDECIDE] #%u pictype=%u st=%d -> %d (drops=%u clk=%d/%d have=%d tgt=%d spts=%d)%c",
                s_all, pt, (int)MEM32(h + 0x40), (int)eax, s_drop,
                (int)MEM32(h + 0xCCC), (int)MEM32(h + 0xCD0),
                (int)MEM32(h + 0x35D8), (int)MEM32(h + 0xA2C),
                (int)MEM32(h + 0xCC4), 10);
        fflush(stderr);
    }
    (void)s_n;
}
/* item 104: the prep-complete gate (tail of the decide sub_0017A540) only
 * counts a picture toward the prebuffer ([h+0x35D8]++) when
 * sub_0017E720(h,&a,&b) >= 0 AND sub_00180B70(x,a,y,z) == 0. The counter
 * never moves in our runs -> prep never completes -> decode races ~47
 * pictures ahead recycling the B flip-buffers = the visible 1.5-2s start
 * offset. Probe both callees to name the failing one. */
void sub_0017E720_gen(void);
void sub_0017E720(void)
{
    static unsigned s_n = 0;
    uint32_t h = MEM32(esp + 4);
    sub_0017E720_gen();
    if (++s_n <= 40) {
        fprintf(stderr, "[PREGATE] E720 #%u h=0x%X -> %d%c", s_n, h, (int)eax, 10);
        fflush(stderr);
    }
}
void sub_00180B70_gen(void);
void sub_00180B70(void)
{
    static unsigned s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC), a4 = MEM32(esp + 0x10);
    sub_00180B70_gen();
    if (++s_n <= 40) {
        fprintf(stderr, "[PREGATE] 180B70 #%u a=(0x%X,0x%X,0x%X,0x%X) -> %d%c",
                s_n, a1, a2, a3, a4, (int)eax, 10);
        fflush(stderr);
    }
}

/* DIAG: dword-fill helper sub_0017FB10(dst, val, ndwords) -- the ONLY writer
 * of the picture-type skip params h+0x99C..0x9A4 (write-watch verified).
 * Catch the fill that covers them and print a native backtrace. */
void sub_0017FB10_gen(void);
void sub_0017FB10(void)
{
    uint32_t dst = MEM32(esp + 4), val = MEM32(esp + 8), n = MEM32(esp + 0xC);
    if (dst <= 0xC1015C && dst + n * 4 > 0xC1015C) {
        static int s_n = 0;
        if (s_n < 6) {
            s_n++;
            void *bt[12];
            USHORT nf = CaptureStackBackTrace(1, 12, bt, NULL);
            fprintf(stderr, "[FILLP] dst=0x%X val=0x%X n=%u bt:", dst, val, n);
            for (USHORT k = 0; k < nf; k++)
                fprintf(stderr, " %llX", (unsigned long long)(uintptr_t)bt[k]);
            fprintf(stderr, "%c", 10);
            fflush(stderr);
        }
    }
    sub_0017FB10_gen();
}
/* DIAG: video ES delivery + guarded index append. */
void sub_0017B7F0_gen(void);
void sub_0017B7F0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_0017B7F0_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
        fprintf(stderr, "[VDELIV] #%d a1=0x%X a2=0x%X -> 0x%X idxcnt=%u%c",
                s_n, a1, a2, eax, MEM32(0xC108C4), 10);
        fflush(stderr);
    }
    s_n++;
}
void sub_00182700_gen(void);
void sub_00182700(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), q = MEM32(esp + 8), e = MEM32(esp + 0xC);
    sub_00182700_gen();
    if (s_n < 8 || (s_n % 2048) == 0) {
        fprintf(stderr, "[IDXAPP] #%d h=0x%X q=%u e0=%d -> 0x%X idxcnt=%u%c",
                s_n, h, q,
                (e >= 0x1000 && e < 0x8000000) ? (int)MEM32(e) : -999,
                eax, MEM32(0xC108C4), 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: picture registration in the bitfeeder (writes rec+0x40?). */
void sub_00182000_gen(void);
void sub_00182000(void)
{
    static int s_n = 0;
    uint32_t ctx = eax;
    sub_00182000_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
        fprintf(stderr, "[PICREG] #%d ctx=0x%X -> eax=0x%X q1rec40=0x%X%c",
                s_n, ctx, eax, MEM32(0xC108BC), 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: start-code class scanner + picture bitstream setup. */
void sub_001808C0_gen(void);
void sub_001808C0(void)
{
    static int s_n = 0;
    uint32_t p = MEM32(esp + 4), len = MEM32(esp + 8), mask = MEM32(esp + 0xC);
    sub_001808C0_gen();
    if (mask == 4 && (s_n < 8 || (s_n % 4096) == 0)) {
        fprintf(stderr, "[CSCAN] #%d p=0x%X len=0x%X mask=%u -> 0x%X%c",
                s_n, p, len, mask, eax, 10);
        fflush(stderr);
    }
    if (mask == 4) s_n++;
}
void sub_001827B0_gen(void);
void sub_001827B0(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), q = MEM32(esp + 8), pic = MEM32(esp + 0xC), outp = MEM32(esp + 0x10);
    sub_001827B0_gen();
    if (s_n < 8 || (s_n % 4096) == 0) {
        uint32_t aux = h + q * 0x388u + 0xD44u;
        uint32_t ix = aux + 0x30u;
        uint32_t tab = MEM32(ix), cap = MEM32(ix + 4), cnt = MEM32(ix + 8);
        uint32_t wr = MEM32(ix + 0xC), rd = MEM32(ix + 0x10);
        fprintf(stderr, "[PSETUP] #%d h=0x%X q=%u pic=0x%X -> eax=0x%X out=%d "
                "ix={t=%X cap=%d cnt=%d wr=%d rd=%d} rb=%X rs=%X",
                s_n, h, q, pic, eax,
                (outp >= 0x1000 && outp < 0x8000000) ? (int)MEM32(outp) : -999,
                tab, cap, cnt, wr, rd, MEM32(aux + 0xC), MEM32(aux + 8));
        if (tab >= 0x1000 && tab < 0x8000000u && cap > 0 && cap < 200000) {
            for (uint32_t k = 0; k < 4; k++) {
                uint32_t e = tab + ((rd + k) % cap) * 12u;
                fprintf(stderr, " e%u={%X,%X,%X}", k,
                        MEM32(e), MEM32(e + 4), MEM32(e + 8));
            }
        }
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: picture decode initiators inside sub_0017B2D0's tail. If the
 * sub_0017AB40 out-flag stays 0 these never run and no picture decodes. */
#define CNTPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     fn##_gen();     if (s_n < 6 || (s_n % 4096) == 0) {         fprintf(stderr, "[PICGO] " #fn " #%d -> eax=0x%X%c", s_n, eax, 10);         fflush(stderr);     }     s_n++; }
CNTPROBE(sub_0017A370)
CNTPROBE(sub_0017A400)
CNTPROBE(sub_0017AB40)
/* the ACTUAL picture decode (slices + MC/IDCT). Log frame-slot states after. */
void sub_0017A640_gen(void);
void sub_0017A640(void)
{
    static int s_n = 0;
    sub_0017A640_gen();
    if (s_n < 10 || (s_n % 1024) == 0) {
        uint32_t sh = 0xC0F7C0;
        uint32_t fc = MEM32(sh + 0x3668); if (fc > 16) fc = 16;
        fprintf(stderr, "[PICDEC] #%d -> eax=0x%X cur35F8=%X disp35C4=%X slots:", s_n, eax,
                MEM32(sh + 0x35F8), MEM32(sh + 0x35C4));
        for (uint32_t k = 0; k < fc; k++) {
            uint32_t sl = sh + 0x366C + 0x50u * k;
            fprintf(stderr, " %u{st=%X f4=%X f8=%X f1C=%X}", k,
                    MEM32(sl), MEM32(sl + 4), MEM32(sl + 8), MEM32(sl + 0x1C));
        }
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
}
#undef CNTPROBE
/* DIAG: picture-header parse chain (bit readers on ctx h+0x35E0). One of
 * these rejects every picture -> all pictures skipped -> zero decoded
 * frames -> black movie surface. */
#define PICPROBE(fn) void fn##_gen(void); void fn(void) {     static int s_n = 0;     uint32_t inh = eax, inc = ecx, ind = edx;     fn##_gen();     if (s_n < 10) {         s_n++;         fprintf(stderr, "[PICHDR] " #fn " #%d eax=0x%X ecx=0x%X edx=0x%X -> 0x%X%c",                 s_n, inh, inc, ind, eax, 10);         fflush(stderr);     } }
PICPROBE(sub_00179990)
PICPROBE(sub_001799D0)
PICPROBE(sub_00179A10)
PICPROBE(sub_001798B0)
#undef PICPROBE
/* DIAG: slice decoder sub_0017A890(a1=win, a2=0xCC; esi=&ctx). Consumes
 * slice start codes from the ES window; frames stay state 1 because this
 * never completes a picture. */
void sub_0017A890_gen(void);
void sub_0017A890(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), sctx = esi;
    sub_0017A890_gen();
    if (s_n < 12 || (s_n % 4096) == 0) {
        fprintf(stderr, "[SLICE] #%d a1=0x%X a2=0x%X esi=0x%X -> eax=0x%X%c",
                s_n, a1, a2, sctx, eax, 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: queue window refresh sub_0017F130(ecx=h, esi=&window, arg=q).
 * Fills window {ptr,len,ptr2,len2} from the queue's SJ ring via vtbl+0x24
 * (avail) + vtbl+0x18 (region) + vtbl+0x1C (wrap region). The video decode
 * fetch sees an empty window while SJ 0xC09770 holds 2.4MB — this shows
 * exactly what the refresh yields. */
void sub_0017F130_gen(void);
void sub_0017F130(void)
{
    static int s_n = 0;
    uint32_t h = ecx, win = esi, q = MEM32(esp + 4);
    uint32_t rec = (h >= 0x1000 && h < 0x8000000 && q < 8) ? h + q * 0x388u + 0xD34 : 0;
    uint32_t sj = rec ? MEM32(rec + 0x14) : 0;
    sub_0017F130_gen();
    if ((q == 1 && (s_n < 12 || (s_n % 1024) == 0)) || s_n < 6) {
        uint32_t ok = (win >= 0x1000 && win < 0x8000000);
        uint32_t wp = ok ? MEM32(win) : 0;
        fprintf(stderr, "[QWIN] #%d q=%u sj=0x%X sjc=0x%X win={%X,%X,%X,%X} data:",
                s_n, q, sj,
                (sj >= 0x1000 && sj < 0x8000000) ? MEM32(sj + 0xC) : 0,
                wp, ok ? MEM32(win + 4) : 0,
                ok ? MEM32(win + 8) : 0, ok ? MEM32(win + 0xC) : 0);
        if (wp >= 0x1000 && wp < 0x8000000)
            for (int k = 0; k < 16; k++) fprintf(stderr, " %02X", MEM8(wp + k));
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: sequence-header configure path — sub_0017B2D0 (first-decode init)
 * and sub_0017B100 (configure + frame-slot setup via sub_0017AC20). */
void sub_0017B2D0_gen(void);
void sub_0017B2D0(void)
{
    static int s_n = 0;
    uint32_t h = ecx;
    sub_0017B2D0_gen();
    if (s_n < 8) {
        s_n++;
        fprintf(stderr, "[VSEQ] sub_0017B2D0 #%d h=0x%X -> eax=0x%X cfg910=0x%X%c",
                s_n, h, eax,
                (h >= 0x1000 && h < 0x8000000) ? MEM32(h + 0x910) : 0xDEAD, 10);
        fflush(stderr);
    }
}
void sub_0017B100_gen(void);
void sub_0017B100(void)
{
    static int s_n = 0;
    uint32_t h = eax;
    sub_0017B100_gen();
    if (s_n < 8) {
        s_n++;
        fprintf(stderr, "[VSEQ] sub_0017B100 #%d h=0x%X -> eax=0x%X frames3668=%d w35A8=%d%c",
                s_n, h, eax,
                (h >= 0x1000 && h < 0x8000000) ? (int)MEM32(h + 0x3668) : -1,
                (h >= 0x1000 && h < 0x8000000) ? (int)MEM32(h + 0x35A8) : -1, 10);
        fflush(stderr);
    }
}
/* DIAG: video picture decode (sub_0017B3F0, reg-arg ecx=h + 2 stack args).
 * Nonzero return = decode failed/deferred; frame slots never fill. */
void sub_0017B3F0_gen(void);
void sub_0017B3F0(void)
{
    static int s_n = 0;
    uint32_t h = ecx, a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    sub_0017B3F0_gen();
    if (s_n < 12 || (s_n % 4096) == 0) {
        fprintf(stderr, "[VDECODE] #%d h=0x%X a1=0x%X a2=0x%X -> eax=0x%X frames3668=%d%c",
                s_n, h, a1, a2, eax,
                (h >= 0x1000 && h < 0x8000000) ? (int)MEM32(h + 0x3668) : -1, 10);
        fflush(stderr);
    }
    s_n++;
}
/* DIAG: video-unit fetch/decode step head (sub_00179F00(h=ecx?, &out)).
 * Returns nonzero = nothing to do; the whole video decode chain bails on it
 * every tick (service sub_0017B6D0 always returns 0, no frame slots fill). */
void sub_00179F00_gen(void);
void sub_00179F00(void)
{
    static int s_n = 0;
    uint32_t h = ecx, outp = MEM32(esp + 4);
    sub_00179F00_gen();
    if (s_n < 10 || (s_n % 4096) == 0) {
        fprintf(stderr, "[VFETCH] #%d h=0x%X -> eax=0x%X out=0x%X q5cnt=0x%X%c",
                s_n, h, eax,
                (outp >= 0x1000 && outp < 0x8000000) ? MEM32(outp) : 0xDEAD,
                (h >= 0x1000 && h < 0x8000000) ? MEM32(h + 0x388u * 5 + 0xD44) : 0, 10);
        fflush(stderr);
    }
    s_n++;
}
/* NATIVE: substream vtable broadcast sub_0017F6D0(h, idx) — calls vtable
 * slot `idx` of each of the 9 substream contexts (h+0x2F4C stride 0x610).
 * Reimplemented natively because a callee in the seeded substream vtables
 * corrupts callee-saved registers / esp; the original translation then
 * restored junk into esi, which the state machine (sub_0017D380) used as
 * the current OBJECT -> junk-handle cascade (FF000222 storm, slot-table
 * corruption at h+0x988 error stores). Here we protect all guest registers
 * across each callee and log any clobber. */
void sub_0017F6D0(void)
{
    static int s_logs = 0;
    uint32_t h = MEM32(esp + 4), idx = MEM32(esp + 8);
    uint32_t s_esi = esi, s_edi = edi, s_ebx = ebx;
    uint32_t result = 0;
    if (h >= 0x1000 && h < 0x8000000u && idx < 32) {
        for (int i = 0; i < 9 && !result; i++) {
            uint32_t vt = MEM32(h + 0x2F4C + (uint32_t)i * 0x610);
            if (!vt) continue;
            if (vt < 0x10000 || vt >= 0x8000000u) {
                if (s_logs < 8) { s_logs++;
                    fprintf(stderr, "[VTBC] junk vtbl slot %d vt=0x%X (idx %u) - skipped%c",
                            i, vt, idx, 10); fflush(stderr); }
                continue;
            }
            uint32_t fn = MEM32(vt + idx * 4);
            if (!fn) continue;
            if (fn < 0x00011000 || fn >= 0x002CC800) {
                if (s_logs < 8) { s_logs++;
                    fprintf(stderr, "[VTBC] junk handler slot %d fn=0x%X (idx %u) - skipped%c",
                            i, fn, idx, 10); fflush(stderr); }
                continue;
            }
            uint32_t saved_esp = esp;
            PUSH32(esp, 0);
            PUSH32(esp, 0);
            PUSH32(esp, 0);
            PUSH32(esp, h);
            PUSH32(esp, 0);
            RECOMP_ICALL_SAFE(fn, saved_esp);
            result = eax;
            if (esp != saved_esp || esi != s_esi || edi != s_edi || ebx != s_ebx) {
                if (s_logs < 8) { s_logs++;
                    fprintf(stderr, "[VTBC] CLOBBER by fn=0x%X slot %d idx %u: espΔ=%d esi 0x%X->0x%X edi 0x%X->0x%X ebx 0x%X->0x%X%c",
                            fn, i, idx, (int)(esp - saved_esp),
                            s_esi, esi, s_edi, edi, s_ebx, ebx, 10);
                    fflush(stderr); }
            }
            esp = saved_esp;
            esi = s_esi; edi = s_edi; ebx = s_ebx;
        }
    }
    eax = result;
    esp += 4; return;
}
/* item 100: movie AV-clock QPC pacing state (see the synthetic-clock block
 * below). File-scope so the not-playing branch can reset it between movies. */
static LONGLONG s_mvclk_last = 0;
static LONGLONG s_mvclk_qpf = 0;
static double   s_mvclk_accum = 0.0;

/* DIAG+GUARD: per-object sfdec server (register-arg esi=obj). The original
 * reads handler = [obj + state*4 + 0xA94] with state = sub_0017D510(obj,0xF)
 * and `call eax`s it. A garbage state indexes arbitrary memory; a garbage
 * table entry icalls junk with junk in the global eax = the junk-handle
 * cascade seed. Log and skip invalid state/handler. */
void sub_0017E9B0_gen(void);
void sub_0017E9B0(void)
{
    static int s_logs = 0;
    uint32_t obj = esi;
    uint32_t st = (obj >= 0x1000 && obj < 0x8000000u) ? MEM32(obj + 0x40) : 0xFFFF;
    uint32_t st15 = 0xFFFF;
    if (obj >= 0x1000 && obj < 0x8000000u) {
        /* replicate sub_0017D510(obj, 0xF) = read param 0xF: peek only */
        uint32_t saved = esp;
        PUSH32(esp, 0xF);
        PUSH32(esp, obj);
        PUSH32(esp, 0);
        { extern void sub_0017D510(void); sub_0017D510(); }
        st15 = eax;
        esp = saved;
    }
    if (st15 > 15) {
        if (s_logs < 8) {
            s_logs++;
            fprintf(stderr, "[SRV] SKIP obj=0x%X st40=0x%X state15=0x%X (junk state)%c",
                    obj, st, st15, 10);
            fflush(stderr);
        }
        return;
    }
    uint32_t h = MEM32(obj + st15 * 4 + 0xA94);
    if (h && (h < 0x00011000 || h >= 0x002CC800)) {
        if (s_logs < 8) {
            s_logs++;
            fprintf(stderr, "[SRV] BAD HANDLER obj=0x%X state15=%u h=0x%X -> cleared%c",
                    obj, st15, h, 10);
            fflush(stderr);
        }
        MEM32(obj + st15 * 4 + 0xA94) = 0;   /* falls back to 0x17E2A0 default */
    }
    {
        static int s_dn = 0;
        if (s_dn < 8 || (s_dn % 2048) == 0) {
            fprintf(stderr, "[SRVDSP] #%d obj=0x%X st40=%d state15=%u handler=0x%X%c",
                    s_dn, obj, (int)MEM32(obj + 0x40), st15,
                    h ? h : 0x17E2A0, 10);
            fflush(stderr);
        }
        s_dn++;
    }
    sub_0017E9B0_gen();
    /* CLOCK BOOTSTRAP (see the [SFCRT] wrapper comment): the server just
     * cached the handler's clock, which is -1 while status==2 (prep). The
     * AV-sync decide skips every picture on a negative clock and the
     * prebuffer deadlocks (audio, the hardware clock source, is stubbed).
     * Substitute the demux PTS so prebuffer decode proceeds. */
    if (obj >= 0x1000 && obj < 0x8000000u && MEM32(obj + 0x40) == 2 &&
        (int)MEM32(obj + 0xCCC) < 0) {
        /* clock = 0 (start of stream), NOT the latest demux PTS: seeding the
         * far-ahead ingest PTS made the display believe it was at EOS the
         * moment PLAYING began (movie tore down after ~2 frames). */
        MEM32(obj + 0xCCC) = 0;
        MEM32(obj + 0xCD0) = MEM32(0xC0E4D0);
    }
    /* SYNTHETIC MOVIE CLOCK (item 82): in video-only playback the time-source
     * callback slot [obj+0xAD0] is empty and the default (sub_0017E2A0)
     * returns "no clock" (-1) forever — frames trickled at ~0.1fps and the
     * AV-sync decide skipped nearly every picture as "late". On hardware the
     * ADX audio clock drives this. Substitute vblank ticks since PLAYING
     * began (rate matches the sync-freq global 0xC0E4D0 = 59.94Hz ticks). */
    if (obj >= 0x1000 && obj < 0x8000000u) {
        extern uint32_t g_doa3_movie_ticks;   /* +2 per presented frame (FCOPY) */
        if (MEM32(obj + 0x40) == 4) {
            /* DECODE-PACED, not realtime: the recompiled decoder cannot keep
             * 29.97fps, so a wall-clock source makes every picture "late"
             * -> the AV-sync decide drops all of them and races to EOS.
             * Advance the clock (this server runs ~60Hz) only while a
             * decoded frame is waiting in a slot (state 2): the movie plays
             * at min(realtime, decode speed) with zero skips, and the clock
             * halts (no EOS race) whenever decode falls behind. */
            /* Picture PTS step is 750 clock units per frame (measured from
             * the index appends: 3000, 3750, 4500 ...). Advance at realtime
             * pace but never past the NEXT undelivered frame's due time —
             * otherwise the clock races ahead while a decoded frame waits
             * and the whole stream goes "late" (drop storm -> EOS race).
             * Delivered-frame count comes from the movie blit wrapper
             * (g_doa3_movie_frames).
             * item 100: "+375 per call" assumed this server runs at 60Hz;
             * after the QPC-detector fix the pump runs 90+/s and the movie
             * played ~1.5x fast (doa3_log_r3.txt) — just as the pre-fix
             * 40 pumps/s made it play 0.67x slow. The AV clock is the ONE
             * place wall time is correct (hardware feeds it from the
             * 59.94Hz crystal): accumulate elapsed QPC time at 22477.5
             * units/s (= 375 x 59.94). Scheduling stays count-based; the
             * undelivered-frame cap still halts the clock when decode
             * falls behind, and the accumulator is capped so a stall does
             * not bank a catch-up burst. */
            extern uint32_t g_doa3_movie_frames;
            {
                LARGE_INTEGER n;
                if (!s_mvclk_qpf) { LARGE_INTEGER f; QueryPerformanceFrequency(&f); s_mvclk_qpf = f.QuadPart; }
                QueryPerformanceCounter(&n);
                if (s_mvclk_last)
                    s_mvclk_accum += (double)(n.QuadPart - s_mvclk_last) * 22477.5 / (double)s_mvclk_qpf;
                s_mvclk_last = n.QuadPart;
                if (s_mvclk_accum > 1500.0) s_mvclk_accum = 1500.0;   /* max 2 frames of catch-up */
            }
            /* allow the clock past the next frame's PTS (delivery compare
             * may be strict-greater) but stay below the frame after it.
             * Drain CONTINUOUSLY (no 375 quantization): the quantized drain
             * measured 0.67x (doa3_log_r4.txt) — the clock parks cap-bound
             * mid-frame, the accumulator ceilings and every round discards
             * wall time. With a continuous drain the clock tracks wall time
             * exactly whenever the serve side keeps the cap ahead. */
            {
                uint32_t cap = (g_doa3_movie_frames + 1u) * 750u + 749u;
                if (g_doa3_movie_ticks < cap && s_mvclk_accum >= 1.0) {
                    double room = (double)(cap - g_doa3_movie_ticks);
                    double adv = s_mvclk_accum < room ? s_mvclk_accum : room;
                    uint32_t step = (uint32_t)adv;
                    g_doa3_movie_ticks += step;
                    s_mvclk_accum -= (double)step;
                }
            }
            MEM32(obj + 0xCCC) = g_doa3_movie_ticks;
            MEM32(obj + 0xCD0) = MEM32(0xC0E4D0);
        } else {
            g_doa3_movie_ticks = 0;    /* reset for the next movie */
            { extern uint32_t g_doa3_movie_frames; g_doa3_movie_frames = 0; }
            s_mvclk_last = 0; s_mvclk_accum = 0.0;
            {   /* item 104: clear startup slot-holds + ahead accounting */
                extern void doa3_reset_slot_pending(void);
                extern uint32_t g_doa3_pics_decoded, g_doa3_pics_served;
                doa3_reset_slot_pending();
                g_doa3_pics_decoded = 0;
                g_doa3_pics_served = 0;
            }
        }
    }
}
void sub_0017D380_gen(void);
void sub_0017D380(void)
{
    static int s_junk = 0;
    if (!sfdec_pool_obj_ok(eax)) {
        if (s_junk < 4) {
            s_junk++;
            fprintf(stderr, "[VSM] REJECT junk obj=0x%X%c", eax, 10);
            fflush(stderr);
        }
        esp += 4; return;
    }
    sub_0017D380_gen();
}
void sub_0017D470_gen2(void);
void sub_0017D470(void)
{
    static int s_junk = 0;
    uint32_t h = MEM32(esp + 4);
    if (!sfdec_pool_obj_ok(h)) {
        if (s_junk < 4) {
            s_junk++;
            fprintf(stderr, "[VKICK] REJECT junk h=0x%X%c", h, 10);
            fflush(stderr);
        }
        eax = 0; esp += 4; return;
    }
    sub_0017D470_gen2();
}
void sub_0017ECC0_gen(void);
void sub_0017ECC0(void)
{
    static int s_n = 0;
    uint32_t slot = esi, vt = (esi >= 0x10000 && esi < 0x8000000) ? MEM32(esi) : 0;
    sub_0017ECC0_gen();
    if (s_n < 8) { s_n++;
        fprintf(stderr, "[GROW] #%d slot=0x%X cap=0x%X base=0x%X -> 0x%X%c",
                s_n, slot,
                (slot >= 0x10000 && slot < 0x8000000) ? MEM32(slot + 0x20) : 0,
                (slot >= 0x10000 && slot < 0x8000000) ? MEM32(slot + 0x1C) : 0,
                eax, 10);
        (void)vt;
        fflush(stderr); }
}
RET_PROBE(sub_001840F0)
RET_PROBE(sub_00184000)
RET_PROBE(sub_001842F0)
RET_PROBE(sub_001790C0)
RET_PROBE(sub_00178FD0)
RET_PROBE(sub_0017B6D0)
RET_PROBE(sub_0016DB80)
RET_PROBE(sub_0016DF10)
RET_PROBE(sub_00173930)
RET_PROBE(sub_001740D0)

/* DIAG: SJ creator + wxCi session creator (both inside the ADXSTM create). */
void sub_0016AE80_gen(void);
void sub_0016AE80(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    if (a2 & 0x80000000u) {
        /* Negative region size (X-0x800 with X=0 upstream). A ring with cap
         * 0xFFFFF800 writes anywhere = guest-wide memory corruption (junk
         * sfdec handles / ASCII stream bytes showing up as pointers).
         * Dump the caller frame to identify the layout bug, then clamp. */
        fprintf(stderr, "[SJNEG] a1=0x%X a2=0x%X frame:", a1, a2);
        for (int k = 0; k < 20; k++)
            fprintf(stderr, " %X", MEM32(esp + 4u * k));
        fprintf(stderr, "%c", 10);
        fflush(stderr);
        MEM32(esp + 8) = 0x800;  /* clamp: minimal sane ring */
    }
    sub_0016AE80_gen();
    if (s_n < 40) { s_n++;
        fprintf(stderr, "[SJ] #%d a1=0x%X a2=0x%X -> 0x%X\n", s_n, a1, a2, eax);
        fflush(stderr); }
}
void sub_0016E060_gen(void);
void sub_0016E060(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4);
    sub_0016E060_gen();
    if (s_n < 12) { s_n++;
        fprintf(stderr, "[WXSES] #%d src=0x%X -> 0x%X\n", s_n, a1, eax);
        fflush(stderr); }
}

/* DIAG: ADXSTM creator (sub_0016A130(buf, bufsize, nstm)): the audio
 * substream init (sub_00178D60) fails here with FF000C04. */
void sub_0016A130_gen(void);
void sub_0016A130(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    sub_0016A130_gen();
    if (s_n < 10) {
        s_n++;
        {   int used = 0; char bits[20];
            for (int k = 0; k < 16; k++) {
                bits[k] = MEM8(0xC04DE0 + 0x9Cu * k) ? '1' : '0';
                if (bits[k] == '1') used++;
            }
            bits[16] = 0;
            {   int u2 = 0, u3 = 0, u4 = 0;
                for (int k = 0; k < 16; k++) {
                    if (MEM16(0xBF7BC0 + 0xB8u * k)) u2++;
                    if (MEM32(0xBF7460 + 0x34u * k)) u3++;
                    if (MEM8(0xC04380 + 0xA4u * k)) u4++;
                }
                fprintf(stderr, "[ADXSTM] #%d buf=0x%X size=0x%X n=%u -> 0x%X pools: stm=%s(%d/16) wxrd=%d/16 voice=%d/16 rna=%d/16\n",
                        s_n, a1, a2, a3, eax, bits, used, u2, u3, u4);
            }
        }
        fflush(stderr);
    }
}

/* DIAG: sfdec create (sub_0017D240): print the 15-dword param block to see
 * which field is null when the audio substream init is active. */
void sub_0017D240_gen(void);
void sub_0017D240(void)
{
    static int s_n = 0;
    uint32_t p = MEM32(esp + 4);
    if (s_n < 3) {
        s_n++;
        fprintf(stderr, "[SFCRT] params@0x%X:", p);
        for (int k = 0; k < 15; k++) fprintf(stderr, " %X", MEM32(p + 4u * k));
        fprintf(stderr, " | pool n=%d base=0x%X st0=%d st1=%d\n",
                (int)MEM32(0xC0E514), MEM32(0xC0E518),
                MEM32(0xC0E518) ? (int)MEM32(MEM32(0xC0E518) + 0x40) : -1,
                MEM32(0xC0E518) ? (int)MEM32(MEM32(0xC0E518) + 0x60D8 + 0x40) : -1);
        fflush(stderr);
    }
    sub_0017D240_gen();
    if (s_n <= 3) {
        uint32_t slot0 = MEM32(0xC0E518);
        fprintf(stderr, "[SFCRT] -> eax=0x%X slot0err=0x%X slot0st=%d\n",
                eax, slot0 ? MEM32(slot0 + 0x988) : 0,
                slot0 ? (int)MEM32(slot0 + 0x40) : -1);
        fflush(stderr);
    }
    /* MISSING-ATTACH FIX: SJ-backed queues (type 5) carve an extra region
     * after their ring for the PICTURE INDEX (12-byte entries; size stored
     * at rec+0x24), but nothing in the emitted code ever initializes the
     * index struct at rec+0x40 {table,cap,count,cursor,rd}. Without it the
     * demux-side append (sub_00182700 -> sub_001825D0) skips silently and
     * the picture setup (sub_001827B0) rejects every picture -> no video
     * decode ever happens. Attach it here right after sfdec create. */
    if (eax >= 0x1000 && eax < 0x8000000u) {
        uint32_t hh = eax;
        for (uint32_t qq = 0; qq < 8; qq++) {
            uint32_t rec = hh + qq * 0x388u + 0xD34;
            if (MEM32(rec) != 5) continue;               /* type-5 only */
            uint32_t base = MEM32(rec + 0x18), ringsz = MEM32(rec + 0x1C);
            uint32_t idxsz = MEM32(rec + 0x24);
            if (!base || !idxsz || MEM32(rec + 0x40)) continue;
            MEM32(rec + 0x40) = base + ringsz;           /* table */
            MEM32(rec + 0x44) = idxsz / 12u;             /* cap (entries) */
            MEM32(rec + 0x48) = 0;                       /* count */
            MEM32(rec + 0x4C) = 0;                       /* write cursor */
            MEM32(rec + 0x50) = 0;                       /* read cursor */
            fprintf(stderr, "[IDXFIX] q%u table=0x%X cap=%u\n",
                    qq, base + ringsz, idxsz / 12u);
            fflush(stderr);
        }
        /* PASS-THROUGH BYPASS: substreams 4/5 (the q3->q5 and q4->q6 movers)
         * have no vtable in this config (table 0x2199AC slots 4/5 = 0), so no
         * service ever moves entries or flags between those queues, and the
         * output substreams (6=video, 7=audio) starve reading q5/q6. The
         * pass-throughs transform nothing -> point the consumers directly at
         * the producer queues. */
        if (MEM32(hh + 0x53B0) == 5) {
            MEM32(hh + 0x53B0) = 3;                      /* video out: q5 -> q3 */
            fprintf(stderr, "[QBYP] slot6 reads q3\n");
        }
        if (MEM32(hh + 0x59C0) == 6) {
            MEM32(hh + 0x59C0) = 4;                      /* audio out: q6 -> q4 */
            fprintf(stderr, "[QBYP] slot7 reads q4\n");
        }
        fflush(stderr);
    }
}

/* DIAG: sfdec size calculator (create path) — print the size table it fills.
 * After the 30 vtable-fn emissions the sfdec create started failing with
 * params+4==0; these outputs feed the buffer carve in sub_00176970. */
void sub_00176330_gen(void);
void sub_00176330(void)
{
    static int s_n = 0;
    sub_00176330_gen();
    if (s_n < 3) {
        s_n++;
        fprintf(stderr, "[SFSZ] D8=%X DC=%X E0=%X E4=%X E8=%X EC=%X F0=%X F4=%X F8=%X FC=%X\n",
                MEM32(0xB289D8), MEM32(0xB289DC), MEM32(0xB289E0), MEM32(0xB289E4),
                MEM32(0xB289E8), MEM32(0xB289EC), MEM32(0xB289F0), MEM32(0xB289F4),
                MEM32(0xB289F8), MEM32(0xB289FC));
        fflush(stderr);
    }
}

/* DIAG: sfdec state-2 evaluator (fastcall, handle in eax): print cmd (+0x44),
 * gate sub_0017C980 result path, and the state it returns. */
void sub_0017D0E0_gen(void);
void sub_0017D0E0(void)
{
    static unsigned s_n = 0;
    uint32_t h = eax;
    uint32_t cmd = MEM32(h + 0x44), st = MEM32(h + 0x40);
    sub_0017D0E0_gen();
    if (++s_n <= 6 || (s_n % 2000) == 0) {
        fprintf(stderr, "[SFEV] #%u h=0x%X st=%u cmd=%u -> %u (9CC=0x%X)\n",
                s_n, h, st, cmd, eax, MEM32(h + 0x9CC));
        fflush(stderr);
    }
}

/* DIAG: gate sub_0017C980 (fastcall-ish, handle in esi). */
void sub_0017C980_gen(void);
void sub_0017C980(void)
{
    static unsigned s_n = 0;
    uint32_t h = esi;
    sub_0017C980_gen();
    if (++s_n <= 6 || (s_n % 2000) == 0) {
        fprintf(stderr, "[SFGATE] #%u h=0x%X -> %u strm[4..8]=%X %X %X %X %X\n",
                s_n, h, eax,
                MEM32(h + 0x994 + 16), MEM32(h + 0x994 + 20), MEM32(h + 0x994 + 24),
                MEM32(h + 0x994 + 28), MEM32(h + 0x994 + 32));
        fprintf(stderr, "[SFSUB]");
        for (int si = 0; si < 9; si++) {
            uint32_t vt = MEM32(h + 0x2F4C + 0x610u * si);
            fprintf(stderr, " %d:%X", si, vt);
            if (vt >= 0x10000 && vt < 0x400000)
                fprintf(stderr, "(p2=%X)", MEM32(vt + 8));
        }
        fprintf(stderr, "\n");
        fflush(stderr);
    }
}
/* Boot-task body enter/exit markers (BOOT_MARK was #undef'd above). */
#define BOOT_MARK2(name) \
    void name(void) { \
        extern void name##_gen(void); \
        static int n = 0; \
        int log = (n < 4); n++; \
        if (log) { fprintf(stderr, "[BOOTMARK] " #name " enter\n"); fflush(stderr); } \
        name##_gen(); \
        if (log) { fprintf(stderr, "[BOOTMARK] " #name " exit (eax=0x%X)\n", eax); fflush(stderr); } \
    }
BOOT_MARK2(sub_000833E0)         /* boot task stage driver (enter/exit) */
BOOT_MARK2(sub_00084340)         /* boot task body (enter/exit) */
CALL_COUNT_PROBE(sub_0009E340)   /* movie step-complete cleanup */
CALL_COUNT_PROBE(sub_0016B400)   /* ADX stream handle create (movie work buf) */
CALL_COUNT_PROBE(sub_0009C840)   /* sound/cache init: registers wxCi groups */
CALL_COUNT_PROBE(sub_0009F730)   /* caller of sub_0009C840 */

/* sub_00169150 — ADXF partition mount/install status poll. The boot task's
 * sound/cache init (sub_0009C840) hard-spins `while (sub_00169150(id) != 3)`
 * with NO yield; on Xbox the ADX server thread advances the mount, but here
 * the CRI workers are fibers that only run at yield points — the spin
 * deadlocks the whole process (frame counter freezes at 1). Pulse the vblank
 * event and yield to the workers whenever the mount isn't complete, mirroring
 * the sub_00170330 yield wrapper. Gen body renamed _gen. */
void sub_00169150(void)
{
    extern void sub_00169150_gen(void);
    static unsigned s_n = 0;
    sub_00169150_gen();
    if (eax != 3) {
        MEM32(0x001C2CF0 + 4) = 1;              /* vblank KEVENT.SignalState */
        xbox_fiber_wake(0x001C2CF0);
        /* MOUNT-STALL FORENSICS (user's session hangs here; harness doesn't):
         * after ~30s of failed polls, dump the fiber table + CRI lock
         * globals once so the user's own log identifies the parked fiber. */
        {
            static unsigned s_mn = 0;
            if (++s_mn == 600000) {
                extern void xbox_fiber_dump_states(void);
                fprintf(stderr, "[MOUNTSTALL] 600k polls; state:%c", 10);
                xbox_fiber_dump_states();
                fprintf(stderr, "[MOUNTSTALL] B24D38=%X C0E384=%X C065C0=%X C07620=%X "
                        "C0C500=%X B24D58=%X B24D24=%X%c",
                        MEM32(0xB24D38), MEM32(0xC0E384),
                        MEM32(0xC065C0), MEM32(0xC07620),
                        MEM32(0xC0C500), MEM32(0xB24D58), MEM32(0xB24D24), 10);
                /* op pool snapshot: what op sits unprocessed? */
                for (int op = 0; op < 4; op++) {
                    uint32_t o = 0xC07A40 + op * 0x40u;
                    fprintf(stderr, "[MOUNTSTALL] op%d: %X %X %X %X%c", op,
                            MEM32(o), MEM32(o + 4), MEM32(o + 8), MEM32(o + 0xC), 10);
                }
            }
        }
        {   /* no presents happen during this spin — service the window so it
             * doesn't go "Not Responding" under the user's clicks */
            extern void doa3_pump_messages(void);
            static unsigned s_mp2 = 0;
            if ((++s_mp2 & 63) == 0) doa3_pump_messages();
        }
        {   /* item 100: deterministic mount-stall net. The item-99 stall
             * signature is exactly: ADXF op processor unclaimed (C065C0==-1)
             * with the ADXM locks FREE while a self-suspended server fiber
             * sits parked past a lost resume. Spuriously resume the workers
             * (they re-check their queue and re-park if idle — same benign
             * wake xbox_fiber_block's no-runnable fallback already does).
             * Count-based (no wall clock); 50k failed polls is far past any
             * healthy mount and ~2.5s into a real stall. */
            static unsigned s_nudge = 0, s_nlog = 0;
            if (++s_nudge >= 50000 && (s_nudge & 8191) == 0 &&
                MEM32(0xC065C0) == 0xFFFFFFFFu &&
                MEM32(0xB24D38) == 0 && MEM32(0xC0E384) == 0) {
                extern int xbox_fiber_wake_count(uint32_t event_va);
                int woke = xbox_fiber_wake_count(0xBEEF0001u);
                if (s_nlog < 4) {
                    s_nlog++;
                    fprintf(stderr, "[MOUNTNUDGE] #%u op unclaimed, locks free -> spurious worker resume (woke %d)%c",
                            s_nudge, woke, 10);
                    fflush(stderr);
                }
            }
        }
        if (xbox_fiber_active())
            xbox_fiber_yield();
    }
    if (++s_n <= 4 || (s_n % 20000) == 0) {
        fprintf(stderr, "[MOUNT] sub_00169150 #%u id=%u -> %d\n",
                s_n, MEM32(esp + 4), (int)eax);
        fflush(stderr);
    }
}

/* sub_0009FAB0 — movie-system audio gate. Reads the DirectSound object's
 * internal output status (sub_001C7392 -> sub_001C6C44: ds->+8->+8) and
 * returns bit 16 ("audio output ready"); sub_0009DD20 stores the result in
 * 0x5E5A04, and sub_0009DF60 refuses to create the Sofdec movie player when
 * it is 0. Our DSound layer has no APU so the status never reports ready
 * (additionally the gen mis-lifts the neg/sbb CF idiom in sub_001C7392 —
 * recomp bug #10 — turning the object pointer into NULL). Report ready:
 * the movie VIDEO path runs; audio submission lands in the DS stubs. */
void sub_0009FAB0(void)
{
#if 1   /* movie system audio-gate: force ready (no APU in the port) */
    eax = 1;
#else
    extern void sub_0009FAB0_gen(void);
    sub_0009FAB0_gen();
    return;
#endif
    esp += 4;
}

/* sub_0009DDB0 — movie surface-ring setup (tails into sub_0009DDE0, which
 * carves the 8 frame surfaces out of the VRAM banks @0x4889B8). With the
 * cache pre-validated the intro task reaches the movie start before the
 * graphics init has populated the banks (real hardware orders these via the
 * first-boot install delay), so all bank cursors read 0 and the setup fails
 * -> intro never plays. Yield to the other tasks until bank 0 exists (the
 * banks fill within the first ~60 frames), then run the real setup. */
void sub_0009DDB0(void)
{
    extern void sub_0009DDB0_gen(void);
    int spins = 0;
    while ((MEM32(0x4889B8) == 0 || MEM32(0x4889B8 + 0x1C) == 0) && spins < 7200) {
        MEM32(0x001C2CF0 + 4) = 1;          /* pulse vblank for CRI workers */
        xbox_fiber_wake(0x001C2CF0);
        if (!xbox_fiber_active()) break;    /* not on a task fiber: don't spin */
        xbox_fiber_yield();
        spins++;
    }
    fprintf(stderr, "[MVBANK] waited %d yields; bank0=0x%X bank1=0x%X\n",
            spins, MEM32(0x4889B8), MEM32(0x4889B8 + 0x1C));
    fflush(stderr);
    sub_0009DDB0_gen();
}

/* DIAG: movie-surface creator sub_00157FB0(w,h,?,fmt,out) -> D3D texture via
 * sub_001C6716. Print args + result to see why the Sofdec player surface
 * (720x480 fmt 0x12) fails, which makes sub_0009DDB0 return 0 and the movie
 * starter bail before creating the player. */
void sub_00157FB0_gen(void);
void sub_00157FB0(void)
{
    static int s_n = 0;
    uint32_t w = MEM32(esp + 4), h = MEM32(esp + 8), a3 = MEM32(esp + 0xC),
             fmt = MEM32(esp + 0x10), out = MEM32(esp + 0x14);
    sub_00157FB0_gen();
    if (s_n < 8) {
        s_n++;
        fprintf(stderr, "[MVSURF] w=%u h=%u a3=0x%X fmt=0x%X out=0x%X -> eax=0x%X *out=0x%X\n",
                w, h, a3, fmt, out, eax,
                (out >= 0x10000 && out < 0x8000000) ? MEM32(out) : 0);
        fflush(stderr);
    }
}

/* DIAG: ADXF_LoadPartition (sub_00169530): print ptid + filename to map which
 * partition mount hits "not AFS". */
void sub_00169530_gen(void);
void sub_00169530(void)
{
    uint32_t id = MEM32(esp + 4), fn = MEM32(esp + 8);
    char nm[40] = {0};
    if (fn >= 0x10000 && fn < 0x8000000)
        for (int i = 0; i < 39; i++) { nm[i] = (char)MEM8(fn + i); if (!nm[i]) break; }
    fprintf(stderr, "[PTLOAD] id=%u fn='%s' buf=0x%X\n", id, nm, MEM32(esp + 0x10));
    fflush(stderr);
    sub_00169530_gen();
}

/* DIAG: CRI CompareFileTime (used by the cache validator sub_0009D9B8 to
 * decide 0x5E56A0 cache-dirty). Print both FILETIMEs + result for the first
 * calls to see which compare rejects our pre-seeded cache files. */
void sub_001644E8_gen(void);
void sub_001644E8(void)
{
    static int s_n = 0;
    uint32_t a = MEM32(esp + 4), b = MEM32(esp + 8);
    uint32_t alo = MEM32(a), ahi = MEM32(a + 4), blo = MEM32(b), bhi = MEM32(b + 4);
    sub_001644E8_gen();
    if (++s_n <= 12) {
        fprintf(stderr, "[FTCMP] #%d a=%08X:%08X b=%08X:%08X -> %d\n",
                s_n, ahi, alo, bhi, blo, (int)eax);
        fflush(stderr);
    }
}

/* DIAG: wxCi copy pump — gated on the wxCi object state (+1)==2. */
void sub_00173D10_gen(void);
void sub_00173D10(void)
{
    static unsigned s_n = 0;
    uint32_t obj = MEM32(esp + 4);
    s_n++;
    if (s_n <= 4 || (s_n % 3000) == 0) {
        fprintf(stderr, "[WXPUMP] #%u obj=0x%08X st=%u slot20=%u slotSt=%u\n",
                s_n, obj, obj ? MEM8(obj + 1) : 0,
                obj ? MEM32(obj + 0x20) : 0,
                obj ? MEM32((MEM32(obj + 0x20) << 6) + obj + 0x70) : 0);
        fflush(stderr);
    }
    sub_00173D10_gen();
}


/* ── DIAG: texture-slot resolver (sub_0006E0B0) — the boot screen's quad draw
 * fails because its texture slot (0x48F288 table) is empty; this is the fn
 * that fills slots. Log calls: this=ecx, arg1(name/id), arg2(slot), result. */
void sub_0006E0B0_gen(void);
void sub_0006E0B0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    uint32_t this_ = ecx;
    sub_0006E0B0_gen();
    s_n++;
    if (s_n <= 12) {
        fprintf(stderr, "[TEXSLOT] #%d this=0x%08X a1=0x%08X slot=0x%08X a3=0x%08X -> eax=0x%08X slotval=0x%08X\n",
                s_n, this_, a1, a2, a3, eax,
                (a2 >= 0x1000 && a2 < 0x4000000) ? MEM32(a2) : 0);
        fflush(stderr);
    }
}

/* ── DIAG: D3DX draw dispatch (sub_00069BF3) — icall target hunt ────────────
 * icalls [MEM32(obj@0x49A954)]+0x14 with 8 args; the call never reaches
 * sub_001C3F50 and leaks the args. Log the object + vtable + slot. */
void sub_00069BF3_gen(void);
void sub_00069BF3(void)
{
    static int s_n = 0;
    if (s_n < 6) {
        s_n++;
        uint32_t obj = MEM32(0x49A954);
        uint32_t vt  = obj ? MEM32(obj) : 0;
        uint32_t tgt = vt ? MEM32(vt + 0x14) : 0;
        uint32_t tp  = MEM32(0x49A95C);          /* texture slot ptr */
        fprintf(stderr, "[DXDRAW] obj=0x%08X vtbl=0x%08X slot14=0x%08X texptr=0x%08X tex=0x%08X esp=0x%08X\n",
                obj, vt, tgt, tp, tp ? MEM32(tp) : 0, esp);
        fflush(stderr);
    }
    sub_00069BF3_gen();
}

/* ── DIAG: per-glyph draw (sub_00055AD0) — esp corruption hunt ──────────────
 * Called per boot-screen glyph with the 0x305B00 struct. Track esp balance
 * per call; dump struct fields when esp goes insane. */
void sub_00055AD0_gen(void);
void sub_00055AD0(void)
{
    static int s_n = 0;
    uint32_t ei = esp, a1 = MEM32(esp + 4);
    s_n++;
    sub_00055AD0_gen();
    if ((esp != ei + 4 && s_n < 2000) || s_n <= 3) {
        fprintf(stderr, "[GLYPH] #%d a1=0x%08X espin=0x%08X espout=0x%08X (d=%+d) s00=0x%08X s14=0x%04X s16=0x%04X\n",
                s_n, a1, ei, esp, (int)(esp - ei),
                a1 ? MEM32(a1) : 0, a1 ? MEM16(a1 + 0x14) : 0, a1 ? MEM16(a1 + 0x16) : 0);
        fflush(stderr);
    }
}

/* ── DIAG: screen render walker (sub_0006C480) — draws never reach the PB ───
 * Called per frame by the render dispatch; walks the draw-task list built by
 * the boot task and issues sprite/glyph draws. Log call rate + first arg. */
void sub_0006C480_gen(void);
void sub_0006C480(void)
{
    static int s_n = 0;
    s_n++;
    if (s_n <= 4 || (s_n % 600) == 0) {
        fprintf(stderr, "[RWALK] #%d a1=0x%08X a2=0x%08X ecx=0x%08X\n",
                s_n, MEM32(esp + 4), MEM32(esp + 8), ecx);
        fflush(stderr);
    }
    sub_0006C480_gen();
}

/* ── DIAG: boot-task create loop (531B objects, never freed) ────────────────
 * sub_00084340 (boot screen handler) -> sub_00021F70 -> sub_000572C0 -> ... ->
 * operator new, ~4000/s. Log call rates + args to find the retry condition. */
void sub_00021F70_gen(void);
void sub_00021F70(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    s_n++;
    if (s_n <= 5 || (s_n % 2000) == 0) {
        fprintf(stderr, "[T21F70] #%d a1=0x%08X a2=0x%08X a3=0x%08X eax=0x%08X\n",
                s_n, a1, a2, a3, eax);
        fflush(stderr);
    }
    sub_00021F70_gen();
    fprintf(stderr, "[T21F70] #%d RETURNED eax=0x%08X\n", s_n, eax);
    fflush(stderr);
}
void sub_000572C0_gen(void);
void sub_000572C0(void)
{
    static int s_n = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; /* ABI: its draw chain
        clobbers esi -> the intro sequencer's fade-out loop counter reset
        every frame -> the sequencer never left the warning screen. */
    s_n++;
    if (s_n <= 5 || (s_n % 2000) == 0) {
        fprintf(stderr, "[T572C0] #%d a1=0x%08X a2=0x%08X ecx=0x%08X\n", s_n, a1, a2, ecx);
        fflush(stderr);
    }
    sub_000572C0_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}

/* ── DIAG: D3DX context Initialize (sub_001C3C65, thiscall this=ecx, 1 arg) —
 * fails every frame -> the game re-creates its render state block forever
 * (flag 0x49A950 never sets, 512B leak per retry, and likely draws=0). Log hr. */
void sub_001C3C65_gen(void);
void sub_001C3C65(void)
{
    uint32_t this_ = ecx, dev = MEM32(esp + 4), esp_in = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; /* ABI: its fragment chain
        clobbers ebx -> the factory sub_001C35CE stored the created object to a
        garbage address instead of the out-param (0x49A954 stayed NULL). */
    sub_001C3C65_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    static int s_log = 0;
    if (s_log < 8) {
        s_log++;
        fprintf(stderr, "[D3DX-INIT] this=0x%08X dev=0x%08X -> hr=0x%08X espin=0x%08X espout=0x%08X d=%+d\n",
                this_, dev, eax, esp_in, esp, (int)(esp - esp_in));
        fflush(stderr);
    }
    esp = esp_in + 8;  /* enforce: thiscall, 1 stack arg (ret 4) — a residual
                        * -28 leak remains somewhere in its fragment chain */
}

/* D3DDevice_EndStateBlock(&handle) — ABI-enforcement wrapper (+ diagnostics).
 * Same disease as RecordStateBlock below: an inner callee's broken cleanup
 * makes the mis-split epilogue fragments pop leftover args into edi/esi/ebx
 * (edi came back = 0x1C0800 g_pDevice), which destroyed the D3DX create
 * loop's bound. Enforce callee-saved registers here. */
void sub_001BEEFE_gen(void);
void sub_001BEEFE(void)
{
    uint32_t outp = MEM32(esp + 4), esp_in = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001BEEFE_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    static int s_log = 0;
    if (s_log < 8) {
        s_log++;
        fprintf(stderr, "[END-SB] espin=0x%08X espout=0x%08X out=0x%08X -> hr=0x%08X handle=0x%08X edi=0x%08X ctr=0x%08X\n",
                esp_in, esp, outp, eax, outp ? MEM32(outp) : 0, edi, MEM32(esp + 0x10));
        fflush(stderr);
    }
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
            fprintf(stderr, "[ESP] " #fn " in=0x%08X out=0x%08X d=%+d\n", ei, esp, (int)(esp - ei)); \
            fflush(stderr); } \
    }
ESP_PROBE(sub_00176230)   /* movie ring finalize */
ESP_PROBE(sub_001B2440)
ESP_PROBE(sub_001B23C0)
ESP_PROBE(sub_001B2800)
ESP_PROBE(sub_001B2520)
ESP_PROBE(sub_001B28F0)
/* SetVertexShader(FVF) — after the call, dump the fixed-function shader
 * object (0x1C0688: +4 flags, +0x30 16 attr formats stride 0x10) and the
 * device's current-shader fields, to see where the FVF parse chain loses
 * the attribute layout (draw-time lazy apply reads all formats disabled). */
void sub_001B45F0_gen(void);
void sub_001B45F0(void)
{
    static int s_n = 0;
    uint32_t fvf = MEM32(esp + 4);
    uint32_t ei = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001B45F0_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    esp = ei + 4 + 4;   /* ret 4 (enforce; fragments) */
    if (s_n < 6) {
        s_n++;
        uint32_t o = 0x1C0688, dev = MEM32(0x1C3390);
        fprintf(stderr, "[SETVS] fvf=0x%X obj+4=0x%X dev470=0x%X dev8=0x%X slots:",
                fvf, MEM32(o + 4),
                dev ? MEM32(dev + 0x470) : 0, dev ? MEM32(dev + 8) : 0);
        for (int k = 0; k < 20; k++) {
            uint32_t fm = MEM32(o + 0x30 + 0x10u * k);
            if (fm != 2) fprintf(stderr, " [%d]=0x%X@%X", k, fm, MEM32(o + 0x2C + 0x10u * k));
        }
        fprintf(stderr, "\n");
        fflush(stderr);
    }
}
ESP_PROBE(sub_001B2390)
ESP_PROBE(sub_001B2930)
ESP_PROBE(sub_001B1CC0)
ESP_PROBE(sub_001B4230)
ESP_PROBE(sub_001B10B0)
ESP_PROBE(sub_001B0DE0)
ESP_PROBE(sub_001C3F50)   /* D3DX draw (8 args, ret 0x20): expect d=+36 */
/* DIAG: sub_001B7690 — dirty-state flusher called at the head of the lazy
 * vertex apply (sub_001B79F0). If it leaks esp, every esp-relative local in
 * the apply (incl. the saved device slot at esp+0x10) reads garbage and the
 * attr walker writes nowhere. Measure drift (expected +4). */
void sub_001B7690_gen(void);
void sub_001B7690(void)
{
    static int s_n = 0;
    uint32_t ei = esp;
    sub_001B7690_gen();
    if (s_n < 6) {
        s_n++;
        fprintf(stderr, "[FLUSH7690] d=%+d\n", (int)(esp - ei));
        fflush(stderr);
    }
}

/* DIAG: drift probes for the 8 dirty-state sub-appliers under sub_001B7690. */
#define DRIFT_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static int s_n = 0; \
        uint32_t ei = esp; \
        fn##_gen(); \
        if (s_n < 3 && (int)(esp - ei) != 4) { \
            s_n++; \
            fprintf(stderr, "[DRIFT] " #fn " d=%+d\n", (int)(esp - ei)); \
            fflush(stderr); } \
    }
/* sub_001B6610 (combiner-state applier, ret 4): leaks -44 through its
 * sub_001B6650 fragment chain (bug class #7). ABI-enforced: */
void sub_001B6610_gen(void);
void sub_001B6610(void)
{
    uint32_t ei = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001B6610_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    esp = ei + 4 + 4;
}
DRIFT_PROBE(sub_001B6120)
DRIFT_PROBE(sub_001B69F0)
DRIFT_PROBE(sub_001B74A0)
DRIFT_PROBE(sub_001B6810)
DRIFT_PROBE(sub_001B6290)
/* sub_001B6410 (texture-stage dirty applier, ret 4): leaks -176 bytes via its
 * fragmented callee chain (sub_001BC260 -> _2CF/_45A fragments, bug class #7),
 * which sank every esp-relative local in the lazy vertex apply above it —
 * the attr walker wrote into a garbage device pointer and dev+0x874 stayed 0,
 * killing EVERY draw. ABI-enforce instead of probing: */
DRIFT_PROBE(sub_001B7180)
void sub_001B6410_gen(void);
void sub_001B6410(void)   /* ABI-enforced (ESP_FIX pattern; macro defined later), ret 4 */
{
    uint32_t ei = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001B6410_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    esp = ei + 4 + 4;
}

/* sub_001B3760 — D3D inline vertex push (BEGIN prim + scatter-gather copy of
 * vertex attributes into the push buffer). The copy loop walks descriptors at
 * device+0x7F4 (pairs {dwords, skip}) with count device+0x874, both populated
 * by SetVertexShader. Print them at call time: garbage descriptors = the
 * movie-quad crash (host memcpy read past base+4GB). */
void sub_001B3760_gen(void);
void sub_001B3760(void)
{
    static int s_n = 0;
    uint32_t dev = MEM32(0x1C3390);
    if (s_n < 6) {
        s_n++;
        {   uint32_t vb = MEM32(esp + 0xC);
            fprintf(stderr, "[VDATA]");
            for (int k = 0; k < 24; k++) {
                union { uint32_t u; float f; } cv; cv.u = MEM32(vb + 4u * k);
                fprintf(stderr, " %.5g", cv.f);
            }
            fprintf(stderr, "\n");
        }
        fprintf(stderr, "[VPUSH] prim=%u n=%u verts=0x%X stride=0x%X dev=0x%X attrCnt=0x%X d0={%X,%X} d1={%X,%X} 7E8=0x%X 7EC=0x%X 7F0=0x%X\n",
                MEM32(esp + 4), MEM32(esp + 8), MEM32(esp + 0xC), MEM32(esp + 0x10),
                dev, dev ? MEM32(dev + 0x874) : 0,
                dev ? MEM32(dev + 0x7F4) : 0, dev ? MEM32(dev + 0x7F8) : 0,
                dev ? MEM32(dev + 0x7FC) : 0, dev ? MEM32(dev + 0x800) : 0,
                dev ? MEM32(dev + 0x7E8) : 0, dev ? MEM32(dev + 0x7EC) : 0,
                dev ? MEM32(dev + 0x7F0) : 0);
        fflush(stderr);
    }
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    uint32_t ei = esp;
    /* GUARD: with no vertex attributes applied (dev+0x874 == 0) the inline
     * copy loop underflows (0-1 -> 4G iterations) and marches host memcpy
     * past the 4GB mapping. Run the lazy vertex-shader apply FIRST (the gen
     * draw does the same as its first step, and re-running is a no-op once
     * the dirty bit is consumed); only skip if the layout is STILL empty. */
    if (dev && MEM32(dev + 0x874) == 0) {
        extern void sub_001B79F0(void);
        uint32_t s2_edi = edi, s2_esi = esi, s2_ebx = ebx;
        ecx = dev;                               /* fastcall this = device */
        PUSH32(esp, 0); sub_001B79F0();
        edi = s2_edi; esi = s2_esi; ebx = s2_ebx;
        esp = ei;
    }
    if (!dev || MEM32(dev + 0x874) == 0) {
        static int s_g = 0;
        if (s_g < 8) {
            s_g++;
            fprintf(stderr, "[VPUSH] SKIPPED draw (attrCnt still 0 after apply, dev8=0x%X dev470=0x%X obj+4=0x%X obj+C=0x%X s0=0x%X s1=0x%X s9=0x%X post7F4={%X,%X} 874=0x%X)\n",
                    dev ? MEM32(dev + 8) : 0, dev ? MEM32(dev + 0x470) : 0,
                    MEM32(0x1C0688 + 4), MEM32(0x1C0688 + 0xC),
                    MEM32(0x1C0688 + 0x30), MEM32(0x1C0688 + 0x40), MEM32(0x1C0688 + 0xC0),
                    dev ? MEM32(dev + 0x7F4) : 0, dev ? MEM32(dev + 0x7F8) : 0,
                    dev ? MEM32(dev + 0x874) : 0);
            fflush(stderr);
        }
        esp = ei + 4 + 16;   /* ret 16 */
        return;
    }
    /* Feed the pgraph the CPU-side vertex layout for this draw: walk the
     * FVF shader object's NV attribute slots (fmt at obj+0x30+i*0x10; fmt 2 =
     * disabled; type=fmt&0xF, count=(fmt>>4)&0xF) accumulating dword offsets.
     * NV slots: 0=position, 3=diffuse (D3DCOLOR, 1 dword), 9=texcoord0. */
    {
        extern void pgraph_d3d11_set_vertex_layout(uint32_t, int, int, int);
        uint32_t obj = MEM32(dev + 0x470);
        if (obj) {
            int off = 0, pos_dw = 2, uv_off = -1, color_off = -1;
            for (int sl = 0; sl < 16; sl++) {
                uint32_t fm = MEM32(obj + 0x30 + 0x10u * sl);
                if (fm == 2) continue;
                uint32_t ty = fm & 0xF, cn = (fm >> 4) & 0xF;
                int dw = (ty == 2) ? (int)cn
                       : (ty == 0 || ty == 4) ? 1
                       : (ty == 1 || ty == 5) ? (int)((cn + 1) / 2)
                       : (int)cn;
                if (sl == 0) pos_dw = dw;
                else if (sl == 3) color_off = off;
                else if (sl == 9) uv_off = off;
                off += dw;
            }
            pgraph_d3d11_set_vertex_layout((uint32_t)(MEM32(esp + 0x10) / 4),
                                           pos_dw, uv_off, color_off);
        }
    }
    sub_001B3760_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    (void)ei;
}
ESP_PROBE(sub_001B37F0)
ESP_PROBE(sub_001C4069)   /* D3DX context Release (vtbl slot 2) */
ESP_PROBE(sub_00069C70)   /* boot-screen D3DX teardown (RestoreState+Release) */
ESP_PROBE(sub_000566D0)   /* boot-screen glyph frame fn (tail-chains 69C70) */
ESP_PROBE(sub_00069B60)   /* boot-screen D3DX ensure-created */
ESP_PROBE(sub_00069BD0)   /* boot-screen draw dispatcher */

/* ESP_FIX: like ESP_PROBE but also ENFORCES the known stdcall stack cleanup
 * (esp_out = esp_in + 4 + argbytes) — for XDK functions whose inner callees
 * leak stack through mis-split fragments. Registers + esp fully restored to
 * the ABI contract; the inner rot stays contained. */
#define ESP_FIX(fn, argbytes) \
    void fn##_gen(void); \
    void fn(void) { \
        uint32_t ei = esp; \
        uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx; \
        fn##_gen(); \
        edi = s_edi; esi = s_esi; ebx = s_ebx; \
        esp = ei + 4 + (argbytes); \
    }
/* D3DTexture_LockRect (0x1B4B30, per cxbx symbols) — full semantic override.
 * The inner XDK path (sub_001BA3F0/sub_001BA1C0) is mis-split by the lifter
 * and returned a garbage D3DLOCKED_RECT (pBits=0/0x2D0), so the movie CSC
 * had no destination and the screen stayed black. Decode the Xbox
 * D3DPixelContainer header ourselves:
 *   +0 Common  +4 Data (GPU addr of pixels)  +8 Lock  +C Format  +10 Size
 *   Size(linear): width-1 [0:11] | height-1 [12:23] | pitch/64-1 [24:31]
 * pBits = Data (raw guest RAM address; 0x8xxxxxxx alias also maps there).
 * args: (pTex, level, pLockedRect, pRect, flags), ret 20, eax=HRESULT. */
void sub_001B4B30(void)
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
        fprintf(stderr, "[LOCKR] #%d tex=%X hdr={%X %X %X %X %X} -> pitch=%u pBits=%X%c",
                s_n, tex, MEM32(tex), data, MEM32(tex + 8), fmt, size,
                pitch, data & 0x07FFFFFFu, 10);
        fflush(stderr);
    }
    s_n++;
    eax = 0;
    esp += 24;   /* fake-ret slot + ret 20 */
}
ESP_FIX(sub_001BEA38, 4)   /* D3DDevice_ApplyStateBlock(handle), ret 4 */
ESP_FIX(sub_001BEBC0, 4)   /* D3DDevice_CaptureStateBlock(handle), ret 4 */
ESP_FIX(sub_001C35C0, 8)   /* D3DX context factory (dev, out), ret 8 */

/* DSOUND per-frame service chain: the main loop calls sub_001C760D every
 * frame; its stream-service path (sub_001C6D91 -> sub_001C883B QPC poll
 * loops) LEAKS ~850 bytes of stack per frame — after ~6600 frames the main
 * stack underflows below 0xD00000 into the game BSS and destroys the CRI
 * device tables at 0xB2xxxx (the "cvFs dies mid-boot" corruption). Probe
 * esp balance; registers ABI-enforced. */
ESP_FIX(sub_001C883B, 4)  /* DSOUND stream-service tail fragment (parent is
                           * stdcall ret 4): its body falls off the end with a
                           * -4 esp drift x thousands of poll calls per frame.
                           * NOT a restorable fall-through (recurses) - enforce
                           * the parent's contract here. */
ESP_FIX(sub_001C6D91, 4)  /* DSOUND stream service, stdcall ret 4: leaked 752
                           * bytes PER FRAME -> main stack underflowed into the
                           * game BSS after ~6600 frames, destroying the CRI
                           * device tables (the mid-boot cvFs death) */
ESP_PROBE(sub_001C760D)

/* Main-loop callee balance probes: the frame loop (sub_000A06D0) leaks
 * ~320 B/frame; find which per-frame callee drifts (prints every 600th
 * call with esp so the drift shows). */
#define LOOP_PROBE(fn) \
    void fn##_gen(void); \
    void fn(void) { \
        static unsigned s_n = 0; \
        uint32_t ei = esp; \
        fn##_gen(); \
        s_n++; \
        if ((s_n % 600) == 1) { \
            fprintf(stderr, "[LOOP] " #fn " #%u in=0x%08X d=%+d\n", s_n, ei, (int)(esp - ei)); \
            fflush(stderr); } \
    }
LOOP_PROBE(sub_000A0370)
void sub_0017EC00_gen(void);
void sub_0017EC00(void)
{
    static unsigned s_n = 0;
    uint32_t ei = esp;
    sub_0017EC00_gen();
    s_n++;
    if ((s_n % 5000) == 1 && ei > 0xF00000) {   /* task-stack callers only (heap base) */
        void *bt[7]; int n = CaptureStackBackTrace(1, 7, bt, NULL);
        fprintf(stderr, "[WAITBT] #%u in=0x%08X callers:", s_n, ei);
        for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
        fprintf(stderr, "\n"); fflush(stderr);
    }
}
LOOP_PROBE(sub_0009DC40)
LOOP_PROBE(sub_0009EE80)
LOOP_PROBE(sub_00153D90)
ESP_FIX(sub_00153EC0, 0)  /* game audio-frame service: leaked 24 B/frame */
ESP_FIX(sub_00158B60, 0)  /* DSOUND buffer maintenance: leaked 24 B/frame */
LOOP_PROBE(sub_00164400)
LOOP_PROBE(sub_0009E67B)
LOOP_PROBE(sub_00153D70)
LOOP_PROBE(sub_000A02A0)
LOOP_PROBE(sub_000A0440)
ESP_FIX(sub_00153EF0, 0)  /* game sound-command flusher: leaked 628 B/frame —
                           * THE main-stack underflow driver (stack sank below
                           * 0xD00000 into the game BSS after ~2 min, wiping
                           * the CRI device tables at 0xB2xxxx) */


/* DIAG+contract: the D3DX 2D quad DRAW (vtbl slot 6 @0x1C408A, emitted
 * 2026-07-02). Called from sub_001C3F50's icall [vtbl+0x18]; this is where
 * the boot screen's glyphs/quads should turn into actual draw commands.
 * stdcall: this + 8 more args? — measure first (log d), enforce later. */
void sub_001C408A_gen(void);
void sub_001C408A(void)
{
    static int s_n = 0;
    uint32_t ei = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001C408A_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    s_n++;
    if (s_n <= 6 || (s_n % 5000) == 0) {
        fprintf(stderr, "[QUAD] #%d espin=0x%08X espout=0x%08X d=%+d hr=0x%08X\n",
                s_n, ei, esp, (int)(esp - ei), eax);
        fflush(stderr);
    }
}

/* ── D3D_RecordStateBlock (sub_001BE60A) ABI-enforcement wrapper ─────────────
 * The recompiled body has an inner callee with broken stack cleanup; its
 * `esp = ebp` epilogue masks the drift from callers, but the pop edi/esi/ebx
 * before it reads LEFTOVER CALL ARGS instead of the saved registers — edi came
 * back as 0x1C0800 (g_pDevice, the last pushed arg). That clobbered the D3DX
 * state-block create loop's bound (edi=2) -> infinite loop -> 500K+ 512-byte
 * allocations -> OOM. x86 ABI says edi/esi/ebx are callee-saved: enforce it
 * here until the inner culprit is root-caused. */
void sub_001BE60A_gen(void);
void sub_001BE60A(void)
{
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001BE60A_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
}

/* DIAG: D3DDevice_BeginStateBlock() — log esp at entry/exit (loop drift hunt). */
void sub_001BE5FC_gen(void);
void sub_001BE5FC(void)
{
    uint32_t esp_in = esp;
    uint32_t s_edi = edi, s_esi = esi, s_ebx = ebx;
    sub_001BE5FC_gen();
    edi = s_edi; esi = s_esi; ebx = s_ebx;
    static int s_log = 0;
    if (s_log < 8) {
        s_log++;
        fprintf(stderr, "[BEG-SB] espin=0x%08X espout=0x%08X hr=0x%08X\n", esp_in, esp, eax);
        fflush(stderr);
    }
}

/* ── DIAG: sprite/glyph blitter (sub_000403F0) — wild-write storm source ─────
 * (struct, count) cdecl. Writes walk from a garbage dest; log the struct and
 * its dest-surface field (+0x278) to find where the bad pointer comes from. */
int g_blit_gen_hits = 0;   /* incremented by a probe at sub_000403F0_gen entry */
void sub_000403F0_gen(void);
void sub_000403F0(void)
{
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    static int s_log = 0;
    if (s_log < 10) {
        s_log++;
        fprintf(stderr, "[BLIT] struct=0x%08X cnt=%d dest278=0x%08X b2=%02X b4=%02X b6=%02X b8=%02X f10=%08X\n",
                a1, (int)a2, a1 ? MEM32(a1 + 0x278) : 0,
                a1 ? MEM8(a1 + 2) : 0, a1 ? MEM8(a1 + 4) : 0,
                a1 ? MEM8(a1 + 6) : 0, a1 ? MEM8(a1 + 8) : 0,
                a1 ? MEM32(a1 + 0x10) : 0);
        fflush(stderr);
    }
    sub_000403F0_gen();
}

/* ── DIAG: boot-screen record-stream parser (sub_00080F10) ───────────────────
 * arg1 = loaded blob (12-byte header, then records tagged &0x70000, term
 * 0x80000000), arg2 = idx, arg3 = mode (0/1/2). Dump the blob header + first
 * records to see whether the file content actually loaded. */
void sub_00080F10_gen(void);
void sub_00080F10(void)
{
    uint32_t blob = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    static int s_log = 0;
    if (s_log < 8) {
        s_log++;
        fprintf(stderr, "[SCRSTREAM] blob=0x%08X idx=%d mode=%d", blob, (int)a2, (int)a3);
        if (blob)
            for (int i = 0; i < 12; i++)
                fprintf(stderr, " %08X", MEM32(blob + i * 4));
        fprintf(stderr, "\n");
        fflush(stderr);
    }
    sub_00080F10_gen();
}

/* ── DIAG: boot-screen definition loader (sub_00080D00) ──────────────────────
 * Walks a loaded file blob: MEM32(blob+4)=list head, blob+0x14=offset table,
 * entries at offset+(blob-0x14). Crashes walking wild pointers -> suspect the
 * blob is garbage (its file never read). Log args + blob header to confirm. */
void sub_00080D00_gen(void);
void sub_00080D00(void)
{
    uint32_t a1 = MEM32(esp + 4), blob = MEM32(esp + 8);
    uint32_t a3 = MEM32(esp + 0xC), a4 = MEM32(esp + 0x10);
    static int s_log = 0;
    if (s_log < 12) {
        s_log++;
        fprintf(stderr, "[SCRDEF] a1=0x%08X blob=0x%08X idx=%d mode=%d hdr={%08X %08X %08X %08X %08X}\n",
                a1, blob, (int)a3, (int)a4,
                blob ? MEM32(blob) : 0, blob ? MEM32(blob + 4) : 0,
                blob ? MEM32(blob + 8) : 0, blob ? MEM32(blob + 0xC) : 0,
                blob ? MEM32(blob + 0x10) : 0);
        fflush(stderr);
    }
    sub_00080D00_gen();
}

/* ── D3D8 push-buffer overrides (following burnout3's PB-trio pattern) ────────
 * burnout3 overrides its push-buffer management functions (sub_003518E0 kickoff,
 * sub_00351770 make-space, sub_00351A20 flush) in recomp_manual.c to: keep the
 * device write cursor inside a real RAM buffer, and simulate the GPU having
 * consumed the buffer + acked the fence (so the D3D8LTCG spin loops exit).
 * docs/d3d8ltcg_device_context.md: "device+0x30 -> device+0x2C ... GPU_read ==
 * write -> no spin loop".
 *
 * DOA3 is retail D3D8 (not D3D8LTCG); the cxbx symbol cache names the exact
 * analogues:  CDevice_KickOff=0x1B88C0, CDevice_MakeSpace=0x1B8B00,
 * XMETAL_StartPush=0x1B8DA0.  Device PB fields (mapped by reading the gen code):
 *   device[0]        = PB write cursor      device+0x04   = PB segment limit
 *   device+0x2304    = fence notifier ptr   notifier+0x44 = GPU-acked fence value
 *   device+0x2518    = FIFO GET (GPU read)  device+0x2B60 = FIFO PUT (CPU write)
 * The fence waits compare (MEM32(device) ^ MEM32(notifier+0x44)) & 0xFFFFFFF, so
 * setting notifier+0x44 = device[0] makes them self-equal -> always satisfied
 * (the "GPU read == write" trick, adapted to DOA3's notifier layout).
 * RAM push buffer is allocated in main.c. */
uint32_t g_doa3_pb_base = 0, g_doa3_pb_end = 0;
uint32_t g_doa3_movie_ticks = 0;    /* synthetic movie clock (PTS units) */
uint32_t g_doa3_movie_frames = 0;   /* frames actually blitted (clock pace anchor) */
static uint32_t g_pb_parsed = 0;   /* last push-buffer offset translated to D3D11 */

/* Push-buffer -> D3D11 translation (following burnout3's parse_live_pushbuffer).
 * Walk new push-buffer dwords [from, to), decode NV2A Kelvin method headers, and
 * dispatch each method to the shared pgraph_d3d11 translator (renders through the
 * host D3D8->D3D11 device). NV097_CLEAR_SURFACE (0x1D0) begins a frame, so present
 * the previous frame's accumulated draws when we hit one. */
#define NV097_CLEAR_SURFACE 0x01D0u
static void doa3_translate_pb(uint32_t from, uint32_t to)
{
    extern int  pgraph_d3d11_method(int subchannel, uint32_t method, uint32_t param);
    extern void pgraph_d3d11_flush(void);
    extern void doa3_present_frame(void);
    static int drew_since_present = 0;

    (void)drew_since_present;
    uint32_t pos = from;
    while (pos + 4 <= to) {
        uint32_t word = MEM32(pos); pos += 4;
        if (word == 0) continue;                       /* NOP / padding */
        uint32_t kind = word & 0xE0030003u;
        if (kind == 0 || kind == 0x40000000u) {        /* increasing / non-increasing */
            uint32_t count   = (word >> 18) & 0x7FF;
            uint32_t method  = word & 0x1FFC;
            uint32_t subchan = (word >> 13) & 7;
            if (count == 0 || pos + count * 4 > to) continue;
            for (uint32_t i = 0; i < count; i++) {
                uint32_t param = MEM32(pos); pos += 4;
                uint32_t m = (kind == 0) ? method + i * 4 : method;
                pgraph_d3d11_method((int)subchan, m, param);   /* translate to D3D11 */
            }
        }
        /* jump/call/return (low bits 1/2) carry no params we translate — skip */
    }
}

/* CDevice_KickOff (0x1B88C0) — burnout sub_003518E0 analogue. fastcall (ecx=this),
 * ret 0. Simulate GPU drain + fence ack so the FIFO/fence spin loops exit. */
static unsigned g_kick_count = 0;
void sub_001B88C0(void)
{
    uint32_t ctx = ecx;                              /* this-pointer (device/context) */
    if (ctx && ctx < 0x04000000u) {
        uint32_t cursor = MEM32(ctx);                /* device[0] = current write cursor */
        uint32_t notifier = MEM32(ctx + 0x2304);
        if ((++g_kick_count % 10000) == 0) {
            fprintf(stderr, "[KICK] count=%u (frame loop alive)\n", g_kick_count);
            fflush(stderr);
        }
        /* Translate the push-buffer commands written since the last kick to D3D11
         * (only for the main device's RAM push buffer). */
        if (g_doa3_pb_base && cursor >= g_doa3_pb_base && cursor <= g_doa3_pb_end) {
            if (g_pb_parsed < g_doa3_pb_base || g_pb_parsed > cursor)
                g_pb_parsed = g_doa3_pb_base;        /* (re)sync after a wrap */
            if (cursor > g_pb_parsed) {
                doa3_translate_pb(g_pb_parsed, cursor);
                g_pb_parsed = cursor;
            }
        }
        /* notifier may live in the cached RAM mirror (0x80000000) — that's a valid
         * RAM alias (mapped on demand by the VEH), so allow the whole RAM range. */
        if (notifier && notifier < 0xF0000000u) {
            MEM32(notifier + 0x40) = cursor;         /* PUT (as the gen does) */
            MEM32(notifier + 0x44) = cursor;         /* GPU ack == PUT -> fence satisfied */
        }
        /* GPU-side fence counter: [dev+0x3F0] points at the value the fence
         * spin (sub_001B8A10) polls; snap it to the CPU counter [dev+0x1C]. */
        {
            uint32_t fptr = MEM32(ctx + 0x3F0);
            if (fptr && fptr < 0xF0000000u) MEM32(fptr) = MEM32(ctx + 0x1C);
        }
        MEM32(ctx + 0x18)   = cursor;
        MEM32(ctx + 0x2518) = MEM32(ctx + 0x2B60);   /* FIFO drained: GET = PUT */
    }
    esp += 4;   /* ret 0 */
}

/* CDevice_MakeSpace (0x1B8B00) — burnout sub_00351770 analogue. fastcall (ecx=this),
 * ret 0. GPU consumed everything -> reset the write cursor to our RAM buffer. */
void sub_001B8B00(void)
{
    uint32_t ctx = ecx;
    if (ctx && ctx < 0x04000000u && g_doa3_pb_base) {
        MEM32(ctx + 0x00) = g_doa3_pb_base;          /* write cursor = base */
        MEM32(ctx + 0x04) = g_doa3_pb_end;           /* segment limit = end */
    }
    esp += 4;   /* ret 0 */
}

/* D3D_SetFence (0x1B8970) wrapper — burnout _gen pattern (the gen body ends with a
 * clean ret 4, so this is safe). D3DDevice_Present calls SetFence with arg==2 once
 * per frame; that's our frame boundary. Run the real fence logic, then flush the
 * translated draws and flip the host D3D8->D3D11 swapchain. */

/* D3D fence wait (0x1B8A10, cxbx: BlockOnFence internal) — spins until the
 * GPU-side fence counter MEM32([dev+0x3F0]) catches the CPU counter [dev+0x1C].
 * Our pgraph translation is synchronous (draws complete inside KickOff), so
 * every fence is already retired: no-op. This unblocked movie blit #3, which
 * parked in Lock2DSurface -> D3D_BlockOnResource -> this spin (item 80). */
void sub_001B8A10(void)
{
    static int s_n = 0;
    if (s_n < 6) { fprintf(stderr, "[BLKF] #%d fence=0x%08X%c", s_n, MEM32(esp + 4), 10); fflush(stderr); }
    s_n++;
    esp += 12;  /* fake-ret slot + ret 8 */
}

/* DIAG: block store (dequant/IDCT output). Called from the MB workers.
 * item 103 GUARD: negative a2 resolves the real count from the table at
 * 0xBF27C8-4*a2 and tail-calls the MMX kernel sub_00186440, which
 * transforms (count/4) x 64-byte chunks IN PLACE from a1 upward. One call
 * with a garbage count/pointer becomes a LINEAR MEMORY SWEEP — caught
 * red-handed by the [SLOTST] write-watch in the user's stalled run
 * (writer rips = 4 unroll lanes of sub_00186440 smashing PCM-like values
 * over the sfdec slot table 0xC12E2C+, killing the movie ~5 frames in =
 * item-95 #1 stop + #5 half frames). Skip insane calls instead. */
void sub_00186D00_gen(void);
void sub_00186D00(void)
{
    static int s_n = 0; static int s_guard = 0;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8);
    int32_t n = (int32_t)a2;
    uint32_t cnt = (n < 0) ? MEM32(0xBF27C8u - 4u * a2) : a2;
    if (a1 < 0x100000u || a1 >= 0x8000000u || (int32_t)cnt < 0 || cnt > 2048u) {
        if (s_guard < 12) {
            s_guard++;
            fprintf(stderr, "[BLKGUARD] #%d a1=%X a2=%X cnt=%X -> skipped%c",
                    s_guard, a1, a2, cnt, 10);
            fflush(stderr);
        }
        eax = 0;
        esp += 4;   /* cdecl ret: pop dummy return */
        return;
    }
    sub_00186D00_gen();
    if (s_n < 10 || (s_n % 8192) == 0) {
        fprintf(stderr, "[BLKST] #%d a1=%X a2=%X eax=%X%c", s_n, a1, a2, eax, 10);
        fflush(stderr);
    }
    s_n++;
}

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
/* Full C override (item 81): the x87 emission of this 3x3 matrix inversion
 * came out subtly wrong (row 2 badly off -> Y-table lanes unequal -> the
 * whole movie rendered green). src = forward RGB->YUV matrix (row-major),
 * dst = inverse (YUV->RGB, rows = R,G,B lanes) x MEMD(0x217A38) (=64, the
 * table fixed-point scale). Offsets/rounding are separate ROM constants
 * used by the table builder, not computed here. */
void sub_00175EC0(void)
{
    static int s_n = 0;
    uint32_t src = MEM32(esp + 4), dst = MEM32(esp + 8);
    double a[9], inv[9];
    for (int k = 0; k < 9; k++) a[k] = doa3_memd(src + 8u * k);
    double det = a[0]*(a[4]*a[8]-a[5]*a[7])
               - a[1]*(a[3]*a[8]-a[5]*a[6])
               + a[2]*(a[3]*a[7]-a[4]*a[6]);
    double s = doa3_memd(0x217A38) / det;
    inv[0]= (a[4]*a[8]-a[5]*a[7])*s; inv[1]=-(a[1]*a[8]-a[2]*a[7])*s; inv[2]= (a[1]*a[5]-a[2]*a[4])*s;
    inv[3]=-(a[3]*a[8]-a[5]*a[6])*s; inv[4]= (a[0]*a[8]-a[2]*a[6])*s; inv[5]=-(a[0]*a[5]-a[2]*a[3])*s;
    inv[6]= (a[3]*a[7]-a[4]*a[6])*s; inv[7]=-(a[0]*a[7]-a[1]*a[6])*s; inv[8]= (a[0]*a[4]-a[1]*a[3])*s;
    for (int k = 0; k < 9; k++) doa3_stored(dst + 8u * k, inv[k]);
    if (s_n < 2) {
        fprintf(stderr, "[COEF] C-inv out:");
        for (int k = 0; k < 9; k++) fprintf(stderr, " %.4f", inv[k]);
        fprintf(stderr, "%c", 10);
        fflush(stderr);
    }
    s_n++;
    esp += 4;   /* cdecl */
}

/* DIAG: CSC plane-info fill: (frame, w?, h?, &out). Dump the out struct. */
void sub_001777C0_gen(void);
void sub_001777C0(void)
{
    static int s_n = 0;
    uint32_t a4 = MEM32(esp + 0x10);
    sub_001777C0_gen();
    if (s_n < 6) {
        fprintf(stderr, "[PLINF] #%d out=%X:", s_n, a4);
        for (int k = 0; k < 8; k++) fprintf(stderr, " %X", MEM32(a4 + 4u * k));
        fprintf(stderr, " | coef %X %X %X %X %X %X | u40 %X %X uC0 %X %X v40 %X %X%c",
                MEM32(0xB26F78), MEM32(0xB26F7C), MEM32(0xB26F90), MEM32(0xB26F94),
                MEM32(0xB26FA8), MEM32(0xB26FAC),
                MEM32(0xB279D0 + 0x40 * 8), MEM32(0xB279D0 + 0x40 * 8 + 4),
                MEM32(0xB279D0 + 0xC0 * 8), MEM32(0xB279D0 + 0xC0 * 8 + 4),
                MEM32(0xB281D0 + 0x40 * 8), MEM32(0xB281D0 + 0x40 * 8 + 4), 10);
        fflush(stderr);
    }
    s_n++;
}

/* PSGSFD parse-resume continuations (item 82): the incremental bitstream
 * parser suspends mid-picture when the ES queue runs dry and later resumes
 * through saved continuation pointers (0x1E5B0C/0x1E5C23 = P/I resume,
 * 0x1E63D2/0x1E6E02 = helpers). These same slots hold GARBAGE during boot
 * (the decoder pool is memset-then-defaulted and probed once with junk
 * registers) — resolving them unconditionally wedged boot. Guard: only run
 * the real code while a movie is PLAYING; otherwise keep the old harmless
 * no-op behavior. */
#define RESUME_GUARD(fn)     void fn##_gen(void);     void fn(void) {         if (MEM32(0xC0F7C0 + 0x40) == 4) {             static int s_rg = 0;             if (s_rg < 4) { s_rg++;                 fprintf(stderr, "[RGRUN] " #fn " #%d%c", s_rg, 10); fflush(stderr); }             fn##_gen(); return; }         eax = 0; esp += 4; }
RESUME_GUARD(sub_001E5B0C)
RESUME_GUARD(sub_001E5C23)
RESUME_GUARD(sub_001E63D2)
RESUME_GUARD(sub_001E6E02)
#undef RESUME_GUARD

/* DIAG: MB-worker esp anomaly probes (the -36 hunt). Print only imbalances. */
#define ESPANOM_PROBE(fn)     void fn##_gen(void);     void fn(void) {         static int s_bad = 0;         uint32_t e0 = esp;         fn##_gen();         int _d = (int)(esp - e0);         if (_d != 4 && _d != 28 && s_bad < 12) {             s_bad++;             fprintf(stderr, "[EANOM] " #fn " espDelta=%d eax=%X%c", _d, eax, 10);             fflush(stderr); } }
ESPANOM_PROBE(sub_001E5040)
ESPANOM_PROBE(sub_001E5500)
ESPANOM_PROBE(sub_0018137A)
ESPANOM_PROBE(sub_0018137C)
ESPANOM_PROBE(sub_001E3670)
ESPANOM_PROBE(sub_001E3060)
ESPANOM_PROBE(sub_001E4E80)
ESPANOM_PROBE(sub_001E3520)
#undef ESPANOM_PROBE

/* DIAG: skip-variant picture "decoders" (type-table entries 4/5) — esp
 * balance probes for the -36 leak in the skip chain. */
#define SKIPSTUB_PROBE(fn)     void fn##_gen(void);     void fn(void) {         static int s_n = 0;         uint32_t e0 = esp;         fn##_gen();         if (s_n < 10) {             fprintf(stderr, "[SKST] " #fn " #%d espDelta=%d eax=%X%c",                     s_n, (int)(esp - e0), eax, 10);             fflush(stderr); }         s_n++; }
SKIPSTUB_PROBE(sub_001E32D0)
SKIPSTUB_PROBE(sub_001E3010)
#undef SKIPSTUB_PROBE

/* DIAG: I-picture decoder entry — dump the MB worker pointers. */
void sub_001E4C40_gen(void);
void sub_001E4C40(void)
{
    static int s_n = 0;
    uint32_t c = MEM32(esp + 4);
    if (s_n < 6) {
        uint32_t ok = (c >= 0x1000 && c < 0x8000000u);
        fprintf(stderr, "[IDEC] #%d ctx=%X w230=%X w234=%X w238=%X w23C=%X w248=%X f29C=%X%c",
                s_n, c,
                ok ? MEM32(c + 0x230) : 0, ok ? MEM32(c + 0x234) : 0,
                ok ? MEM32(c + 0x238) : 0, ok ? MEM32(c + 0x23C) : 0,
                ok ? MEM32(c + 0x248) : 0, ok ? MEM32(c + 0x29C) : 0, 10);
        fflush(stderr);
    }
    sub_001E4C40_gen();
    if (s_n < 6) {
        fprintf(stderr, "[IDEC] #%d done eax=%X%c", s_n, eax, 10);
        fflush(stderr);
    }
    s_n++;
}

/* DIAG: post-decode frame handoff (h, cls, fridx) — display-queue push? */
void sub_0017CD60_gen(void);
void sub_0017CD60(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), cls = MEM32(esp + 8), fr = MEM32(esp + 0xC);
    sub_0017CD60_gen();
    if (s_n < 14 || (s_n % 2048) == 0) {
        fprintf(stderr, "[DPUSH] #%d h=%X cls=%d fr=%X -> eax=%X%c",
                s_n, h, cls, fr, eax, 10);
        fflush(stderr);
    }
    s_n++;
}

/* GUARD (task #1/EOS): post-EOS the free-running video service can call the
 * display gate with a junk handle (junk esi propagation) -> wild reads ->
 * crash. Standard in-range object guard (item 73 family). */
void sub_0017DA20_gen(void);
void sub_0017DA20(void)
{
    uint32_t h = MEM32(esp + 4);
    if (!(h >= 0x1000 && h < 0x8000000u) || MEM32(h + 0x3668) > 16) {
        /* junk handle OR in-range residue with a garbage slot COUNT — the
         * gen walks count*0x50 bytes and runs off the map (post-EOS crash) */
        eax = 0xFFFFFFFFu;   /* "no displayable frames" */
        esp += 4;
        return;
    }
    sub_0017DA20_gen();
}

/* DIAG: display-side frame pop (sub_0017EE50(h,q,&out)) + frame gate
 * (sub_0017EAD0(h,frame)) — the FPEEK "new frame?" chain. */
void sub_0017EE50_gen(void);
void sub_0017EE50(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), q = MEM32(esp + 8), outp = MEM32(esp + 0xC);
    sub_0017EE50_gen();
    if (s_n < 40 || (s_n % 2048) == 0) {
        uint32_t rec = h + q * 0x388u + 0xD34u;
        uint32_t up = MEM32(rec + 0x360);
        uint32_t vt2 = MEM32(h + 2u * 0x610u + 0x2F4Cu);
        uint32_t fr2 = (outp >= 0x1000 && outp < 0x8000000u) ? MEM32(outp) : 0;
        fprintf(stderr, "[DPOP] #%d q=%d -> out=%X slotpts=%d clk=%d servedpts=%d%c",
                s_n, q, fr2,
                (fr2 >= 0x1000 && fr2 < 0x8000000u) ? (int)MEM32(fr2 + 8) : -1,
                (int)MEM32(h + 0xCCC), (int)MEM32(h + 0xCC4), 10);
        /* item 104: dump the FULL popped frame record — the serve reads pts 0
         * and always plane 0x1AE0A20; these dwords name the record fields */
        if (s_n < 12 && fr2 >= 0x1000 && fr2 < 0x8000000u) {
            fprintf(stderr, "[DPOPREC] fr=%X:", fr2);
            for (int k = 0; k < 16; k++)
                fprintf(stderr, " %X", MEM32(fr2 + 4u * k));
            fprintf(stderr, "%c", 10);
        }
        fflush(stderr);
    }
    s_n++;
}
void sub_0017EAD0_gen(void);
void sub_0017EAD0(void)
{
    static int s_n = 0;
    uint32_t h = MEM32(esp + 4), fr = MEM32(esp + 8);
    sub_0017EAD0_gen();
    if (s_n < 12 || (s_n % 2048) == 0) {
        fprintf(stderr, "[DGATE] #%d fr=%X -> eax=%X clk=%d%c",
                s_n, fr, eax, (int)MEM32(h + 0xCCC), 10);
        fflush(stderr);
    }
    s_n++;
}

/* DIAG: picture-index entry matcher (fastcall ecx=idxstruct; stack args
 * {pic, ringsize, ringbase}). Returns steps-to-entry or -1. */
void sub_00182630_gen(void);
void sub_00182630(void)
{
    static int s_n = 0;
    uint32_t st = ecx;
    uint32_t a1 = MEM32(esp + 4), a2 = MEM32(esp + 8), a3 = MEM32(esp + 0xC);
    sub_00182630_gen();
    if (s_n < 10 || (s_n % 1024) == 0) {
        fprintf(stderr, "[IXMATCH] #%d st=%X pic=%X rs=%X rb=%X cnt=%d rd=%d -> eax=%X%c",
                s_n, st, a1, a2, a3,
                (st >= 0x1000 && st < 0x8000000u) ? (int)MEM32(st + 8) : -9,
                (st >= 0x1000 && st < 0x8000000u) ? (int)MEM32(st + 0x10) : -9,
                eax, 10);
        fflush(stderr);
    }
    s_n++;
}

/* DIAG: decode-vs-skip decision (every picture currently skips -> zero YUV).
 * eax(entry)=handle. params array at h+0x994: [0x2F]=decode-all, [0x27]=skip. */
void sub_0017AEB0_gen(void);
void sub_0017AEB0(void)
{
    static int s_n = 0;
    uint32_t h = eax;
    sub_0017AEB0_gen();
    if (s_n < 16) {
        uint32_t ok = (h >= 0x1000 && h < 0x8000000u);
        fprintf(stderr, "[DECQ] #%d h=%X p2F=%d p27=%d bAC=%d -> eax=%d%c",
                s_n, h,
                ok ? (int)MEM32(h + 0x994 + 0x2F * 4) : -9,
                ok ? (int)MEM32(h + 0x994 + 0x27 * 4) : -9,
                ok ? (int)MEM32(h + 0xBAC) : -9, (int)eax, 10);
        fflush(stderr);
    }
    s_n++;
}

/* DIAG: mwPly frame copy+CSC (blit #3 hangs inside sub_0009DE90 — bisect
 * between the D3D surface lock and this). */
void sub_001762B0_gen(void);
void sub_001762B0(void)
{
    static int s_n = 0;
    uint32_t a[6];
    for (int k = 0; k < 6; k++) a[k] = MEM32(esp + 4 + 4u * k);
    /* item 90: suspended pictures' slot dims fields can be zero (their
     * frame-locals were written at a different drift level). Dims are
     * stream-constant — substitute the sequence-header values. */
    if (a[2] == 0 || a[3] == 0) {
        uint32_t w = MEM32(0xC0F7C0 + 0x35A8), h = MEM32(0xC0F7C0 + 0x35AC);
        if (w == 0 || w > 1024) w = 0x2D0;
        if (h == 0 || h > 1024) h = 0x1E0;
        MEM32(esp + 4 + 8) = w;  a[2] = w;
        MEM32(esp + 4 + 12) = h; a[3] = h;
        static int s_dz = 0;
        if (s_dz < 6) { s_dz++;
            fprintf(stderr, "[DIMFIX] w=%X h=%X%c", w, h, 10); fflush(stderr); }
    }
    if (s_n < 8) {
        uint32_t src = a[0] & 0x07FFFFFFu, ysum = 0, usum = 0, vsum = 0;
        if (src >= 0x1000 && src < 0x7F00000u)
            for (int k = 0; k < 64; k++) {
                ysum += MEM32(src + 0x40000 + 4u * k);
                usum += MEM32(src + 0x54600 + 0x8000 + 4u * k);  /* U plane */
                vsum += MEM32(src + 0x69780 + 0x8000 + 4u * k);  /* V plane */
            }
        fprintf(stderr, "[FCOPY] enter #%d args= %X %X %X %X %X %X ysum=%X usum=%X vsum=%X%c",
                s_n, a[0], a[1], a[2], a[3], a[4], a[5], ysum, usum, vsum, 10);
        fflush(stderr);
    }
    sub_001762B0_gen();
    g_doa3_movie_frames++;
    /* present the finished movie frame to the host window (item 82) */
    {
        uint32_t mvdst = a[1] & 0x07FFFFFFu;
        if (mvdst >= 0x1000 && mvdst + 2880u * 480u < 0x8000000u) {
            extern void doa3_present_movie_surface(const void *src, int w, int h, int pitch);
            doa3_present_movie_surface(XBOX_PTR(mvdst), 720, 480, 2880);
        }
    }
    if (s_n < 8) {
        uint32_t dst = a[1] & 0x07FFFFFFu;   /* pBits from LockRect */
        uint32_t d0 = 0, d1 = 0, d2 = 0;
        if (dst >= 0x1000 && dst < 0x8000000u) {
            d0 = MEM32(dst);
            d1 = MEM32(dst + 2880 * 240);        /* mid-frame row */
            d2 = MEM32(dst + 2880 * 240 + 1440); /* mid-frame center */
        }
        {
            uint32_t Y = a[0] & 0x07FFFFFFu;
            uint32_t U = Y + 0x56400, V = Y + 0x6CC00;
            fprintf(stderr, "[FCOPY] exit #%d dst=%X px= %08X %08X %08X | yuv@mid %02X %02X %02X yuv@q %02X %02X %02X%c",
                    s_n, dst, d0, d1, d2,
                    MEM8(Y + 240 * 0x2E0 + 360), MEM8(U + 120 * 0x180 + 180), MEM8(V + 120 * 0x180 + 180),
                    MEM8(Y + 120 * 0x2E0 + 180), MEM8(U + 60 * 0x180 + 90),  MEM8(V + 60 * 0x180 + 90), 10);
            {   /* recompute one pixel from the live tables, both families */
                uint32_t yv = MEM8(Y + 240 * 0x2E0 + 360), uv = MEM8(U + 120 * 0x180 + 180),
                         vv = MEM8(V + 120 * 0x180 + 180);
                for (int t = 0; t < 2; t++) {
                    uint32_t tb = t ? 0xB25778 : 0xB271D0;
                    int out[3];
                    for (int l = 0; l < 3; l++) {
                        int sum = (int16_t)MEM16(tb + yv * 8 + l * 2)
                                + (int16_t)MEM16(tb + 0x800 + uv * 8 + l * 2)
                                + (int16_t)MEM16(tb + 0x1000 + vv * 8 + l * 2);
                        sum >>= 6; if (sum < 0) sum = 0; if (sum > 255) sum = 255;
                        out[l] = sum;
                    }
                    fprintf(stderr, "[CSCX] tbl%d BGR=%02X %02X %02X (ytb %04X %04X %04X utb %04X %04X %04X vtb %04X %04X %04X)%c",
                            t, out[0], out[1], out[2],
                            MEM16(tb + yv * 8), MEM16(tb + yv * 8 + 2), MEM16(tb + yv * 8 + 4),
                            MEM16(tb + 0x800 + uv * 8), MEM16(tb + 0x800 + uv * 8 + 2), MEM16(tb + 0x800 + uv * 8 + 4),
                            MEM16(tb + 0x1000 + vv * 8), MEM16(tb + 0x1000 + vv * 8 + 2), MEM16(tb + 0x1000 + vv * 8 + 4), 10);
                }
                fflush(stderr);
            }
        }
        fflush(stderr);
    }
    /* RAW PLANE DUMP (task #3): our decoded YUV for blits 0..7 ->
     * movie_yuv_N.raw (Y 720x480 + U,V 360x240, depitched) for numeric
     * diff against ffmpeg ground truth. */
    if (s_n < 8) {
        uint32_t Y = a[0] & 0x07FFFFFFu;
        if (Y >= 0x1000 && Y < 0x7E00000u) {
            char pn[64];
            snprintf(pn, sizeof pn, "movie_yuv_%d.raw", s_n);
            FILE *fp = fopen(pn, "wb");
            if (fp) {
                const unsigned char *py = (const unsigned char *)XBOX_PTR(Y);
                const unsigned char *pu = py + 736 * 480;
                const unsigned char *pv = pu + 384 * 240;
                for (int r = 0; r < 480; r++) fwrite(py + r * 736, 1, 720, fp);
                for (int r = 0; r < 240; r++) fwrite(pu + r * 384, 1, 360, fp);
                for (int r = 0; r < 240; r++) fwrite(pv + r * 384, 1, 360, fp);
                fclose(fp);
            }
        }
    }
    /* HOST REFERENCE CSC (item 93): convert the SAME decoded YUV planes with
     * known-good BT.601 math -> movie_ref.bmp. If ref is clean, the game CSC
     * kernel/tables are at fault; if ref shows the same tint/speckle, the
     * decode itself does. Plane layout per [PLINF]: U=Y+736*480, V=U+384*240,
     * Ypitch 736, Cpitch 384. */
    if (s_n == 2) {
        uint32_t Y = a[0] & 0x07FFFFFFu;
        if (Y >= 0x1000 && Y < 0x7E00000u) {
            FILE *fp = fopen("movie_ref.bmp", "wb");
            if (fp) {
                unsigned char hdr[54] = {0};
                uint32_t img = 720u * 480u * 4u, off = 54, fsz = off + img;
                hdr[0]='B'; hdr[1]='M';
                memcpy(hdr+2,&fsz,4); memcpy(hdr+10,&off,4);
                uint32_t bi=40, w=720; int32_t hneg=-480; uint16_t pl=1,bpp=32;
                memcpy(hdr+14,&bi,4); memcpy(hdr+18,&w,4); memcpy(hdr+22,&hneg,4);
                memcpy(hdr+26,&pl,2); memcpy(hdr+28,&bpp,2); memcpy(hdr+34,&img,4);
                fwrite(hdr,1,54,fp);
                const unsigned char *py = (const unsigned char *)XBOX_PTR(Y);
                const unsigned char *pu = py + 736 * 480;
                const unsigned char *pv = pu + 384 * 240;
                for (int yy = 0; yy < 480; yy++) {
                    unsigned char row[720 * 4];
                    for (int xx = 0; xx < 720; xx++) {
                        int yv = py[yy * 736 + xx];
                        int uv = pu[(yy / 2) * 384 + (xx / 2)];
                        int vv = pv[(yy / 2) * 384 + (xx / 2)];
                        int c = yv - 16, d = uv - 128, e = vv - 128;
                        int r = (298 * c + 409 * e + 128) >> 8;
                        int g = (298 * c - 100 * d - 208 * e + 128) >> 8;
                        int b = (298 * c + 516 * d + 128) >> 8;
                        row[xx*4+0] = (unsigned char)(b < 0 ? 0 : b > 255 ? 255 : b);
                        row[xx*4+1] = (unsigned char)(g < 0 ? 0 : g > 255 ? 255 : g);
                        row[xx*4+2] = (unsigned char)(r < 0 ? 0 : r > 255 ? 255 : r);
                        row[xx*4+3] = 0;
                    }
                    fwrite(row, 1, sizeof row, fp);
                }
                fclose(fp);
                fprintf(stderr, "[REFCSC] wrote movie_ref.bmp%c", 10);
                fflush(stderr);
            }
        }
    }
    /* BMP snapshot of the movie surface (32bpp BGRA, 720x480, pitch 2880) so
     * we can SEE what the CSC produced. */
    if ((s_n == 2 || s_n == 6 || (s_n && (s_n % 32) == 0))) {
        uint32_t dst = a[1] & 0x07FFFFFFu;
        if (dst >= 0x1000 && dst + 2880 * 480 < 0x8000000u) {
            char path[128];
            snprintf(path, sizeof path, "movie_%04d.bmp", s_n);
            FILE *fp = fopen(path, "wb");
            if (fp) {
                unsigned char hdr[54] = {0};
                uint32_t img = 2880u * 480u, off = 54, fsz = off + img;
                hdr[0]='B'; hdr[1]='M';
                memcpy(hdr+2,&fsz,4); memcpy(hdr+10,&off,4);
                uint32_t bi=40, w=720; int32_t hneg=-480; uint16_t pl=1,bpp=32;
                memcpy(hdr+14,&bi,4); memcpy(hdr+18,&w,4); memcpy(hdr+22,&hneg,4);
                memcpy(hdr+26,&pl,2); memcpy(hdr+28,&bpp,2);
                memcpy(hdr+34,&img,4);
                fwrite(hdr,1,54,fp);
                fwrite(XBOX_PTR(dst), 1, img, fp);
                fclose(fp);
                fprintf(stderr, "[BMP] wrote %s%c", path, 10);
                fflush(stderr);
            }
        }
    }
    s_n++;
}

/* CRI server pump — shared by the per-frame SetFence hook AND the vblank-wait
 * bridge. On hardware these servers run from the vsync interrupt / their own
 * threads; in the fiber model both starve unless pumped. Pumping ONLY from
 * Present livelocks the game-side movie wait loops ("wait vblank; poll
 * status") which never present — so the vblank wait also pumps (item 79). */
void doa3_pump_cri_servers(void)
{
    extern void sub_001705E0(void);
    extern void sub_00170640(void);
    extern void sub_00170660(void);
    static int s_inpump = 0;
    if (s_inpump) return;                     /* no recursive pumping */
    if (MEM32(0xB24D38) != 0 || MEM32(0xC0E384) != 0) return;  /* lock held / in server */
    {   /* EOS detector (task #2 end-half): when the movie is PLAYING but no
         * new frame has blitted for ~6s (stream exhausted; the port's
         * stream-finished status never fires), set the player to PLAYEND
         * (obj+8 = 3) so the game's own sequencer completes the movie and
         * proceeds — and the free-running pipeline stops churning garbage. */
        uint32_t mvobj = MEM32(0x5E5900);
        if (mvobj >= 0x1000 && mvobj < 0x8000000u && MEM32(mvobj + 8) == 2) {
            uint32_t herr = MEM32(0xC0F7C0 + 0x988);
            extern uint32_t g_doa3_movie_frames;
            /* EOS (task #2 end-half): the port's stream-finished status never
             * fires; instead the parser eventually runs off the stream's end
             * into an FF00xxxx parse error after all real pictures played.
             * Treat that error (past a sane frame count) as END: clear it and
             * complete the movie through the game's own PLAYEND path. */
            if ((herr & 0xFF000000u) == 0xFF000000u && g_doa3_movie_frames > 60) {
                fprintf(stderr, "[EOSFIX] parser hit stream end (hErr=%X after %u frames) -> PLAYEND%c",
                        herr, g_doa3_movie_frames, 10);
                MEM32(0xC0F7C0 + 0x988) = 0;
                MEM32(mvobj + 8) = 3;
            }
        }
    }
    {   /* keep the window responsive even when server work is skipped */
        extern void doa3_pump_messages(void);
        static unsigned s_mp = 0;
        if ((++s_mp & 7) == 0) doa3_pump_messages();
    }
    s_inpump = 1;
    {   /* item 109 (defect #1): OPT-IN write-watch on the HANDLER page
         * (0xC0F000) to catch the writer that corrupts the state word
         * 0xC0F800 (4 -> -4). Off by default (the page-guard faulting perturbs
         * timing); set DOA3_WATCH=1 to re-enable for diagnostics. */
        static int s_armed = 0, s_want = -1;
        if (s_want < 0) { const char *e = getenv("DOA3_WATCH"); s_want = (e && *e == '1'); }
        if (s_want && !s_armed && MEM32(0xC0F7C0 + 0x40) == 4) {
            extern void doa3_watch_arm(uint32_t xb_page);
            doa3_watch_arm(0x00C12000);   /* item 110: catch pictype writer @0xC12DB8 */
            s_armed = 1;
            fprintf(stderr, "[WATCH] armed on slot page 0xC12000 (pictype 0xC12DB8)%c", 10);
            fflush(stderr);
        }
    }
    {   /* item 103b: apply releases that were deferred because their slot
         * was still decoding (see the slot-lifecycle guards). */
        extern void doa3_drain_deferred_releases(void);
        doa3_drain_deferred_releases();
    }
    {   /* item 102: movie-ingest stall forensics. In stalled user runs the
         * ninja.sfd stream joint (0xC09890) sticks at w=0x12000 with the
         * cvFs stream stepper never issuing another read. Dump the joint
         * cursors + every live cvFs stream-pool entry every ~10s so the
         * NEXT stalled run (any machine) shows which state it parked in. */
        static unsigned s_ig = 0;
        if ((++s_ig % 600) == 0) {
            uint32_t sj = 0xC09890;
            fprintf(stderr, "[INGEST] sj08=%X c=%X w=%X sj14=%X sj18=%X sj1C=%X sj20=%X%c",
                    MEM32(sj + 8), MEM32(sj + 0xC), MEM32(sj + 0x10), MEM32(sj + 0x14),
                    MEM32(sj + 0x18), MEM32(sj + 0x1C), MEM32(sj + 0x20), 10);
            for (int i = 0; i < 16; i++) {
                uint32_t ent = 0xC05AC0 + i * 0x40u;
                if (!MEM8(ent) && !MEM32(ent + 0x14)) continue;
                fprintf(stderr, "[INGEST] stm%d st=%u,%u f14=%X e08=%X e0C=%X e18=%X e1C=%X e20=%X e28=%X%c",
                        i, MEM8(ent), MEM8(ent + 1), MEM32(ent + 0x14),
                        MEM32(ent + 8), MEM32(ent + 0xC), MEM32(ent + 0x18),
                        MEM32(ent + 0x1C), MEM32(ent + 0x20), MEM32(ent + 0x28), 10);
            }
            fflush(stderr);
        }
    }
    {
        static unsigned s_pumps = 0; static unsigned s_t0 = 0;
        unsigned now = (unsigned)GetTickCount();
        if (!s_t0) s_t0 = now;
        s_pumps++;
        if (now - s_t0 >= 10000) {
            uint32_t h = 0xC0F7C0;
            extern uint32_t g_doa3_movie_frames;
            fprintf(stderr,
                "[PUMPR] %u pumps/%ums blits=%u clk=%d/%d vbl=%u fr=[%d%d%d%d%d%d%d] frn=%d%c",
                s_pumps, now - s_t0, g_doa3_movie_frames,
                (int)MEM32(h + 0xCCC), (int)MEM32(h + 0xCD0),
                MEM32(0x001C2B08u + 0x820u),
                (int)MEM32(h + 0x366C), (int)MEM32(h + 0x366C + 0x50),
                (int)MEM32(h + 0x366C + 0xA0), (int)MEM32(h + 0x366C + 0xF0),
                (int)MEM32(h + 0x366C + 0x140), (int)MEM32(h + 0x366C + 0x190),
                (int)MEM32(h + 0x366C + 0x1E0), (int)MEM32(h + 0x3668), 10);
            fflush(stderr);
            s_t0 = now; s_pumps = 0;
        }
    }
    {
        uint32_t saved_esp2 = esp;
        /* group-5 handler-table sanity sweep (see [G5TBL]) */
        for (int sl = 0; sl < 4; sl++) {
            uint32_t fa = 0xB25550 + 8u * sl;
            uint32_t fn = MEM32(fa);
            if (fn && (fn < 0x00011000 || fn >= 0x002CC800))
                MEM32(fa) = 0;
        }
        for (int pt = 0; pt < 2; pt++) {
            PUSH32(esp, 5);                   /* dispatch ADXM user group 5 */
            PUSH32(esp, 0);
            sub_001705E0();
            esp = saved_esp2;
        }
        PUSH32(esp, 0); sub_00170640(); esp = saved_esp2;   /* ADX main server */
        PUSH32(esp, 0); sub_00170660(); esp = saved_esp2;   /* mwPly tick */
        /* item 92: decode runs on worker fibers that only progress when the
         * main fiber yields. Harness sessions yield thousands of times/s
         * (unthrottled), interactive sessions ~60/s (vsync-locked) -> their
         * decode ran ~80x slower and the movie looked frozen after the
         * prebuffer. Give the workers a fixed slice budget per frame. */
        if (MEM32(0xC0F7C0 + 0x40) == 4) {
            /* task #1: fixed 32-yield budget = measured optimum (20fps
             * under the throttle rig). Time-boxed variants (8ms, with and
             * without any-ready exit) measured WORSE (14fps) — watchdog
             * fibers are perpetually READY and soak the box; larger fixed
             * counts collapse the pump (item 94). Real 30fps needs decode-
             * kernel optimization, not scheduling. */
            extern void xbox_fiber_yield(void);
            for (int yi = 0; yi < 32; yi++) xbox_fiber_yield();
        }
        /* keep the last movie frame on screen (~30Hz repaint; see
         * movie_present.c — nothing else presents during/after a movie) */
        {
            static unsigned s_rpn = 0;
            extern void doa3_movie_repaint(void);
            if ((++s_rpn & 1) == 0) doa3_movie_repaint();
        }
    }
    s_inpump = 0;
}

void sub_001B8970(void)
{
    extern void sub_001B8970_gen(void);
    extern void pgraph_d3d11_flush(void);
    extern void doa3_present_frame(void);
    uint32_t arg = MEM32(esp + 4);     /* fence type (2 == per-frame Present fence) */
    sub_001B8970_gen();                /* real D3D_SetFence (does its own ret 4 cleanup) */
    if (arg == 2) {
        pgraph_d3d11_flush();
        doa3_present_frame();
        /* Full VBLANK emulation (mirrors the D3D vblank handler sub_001BAA30, which the
         * GPU PCRTC interrupt DPC would run): bump the vblank counter (device+0x820),
         * signal the vblank event (device+0x1E8 = 0x001C2CF0), and CALL the vblank
         * callback the game registered via D3DDevice_SetVerticalBlankCallback
         * (device+0x1E4) with the counter — DOA3 runs its per-frame screen/boot logic
         * from that callback, so without this the game idles forever in boot stage 0. */
        {
            const uint32_t dev = 0x001C2B08;         /* D3D device: 0x001C2CF0 - 0x1E8 */
            uint32_t cnt = MEM32(dev + 0x820) + 1;
            MEM32(dev + 0x820) = cnt;
            MEM32(0x001C2CF0 + 4) = 1;               /* KEVENT.SignalState */
            xbox_fiber_wake(0x001C2CF0);
            uint32_t cb = MEM32(dev + 0x1E4);
            static uint32_t s_cb_last = 0xFFFFFFFF;
            if (cb != s_cb_last) {
                s_cb_last = cb;
                fprintf(stderr, "[VBL] vblank callback = 0x%08X (counter=%u)\n", cb, cnt);
                fflush(stderr);
            }
            if (cb) {
                extern recomp_func_t recomp_lookup(uint32_t xbox_va);
                extern recomp_func_t recomp_lookup_manual(uint32_t xbox_va);
                recomp_func_t fn = recomp_lookup_manual(cb);
                if (!fn) fn = recomp_lookup(cb);
                if (fn) {
                    uint32_t saved_esp = esp;
                    PUSH32(esp, cnt);                /* arg: vblank counter (cdecl) */
                    PUSH32(esp, 0);                  /* dummy return address */
                    fn();
                    esp = saved_esp;
                }
            }
        }
        /* WATCH: mwPly slot table 0xC0E544..0xC0F7B4. Stream ASCII bytes are
         * landing in slot fields (junk sfdec "handles" -> FF000222 spam).
         * Detect the frame it changes and dump the first differing dwords. */
        {
            static uint32_t s_snap[0x494];   /* (0xC0F7B4-0xC0E544)/4 = 0x49C.. use 0x494 */
            static int s_have = 0, s_prints = 0;
            static uint32_t s_fr = 0;
            uint32_t cnt = ++s_fr;
            uint32_t n = (0xC0F7B4 - 0xC0E544) / 4;
            if (n > 0x494) n = 0x494;
            if (!s_have) {
                for (uint32_t i = 0; i < n; i++) s_snap[i] = MEM32(0xC0E544 + i * 4);
                s_have = 1;
            } else if (s_prints < 40) {
                int shown = 0;
                for (uint32_t i = 0; i < n; i++) {
                    uint32_t a = 0xC0E544 + i * 4;
                    uint32_t v = MEM32(a);
                    if (v != s_snap[i]) {
                        /* only care about slot control fields: base+4 (active),
                         * base+8 (state), base+0x30 (sfdec handle) per 0x90 slot */
                        uint32_t rel = (a - 0xC0E544) % 0x90;
                        if ((rel == 4 || rel == 8 || rel == 0x30) && shown < 8) {
                            fprintf(stderr, "[SLOTW] frame=%u slot=%u +0x%X 0x%X -> 0x%X%c",
                                    cnt, (a - 0xC0E544) / 0x90, rel, s_snap[i], v, 10);
                            shown++;
                        }
                        s_snap[i] = v;
                    }
                }
                if (shown) { s_prints++; fflush(stderr); }
            }
            /* arm the page write-watch across the corruption window */
            extern void doa3_watch_arm(uint32_t xb_page);
            extern void doa3_watch_disarm(void);
            /* (retargeted, item 83) slot-state recycler hunt: armed from the
             * pump below once the movie is PLAYING. */
        }
        /* Sofdec decode pump — see doa3_pump_cri_servers() above. */
        doa3_pump_cri_servers();
        {
            uint32_t saved_esp2 = esp; (void)saved_esp2;
            /* EXPERIMENT (audio bypass, see CLAUDE.md item 74+): the video
             * readiness chain waits on the AUDIO substream reaching prebuffer
             * state 5, but the audio substream never starts (h+0x59CC stays
             * 0 — ADXT attach path broken separately). Clear the "has audio"
             * params so the pack path sets the queue flags and video plays
             * silently: param0x31 (h+0xA58), param0x38 (h+0xA74), param6
             * (h+0x9AC). Re-applied per frame while the handle is in prep. */
            {
                uint32_t sfd = MEM32(0xC0E544 + 0x30);   /* slot0 handle */
                if (sfd >= 0x1000 && sfd < 0x8000000u && MEM32(sfd + 0x40) == 2) {
                    static int s_bp = 0;
                    if (MEM32(sfd + 0xA58) || MEM32(sfd + 0xA74) || MEM32(sfd + 0x9AC)) {
                        if (s_bp < 3) {
                            s_bp++;
                            fprintf(stderr, "[ABYP] clearing audio-wait params (were 0x%X 0x%X 0x%X)%c",
                                    MEM32(sfd + 0xA58), MEM32(sfd + 0xA74), MEM32(sfd + 0x9AC), 10);
                            fflush(stderr);
                        }
                        MEM32(sfd + 0xA58) = 0;
                        MEM32(sfd + 0xA74) = 0;
                        MEM32(sfd + 0x9AC) = 0;
                    }
                    /* Force free-run AV mode ([h+0x35D0]=1). The no-audio
                     * seq-header branch (sub_0017D9F0) would set this, but
                     * the class-0x80 path never completes in our stream
                     * state; without it readiness (sub_0017DA20) demands
                     * decoded frames that the AV-sync mode never produces. */
                    /* CLOCK BOOTSTRAP: while the handle is in prep (status
                     * 2), the state handler reports clock=-1 (it only reports
                     * once PLAYING), and the AV-sync decide (sub_0017A540 ->
                     * sub_0017E720) skips every picture on a negative clock —
                     * a deadlock our dead audio cannot break (on hardware the
                     * audio decode clock ticks during prebuffer). Feed the
                     * demux PTS ([h+0xCE8]) as the master clock so prebuffer
                     * pictures decode; once PLAYING the real path takes over. */
                    /* MOVIE-0 BAIL SUPPRESSION: sub_0009E1F0 posts a STOP
                     * when [0x5E5A04]!=0 (audio system "ready" — forced 1 by
                     * the sub_0009FAB0 override) and [0x5E5978]==0 (the
                     * movie's ADXT audio stream handle — its creation
                     * sub_0016B400 has always failed in the port). The game
                     * refuses to play the movie without its AIX audio track.
                     * Pretend the stream exists so the video plays silent. */
                    if (MEM32(0x5E5900) != 0 && MEM32(0x5E5978) == 0) {
                        static int s_ab = 0;
                        if (s_ab < 3) { s_ab++;
                            fprintf(stderr, "[NOBAIL] 5E5978 0 -> -1%c", 10);
                            fflush(stderr); }
                        MEM32(0x5E5978) = 0xFFFFFFFFu;
                    }
                    /* (older clock write + QFWD flag mirroring removed: the
                     * clock bootstrap lives in the sub_0017E9B0 wrapper with
                     * clock=0, and [QBYP] re-points the consumers directly at
                     * the producer queues — mirroring rec+0xC here copied the
                     * EOS/notify marker around and ended the movie early.) */
                }
            }
        }
        /* Device emulation: keep the pads' async-poll markers cleared (no
         * USB completion machinery exists; see the sub_001E70AD override). */
        for (int pi = 0; pi < 4; pi++) {
            uint32_t pst = 0x5E5CFF + 0x80u * pi;
            if (MEM32(pst) == 0x3E5) MEM32(pst) = 0;
        }
        static unsigned fr = 0;
        ++fr;
        /* Visual verification snapshots: dump the backbuffer at checkpoints
         * (the game window is on a non-interactive desktop in test runs). */
        if (fr == 120 || fr == 600 || fr == 3000 || fr == 9000 || fr == 15000) {
            extern void d3d8_DumpBackbufferBMP(const char *path);
            char snap[128];
            snprintf(snap, sizeof(snap), "doa3_frame_%u.bmp", fr);
            d3d8_DumpBackbufferBMP(snap);
        }
        if ((fr <= 1200 ? (fr % 60) : (fr % 600)) == 1) {
            extern void pgraph_d3d11_get_stats(void *out);
            struct { uint32_t frames, draws, verts, handled, ignored, clears; } s = {0};
            pgraph_d3d11_get_stats(&s);
            fprintf(stderr, "[FRAME] %u: pgraph draws=%u verts=%u handled=%u ignored=%u\n",
                    fr, s.draws, s.verts, s.handled, s.ignored);
            {   /* movie surface content check (both double-buffer surfaces) */
                fprintf(stderr, "[SURF] A: %08X %08X mid %08X | B: %08X %08X mid %08X\n",
                        MEM32(0x0258C000), MEM32(0x0258C004), MEM32(0x0258C000 + 0xA8C00),
                        MEM32(0x02A24000), MEM32(0x02A24004), MEM32(0x02A24000 + 0xA8C00));
            }
            {   extern void pgraph_diag_dump_ignored(void);
                pgraph_diag_dump_ignored(); }
            /* DIAG: intro sequencer (sub_00081EB0) + game state. 0x4B83B0=state,
             * B1=movie idx, B2/B4=phase durations, B6=frame counter; 0x5E597C=the
             * game-state flag gating per-frame sub_00153D90 (see CLAUDE.md). */
            fprintf(stderr, "[INTRO] st=%u mv=%u dur=%u/%u ctr=%u  gstate=0x%X 5E5A04=0x%X 5E5978=0x%X\n",
                    MEM8(0x4B83B0), MEM8(0x4B83B1), MEM16(0x4B83B2), MEM16(0x4B83B4),
                    MEM16(0x4B83B6), MEM32(0x5E597C), MEM32(0x5E5A04), MEM32(0x5E5978));
            fprintf(stderr, "[MODE] top47E723=%u mv4A0DCC=%u 48A39C=%u 47E780=%u 48A490=%u 4A0DD4=%u 2FD554=0x%X\n",
                    MEM8(0x47E723), MEM8(0x4A0DCC), MEM8(0x48A39C), MEM8(0x47E780),
                    MEM8(0x48A490), MEM8(0x4A0DD4), MEM32(0x2FD554));
            /* DIAG: Sofdec movie player state (sub_0009DF60 init path).
             * 0x5E5900=movie obj (vtbl calls +0x18 open / +0x2C serve),
             * 0x5E59C8=sub_00176580 result, 0x5E5974=sub_0016B400 handle,
             * 0x331298[idx]=filename ptr table. */
            {   uint32_t mobj = MEM32(0x5E5900);
                uint32_t fn0 = MEM32(0x331298);
                char nm[32] = {0};
                if (fn0 >= 0x10000 && fn0 < 0x2000000) {
                    for (int i = 0; i < 31; i++) { nm[i] = (char)MEM8(fn0 + i); if (!nm[i]) break; }
                }
                fprintf(stderr, "[MOVIE] obj=0x%X st8=%d sfdSt40=%d sfdErr=0x%X hErr=0x%X mode=%d thr=0x%X sfd30=0x%X p76580=0x%X st59CC=0x%X fn0='%s' vtbl=0x%X cacheOk5E56A0=%d sndSt4BE3EC=%d\n",
                        mobj,
                        (mobj >= 0x10000 && mobj < 0x8000000) ? (int)MEM32(mobj + 8) : -1,
                        (mobj >= 0x10000 && mobj < 0x8000000) && MEM32(mobj + 0x30) ? (int)MEM32(MEM32(mobj + 0x30) + 0x40) : -1,
                        MEM32(0xC0E4BC),
                        (mobj >= 0x10000 && mobj < 0x8000000) && MEM32(mobj + 0x30) ? MEM32(MEM32(mobj + 0x30) + 0x988) : 0,
                        (mobj >= 0x10000 && mobj < 0x8000000) && MEM32(mobj + 0x30) ? (int)MEM32(MEM32(mobj + 0x30) + 0x994 + 0x3C) : -1,
                        (mobj >= 0x10000 && mobj < 0x8000000) && MEM32(mobj + 0x30) ? MEM32(MEM32(mobj + 0x30) + 0x53B0) : 0,
                        (mobj >= 0x10000 && mobj < 0x8000000) ? MEM32(mobj + 0x30) : 0,
                        MEM32(0x5E59C8), MEM32(0x5E59CC), nm,
                        (mobj >= 0x10000 && mobj < 0x8000000) ? MEM32(mobj) : 0,
                        (int)MEM32(0x5E56A0), (int)MEM32(0x4BE3EC));
            }
            /* DIAG: XAPI game-task table @0x5E5A08 stride 0x20 (18 slots,
             * cur idx @0x5E5C4C): +0 flags, +4 sleep arg (sub_0009E562).
             * The boot task parks here and stops being dispatched. */
            {   char tl[240]; int tn = 0;
                for (int ti = 0; ti < 18 && tn < 220; ti++) {
                    uint32_t tb = 0x5E5A08 + 0x20u * ti;
                    if (MEM32(tb) || MEM32(tb + 4))
                        tn += snprintf(tl + tn, sizeof tl - tn, " %d:%X/%X", ti, MEM32(tb), MEM32(tb + 4));
                }
                fprintf(stderr, "[TASKS] cur=%d%s\n", (int)MEM32(0x5E5C4C), tl);
            }
            /* DIAG: VRAM bank table @0x4889B8 stride 0x1C (movie surface prep
             * sub_0009DDE0 reads bank[i]+0 as the frame buffer; entries beyond
             * 0 are empty -> 7 of 8 movie surfaces fail). */
            fprintf(stderr, "[BANKS]");
            for (int bi = 0; bi < 8; bi++)
                fprintf(stderr, " %X/%X", MEM32(0x4889B8 + 0x1Cu * bi), MEM32(0x4889B8 + 0x1Cu * bi + 4));
            fprintf(stderr, "\n");
            /* DIAG: sfdec PES queues (h+0xD34 stride 0x388): +0xC = complete-
             * unit flag/count per queue, for queues 0..7. */
            {   uint32_t sh = 0xC0F7C0;
                fprintf(stderr, "[QCNT]");
                for (int qi = 0; qi < 8; qi++)
                    fprintf(stderr, " %d:%X", qi, MEM32(sh + 0x388u * qi + 0xD40));
                fprintf(stderr, "%c", 10);
                /* deeper: PES queue record heads (first 6 dwords) for q0/q5
                 * (q5 = video), substream present flags h+0x994[0..8], and
                 * substream readiness h+0x2974+i*0x610 */
                fprintf(stderr, "[QDET] q0:");
                for (int k = 0; k < 6; k++) fprintf(stderr, " %X", MEM32(sh + 0xD34 + 4u * k));
                fprintf(stderr, " vq=%X/%X", MEM32(sh + 0x3B70), MEM32(sh + 0x3B74));
                for (int q = 1; q < 8; q++) {
                    fprintf(stderr, " q%d:", q);
                    for (int k = 0; k < 6; k++)
                        fprintf(stderr, "%X,", MEM32(sh + 0xD34 + 0x388u * q + 4u * k));
                }
                fprintf(stderr, " present:");
                for (int i = 0; i < 9; i++) fprintf(stderr, "%X", MEM32(sh + 0x994 + 4u * i) ? 1 : 0);
                fprintf(stderr, " ready:");
                for (int i = 0; i < 9; i++) fprintf(stderr, "%X", MEM32(sh + 0x2974 + 0x610u * i) ? 1 : 0);
                fprintf(stderr, " p27=%X p2F=%X cbAA8=%X b74=%X ce8=%X ccc=%d cb25=%X n944=%d t2C=%d t9F0=%d", MEM32(sh + 0xA30), MEM32(sh + 0xA50),
                        MEM32(sh + 0xAA8), MEM32(sh + 0xB74), MEM32(sh + 0xCE8), (int)MEM32(sh + 0xCCC),
                        MEM32(sh + 0xA28), (int)MEM32(sh + 0x944),
                        (int)MEM32(sh + 0x2C), (int)MEM32(sh + 0x9F0));
                fprintf(stderr, " frun35D0=%X bac=%d f940=%X", MEM32(sh + 0x35D0),
                        (int)MEM32(sh + 0xBAC), MEM32(sh + 0x940));
                {   uint32_t vt6 = MEM32(sh + 0x2F4C + 0x610u * 6);
                    fprintf(stderr, " vt6@%X:", vt6);
                    if (vt6 >= 0x1000 && vt6 < 0x8000000)
                        for (int k = 0; k < 14; k++) fprintf(stderr, "%X,", MEM32(vt6 + 4u * k));
                }
                fprintf(stderr, " ctxq:");
                for (int i = 0; i < 9; i++)
                    fprintf(stderr, "%d:%X/%X,", i,
                            MEM32(sh + 0x2F4C + 0x610u * i + 4),
                            MEM32(sh + 0x2F4C + 0x610u * i + 8));
                fprintf(stderr, " q53B0=%X fr=%d[", MEM32(sh + 0x53B0),
                        (int)MEM32(sh + 0x3668));
                {   uint32_t fc = MEM32(sh + 0x3668);
                    if (fc > 16) fc = 16;
                    for (uint32_t k = 0; k < fc; k++)
                        fprintf(stderr, "%X", MEM32(sh + 0x366C + 0x50u * k) & 0xF);
                }
                fprintf(stderr, "]%c", 10);
                /* SJ pool dump: 0xC09500 stride 0x30, 16 slots. Fields:
                 * +0 vtbl, +4 used, +0xC/+0x10 counters, +0x1C base, +0x20 cap */
                fprintf(stderr, "[SJSTAT]");
                for (int i = 0; i < 16; i++) {
                    uint32_t sj = 0xC09500 + 0x30u * i;
                    if (!MEM32(sj + 4)) continue;
                    fprintf(stderr, " %X{b=%X c=%X w=%X}", sj & 0xFFF,
                            MEM32(sj + 0x1C), MEM32(sj + 0xC), MEM32(sj + 0x10));
                }
                fprintf(stderr, "%c", 10);
            }
            /* DIAG: wxCi cache registry @0xC057C0 stride 0x30 (12 slots):
             * +0=active, +0x18=prefix, +0x24=file count, +0x28=list head.
             * Populated by sub_0009C840 via sub_0016D330; wxCiOpen's lookup
             * (cb 0xB25610=sub_0016D190) fails "not in cache" when empty. */
            {   char line[256]; int n = 0;
                for (int i = 0; i < 12 && n < 200; i++) {
                    uint32_t b = 0xC057C0 + 0x30u * i;
                    if (MEM32(b)) {
                        char pfx[20] = {0}, fn[20] = {0};
                        uint32_t pp = MEM32(b + 0x18);
                        if (pp >= 0x10000 && pp < 0x8000000)
                            for (int k = 0; k < 19; k++) { pfx[k] = (char)MEM8(pp + k); if (!pfx[k]) break; }
                        uint32_t node = MEM32(b + 0x28);          /* list head */
                        uint32_t np = (node >= 0x10000 && node < 0x8000000) ? MEM32(node + 0xC) : 0;
                        if (np >= 0x10000 && np < 0x8000000)
                            for (int k = 0; k < 19; k++) { fn[k] = (char)MEM8(np + k); if (!fn[k]) break; }
                        n += snprintf(line + n, sizeof line - n, " [%d]a=%X n=%d p='%s' f0='%s'", i, MEM32(b), (int)MEM32(b + 0x24), pfx, fn);
                    }
                }
                fprintf(stderr, "[WXREG]%s%s\n", n ? "" : " empty", line);
            }
            /* DIAG: ADXM user-callback group 4 (the mwPly/Sofdec server tick;
             * dispatcher sub_001705E0 from sub_001778F0). Empty slots = the
             * Sofdec state machine is never pumped (player state stuck 0). */
            fprintf(stderr, "[ADXCB4] %X/%X %X/%X %X/%X %X/%X\n",
                    MEM32(0xB25530), MEM32(0xB25534), MEM32(0xB25538), MEM32(0xB2553C),
                    MEM32(0xB25540), MEM32(0xB25544), MEM32(0xB25548), MEM32(0xB2554C));
            /* cvFs device table health: slot flags @0xB25264 stride 16 (wiped
             * -> every open fails), default name @0xB24FE0. */
            fprintf(stderr, "[CVFS] def=%c%c slotflags=%02X %02X wxci0=%02X wxci1=%02X wxciSt=%02X\n",
                    MEM8(0xB24FE0) ? MEM8(0xB24FE0) : 48,
                    MEM8(0xB24FE1) ? MEM8(0xB24FE1) : 48,
                    MEM8(0xB25264), MEM8(0xB25274),
                    MEM8(0xBFEE80), MEM8(0xBFEE80 + 0x10E0*4/2), MEM8(0xBFEE81));
            /* warning-screen sequencer (sub_000566D0 tail): 0x491AFC = frame
             * counter, limit = 3*MEM8(0x2FD55C); 0x305B70 = screen-active. */
            fprintf(stderr, "[WSCR] ctr491AFC=%d lim3x2FD55C=%u active305B70=%u fade491AE4=0x%X 491AF8=%d 491AF4=%u\n",
                    (int)MEM32(0x491AFC), 3u * MEM8(0x2FD55C), MEM8(0x305B70),
                    MEM32(0x491AE4), (int)MEM32(0x491AF8), MEM8(0x491AF4));
            if ((fr % 600) == 1) {
                extern void xbox_fiber_dump(void);
                extern uint32_t g_task_yields[16];
                xbox_fiber_dump();
                fprintf(stderr, "[YIELDS/fib]");
                for (int yi = 0; yi < 12; yi++) fprintf(stderr, " %u", g_task_yields[yi]);
                fprintf(stderr, "\n");
                fprintf(stderr, "[PADS] mask=%08X st=%02X hnd=%08X cfg=%02X\n",
                        MEM32(0x5E5ED0), MEM8(0x5E5CD0), MEM32(0x5E5CD0 + 0x78), MEM8(0x484DC6));
                fprintf(stderr, "[DXCTX] flag49A950=%u obj49A954=%08X\n",
                        MEM32(0x49A950), MEM32(0x49A954));
                fprintf(stderr, "[SLOTS]");
                for (int si = 0; si < 8; si++)
                    fprintf(stderr, " %08X", MEM32(0x48F288 + si * 8));
                fprintf(stderr, " | mdlTbl:");
                for (int si = 0; si < 4; si++)
                    fprintf(stderr, " %08X", MEM32(0x4AB1A0 + si * 4));
                fprintf(stderr, " | texTbl:");
                for (int si = 0; si < 8; si++)
                    fprintf(stderr, " %08X", MEM32(0x4B25A8 + si * 4));
                fprintf(stderr, "\n");
                fprintf(stderr, "[PADRAW]");
                for (int pi = 0; pi < 24; pi++) fprintf(stderr, " %02X", MEM8(0x5E5CFF + pi));
                fprintf(stderr, "\n[PADOUT]");
                for (int pi = 0; pi < 0x2C; pi++) fprintf(stderr, " %02X", MEM8(0x5E5ED8 + pi));
                fprintf(stderr, "\n");
            }
            {   /* scene-manager stream poll (sub_0009CDA0): handle @0x4BE420 must reach
                 * state 5; partition handles 0x4BE3F8/0x4BE40C for reference. */
                uint32_t h420 = MEM32(0x4BE420), h3F8 = MEM32(0x4BE3F8), h40C = MEM32(0x4BE40C);
                fprintf(stderr, "[SCN] h420=0x%08X st=%d  h3F8=0x%08X st=%d  h40C=0x%08X st=%d flag8=0x%X\n",
                        h420, h420 ? (int)(int8_t)MEM8(h420 + 1) : -1,
                        h3F8, h3F8 ? (int)(int8_t)MEM8(h3F8 + 1) : -1,
                        h40C, h40C ? (int)(int8_t)MEM8(h40C + 1) : -1,
                        MEM32(0x4BE428));
                fprintf(stderr, "[BOOT] stage4A0474=%u scr484C49=%u/%u scr484CB1=%u/%u req48A528=%u pend480814=%u\n",
                        MEM32(0x4A0474), MEM8(0x484C49), MEM8(0x484C4A),
                        MEM8(0x484CB1), MEM8(0x484CB2), MEM8(0x48A528), MEM8(0x480814));
                {   /* boot loader (sub_0009F730 loc_0009F7A8): 5 phases at 0x4A1004;
                     * sub_0007FFDD polls op = MEM32(phase*4 + 0x4A10A8) for status 3. */
                    uint32_t ph = MEM32(0x4A1004);
                    uint32_t op = (ph < 8) ? MEM32(ph * 4 + 0x4A10A8) : 0;
                    fprintf(stderr, "[LDW] phase=%u op=0x%08X st=%d\n",
                            ph, op, op ? (int)(int8_t)MEM8(op + 1) : -1);
                }
            }
            fflush(stderr);
        }
    }
}

/* XMETAL_StartPush (0x1B8DA0) — burnout PB begin/alloc analogue. cdecl, 1 stack
 * arg (device at esp+4), ret 4, returns eax = write cursor. Keep the cursor in
 * our RAM buffer so push-buffer writes don't fault at the GPU aperture. */
void sub_001B8DA0(void)
{
    uint32_t dev = MEM32(esp + 4);
    uint32_t cursor = MEM32(dev);
    if (g_doa3_pb_base &&
        (cursor < g_doa3_pb_base || cursor + 0x1000 >= g_doa3_pb_end)) {
        cursor = g_doa3_pb_base;                     /* (re)start at base / wrap before end */
        MEM32(dev + 0x00) = cursor;
        MEM32(dev + 0x04) = g_doa3_pb_end;
    }
    eax = cursor;
    esp += 8;   /* ret 4 */
}

/* ── Override: CRT small-block-heap allocator __sbh_alloc_block @ 0x001668FA ──
 * DOA3's recompiled SBH init leaves the heap descriptor global (0xBF5000) NULL,
 * so the generated allocator walks free-lists from a NULL descriptor and faults.
 * Serve allocations from a private bump arena instead. (Gen body #if 0'd in
 * recomp/gen/recomp_0008.c — re-apply after regen.) The matching SBH free path
 * finds our blocks in no (empty) SBH region and falls back to a no-op system
 * free, so blocks are effectively leaked-freed.
 * __stdcall(heapDesc, flags, size) -> block VA in eax; callee pops 3 args. */
static uint32_t g_sbh_next = 0, g_sbh_end = 0;

/* Size-classed allocator with REAL free (the pure bump version leaked every
 * CRT free -> 45 MB Xbox heap exhausted during the boot screen loads, and the
 * game doesn't check malloc failure -> wild-write storms). Each block gets a
 * 16-byte header {magic, chunk_size, class, freelist_next}; freed blocks go
 * on per-class LIFO lists and are reused. <1MB: power-of-2 classes; >=1MB: a
 * first-fit large list (64 KB granularity). Backing memory still comes from
 * the bump arena (xbox_HeapAlloc 8 MB refills). */
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
        if (csz > chunk) chunk = (csz + 0xFFFFFu) & ~0xFFFFFu;
        uint32_t base = xbox_HeapAllocHigh(chunk, 16);
        fprintf(stderr, "[SBH] refill %u KB (csz=%u) allocs=%u frees=%u foreign=%u live=%lluKB -> %s\n",
                chunk >> 10, csz, g_sbh_nalloc, g_sbh_nfree, g_sbh_nforeign,
                (unsigned long long)(g_sbh_live >> 10), base ? "ok" : "OOM");
        {   /* native backtrace: who is allocating? (symbolize vs bin/doa3.map) */
            void *bt[12]; int n = CaptureStackBackTrace(1, 12, bt, NULL);
            fprintf(stderr, "[SBH-BT]");
            for (int i = 0; i < n; i++) fprintf(stderr, " %p", bt[i]);
            fprintf(stderr, "\n");
        }
        fflush(stderr);
        if (!base) return 0;
        g_sbh_next = base; g_sbh_end = base + chunk;
    }
    uint32_t p = g_sbh_next; g_sbh_next += csz; return p;
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
        cls = 0xFF;
        csz = (csz + 0xFFFFu) & ~0xFFFFu;
        uint32_t prev = 0, cur = g_sbh_large_head;
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

void sub_001668FA(void)   /* __sbh_alloc_block(desc, flags, size), stdcall */
{
    uint32_t size = MEM32(esp + 12);
    eax = sbh_alloc(size);
    esp += 16;
}

/* __sbh_free_block(desc, flags, block) — called by the CRT free front
 * sub_00163E3D. Was a no-op (blocks leaked). stdcall ret 12 -> esp += 16. */
void sub_0016707C(void)
{
    sbh_free(MEM32(esp + 12));
    eax = 1;
    esp += 16;
}

/* ── Override: CRT heap creator (__sbh_heap_init core) @ 0x001664D6 ──
 * The recompiled creator builds the SBH groups but returns a NULL descriptor
 * (its descriptor local stays 0 — the SEH-frame path that captures it is never
 * taken). Return a valid zeroed descriptor so _heap_init (sub_00167E5B) stores
 * a non-NULL 0xBF5000 and downstream code reads sane (zero) descriptor fields.
 * Actual allocations are served by the sub_001668FA bump override above.
 * __stdcall, 6 args -> descriptor VA in eax. Gen body #if 0'd in recomp_0008.c. */
void sub_001664D6(void)
{
    eax = xbox_HeapAlloc(0x2000, 16);  /* 8 KB zeroed; ~0x600 used by descriptor */
    esp += 28;                          /* pop dummy return (4) + 6 args (24) */
}

/* ICALL failure diagnostic (rate-limited).
 * Called by the RECOMP_ICALL macros when an indirect-call target resolves to
 * neither a generated function, a manual override, nor a kernel thunk. */
static uint64_t g_icall_fail_logged = 0;
void recomp_icall_fail_log(uint32_t va)
{
    if (g_icall_fail_logged < 200) {
        fprintf(stderr, "[ICALL] unresolved target 0x%08X trace:", va);
        for (int k = 1; k <= 8; k++)
            fprintf(stderr, " %X",
                    g_icall_trace[(g_icall_trace_idx - 1 - k) & (ICALL_TRACE_SIZE - 1)]);
        if (va == 0) {
            void *bt[10]; int n = CaptureStackBackTrace(1, 10, bt, NULL);
            fprintf(stderr, " bt:");
            for (int k = 0; k < n; k++) fprintf(stderr, " %p", bt[k]);
        }
        fprintf(stderr, "\n");
        fflush(stderr);
        g_icall_fail_logged++;
    }
}

/* ── Manual override table ──────────────────────────────────────────
 * Map original Xbox VA -> hand-written replacement. Empty for now; the
 * trailing {0,0} sentinel keeps the array valid and is skipped at lookup. */
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



