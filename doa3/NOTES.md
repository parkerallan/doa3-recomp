# Dead or Alive 3 Static Recompilation Notes

This document is the maintained technical guide for the DOA3 static recompilation.
It describes the behavior implemented by the current tree, the fixes that must
survive regeneration, and the remaining limitations. Historical experiments,
reverted patches, and unverified hypotheses do not belong here.

## Current Status

The project boots the retail Xbox executable through a native Windows static
recompilation. The opening movie is user-verified to play through the Team Ninja
logo at the expected frame rate with no visible artifacts.

This is not yet a claim that the full game is playable. In particular:

- Audio behavior has not been accepted as complete.

## Source and Runtime Inputs

The project expects legally obtained game data outside the repository:

- XBE: `../doa3gamefiles/default.xbe`
- Opening movie: `../doa3gamefiles/ninja.sfd`

Relevant XBE facts:

- Title ID: `0x54430001`
- Image base: `0x00010000`
- Entry point: `0x001651A5`
- Kernel thunk table: `0x001ED0E0`, 112 imports
- Main `.text`: `0x00011000` through `0x001B0DE0`
- Middleware: CRI Sofdec/PSGSFD, AFS, ADX/AIX
- Graphics API: retail Xbox Direct3D 8

## Build and Run

Requirements:

- Windows with a recent MSVC toolchain
- CMake 3.20 or newer
- The game files listed above

Build from `doa3/`:

```powershell
cmake -S . -B build
cmake --build build --config Release
```

Output:

```text
build/release/doa3.exe
```

No external movie decoder or FFmpeg installation is required.

## Runtime Architecture

### Static recompilation

Generated functions use global Xbox register state and fixed guest-memory
mappings. Indirect guest calls are resolved through the recompilation dispatch
table. Manual overrides live in `src/game/recomp/recomp_manual.c`; generated
translation units live in `src/game/recomp/gen/`.

### Memory and kernel

The DOA3 image, XDK sections, stack, TLS, and runtime data are mapped at their
expected Xbox virtual addresses. Xbox kernel imports are bridged to Win32 by
ordinal. Guest execution uses cooperative fibers because the global register
model is not safe for unconstrained native multithreading.

Important layout values:

- Guest stack: `0x00D00000`
- Fake TLS: `0x00C40000`
- Fake runtime data: `0x00C50000`

### Graphics

The host translates the game's D3D8/NV2A work to D3D11. Sofdec normally writes
movie frames directly into the Xbox front-buffer pair rather than calling
`D3DDevice_Present`, so `src/game/movie_present.c` owns movie upload and
swap-chain presentation.

### Opening movie

The opening movie is handled by `src/game/movie_present.c`:

- The bundled PL_MPEG decoder decodes `ninja.sfd` to BGRA.
- `QueryPerformanceCounter` paces presentation at 30 fps.
- D3D11 presents all 571 frames through the Team Ninja logo.

This is the default path and is user-verified to play correctly without visible
artifacts.

## Applied Recompilation Fixes

These are behavior-changing fixes present in the current tree. Do not remove
them because an internal metric looks cleaner; validate changes against actual
game behavior.

### PSGSFD fall-through restoration

Function detection split several adjacent PSGSFD blocks and dropped required
fall-through control flow. Six generated transitions in
`src/game/recomp/gen/recomp_0011.c` restore the next block:

- `0x001E25B6` to `sub_001E25BA`
- `0x001E2890` to `sub_001E2C92`
- `0x001E3D2C` to `sub_001E3D30`
- `0x001E410F` to `sub_001E4112`
- `0x001E43E0` to `sub_001E478D`
- `0x001E4EC9` to `sub_001E4ED2`

The `sub_001E2C92` transition is especially important because it restores the
macroblock worker epilogue and prevents a 36-byte guest-stack drift. Before this
fix, decode collapsed after only a handful of real pictures.

### Deferred-compare operand preservation

At guest address `0x0017C025`, the original code compares `ebx` with the old
`ebp` value and then overwrites `ebp` before the conditional branch. Deferred
C emission previously evaluated the comparison after the overwrite.

`src/game/recomp/gen/recomp_extra2.c` snapshots both operands before the
clobber. This preserves delivery of the first video PES packet, including the
MPEG sequence header, so playback begins from the real first frame.

### MMX `pavgb`

The lifter previously dropped `pavgb` instructions used by half-pixel motion
compensation. The current implementation includes:

- `mmx_pavgb` in `src/game/recomp/recomp_types.h`
- the `pavgb` mapping in `tools/recomp/lifter.py`
- generated calls in `src/game/recomp/gen/recomp_psgsfd.c`

The helper implements unsigned packed-byte averaging with Xbox/MMX rounding:
`(a + b + 1) >> 1` for each byte.

