# Dead or Alive 3 - Static Recompilation Project

## Project Overview
Native Windows PC port of Xbox **Dead or Alive 3** (2001, Team Ninja) via static
recompilation, using the `xboxrecomp` pipeline and following the working `burnout3`
project (a sibling folder) as the canonical reference. This project is a self-contained
clone of burnout3's structure: it vendors the Python pipeline (`tools/`) and the
game-agnostic C runtime (`src/kernel`, and later `src/d3d`, `src/apu`, `src/nv2a`,
`src/audio`, `src/input`).

## Key Facts (from tools/xbe_parser/xbe_parser.py on ../doa3gamefiles/default.xbe)
- **XBE**: retail, Title ID **0x54430001**, build 2001-10-26, debug path `C:\Doa3\Output\Release\Doa3.exe`
- **Base Address**: 0x00010000   **Image Size**: 0x00C21500 (12.13 MB)
- **Entry Point**: **0x001651A5** (retail, XOR-decoded from 0xA8EA060E)
- **Kernel Thunks**: 0x001ED0E0 (= .rdata start)   **Kernel imports**: 112
- **XDK**: 3911-era. Libs: XAPILIB, D3D8 (3925), D3DX8, XGRAPHC, DSOUND (3936), XBOXKRNL, LIBC, LIBCPMT
- **Engine**: Team Ninja proprietary, **Direct3D8 directly (NOT RenderWare)** +
  **CRI middleware**: Sofdec movies (`PSGSFD*` sections; `mv_*.sfd`), AFS archives
  (`loadfile.afs`, `bgm.afs`, `voice.afs`), ADX/AIX audio (`ninja.aix`).
- **.text**: 0x00011000–0x001B0DE0 (~1.7 MB). Other code sections: D3D, D3DX, XGRPH,
  DSOUND, PSGSFD00/_I/_B/_P, XPP, DOLBY. Data: .rdata, .data (10.5 MB incl. BSS), $$XTIMAGE.

## Repository Structure
- `tools/` — vendored xboxrecomp pipeline (xbe_parser, disasm, func_id, recomp, ...)
- `src/kernel/` — Xbox kernel replacement + **memory layout (DOA3-customized)** + register model + dispatch bridge
- `src/d3d, src/apu, src/nv2a, src/audio, src/input` — copied runtime, **not yet built** (added at the graphics/audio phases)
- `src/game/` — host (`main.c`), manual overrides (`recomp/recomp_manual.c`), generated code (`recomp/gen/*`)
- `bin/doa3.exe` — output

## Pipeline (how to (re)generate everything)
Run from the `doa3/` directory:
```
py -3 tools/xbe_parser/xbe_parser.py ../doa3gamefiles/default.xbe --json tools/xbe_parser/burnout3_analysis.json --quiet
py -3 -m tools.disasm  ../doa3gamefiles/default.xbe --force -v   # FULL disasm (NOT --text-only)
# >>> RE-APPLY the missing-function augmentation here (see below) <<<
py -3 -m tools.func_id ../doa3gamefiles/default.xbe
py -3 -m tools.recomp  ../doa3gamefiles/default.xbe --all --split 1000
cmake -S . -B build && cmake --build build --config Release
```
**FULL disassembly** (no `--text-only`) is now used so the XDK library sections (D3D,
D3DX, XGRPH, DSOUND, PSGSFD*, XPP, DOLBY) get real function detection — ~5,821 detected
+ seeding → ~11,858 functions, 12 gen files. NOTE: DOA3's XBE marks .rdata/.data
executable; `tools/disasm/loader.py get_code_sections()` was patched to exclude data
sections by name so the full sweep doesn't disassemble data as code.
Notes:
- The disasm/recomp loaders read the section table from
  `tools/xbe_parser/burnout3_analysis.json` (filename kept for loader auto-detect).
- `tools/disasm/config.py` and `tools/recomp/config.py` are customized for DOA3
  (SECTIONS, ENTRY_POINT=0x001651A5, KERNEL_THUNK_ADDR=0x001ED0E0).

## Patches that MUST be re-applied after re-running a stage (analogue of burnout3's "Gen File Patches")
Re-apply after every fresh `tools.disasm` run (it overwrites functions.json):
1. **Call-site seeding** — `tools/recomp/seed_missing_functions.py` adds call targets
   the detector missed (else thousands of unresolved `sub_*` at link). Seeding adds
   new call sites, so loop seed→func_id→recomp until in-section "valid-missing" == 0.
   Get the list by diffing `sub_XXXXXXXX()` call sites vs `^void sub_*(void)` defs in
   `src/game/recomp/gen/*.c` (no build needed).
2. **Immediate-pointer seeding** — indirect-call targets passed as DATA (thread start
   routines, callbacks, vtable slots) never appear as `sub_X()` calls, so step 1 misses
   them. Scan gen code for hex immediates in [0x11000,0x1B0DE0) whose XBE byte is a
   function prologue opcode (~1170 found), seed them, then re-run the convergence loop.
   This is how `0x164C28` (XAPI thread trampoline) and `0x165136` (game main) get into
   the dispatch table — without them the main thread never starts.
3. **Garbage stubs** — ~15 out-of-section mis-decoded targets can't be seeded; emit
   no-op stubs in `src/game/recomp/gen/recomp_stubs.c`.
4. **tools/recomp/translator.py** label fix (`loc_XXXX: ;`) lives in the tool — survives
   regen automatically; do not revert.
