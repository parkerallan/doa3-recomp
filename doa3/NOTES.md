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