### x87 control word and `frndint` rounding mode

The lifter emitted `fnstcw`/`fldcw` as comments and translated `frndint` as
host `rint()` (round-to-nearest). The CRT `floor()` (`sub_0018DE71`) sets the
rounding mode to "down" with `fldcw` around `frndint`, then reads the old
control word back through `_ctrlfp` (`sub_00191A4D`) to decide which
exceptions are masked. With neither modelled, `floor(x)` rounded to nearest,
flagged the result inexact, read stack garbage as the mask, and took its
exception path (`RtlRaiseException 0xC000008F`). On that path `_except1`
(`sub_00191848`) tail-jumps internally and leaves `g_seh_ebp` at its own
frame, and the fragment `sub_0018DF33` falls into the epilogue
`sub_0018DF3B` (`mov esp, ebp`) without restoring it, so `floor()` returned
with esp 52 bytes low.

The Sofdec timecode splitter (`sub_001796F0` -> `sub_001797FF`) calls this
`floor()` once per picture through `sub_001809E0` and then reads its output
pointer from `[esp+0x20]`; with esp shifted it read a leftover double
(`0x3FE0....`) as the pointer and wrote four dwords through it every frame of
the intro movie. Those writes landed in the loadfile.afs partition
sector-size table at `0x4BDA20+0x116`, so every post-movie resource load
resolved to the wrong file offset and the title screen never got its data.

Current fixes:

- `g_x87_cw` (`xbox_memory_layout.c`, default 0x027F) and `x87_frndint()`
  (`recomp_types.h`) model the control word; `tools/recomp/lifter.py` emits
  `MEM16(m) = g_x87_cw` / `g_x87_cw = MEM16(m)` for `fnstcw`/`fldcw` and
  `x87_frndint()` for `frndint`. The same translation was applied to every
  live site in `src/game/recomp/gen/` (13 `fnstcw`, 18 `fldcw`, 39 `frndint`).
- `sub_0018DF33` (`recomp_0009.c`) saves and restores `g_seh_ebp` around its
  call to `sub_00191848`.

Measured result: `floor` returns +4, no float exception is raised, the
timecode output lands on the stack, the partition table is intact after the
movie, and the post-movie loads read `XPR0` data.

### Packed SSE (xmm as 128-bit lanes)

The lifter modelled every xmm register as one `float`: `movaps` moved 4 of
16 bytes and `mulps`/`addps`/`subps`/`shufps`/`cmpneqps`/`orps` were emitted
as comments. The XDK maths library (matrix copy, multiply, inverse,
translate on the matrix stack at `0x90FAA0`) is built from those, so the
post-movie camera/model matrices came out NaN and every vertex of the title
screen collapsed.

`tools/recomp/lifter.py` now translates the SSE set through `xmm128_t` and
the `xmm_*` helpers in `recomp_types.h` (`translator.py` declares xmm
registers as `xmm128_t`); `comiss`/`ucomiss` set `_fpu_cmp` for the
following `jcc`. The 11 functions in the image that use xmm were re-emitted
into `src/game/recomp/gen/recomp_sse.c`; their previous bodies remain as
`sub_*_oldsse`. `sub_001B7E50` keeps its `recomp_manual.c` wrapper (body is
`sub_001B7E50_gen`).

### Dropped fall-through in the D3D state applier

`sub_001B632C` (`recomp_cffix.c`) lost its fall-through into the shared
epilogue `sub_001B63E5` during the cffix re-emission and returned with its
four pushes still on the stack (-24 bytes); the flusher `sub_001B7690` then
lost esi/ebx and the lazy vertex apply walked wild pointers on the first
post-movie draw. Restored.

### Function pointer target `sub_000E5590`

Reached only through the callback table built at `sub_000B8xxx`
(`recomp_0005.c`: `[ebp-56] = 0xE5590`); binds the post-movie screen's four
texture stages. Seeded in `functions.json` and emitted into
`recomp_extra2.c`.

### Dropped x87 arithmetic in functions emitted before bug #13

234 live functions still carried `/* FPU: fsubr|fdivr|fidiv|fimul|fiadd|
fisub|fdivrp|fsubrp ... */` comments -- instructions the pre-bug-#13 lifter
dropped -- because they were never in the fpuarith re-emission batch. One of
them is the character position update `sub_000910B9` (writes the position
table at `0x4BB950 + 16*i`), whose dropped `fsubr` produced NaN positions
after the movie and so NaN camera/model matrices. They were re-emitted with
the current lifter into `src/game/recomp/gen/recomp_fpu2.c` (previous
bodies kept as `sub_*_oldfpu2`; 31 restored fall-throughs transplanted).
The remaining `/* FPU: fnsave|frstor|fnclex|ffree|fxam */` sites are CRT
state save/restore and were dropped before as well.

