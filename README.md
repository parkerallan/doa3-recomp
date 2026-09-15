# Dead or Alive 3 — Static Recompilation for Windows

**In Progress** Translation of the original Xbox binary of Dead or Alive 3 into native C
that compiles and runs on Windows. No emulation, just recompiled functions
running as a native x86-64 executable, with the Xbox kernel, D3D8 and NV2A GPU replaced by host
layers.

## Building

Needs Visual Studio 2022 (C11) and CMake 3.20+.

```bash
cmake -S doa3 -B doa3/build
cmake --build doa3/build --config Release --target doa3
```

The binary lands in `doa3/build/release/doa3.exe`.

## Running

Game files are **not** included. Extract a Dead or Alive 3 disc image to `doa3gamefiles/` next to
the `doa3/` folder, so `doa3gamefiles/default.xbe` exists, then run the executable.

## Credits

This project stands on the amazing work of **Ned Heller (sp00nz)**:

- [xboxrecomp](https://github.com/sp00nznet/xboxrecomp) — the static recompilation toolkit this is
  built with: the x86→C lifter, XBE parser, kernel layer, D3D8→D3D11 compat layer and NV2A
  translator.
- [burnout3](https://github.com/sp00nznet/burnout3) — the first static recompilation of a retail
  original Xbox game, and the reference this port follows. The NV2A→D3D11 push-buffer translator
  comes from it directly.

Also relies on:

- [Cxbx-Reloaded](https://github.com/Cxbx-Reloaded/Cxbx-Reloaded) — used as a debugging oracle;
  breakpointing the emulator and diffing its behaviour against ours found most of the bugs.
- [xemu](https://github.com/xemu-project/xemu) — NV2A documentation and the texture unswizzling
  algorithm.
- [Xbox Dev Wiki](https://xboxdevwiki.net) — XBE format, kernel exports, NV2A registers.

## License

Project code is MIT, following xboxrecomp. Dead or Alive 3 and its assets are property of Tecmo /
Koei Tecmo; nothing from the game is distributed here. You need your own copy.