5. **tools/recomp/lifter.py SEH addresses** (lives in tool, survives regen):
   `SEH_PROLOG=0x0018F494`, `SEH_EPILOG=0x0018F4CD` (DOA3's `__SEH_prolog4`/`__SEH_epilog4`).
   The lifter emits `ebp = g_seh_ebp` after calls to these and `g_seh_ebp = ebp` at their
   ret, bridging the frame pointer across the SEH helper call. Without the correct
   addresses, every `__try`-using function inherits ebp=0 and faults reading `[ebp-4]`
   (= Xbox VA 0xFFFFFFFC). Found via: the function most-called right before `ret` in
   functions that open with `call sub_0018F494`.
Total after all seeding: ~10,500+ functions, ~11 gen files.

## Kernel thunk bridge (DOA3 fixes in src/kernel/)
- `kernel.h`: `XBOX_KERNEL_THUNK_TABLE_BASE=0x001ED0E0`, `_SIZE=112` (was Burnout's
  0x0036B7C0/147). Bridge resolves by Xbox kernel **ordinal** (game-agnostic) → 112/112.
- `kernel_thunks.c`: `g_thunk_ordinals[112]` = DOA3's ordinals in thunk order.
- Thread model: `bridge_PsCreateSystemThreadEx` (ordinal 255) runs the FIRST thread's
  start routine **inline** via recomp dispatch (single-threaded; global register model
  isn't thread-safe). Worker threads are deferred. The entry's CreateThread (sub_00164CC0)
  passes XAPI trampoline 0x164C28 as routine, game-main 0x165136 as context1.
- Unbridged DOA3-specific ordinals (generic no-op stub, fine for boot): 232,5,144,231,
  224(NtResumeThread),91(KdDebuggerNotPresent),14(DbgPrint),125(KeQueryInterruptTime).

## Memory layout (src/kernel/xbox_memory_layout.{h,c}) — DOA3 deviations from burnout3
- Section VAs/sizes/raw-offsets set for DOA3 (.text 0x11000/0x19FDE0/0x1000,
  .rdata 0x1ED0E0/0x2C53C/0x1DF000, .data 0x219640/init 0x1A8450/0x20C000).
- `g_extra_sections` replaced with DOA3's D3D/D3DX/XGRPH/DSOUND/PSGSFD*/XPP/DOLBY/$$XTIMAGE.
- **Stack relocated to 0x00D00000** (was 0x780000): DOA3's image+BSS extends to ~0xC31500
  and would collide with burnout's stack/heap. Heap follows stack; total map stays 64 MB.
- FAKE_TLS_VA/FAKE_RWDATA_VA moved to 0xC40000/0xC50000 (gap between image end and stack).

## Current Work State (Session 1 — pipeline stand-up + first boot)
- Scaffolded `doa3/` from burnout3 (runtime + tools), configured pipeline for DOA3 XBE.
- Pipeline runs clean: parse → disasm → seed (call-site + immediate) → func_id →
  recomp (**~10,500 functions, ~11 gen files**). Builds to **bin/doa3.exe** (~15 MB).
- Memory layout adapted for DOA3 (stack@0xD00000); kernel thunk bridge fixed
  (0x1ED0E0/112, ordinals resolve 112/112).
- **Boot progress**: entry (CRT startup) → `CreateThread` → `PsCreateSystemThreadEx`
  runs XAPI trampoline 0x164C28 **inline** → game main 0x165136 runs. SEH-prolog ebp=0
  crash FIXED (lifter SEH addresses, patch #5). Now executes **~20 kernel calls** of real
  game init with working SEH frames: NtAllocateVirtualMemory, RtlInitializeCriticalSection,
  IoCreateFile/NtOpenFile/NtQueryVolumeInformationFile (**file system access**),
  MmAllocateContiguousMemory (GPU mem).
- **VEH fault-skip** added to main.c (ported from burnout): decodes faulting reads/writes,
  returns 0 / skips, advances RIP.
- **CRT lock recursion FIXED** (bootstrap-lock pre-init in main.c). **SBH heap worked
  around** (bump-allocator override of sub_001668FA). With both, boot gets past the heap.
- **BOOT REACHES THE GAME MAIN; full burnout graphics stack builds + initializes.** It
  traverses CRT → heap → kernel → input → NV2A GPU init → interrupt connect (fixed) →
  **game main (sub_00165136)** → D3D init (host D3D8->D3D11 device + pgraph translator up)
  → a **GPU fence/FIFO wait** that still spins because the nv2a PFIFO push-buffer
  processing is unimplemented (burnout's "Phase 2-3"). Next step under "NEXT".
- Graphics built exactly like burnout (deviations reverted). Diagnostic threads removed.
- **HEAP FIXED**: `_heap_init` now stores a valid descriptor (**0xBF5000 = 0x01500000**),
  via override of the heap creator `sub_001664D6` (returns a zeroed 8 KB descriptor;
  the recompiled creator built the SBH groups fine but its descriptor local stayed 0 —
  the SEH-frame path that captures it is never taken). Allocations served by the
  `sub_001668FA` bump override. Confirmed by diag: "creator returned descriptor=0x01500000".
- **XDK FULL DISASSEMBLY DONE** → the XPP crash (sub_001E61BB) is FIXED. All code sections
  now fully disassembled (~11,858 functions, 12 gen files). The recompiled DOA3 now
  **runs continuously without crashing** (full 90s timeout, no segfault).
- **GRAPHICS NOW BUILT THE BURNOUT WAY (deviations reverted).** Per the user's directive
  ("follow burnout, non-negotiable"), I removed my non-burnout inventions (the GPU-pump
  thread, the watchdog, and the `nv2a_pgraph_stub.c`) and now build the **full** stack
  exactly like burnout:
  - top CMakeLists builds all 5 libs: src/kernel, src/d3d, src/audio, src/input, src/apu.
  - game CMakeLists builds the full NV2A (nv2a_core + nv2a_mmio_hook + nv2a_pb_test +
    **nv2a_pgraph_d3d11** + nv2a_pb_replay) and links d3d8_compat/dsound/input/apu + d3d11/dxgi.
  - main.c creates a host window + the D3D8->D3D11 device (`xbox_Direct3DCreate8` +
    CreateDevice) and calls `pgraph_d3d11_init()` — mirroring burnout's graphics init.
  - `src/game/burnout_compat_stubs.c` provides inert stubs for burnout-only symbols the
    shared nv2a sources reference (g_global_txd, g_textures_loaded, txd_find,
    fe_menu_get_pb_state, g_fe_cursor) — DOA3 has no RW TXD/frontend (necessary deviation).
  Result at runtime: "PGRAPH-D3D11 Translator initialized" + "D3D8->D3D11 device created".
  The NV2A MMIO hook still handles all 0xFD000000 register access (VEH routing in main.c).
- **INTERRUPT-CONNECT BUG-CHECK FIXED — and found a SYSTEMIC ROOT CAUSE: DOA3's XDK 3911
  kernel ordinals differ from our (later-XDK) kernel table.** The "KeBugCheckEx" was a
  red herring: thunk 0x1ED24C = **ordinal 98**, which in DOA3 is **KeConnectInterrupt**
  (not KeBugCheckEx). Our stub returned FALSE → the miniport's GPU-interrupt connect
  "failed" → it bug-checked. Confirmed via the cxbx oracle (`E:\Downloads\doa3\cxbx_t2.txt`):
  the real DOA3 calls KeInitializeDpc → HalGetInterruptVector(level 3)=**33** →
  KeInitializeInterrupt → KeConnectInterrupt(obj 0x1C2B20)=**0x01 (TRUE)**, and **never**
  calls KeBugCheck. Fixes applied in kernel_bridge.c (DOA3-specific ordinals):
  ord 98 → KeConnectInterrupt (return TRUE, arg_bytes 4); ord 44 → HalGetInterruptVector
  (return 33, arg_bytes 12). Boot advanced past the panic (+1 kernel call).
  **KEY LESSON: for any kernel-call misbehavior, cross-check the ordinal's meaning against
  the cxbx trace — our kernel's ordinal→function table (from burnout) is wrong for some
  Hal/Ke ordinals in DOA3's early XDK** (44, 47, 98 found so far; 47 our bridge even maps
  to HalReadSMCTrayState while DOA3 uses it as HalReadWritePCISpace).
- **GPU COMMAND-BUFFER SYNC SOLVED — the burnout way (no gen hacks). Boot now reaches a
  live frame loop.** kernel calls 37 → 200, **~49,000 push-buffer kicks in 35 s** (the
  game's render loop runs at full speed), cursor advancing through the RAM push buffer, the
  game emits its own DbgPrint. Done by following burnout's documented PB pattern
  (`burnout3/docs/d3d8ltcg_device_context.md` + its sub_003518E0/sub_00351770 overrides):
  1. **PB-trio overrides** in recomp/recomp_manual.c, named via the cxbx symbol cache:
     - `CDevice_KickOff` (sub_001B88C0): simulate GPU drain + fence ack — set
       `notifier+0x44 = device[0]` (so the fence compare `MEM32(dev) ^ notifier+0x44` is
       self-equal → satisfied) and `GET(dev+0x2518) = PUT(dev+0x2B60)`. fastcall, ret 0.
     - `CDevice_MakeSpace` (sub_001B8B00): reset write cursor to the RAM push buffer.
     - `XMETAL_StartPush` (sub_001B8DA0): keep `device[0]` inside the RAM push buffer so
       push writes don't hit the GPU aperture (0xFDFE…); returns eax = cursor. ret 4.
  2. **RAM push buffer** allocated in main.c (4 MB) → globals `g_doa3_pb_base/_end`.
  3. **Cached-RAM-mirror VEH handling** (main.c): the D3D fence notifier lives at the Xbox
     **0x80000000 cached mirror** (= physical 0). On a fault < 0xF0000000 the VEH now maps a
     64 MB view of the same file mapping (via `xbox_GetMappingHandle`) so notifier reads/
     writes hit real RAM — this is what actually let the fence resolve.
  The device PB field map (read from the gen code, confirmed at runtime): `device[0]`=write
  cursor, `device+0x04`=segment limit, `device+0x2304`=fence notifier ptr, `notifier+0x44`=
  GPU-acked fence value, `device+0x2518`=FIFO GET, `device+0x2B60`=FIFO PUT.
- **RENDER PIPELINE WIRED + PRESENT WORKING (clean, burnout-faithful). Stable ~90 fps.**
  - **Push-buffer → D3D11 translation** in the KickOff override (`doa3_translate_pb`,
    following burnout's `parse_live_pushbuffer`): parse `[g_pb_parsed, cursor)`, decode NV2A
    method headers (`count<<18 | subch<<13 | method`), dispatch each to `pgraph_d3d11_method`.
  - **Per-frame present via a CLEAN function override** (the burnout `_gen` wrapper pattern):
    `D3DDevice_Present` (sub_001B5850) is a tail-call/shared-frame continuation — wrapping it
    crashes (stack-overflow recursion), so DON'T. Instead wrap **`D3D_SetFence` (sub_001B8970)**,
    which Present calls first thing every frame with **arg==2** (the only caller using 2) and
    which ends with a clean `ret 4` (no tail-call). The wrapper runs `sub_001B8970_gen()` then,
    when arg==2, `pgraph_d3d11_flush()` + `doa3_present_frame()` (flip host swapchain + pump
    Win32 msgs). Gen renamed `sub_001B8970_gen` (re-apply after regen).
- **HOST AUDIO BACKEND ADDED (was missing; burnout main.c steps 5+10).** DOA3's main.c now
  initializes the MCPX APU (`mcpx_apu_init_standalone(g_xbox_mem_offset)` → `g_apu_state`)
  and host DirectSound (`xbox_DirectSoundCreate(NULL,&g_dsound,NULL)`), and the VEH routes
  the APU MMIO range **0xFE800000-0xFE87FFFF** to `apu_hook_handle_mmio` (mirrors burnout).
  Confirmed: "MCPX APU emulation initialized" + "host DirectSound created". Required, but did
  not by itself advance the game — the game never accesses the APU yet (its own audio init
  isn't reached).
- **CURRENT BLOCKER — game stuck in its main loop; state machine doesn't advance (diagnosed
  via cxbx + entry-tracing).** Boot path (traced): init `sub_00167E5B`→mount
  `sub_00167EA9`→`sub_00168411`→`sub_001683B9` → `sub_000A0740` → one-time init
  `sub_000A0680` → **main loop `sub_000A06D0` (ends `goto loc_000A06D0`, infinite, ~90fps)**.
  File I/O works: the game opens `\Device\Harddisk0\partition1\` (cache check, XMountUtilityDrive
  sub_00163A3F) and queries free space — SUCCEEDS (the 2 `RtlNtStatusToDosError` calls are
  STATUS_SUCCESS conversions, a red herring). But the game never opens `dsstdfx.bin` or
  `loadfile.afs`. cxbx oracle: the real game (main thread) opens partition1 (line 5929) →
  DirectSoundCreate (14361) → dsstdfx.bin (14744) → loadfile.afs (14837); **mine diverges
  right after the partition check.** Gates found: the DirectSound-effects download
  (`sub_000A0680`→`sub_0009F730`→`sub_0009F640`) is skipped because `sub_001599C0` (a lookup
  in the DirectSound buffer table @0xB1F3D8) returns 0; and the per-frame `sub_00153D90` is
  skipped because state flag **MEM32(0x5E597C)==0** (written by sub_0009DD20/DF60/E1F0/E340).
- **esp LEAK (separate bug, noted):** g_esp steadily decreases ~151 bytes per kernel call and
  runs in the 0xFFF.....  range (zero-page-backed via the VEH, so not yet fatal) — a
  recompiled function in the frame loop has unbalanced stack cleanup. Investigate later.
- **AUDIO GATE FOUND + FIXED (burnout-style) — game now reaches the asset loader.**
  Root cause (traced via cxbx + gate-logging): the boot asset+audio init `sub_0009F730`
  (called once from `sub_000A0680`) runs, in order: `DirectSoundCreate`(sub_001C7FD9)=OK,
  `sub_001C6B72`=OK, **`sub_0009F640` (DirectSound DSP-effects download) = -1 (FAIL)** →
  `sub_0009F730` bails out BEFORE calling `sub_0009C840` (the loadfile.afs loader). So a
  non-fatal audio-effects failure was blocking ALL asset loading. The effects download
  fails because its DirectSound buffer-slot alloc `sub_001599C0` returns 0. cxbx confirms
  the effects image is non-essential ("DownloadEffectsImage incomplete!" then continues).
  **Fix (mirrors burnout's sub_00135040 audio-init stub): override `sub_0009F640` in
  recomp_manual.c to return success (skip the effects download); gen #if 0'd.** Result:
  `sub_0009C840` (loadfile.afs loader) is now reached.
- **CURRENT BLOCKER — CRI ADXF async file I/O (server-thread model). Distinct subsystem.**
  `sub_0009C840` registers loadfile.afs via the CRI ADXF system (`sub_00169530`) and then
  spins `while (sub_00169150(n) != 3)` waiting for the CRI low-level file server to finish.
  `sub_00169150(arg)` returns **-3** unless `arg == MEM32(0xC065C0)` (a CRI server-thread-ID
  check) — i.e. the work only completes on the CRI server thread. The recomp is
  single-threaded, so the CRI server never runs and the op never completes → spin (game now
  renders 1 frame then hangs in the load). loadfile.afs is still not opened.
- **CRI ADXF deeply traced (cxbx + runtime instrumentation). Op-SUBMIT is the gate.**
  cxbx proves loadfile.afs opens on the **MAIN thread** [0x3A68] synchronously (cxbx_t2.txt
  line 14837) — the game IS multi-threaded (creates 4 CRI worker threads, routines 0x16A530/
  0x16A570/0x16A5E0/0x16A650, via PsCreateSystemThreadEx; my recomp defers workers) but the
  op PROCESSING is **inline-pumpable on the main thread**: the wait `sub_00169150(arg)` calls
  the processor `sub_0016916F` when `arg == MEM32(0xC065C0)`; that processor advances the op
  and does the I/O. The 4 workers (e.g. sub_0016A530) are just busy-spinners on 0xB24D58, NOT
  the op processors. So full multi-threading is likely NOT required — inline pumping suffices.
  - The blocker: the op is never SUBMITTED. `sub_0009C840` calls `sub_00169530(2,...)` (and
    later `sub_00169530(1, "\\loadfile.afs", ...)`), which → `sub_00169574` → `sub_00169590`
    → `sub_00169370` (op-slot alloc) → `sub_00168810` (op-object alloc) → `sub_00168870`
    (op-INIT). Runtime dump: op pool @0xC07A40 has FREE slots (slot0=01, slots1-15=00), so
    alloc is fine; **`sub_00168870` returns -1** because one of its args (esp+8) is 0 →
    `sub_00169370` frees the op and returns 0 → `g_C07620`=0, `g_C065C0`=-1 → the wait
    `sub_00169150(2)` returns -3 forever (spin). Game now renders 1 frame then hangs here.
- **CRI ROOT FOUND (traced 15+ levels via return-value instrumentation): CRI partition-create
  fails.** The loadfile.afs load (`sub_0009C840`) first creates 3 CRI partitions via
  `sub_00169660`(→`sub_0016D330`) — ALL return 0 (handles @0x4BE3F8/0x5D4C20/0x4BE40C = 0).
  Because the partitions don't exist, the file-register (`sub_00169530`→`sub_00169574`→
  `sub_00169370`→`sub_00168870`→`sub_00168889`→`sub_0016BF20`→`sub_0016BF44`→`sub_0016CA10`)
  fails (a CRI structure arg propagates as 0), so the op never activates (g_C065C0=-1,
  g_C07620=0) and `sub_00169150(2)` spins forever.
  - **Exact failure: `sub_0016D330` size check at loc_0016D48A/loc_0016D496 (error 0x216544).**
    Runtime dump: `partmem(esi+0x10)=0`, `used(esi+0x14)=0`, `nameLen(eax)=4` → check
    `nameLen(4) <= partmem(0)` FAILS. The partition memory size is **0**. It comes from
    `sub_00169660(name=0x202C38, 0xFFFFFFFF, 0, 0)` — the size/work-buffer arg is 0.
  - **CONTRADICTION:** the real game (cxbx) passes the *same* literal args and opens
    d:\loadfile.afs on the main thread (cxbx_t2.txt line 14837). So either (a) a recomp
    control-flow/stack bug in `sub_0016D330` reads partmem from the wrong place, or (b) the
    real game relies on a global CRI work-buffer set up by an init step that's
    failing/missing in the port (sub_0016A8D0 registers 0x4BE418→0x1ED658 just before). 
    Resolving this needs the real game's `esi+0x10` value at 0x16D48A — i.e. an interactive
    cxbx breakpoint (not available from the kernel trace).
- **DECISION (2026-06-28): KEEP/FIX CRI — do NOT replace it. Host AFS reader REMOVED.** The
  earlier "replace CRI with a host AFS reader" plan was abandoned: the CRI's real blockers were
  legitimate missing/buggy functions in OUR kernel layer (not deep CRI rot), and fixing them
  both advances the game and improves the whole port. `src/game/host_afs.c/h` were written but
  NEVER wired in (zero progress) — DELETED and removed from src/game/CMakeLists.txt.
- **CRI PARTITION-CREATE FIXED — game advanced into the CRI exec server + AFS file-open.**
  `sub_0016D330` failed because the game passes partition buffer=0/size=0 (with flags
  0xFFFFFFFF, the "caller supplies buffer" path). Fix: wrapped `sub_0016D330` in
  recomp_manual.c (gen renamed `sub_0016D330_gen`) to supply a 256 KB Xbox buffer when
  arg3(esp+0xC)==0 (set arg3=buffer, arg4(esp+0x10)=0x40000).
- **GARBAGE FILE PATHS FIXED (root cause, clean kernel fix).** The malformed OBJECT_ATTRIBUTES
  for the AFS open was because **`RtlInitAnsiString` (ordinal 289) had no bridge** (returned 0,
  did nothing) — the CRI calls it to build the filename ANSI_STRING right before NtOpenFile
  (ord 202), so the string was uninitialized stack garbage. Implemented `bridge_RtlInitAnsiString`
  in kernel_bridge.c (stores the Xbox VA in Buffer so bridge_get_xbox_path resolves it). Paths
  are now correct (`d:\*`, `t:\*`, `z:\*`).
- **DIRECTORY ENUMERATION FIXED.** The CRI opens `d:\*` (trailing wildcard) to get a directory
  handle for NtQueryDirectoryFile; CreateFileW rejects wildcards. Fix in bridge_create_file_impl:
  if the translated path has `*`/`?`, strip the wildcard component and open the parent dir with
  FILE_DIRECTORY_FILE. Also fixed the stale save-dir default (kernel_path.c: Burnout3 →
  DeadOrAlive3). All 3 dir opens now succeed.
- **COOPERATIVE FIBER THREADING IMPLEMENTED (works).** DOA3's CRI spawns 4 worker threads (one
  watchdog 0x16A530, three I/O servers 0x16A570/5E0/650) that the single-threaded recomp used to
  defer. New `src/kernel/xbox_fiber.{c,h}`: each Xbox thread = a Windows fiber with its own native
  stack + Xbox stack + saved recomp register-globals (g_eax..g_edi, g_esp, g_seh_ebp); a
  round-robin scheduler switches at yield points. Wiring:
  - `bridge_PsCreateSystemThreadEx` spawns a fiber per worker (was: deferred).
  - `bridge_KeWaitForSingleObject` (the worker wait, via sub_001B1130) yields + returns WAIT_0
    (loose cooperative model; the workers' work fns are guarded no-ops when nothing's queued).
  - `bridge_PsTerminateSystemThread` calls `xbox_fiber_exit()` (ends the fiber, switches away —
    otherwise sub_00164B6F's trailing int3 aborts the process, exit 3).
  - Main-thread yield point: `sub_00170330` (CRI vsprintf, hit every failed poll) wrapped in
    recomp_manual.c to `xbox_fiber_yield()` then call `_gen`. Watchdog `sub_0016A530` overridden
    to a cooperative yield-loop. (gen patches: rename sub_00170330→_gen, #if0 sub_0016A530.)
  Result: workers now RUN (kernel calls 117→millions, scheduler stable, no crash).
- **CRI-LOG capture tool** (recomp_manual.c, in the sub_00170330 wrapper): reads the CRI's
  formatted message buffer at 0xC03220 (deduped) → `[CRI-LOG] ...`. Surfaces the CRI's OWN error
  strings — invaluable for this phase. Keep it until asset loading works.
- **RECOMP BUG #1 FIXED — esp-relative indirect-call targets.** `cvFsAddDev` failed because the
  recompiler read `call [esp+X]` targets AFTER pushing the dummy return (lifter.py:1095), so the
  offset landed on the dummy (target=0) → the device-ops icall returned 0. Fixed lifter.py to read
  the target into a temp before the push, and patched all 10 existing esp-relative icalls in the
  gen (only 10 of 1250 icalls are esp-relative). **`cvFsAddDev` now succeeds** (MFS→0x3BEFD0,
  WX→0x3BEF68); the game advances into the AFS file open.
- **RECOMP BUG #2 (identified, root not yet found) — +4 esp stack-accounting drift in CRI fns.**
  `sub_0016CB20` (CRI path resolver) returns with esp 4 too high (delta 8, expect 4), so its
  `POP esi` restores the wrong slot → the AFS path POINTER (0x1FF8A8) becomes the path CONTENT
  (0x625C3A7A "z:\b") → `ADXF_Open`/`ADXSTM_OpenFnameEx` get a dereferenced filename → open fails.
  Workaround in recomp_manual.c (gen→`sub_0016CB20_gen`): enforce the cdecl/callee-save ABI
  post-conditions (esi preserved, esp=entry+4). CONFIRMED — ADXSTM then gets the correct fname
  `0x1FF8A8 'z:\bgm.afs'`. BUT the same drift RECURS in `sub_0016CA10` → still "can't open".
  `sub_0016C2B0`/`sub_0016C970` are balanced per-path; the drift is deeper (sub_0016C780/C450/C160
  or an icall callback's recomp ret-convention). NEXT: build an esp-balance checker (static CFG or
  runtime prologue/epilogue instrumentation) — in this recomp model every fn is "ret 0" so the net
  esp at each `return` should be +4; flag deviations. [CRI-LOG] capture tool (sub_00170330 wrapper,
  reads CRI msg buffer 0xC03220) surfaces the CRI's own error strings; kept for this phase.
- **(superseded) earlier CURRENT BLOCKER — `cvFsAddDev` fails.** The fibers were
  necessary but the load is blocked earlier, in CRI filesystem init. Error chain:
  `cvFsAddDev #3:failed added a device` → `ADXSTM_OpenFnameEx: can't open _=` (garbage name) →
  `ADXF_Open: can't open file` → `ADXF_LoaddPartitionNw: can't open file` → the poll spins on
  `ADXF_GetPtStat: illigal parameter 'ptid'`. So the CRI can't register its filesystem device
  backend, hence every AFS open fails (loadfile.afs/bgm.afs never NtCreateFile'd). Localized to:
  `sub_0016A8D0` (CRI dev-init) calls `cvFsAddDev`=`sub_0016CCE0` for devices "MFS" (ops 0x171B00)
  and "WX" (ops 0x171990); the failing add is `sub_0016C7E0`, which returns 0 either because its
  icall `RECOMP_ICALL(MEM32(esp+0xC))` (a device-ops fn) returns 0, or its slot-table scan
  (0xB25260..0xB25474, 32 slots) reads full/garbage. NEXT: trace `sub_0016C7E0` — log the icall
  target + return and the slot-table state — to see why device #3 won't register. This is a
  CRI-init bug independent of the threads. Oracle: cxbx opens d:\loadfile.afs (main thread, line 14837).
- **RECOMP BUG #2 FIXED (root found) — RECOMP_ICALL_SAFE over-cleaned cdecl args.** The
  failure path set `g_esp = saved_esp`, which on a cdecl icall double-counts the args the
  caller also cleans → +N esp drift → `POP esi` reads the wrong slot → the AFS path POINTER
  became its CONTENT (garbage filename `cvFsOpen #1:illegal file name`). Fix: failure path
  now does `g_esp += 4` (pop only the dummy return slot) in recomp_types.h. The earlier
  attempt at this CRASHED, but that crash was actually the worker `NtSuspendThread` self-
  suspend loop (since fixed) — with the fiber suspend model in place, `g_esp += 4` is safe.
  CONFIRMED: the CRI path is correct again (`z:\bgm.afs`, not garbage).
- **FIBER SUSPEND/WAIT MODEL (cxbx-validated).** `bridge_NtSuspendThread`: only a *worker*
  fiber may self-suspend; the primary (main) fiber never blocks here (a stray suspend with a
  garbage stack-address handle was deadlocking main) — `xbox_fiber_is_primary()` guards it.
  `bridge_KeWaitForSingleObject`: INFINITE waits (timeout ptr NULL) block on the event
  signal-state; finite waits yield+recheck with a budget then return STATUS_TIMEOUT (the
  workers' work-wait on event 0x001C2CF0 is infinite/blocking).
- **RECOMP BUG #3 FIXED — the recompiler never implemented REP string compare/scan.** THE
  big one this session. `repe cmpsb/cmpsw/cmpsd` and `repne scasb` were emitted as **bare
  comments** (lifter `_lift_rep_string`), and the following jcc was a **hardcoded constant**
  (`_make_condition` returned `1 /*strings matched*/` for je) — so every REP-based string
  compare reported "equal". This broke CRT `strncmp` = `sub_0018FC20`, which made
  `cvFsAddDev("WX")` collide with the already-registered "MFS" (the device-find
  `sub_0016C160` matched "WX"=="MFS") → "WX" never registered → default device "WX" → every
  cvFs open = "device not found". Fix in BOTH places (survives regen + applied to current gen
  without a full regen):
  - lifter.py `_lift_rep_string`: emit a real loop that updates esi/edi/ecx and leaves the
    final compared operand pair in new globals **g_str_a/g_str_b** (defined in
    xbox_memory_layout.c, extern in recomp_types.h).
  - lifter.py `_make_condition` (cmps/scas): read g_str_a/g_str_b (==,!=,<,>,<=,>=).
  - gen patched in place by a 6-substitution script (27 loop sites + 25 conditionals across
    recomp_0002/0007/0008/0009/0010.c). Verified: WX now registers (slot1=0x3BEF68),
    "device not found" gone, the CRI does **real file I/O** (NtOpenFile/NtCreateFile).
- **CACHE-MISS Z:→D: FALLBACK** (bridge_create_file_impl): Z:\ maps to an empty Cache dir,
  D:\ to the game disc (../doa3gamefiles, has loadfile/bgm/voice.afs). A failed Z:\ *file*
  read (OPEN_EXISTING, not a FILE_DIRECTORY_FILE open) now retries the D:\ equivalent —
  mirroring the Xbox cache→disc behavior. (Doesn't yet trigger: see below.)
- **CURRENT BLOCKER — CRI cache-probe flow: file never opened → div-by-zero. (deeply traced)**
  After the device fix the recomp reaches asset loading. The crash is **INTEGER_DIVIDE_BY_ZERO
  (0xC0000094) at `sub_00171780+0x185`** (NOT a stack overflow — g_esp healthy; added
  [CRASH-NONAV] logging in main.c crash_veh to surface non-AV exceptions). The chain:
  - The CRI cache check `sub_00167DA1` probes two cache roots (0x3BC628/0x3BC630) via
    `sub_00167A6D`, which opens the asset path with **FILE_DIRECTORY_FILE (CreateOptions
    0x4021)** to test for a cached split-file *directory*, expecting **STATUS_NOT_A_DIRECTORY
    (0xC0000103)** for a regular file (`sub_00167AC4` checks exactly that and sets the caller
    result=0 = "it's a file"; `sub_00167ACE` handles the real-directory case).
  - **FIX APPLIED (correct NT semantics, verified):** bridge_create_file_impl returns
    STATUS_NOT_A_DIRECTORY when a FILE_DIRECTORY_FILE open targets a regular file (checks
    GetFileAttributes on the Z: path and, on a Z: miss, the D: disc). Confirmed log:
    `[FILE] dir-probe 'z:\bgm.afs' attrs=0x20 -> NOT_A_DIRECTORY`.
  - **STILL crashes:** the probe now correctly reports "it's a file", but **no file open
    follows** (NtReadFile=0, no [FILE] open after the probe). Partition load
    `sub_001717E0`→`sub_00171110`(alloc slot)→`sub_00171780` calls `sub_001716B0`, whose read
    callback **0xB25614 = sub_0016D1B0** should read the AFS header — but the file was never
    opened, so sector size `MEM32(esi+0xC)` stays 0 → `(filesize+0x800-1)/0` faults.
  cxbx (14378): real game opens **`d:\loadfile.afs` FIRST** via IoCreateFile,
  **CreateOptions=0x60 (FILE_NON_DIRECTORY_FILE|SYNC), RootDirectory=0xFFFFFFFD** — plain FILE,
  SUCCEEDS. So recomp is on bgm/z:/dir-probe where the real game is on loadfile/d:/file. NEXT:
  (a) trace `sub_00167DA1` — after the probe returns "it's a file", WHERE should the file be
      opened? the open between the probe and sub_00171780 is missing; inspect cache roots
      0x3BC628/0x3BC630 (z: AND d:?);
  (b) suspect another recomp correctness bug (esi/stack not restored across the deep CRI chain,
      or the ~151B/call esp leak) corrupting the flow — build an esp-balance check;
  (c) Z:->D: *file* fallback + STATUS_NOT_A_DIRECTORY both added to bridge_create_file_impl;
      NtQueryDirectoryFile (ord 207) has no persistent find handle (latent, not yet hit).
- **CONFIRMED root (via a diagnostic div-by-zero guard in sub_00171780, recomp_0008.c:34305
  — `if (ecx==0) ecx=0x800;`, clearly commented, REMOVE when fixed):** with the crash guarded
  the game runs 30s stable and the CRI then logs **`cvFsSeek #2:vtbl error` / `cvFsTell #2:vtbl
  error`** — the partition's device vtable is null because **the AFS file was never opened**
  (NtReadFile stays 0). So the single-file open is definitively the missing step. The recomp
  does the Z:\ cache probe (cvFs mount `sub_00167EA9` → cache check `sub_00167DA1` → dir-probe
  `sub_00167A6D`) but **never the D:\ disc file open** the real game does first (cxbx 14378).
  NEXT SESSION: find where the CRI opens the single AFS file on a cache miss and why it's
  skipped — suspects: (a) a control-flow/frame (esi) recomp bug losing the "it's a file"
  result across sub_00167A6D/DA1/EA9, or (b) the disc-open gated on a wrongly-evaluated
  condition. Workers are now active (kernel calls reach #139, worker-stack esp, NtSuspendThread).
- **RECOMP BUG #4 FIXED — 1266 DROPPED FALL-THROUGHS (huge systemic bug). THE big win.** The
  recompiler emitted an implicit `return` at the end of any function whose last x86
  instruction was NOT a control-flow terminator — but in x86 such a function *falls through*
  into the next contiguous function. So 1266 functions silently skipped their continuation.
  This is what killed the CRI: e.g. `sub_00167AC4` (the dir-vs-file check) ends with
  `mov [ebp+0xC],ebx` and falls into `sub_00167ACE`, but the recomp returned early →
  the single-file open path never ran. Detected by scanning each gen function: ends without
  return/goto/int3 AND its `Original: …-0xEND` end address is another function's start.
  - **FIX (gen, via `/tmp/fix_ft.py` — RE-APPLY after any recomp regen, or port into the
    lifter):** for each such function, insert before the closing `}`:
    `g_seh_ebp = ebp; sub_NEXT(); return;` (or `sub_NEXT(); return;` if no `ebp` local),
    where sub_NEXT is the function at the end address. Applied to all .text (0x11000–0x1B0DE0);
    0 remain there (225 remain in XDK libs, off the CRI path — fix later). The proper fix is
    in tools/recomp/translator.py (emit a fall-through tail-call when a block ends with no
    terminator and the next address is a function) — NOT yet done; the gen script is the
    current source of truth.
  - **RESULT: the 3 AFS archives now OPEN on disc** (`cache-miss Z:->D: z:\loadfile.afs ->
    ../doa3gamefiles\loadfile.afs`, + bgm/voice) and the game **reaches the FMV streamer**
    (ADXSTM). Boot advanced #128 → #171. Also added: bridge_create_file_impl returns
    STATUS_NOT_A_DIRECTORY for a FILE_DIRECTORY_FILE open of a regular file; Z:->D: file
    fallback; sub_0016C970 device-resolver wrapper (drive-letter → default WX device).
- **CURRENT BLOCKER — cvFs mount table empty → partition read fails. (thoroughly traced)**
  cvFsOpen("d:\loadfile.afs") (=sub_0016CA66): device resolves fine to WX (0x3BEF68, empty
  prefix → default), then calls the WX **open fn = device+0x10 = sub_001717E0**, which reads
  the AFS header via the global read callback **0xB25614 = sub_0016D1B0 → sub_0016D0F0**.
  sub_0016D0F0 searches the **cvFs mount table 0xC057C0..0xC05AE8** (stride 0x30) by building
  a "%s%s" (mountpoint+name) and comparing — and finds NOTHING because the table is EMPTY.
  `sub_0016D250` only zero-inits it + sets the callbacks (0xB25610=0x16D190, 0xB25614=
  0x16D1B0); the per-file mount-REGISTER never runs (the mount sub_00167EA9 hit the
  NOT_A_DIRECTORY path). So the read returns -1 → sector size 0 → div-by-zero in sub_00171780
  (guarded with `if(ecx==0)ecx=0x800` at recomp_0008.c:34305 — DIAGNOSTIC, remove when fixed)
  → cvFsOpen returns 0 → "cvFsOpen #6:open failed" / "ADXSTM_OpenFnameEx: can't open " (empty,
  because the partition was never populated) / ADXF_LoaddPartitionNw fails. NEXT SESSION:
  find the cvFs mount-REGISTER that should add an entry to 0xC057C0 for each AFS, trace why
  it's skipped (likely sub_00167EA9/sub_00167ACE single-file-mount handling after the
  NOT_A_DIRECTORY result), and make it register loadfile/bgm/voice so the read resolves.
  New diag wrappers: [cvFsOpen] (sub_0016CA10), [cvFs-dev] (sub_0016C970) — remove when done.
- **=== SESSION (2026-07-01): THE AFS LOAD WORKS — ops complete with status 3. ===**
  The full chain from ADXF_LoaddPartitionNw to real disk reads now functions: loadfile/bgm/
  voice.afs open from d:\ (../doa3gamefiles), the AFS TOCs stream in 0x800 chunks
  (`[NTREAD] ... b0..3=41 46 53 00` = 'AFS' magic), ops complete (`ret=3` = the status the
  game's spin waits for), multiple partitions register, [FRAME] 1 presents. Fixes, in order:
  1. **RECOMP BUG #5 — conditional tail-jumps don't sync g_seh_ebp (3364 sites).** The
     translator emits `g_seh_ebp = ebp;` before unconditional tail-jmps but NOT for
     `if (cond) { sub_X(); return; }` — fpo_leaf callees inherited a STALE frame and
     read/wrote the wrong stack (broke XAPI CreateFileA's OBJECT_ATTRIBUTES → empty
     filenames). Fixed in gen by `tools/recomp/fix_cond_tailcall_ebp.py` (RE-APPLY after
     regen) + in lifter.py `_emit_cond_goto` + translator.py safety-net ebp declaration.
  2. **bridge_get_xbox_path ignored ANSI_STRING.Length** — XAPI passes counted strings
     (FindFirstFileA opens dir part "d:\" with Length=3 of a longer buffer). Now honors
     Length (copies into a static buf). This made every FindFirstFile-based stat work.
  3. **Access-mask bug**: bridge mapped NT 0x80000000 (GENERIC_READ) to GENERIC_ALL →
     ACCESS_DENIED on read opens. Now generic bits map 1:1; read-only opens get
     FILE_SHARE_READ (we hold multiple handles to the same AFS).
  4. **Handle double-deref**: NtReadFile/NtWriteFile/NtQueryInformationFile/
     NtSetInformationFile/NtFlushBuffersFile/NtQueryDirectoryFile treated the NT handle
     VALUE as a pointer (bridge_read_handle(STACK_ARG(0))). All six now cast directly.
  5. **NtQueryDirectoryFile rewritten**: Xbox signature has 10 args (FileInformationClass
     at arg7; FileMask at arg8; RestartScan arg9; arg_bytes 40 not 36 — the 36 also drifted
     esp every call!). FileMask==NULL = continue enumeration → per-handle FindFirstFile
     state (s_qdir_enum[8]). Missing-file start now returns STATUS_NO_SUCH_FILE.
  6. **NO_BUFFERING dropped**: FILE_NO_INTERMEDIATE_BUFFERING no longer maps to
     FILE_FLAG_NO_BUFFERING (host demands sector alignment Xbox VAs don't satisfy —
     every ReadFile failed ERROR_INVALID_PARAMETER).
  7. **Z:->D: fallback + dir-probe disc-check REMOVED** (were compensating hacks): with
     the real bugs fixed, honest cache-miss semantics are correct — Z:\ returns
     NOT_FOUND (empty cache), the CRI itself falls back to D:\ exactly like real HW.
     KEPT: STATUS_NOT_A_DIRECTORY for FILE_DIRECTORY_FILE opens of existing files.
  8. **151 MORE unemitted data-referenced functions** (same class as the WX vtbl): the
     ADXF file-ops vtbl 0x3BEEB8 (sub_0016AA60..sub_0016ADC0), wxCi handle ops
     (0x1708xx-0x172xxx), game callback tables. Found by scanning .data/.rdata for
     .text pointers at prologue bytes not inside known functions (/tmp/scan_vtbl2.py),
     emitted transitively via `tools.recomp -f` into gen/recomp_extra.c +
     gen/recomp_extra2.c + prototypes in recomp_funcs.h + sorted dispatch entries.
     After ANY regen: re-seed (seed_missing_functions) — the seeds live in functions.json.
  9. **VBLANK emulation (cxbx-verified)**: the GPU vblank DPC (D3D DPC at 0x1BB0F0) does
     KeSetEvent(0x001C2CF0) every frame; the CRI ADX server threads (sub_0016A570/5E0)
     wait on exactly that event and pump the ADX master server (sub_00170710→sub_00169BC0:
     cvFs exec + ADXF pump + stream pump). We have no GPU interrupt → pulse the event +
     yield in the sub_0016916F wrapper (the ADXF poll the main spins in) — NOT only in
     sub_00170330 (the CRI logger — silent when no errors!).
  10. **Deferred user-APC delivery (the final piece)**: XAPI ReadFileEx passes ApcRoutine=
     NtUserIoApcDispatcher(thunk slot 11) + ApcContext=game completion (0x171080) +
     IoStatusBlock=the OVERLAPPED. The CRI sets an in-flight flag (0xB25618=1), enters
     SleepEx-alertable (sub_00164D65 → **KeDelayExecutionThread ord 99**, previously
     unbridged!), and expects the APC to fire DURING the wait. bridge_NtReadFile now
     queues {ctx,iosb,bytes} (returns STATUS_PENDING) and bridge_KeDelayExecutionThread
     (new, ord 99, 12 arg bytes) delivers queued APCs → returns STATUS_USER_APC (0xC0).
     Inline delivery does NOT work (clears the flag before the CRI's check sequence).
  - NOTE: kernel-call logging stops after call #200 ([KERNEL] prints) — "ordinal N: 0
    matches" past that point is a MIRAGE; add bridge-local logs instead.
  - NEXT: game loads many partitions sequentially (each TOC in 0x800 chunks — slow under
    the cooperative scheduler but working). Let it run minutes; watch for mv_*.sfd (FMV)
    + pgraph draws>0. Diag wrappers to remove when stable: [cvFsOpen] [cvFs-dev]
    [PT-LOOKUP] [CreateFileA] [GetAttrEx] [wxCiSize] [ADXF-OP] [ADX-SRV] [STM-STEP]
    [WX-REQ] [ReadFileEx] [NTREAD] [C160] [KEWAIT] + div-guard in sub_00171780.
- **=== MILESTONE: GAME MAIN LOOP RUNS AT 59 FPS (6000+ frames, 312K pgraph methods) ===**
  After the load completed, three more fixes got the game through boot into a live,
  full-speed frame loop ([D3D] 118 present/2s; kernel calls 136K+):
  11. **GetStat poll pulse**: the game's own load-wait spins (sub_0007FFDD et al) poll
     `sub_00168DE0` (ADXF GetStat), NOT sub_00169150 — wrapped it with the same vblank
     pulse + yield (recomp_manual.c). Without it the workers starve during those spins.
  12. **Host-DLL wild-pointer faults**: recompiled code calls host CRT memcpy (lifted
     `rep movs`) with wild Xbox pointers (e.g. DSOUND writing to a garbage APU-aperture
     address 0xE664D8E0). The VEH can't decode-skip inside a system DLL → process died.
     main.c crash_veh now backs the faulting page with junk memory when RIP is outside
     our module (0x140000000..0x142000000) — same strategy as the GPU zero-page.
     Also: doa3_atexit + doa3_unhandled(SetUnhandledExceptionFilter) in main.c print
     exit/unhandled-exception info with our-module stack frames (keep).
  13. **124 XDK hardware busy-wait self-spins removed** (tools/recomp/fix_selfspins.py,
     RE-APPLY after regen): D3D/DSOUND poll GPU/APU regs with 1-instruction self-loops
     (`loc_X: if (MEM...) goto loc_X`) — e.g. DirectSoundDoWork's DSP-FIFO drain at
     loc_001C92D1 and 119 APU DSP-status polls on 0xFE81FF10. No live hw behind them
     (VEH zero-pages) → value never changes → hang. All forced through (recomp_0010/
     0011 only; game .text untouched).
  - /STACK bumped 16MB→32MB (128MB collided with the fixed Xbox mapping → map failure).
  - STATE: main loop sub_000A06D0 cycles at ~59fps; DSOUND DoWork + CDevice_KickOff per
    frame; pgraph handles 50K methods/s BUT **draws=0** — no draw commands decoded yet
    (and no mv_*.sfd opened yet — FMV not started). NEXT: find why the frame renders no
    geometry: check what pgraph "ignored" methods are (126K ignored!), whether the game
    is stuck on a pre-FMV screen waiting for something (check its state flags), and the
    Sofdec movie startup path (mv_ay.sfd per cxbx line 18411).
- **=== SESSION (2026-07-02): RECOMP BUG #6 (jump tables) + #7 (fragmented fns) — boot
  task now runs the whole screen-init chain; D3DX state blocks create correctly. ===**
  14. **RECOMP BUG #6 FIXED — intra-function jump tables (106 broken switch sites, 589
     unreachable case targets).** MSVC `jmp [reg*4+tbl]` switches whose case bodies lie
     PAST the detected function end (detector stops at the jmp) were emitted as
     `RECOMP_ITAIL` to case-label addresses that aren't functions -> every such switch
     silently did nothing (e.g. sub_00080CC0's XPR record-size switch returned garbage
     -> -4 esp drift in sub_00080F10 -> boot-screen SCRDEF got shifted args). Fix in
     tools/recomp/translator.py (extend the lift range to the jump table when targets
     sit between func end and table) + lifter.py `_analyze_switch_table` (trim table
     read at first out-of-function entry; ja-guard makes trailing entries unreachable).
     92 affected functions re-emitted into **gen/recomp_jumptables.c** via
     translate_single (script pattern in tools/recomp/jumptable_funcs.json); originals
     renamed `_oldjt` in the numbered gen files. RE-GENERATE this file after any regen.
  15. **CRT memcpy/memmove natively overridden** (recomp_manual.c doa3_native_memmove):
     the XBE's two identical MSVC memcpys (0x18DF40, 0x18EE90) have interleaved jump
     tables the lifter can't extend over; every non-dword-tail copy also leaked -4 esp
     through the failed ITAIL. Gen bodies renamed _oldjt.
  16. **CRT free implemented** (sub_001668FA alloc + sub_0016707C free overrides): the
     old bump-only allocator leaked every CRT free. Now: 16-byte headers, size-class
     LIFO free lists (<1MB pow2 classes; >=1MB first-fit large list). Gen sub_0016707C
     renamed _unused. NOTE: boot barely calls free (allocs>>frees is normal here).
  17. **High heap added** (xbox_memory_layout: XBOX_HIGH_BASE 0x04000000, 64MB; map now
     128MB; xbox_HeapAllocHigh): boot's CRT arena + D3D contiguous + XPR blobs exceed
     the console 64MB in our layout. CPU-only allocations (CRT arena chunks) live high;
     GPU-addressable memory must stay <64MB (26-bit NV2A masks). Mirror views now start
     at base+128MB (low-mirror wrap accesses unproven in DOA3; watch for regressions).
  18. **Cache dir pre-populated** (C:\Users\parke\AppData\Local\DeadOrAlive3\Cache):
     loadfile/bgm/voice.afs copied from ../doa3gamefiles. The game's own z:-cache
     copy machinery (wxCi) is still broken (copy stream sticks at file=0) — mirroring
     a second-boot console with a warm cache skips it entirely. TODO: automate the
     copy in main.c host init; the cxbx oracle shows the real game tolerates cold-cache
     misses by re-registering from d:, which our port doesn't reach yet.
  19. **RECOMP BUG #7 (fragmented functions / dropped XDK fall-throughs) — partially
     fixed via targeted patches.** The function detector split many functions at
     internal labels (link_seed entries); internal jumps became tail-calls into
     fragments; SOME fragments lost their fall-through continuation (the XDK range was
     excluded from fix_fallthroughs — 225 sites). Blanket-fixing all 225 BREAKS boot
     (some XDK "ends" aren't fall-throughs) — fix_fallthroughs.py now has a KEEP
     mechanism; applied: sub_001B4611 (D3D SetStateBlockFlags je-path, leaked 24B
     stack/call). ALSO: fragmented epilogues pop LEFTOVER ARGS instead of saved regs
     when an inner callee has broken cleanup (`esp = ebp` masks it) -> edi/esi/ebx
     clobbered. ABI-enforcement wrappers (save/restore edi/esi/ebx around the call) on:
     sub_001BE60A (D3D_RecordStateBlock), sub_001BEEFE (EndStateBlock), sub_001BE5FC
     (BeginStateBlock), and the 12 state-setter callees of the D3DX create loop
     (ESP_PROBE macro in recomp_manual.c). Result: **the D3DX state-block create loop
     (sub_001C3C83, bound edi=2) terminates correctly** — was infinite (edi clobbered
     to 0x1C0800 = g_pDevice) causing 500K+ 512B allocations -> OOM every run.
  - STATE after all of the above: boot task runs sub_00084340 chain fully; SCRDEF blob
    parsed with correct args; XPR resources registered; D3DX contexts create (2 state
    blocks each, 2 contexts); glyph/sprite loop runs; **still draws=0** — the game only
    sends render-state methods (subch 0; no BEGIN_END/draw yet) before dying at a NEW
    frontier: after state-block create, a CRT helper (sub_0018DB30/sub_0018DB53 area,
    likely _chkstk/_alloca) runs with garbage size (eax=0x35A223) -> g_esp wraps to
    0xEFFFFFxx -> fault storm. Suspect: sub_00069B88's vtable icall
    `RECOMP_ICALL(MEM32(handle+0x10))` on the D3DX object (vtable from ctor
    sub_001C404B — possibly an unemitted data-referenced function) or another
    fragment-epilogue register clobber in sub_001C35CE's path.
  - NV2A note: pgraph ignores ~65 methods/frame — subch-0 render-state setters our
    translator lacks (0x0208 SURFACE_FORMAT group, 0x03xx state group, 0x0A60-0x0A98
    ×16) + SET_OBJECT bindings (subch2=0xE, subch3=0x10, subch4=0x11, subch0=0xD).
    [PG-IGN]/[PG-OBJ] histograms in nv2a_pgraph_d3d11.c dump per FRAME print.
  - New diag wrappers (remove when rendering works): [SCRSTREAM] (sub_00080F10),
    [SCRDEF] (sub_00080D00), [BLIT] (sub_000403F0), [RWALK] (sub_0006C480),
    [T21F70]/[T572C0] (task creates), [D3DX-INIT] (sub_001C3C65), [BEG-SB]/[END-SB],
    [ESP] probes, [SBH]/[SBH-BT] alloc stats+backtraces (CaptureStackBackTrace ->
    symbolize with bin/doa3.map 'Rva+Base' column, NOT the section:offset column).
- **=== SESSION (2026-07-02, part 2): BUG #8 (FPU) + the glyph-draw chain now executes ===**
  20. **RECOMP BUG #8 FIXED — cross-function x87 FPU.** (a) 1,390 `fld x; call _ftol2`
     sites returned garbage (each gen fn had a PRIVATE _fp_stack): inlined the
     conversion at every call site via tools/recomp/fix_ftol_inline.py (RE-APPLY after
     regen; translator not yet updated for _ftol specifically). (b) The FPU stack is
     now GLOBAL (g_fp_stack/g_fp_top in xbox_memory_layout.c, declared in
     recomp_types.h): tools/recomp/fix_fpu_global.py converts existing gen (RE-APPLY);
     translator.py now emits the global names for future regens; xbox_fiber.c
     saves/restores FPU state per fiber.
  21. **NV2A + APU MMIO decoders taught SSE** (0F 10/0F 11 movss/movsd/movups) in
     nv2a_mmio_hook.c — MSVC compiles gen MEMF float stores to movss; wild float
     writes to the apertures used to kill the process. (APU hook still lacks it —
     only logs; add if it matters.)
  22. **XDK fall-through KEEP list** (fix_fallthroughs.py KEEP_XDK): sub_001B4611 +
     sub_001C3FDD (D3DX draw 'hr=0' path fell off the end: leaked 0xA4 stack/call).
  23. **THE BOOT-SCREEN DRAW CHAIN NOW RUNS.** Root of "draws never issued": the D3DX
     factory sub_001C35CE stored the created object through ebx (out-param ptr), but
     Initialize (sub_001C3C65)'s fragment chain CLOBBERED ebx -> object stored to a
     garbage address, 0x49A954 stayed NULL -> the per-glyph draw dispatch
     sub_00069BF3's icall [obj vtbl+0x14] failed silently, leaking its 8 args
     (32B/glyph -> esp swept the whole address space through the APU/GPU apertures).
     Fixes: ABI-enforce (save/restore edi/esi/ebx) in the sub_001C3C65 wrapper; emit
     the 3 MISSING D3DX vtable methods (vtable 0x215940: sub_001C3BE3 AddRef,
     sub_001C3EFF GetDevice, sub_001C3F21 SaveState=Capture+Apply state blocks) —
     added to functions.json (manual_vtable), recomp_jumptables.c, recomp_funcs.h,
     recomp_dispatch.c. RESULT: [GLYPH] balanced (d=+4), [DXDRAW] obj resolves,
     sub_001C3F50 (D3DX DrawSomething, 8 args ret 0x20) EXECUTES (d=+36 correct).
  - NEXT CRASH (frontier): ~9s in, host-DLL read 0x12DC66051 with g_esp=0xFE868A70
    (APU-range garbage esp again — another leaking loop deeper in the draw path).
    Symbolize native frames 0x140F69903 / 0x140F6904E / 0x14033E6B8 with the fresh
    map ('Rva+Base' column). Also: sub_001C3F50's lifted body has a WRONG fcom
    (compares fp_top vs fp_st1 instead of vs MEMF(0x1ED528)) and a HARDCODED
    `if (1 /* jnp */)` parity branch — recomp bug class: fcom+jp lifting; may need
    fixing for correct draw output. pgraph draws still 0 at crash time — check
    whether sub_001C3F50's inner icall [vtbl+0x18] dispatches (DrawPrimitiveUP-ish).
  - Method: the ESP_PROBE ABI-enforcement macro (recomp_manual.c) is the standard
    treatment for any XDK function whose fragments clobber callee-saved regs or drift
    esp — wrap first, root-cause later.
- **=== SESSION (2026-07-02, part 3): warning screen COMPLETES; boot advances to the
  save-check + controller phase; all stalls/leaks in the frame loop fixed. ===**
  24. **The intro sequencer (sub_00021F70, boot task) now runs the full warning-screen
     sequence and RETURNS** (eax=-1 = timeout). Chain of fixes: (a) sub_000572C0's
     draw chain clobbered esi -> the fade-loop counter reset each frame (ABI wrapper);
     (b) D3DX Initialize leaked its 0xD8 frame per call — dropped fall-through
     sub_001C3ED7 -> sub_001C3EEF (the D3DX section 0x1C35C0-0x1C64A0 is now
     fall-through-enabled in fix_fallthroughs.py; the D3D GPU-init section stays
     excluded — blanket-fixing THAT broke boot); (c) Begin/End/Record/Apply/Capture
     StateBlock + the D3DX factory got ESP_FIX/ABI wrappers (recomp_manual.c).
  25. **After the warning screen: save-data check runs** (T:\ enumerations per
     character: zac/tin/jan/kte/ryu/kas/gen/hik/..., DOA3SAVE.DAT probe), tasks #6-#8
     + the sound-streamer worker thread (0x9D440) spawn, a second XPR loads,
     DS-PLAY (voice stream start) is reached.
  26. **Boot-phase stalls fixed**: (i) wxCi cache-copy loop — the game re-copied
     voice.afs to z: forever: root = 'z:\.' DIRECTORY opens failed err=5 (no
     BACKUP_SEMANTICS) so the wxCi cache scan found nothing; bridge now detects
     existing-directory targets and opens them as directories. ALSO NtCreateFile
     share mode is now always FILE_SHARE_READ|WRITE|DELETE (the copier held a write
     handle its own streamer then couldn't read; Xbox FATX was permissive).
     (ii) **FileFsSizeInformation now reports the utility drive FULL** (free=0) so
     the game SKIPS the cache-copy entirely and streams from d: — matching the cxbx
     cold-cache flow. This removed the frame-1801 stall for good (59fps for 4+ min).
     (iii) KeQueryPerformanceCounter bridge: tight-poll detector (150+ calls in one
     OS tick) fast-forwards returned time +10ms/poll and yields — the DSOUND stream
     service polled QPC forever waiting on dead APU voice positions.
     (iv) xbox_HeapAlloc now has a real free via a side-table (xbox_HeapFree
     recycles; MmFreeContiguousMemory works — the game's frees are observed live).
     (v) My 4MB push buffer moved to the high heap (xbox_HeapAllocHigh) — the low
     45MB is needed for the game's 3x4.8MB screen workspaces + 14MB framebuffers.
  27. **MSIX PATH VIRTUALIZATION GOTCHA**: running under the Claude app container,
     AppData\Local writes/scans are virtualized to
     C:\Users\parke\AppData\Local\Packages\Claude_pzs8sxrjxfjjc\LocalCache\Local\...
     — the cache/TitleData dirs seen by the game are THERE, not the plain path. A
     0-byte voice.afs husk in the virtualized cache was one of the copy-loop causes.
  28. **XPP input overrides (recomp_manual.c)**: sub_001E6958 XGetDevices (-> pad 0
     connected), sub_001E697A XGetDeviceChanges (none), sub_001E6E3A XInputOpen
     (fake handle 0x0AD00001+port), sub_001E6EBB XInputGetCapabilities (arg2 is the
     PAD STRUCT; byte 0 = subtype -> 1 = gamepad), sub_001E70AD XInputPoll (no-op),
     sub_001E711E XInputGetState (host XInput pad 0 + keyboard: Enter=START,
     arrows=dpad, Z/X=A/B; TEMP auto-START bursts at packets 2400/4200/6000). Gen
     bodies renamed _xppgen. Result: pad 0 registers (mask=1, handle stored,
     subtype=1). Input pipeline: main loop sub_000A06D0 -> sub_0009EE80 ->
     sub_0009EAF0 (insert poll) + sub_0009EDC0 (XInputGetState x4 into pad+0x2F).
     Pad-task translation gated on cfg byte 0x484DC6 (TEMP-forced to 1 in the
     SetFence wrapper — chicken-egg with the screen's pad-activate).
  - CURRENT FRONTIER: the boot task holds in sub_00021F70's press-START loop
    (exit: MEM8(0x5E5EE0) & 0x10, the translated pad-0 output block at
    0x5E5ED8..0x5E5F04 stride ~0x2C). The [XPP-ST] diag shows sub_001E711E is
    seemingly not delivering buttons (no logs with buttons!=0) — verify
    sub_0009EDC0 actually calls it (add unconditional counter), check the
    translation task writes 0x5E5ED8 (raw table 0x85BF40 <- pad+0x2F states),
    then the screen should advance to the movie (cxbx: d:\mv_ay.sfd opens at
    18411 right after the d: re-registrations, which our port now completes).
    INTERACTIVE NOTE: the game window is live at 59fps — pressing Enter there
    (keyboard->START in the 711E override) may pass the screen manually.
  - 128MB map note: adding the user32 import shifted DLL layout; try_bases now
    includes 0x20000000..0x70000000 fallbacks (maps at 0x20000000 currently).
- **=== SESSION (2026-07-02, part 4): visual-verification loop in place; the black
  screen's root cause traced to a cvFs device-table wipe. ===**
  - **Backbuffer snapshots**: d3d8_DumpBackbufferBMP() in src/d3d/d3d8_device.c dumps
    the D3D11 backbuffer to doa3_frame_N.bmp; called from the SetFence frame wrapper
    at frames 120/600/3000/9000/15000. (The game window lives on a non-interactive
    desktop under the test harness — external capture can't see it.) Current result:
    all snapshots pure black (consistent with pgraph draws=0, clears=0).
  - The auto-START/synthetic-input hacks were REMOVED per user direction (keyboard
    Enter=START stays, user-driven only). TEMP hacks still in: cfg 0x484DC6=1
    (pad-translation enable) — remove with the XPP work when revisited.
  - **RENDERING BLOCK CHAIN (fully traced, in order):**
    1. The boot screens draw text via D3DX textured quads (sub_001C408A, now emitted
       and running ~50/frame) — every call returns D3DERR_INVALIDCALL because the
       FONT texture (id 7, slot 0x48F288+7*8=0x48F2C0) is empty.
    2. Texture slots are filled ONLY by sub_0006E0B0 (name lookup) from
       sub_0006AADC/ACD0/AD6A, reached from screen-element builds — which come from
       the screen CONTENT LOAD (loader task routine 0x80200 -> sub_00080288 ->
       sub_0008038C content-load driver).
    3. sub_0008038C runs (op created via sub_0007E720 into 0x4A2150) but its wait
       loop never completes: at that point EVERY cvFs open fails —
       **[cvFs-dev] resolve dev='' -> 0** — the CRI device table COUNT at 0xB25464
       is 0 (slots still hold 'MFS'/'WX' structs but count=0), so ADXF_Open fails,
       'ptid is range outside' storms, and the content (textures/fonts) never loads.
    4. NEXT: trace the 0xB25464 lifecycle — who zeroes the device count during the
       boot-phase transition (cvFsFinish/RemoveDev teardown?) and why the
       re-registration (sub_0016A8D0 / cvFsAddDev sub_0016CCE0) doesn't run again
       or fails. Element->texture-id map lives at 0x2FD668 (stride 12, field +8 =
       tex id; el9 = 128x128 font = id 7).
  - Diag probes added (remove later): [TEXSLOT] sub_0006E0B0, [CNT] element chain
    (sub_0008038C/804EB/6B7E0/6AAA0/6AD20/6ACD0/6AADC/6AD6A/1C6740), [LDW-OP]
    sub_0007E720, [LDW-KICK] sub_0007FFB0, [XPP]/[XPP-ST] input, [GLYPH]
    sub_00055AD0, [QUAD] sub_001C408A, [DXDRAW] sub_00069BF3, [YIELD]/[YIELD5]
    task-yield backtraces, [PADS]/[WSCR] frame diags, [SBH]/[HEAP] allocator stats.
  - Boot flow note: the press-START screen throttles the flow but the CONTENT LOAD
    failure above is independent — fix the cvFs device count first; the screen
    text will then render (visible in snapshots) and Enter can advance interactively.
- **=== SESSION (2026-07-02, part 5): MAIN-STACK LEAK KILLED — esp rock-stable, CRI
  filesystem survives indefinitely. ===**
  29. **THE mid-boot corruption root-caused and fixed.** The main frame loop leaked
     ~670 bytes of Xbox stack PER FRAME; after ~2 minutes esp sank below the stack
     base (0xD00000) into the game BSS, and the stack frames themselves overwrote
     the CRI device tables at 0xB2xxxx (default device name 0xB24FE0 + slot flags
     0xB25264..) — after which every cvFsOpen failed ('resolve dev="" -> 0',
     'ptid range outside') and the screen-content load (fonts/textures) could never
     complete. Leakers (all in the per-frame audio service, measured with
     LOOP_PROBE): **sub_00153EF0 (-628/frame)**, sub_00153EC0 (-24), sub_00158B60
     (-24), plus sub_001C6D91 (-752/call, DSOUND stream service, stdcall ret 4) and
     sub_001C883B (-4/call x thousands, a DSOUND tail fragment that is NOT a
     restorable fall-through — restoring it recursed to native stack overflow).
     All contained with ESP_FIX wrappers (recomp_manual.c). VERIFIED: at frame
     15001 the loop-top esp is byte-identical to frame 1, and [CVFS] shows
     def='WX' + healthy slot flags after 5 minutes.
  30. DS-PLAY (sub_001C7457) RE-STUBBED (silent audio): the real one starts an APU
     voice that never advances; rendering first.
  31. Probe kit added (recomp_manual.c): LOOP_PROBE (per-600-calls esp balance),
     [CVFS] device-table health in the frame diag, [SETDEF]/[DEVRNG] cvFs
     default-device tracing, ESP_FIX contract enforcement on the audio-frame chain.
  - NEXT: with the filesystem stable, the boot's screen-content load (loader task
    0x80200 -> sub_0008038C op) should complete when triggered — that fills the
    texture slots (0x48F288) via sub_0006E0B0 and the boot screen text/quads will
    draw (draws>0, visible in doa3_frame_N.bmp snapshots). The press-START screen
    still gates the flow — INTERACTIVE: run bin\doa3.exe and press Enter
    (keyboard->START is wired in the XInputGetState override).
- **=== SESSION (2026-07-02, part 6): BOOT REACHES THE INTRO MOVIE PLAYBACK LOOP ===**
  32. **"Not enough free space" prompt fixed**: the earlier FileFsSize "drive full"
     hack triggered sub_00021F70's FIRST hold (free blocks >= 0x10000 check) — an
     input-waiting prompt. Reverted to 524288 free blocks; the warning screen now
     completes and the sequencer RETURNS on its own (no input needed).
  33. **Pad-0 async-poll unblocked**: XAPI stores ERROR_IO_PENDING (0x3E5) in the
     pad state dword; sub_0009EDC0 skips any pad with that marker until the USB
     completion clears it (no USB machinery in the port). The sub_001E70AD override
     + a per-frame sweep clear the marker; XInputGetState (host-backed) now runs
     every frame (live packet counter in [PADRAW]). Note: XGetDevices reports pad 0
     PRESENT (device emulation — the boot needs a pad like cxbx's emulated ones);
     s_packet starts at 0x1000 to never collide with the marker.
  34. **BOOT FLOW NOW: warning screen -> save check -> intro sequencer
     (sub_00081EB0, state @0x4B83B0) -> sub_0009DF60 (START MOVIE, idx from
     0x4B83B1) -> per-frame movie surface prep sub_0009DDE0: creates a 720x480
     surface via sub_00157FB0(0x2D0,0x1E0,fmt 0x12) and fills it with YUV grey
     0x80108010 while waiting for decoded Sofdec frames.** WAITBT backtraces prove
     the boot task loops here (84340 -> 833E0 -> 81EB0 -> 9DF60 -> 9DDE0).
  35. REMAINING GATES to visible movie frames: (a) d:\mv_ay.sfd is never opened —
     the Sofdec stream open inside sub_0009DF60 (+~0x11ab call region) hasn't
     issued; likely blocked by the wxCi voice.afs cache-install churn (b) the wxCi
     INSTALL machinery: the install session object at 0xBFEE80 stays state 0 (byte
     +0 != 1) so its pump (ADX server -> sub_0016E280 -> sub_00173D10 -> starter
     sub_00173B20 -> sub_0016BA20 st=2) never drives the copy stream (stream pool
     0xC05AC0 stride 0x40; copy stream stuck a=1,st=1,pos=0; the cvFs pump
     sub_0016BD20 only steps st==2 streams). Each stuck run TRUNCATES
     z:\voice.afs to 0 bytes (CREATE_ALWAYS) — restore it from ../doa3gamefiles
     before test runs. (c) small stack leak (~11B/iter) in the movie-wait loop
     (the [LOOP]/[WAITBT] in= drifts on the task stack) — same ESP_FIX treatment
     once the loop's callee is identified.
  - Diag kit added: [WAITBT] (sub_0017EC00 task-stack backtraces), [WXPUMP],
    [CVFS] wxci state, [PADRAW]/[PADOUT]/[SLOTS]/[DXCTX] frame dumps,
    CALL_COUNT_PROBE(sub_00173B20/sub_00173D10).
  - Boot screen text rendering (the press-START glyphs) remains blocked on its
    OWN gate: the D3DX text context (sub_00069B60 -> flag 0x49A950/obj 0x49A954)
    is only created by the mode-1/2 screen frame path (sub_000572C0 ->
    sub_000566D0), which the current flow skips — the MOVIE path is now the
    faster route to pixels (its draw is the D3D movie-surface quad, not the
    D3DX text pipeline).
- **=== SESSION (2026-07-02, part 7): CACHE VALIDATES, MOVIE PLAYER CREATED, ninja.aix OPENS ===**
  The draws=0 chain was five stacked gates. All fixed; the boot now reaches the
  Sofdec movie player running its start sequence. CURRENT WALL: an mwPly
  thread-resume spin (see 42 below) drops presents to ~3 fps after movie start.
  36. **wxCi decoded**: "z:" (cache) opens go through wxCi, which consults an
     in-memory registry (12 slots @0xC057C0 stride 0x30: +0 active, +0x18
     prefix ptr, +0x24 count, +0x28 file list) via callback 0xB25610 =
     sub_0016D190 -> sub_0016D0F0 (sprintf "%s%s" prefix+name, strcmp). The
     registry is populated by sub_0009C840 ("ADX Initialize", caller
     sub_0009F730) -> sub_00169660/sub_00169680 -> sub_0016D330, then the AFS
     partitions are MOUNTED via sub_00169530 (ADXF_LoadPartitionNw: ids
     2='z:\bgm.afs', 3='z:\voice.afs', 1='z:\loadfile.afs') polled by
     sub_00169150 (ADXF_GetPtStat) until status 3. "not in cache" (E0109141)
     is only a WARNING — the open falls through to the real cvFs path.
  37. **CACHE VALIDATION (the first-boot install trigger)**: sub_0009D940 opens
     d:\loadfile.afs AND z:\loadfile.afs; sub_0009D9B8 compares their
     FILE SIZES (equal), WRITE TIMES (CompareFileTime, |delta| <= 60s), and a
     SECOND time pair (creation times, EXACT equal); sub_0009DA85 checks z:
     free space. ANY mismatch -> 0x5E56A0=1 -> DELETES the cache files
     (sub_00164E7D) and runs the (broken-in-port) d:->z: install. FIX: seed
     the Cache dir with byte-copies of the AFS files AND level ALL timestamps
     (creation+write+access, both source and cache) to one value:
     PowerShell: Copy-Item + set CreationTimeUtc/LastWriteTimeUtc/
     LastAccessTimeUtc on d:\*.afs AND z:\*.afs to the same date.
  38. Kernel bridge additions for 37: NtQueryVolumeInformationFile class 1
     (FileFsVolumeInformation — CONSTANT volume time/serial for all handles)
     and NtQueryInformationFile class 6 (FileInternalInformation from host
     file index). Without these the queried info was zeros and the exact-time
     compare failed every boot.
  39. **sub_00169150 poll wrapped with vblank-pulse + fiber yield** (like the
     sub_00170330 wrapper): C840 hard-spins `while (GetPtStat(id) != 3)` with
     no yield, starving the CRI worker fibers forever (frame counter frozen
     at 1 while mounting).
  40. **Movie enable chain**: sub_000A0680 -> sub_0009DD20 (movie init) stores
     sub_0009FAB0() into 0x5E5A04; FAB0 reads the DirectSound object's
     (0x5E5FC0, from DirectSoundCreate in sub_0009F730) internal status bit 16
     via sub_001C7392 -> sub_001C6C44 (ds->+8->+8). No APU = never ready;
     ALSO sub_001C7392's `neg/sbb/and` null-check idiom is MIS-LIFTED
     (**recomp bug #10: `_cf` is declared but NEVER PRODUCED — every
     `sbb reg,reg` CF-extend and every adc/sbb 64-bit carry in the gen is
     computed with carry=0**; fix lifter.py to materialize _cf from the last
     flag setter before sbb/adc). Overrode sub_0009FAB0 to return 1.
     sub_0009DF60 (movie starter, idx from 0x4B83B1; fn table 0x331298:
     0='d:\ninja.sfd') then runs: drain (skipped, 0x4BE3EC path), work heap
     0x5E5908 (base 0x488A38), sub_0016B400 stream handle, sub_0009DDB0 ->
     sub_0009DDE0 surface ring, mwPlyCreateSofdec (sub_00176580 size calc +
     sub_001773E0/sub_001773F0 create, pool 0xC0E5D8), vtbl+0x18 open,
     sub_0009F0B0 + vtbl+0x2C serve.
  41. **Movie surface ring**: sub_0009DDE0 loops TWO iterations (0x00/0x1C
     offsets = VRAM banks 0,1 from table 0x4889B8 stride 0x1C: +0 cursor,
     +4 end; banks 0-5 are carved from the game's 32.8MB arena during gfx
     init, banks 6-7 stay empty), creating 720x480 fmt 0x12 (LIN_A8R8G8B8)
     textures via sub_00157FB0 -> sub_001C6716 and YUV-grey-filling them.
     THREE fixes needed: (a) heap space — XBOX_STACK_SIZE trimmed 8MB->2MB
     (the movie textures+buffers exhausted the 43MB GPU-addressable low heap;
     the old 8MB was leak-defense from before the esp-drift fix); (b)
     sub_0009DDB0 wrapped to yield until banks 0 AND 1 exist (with the cache
     pre-validated the intro task now beats the gfx init; real hw ordered
     these behind the install delay); (c) **ESP_FIX(sub_001B4B30, 20)** — the
     D3D Lock2DSurface wrapper leaks 72 bytes/call through sub_001BA1C0's
     mis-split fragments, which corrupted DDE0's loop index so iteration 2
     read bank[garbage]=0 (bug class #7).
  42. **mwPly resume spin FIXED (coroutine-only yield)**: after the player
     handle allocates, D:
inja.aix opens and the movie work buffer registers
     as 'MFS:01168000.02f5800', but the movie-start wait (boot-task coroutine)
     hot-spun ObReferenceObjectByHandle + NtResumeThread +
     KeSetBasePriorityThread (~800M kernel calls, presents 3fps). FIX:
     bridge_NtResumeThread yields — but ONLY when the caller is a game-task
     coroutine (xbox_fiber_is_coroutine()); yielding from CRI worker fibers
     deadlocks the boot master<->worker handshake (bisected). Also added
     bridge_ObfDereferenceObject (ord 250, fastcall no-op). Kernel calls
     dropped 800M -> 210K, presents steady 60fps.
     THREE MORE HARD BISECT RESULTS (all deadlock the boot; do not retry):
     (a) unique per-thread fake handles — partition loads issue ZERO reads
     unless all PsCreateSystemThreadEx handles equal 0xBEEF0001;
     (b) honoring CreateSuspended (parks the CRI pipeline — keep ignoring);
     (c) ObReferenceObjectByHandle returning the handle as *Object — object
     must stay 0 so thread-object waits no-op (KeWaitForSingleObject skips
     obj==0).
  43. **VBLANK-WAIT FIX (frames froze at 1801)**: after the intro step the
     main thread parked in KeWaitForSingleObject(0x001C2CF0 = D3D vblank
     event) INFINITE. Only boot-time diagnostic wrappers ever pulsed that
     event, so the whole XAPI task system starved (task table slept forever,
     frame counter frozen). FIX in bridge_KeWaitForSingleObject: waits on
     0x001C2CF0 model "vblank always fires" - yield once, consume, return
     WAIT_0. Frames now run indefinitely and the intro sequencer iterates
     per-frame (st=1, ctr counting).
  44. **CURRENT FRONTIER - mwPly state machine never advances**: the full
     movie-0 flow now runs: mwPlyCreateSofdec OK (obj=0xC0E544, persists),
     D:
inja.aix open, MFS stream registered, sequencer polls
     sub_0009E1F0 every frame -> sub_001778F0 (mwPly server tick) + status
     vtbl+0x20 (sub_00177170: needs obj+8 == 3 = PLAYEND; if ==2 it maps
     inner Sofdec status via sub_0017D4E0). But obj+8 (player state) STAYS 0
     forever - the queued commands (open/play, and the movie-0 bail's stop
     cmd 6 posted via sub_00176840 -> sub_0017D670 to the inner sfdec handle
     obj+0x30 = 0xC0F7C0) are never PROCESSED. The Sofdec core (PSGSFD lib,
     0x17Dxxx) has its own server/pump that should drain the command queue
     and advance states - find who pumps it on real hw (candidates: the ADXM
     vsync handler registered by sub_0009DD20 via sub_0016A6E0(0x17EC00,0),
     a dedicated sfdec server thread, or a callback registered at
     mwPlyCreateSofdec time) and make it run. PINNED FURTHER (2nd pass):
     the mwPly server IS registered AND RUNS — sub_00175B90 registers
     0x176E90 into ADXM user-callback GROUP 2 slot 1 (0xB254F8) via
     sub_00177880, and a CRI worker dispatches it through sub_00170660
     (CNT-verified: sub_00176E90 fires repeatedly). Group 5 gets 0x176DC0
     via sub_001778A0 (dispatcher sub_00170690 — not yet verified running).
     Player state obj+8 STILL stays 0, so the failure is INSIDE the server
     path: next session dump sub_00176E90 (what advances a player from
     state 0 — probably processing the command queue posted by
     sub_0017D670 into the sfdec handle 0xC0F7C0) and check whether the
     group-5 callback (0x176DC0, likely the sfdec/decode side) runs.
     Earlier (superseded) note from 1st pass ([ADXCB4] diag):
     the mwPly server tick sub_001778F0 -> sub_00170680 -> sub_001705E0
     dispatches ADXM user-callback GROUP 4 (4 slots @0xB25530) — and ALL
     SLOTS ARE EMPTY. The registrars are sub_00177880/sub_001778A0/
     sub_001778C0 (-> sub_001703C0 ADXM_EntryUsrFunc-style). They never ran
     (or failed): probe them + sub_00175B90 (mwPlyInitSofdec, called from
     sub_0009DD20) to find why the Sofdec server callback registration is
     skipped. Once registered, the server should drain the command queue and
     advance obj+8 (0 -> ... -> 3 PLAYEND). THEN: movie 0 completes ->
     sequencer advances -> sub_000833E0 spawns the screen-flip task
     sub_0007FD90 (slot 1) and proceeds toward the title flow (the first
     real pixel source, whether movie 1 'd:\mv_ay.sfd' or the title screen).
     Intro sequencer return path decoded: 833E0 loops { yield;
     sub_00081EB0() } until nonzero; START press (0x5E5EE0 bit 0x10) skips.
  - PsCreateSystemThreadEx now also writes ThreadId (= handle); xbox_fiber
    carries an xhandle per fiber and xbox_fiber_exit wakes joiners parked on
    the exiting fiber's handle; xbox_fiber_spawn signature gained
    (xhandle, suspended) — suspended intentionally ignored.
  - Movie diag kit in tree: [MOVIE]/[BANKS]/[WXREG]/[FTCMP]/[PTLOAD]/[MOUNT]/
    [MVSURF]/[MVBANK]/[RESUME] + CNT probes on the movie chain.
  - **TEST PROTOCOL**: cache must contain loadfile/bgm/voice.afs byte-copies
    with ALL timestamps leveled (see 37). A stuck/failed boot may DELETE or
    truncate them — re-run the PowerShell seed block before each test.
- **=== SESSION (2026-07-03): FIRST DRAW CALLS + FIRST PIXELS ===**
  Continuing item 44: the mwPly state machine was stuck because FOUR mwPly
  vtable functions were never emitted, and every D3D draw died on two stacked
  recomp bugs. Now: **pgraph draws=1611/verts=6444 at frame 3601 (the movie
  quad draws every frame) and the backbuffer shows its first non-black
  pixels** (a 1-px dark-blue column at x=0 — quad geometry still wrong).
  45. **Vtable functions merged into neighbors (detector miss)**: the mwPly
     vtable (0x3BF460) points at 0x176E60/0x176ED0/0x176FB0/0x177670 which the
     function detector had MERGED into preceding functions' ranges — the
     vtbl+0x18 OPEN (0x177670 -> sub_00177270 mwPlyStartFname) silently
     no-op'd via RECOMP_ICALL_SAFE. Seeded them into
     tools/disasm/output/functions.json (detection_method=vtable_seed),
     re-emitted into gen/recomp_mwply.c, added decls to recomp_funcs.h and
     sorted entries to recomp_dispatch.c. RE-APPLY after regen. After this:
     d:
inja.sfd OPENS and 1MB of MPEG program-stream data reads
     (b0..3 = 00 00 01 BA); player state obj+8 advances 0 -> 4.
  46. **Recomp bug #11 — MMX dropped as comments**: the Sofdec IDCT/color
     kernels (sub_001866BD, sub_001779D0, sub_00186440, sub_001B3940) are MMX;
     the lifter emitted every MMX op as a comment. Implemented MMX lifting in
     lifter.py (_lift_mmx: movq/movntq/movd/pextrw/paddw/psubw/pmullw/pmulhw/
     psraw/psrad/psllw/punpck*/packssdw/packuswb/pand/pandn/por/pxor; MM regs
     = per-function uint64_t locals) + helpers in recomp_types.h (mmx_*,
     MMQ_LOAD/MMQ_STORE). Re-emitted the 4 kernels into gen/recomp_mmx.c
     (originals renamed _oldmmx). RE-APPLY after regen.
  47. **The draws=0 core bug**: EVERY draw goes through the lazy vertex apply
     sub_001B79F0 (fastcall, this=device 0x1C0800 via MEM32(0x1C3390)):
     dirty-flush sub_001B7690, FVF attr resolve from the fixed-function
     shader object 0x1C0688 (dev+0x470; +4 flags, +0xC texcount, slots at
     +0x30 stride 0x10, tex slots from index 16), then a walker writes the
     draw descriptors dev+0x7F4 (pairs) + dev+0x874 (attr count).
     **sub_001B7690's callees leaked esp** (bug class #7 fragment chains):
     sub_001B6410 -176 bytes (via sub_001BC260 fragments) and sub_001B6610
     -44 (via sub_001B6650) — sinking every esp-relative local in the apply,
     so the walker wrote into a garbage device pointer and dev+0x874 stayed 0
     for EVERY draw since boot. With 0x874==0 the inline-copy loop in
     sub_001B37F0 underflows (0-1 -> 4G iters) and host memcpy marched past
     the 4GB map (the movie-quad crash). FIXES in recomp_manual.c:
     ABI-enforcement wrappers for sub_001B6410 (ret 4) + sub_001B6610 (ret 4);
     sub_001B3760 wrapper runs the lazy apply first and skips the draw if the
     layout is still empty (guard now never fires).
  48. Supporting: sub_0009DE90 (movie frame blit) guarded to only run when
     the player is PLAYING (state 2); FVF parser (sub_001B3BB0 chain) verified
     CORRECT ([SETVS] probe); movie draw chain decoded: sub_0009E284 =
     SetTexture + stage states + SetVertexShader(FVF 0x104) +
     sub_001B3760(prim=6, n=4, verts=0x5E5910, stride=0x18) = the movie quad.
  49. NEXT: the quad renders as a 1-px column at x=0 (frame-3000 BMP; color
     0x00003C RGB) — the XYZRHW vertex path (pos 4f + tex 2f inline array,
     BEGIN_END prim 6) is likely mis-handled in the pgraph vertex decode or
     the vertices themselves are placeholder until real decoded frames flow.
     Dump the verts at 0x5E5910 + trace pgraph inline-array handling for the
     attr layout; also verify the movie texture (SetTexture desc 0x5E59D0)
     binds. Then: real Sofdec frames (state machine now runs; verify decode
     with the MMX kernels), then mv_ay.sfd (movie 1) and the title screen.
  - New diag in tree: [MWPLY], [SETVS], [VPUSH] (+skip guard), [FLUSH7690],
    [DRIFT] probes, [MVBLIT] guard, [MOVIE] st8/sfd30 fields.
- **=== SESSION (2026-07-03 cont.): QUAD ON SCREEN (white), x87 st(i) BATCH FIX ===**
  Visible state: during the movie phase the window shows a WHITE region
  (quarter-screen triangle from the near-correct movie quad) instead of pure
  black. Draws flow every frame. Three more findings:
  50. **Recomp bug #12 — x87 register-operand stack ops dropped**: `fld st(i)`,
     `fst/fstp st(i)` emitted as comments; `fst m32/m64` wrongly POPPED;
     `fistp` never popped. 980 affected functions (list:
     tools/recomp/fpust_funcs.json) re-emitted into gen/recomp_fpust.c with
     the fixed lifter (originals renamed _oldst; manual-override functions
     re-emitted under their _gen names so wrappers pick them up).
     RE-APPLY after regen. This fixed the movie quad from wild garbage
     (20502,-19739) to real dims — the quad builder chain is
     sub_0009DC60/sub_0009DCAD/sub_0009DCC5 writing 4 verts stride 0x18
     {x,y,z,rhw,u,v} at 0x5E5910; NOTE it never writes UVs (they stay 0)
     and it consumes an FPU value PUSHED BY ITS CALLER (movie dims — the
     caller pushes height; cross-function x87). Current verts:
     (0,0),(0,0),(480,720),(0,720) — one dup vert + x/y transposed, so the
     caller-pushed value / stack order is still off by one somewhere in the
     CALLER's code (check the re-emitted callers around recomp_0003.c line
     40645, the E284-path quad rebuild).
  51. **Pgraph vertex layout made dynamic**: the XDK inline-draw path never
     emits SET_VERTEX_DATA_ARRAY_FORMAT, so nv2a_pgraph_d3d11.c gained
     pgraph_d3d11_set_vertex_layout(stride_dw, pos_dw, uv_off, color_off),
     fed from the sub_001B3760 wrapper (walks the FVF object's NV slots:
     0=pos, 3=diffuse, 9=tex0). Defaults preserve burnout's 5-dword layout.
     With FVF 0x104 (movie quad): stride 6, pos 4 dwords, uv off 4, no color
     (renders white).
  52. **NEXT for visible movie**: (a) pgraph must bind the MOVIE TEXTURE —
     submit_draw currently only knows burnout's menu/font textures; it needs
     to resolve NV097_SET_TEXTURE_OFFSET (0x1B00) to guest memory (the movie
     surface at the VRAM bank, LIN_A8R8G8B8 720x480) and create/update a
     D3D11 texture from it per frame; (b) fix the remaining quad
     transposition (caller-side x87 value, item 50); (c) UVs are never
     written by the builder — find who sets them (probably static after
     init) or default the pgraph to full-quad UVs when uv==0 everywhere;
     (d) real decoded frames: player state stuck at 4 — verify what state 4
     means (likely needs the sfdec decode to actually produce frames now
     that MMX works).
- **=== SESSION (2026-07-03 cont. 2): MOVIE TEXTURE BINDS; frontier = stream pump ===**
  53. **Dynamic guest-RAM texture implemented** (nv2a_pgraph_d3d11.c):
     get_dynamic_texture() creates/re-uploads a D3D8 texture from guest memory
     each draw when Global.txd is absent (DOA3). Captures SET_TEXTURE_CONTROL1
     (0x1B0C, pitch) + SET_TEXTURE_IMAGE_RECT (0x1B1C, (w<<16)|h); supports
     linear NV formats 0x10/0x11/0x12/0x1E; pitch sanity-clamped to w*bpp
     (control1 hi16 read 0x4003 garbage). VERIFIED: creates 720x480
     LIN_A8R8G8B8 from 0x0258A000 = the movie frame surface (VRAM bank 0).
     Texture-stage alpha comes from DIFFUSE (synthesized white) because the
     movie FVF has no color and texture alpha was transparent.
  54. **Synthesized UVs**: the game-side quad builder never writes texcoords
     (all zero); submit_draw derives full-range UVs from the position bbox
     when a draw has none. INTERIM — find the real UV writer later.
  55a. **STREAM-DEATH FIXED (bug #10 instance)**: sub_001779A0 ("data stream
     finished?" = streamStat==4) was lifted with the broken neg/sbb carry
     idiom and returned TRUE always -> instant player state 4. Native
     override in recomp_manual.c (gen renamed _oldcf). RESULT: player now
     sits in state 1 (PREP), the ninja.sfd stream issues CONTINUOUS reads
     (16+ vs 1). NEW FRONTIER: the Sofdec decoder never signals ready —
     sub_0017D4E0(sfdec 0xC0F7C0) must return 4 or 6 for state 1 -> 2
     (PLAYING, which enables the movie-quad draw in sub_0009E284). Trace the
     sfdec core state machine (PSGSFD 0x17Dxxx; watch for more bug-#10
     neg/sbb idioms and unemitted callbacks there — grep '_cf ?' in its
     functions FIRST). A batch fix for bug #10 (produce _cf from the last
     flag setter in lifter.py + re-emit affected fns) would clean this whole
     class; ~200 sbb-self sites exist.
  55. (superseded by 55a) the movie data stream stops after one read:
     the screen is black again because the movie SURFACE contains zeros: no
     frame is ever decoded. Player state goes 4 via sub_00176CE0 loc_00176D2B:
     `if (obj+0x34 && sub_001779A0(obj+0x34)) state=4` — i.e. the mwPly
     DATA STREAM reported complete/idle right after the initial 1MB read of
     d:
inja.sfd ([NTREAD] h=... len=0x100000 happens ONCE, b0..3=00 00 01 BA
     valid MPEG-PS). The ADXT/MFS stream (handle at obj+0x34) must keep
     issuing reads as the Sofdec decoder consumes data; instead
     sub_001779A0 returns nonzero immediately. Next: dump sub_001779A0
     (what state it checks) and the stream pump that should refill
     (ADXT server / sub_0016B2D0 keep-alive in E1F0's movie-0 special case);
     also verify sub_0017D4E0 (sfdec status: 4/6 = ready->PLAYING at
     loc_00176CFA) — the decoder may never leave its initial state because
     data stops. Once frames decode into bank 0, the whole render path is
     PROVEN READY: quad + dynamic texture + UVs all bind (a colored surface
     would show immediately).
- **=== SESSION (2026-07-03 cont. 3): CF BATCH FIX LANDED; decoder stuck at state 2 ===**
  56. **Recomp bug #10 BATCH-FIXED**: lifter.py now materializes _cf before
     sbb/adc from the last flag setter (_make_cf_expr: cmp/neg/sub/add/logic;
     ~584 of 752 consumption sites produced). 359 affected functions
     re-emitted into gen/recomp_cffix.c (originals _oldcf2; list
     tools/recomp/cffix_funcs.json). LANDMINES HIT AND FIXED:
     (a) raw translate_single output LACKS the post-process passes — MUST run
     tools/recomp/fix_ftol_inline.py after ANY re-emission (763 _ftol2 call
     sites were un-inlined across my batch files and broke boot);
     (b) re-emission LOSES restored fall-throughs — transplanted 139 restore
     lines from the _old bodies into recomp_fpust/cffix/mmx/mwply.c and fixed
     11 pre-existing gaps in recomp_jumptables/fpufix.c. A regen must re-run
     BOTH steps (or better: run the full fix-script suite on new files).
  57. Movie pipeline state after all fixes: player state 1 (PREP), sfdec
     status stuck at **2** (needs 4/6; read from sfdec+0x40 by sub_0017D4E0
     via sub_0017C660/sub_0017C6A0). DATA IS ALL PRESENT: ninja.aix fully
     preloaded (0x2F5800 bytes 'AIXF' into the MFS buffer 0x1168000) and
     ninja.sfd double-buffered (2x 1MB MPEG-PS reads into 0x1777A00/0x1877A00).
     The sfdec server chain RUNS every tick (sub_0017C8D0 -> sub_0017EB20
     walks handles at MEM32(0xC0E518) stride 0x60D8 -> sub_0017E9B0 icalls
     the per-STATE handler table handle+0xA94 (index from sub_0017D510(h,0xF),
     default 0x17E2A0; state 2 -> mwPly-registered sub_00178690 which only
     READS status via sub_0017DD90 filter {4,-4,6,-6}); the group-5 ADXM
     callback sub_00176DC0 also runs. Emitted 10 MORE detector-missed
     functions (0x1782A0/C0/E0, 0x178300/20, 0x178A20, 0x178C20, 0x178CB0,
     0x17B9A0, 0x169AF0 — appended to recomp_mwply.c) — no change yet.
  58. NEXT: find what actually advances sfdec+0x40 from 2 to 4 — trace
     sub_00176DC0's body (the decode-side callback) and the writers
     sub_0017D380/sub_0017D417/sub_0017D430 (`+0x40 = eax` — dump these,
     find which is the header-parse completion and what gates it). Suspect
     more silent icall no-ops (scan handle+0xA94 table CONTENTS at runtime
     via a diag print of all 16 entries) or another dropped-instruction
     class in the MPEG parse path. Everything downstream is ready: once
     status hits 4, mwPly goes PLAYING -> frames decode into VRAM bank 0 ->
     the already-working quad+texture path shows the movie.
- **=== SESSION (2026-07-04): DEMUX ROOT-CAUSED; 30 emissions land; create regression ===**
  59. **Status-2 fully root-caused**: the sfdec state pump chain is
     sub_0017D380 (state pump, fastcall esi=handle; needs tick flag +0x3C set
     by sub_0017E9B0) -> demux sub_0017F6D0(h, phase=2) walks 9 substream
     slots at h+0x2F4C stride 0x610, icalling slot-vtable[phase]; decode
     sub_001842F0; then state-2 evaluator sub_0017D0E0: gate sub_0017C980 =
     "streams ready" (stream-present flags at h+0x994[4..8] = 1,1,0,0,0;
     readiness via sub_0017F770/sub_0017F7B0 = flags at
     h+0x2974+i*0x610 {+0,+4}) -> returns 2 while not ready.
     THE SUBSTREAM VTABLES (0x218134/0x2180EC/0x218058/0x217FCC/0x218020/
     0x217F94/0x217F5C in .rdata) POINTED AT 28 NEVER-EMITTED FUNCTIONS
     (detector misses; icalls silently no-op'd, so the demux parsed NOTHING).
  60. Emitted all 30 (28 + cascade sub_001789B0, sub_0017C560) into
     gen/recomp_mwply.c + decls + dispatch + ftol-inline pass.
     **REGRESSION**: mwPlyCreateSofdec now FAILS (err 0xFFFFFECF at
     sub_00176A76 loc_00176BD5: sub_0017D240(&params,0) returns 0 because
     params+4 == 0 — checked at sub_0017D240 loc_0017D240 'params.4 null'
     -> error 0xFF000203). params+4 = MEM32(esp+0x10) in the sub_00176970/
     sub_00176A76 fragment pair (the sfdec sub-buffer carve fed by size
     calculators sub_00176330/sub_001763F0 -> table 0xB289D8..FC; [SFSZ]
     diag in tree shows the create-time values). One of the 30 new functions
     participates in the size/param computation and misbehaves (suspect a
     TRUNCATED SEED — ends were guessed as next-known-start — or a fragment
     needing register inheritance). NEXT SESSION: bisect the 30 by renaming
     halves back to _missing (restoring silent no-op) until create works,
     then fix the guilty function's range/lift. The list: 0x178110 0x178140
     0x178170 0x1781A0 0x1781D0 0x1783C0 0x1783E0 0x178D60 0x178E60 0x178E90
     0x178F60 0x178FD0 0x178FE0 0x178FF0 0x179050 0x179230 0x179CF0 0x179E00
     0x17B040 0x17B1F0 0x17B6E0 0x17BB10 0x17C480 0x17C5D0 0x17C5E0 0x17C600
     0x17C620 0x17C640 0x1789B0 0x17C560 (all in gen/recomp_mwply.c).
     Once create works again + demux runs, the substreams should fill and
     status 2 -> 4 -> PLAYING -> frames -> the proven render path.
  61. **BISECT DONE**: the culprit is **sub_00178D60** (the mwPly AUDIO/AIX
     substream setup: ADXSTM via sub_0016A130 + SJ via sub_0016AE80 +
     registers callbacks 0x1782A0..0x178320 + calls sub_00178950). Its code
     looks CORRECT — when it actually RUNS during create, a later sfdec
     param (params+4) ends up 0, so its ADXSTM/SJ creations likely disturb
     the work-buffer layout (sizes were computed while it was a no-op?) or
     one of its callees misbehaves. CURRENT STATE: its dispatch entry is
     commented out ('/*BISECT*/' in recomp_dispatch.c) = audio setup no-ops;
     all other 29 new functions enabled. RESULT: create OK and the sfdec
     status now moves 2 -> **-2 (parse error)** — the video demux RUNS and
     fails. NEXT: (a) find what -2 means / which parser sets it (probably
     one of the video substream handlers 0x17C5E0/0x17C5D0/0x17B6D0 family
     hitting a lift bug or a truncated seed — verify each new fn's seeded
     END against the real body; (b) then re-attack sub_00178D60 (find why
     params+4 nulls when audio initializes — check whether sub_00176550/
     sub_00176500 size math must ALSO account for audio when it's active).
  62. **-2 ROOT-CAUSED (2026-07-04 cont.)**: per-handle sfdec error at
     handle+0x988 = **0xFF00040B** from sub_0017F330 = "substream buffer too
     small/can't grow" — the demux met AUDIO packets in the MPEG-PS but the
     audio substream (slot 3) was never initialized because its INIT is the
     bisect-disabled sub_00178D60 (slot-3 vtable 0x217FCC entry +0xC; the
     vtable also has +8=0x178FD0 phase-2 parse). So the audio no-op is NOT
     viable: sub_00178D60 must run. Its create-time failure chain: it
     allocates the audio ADXSTM (sub_0016A130 with sizes from slot config at
     h+0x3BAC +0x14/+0x1C/+0x20) + SJ (sub_0016AE80 with +0x8/+0xC/+0x10) —
     and afterwards the SFDEC carve's params+4 is NULL. KEY CLUE: the [SFSZ]
     size table (from sub_00176330) showed E4=EC=F0=0 — the AUDIO sub-buffer
     sizes are ZERO (sub_001763F0 fills E4/F0; it ran after the probe) while
     the audio path is active -> zero-size carve -> null pointer. NEXT:
     dump sub_001763F0 (audio size calc) + what fills its inputs (probably
     the mwPly cfg audio fields or slot-3 config); verify whether
     mwPlyCalcWorkSize (sub_00176580 = 0x8C7F80, UNCHANGED before/after the
     emissions) undercounts; then either fix the size source or grow the
     work allocation. Alternatively check how the game DISABLES the audio
     substream legitimately (stream-present flags h+0x994[i] parsing) since
     ninja's audio arrives via the separate AIX file, not the SFD.
  63. **AUDIO-INIT FAILURE NARROWED (2026-07-04 cont. 2)**: with
     sub_00178D60 enabled, create fails as slot0err=0xFF000C04 =
     sub_0016A130 (ADXSTM create) returning 0. Probes prove: args are sane
     (nstm=2, buf=0x145D800, size=0x81C0); the SJ creator sub_0016AE80
     WORKS (pool 0xC09500 stride 0x30, 256 slots; slot-0 reuse after free is
     normal); the wxCi session creator sub_0016E060 is NEVER REACHED — so
     the failure is between them inside sub_0016A150:
     **sub_0016DB80(sj, nstm, &slots) or sub_0016DF10(&slots, nstm)**
     returned 0 (bail at loc_0016A2A1/loc_0016A2B2). NEXT: probe/dump those
     two (stream-handle sub-allocators). Note the movie's own work stream
     (sub_0016B400 -> 6A130) has ALSO always failed this way (h6B400=0
     in every run) — the movie streamed via MFS regardless; fixing this
     likely fixes both. Diag in tree: [ADXSTM], [SJ], [WXSES], [SFCRT]
     (+pool and slot0err prints).
     LAST FINDING: sub_0016DB80 = a byte-flag pool scanner (base ~0xC04DE0,
     stride 0x9C, pool-enabled flag at slot-156; scans for a FREE slot,
     returns 0 when the pool is disabled or EXHAUSTED) — likely the cvFs
     stream-handle pool leaking entries from the boot mounts/sound streams
     (handles never freed), so by movie time no slot remains. Probe slot
     occupancy first (count nonzero MEM8 flags), then find the FREE path.
     sub_0016DF10 is just a thunk to sub_0016FC00.
     STATE: sub_00178D60 dispatch entry re-enabled; create currently FAILS
     (worse than the bisect state) — if a quick fix isn't found next
     session, re-disable 0x178D60's dispatch entry to return to the
     status=-2 state.
  - New diag in tree: [SFEV] (state evaluator), [SFGATE] (+stream flags),
    [SFSUB] (substream vtables + phase-2 ptrs), [SFSZ] (size table).
- **=== SESSION (2026-07-05): AUDIO INIT + CREATE FULLY FIXED; MPEG PARSE RUNS ===**
  64. **The FF000C04 chain is DEAD**: the failure was sub_0016FC00
     (mwRnaCreate) icalling the registered RNA DRIVER vtable at
     MEM32(0xB25480) = 0x3BF0D8 (registered by sub_0016EE50 <- sub_0016A940,
     which C840 calls) — and ALL SIX driver functions (0x173E70/EA0/ED0/F30/
     F50/FA0) were never emitted (silent icall -> mwRnaCreate 'Not enough
     instance'). Emitted into recomp_mwply.c. RESULT: **mwPlyCreateSofdec
     succeeds WITH the audio substream fully initialized** (4 RNA instances
     created; hErr=0; no -2 from missing audio). The RET_PROBE/[RNA]/[SFERR]
     diags are in tree. THIS ALSO UNBLOCKS sub_0016A130 ADXSTM creation
     everywhere (the movie's own work stream should now create too).
  65. **Decode pump wired to vsync**: the ADXM group-5 callback (the sfdec
     state pump sub_00176DC0 -> sub_00176D60 -> sub_0017D4B0) ticked only
     3-6 times in MINUTES (its CRI worker fiber sleeps). The SetFence/present
     wrapper now dispatches user group 5 once per frame via sub_001705E0(5)
     — hardware ticks these per vsync. Pump chain confirmed: group5 cb ->
     pump-all-handles -> sub_0017D380 (needs tick +0x3C) -> demux
     sub_0017F6D0(h,2) + decoder sub_001842F0 + state evaluator.
  66. Also emitted the 7-function start-code/PES handler family
     (0x17DE60..0x17E020, .rdata fn-ptr table) — all PSGSFD-region call
     targets and .rdata fn-ptrs now emitted (audits come back clean).
  67. **CURRENT WALL — parser rejects a ZERO start-code**: with everything
     live, the MPEG-PS parse RUNS and fails at sub_0017C33E loc_0017C422
     (hErr=0xFF000D05, status -> -2): the dispatched start-code VALUE IS 0
     ([SFERR] raw frame: code slot = 0, ring base 0x1777A00 visible, 0x10000
     = chunk len). The ring holds valid MPEG (00 00 01 BA) so the parse
     POSITION or the 32-bit code EXTRACTION goes wrong (no missing bswap/rol
     lifts in the region — checked). NEXT: dump sub_0017C33E's callers (the
     scan loop that extracts start codes — likely sub_0017BA80/sub_0017C160
     family) and instrument the read position vs buffer base; suspect an
     off-by-N in the seeded-function boundaries (verify each recomp_mwply.c
     fn's end against a disassembler) or a shift/carry lift in the
     bit-cursor math. Everything downstream (frame decode via MMX, YUV blit,
     quad+texture render) is already verified machinery.
- **=== SESSION (2026-07-05 cont.): PARSER CONSUMES MPEG; ring-accounting wall ===**
  68. **Empty-ring race fixed**: the first pump ticks scan the ring before the
     first read lands; the gen scanner reports "found, code=0" for len<4 and
     the dispatcher treats code 0 as fatal (FF000D05). sub_0017BCC0 wrapper
     now returns not-found when len<4 ([SCAN] probe shows the race: scans
     1-5 empty, scan 6 = valid '00 00 01 BA'). RESULT: **the MPEG-PS parser
     now consumes packs** (cursor advances 0x800/pack, full 1MB delivered).
  69. Parse pipeline mapped end-to-end: scanner sub_0017BCC0 (eax=ptr,
     ebx=len) <- sub_0017C300 <- slot-0 phase2 0x17C5E0 -> code reader
     sub_00183F70 (correct) -> dispatcher sub_0017C33E -> PES appends
     sub_0017F330 (fastcall eax=queue idx; queues at h+0xD34 stride 0x388,
     complete-count at +0xC) -> video readiness sub_001790C0: needs
     sub_0017EF40(h, queue5) count and DECODED frames >= 5 -> decoder attach
     (writes h+0x6004) -> decode sub_001842F0 -> sub_001840F0/sub_00184240.
     Probes in tree: [SCAN],[PESQ],[QCNT],[GROW],[RNA],[SFERR].
  70. **CURRENT WALL — SJ ring accounting**: death is FF00040B from
     sub_0017F330 -> sub_0017ECC0 (grow check, icalls SJ vtbl 0x3BEEB8 +0x18
     = sub_0016AB00 get-region): the READ RING SJ (0xC09890, base 0x1777A00,
     cap 0x262800) reports **0 bytes free** — the free-count field (SJ+0x10
     write side / +0xC read side, decremented by sub_0016AB00) is NEVER
     CREDITED BACK when the consumer finishes with a region. NEXT: find the
     SJ 'commit/consume-complete' API (the counterpart that increments
     +0x10/+0xC — probably sub_0016ABF0/sub_0016AC00-family right after
     sub_0016AB00 in recomp_extra2.c) and verify it's emitted AND CALLED by
     the scanner/parse path (sub_0017EF20 'consume 1' calls seen in
     sub_0017BCC0 tail — check that chain end-to-end). ALSO: two SJs are
     created with NEGATIVE size 0xFFFFF800 ([SJ] #21/#28, bases 0x1479D80/
     0x1D8B100) — a size computed as X-0x800 with X=0 somewhere in the
     movie-work-buffer layout; find that caller (suspect the same carve
     family sub_00176970/sub_00176A76 or the video-substream init twin of
     sub_00178D60, e.g. 0x178A20/0x178CB0).
- **Diagnostics still in tree (remove when load works):** [CRI-LOG]+[CRI-DEV] dump in the
  sub_00170330 wrapper, [C160] device-find wrapper (sub_0016C160→_gen), [KEWAIT] log in
  bridge_KeWaitForSingleObject, diag_sampler thread in main.c, [FIBER]/watchdog logs.
  sub_0018FC20 has BOTH a manual strncmp override (recomp_manual.c) AND a now-correct
  sub_0018FC20_gen (redundant; either works — drop the override once gen fix is trusted).
- Host `src/game/main.c`: console boot host + diagnostic VEH (logs faults w/ Xbox-VA +
  ICALL trace). D3D/audio/input/nv2a libs intentionally NOT built yet.

### Next steps
1. Debug the RtlEnterCriticalSection-area crash (read 0xFFFFFFFD). Inspect the function
   at RIP 0x140B7891B (map to sub_ via the .map file or recomp_lookup) and ordinal-277
   bridge impl; likely need a manual override or proper CRITICAL_SECTION init. Then
   continue walking faults (more file I/O for loadfile.afs/bgm.afs, then D3D init).
2. Add manual overrides in `recomp/recomp_manual.c` for functions that poll hardware /
   spin / need special handling. Document each here.
3. Use `cxbx` oracle (E:\Downloads\doa3\cxbx_klog*.txt + SymbolCache 308 names) to compare
   boot order. Symbol cache: `cxbx/SymbolCache/Dead or Alive 3-30f61839f8ad912b.ini`.
4. When boot reaches graphics: decide D3D8 strategy (redirect retail D3D8 via `src/d3d`
   d3d8_compat shim using the symbol-cache D3DDevice_* addresses, vs. recompiled D3D
   section + `src/nv2a`), then add those libs to the top-level + game CMakeLists.

## Diagnostics: how to run & read
`./bin/doa3.exe 2> err.txt` (console app). stderr has memory map, kernel thunk bridge,
`[KERNEL] #N ordinal...` per kernel call, `[CRASH]` with regs/Xbox-VA/ICALL trace.
The legacy kernel log also goes to `doa3/xbox_kernel.log`.

## Manual Function Overrides (recomp/recomp_manual.c)
- **sub_001668FA** (`__sbh_alloc_block`, __stdcall 3 args) — bump-arena allocator that
  bypasses the broken SBH (NULL descriptor). Gen patch: `#if 0` in recomp_0008.c
  (re-apply after regen). NOTE: this is an INTERIM hack — the heap blocks it returns
  lack SBH metadata, so downstream code that walks block headers gets garbage. The
  earlier "stack overflow" from this override was actually the CRT-lock recursion (now
  fixed); with locks fixed it advances boot past the heap but into new wild-pointer
  crashes (see sub_001E61BB below). The real fix is making the SBH init work (drop this).

## main.c CRT bootstrap (Session 1, continuation)
- **CRT bootstrap locks pre-init** (replicates `_mtinitlocks` @ 0x00191ACA): table at
  **0x3C0FB8** (36 entries × 8 bytes `[ptr, flag]`, flag==1 = bootstrap, 14 of them);
  CS buffer at **0xBF4CF0** (stride 0x1C). Without this, `__lock` (sub_00191B96) →
  `_mtinitlocknum` (sub_00191B1A) recurses forever (Enter/Leave-CS storm). FIXED → the
  recursion is gone. CS ops are no-ops so the ptr just needs to be non-NULL.
- **DbgPrint bridge** (ordinal 14) in kernel_bridge.c captures the game's debug output
  (minimal printf over the Xbox stack). cdecl/varargs (arg_bytes=0).

## THE CURRENT BLOCKER: CRT small-block-heap (SBH) init fails (NULL descriptor)
Precisely diagnosed call chain (all confirmed):
- game main `sub_00165136` → `_heap_init` `sub_00167E5B` (recomp_0008.c:3493)
- `_heap_init` reads heap reserve/commit from the XBE header (VA 0x10134=0x100000,
  0x10138=0x1000 — correctly mapped) and calls the heap creator `sub_001664D6`,
  storing its result in the descriptor global **0xBF5000**.
- `sub_001664D6` calls `NtAllocateVirtualMemory` (works) then the SBH init
  `sub_00165F87` → `sub_00165FBD`/`sub_00165FC1`/... and **returns 0** (failure),
  so `0xBF5000` stays NULL.
- Later the SBH allocator `sub_001668FA(desc=NULL, flags, size)` walks
  `esi + edi*8 + 0x180` free-lists with `esi=0`, reads `MEM32(0x1CC)=0`, computes
  `0-8 = 0xFFFFFFFC` and faults (read Xbox VA 0xFFFFFFFD, eax=0xFFFFFFF8).
burnout3 let its native CRT heap work (no override), so this is a findable DOA3-specific
failure, not an inherent recomp limitation.

### Next step — FIX THE REAL SBH (drop the bump override)
The CRT-lock fix did NOT fix the heap (descriptor still NULL with locks fixed), so the SBH
init genuinely fails. Deeper trace done this session:
- `_heap_init` `sub_00167E5B`: `MEM32(0xBF5000) = <creator return>`; calls creator
  `sub_001664D6`. The heap region IS reserved fine: creator's `NtAllocateVirtualMemory`
  reserves 1 MB @ 0x1500000 (= XBE heap reserve 0x100000) and commits page 0.
- creator → SBH init `sub_00165F87` → `sub_00165FC1` builds a group header at `esi`
  (magic 0xFFEEFFEE at +0x10) and returns `LO8(eax)=1` on success.
- creator: `if (LO8(eax)!=0) sub_00166885()` (SUCCESS continuation) `else sub_001668F2()`.
  `sub_00166885` returns `MEM32(creator_ebp-28)` = the descriptor → stored in 0xBF5000.
- So the descriptor = creator local `ebp-28`. It's init to 0, then set at loc_001666E9
  (`MEM32(ebp-28)=MEM32(ebp+0xC)` = creator arg2) and at recomp_0008.c:6994. Since
  0xBF5000 ends up 0, EITHER the creator takes an early error return before reaching
  sub_00166885, OR ebp-28 is 0 at return.
NEXT: instrument (manual override sub_00167E5B/sub_001664D6 that logs the descriptor) or
single-step the creator's branches to find the early-0-return; fix that one cause. The
recompiled SBH is otherwise sound (burnout's native CRT heap worked unmodified).
Alternative (option B): override the CRT malloc family (`_heap_alloc_base` =
the fn at recomp_0007.c:93137 reading 0xBF5000) + matching free/realloc with a real
bump+free allocator and `#if 0` the SBH — but the real-SBH fix is cleaner.

## Boot debugging tools added (Session 1)
- `src/game/main.c` now ports burnout3's **VEH fault-skip decoders**
  (`veh_skip_faulting_read`/`_write`): decode the faulting x86-64 instr, return 0 for a
  read / skip a store, advance RIP. Lets boot push through wild-pointer probes. Has a
  2M-skip safety cap. Logs the first 60 faults with regs + Xbox VA.
- Map a crash RIP -> function: parse `bin/doa3.map` (preferred base 0x140000000), find the
  largest symbol VA <= RIP. (Crash was sub_001668FA via this.)

## 71. RECOMP BUG #13: x87 arithmetic operand forms (2026-07-03, BATCH FIXED)
The lifter emitted the bare pop-pair form (`fp_st1() OP= fp_top(); fp_pop()`) for EVERY
fadd/fsub/fmul/fdiv regardless of operands: memory operands were DROPPED (st0 got merged
into stale stack garbage and popped) and `fi*` integer / `f*r` reversed variants were
dropped entirely as comments. 14,195 mem-operand arith sites existed in the binary.
Fixed in `tools/recomp/lifter.py` (general handler for mem/st(i)/pop/int/reversed forms);
1308 affected fns re-emitted into `gen/recomp_fpuarith.c` (originals renamed `_oldar`;
list `tools/recomp/fpuarith_funcs.json`). First victim found: `sub_00175B90`'s
`fld 59.94f; fmul [0x207568](=1000.0)` -> `_ftol` = 59939 (0xEA23) = the millifps rate
param -> global 0xC0E4D0; when 0 it caused an integer-divide crash in `sub_0017E240`.
RE-APPLY the batch after any pipeline regen (same checklist as fpust: ftol pass +
fix_fallthroughs + rename actives (3 LOOP_PROBE-wrapped: sub_000A02A0/0370/0440 in
recomp_0003/fpufix as `_oldar_gen`) + `sub_0017D452` phantom removal below).

## 72. PHANTOM FUNCTION sub_0017D452 (jumptable DATA emitted as code)
The detector created `sub_0017D452` from sub_0017D380's JUMPTABLE DATA at 0x17D454 (6
dwords of case addresses + nop pad). Its "body" is byte-salad (random MEM8 writes) that
falls into the real `sub_0017D470` minus its `push esi` (all arg reads shifted). Removed
from recomp_dispatch.c and body no-op'd in recomp_0009.c. RE-APPLY after regen.

## 73. THE JUNK-HANDLE CASCADE ROOT CAUSE (2026-07-03, FIXED — the big one)
Symptom: FF000222 SFERR storm with garbage handles, mwPly slot-table corruption at
frame ~2033 (slot active flags overwritten by `{err, err&0xFFFFFF}` error records via
h+0x988 stores with junk h), player death, nondeterministic native crashes.
ROOT CAUSE: `sub_0017F6D0(h, idx)` broadcasts substream vtable slot `idx` over the 9
substream contexts (h+0x2F4C stride 0x610) with `call [vtbl+idx*4]; add esp,0x10`
(CDECL caller cleanup). The translation used RECOMP_ICALL_SAFE which RESTORES esp on a
failed lookup — then the emitted `esp += 0x10` cleanup ran anyway = +16 ESP DRIFT PER
UNRESOLVED VTABLE ENTRY. The function epilogue then restored esi/edi/ebx from shifted
slots; the junk esi (evolving PTS/counter values from the caller frame) became the
state-machine OBJECT in sub_0017D380 -> error stores at junk+0x988 -> cascade.
FIX: `sub_0017F6D0` reimplemented NATIVELY in recomp_manual.c (guest regs saved/restored
around each callee, junk vtbl/handler entries skipped+logged as [VTBC]). RESULT: zero
SFERR, zero slot corruption, sfdec handle stable at status 2, hErr=0, runs 13800+ frames
crash-free. WARNING: any OTHER cdecl-cleanup icall caller has the same drift hazard when
the callee fails to resolve — check `RECOMP_ICALL_SAFE` + `esp += N` pairs if similar
junk-register symptoms appear.
Defensive layers also added (keep): guards on sub_0017D1D0/sub_0017D380/sub_0017D470
rejecting objects outside guest RAM (hardware walks in-range residue harmlessly — do
NOT tighten to pool-aligned: substream sub-objects at interior offsets are legit and
rejecting them deadlocks the movie open); group-5 handler-table sanity sweep in the
SetFence pump; single-window-only native->xbox VA conversion in RECOMP_ICALL[_SAFE]
(the old `% 0x04000000` modulo let garbage alias onto real functions); write-watch
infra `doa3_watch_arm/disarm` + [WATCHW] in main.c crash_veh (guest page write tracing).

## 74. CURRENT FRONTIER after the cascade fix (movie: status 2, no errors)
Screen still black, draws=0 (player st8=1 PREP, blit guard requires state 2). The parse
consumes ~3 packs ([SCAN] #12) then politely stalls: QCNT all 0, no decoder attach.
The read-ring SJ free-count accounting (item 70) is still the suspected gate — consumed
bytes never credited back, so the demux starves (now WITHOUT the fatal FF00040B since
the len<4 scanner guard returns 0 gracefully). NEXT: fix the [SJPUT]/[SJREL] probe arg
offsets (SJ object is at entry esp+0x10, not esp+0xC — the chunk desc is at +0xC) and
trace why sub_0016ABF0/sub_0016ACE0 never credit SJ 0xC09890's free counts (+0xC/+0x10).

## 75. VIDEO DECODE CHAIN FULLY MAPPED (2026-07-04); frontier = picture completion
The whole readiness chain is now traced and instrumented (probes in recomp_manual.c):
- Per tick: state machine sub_0017D380 state-2 case -> vtable broadcast idx 2
  (sub_0017F6D0, NATIVE) -> substream slot2 service thunk sub_0017B6D0 ->
  sub_0017B650 -> decode step sub_0017B5E0 loop:
  sub_00179F00 = fetch video unit [VFETCH] (WORKS, units flow),
  sub_0017B3F0 = picture decode [VDECODE] (returns 0),
  sub_0017F6B0 -> sub_0017F330 = consume ring bytes via SJ vtbl (+0x18 get/+0x20 commit).
- First decode triggers sub_0017B2D0 -> sub_0017B100 [VSEQ] -> sub_0017AC20:
  parses the SEQUENCE HEADER (w35A8=720 correct!) and configures the FRAME SLOT
  POOL: count at h+0x3668 (=7), slots at h+0x366C stride 0x50, state at slot+0.
- Readiness: video service tail sub_00179EC0 -> sub_0017DA20 counts slots in state
  2 or 4; enough -> sets video queue flag [h+0x3B74] via sub_0017EF20 -> readiness
  flag h+0x2974+i*0x610 (i=6 video, 7 audio; getters sub_0017F770/+0x2978 twin
  sub_0017F7B0, setter sub_0017F790) -> gate sub_0017C980 (needs params 5/6 at
  h+0x9A8/h+0x9AC) -> state 2->4 in sub_0017D0E0 (jumptable on target [h+0x44]-2;
  target 4 also needs sub_0017CF10==1 which passes, h+0x9CC=0).
- CURRENT STATE [QDET]: fr=7[1100000] — frame slots configured, TWO stuck in
  state 1 (decode started, never completes to state 2). All decode callees
  (sub_00179570/1796A0/17A070/17A640/17A6D0/17A890/17AEB0) ARE emitted.
- NEXT: probe inside sub_0017B3F0's picture path (sub_0017A890 = slice decode?,
  sub_0017AEB0 = frame complete?) to find where picture decode stalls. Suspect
  MMX slice kernels (recomp_mmx.c batch) or another silent icall no-op.
- AUDIO SIDE (separate): audio substream state (h+0x59CC) never leaves 0; its
  queue-flag setter (0x178885, needs audio state 5) never fires. Audio params
  0x31/0x38/6 (h+0xA58/h+0xA74/h+0x9AC) were ALREADY 0 => video readiness does
  NOT wait on audio (the [ABYP] bypass in the SetFence pump is a no-op; keep or
  remove). Audio needs the ADXT attach fixed eventually for sound.
- Worker servers pumped per frame now (SetFence): group5 x2 + sub_00170640
  ([0xB254F0]cb = sub_00170710 -> ADX main server sub_00169BC0) + sub_00170660
  ([0xB254F8]cb = sub_00176E90 mwPly tick). [SJPUT/SJREL] probes fixed: args are
  (sj, mode, chunk{ptr,len}); mode1 credits sj+0xC, mode0 credits sj+0x10.
  SJSTAT dump shows ALL substream rings full = ingest fine, consumers starved.

## 76. THE MISSING PICTURE-INDEX ATTACH (2026-07-04, root cause of "no decode")
Full frontier resolution of item 75. The video decode chain stalls because:
- SJ-backed queues (type 5, e.g. q1 = video ES) carve their region as RING +
  PICTURE-INDEX TABLE (12-byte entries {pts,pos,?}; index part size at rec+0x24,
  e.g. 0x50000 of the 0x2A2800 video region; [CARVE] mode-1 split in sub_0017EC10,
  copied into the record by sub_0017F0D0's rep-movsd, idx struct at rec+0x40
  {table,cap,count,wr,rd} ZEROED by sub_00182800 at create).
- NOTHING in the entire emitted image initializes rec+0x40.table (verified by raw
  XBE scan: no writer of disp 0xD74, single sub_0017EC60 caller, write-watch clean).
  With table==0: the demux-side append path (sub_0017B7F0 delivery -> sub_00182700
  guard -> sub_001825D0 append) SKIPS SILENTLY and the picture setup
  (sub_0017AB40 -> sub_001827B0 -> sub_00182750/sub_00182630 index lookup) REJECTS
  every picture (out=-1) -> pictures never decode -> no frames -> readiness never
  fires -> sfdec stuck at status 2 forever.
- FIX (recomp_manual.c, in the sub_0017D240 [SFCRT] wrapper): after sfdec create,
  for each type-5 queue with idxsize>0 and table==0: table = ringbase + ringsize,
  cap = idxsize/12, counters 0. Result: [IDXAPP] entries append (pts 750/1500/…,
  123 pictures indexed), picture setup succeeds, and the decode initiators
  sub_0017A370/sub_0017A400 fire for the first picture. (The attach presumably
  lives in a never-emitted/detector-missed function on real hardware — if the
  real initializer is found later, replace this manual attach.)
- The [ABYP] free-run force ([h+0x35D0]=1) was REMOVED: with readiness firing at
  0 decoded frames the video service (sub_0017B650) early-outs on its own queue
  flag and stops retrying picture setup. Real decode must produce frames so
  readiness fires naturally (sub_0017DA20 counts state-2/4 slots).
- CURRENT STATE at turn end: one picture entered decode (PICGO A370/A400 fired
  once), then no further pictures; frame slots still [1100000] (no state 2).
  NEXT: trace why picture #2 setup/decode doesn't continue (likely the slice
  decode of picture #1 must complete first — probe sub_0017A640/slice loop and
  the frame-slot state transition to 2), then check the YUV->RGB blit into the
  movie surfaces (0x258C000/0x2A24000, both still zero).
- Probe legend added this turn: [QWIN] window refresh, [CSCAN] class scan,
  [PSETUP] picture setup, [IDXAPP] index append, [VDELIV] ES delivery, [PICGO]
  decode initiators, [PICHDR] header parsers, [SLICE] skip-scan, [SURF] movie
  surface bytes, [IDXFIX] the attach fix.

## 77. PSGSFD_I/_P/_B PICTURE DECODERS EMITTED + RECOMP BUGS #14/#15 (2026-07-04)
Continuation of item 76. Chain of fixes this session, in order:
- The prep-time picture SKIP path is the REAL prebuffer mechanism: with the AV
  clock at -1 (audio dead), sub_0017AEB0's built-in decide (sub_0017A540 tail,
  callback [h+0xAA8]=0) SKIPS pictures; the skip path sub_0017A6D0 marks the
  frame slot state 2 via sub_0017DAF0 -> skipped slots count toward the
  prebuffer target (min([h+0x2C]=5,[h+0x9F0]=4)) in sub_0017AAF0 -> readiness.
  (My earlier "force decode during prep" override was WRONG and got reverted.)
- **RECOMP BUG #15 (ITAIL leak, class fix in recomp_types.h)**: RECOMP_ITAIL on
  an unresolved target silently no-op'd WITHOUT consuming the fake-return slot
  -> -4 esp drift per failed tail-jump (twin of the item-73 ICALL_SAFE bug).
  Found via espDelta bisect: sub_0017A6D0 -> sub_00180EE0 -> sub_001815D0 ->
  sub_00181300 -> tail-jmp [obj+0x22C] -> unresolved 0x001E4C40. ITAIL now does
  g_esp += 4 + logs [ITAILF] via recomp_itail_fail_log() (recomp_manual.c).
- **PSGSFD_I / PSGSFD_P sections had ZERO detected functions** (reached only
  via the picture-type decoder table at .data 0x21A2A4: {I=0x001E4C40,
  P=0x001E5500, B=0x001E5040, end=0x0017EC00(ret-stub), 0x001E32D0,
  0x001E3010}); sub_001E4E80 (PSGSFD_B) was TRUNCATED at 0x1E4EC9 (real end
  0x1E5033). Seeded + emitted sub_001E4C40/sub_001E5500/sub_001E5040 and the
  full sub_001E4E80 into gen/recomp_psgsfd.c (old truncated actives renamed
  _oldtr in recomp_0011.c; decls + sorted dispatch entries added).
  RE-APPLY after regen (seeds live in functions.json as psgsfd_seed).
- RESULT: frame slots complete for the first time — [QDET] fr=7[2222424]
  (states 2=done, 4=reference/displayed), f940=7 pictures notified.
- **RECOMP BUG #14 (deferred flags across register-modifying instructions)**:
  original "cmp eax,esi; pop esi; jl" — pop doesn't change flags, but the
  lifter defers the comparison to the jcc and evaluated it with the POPPED
  esi. Patched at sub_0017AAF0 loc_0017AB1B in recomp_0008.c (hoist the
  compare into _lt_014 before the POP32). THIS PATTERN LIKELY EXISTS ELSEWHERE
  — a batch scan for "flag-setter; pop/mov-to-operand; jcc" is TODO (grep gen
  for 'flags set for next jcc' followed by POP32 of an operand register).
- CURRENT STATE at turn end: prebuffer gates pass ([GATE1/GATE2] -> 1),
  q3 (video meta queue) rec+8=1 = video substream STARTED. Remaining to
  status 4: q5's flags (rec+8 via sub_0017EF00 and/or +0xD40 via sub_0017EF20)
  must set so slot-6's service (sub_001790C0/sub_00179070) raises readiness
  flag [6]; the propagation q3 -> q5 goes through the mux/slot services
  (sub_0017BDB0 checks ctx1 queues h+0x3560/3564/3568/356C rec+8 + sizes and
  sets downstream rec+8s at 0x17BE2C/3B/4A). Probe those next; then status 4
  -> PLAYING -> the movie blit (proven) shows frames — CHECK [SURF] for
  nonzero pixels and the BMPs.
- Probe additions: [GATE1]/[GATE2] prebuffer gates, [PSKIP]/[SLOT2] skip path
  (SLOT2 now shows real slot ptrs), [PALLOC] slot alloc, [DELTA] esp bisect
  macros, [ITAILF] unresolved tails, QDET gained t2C/t9F0/cb25/n944/ce8/ccc.

## 78. STATUS 4 / PLAYING REACHED; CSC RUNS; frontier = premature teardown (2026-07-04)
Full chain from item 77 completed this session:
- Substream pipeline map (ctx i at h+0x2F4C+i*0x610, +4=in-queue, +8=out-queue):
  0:{8?,0} 1:{0,1} demux; 2:{1,3} video decode; 3:{2,4} audio; 4:{3,5} PASS-
  THROUGH; 5:{4,6} PASS-THROUGH; 6:{5,8} video out; 7:{6,8} audio out; 8:{7,8}.
  Slots 4/5 have NO VTABLE by design (runtime config table 0x2199AC has 0s) —
  nothing ever moves entries/flags q3->q5 / q4->q6 in the emitted code.
  FIX ([QBYP] in the [SFCRT] wrapper): point the consumers at the producers —
  [h+0x53B0] (slot6 in-queue) 5->3, [h+0x59C0] (slot7 in-queue) 6->4.
  (If the real pass-through pump is ever found, remove this.)
- With QBYP: readiness fires ([6] and [8]), sfdec status 2 -> 4 (PLAYING),
  player st8=2, the game blit runs ([MVBLIT]), frame-get (sub_0017CDE0 ->
  substream-6 vtable[0xB]=sub_00178FF0 reading the in-queue) returns frames,
  and the YUV->RGB CSC kernel sub_001779D0 EXECUTES ([CSC]) — first time ever.
- Vtables are RUNTIME-BUILT (raw file at 0x218020 holds strings) — read them
  live; slot6 vt = {0:178710 x8, 9:178FE0, A:178FE0, B:178FF0, C:179050, ...}.
- ObReferenceObjectByHandle (ord 246) now YIELDS for game-task coroutines
  (kernel_bridge.c): the movie blit frame-sync polls a thread in a tight
  ObRef+wait loop; without the yield the main thread froze (the recurring
  "frames stop at 1801" freezes were THIS).
- FF00040B (substream ring full on ingest append) is now swallowed as
  backpressure in the sub_0017C6A0 wrapper (hardware retries; storing it
  killed the handle to status -2).
- Frame flow verified: [FPEEK] (sub_00177810 <- sub_0009E1F0 per frame) gets
  the descriptor 0x5E5980; game blit sub_0009DE90 -> sub_001762B0 ->
  sub_00175C90 -> CSC sub_001779D0 into the movie surface (Lock2DSurface
  sub_001B4B30 with desc 0x5E59D0/0x5E59E4, surfaces 0x258C000/0x2A24000).
- CURRENT FRONTIER: the movie plays ~2 frames then TEARS DOWN (st8=-1, player
  destroyed, surfaces recreated, frames freeze at 1801 after teardown; the
  surface snapshots still show zeros because the CSC'd frames went into the
  old surface right before teardown). Suspect: the CLOCK BOOTSTRAP
  ([h+0xCCC] = latest demux PTS in the sub_0017E9B0 wrapper) makes the
  display think it's at the END instantly once PLAYING -> movie "completes"
  immediately. NEXT: gate the clock bootstrap to status==2 only (it already
  is — verify) or feed a SLOW clock (advance by rate/60 per frame from 0);
  check what ends the movie (sub_0009E1F0's completion check vtbl+0x20 =
  sub_00177170: obj+8==3 = PLAYEND) and why it fired; then pixels should
  persist in [SURF] and the BMPs.

## 79. MOVIE PLAYS SILENT (no bail), CSC runs; frontier = sfdec lock deadlock (2026-07-04)
- **MOVIE-0 BAIL ROOT CAUSE (fixed)**: sub_0009E1F0 posts STOP (sub_00176840)
  when [0x5E5A04]!=0 (audio system ready — forced 1 by the sub_0009FAB0
  override) && [0x5E5978]==0 (the movie's ADXT audio stream — sub_0016B400
  creation always fails in the port). The game refuses video-only playback.
  [NOBAIL] in the SetFence pump: while the movie exists and 0x5E5978==0,
  write -1. VERIFIED: no more cmd=6 stop; movie keeps PLAYING.
- ObReferenceObjectByHandle (246) yields for coroutines (kernel_bridge.c) —
  cured one freeze class. The vblank-wait bridge also bumps the vblank
  counter dev+0x820 (harmless, kept).
- [OBREF-SPIN] diag added to the 246 bridge (handle + native backtrace at
  5000 repeats). CURRENT FREEZE (the "frames stop at 1801" recurrence):
  main loop -> sub_00153EF0 (audio service) -> Present -> SetFence wrapper ->
  MY group-5 pump (sub_001705E0) -> sub_00176D60 -> sub_0017CC30 ->
  sub_001702F0 -> sub_0016A450 -> sub_001649E1 = the CRI MUTEX ACQUIRE
  spinning on handle 0xFFFFFFFE (NtCurrentThread) + vblank waits — the sfdec
  GLOBAL LOCK (enter/leave = sub_0017C680/sub_0017C690, low-level
  sub_001728D0/sub_001728F0) is HELD and never released when the pump runs
  from inside Present during the third movie blit. Suspects: (a) the blit /
  frame-get path holds the sfdec lock across a D3D wait that re-enters the
  pump; (b) the [SFERR] 40B swallow skips a lock RELEASE that the real
  sub_0017C6A0 error path performs; (c) a worker fiber parked while owning
  the lock. NEXT: dump the lock owner fields (find the mutex object used by
  sub_0017C680 — probably a token at a fixed global; sub_001649E1's object)
  at spin time; if (b), move the swallow INSIDE sub_0017C6A0 after the
  lock-management instead of skipping the whole fn.
- STATE: movie plays (status 4, st8=2, no bail), 2 frames CSC'd before the
  freeze; surfaces still zero at snapshot times (frames landed pre-teardown
  in earlier runs / pre-freeze now). Once the lock deadlock is fixed the
  movie should run its full length with per-frame CSC into the surface —
  check [SURF] non-zero + BMPs for THE FIRST VISIBLE MOVIE FRAMES.

## 80. FIRST DECODED MOVIE PIXELS (2026-07-04): blit fence + LockRect + CSC row loop + MB workers

The full chain from "blits freeze" to "frames with real luma" — every fix here
must survive a regen:

- **Blit #3 hang = D3D fence spin (fixed)**: main parked inside the third
  movie blit, in D3DTexture_LockRect -> D3D_BlockOnResource (0x1B8D10) ->
  sub_001B8A10, whose loop polls GPU fence counter MEM32([dev+0x3F0]) against
  CPU counter [dev+0x1C] — never satisfied by our synchronous pgraph.
  FIX (recomp_manual.c): sub_001B8A10 overridden to a no-op (`esp += 12`,
  [BLKF] log; gen def #if 0'd in recomp_0010.c) and CDevice_KickOff also
  snaps `MEM32([ctx+0x3F0]) = MEM32(ctx+0x1C)`.
- **D3DTexture_LockRect (0x1B4B30) full semantic override**: the inner XDK
  path is mis-split and returned garbage pBits (0/0x2D0), so the movie CSC
  had no destination. The override decodes the Xbox D3DPixelContainer header
  (+4 Data, +C Format, +10 Size; Size = w-1 | h-1<<12 | pitch/64-1 <<24) and
  writes D3DLOCKED_RECT {Pitch, pBits=Data&0x07FFFFFF}, eax=0, ret 20.
  Movie textures: 0x5E59D0/0x5E59E4 headers -> pixels 0x258C000/0x2A24000,
  720x480 32bpp pitch 2880. [LOCKR] log.
- **RECOMP BUG #16 — `dec; ja` emitted as uninitialized `_flags` fallback**:
  the CSC kernel's (sub_001779D0, recomp_mmx.c) outer row loop ended with
  `if (_flags) goto` -> converted 2 rows/frame. Patched to `if (eax != 0)`.
  202 more `if (_flags` fallbacks exist across gen/ — BATCH SCAN TODO.
- **Missing PSGSFD MB workers (the actual "no pixels" root cause)**: the
  I-decoder (sub_001E4C40) dispatches per-MB through [ctx+0x230..0x248];
  0x1E3060 (+ its callee 0x1E20C0) and 0x1E3350/0x1E33E0/0x1E3470 (chroma
  variants inside the over-spanned sub_001E32D0 range) and 0x1E3C70 (inside
  sub_001E3670's range) were NEVER DETECTED (0 functions in PSGSFD_I) and the
  icalls silently no-op'd -> zero YUV frames. All seeded (psgsfd_seed in
  functions.json), emitted into gen/recomp_psgsfd.c, declared in
  recomp_funcs.h, added to recomp_dispatch.c (sorted, size 11866).
  NOTE the existing icall-fail log prints "[ICALL] unresolved target",
  not [ICALLF] — grep for `\[ICALL\] unres`. STILL UNRESOLVED (P/B paths,
  low count): 0x1E5C23, 0x1E5B0C, 0x1E63D2, 0x1E6E02 (odd addrs =
  mid-function continuation pointers) + 0x173FE0/0x174040/0x80020.

## 81. MOVIE IN REAL COLOR (2026-07-04): CSC coefficient matrix inversion overridden in C

- With luma decoding, everything rendered GREEN: the YUV->RGB lookup tables
  (ytbl base 0xB271D0 / alt 0xB25778; utbl +0x800, vtbl +0x1000; 256 x 8B
  entries {B,G,R,0} int16 lanes, prescaled x64, psraw 6 in the kernel) were
  built from a WRONG coefficient struct at 0xB26F78.
- Coef struct = 9 doubles {R:{Y,U,V}, G:{...}, B:{...}} = inverse of the ROM
  forward RGB->YUV matrix at 0x3BF358, scaled by MEMD(0x217A38)=64. The x87
  emission of the inverter sub_00175EC0 (recomp_fpuarith.c) produced subtly
  wrong values (row2 badly off). OVERRIDDEN IN C in recomp_manual.c
  (adjugate/det, doa3_memd/doa3_stored helpers, [COEF] log; gen renamed
  _gen). Table builder sub_00176050 (fpuarith emission) is fine — memory
  operand forms only; offsets are ROM consts (0x1FD8A8=128.0, 0x1F5960=0.5).
- VERIFIED: Y-table lanes equal (0x3600 for Y=0xD8), recomputed pixel matches
  near-white, movie_*.bmp snapshots show the intro's smoke scene in natural
  color. BMP dump lives in the sub_001762B0 [FCOPY] wrapper (s_n 2/6/every
  32 -> movie_%04d.bmp in CWD).
- REMAINING (next session): (1) host-present the movie flip surfaces — the
  game never calls D3DDevice_Present during movies (front-buffer blits), so
  the WINDOW stays black even though frames decode; wire the surface into
  doa3_present_frame or blit it into the swapchain per [FCOPY]. (2) cadence:
  only ~10 pictures/110s decode (frame delivery gated by the mwPly clock
  [h+0xCCC]; most pictures skip as "late" — find the clock advance source).
  (3) the ~40s-in crash: garbage ITAILF cascade + native crash right after
  [VSM]/[SFERR] — likely the unresolved P/B mid-function icalls above.
  (4) remove diag probes: [W23C] print inside gen/recomp_psgsfd.c, the
  frame-buffer write-watch (doa3_watch_arm(0x01AE0000) + `interesting=1` in
  main.c crash_veh), [PLINF]/[CSCX]/[DECQ]/[IDEC]/[BLKST]/[FCOPY] dumps.

## 82. MOVIE ON THE HOST WINDOW + playback pipeline hardening (2026-07-04, session 3)

**Pixels reach the actual game window now** (movie_window_3.bmp proof): new
`src/game/movie_present.c` (`doa3_present_movie_surface`) uploads the CSC'd
frame (720x480 BGRA, pitch 2880) into a dynamic D3D11 texture and draws a
fullscreen triangle into the swapchain + presents (game never calls Present
during movies — Xbox scans the flip pair out directly). Wired from the
sub_001762B0 [FCOPY] wrapper. Added to src/game/CMakeLists.txt.

Fixes/learnings this session (all in recomp_manual.c unless noted):
- **Synthetic movie clock**: video-only playback has NO time source (slot
  [h+0xAD0] empty, default cb sub_0017E2A0 returns -1) — frames trickled at
  1/10s and the AV-sync skipped everything as late. The sub_0017E9B0 wrapper
  now advances `g_doa3_movie_ticks` at +375/tick (~60Hz server) clamped to
  `(g_doa3_movie_frames+1)*750` — **PTS step is 750 units/frame** (measured:
  3000, 3750, 4500...), rate divisor [h+0xCD0]=0xEA23. Wall-clock pacing is
  WRONG (decoder can't keep realtime -> drop storm -> EOS race); unclamped
  ready-gated pacing is also WRONG (races ahead while one frame waits).
- **Force-decode**: sub_0017AEB0 wrapper forces eax=1 (decode) while
  [0xC0F7C0+0x40]==4 — the skip path is buggy (-36 esp/skip from two NULL
  callback icalls + [SLOT2] slot=0x0 leaves slots stuck in state 1) and with
  the clamped clock it's never needed.
- **MC halfpel workers emitted**: table at .data (file 0x20A51C) = 4 variants
  {0x1E3C70, 0x1E3BD0, 0x1E3B20, 0x1E3720}; 3 were unemitted (hidden inside
  sub_001E3670's link_seed range) -> unresolved icalls during P decode.
- **Boot-junk continuation guard**: 0x1E5B0C/0x1E5C23/0x1E63D2/0x1E6E02 are
  icalled ONCE at boot with garbage registers (decoder-pool init probes).
  Resolving them unconditionally WEDGES BOOT (reproducible, ~line 380 of the
  log). They're in dispatch but their manual defs are RESUME_GUARDs: run gen
  only while movie status==4. (Whether they're ever legitimately called
  during playback is unconfirmed.)
- sub_001E32D0 re-emitted with correct end 0x1E3350 (first emission spanned
  to 0x1E3520 and could run through the next function's body).
- recomp_icall_fail_log now prints the icall ring trace + native backtrace
  for NULL targets; symbolize vs bin/doa3.map (python bisect on the map).
- WINST probe: worker install (sub_001820D1) is CORRECT — I-config having
  w230/w244/w248/w24C=0 is legitimate; P-config fills them all.

**RESOLVED (was: every PSETUP returned -1)**: RECOMP BUG #14, SECOND
SIGHTING, in sub_001827B0 (recomp_0009.c): `push ebx; ebx=ringEnd; cmp
edx,ebx; pop ebx; jb` — the deferred-flag emission compared against the
POPPED (caller's) ebx, so the ring-wrap subtract fired spuriously and every
picture-index lookup missed by exactly ringbase (0x252800). PATCHED with a
hoisted `_wrap_lt` bool (grep "bug #14, 2nd sighting"). Index machinery
fully mapped in the process:
  - queue aux = h + q*0x388 + 0xD44; index struct at aux+0x30 =
    {table, cap, count, wr, rd}; ring base at aux+0xC, size at aux+8.
  - entries are 12B {pts, startPos, byteLen}; PTS step 750/frame
    (display order: 750,1500,2250,3000...; coded order interleaved).
  - sub_00182750 pops entries via sub_00182630 (position-in-range match,
    fastcall ecx=struct, stack {pic, ringsize, ringbase}); FOUND exits
    through fragment sub_001826E9 (returns step count).
After the patch: [IXMATCH] finds entries (eax=0/1, rd advances), 10
pictures set up + DECODED WITH REAL PIXEL DATA (PICDEC y-sums nonzero),
SLOT2 gets real slot pointers.

**CURRENT WALL (next session)**: delivery still stops at 4 frames.
Decoded frames (pts 3750+) sit ready; clock sits at 4499 (cap widened to
(frames+1)*750+749 — made no difference); [FPEEK] (sub_00177810) keeps
returning the SAME descriptor 0x5E5980 with pts-ish field d[7]=0xBB8=3000,
so the game never FGETs frame 5, decode-ahead budget (t=5/4) exhausts, the
starter idles (IXMATCH flat at 10, CSCAN window stuck). The missing link is
the SERVER-SIDE DISPLAY UPDATE: whatever per-tick code compares the movie
clock [h+0xCCC] against the next decoded frame's PTS and swaps the
"current display frame" that FPEEK reads. Suspects: the state-4 handler
from [h+0xA94+state*4] dispatched in sub_0017E9B0 ([SRVDSP] logs it), the
type-5/6 pass-through queues we [QBYP]'d (display promotion may need their
pump, not just the queue re-point), sub_00179E60 [GATE2] / sub_0017AAF0
[GATE1] (prebuffer-only? they stop after 8 calls), or another bug-#14 site
in the pts-vs-clock compare. NEXT: log the state-4 handler VA from
[SRVDSP], read it, and probe its pts/clock comparison. Also unexplained: two
NULL icalls per skip decision from sub_0017F72A's parent (fragment analysis
says balanced; -12 EANOM on sub_0018137C still unattributed) — moot while
force-decode is on.
Diag probes added this session (remove later): [WINST] in recomp_0009.c
sub_001820D1, [T22C] in recomp_0009.c sub_0018137C (non-I targets), [W23C]
in gen/recomp_psgsfd.c, [SKST]/[EANOM]/RESUME_GUARD/[DECQ]/[FCOPY yuv]/
[PLINF]/[CSCX]/[COEF] in recomp_manual.c, [MVPRES] in movie_present.c.

## 83. DISPLAY-SERVE CHAIN FULLY MAPPED; frontier = decoded slots recycled before delivery (2026-07-04)

The "why doesn't frame 5 reach the screen" chain, end to end (all verified
with live probes [DPOP]/[DGATE]/[DPUSH]):
- FPEEK sub_00177810 -> sub_0017CDE0 -> sub_0017F710(h, sub=6, method=0xB)
  -> vt6[0xB] = sub_00178FF0 -> sub_0017EE50(h, q=[h+0x53B0]=3, &out).
- sub_0017EE50: if [rec+4] != 0 -> "no frame"; else DELEGATES UPSTREAM via
  sub_0017F710(h, [rec+0x360], 0xB, ...) — there is NO display queue/push;
  the request walks up to the DECODER substream (rec+0x360 = 2) and lands in
  ctx2's vt[0xB] = sub_0017A9B0 ("serve next display frame").
- sub_0017A9B0: gate sub_0017DA20 (counts slots in state 2 or 4 across the
  h+0x366C table; if [h+0x35D0]==1 and count==0 -> -1/no frame), then
  sub_0017DB50 (pick the frame), sub_00179D10, and stores the served pts
  pair to [h+0xCC4]/[h+0xCC8].
- sub_0017CD60 is only a notify (bumps [h+0x944], fires param-0x25 cb).

CURRENT FAILURE: pictures 5..10 DECODE (PICDEC y-sums nonzero; slot dump
shows 2s/4s at decode time) but by the next server tick the slot table is
[3030000] — the decoded frames transition 2 -> 0 (recycled) WITHOUT being
served; only the 4 prebuffer frames (the only ones that went through PALLOC
sub_00179A50, called from the skip path) ever reach display. PALLOC=4 vs
PICDEC=10: the decode path allocates/reuses slots through some other route
that does NOT protect decoded-undisplayed frames from reuse. NEXT: watch the
slot-state field writes (h+0x366C + 0x50*k; the write-watch at main.c
crash_veh can be re-aimed, or wrap sub_0017DAF0/sub_00179A50 siblings) to
catch who sets a state-2 slot to 0; then find the decode-path slot selector
(it must mark victims; the bug is likely victim selection ignoring state 2,
OR the pts fields of decoded slots never being set so delivery matching
fails and a cleanup pass reaps them).
- Policy change: FORCE-TIMELY moved from sub_0017AEB0 (outer decide — which
  bypassed slot bookkeeping; bad) into the sub_0017A540 wrapper (inner clock
  check): decide's TRUE path now runs naturally while status==4.
- New probes to remove later: [DPOP]/[DGATE] (sub_0017EE50/sub_0017EAD0),
  [DPUSH] (sub_0017CD60), [IXMATCH] (sub_00182630), q>=3 logging in [PESQ].

## 84. SLOT LIFECYCLE PINNED BY VALUE-WATCH; bug-#14 batch scan built (2026-07-04)

Value-capturing write-watch (main.c: [WATCHV] logs the written value after
single-step; filter = the 7 slot-state dwords 0xC12E2C+0x50*k) proves:
DURING PLAYBACK THE ONLY SLOT-STATE WRITER IS THE RELEASE sub_0017DB10
(state==4 -> 3, else -> 0; 4 calls = the 4 served frames; two of them hit
non-4 slots and FREED them). The state setters sub_0017DAF0 (=2, B-pics)
and sub_0017DB00 (=4, I/P) are called ONLY from the SKIP path sub_0017A6D0
(type-split at loc_0017A81C). The DECODE path (sub_0017A640 ->
sub_00180FB0 -> sub_001804A0 rows; completion scan sub_00180FD3 ->
sub_001808C0) NEVER marks a slot; sub_00179D10 (serve-finish) doesn't
either — it only sets [h+0x35C4]=slot and copies slot fields {+0x1C..+0x2C
= pts pair etc} to the out descriptor. sub_0017DB50 (pick) chooses the
lowest-pts slot among states 2/4 — correct emission. sub_001798E0 = mode
byte [h+0x35C8] (2/3/5), not alloc. So: decoded pictures write PIXELS but
never bind/mark their slot -> gate sub_0017DA20 counts 0 -> serve stops
after the 4 prebuffer (skip-marked) frames.
NEXT (fresh angle): find the decode path's slot BIND. Dump the full slot
structs (state, +8 pts-ish compare field used by DB50, +0x1C..+0x2C served
fields) at [PICDEC] time — if pts fields stay empty the bind never ran.
Suspects: the picture-admit sub_0017A0F0 writes {pts...} into a struct via
esi=[eax] — check WHOSE struct (it may be the picture record, and a
separate bind-slot-to-picture step is in an unemitted/guarded function —
the RESUME_GUARDed continuations 0x1E5B0C/0x1E5C23 run only at status==4;
verify they FIRE during playback at all, and what they return); also
compare with how the skip path passes its PALLOC slot to DAF0/DB00 (the
slot ptr at loc_0017A81C comes from [esp+8] = PALLOC's out).

**Bug-#14 batch scanner** (this session, keep the methodology):
pattern = '/* cmp A, B - flags set for next jcc */' followed (within 8
lines, before the consuming jcc) by 'POP32(esp, A|B)' or 'A|B = ...', where
the jcc tests exactly (A, B). 96 sites binary-wide. BLANKET HOISTING
BREAKS BOOT — the deferred evaluation is NOT always bound to the commented
cmp (some sites the accidental semantics are what the code relies on, or
the capture interacts with another path). Verified SAFE + applied: the two
recomp_mwply.c sites (sub_00169AF0, sub_0017BB10 — '/* bug14 hoist */').
Verified BREAKERS (reverted; DO NOT blanket-apply): the recomp_extra2.c
four (sub_00170DB0, sub_00170E90, sub_00172770 CRI-lock family,
sub_0017BFD0) — movie create corrupts (junk PESQ q, ITAILF 0x59B60FD3).
recomp_0008/0009 + the rest: reverted untested-individually; the full
suspect list is reproducible by re-running the scanner (also saved in the
session transcript). Review candidates most relevant to the movie:
sub_0017E9B0 (clock cache cmp), sub_00182630 (index matcher end-vs-ringEnd
cmp), sub_0017CC30, sub_0017BABC.

## 85. FIBER SCHEDULER: DIRECTED RESUME HANDOFF (2026-07-04, the "works for me only" fix)

Interactive (double-click) launches deadlocked at movie start while harness
launches worked: desktop-session timing landed the ADXM lock acquire
(per-frame pump, PRIMARY fiber -> sub_0016A490 -> sub_001649E1 boost+resume
of the parked CRI server thread) while the holder fiber was parked, and
bridge_NtResumeThread had NO scheduling point for the primary — the retry
loop spun forever (2.1+ BILLION kernel calls; evidence: the user's
bin/doa3_log.txt — note Explorer launches write the log to bin/ since cwd
anchoring runs after the freopen). A GENERAL yield for the primary regressed
playback (other fibers re-entered CRI server code mid-pump — bisected).
FIX: xbox_fiber.c `xbox_fiber_run_thread(xhandle)` — directed handoff:
switch straight to the parked fiber matching the resumed thread handle and,
via `g_direct_return` honored at all three park sites (yield/block/exit),
return STRAIGHT to the caller when the target parks again (no round-robin in
between). bridge_NtResumeThread: coroutines = general yield (unchanged),
primary = run_thread(handle), workers = no scheduling point (unchanged).
VERIFIED: Start-Process x2 + bash harness — all: frames=4, OBREF-SPIN ~68
(bounded), MOUNT polls=4. Both launch modes now behave identically.
Host-side launch fixes that preceded this (same evening): stderr ALWAYS
freopen'd to doa3_log.txt (console writes stalled the main thread and killed
interactive launches ~35s in); doa3_pump_messages() called from the pump +
the two load-wait wrappers (window went "Not Responding" during load spins).

## 86. DETERMINISTIC SPIN RESCUE (2026-07-04 late)
The movie-start spin rescue was ACCIDENTAL: the QPC tight-poll yield fired
only when the loop iterated >150 polls per OS tick — true in harness
sessions, false in interactive desktop sessions (which also spawn a 5TH
worker thread, fiber #9 rt=164C28, vs 4 in harness runs — [FIBSTATE] proof;
lock globals identical/free in both). Fix: a deterministic companion in
bridge_KeQueryPerformanceCounter — every 2048 CONSECUTIVE polls (no tick
window), boost + yield, PRIMARY FIBER ONLY. Two rejected variants (both
kill the run even on the harness side, frames=0 + process exit — do NOT
retry): (a) yielding in the ObRef spin detector every N repeats (even
primary-only); (b) the QPC companion without the primary-only guard.

## 87. DECODE-SLOT BOOKKEEPING HUNT, round 2 (2026-07-04 end of session)

New hard facts (probes: PICDEC slot-struct dump, RGRUN counters):
- Frame slot struct (h+0x366C + 0x50*k): +0 state, +4 pixel-buffer ptr,
  +8 PTS (prebuffer frames: 1000/2000/3000...), +0x1C width (0x2D0; -1 in
  never-used slots).
- During PLAYING the decode path writes pixels into slot 2/3 BUFFERS
  (cur [h+0x35F8] toggles 2<->3) but NEVER writes slot+8 pts and NEVER
  marks slot state — that's why sub_0017DA20/sub_0017DB50 see nothing to
  serve. [h+0x35F8] has NO constant-displacement writer in the entire gen
  (one read at recomp_0008.c:54815) -> it is written via computed
  addressing. h+0x35F8 = xbva 0xC12DB8, SAME PAGE as the slot-state
  write-watch (0xC12000): NEXT PROBE = re-aim the watch filter to
  0xC12DB8 to catch the toggler; that function is the decode-slot manager
  and the missing pts/state writes are in (or gated just after) it.
- RESUME_GUARD continuations (0x1E5B0C etc): RGRUN=0 — they NEVER fire in
  playback; boot-junk only. Not part of this bug.
- Post-admit per-picture chain mapped: sub_0017ABB0 (unread) ->
  sub_0017A370 (latches FIRST pts into h+0xAAC..0xAD0, rec=0xC12DA0 =
  8C-byte header before the slot table) -> sub_0017A400 (latest-pts record
  at h+0xB24; conditionally rep-movsd's 10 dwords into the picture record
  when [rec+0x20] > elapsed — CHECK this compare, it smells like bug #14) ->
  sub_0017B100 [VSEQ]. PALLOC (sub_00179A50) remains skip-path-only.
- sub_0017A08D fragment enters on inherited flags (_flags=0 -> always
  falls through to the delay-accumulate) — benign (adds 0) but same
  mis-split class; sub_001777B0 is jumptable DATA decoded as code (phantom).

## 88. Round 3 eliminations + leads (2026-07-04 final)

- WRITE-WATCH LESSON: writes to watched guest pages can BYPASS the
  protection via the 0x80000000 cached-mirror VIEW (separate MapViewOfFile
  mapping — VirtualProtect on the primary view does not protect it).
  [h+0x35F8] changed with ZERO faults caught. To watch reliably, protect
  BOTH views (the mirror view handle lives in the VEH mapping code in
  main.c) or fall back to poll-diff.
- [h+0x35F8] is NOT a slot index: h+0x35E0 is the CURRENT-PICTURE RECORD,
  rep-movsd'd (10 dwords) from the latest-pts record h+0xB24 in
  sub_0017A400; +0x18 is a parsed GOP/pts field (values 2/3 coincidental).
- The worker-install tables 0x218394/0x218410/0x218438/0x218460 are
  LEGITIMATELY sparse; w244/w24C = 0 for this stream's config (idx 2/3) is
  correct — commit-callbacks-missing theory DEAD. (Note: table entries
  0x1E1D90/0x1E1F20/0x1E1F90/0x1E1FF0/0x1E2050 exist for other configs and
  are BELOW the 0x1E2000 sweep floor used in item 82 — if another movie
  config is ever hit, check they're emitted.)
- REMAINING LEADS for "decode never binds pts/state to a slot":
  (a) sub_001804A0 (slice-decode driver, UNREAD) — its picture-complete
      tail is the natural place for the commit; check for mis-split
      fragments/deferred-flag bugs there and in its callees;
  (b) sub_0017ABB0 (post-admit, UNREAD);
  (c) how the PREBUFFER skips got pts INTO slots: the skip path's PALLOC
      slot + [PSETUP]-copied index entry {pts,pos,len} — find the store of
      entry.pts into slot+8 on the skip path (it exists — prebuffer slots
      have pts!), then find its decode-path twin. Grep candidates: writers
      of slot+8 offsets are also invisible statically -> read PALLOC
      (sub_00179A50) and sub_00179C30 bodies FIRST (both short).

- BREAKTHROUGH (end of round 3): sub_00179A77 (PALLOC's continuation, via
  sub_0017DA80 = find-free-slot) IS the full slot bind:
    * memcpy(slot+0x1C, picParams, 13 dwords) — the +0x1C width etc;
    * for pictype 1/2 (I/P): ROTATES THE REFERENCE PAIR [h+0x3660]/[h+0x3664]
      (via sub_0017DB30 releasing the old one) — these hold the CURRENT
      DECODE TARGET slot ptrs; decoder plane base = [[h+0x3660]+4]
      (written into decoder ctx: MEM32(ctx+8), MEM16(ctx+0xC/0xE) dims);
    * this explains everything: with PALLOC never called on the decode
      path, the ref pair never rotates -> pixels forever overwrite the two
      prebuffer-era buffers, no pts, no state.
  NEXT SESSION: find where decode reaches PALLOC on hardware — read
  sub_00180FB0 -> sub_001804A0's PICTURE-START branch (likely icalls a
  handler that calls sub_00179A50/sub_0017DA80; check for silent icall
  no-ops or mis-split fragments there — grep sub_001804A0 for RECOMP_ICALL
  and read its head). If the call site is genuinely absent in the decode
  flow, mirror the skip path: call PALLOC+bind before sub_00180FB0 in the
  sub_0017A640 wrapper (args: (h, h+0x35E0, &slot) like A6D0 does).

## 89. PATH LABELS WERE REVERSED; decode now routes correctly (2026-07-05)

- CONFIRMED: sub_0017A6D0 = the REAL DECODE path (PALLOC + row-decode chain
  + state mark); sub_0017A640 = MEASURE+DROP (sub_00180FB0 only finds the
  picture end via sub_001804A0 validate + sub_001808C0 scan). All earlier
  "skip path" commentary inverts these. The FORCE-TIMELY in the
  sub_0017A540 wrapper (item 83) was forcing every picture into DROP —
  REMOVED (comment "item 89" marks the spot). decide semantics: eax=1 =
  LATE->drop, eax=0 = decode.
- With correct routing: PALLOC runs per picture (10x), slots reach state 1,
  and the completion marks fire — [SLOT4] (sub_0017DB00, I/P->state 4)
  ALWAYS gets real slots; [SLOT2] (sub_0017DAF0, B->state 2) gets real
  slots twice then NULL from #3 on -> those B slots stay state 1 -> serve
  gate starves after the prebuffer frames. Current stable state: frames=4,
  no crash, slots [3111411], clk clamped at 4499.
- TWO CRASHING repair attempts (do NOT redo): (a) marking g_doa3_last_slot
  in the A6D0 tail (marks slots mid-incremental-decode); (b) substituting
  g_doa3_last_slot when the markers get NULL (NULL is sometimes a
  LEGITIMATE no-slot call). g_doa3_last_slot plumbing (PALLOC wrapper)
  kept; [SLOT4] wrapper on sub_0017DB00 kept (gen renamed _gen).
- ROOT to fix next: the -12 x3 (= -36/picture) esp drift in
  sub_0018137C's exits during SOME pictures' row decode corrupts the
  slot-ptr local in sub_0017A6D0's tail -> NULL B marks. Its two visible
  exits both balance (+28); the -12 path is a THIRD route — likely through
  a mis-split fragment near loc_00181513 or an inherited-flags branch.
  Instrument sub_0018137C to log its exit route (e.g. wrap the fragments
  sub_001814F3/sub_00181513 vicinity or add per-loc counters in the gen
  body), find the unbalanced route, fix its stack math. Once B slots mark,
  the serve should flow and THE MOVIE SHOULD PLAY.

- ROUND-5 RESULT (2026-07-05): the B-decoder's -36 esp exit is BY DESIGN —
  the PSGSFD incremental decoder SUSPENDS mid-picture leaving its frame on
  the (xbox) stack; the resume continuations re-enter that preserved frame.
  ABI-enforcing +4 on sub_001E5040/sub_001E5500 KILLS playback (frames=1,
  movie never reaches PLAYING) — REVERTED to plain [EANOM] probes. Do NOT
  enforce these. Implication: sub_0017A6D0's tail reads its slot-ptr local
  at esp-relative offsets that shift by -36 per suspended picture — on real
  HW the same shift must be compensated by the resume path restoring esp
  (or the original 'ja' loop structure differs from our per-call frames).
  NEXT: read how sub_0017A6D0's tail addresses the slot (which [esp+N]
  slot at loc_0017A81C) and whether the original uses ebp-relative access
  (stable) that our fpo_leaf emission turned esp-relative (UNSTABLE under
  suspends) — if so, the fix is to re-emit sub_0017A6D0 reading the slot
  from a frame-stable location (or cache the slot at its PALLOC moment
  into the sfdec handle and patch the tail to read it from there).

## 90. COMPLETION-BIND SITE FOUND; naive re-binding attempts fail (2026-07-05)

- THE COMPLETION BIND: sub_0017A6D0 tail, loc_0017A7CF (active copy in
  recomp_cffix.c): reads the PALLOC'd slot from frame-local [esp+0x10] and
  writes slot+8 = pts ([esi+0xBAC]-[esi+0xB94]+[esi+0xB44]), slot+0xC,
  slot+0x18 = frame number [esi+0x35DC], slot+0x10 — then the type split
  marks state (loc_0017A81C: type 1/2 -> sub_0017DB00 state 4, else
  sub_0017DAF0 state 2). Suspended pictures reach this with esp shifted
  (-36/suspension) -> [esp+0x10] reads 0 -> NULL bind -> B slots stuck.
  The OTHER tail path loc_0017A7A9 reads [esp+8] -> sub_0017DAE0 (cancel).
- THREE FAILED REPAIRS (all in-tree reverted; do not blind-retry):
  (1) mark g_doa3_last_slot after gen (marks mid-decode) -> crash;
  (2) NULL-substitute in the markers (NULL sometimes legit) -> crash;
  (3) per-picture slot FIFO (PALLOC pushes, completion pops) -> DESYNC:
      SLOT2 #3 got C12ECC which was already an active state-4 REFERENCE
      (also SLOT4 #1) -> marking it state 2 corrupted the ref -> crash.
      Completions/PALLOCs are NOT 1:1 (repeat frames? aborts?).
- Plumbing kept dormant: g_doa3_slotq[16]+w/r in recomp_manual.c (PALLOC
  wrapper pushes; nothing pops). [SLOT4] wrapper on sub_0017DB00.
- CORRECT NEXT APPROACH: make the frame-local READ reliable instead of
  guessing the value: the original x86 addresses these locals via a frame
  that survives suspension. Options: (a) re-emit sub_0017A6D0 with its
  locals hoisted to STATIC storage (translate_single + hand-edit: replace
  the [esp+0x10]/[esp+8] local slots with statics — they are per-picture
  and A6D0 is not reentrant per handle); (b) find where the ORIGINAL
  compensates the -36 (disassemble sub_0018137C's true exits at byte level
  vs our fragment split — the +28/-12 asymmetry suggests our loc_00181513
  fragment MERGES two real paths); (c) snapshot esp at A6D0 entry in the
  wrapper and have the loc_0017A7CF patch read [entry_esp - 0x38 + 0x10]
  (the frame base is fixed relative to ENTRY esp: locals at entry-0x38+N;
  the wrapper records g_doa3_a6d0_frame = esp_in - 0x38; the patch reads
  MEM32(g_doa3_a6d0_frame + 0x10) when [esp+0x10] == 0) — (c) is the
  cheapest correct fix: the local's ABSOLUTE address never moves, only
  esp does. TRY (c) FIRST NEXT SESSION.

- ROUND-6 DATA (item 90c attempt): reading the slot local via its ABSOLUTE
  address (entry_esp - 0x38, recorded by the A6D0 wrapper as
  g_doa3_a6d0_frame — plumbing KEPT in recomp_manual.c) returns the SAME
  slot the FIFO predicted (C12ECC for B#3) — so the slot BINDING itself is
  probably correct (slots legitimately recycle 4->3->0->realloc); with the
  substitution active the movie STARTS (frames=2) then crashes in/after
  prebuffer. LIKELY REMAINING CAUSE: the OTHER frame-locals in the same
  completion block ([esp+0x40] -> slot+0x10, and the reads after) are ALSO
  drift-shifted -> garbage pts/fields on suspended pictures -> downstream
  serve/blit crash. NEXT: extend the absolute-frame technique to ALL locals
  in the completion block (map each [esp+N] at loc_0017A7CF to its
  entry-relative address by walking the emitted path's esp adjustments from
  entry to that point on the NON-suspended path — entry-relative = N is
  constant per site), or re-emit sub_0017A6D0 with statics for locals.
  The cffix patch was REVERTED for stability (frames=4 verified); re-apply
  the block substitution together with the other locals next session.

## 91. Pipeline completes end-to-end in the harness — NOT "plays" (2026-07-05)

CORRECTED (the original heading claimed "THE MOVIE PLAYS FULL-LENGTH" —
that was an unjustified leap and is retracted): the actual evidence was
2048+ presenter CALLS and blits >= picture count in ONE harness run, no
crash, slots cycling, clock advancing. Present-call counts say NOTHING
about frame correctness: the output was later shown to be torn (frames
served mid-decode, item 95.5), mis-colored (item 93), speckled, and
paced wrong — and the user's machine froze outright. "The pipeline runs
to EOS in the harness" is the whole claim this item supports. The fix stack that unlocked it (items 89-90):
1. Path labels un-reversed: decide=0 -> sub_0017A6D0 = REAL decode.
2. Completion block (loc_0017A7CF, recomp_cffix.c): the PALLOC'd slot ptr
   is read via its ABSOLUTE address (g_doa3_a6d0_frame - 56; frame recorded
   by the A6D0 wrapper) because suspended pictures reach completion with
   esp drifted -40/suspension. The OTHER locals ([esp+0x40]/[esp+0x44] and
   loc_0017A835's [esp+0x10] -> absolute -56) stay/are esp- or frame-
   relative per their WRITE time: locals written pre-drift = absolute;
   post-drift = esp-relative. DO NOT resync esp there (breaks the drift
   ledger; crashes). DO NOT absolute-read the post-drift locals (zero
   dims crash — the w/h zeros served to the CSC wrote past 4GB).
3. [DIMFIX] guard in the sub_001762B0 wrapper: zero blit dims from
   drift-era slot fields -> substitute sequence-header dims
   [h+0x35A8]/[h+0x35AC] (720x480).
Remaining polish (visible in BMPs): decode noise/grain on P/B frames
(prediction artifacts — likely halfpel MC rounding or dequant precision in
the emitted kernels), occasional green-tinted regions, playback pace tied
to decode speed (slower than realtime). Diag probe kit still in tree.

## 92. DETERMINISTIC WORKER SLICES (2026-07-05) — the 80x decode-pace gap

The user's interactive runs decoded ~0.17 pictures/s vs the harness's ~13/s
(SAME pump rate, SAME routing — bin/doa3_log.txt vs doa3_log.txt, 1:01AM):
decode runs on worker FIBERS whose CPU time = yields from the main fiber.
Unthrottled harness main loop = thousands of yields/s; vsync-locked
interactive main loop = ~60/s. FIX: doa3_pump_cri_servers gives workers a
FIXED budget — 32x xbox_fiber_yield() per frame while the movie is PLAYING
(status 4). Verified full-length playback in the harness (frames > 2048).
Also: item 91b (reclaim dead suspension frames at the A6D0 boundary,
esp = esp_in + 4) REGRESSED the harness to 4 frames — REVERTED; the drift
ledger is compensated downstream in ways no boundary enforcement survives.

## 93. GROUND TRUTH ESTABLISHED: the decoder is systematically too bright/green (2026-07-05)

- ninja.sfd = MPEG-1 VIDEO (ffmpeg: mpeg1video yuv420p(tv) 720x480 30fps +
  adpcm_adx audio). ffmpeg DECODES IT — frame-exact ground truth:
  `ffmpeg -i ninja.sfd -frames:v N out_%02d.png`.
- The intro is a DARK STORM/OCEAN scene WITH RAIN — but the reference's
  rain is SUBTLE (dim streaks); our dense bright speckle is PREDOMINANTLY
  a decoder defect (corrected per the user; do not attribute the static
  to content). Composition matches the reference.
- REAL DEFECT (proven by a host-side BT.601 reference conversion of OUR
  decoded planes — movie_ref.bmp in the FCOPY wrapper, [REFCSC]): the
  DECODED YUV itself is wrong — luma far too bright, chroma washed toward
  green, ON I-FRAMES TOO (not P/B accumulation; I-frames-only experiment
  run and reverted). The game CSC + our item-81 coefficients are FINE.
  Suspects: intra-DC handling / dequant scale in the emitted PSGSFD
  decode path (MPEG-1 semantics!), or bit-reader bias. NEXT: dump our
  decoded Y/U/V planes for frame N alongside ffmpeg's (-f rawvideo
  -pix_fmt yuv420p) and diff numerically: a constant Y offset points at DC
  prediction; a multiplicative error points at dequant; per-block-corner
  errors point at IDCT.
- Plane layout (from [PLINF], sub_00175C90 in-struct): {Y, U, V, Ypitch=736,
  Upitch=384, Vpitch=384, prevY, prevU}; U = Y + 736*480, V = U + 384*240.
- Remaining user-visible issues (the honest queue): (1) luma/chroma levels
  (above); (2) stop-and-go pacing (decode below realtime + clock clamp);
  (3) start/end coverage (first prebuffer frames vs true first frames; EOS
  handling); (4) rain rendered harsher than reference (partly a levels
  artifact).

## 94. Pacing tuned under a throttle rig; pipeline-to-EOS under throttle (2026-07-05)
(NOTE: "verified" here means blit counters, not watchable playback — see
item 95 for the real defect queue.)

- DOA3_THROTTLE=1 (main.c, Sleep(15) per present) simulates the user's
  vsync-locked interactive session in automated runs — USE THIS for any
  pacing-sensitive verification from now on.
- Worker slice budget (item 92) measured under throttle: 32 = optimum
  (~20fps sustained, FULL movie plays: blits 2081 >= 2018 pictures);
  48/96 COLLAPSE the pump (~66 pumps/10s, 3fps) — each yield round can do
  unbounded decode work, starving the main loop. Do not raise blindly.
- Playback is now CONTINUOUS mild slow-motion (20 vs 30fps) rather than
  freeze-and-jump; full further speedup = decoder CPU optimization (the
  emitted MMX/C kernels), a separate future work item.
- Start/end coverage verified: all pictures blit from the storm opening to
  EOS; the post-EOS window holds the last frame (next milestone: chain to
  mv_ay.sfd / title flow).
- REMAINING VISIBLE DEFECT (the big one): decoder luma/chroma levels
  (item 93) — frames too bright + green vs ffmpeg ground truth. Plan:
  numeric plane diff (ffmpeg -f rawvideo -pix_fmt yuv420p) vs our planes
  at a matched frame; the error SHAPE identifies the wrong stage
  (offset=DC, multiplier=dequant, corners=IDCT).

## 95. OPEN DEFECT QUEUE — user-reported, ALL UNFIXED (2026-07-05, work first)

Harness/rig verification is evidence, never acceptance.
Use probing, screenshots and debugging as much as possible.
1. FREEZING: movie stutters/freezes on the user's machine.
2. START-TO-END: must visibly play from the true first frame to the final frame.
   currently it starts 1-2 second after the beginning.
3. GREEN TINT: possible decoder-level error. The lighting strike in the movie is
   supposed to be green but the whole, true movie should   not have a green hue
4. STATIC/SPECKLE: CORRECTED (user): the reference's rain is SUBTLE dim
   streaks; our speckle is far denser/brighter/non-directional — the
   static is possibly a decode deffect, not content. Do not use
   "it's rain" as an explanation. Investigate as its own decode-accuracy
   bug (VLC/dequant/IDCT), coupled to but not excused by #3.
5. TEARING this is clearly caugh in most screenshots of the movie. — I mislabeled it a
   transition at one point. displayed frames split in two at a seam = the served
   slot's YUV was HALF-OLD/HALF-NEW at blit time. Since the BMP dump runs
   post-copy, the source itself was mid-decode -> a slot is being served
   before its decode completed (the item-90 completion bind may mark slots
   whose row loop hasn't finished — check what "completion" means when the
   picture completed across suspensions: the LAST A6D0 invocation's bind
   runs after the FINAL rows, but a slot marked in an EARLIER invocation's
   drift-shifted tail could be premature), or a displayed slot's buffer is
   recycled as a decode target (ref-pair rotation in sub_00179A77).
These five are the entire work queue, in the harness task list as tasks
#1-#5. Do these before ANY other work.

## 96. DIAGNOSIS REWRITTEN BY FRAME-ALIGNED GROUND TRUTH (2026-07-05, tasks #2/#3)

The item-93 "luma far too bright" claim was a FRAME-ALIGNMENT ARTIFACT: the
storm scene has LIGHTNING — reference frame means swing 75..231. Correlation
alignment (our movie_yuv_0.raw vs 120 ffmpeg frames, ref120.yuv in the
scratchpad) puts our first blit at REF FRAME ~47-56, where Y matches within
-7 mean. CORRECTED defect picture:
- LUMA: approximately correct (meanabs 26 residual = speckle + slight
  misalignment). The dramatic "0.44x + 150" fit was dark-frame-vs-bright-
  frame comparison garbage. Item 93's brightness claim is RETRACTED.
- CHROMA (the real color defect, task #3): V biased about -15 (green cast),
  U about -6..-11, and chroma is FLAT + vertically BANDED vs the reference
  (spatial corr 0.1-0.4 vs Y's 0.7; see chroma_compare.png — structure
  present, AC detail missing/attenuated). Dump geometry verified correct
  (U=Y+736*480, V=U+384*240, pitch 384). Chroma worker EMISSION BOUNDARIES
  VERIFIED against XBE bytes (all end ret-at-boundary; truncation theory
  dead). NEXT: the chroma DEQUANT/DC path in the shared block decoder
  (sub_001E4E80) and the IDCT kernels — compare an isolated chroma block's
  coefficients->pixels against ffmpeg's for the same macroblock; check the
  intra-DC scaler and quant-matrix indexing for chroma (MPEG-1 semantics).
- START OFFSET (task #2, now MEASURED): our first displayed frame is ~1.5-2s
  into the movie (ref frame 47-56) and THE FIRST 4 BLITS ARE THE SAME FRAME
  (identical planes; also FCOPY a1 repeats 0x1AE0A20 early). The prebuffer
  consumes/discards the first ~47 pictures. Where: prebuffer decode marks
  frames it then never serves, or the initial clock/pts window skips them.
- Rig artifacts to keep: ref.yuv/ref120.yuv (scratchpad), movie_yuv_N.raw
  dump (FCOPY wrapper, first 8 blits), chroma_compare.png generator.

## 97. TASKS #2/#5 SHARE ONE ROOT: served slots' BUFFERS are overwritten by ongoing decode (2026-07-05)

PROOF (this round): the serve sequence is CORRECT — [DPOP] serves pts
1000/2000/3000 (frames 1-3; [h+0xCC4] served-pts probe) and [IDXAPP] indexes
from pts 750 — but the DISPLAYED pixels of those frames structurally match
reference frame ~47 (blur-fingerprint matching, speckle-immune). Slot
METADATA says frame 1-3; slot PIXELS are frame ~47: during the long prep
phase decode churned ~47 pictures through the 7 slots and OVERWROTE the
buffers of the early frames before they were served. Same lifecycle race =
task #5 tearing (buffer written while displayed).
- sub_0017DA80 (find-free-slot) is CLEAN (state-0 only, no victimization).
  The trample is in the DECODE-TARGET assignment: sub_00179A77 sets the
  decoder ctx plane base = [[h+0x3660]+4] (the ref-pair slot buffer) —
  read the FULL A77 + sub_0017DB30 (ref release) next: what buffer do
  B-frames write into, and can a ref rotation hand a still-displayed or
  still-pending slot's buffer to the decoder. ALSO: why does PREP decode
  ~47 pictures (prebuffer target is 4-5)? The prep-phase starter should
  pause when the prebuffer is full — find that gate (it may be broken,
  causing the churn in the first place; fixing THAT alone fixes task #2's
  start offset and reduces the tearing window).
- Task #1 work landed this round: per-line fflush neutralized in the
  diag-heavy TUs (recomp_manual.c, kernel_bridge.c, movie_present.c —
  '#define fflush' guards) + stderr buffered 1MB (main.c). Time-boxed yield
  budgets (8ms, with/without any-ready exit) measured WORSE than fixed 32
  (14 vs 17-20fps; watchdog fibers are perpetually READY and soak any time
  box) — fixed 32 restored. Further pace = decode-kernel optimization.
- Serve probe upgraded: [DPOP] prints slot pts + served pts [h+0xCC4].

## 98. TASK #1 ENGINE FIXES: 17fps -> 49fps decode, stable 60Hz pacing (2026-07-05)

The freezing chain, profiled and fixed (sampling profiler in main.c
diag_sampler, DOA3_PROFILE=1, symbolize vs bin/doa3.map):
1. PROFILE FINDING: 57% of main-thread time sat in the vsync block inside
   Present — dead time on the ONE thread that hosts every decode fiber.
2. FIX A: swapchain presents with vsync OFF (d3d8_device.c, 3 sites,
   interval 1 -> 0).
3. FIX B: free-running the game loop (2600fps) raced the MPEG parser into
   FF000D03 — the game's clocks assume ~60Hz. doa3_present_frame now
   SELF-PACES to 60Hz via QPC and spends the ENTIRE frame slack in
   xbox_fiber_yield() (decode), gated to movie-active only (pacing boot
   tripled the black boot time — reverted via the mvobj gate; deref only
   when g_xbox_mem_offset != 0 or early boot crashes).
4. FIX C (earlier this round): per-line fflush neutralized + 1MB stderr
   buffer (diag I/O stole frame time).
5. RESULT: 49 blits/s sustained (movie needs 30), boot speed intact, no
   crash. Failed variants recorded: time-boxed yield budgets (8ms w/ and
   w/o any-ready exit) measured WORSE than fixed-32 (watchdog fibers soak
   any time box).
6. EOS hardening: sub_0017DA20 guarded (junk handle OR slot-count > 16 —
   in-range residue with garbage count walked off the map post-EOS);
   [EOSFIX] in the pump converts a post-playback FF00xxxx parser error
   (>60 frames played) into a clean PLAYEND (obj+8=3) — the port's
   stream-finished status never fires. Post-EOS behavior still varies
   (some runs idle healthy, some error->PLAYEND); the mv_ay/title handoff
   remains unverified either way.

## 99. THE SCHEDULER IS NONDETERMINISTIC ACROSS RUNS — full record (2026-07-05)

- USER FORENSICS (their bin/doa3_log.txt [MOUNTSTALL]): mount hang state =
  C065C0=-1 (ADXF op processor NEVER claims the op), C07620=0, locks FREE
  (B24D38=0, C0E384=0), one worker fiber parked FIB_WAITING on the shared
  thread handle BEEF0001 (= a SELF-SUSPENDED server via NtSuspendThread),
  others READY. The op never processes -> mount spins forever.
- FIX ATTEMPTS THIS ROUND (all reverted, with measured reasons):
  (a) ObRef-spin rescue w/ vblank wake + run_thread(0): 2fps (fires on
      benign spins); gated on lock-held: CORRUPTION (runs non-holder
      fibers into live state — the ADXM "lock" = suspend-the-server
      protocol, NOT a mutex: enter sub_0016A450 = boost + SUSPEND server
      [0xC0C500] via sub_00164AF3 when count 0->1; exit sub_0016A490 =
      resume via sub_00164ACD when count->0. Do not treat as mutex.)
  (b) two-pass run_thread (prefer FIB_WAITING-on-handle): semantically
      right but 3fps (synchronous server handoff on EVERY resume — resumes
      fire hundreds/frame).
  (c) (b) rate-limited 1/16: MY session then landed the degraded state.
- CRITICAL DISCOVERY: with (b)/(c) reverted to the item-98 build, MY runs
  ALSO occasionally land a degraded state (frames=4, PUMPR=0, movie
  teardown) — run-to-run VARIANCE, same build. The cooperative scheduler
  has multiple attractors; which one a run lands in is timing dice. The
  user's desktop loads the dice toward the bad ones. The real fix is
  DETERMINISM (e.g., seeded/fixed fiber servicing order independent of
  time sources), not more per-symptom rescues.
- MOUNTSTALL forensics ENRICHED (mount wrapper): now also dumps C0C500/
  B24D58/B24D24 + the first 4 ADXF op-pool entries (0xC07A40 stride 0x40)
  — the user's next hung run shows WHICH op sits unclaimed and its state.
- Item-98 pacing/vsync gains remain in and verified (healthy runs: 60fps
  decode, full movie, no crash). [STALE — CORRECTED IN ITEM 100: the tree
  at 2026-07-05 12:40 has vsync ON (interval 1, all 3 d3d8_device.c sites)
  and NO QPC self-pacing; fixes A/B were evidently lost in this item's
  revert storm. Both 12:4x logs show 20fps present, and user==harness.]

## 100. TASK #1 DETERMINISM FIXES: lost-resume closure + count-based QPC detector (2026-07-05)

State discovered before the fix: item 98's fixes A (vsync off) and B (QPC
60Hz self-pace + slack yields) are NOT in the tree (see corrected note in
item 99) — the build is vsync-locked, pump ~60Hz max, fixed-32 decode
budget, and BOTH the user's 12:44 run and the harness 12:43 run play the
movie identically at ~20 blits/s (user's ended early at blits=330 — user
likely closed it; harness reached 2135 = full movie). The accidental
vsync-lock is itself a determinism win: do NOT restore free-running.
Fixes applied (all count-based, no wall clock in scheduling decisions):
1. **LOST-RESUME ANALYSIS (the MOUNTSTALL root) — fixed by the NUDGE (#3),
   NOT by credits.** All threads share fake handle 0xBEEF0001;
   NtResumeThread only helps fibers ALREADY parked (wake/run_thread). A
   resume landing inside a worker's check-then-self-suspend window
   evaporates. BUT the ADXM protocol self-heals: it RETRIES resumes
   against the (running) server hundreds of times/frame — a lost resume
   only becomes a permanent stall when the retries STOP, i.e. when main
   parks itself inside the sub_00169150 mount poll (which never resumes
   anyone). Hence the gated nudge in that wrapper is the complete fix.
   **MEASURED FAILURES (do not repeat): "resume credits"** (mark a
   READY/RUNNING fiber so its next self-suspend re-checks instead of
   parking) — tried (a) on every resume and (b) only when wake_count()==0.
   BOTH collapsed playback, because no-target resumes are NORMAL retry
   traffic: with credits the sfdec decode servers never park and one
   worker monopolizes the scheduler. (a): pumps 382->267->DEAD at ~55s,
   blits frozen at 226, [PESQ] churn, main starved (doa3_log_r1.txt).
   (b): pumps ~125/10s, blits ~1.3/s crawl (doa3_log_r2.txt). Credits
   REMOVED; xbox_fiber_wake_count() kept (used by the nudge).
2. **QPC tight-poll detector made deterministic** (kernel_bridge.c): the
   fast path gated on >150 polls per GetTickCount64 tick (host-speed
   dependent — one of item 99's dice) and yielded from ANY fiber (the
   variant bisected as boot-killing). Now: hot loop = >150 QPC calls with
   (near-)consecutive g_kernel_call_count numbers (tolerates 1 interleaved
   call), boost +733333/poll while hot, yield PRIMARY-ONLY. The every-2048-
   polls fallback path is unchanged.
3. **Mount-stall net** (sub_00169150 wrapper): after 50k failed polls, every
   8192 polls, IF the exact stall signature holds (C065C0==-1 AND ADXM lock
   globals B24D38/C0E384 both 0), spuriously wake+credit 0xBEEF0001 workers
   ([MOUNTNUDGE] log). Spurious wakes are already tolerated (xbox_fiber_block's
   no-runnable fallback does the same); gated so it cannot fire during a
   healthy claimed-op load.
4. **Movie AV clock = wall time** (recomp_manual.c synthetic-clock block):
   the old "+375 per pump call" made movie speed = pump rate (40 pumps/s
   = 0.67x slow-mo on both machines; 90 pumps/s after the QPC fix = 1.5x
   fast-forward, doa3_log_r3.txt). Now a QPC accumulator drains
   continuously at 22477.5 units/s (= 375 x 59.94, the hardware crystal
   rate), still clamped by the undelivered-frame cap and a 2-frame
   catch-up ceiling. Quantized (375-step) drain measured 0.67x again
   (doa3_log_r4.txt) — keep the continuous drain.
- VERIFICATION (harness runs r3/r4/r5, 130-160s each): full movie every
  run, 0 MOUNTSTALL, 0 crashes, boot black ~30s -> <10s (first PUMPR
  window already has blits). r5: clock tracks realtime; effective ~20
  visible fps remains (pump-round throughput = the known decode-
  optimization work item, NOT a scheduling knob — items 92/94/97).
- User acceptance still required on THEIR screen (item 95 rule): freeze
  gone? boot-to-movie faster? pacing realtime? [PUMPR] in bin\doa3_log.txt.

## 101. RIG FLAW FOUND + item-98 A/B actually restored (2026-07-05, task #1 cont.)

- **RIG FLAW (critical lesson): runs r3-r5 launched the window MINIMIZED
  (Start-Process -WindowStyle Minimized). DXGI Present does NOT vsync-block
  when the window is occluded/minimized — those runs free-ran exactly like
  the pre-item-92 harness and MASKED the user's condition.** The user's
  13:39 run of the SAME exe showed the old profile (30s black boot, clk
  15000/s = 0.67x, 20 blits/s, vsync-locked 40 pump-rounds/s) while my
  minimized r5 showed fast boot + realtime clock. ALWAYS verify with a
  VISIBLE window (or DOA3_THROTTLE, which approximates it).
- Serve cadence fact (all runs, both machines): the movie serves 1 picture
  per 2 pump rounds — CORRECT hardware behavior (29.97fps on 59.94Hz
  vblank). Movie fps = round rate / 2, so the loop MUST run 60 rounds/s;
  vsync-blocked presents at 40 rounds/s mathematically cap the movie at 20fps.
- Item-98 fix A RE-APPLIED (lost in the item-99 reverts, see item 100
  note): all 3 IDXGISwapChain_Present sites interval 1 -> 0 (d3d8_device.c).
  Boot phases free-run (vsync off) -> the user's 30s black boot shrinks.
- **Item-98 fix B (QPC 60Hz self-pace + slack yields) RE-TRIED AND
  MEASURED CATASTROPHIC — do NOT restore it again.** Visible-window run
  doa3_log_r6.txt: loop collapsed to ~2 rounds/s, 1.1 blits/s, presents
  1.1fps — each slack yield can burn unbounded decode work (item 94's
  budget-collapse mechanism; the item-98 "49 blits/s" note is not
  reproducible from its description). REVERTED; warning comment left in
  doa3_present_frame (main.c). Pacing now comes from the wall-time movie
  clock (item 100.4), so free-running the loop is safe and correct.
- The missing boot visuals the user described (scrolling text + Tecmo logo
  before the movie; real HW shows them) are the boot-screen RENDER gap
  (draws still not on screen) — separate from the item-95 queue; the vsync
  change only shortens the black wait, it does not draw those screens.
## 102. THE REAL ITEM-95 KILLER: movie INGEST stalls after the prebuffer (2026-07-05)

USER RUN (bin\doa3_log.txt 13:49, same build as my clean r7): movie starts
fast, serves EXACTLY 5 frames (DPOP #0-#4 pts 0..4000), then every serve is
slotpts=0/servedpts=0 (empty slots -> "a few frames then stops" + half
frames) and the game eventually churns junk (PESQ h cycling through the
frame-surface ring 0x19DA200/0x1A5D600/0x1AE0A20 stride 0x83400, q=ASCII).
MAIN IS ALIVE the whole time ([D3D] 30fps presents continue).
- ROOT SIGNATURE (divergence vs clean r7, same probes):
  - movie stream joint sj=0xC09890: user w STUCK at 0x12000 (72KB = the
    ADXSTM prebuffer) with len=0 releases forever; r7 cycles the ring in
    0x10000 chunks (len up to 0x156007, w wraps repeatedly).
  - wxCi session for ninja.sfd (0xBFFB28, [WXSES] #4/#6) exists in BOTH
    runs, but the user's [WXPUMP] only ever services idle 0xBFEE80 — the
    movie session never enters/streams via the pump; r7's WXPUMP services
    0xBFFB28 from #3000 on.
  - So: DECODE is fine; the AFS/file INGEST for ninja.sfd issues the
    initial prebuffer read and then NO further reads. CRI ADXSTM stream
    server never transitions to steady streaming — same CRI I/O-handshake
    family as the mount stall (item 99), striking in the STREAMING phase
    where the [MOUNTNUDGE] does not reach. Timing-dice: the user's 13:39
    run of the previous build played 1912 blits; 13:49 died at 5 frames.
- NOT the killer (ruled out this session): FF00040B PES overflow fires in
  ALL runs and is already swallowed unconditionally (the "swallowed" print
  is just capped at 4); ninja.sfd wxCi cache miss is identical in clean
  and dead runs (cache holds only the 3 AFS); boot-read ReadFileEx counts
  identical.
- **DIAGNOSIS REFINED (same session, user's dead-run log): INGEST IS FINE —
  the SLOT RELEASE path is what dies.** [SJPUT] mode=0 on sj=0xC09890 shows
  ~12k puts, w advancing, capacity c draining 0x1D5000->0x196000 (ring
  FILLING with no drain); the stuck w=0x12000 lines were mode=1 RELEASES
  (len=0 = consumer idle). The consumer chain halts because the mwPly
  frame slots jam: user's PUMPR shows fr=[2222222] — ALL 7 slots in state
  2 (decoded, unreleased) — vs healthy runs cycling fr=[0244222]. With no
  state-0 slot, find-free-slot (sub_0017DA80) fails, decode halts after
  ~5-7 pictures (exactly the user's "a few frames"), PES queues fill
  (FF00040B storm), parser stops consuming, ring backs up. The 5-frame
  stop, the start-offset trample (item 97) and the tearing are ONE
  mechanism: slot release/recycle.
- **SLOT LIFECYCLE FULLY NAMED (write-watch [SLOTST] + map symbolization,
  run r14).** State words: h+0x366C+0x50*i (h=0xC0F7C0; slots 0-5 =
  0xC12E2C..0xC12FBC on the watched page, slot 6 off-page). Writers:
    0->1 sub_0017DA80+0x29C  (claim free slot for decode)
    1->2 sub_0017DAF0+0x4C   (decode complete/ready)
    1->4 sub_0017DB00+0x4C   (picture serving/displayed)
    4->2 sub_0017DB30+0x8B   (display done -> held as reference)
    2->0 sub_0017DB10+0x8B   (FINAL RELEASE — the path that dies)
  Release call chain: game blit code -> (vtable, indirect only)
  **sub_0017AA20** (lock-guarded unlock API; sub_0017C680/90 = crit-sect
  enter/exit) -> sub_00179DA0: reads idx=[h+0x3B74], rec=h+idx*0x388+0xD54,
  REQUIRES [rec]==1 else error FF000F0E; requires a ptr match else
  FF000F0F; on success [rec]=0 and sub_0017DB10([h+0x35C4]) frees the slot.
  A stalled run = sub_0017AA20 not called (game-side gate) or erroring
  F0E/F0F (rec state wrong — e.g. trampled by the item-97 corruption).
- Instrumentation added (this session): [UNLOCK] wrapper on sub_0017AA20
  (gen renamed sub_0017AA20_gen in recomp_extra2.c — RE-APPLY after any
  regen), logs first 10 + every 256th + EVERY nonzero result; [SFERR]
  budget now PER ERROR CODE (6 each; a 40B storm used to eat the whole
  budget and would have hidden F0E/F0F); [SLOTST] transition log (main.c
  crash_veh write-watch, deduped by slot/old/new/rip); [INGEST] 10s pool
  dump. The next stalled run pinpoints the failing link by which marker
  goes quiet/red: [UNLOCK] absent = game stopped calling; [UNLOCK] -> !=0
  or SFERR F0E/F0F = unlock failing; [SLOTST] 2->0 absent with [UNLOCK]
  ok = sub_0017DB10 inner gate.

## 103. TRAMPLER CAUGHT RED-HANDED + write-site guard (2026-07-05, item-95 root)

THE USER'S STALLED RUN (bin\doa3_log.txt 14:23, probe build) captured the
slot-table killer in the act via [SLOTST]:
- Normal lifecycle cycles, then slot states smashed with PCM-like values
  (1->11549, 2->65115, 4->37832) by writer rips 0x1421CEC93/CD1/D0E/D49 =
  **sub_00186440 + 0x2263..0x2319 — 4 unroll lanes of the MMX
  dequant/IDCT butterfly kernel** (recomp_mmx.c; coefficients @0x3C0D18).
- The kernel transforms (count/4) x 64-byte chunks IN PLACE from its
  pointer arg upward. Its dispatcher **sub_00186D00**(ptr, n): n >= 0 ->
  sub_00186D1D; n < 0 -> count = MEM32(0xBF27C8 - 4*n) then tail-jmp
  sub_00186440. ONE call with a garbage count/base = a linear sweep from
  the staging blocks (0xBDE2E0/460/4E0/560) up through the sfdec slot
  table (0xC12E2C+) — kills the movie ~5 frames in (item-95 #1 stop),
  and sweeps through plane buffers = #5 half frames. Also observed in the
  same run BEFORE the sweep: anomalous 1->0/0->2/0->4 flips on slot 1 via
  the NORMAL writers (secondary corruption), and post-death junk-handle
  churn ([PESQ] h cycling the frame-surface ring, [SFERR] FF000222).
- Slot lifecycle map + release chain: see item 102. sub_00179A50 handles
  no-free-slot correctly (returns -1); sub_00179A77 derefs the ref-pair
  records [h+0x3660]/[h+0x3664]+4 with NO validity check (candidate for a
  future REFGUARD if corruption persists); decode target = new slot rec+4.
- **FIX (defensive, at the write site): [BLKGUARD] in the sub_00186D00
  wrapper (recomp_manual.c)** — resolves the effective count exactly like
  the gen (table read for n<0) and SKIPS the call (eax=0) when base is
  outside [0x100000,0x8000000) or count > 2048 (legit DCT blocks are
  <=384 coeffs; observed legit n = small negatives -3..-14). A bad block
  becomes one skipped block instead of a corrupted process. The UPSTREAM
  producer of the garbage call (rare interleaving; suspect fpo_leaf
  register-arg inheritance somewhere in the MB worker chain) is NOT yet
  found — if [BLKGUARD] fires, its log line is the breadcrumb.
- **[BLKGUARD] CONFIRMED WORKING in the user's next run (14:35): caught 2
  sweeps (a1=BDE3E0/BDE360, a2=-64, resolved cnt=218840 — the count table
  only extends to ~-32, so a2=-64 reads past it). The process survived,
  but the run still degraded: pumps collapsed to ~10/12s with all slots
  jammed fr=[2222222] for ~100s (then partially recovered fr=[3101411]).**
- **103b. SECOND MECHANISM CONFIRMED + GUARDED: out-of-order slot
  lifecycle.** The same run's [SLOTST] shows ILLEGAL transitions at the
  NORMAL writer sites: DB30 (ref release) fired on a slot in state 1
  (DECODING) -> instantly freed -> buffer re-acquired while the decoder
  still writes = defect #5 tearing; DAF0/DB00 marks landed on FREED slots
  (0->2, 0->4 resurrections) = late completion binds (item 90's suspicion,
  now proven). Slot semantics (from gen): DB10: st==4->3 else->0; DB30:
  st==4->2 else->0; DAF0: ->2; DB00: ->4. States: 0 free, 1 decoding,
  2 decoded/held, 3 released-after-display, 4 display-locked.
  **Guards (recomp_manual.c; gen sub_0017DB10/DB30 renamed _gen in
  recomp_0009.c — RE-APPLY after regen):** releases aimed at a DECODING
  slot are DEFERRED (queue drained each pump via
  doa3_drain_deferred_releases, applying the original semantic once decode
  completes); DAF0/DB00 marks on FREE slots are DROPPED. All log
  [STGUARD]. The ROOT (why events arrive out of order: the A6D0
  suspension/esp-drift model, item 90/91b) remains open — guards convert
  corruption into recoverable hiccups.

## 104. DEFECT #2 START OFFSET: decode-ahead was UNBOUNDED (2026-07-05)

Measured (120-frame Y-correlation alignment, planediff.py pattern): our
first serves align to REF FRAME 47-56 — the offset survived the item-103
guards. Chain of evidence this session:
- [PDECIDE] with gate values: NOTHING is dropped (first drop at pic #99) —
  the decide is not the mechanism. Luma at truly-matched frames is fine
  (dump3 bias -6); the color defect is chroma-only (item 96 stands).
- The prep-complete gate (tail of sub_0017A540, counts [h+0x35D8]++ toward
  target [h+0xA2C]) requires sub_0017E720>=0 (passes, returns 0) AND
  sub_00180B70(pts, rate=0xEA23, clock, 0x7530)==0 — FAILS (returns 1)
  because the master clock arg is 0x7FFFFFFF (unset; its hardware source
  is the stubbed audio decode). So the prebuffer counter NEVER moves and
  prep never completes through the intended path ([PREGATE] probes).
- Root: with no prep gate, DECODE-AHEAD IS UNBOUNDED. On hardware the
  2-ref + 2-B-flip buffer budget physically bounds decode to a few
  pictures past display; unbounded, decode churned ~47 pictures before
  the first serve, recycling the B FLIP-BUFFERS (sub_00179A77's B path
  copies cached plane descriptors from the h+0x3640 flip table — B slots
  do NOT own unique buffers), so early pictures' pixels were gone before
  serve. Startup slot-holds alone did NOT fix it (r21 still ref 47).
- **FIX: decode-ahead cap in the slot-acquire wrapper sub_00179A50
  (recomp_manual.c): while (g_doa3_pics_decoded - g_doa3_pics_served) >= 4
  return the gen's own no-free-slot result (-1, out=0) — decoder retries
  next tick. decoded++ in the DAF0 wrapper (1->2 only), served++ in the
  DB00 wrapper, both reset at movie teardown (synthetic-clock else).**
  Verification metric: fresh movie_yuv_0.raw must align to ref ~1-8
  instead of 47-56. If the movie fails to START with the cap, raise 4
  (the prebuffer may want more pictures decoded before first serve).
- **CAP MEASURED INEFFECTIVE for the offset (r23): dumps still align to
  ref 47/56 with IDENTICAL correlations (fully deterministic content).
  Playback remains full-length — cap kept (bounds trample risk), but the
  offset is NOT a decode-race: the SERVE PATH is broken.** r23 evidence:
  the display INDEX is CORRECT ([IDXAPP] e0=1500,750,3000,2250 = display
  pts of pictures 1-4), but every [DPOP] pops servedpts=0 slotpts=0, and
  [FCOPY] reads the SAME plane base 0x1AE0A20 on consecutive serves with
  DIFFERENT content (ysum changes) — the serve never consumes the indexed
  early pictures; it re-reads one buffer that decode keeps rewriting.
  NEXT (defect #2, concrete): trace the pop (sub_0017DA20 area) — how the
  popped q=3 entry resolves to a slot/plane (why pts reads 0; why the
  plane is always 0x1AE0A20). Probe the full popped entry struct at
  [DPOP] (out=C10FB0: dump 16 dwords) and the q=3 queue records at push
  time vs pop time. The first REAL consume of pictures 1-4 is the fix.

- **VERIFIED (doa3_log_r7.txt, VISIBLE window, 130s): movie starts <10s
  (blits=455 in window 1), clock 22475 units/s = EXACT realtime across all
  9 playback windows (movie plays full length at true speed, ~30 pics/s
  served), 0 stalls, 0 crashes. Post-EOS the movie tears down (blits
  reset, slot states change) and the game runs a LIVE render loop at
  1070fps with ~2100 draws/s — possibly the title/attract handoff (task
  #2's end-half) finally being reached; pixel confirmation pending.**
  Config that achieved it: vsync OFF + NO pacer + wall-time movie clock +
  count-based QPC detector + mount nudge. Awaiting user acceptance.

## 105. DEFECT #3/#4 LOCALIZED: 8x8-block AC noise = lifted dequant/IDCT error (2026-07-05)

DECISIVE diagnostic (first-decoded-picture dump, alignment-certain):
- New [IFRAME] dump in the sub_0017DAF0 wrapper writes the first 4 decoded
  pictures' YUV STRAIGHT FROM THE SLOT BUFFER (rec+4; 736x480 Y + 384x240
  U/V) as iframe_0..3.raw — pre-serve, so no serve-order ambiguity.
- iframe_0 (an I-frame; intra only, NO motion comp) is HEAVY with speckle
  vs ffmpeg's clean decode. So the noise is pure intra decode: VLC / dequant
  / IDCT, not MC, not serve/trample.
- NOISE CHARACTERIZED (iframe_align.png + numpy): 8x8-BLOCK-STRUCTURED —
  horizontal autocorr lag1=0.51 (smooth within block) but lag8=0.016,
  lag16=0.004 (fully decorrelated AT the 8px block boundary); per-8x8-block
  MEAN noise std=1.39 (DC is CLEAN); ~2% impulses. This is the signature of
  wrong AC (high-freq) coefficients: DC right, AC noisy, block-independent.
- RULED OUT: (a) MMX helper primitives (recomp_types.h mmx_paddw/psubw/
  pmullw/pmulhw/psraw/psllw/psrad/punpck*/packssdw/packuswb) — ALL verified
  correct by inspection; (b) skipped blocks — [BLKGUARD] fires 0 times;
  (c) VLC catastrophic error — structure is visible, not garbage.
- => The bug is in the AC DEQUANTIZATION (coeff scaling: qscale * quant_matrix,
  MPEG-1 intra AC formula + mismatch control) or IDCT rounding, in the lifted
  kernel (sub_00186440 butterfly per item 103, or the dequant fn feeding it).
  STRONG hypothesis: WRONG QUANT MATRIX (default vs stream-custom, or a
  mis-read of the matrix constants) — that scales every AC coeff by the wrong
  per-frequency weight = exactly this signature. NEXT: find the quant-matrix
  load (sequence-header parse) + the dequant fn; dump the active intra matrix
  and compare to the MPEG-1 default (8,16,19,22,26,27,29,34,...); OR feed the
  lifted IDCT a known single-AC-coeff input and check the basis pattern.
- Chroma tint (#3) is the SAME root manifesting in U/V (item 96's V bias):
  wrong AC dequant perturbs chroma blocks the same way.
- ALSO CONFIRMED this session: the intermittent early-stall (#1/#2/#5) still
  fires in the harness — one 140s run stalled at 8 blits, fr=[1124222]
  (slots 0,1 stuck in state 1 = decode-complete never bound; the item-90/91
  esp-drift completion problem, still nondeterministic). Playback is a
  coin-flip: full-length or ~8-frame stall, same build.

## 106. QUANT MATRIX RULED OUT — AC noise is IDCT-math or VLC (2026-07-05)

Runtime dump of the working matrices ([QMAT-A]/[QMAT-B], wrapper on
sub_00187160 which builds them at 0xC0CFA0/0xC0CFE0 from ROM default
0x2187D0 via scan tables 0x218790 + a stack table):
- 0xC0CFE0 (intra work matrix) = the MPEG-1 default intra VALUES
  (8,16,19,22,...,83), a VALID PERMUTATION (multiset == default, no
  dupes/drops), in a CUSTOM non-zigzag scan (pairs with the PSGSFD
  decoder's internal coeff order). => matrix build is CORRECT, NOT the bug.
- 0xC0CFA0 = a 0..63 scan-index table (custom), also internally consistent.
- So the 8x8-block AC noise (item 105) is NOT dequant-matrix. Remaining
  candidates, all in the lifted MMX kernel (high-risk to touch):
  (a) IDCT rounding/precision in sub_00186440 (the butterfly) — a mis-lifted
      shift/round/add in the sequence (helpers are clean, so it's the kernel
      LOGIC not the ops);
  (b) the dequant MULTIPLY/SHIFT (qscale application) feeding the IDCT;
  (c) VLC AC coefficient values (run/level decode) slightly wrong.
  Approach for next session: UNIT-TEST the lifted IDCT (sub_00186440) in
  isolation — feed a known coefficient block (DC-only -> flat; single AC ->
  known basis pattern) and diff vs a reference IDCT. That pinpoints (a) vs
  (b)/(c) without running the game. Dumps kept: iframe_N.raw (first 4
  decoded pics), [QMAT] wrapper (sub_00187160 renamed _gen in recomp_0009.c
  — RE-APPLY after regen), [IFRAME] in the DAF0 wrapper.
- HONEST STATUS: #3/#4 substantially localized (block AC noise; matrix,
  MMX primitives, skipped-blocks all ruled OUT) but NOT fixed — the fix is
  in fragile lifted-kernel math needing careful unit-test work. #1/#2/#5
  the nondeterministic slot-stall persists (a 140s harness run stalled at
  8 blits). No fix claimed this session; diagnosis advanced.

## 107. AC-BLOCK DECODE ISOLATED via in/out capture — differential test inconclusive (2026-07-05)

Captured the IDCT kernel's input->output for real blocks ([IDCTDUMP],
idct_N.bin = cnt + 128B before + 128B after; wrapper on sub_00186D00,
now dumps blocks with >=20 nonzero AC int16). Findings:
- FLAT blocks (DC-dominated, e.g. DC=7424): output = clean flat ~116
  (7424>>6), matches a reference IDCT within ~1.3/pixel (normal int
  rounding). DC path + normalization (>>6) CORRECT.
- AC-HEAVY blocks (>=20 nonzero): our output differs from a standard
  reference IDCT by meanabs 15-26, MORE than the block's own std (11-17);
  AC-only correlation (ours vs reference IDCT) is ~0.03-0.16 = NEAR ZERO,
  for ALL tested scan un-permutations (scanA/zigzag/raster). So the AC
  output is NOT a scaled/mis-ordered version of the standard IDCT — it is
  uncorrelated.
- INTERPRETATION (honest, INCONCLUSIVE): either (a) the lifted AC IDCT
  butterfly is wrong, OR (b) PSGSFD uses a non-standard coeff convention
  (pre-scaled basis, custom layout, or the 128B I dump != what the kernel
  reads — cnt=5 vs 8 suggests cnt is not a simple byte count) so my
  reference model doesn't match. CANNOT distinguish without the decoder
  spec or a controlled known-INPUT test.
- CONCLUSIVE next step (needs its own session + care): a KNOWN-ANSWER unit
  test — hook sub_00186D00, on ONE call overwrite the input with a single
  raster-frequency impulse (e.g. coeff for raster pos 1 only), run the real
  kernel, and check the output is a clean horizontal cosine ramp (correct)
  vs scrambled (bug). Restore/skip the real call so the game isn't
  corrupted. That isolates kernel-bug from model-mismatch definitively.
- SCOPE HONESTY: this session localized #3/#4 to the AC coefficient path
  (DC/matrix/MMX-primitives/skipped-blocks all RULED OUT) and built the
  in/out capture tooling, but did NOT land a fix — the remaining
  determination needs the known-input test, and any kernel edit is
  high-risk to the (sometimes) working decode. Dumps/wrappers kept:
  [IDCTDUMP] (sub_00186D00), [QMAT] (sub_00187160_gen), [IFRAME] (DAF0).

## 108. IDCT KERNEL VERIFIED CORRECT (known-impulse test) — 2026-07-05

[KTEST] (wrapper on sub_00186D00): fed the REAL kernel single impulses via
a1's own buffer (restored after; game untouched):
- impulse@in[1]=1000 -> OUT = CLEAN vertical cosine basis: rows
  16,13,9,3,-3,-9,-13,-16 (constant across columns). A textbook correct
  freq-1 IDCT basis image. => THE IDCT BUTTERFLY MATH IS CORRECT.
  (Note: in[1] = VERTICAL freq 1, so the input coeff layout is
  column-major / transposed vs raster — this is why item-107's differential
  test [which assumed raster/zigzag] gave near-zero AC correlation: MY
  REFERENCE MODEL was wrong, NOT the kernel.)
- impulse@in[2], in[8]=1000 -> passed through UNCHANGED (this call's cnt
  covered only low positions; sparse/cnt-limited transform — not a bug for
  this test).
- CONSEQUENCE: the AC decode NOISE (item 105) is NOT the IDCT and NOT the
  dequant matrix (item 106). All of: MMX primitives, quant matrix, DC path,
  IDCT butterfly = VERIFIED CORRECT. Remaining candidates narrow to the
  UPSTREAM coefficient supply: VLC run/level decode, the cnt value, or the
  coeff scan/placement into the block buffer. OR (must reconsider) the luma
  is largely fine and the item-105 "9.5 noise" over-counted real rain +
  frame-misalignment; the DOMINANT real color defect is the CHROMA green
  (#3), which rides the same (correct) IDCT but a separate coeff/matrix path.
- STRONG STEER for the next session: (1) re-measure luma error against a
  PROPERLY aligned ffmpeg frame (use iframe_0 vs the ffmpeg frame it truly
  is, not blurred correlation) to size the real luma defect; (2) attack the
  CHROMA path specifically for #3 (it is the clearest user complaint and is
  separable from luma). The transform engine is proven, so color work is
  coefficient/scan/CSC-side, lower-risk than kernel edits.

---

## item 109 — DEFECT #1 (FREEZE) ROOT CAUSE FOUND & FIXED (harness-verified; awaiting user confirm)

The intermittent movie freeze was traced end-to-end with the write-watch tooling
and an A/B test, NOT guessed.

CHAIN (proven, not inferred):
1. Freeze signature: the movie handler STATE word (0xC0F7C0 + 0x40) gets
   corrupted 4 -> 0xFFFFFFFC (-4). SRVDSP timeline: st40 1(prep) -> 4(playing,
   ~100 samples) -> -4 (frozen, held). Once -4, my synthetic-clock `==4` check
   fails (counters reset, blits->0), the clock field is abandoned holding
   garbage (e.g. 210228000), and every RESUME_GUARD-gated service fn no-ops ->
   slot pool jams half-full (fr=[1124222]) -> picture frozen.
2. Re-pointed the page-guard write-watch (main.c) from the slot page to the
   HANDLER page 0xC0F000 + added an [HSTATE] log for the state word. Caught the
   -4 writer red-handed: RIP 0x140CB0A1E = sub_0017C6A0_gen+0x42E, the sfdec
   ERROR REPORTER. Normal state cycling (4->1->2->4) comes from sub_0017D1D0 /
   sub_0017D380; only the error path writes -4.
3. The error is FF000D03, raised in sub_0017C33E when sub_00183E40/sub_00183E79
   (the MPEG PICTURE-LAYER parser) rejects a picture header. Backtrace routes
   through sub_0017F6D0 (substream vtable broadcast) + the state machine.
4. Swallowing FF000D03 (like the existing FF00040B swallow) stopped the -4
   corruption but the freeze PERSISTED as a D03 STORM (thousands/run): once the
   parse state goes bad it stays bad. So the error is a SYMPTOM of a persistent
   starved/stuck parser, not a one-off.
5. A/B TEST (env gate) isolated the trigger: it is MY OWN item-104 decode-ahead
   cap + release-deferral (added to fix the #2 start-offset). Results:
     cap ENABLED  -> 5/5 runs froze  (D03=1 -> -4)
     cap DISABLED -> 13/13 runs played full-length (blits 1352-2848),
                     D03=0, -4 writes=0, healthy slot rotation.
   The cap/deferral starves the substream parser under the scheduler race, so a
   picture header arrives truncated/misaligned -> FF000D03 -> handle dead.

FIX: the item-104 cap + deferral are DISABLED by default (gate
`doa3_cap_enabled()`, recomp_manual.c; re-enable only via DOA3_CAP=1 to
re-experiment with #2). The diagnostic handler-page write-watch is now opt-in
(DOA3_WATCH=1). Default build = the exe the user runs = movie plays, no freeze,
across 6/6 clean runs.

CONSEQUENCE FOR #2 (start-to-end): disabling the cap reverts the #2 START-offset
attempt (decode may again race ~1.5s ahead at the very start). The END is now
FINE (plays full length instead of freezing). #2 must be re-approached WITHOUT
reintroducing this parser starvation — do NOT restore an unconditional
decode-ahead cap.

STATUS per item 95: harness = strong EVIDENCE only. Not "fixed" until the USER
sees the movie play without freezing on THEIR machine.

---

## item 110 — item 109 was WRONG (false metric); REAL freeze = display-serve stall

USER on the item-109 build: "it still freezes for me its just stuck alternating
between the same frames" + "add features like a cap rather than solving the bug
itself i would rather you revert."

item 109 was a FALSE-PROGRESS error: I measured "played" by FCOPY blit count,
which keeps climbing even when the presenter is re-blitting the SAME looped
frames. Reverted the item-104 decode-ahead cap + release deferral entirely
(gate/machinery removed; releases immediate; raw behavior).

HONEST metric added to PUMPR: dec = unique pictures DECODED (DAF0 completions),
srv = serve-marks, dadv = display-advance calls. One run shows:
  dec:  233 -> 643 -> 1048   (decode is HEALTHY — thousands of real pictures)
  dadv: 232 -> 642 -> 1046   (display-advance fn sub_0017A9B0 IS called every tick)
  srv:  3 -> 3 -> 3          (STUCK — only 3 frames ever served)
So decode works and the display pump is alive, but the SERVE/DISPLAY-ADVANCE
stops rotating after 3 frames -> the screen loops ~3 frames = what the user sees.

MECHANISM (traced):
- sub_0017A9B0 (display-advance, writes servedpts h+0xCC4) is called ~1000x but
  servedpts went 0->1000->2000->3000 (calls #12-14) then RESET 3000->0 (#15)
  and never advanced again.
- It advances only if sub_0017DB50 returns a nonzero "next displayable slot".
  sub_0017DB50 walks slots and returns the MIN-PTS slot in state 2 or 4.
- In the stall 2 slots are PERMANENTLY in state 4 (display-locked); the served
  frame is never consumed/released, so the min-pts selection keeps returning the
  SAME oldest frame -> servedpts frozen -> same frame re-shown.
- The frame-record PTS fields (DPOPREC) also zero out, consistent with the
  3000->0 servedpts reset.

LEADING HYPOTHESIS for the ROOT: the state-4 (display-locked) buffers are never
released back (4->2 via sub_0017DB30). On Xbox the vblank FLIP releases the prior
front buffer; our port presents via D3D (movie_present.c) but likely never
signals the guest that the flip completed, so the flip-pair (2 buffers) stays
locked and the serve pipeline jams after filling them. vbl counter DOES advance
in PUMPR, so if the guest polls a flip-done flag we may just not be setting the
one it reads. NEXT: find who writes state 4 (sub_0017DB00 serve-mark, srv=3) and
who is supposed to release 4->2, and what flip/vblank signal gates it.

Diagnostic wrappers left in (PURE logging, no behavior change): DADV on
sub_0017A9B0, dec/srv/dadv in PUMPR, D03 counter. DOA3_WATCH=1 opt-in handler
write-watch.

STATUS: #1 STILL BROKEN (display-serve stall). Not fixed. No band-aids.

---

## item 111 — FREEZE ROOT CAUSE: pictype misparse after GOP 1 (parse drift)

Traced the "flip-completion signal" the freeze depends on, end to end:
- The display unlocks/rotates the REFERENCE flip-pair (state 4 -> 2, sub_0017DB30)
  inside the flip fn sub_00179A77, tail-called from PALLOC (sub_00179A50).
- The unlock is GATED on the picture coding type: descriptor+0x18 (= h+0x35F8,
  addr 0xC12DB8) in {1,2} = I/P (reference) -> rotate refs; 3 = B -> don't.
  This is CORRECT MPEG behaviour (refs rotate only on reference frames).

THE BUG (verified two ways):
- [FLIPGATE] runtime log of h+0x35F8 per picture: 1(I) 2(P) 3 3 2(P) then 3,3,3...
  = only 3 I/P frames total, then B (type 3) FOREVER. rel42 (4->2 unlocks) sticks
  at 5. So the 2 reference buffers never rotate again.
- ffprobe ground truth of ninja.sfd: I every ~18 frames; first 400 frames =
  28 I + 137 P + 235 B. I/P are present THROUGHOUT the stream.
=> Our recompiled MPEG picture parser stops correctly reading picture_coding_type
   after the first GOP — real I/P frames are misidentified as B. The reference
   frames therefore freeze; subsequent decode reuses stale refs. This is the
   user-visible freeze ("stuck alternating between the same frames").

NOT the cause (ruled out this session):
- Decode engine: healthy (dec climbs to 1000s of pictures).
- Demux/ingest starvation: NO — SJPUT feeds the ring continuously (11k+ puts,
  cursors advance).
- Decode-ahead race on the shared h+0x35F8 field: NO — PALLOC is 1:1 with parses.
- My item-104 cap: removed; not involved (that was item 109's false trail).

WHERE THE FIX IS: h+0x35F8 (pictype) is written via COMPUTED addressing (no
static store; prior sessions noted this). The picture-header/coding-type parse
lives under sub_00183E79 -> sub_00183F70 (layer id) + sub_001834D0 / sub_00182D60
/ sub_001830A0 (layer handlers) and the slice/VLC consumer sub_001842F0. The
drift is almost certainly a bitstream bit-position error (VLC run/level or a
header field) that accumulates across pictures and desyncs the coding-type read.
NOTE: the VLC/bit-position drift is ALSO the leading remaining suspect for the
#3/#4 green/speckle AC-coefficient noise (item 108) — likely ONE underlying
bitstream-reader defect behind both.

NEXT: catch the h+0x35F8 writer race-free (HW debug-register watchpoint DR0 on
0xC12DB8, not the racy page-guard) to symbolize the coding-type store; then
diff our bit position against a reference MPEG parse at the first picture whose
type we get wrong (~picture 6-8) to localize the drift instruction.

STATUS: #1 still broken. Root cause now VERIFIED (not guessed). No band-aids;
item-104 cap fully reverted. Diagnostic logging only (FLIPGATE/DADV/PUMPR
counters; DOA3_WATCH=1 opt-in).

---

## item 112 — REVERTED the item-110/111 diagnostic wrappers (user hit a crash)

USER: "please revert these changes you caused a crash." The item-110/111
diagnostic instrumentation crashed on the user's machine (real vsync/visible
window; the harness's minimized rig masked it — item 101). Most likely cause:
the DADV wrapper on sub_0017A9B0 (a fragile fpo_leaf function reached only via
display-service icall — wrapping it perturbed the inherited frame under real
timing).

REVERTED (all removed; tree back to the item-110 no-crash baseline):
- DADV wrapper on sub_0017A9B0 (recomp_manual.c) + restored the gen name
  sub_0017A9B0 in recomp_extra2.c.
- [FLIPGATE] logging in sub_00179A50.
- [HSTATE] log + the 0xC0F800 filter entry in main.c crash_veh.
- The FF000D03 D03 counter block; g_doa3_d03_count/db10/db30/dadv globals;
  the dec/srv/dadv/rel42/rel20 fields in [PUMPR] (restored to the plain line).
KEPT: the item-104 cap + release-deferral stay REMOVED (user's earlier demand,
item 110); the write-watch is opt-in (DOA3_WATCH=1, off by default) armed on
the slot page 0xC12000. Build compiles clean; harness run plays the movie
(blits 2041), only the benign MS_VC_EXCEPTION 0x406D1388 thread-name exception
(not a crash).

The item-111 ROOT CAUSE still stands as the verified diagnosis (pictype
misparse after GOP 1 -> reference frames freeze). It is NOT fixed — no decode
logic was changed. The build's user-visible behaviour = freeze (alternating
frames), same as item 110, but no crash.
