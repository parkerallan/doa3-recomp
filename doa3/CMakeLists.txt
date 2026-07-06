cmake_minimum_required(VERSION 3.20)
project(doa3_recomp C CXX)

# Dead or Alive 3 - Static Recompilation
# Builds the compatibility layers and the recompiled game executable.

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Common definitions
add_compile_definitions(
    WIN32_LEAN_AND_MEAN
    NOMINMAX
)

# ── Compatibility layers (static libraries) — mirrors burnout3 ──
add_subdirectory(src/kernel)   # Xbox kernel imports -> Win32, memory layout, dispatch
add_subdirectory(src/d3d)      # D3D8 -> D3D11 graphics abstraction
add_subdirectory(src/audio)    # DirectSound -> XAudio2
add_subdirectory(src/input)    # Xbox input -> XInput
add_subdirectory(src/apu)      # MCPX APU emulation (from xemu)
# NV2A GPU emulation is compiled as part of src/game (no separate CMakeLists),
# exactly as in burnout3.

# ── Recompiled game executable ─────────────────────────────────
add_subdirectory(src/game)