### Dropped `fld st(i)` / `fstp st(0)` in hand-emitted units

13 live functions (the `recomp_extra2.c` animation helpers `sub_00095430`,
`sub_000954E0`, `sub_000955B0`, `sub_00046030`, and nine in `recomp_fpufix.c`
/ `recomp_jumptables.c`) still had `fld st(i)` and `fstp st(0)` as bare
comments (emitted before recomp bug #12 was fixed). A dropped load with a
kept pop unbalances the global x87 stack index by one per call, which is how
the character base positions at `0x4BAFD0 + 0xE8*k` became NaN after the
movie. Re-emitted into `src/game/recomp/gen/recomp_fpu3.c` (previous bodies
`sub_*_oldfpu3`). Rule for any hand emission: run it through the CURRENT
lifter and grep the result for bare `/* f... */` lines before committing it.

### Fall-throughs after a conditional tail-call, and statement-less fragments

`tools/recomp/fix_fallthroughs.py` decided that a body was terminated when its
last statement contained `return`; the lifter's conditional tail-call form
`if (...) { g_seh_ebp = ebp; sub_X(); return; }` (a `jcc` whose not-taken
path continues into the next function) matched that test, and a fragment
with no statements at all (a lone `test esi,esi` before a split epilogue)
never reached it. Both classes lost their fall-through.

- `sub_0019037C` (the `write_multi_char` loop body of the CRT `_output`) ended
  in `je -> sub_00190395` with no continuation into `sub_0019038F` (`pop esi;
  pop ebp; ret`), so every `sprintf` with a padded field returned 12 bytes low
  and `_output`'s final `pop ebx` read a pushed pointer. The boot task
  `sub_00084340` keeps ebx = 0 across its init chain and compares
  `[0x4B83AD]` against `bl`; with ebx = 0x024AAEA4 the post-movie attract gate
  at 0x00084479 never cleared and the screen id stayed at 5.
- `sub_001579A0` (the `test esi,esi` at the exit of the vertex-block walker
  `sub_00157700`) had no statements and no fall-through into `sub_001579A2`
  (`jne loop; pop edi; pop esi; pop ebx; add esp,0x88; ret`): every walker
  call returned 0x94 bytes low with ebx/esi/edi unpopped, the caller's index
  loop in `sub_00152B9A` walked off its 4-entry table and the run died on the
  fault-skip cap about a minute into the title screen.

The tool now treats a trailing `if (...)` line as a jcc and restores the
fall-through for empty bodies (`not last or not term`); `FIX_DRYRUN=1` lists
candidates without writing. Rerun restored 85 + 9 fragments in the game
`.text` range. The four non-`if` candidates in `recomp_ctors.c` /
`recomp_vtbl.c` target padding (`sub_0019B000`, `sub_001A4000`, ...) and were
not applied.

Measured: ebx stays 0 through `sub_000833C0`, screen id 5 -> 1, ~250 array
draws per frame, the walker's boundary check shows only the +4 of the dummy
return slot, no wild reads in the title phase. FMV unchanged (568 frames).

### Composite matrix convention in the array-draw path

`SET_COMPOSITE_MATRIX` rows are the coefficients of each output component
(the D3D runtime uploads the row-vector matrix transposed), and the Xbox D3D
folds the viewport (`proj x [w/2, -h/2, 2^24-1; x0+w/2, y0+h/2]`, visible in
the game's `[MATMUL]`) into it, so `c.xy / w` is already the pixel position.
`nv_transform_clip` in `src/nv2a/nv2a_pgraph_d3d11.c` multiplied the
transpose and then applied `SET_VIEWPORT_SCALE/OFFSET` again, which put the
2^24 z-scale into w and collapsed every title-screen draw to one point. Now
`c[i] = dot(in, row i)`, screen = `c.xy / w`, z = `(c.z / w) / vp_scale.z`.
Pre-movie screens issue no array draws, so this path cannot affect the FMV.
User-observed: real stage geometry after the movie.

### Title-screen array path: render target, depth test, near-plane clipping

Three more pieces were needed before the title stage was visible for more
than one frame (all in `src/nv2a/nv2a_pgraph_d3d11.c` / `src/d3d/d3d8_device.c`):

- **Render target.** Every frame the guest binds a 256x256 texture surface
  (reflection/shadow pass: clear + a few draws) before the back buffer. The
  compat layer's `SetRenderTarget` is a no-op and the translator ignored
  `NV097_SET_SURFACE_COLOR_OFFSET`, so that pass and its clear landed on the
  swap chain. The surface clip rectangle (0x0200/0x0204, which arrives after
  the colour offset) now selects the target lazily at each clear/draw:
  `nv_sync_render_target` binds an offscreen D3D11 target of the clip size
  (`d3d8_SetOffscreenTarget`) and restores the swap chain when the clip is the
  guest frame size (720x480 -- not the 640x480 host back buffer). `dev_Clear`
  clears whichever target is bound. The offscreen result is not yet fed back
  to draws that sample it.
- **Depth.** `nv_apply_draw_state` forced `D3DRS_ZENABLE = FALSE` (2D menu
  state); it now follows `SET_DEPTH_TEST_ENABLE`. Without it the stage wall
  drawn last covered the scene.
- **Clipping.** XYZRHW cannot represent w <= 0. Batches with any vertex behind
  the eye or the near plane are rebuilt in clip space from the transformed
  output, clipped against Zc >= 0 (Sutherland-Hodgman, attributes interpolated
  pre-divide) and re-projected; strips/fans become triangle lists only then.
  `DOA3_NOCLIP=1` bypasses it for A/B. `DOA3_FLIPW=1` (negate the homogeneous
  position) was tested and is wrong: the game's own w sign is correct.


## Regeneration Contract

A full pipeline regeneration can overwrite generated fixes. Run from `doa3/`:

```powershell
py -3 tools/xbe_parser/xbe_parser.py ../doa3gamefiles/default.xbe --json tools/xbe_parser/burnout3_analysis.json --quiet
py -3 -m tools.disasm ../doa3gamefiles/default.xbe --force -v
py -3 -m tools.func_id ../doa3gamefiles/default.xbe
py -3 -m tools.recomp ../doa3gamefiles/default.xbe --all --split 1000
```

The analysis filename is retained for loader compatibility even though it
contains DOA3 data. Use full disassembly; data sections marked executable by the
XBE must still be excluded by section name.

After regeneration:

1. Re-run missing-function seeding until every valid in-section call target has
   a generated definition and dispatch entry.
2. Confirm immediate function-pointer targets, thread starts, callbacks, and
   vtable entries are seeded; direct-call scans cannot discover all of them.
3. Restore the six PSGSFD fall-throughs listed above unless the generator has
   gained a general fix for adjacent split blocks.
4. Confirm the `0x0017C025` deferred comparison still snapshots operands before
   `ebp` is overwritten.
5. Confirm generated PSGSFD code emits `mmx_pavgb`; the lifter mapping should
   make this survive regeneration.
6. Confirm `fnstcw`/`fldcw`/`frndint` emit the `g_x87_cw` / `x87_frndint`
   forms (the lifter now does this) and that `sub_0018DF33` still preserves
   `g_seh_ebp` across `sub_00191848` -- a fragment-boundary fix the lifter
   does not yet make on its own.
6. Build Release and run the opening movie before accepting regenerated output.

Do not edit generated files casually. When a generated correction is general,
implement it in the lifter/translator as well; keep a local generated patch only
when the correction is specific to an imperfect function boundary or this XBE.

### Generated support units

Several generated translation units are deliberate pipeline supplements and
must be recreated or preserved during regeneration:

- `recomp_extra.c` and `recomp_extra2.c` cover seeded direct and indirect
   targets that ordinary function discovery misses.
- `recomp_fpufix.c` contains corrected x87 translations whose originals are
   retained under alternate names.
- `recomp_jumptables.c` carries switch bodies that cross imperfect detected
   function boundaries.
- `recomp_mwply.c` and `recomp_psgsfd.c` contain CRI movie functions emitted
   from the non-main XBE code sections.

Do not treat these files as disposable build products. A regeneration is not
complete until their symbols and behavior are represented in the new output.

## Diagnostics

Normal runs write `doa3_log.txt`; generated logs and frame captures are ignored
by Git.

Useful opt-in switches:

- `DOA3_DISPLAYTRACE=1`: capture exact display-time YUV/BGRA and descriptor data.
- `DOA3_REFTRACE=1`: trace reference-pair and plane-integrity behavior.
- `DOA3_IFRAME=1`: dump selected completion-time planes and an index CSV.

Frame dumps are evidence, not perceptual acceptance. For visible or audible
issues, the running game is the final validation.

## Known Limitations and Next Work

### General movie routing

The host presenter currently opens `ninja.sfd` directly. It should eventually
receive the active guest movie path and reset decoder/timing state between
movies so `mv_*.sfd` playback can use the same verified path.

## Maintenance Rules

- Keep this file about the current tree, not a diary of attempted patches.
- Record only fixes that remain applied and facts supported by source or direct
  measurements.
- Label user-visible behavior as accepted only after the user confirms it.
- Put rejected experiments in commit history or issue discussions, not here.
- Preserve unrelated user changes when modifying the working tree.
