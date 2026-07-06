# Xbox DirectSound Compatibility Layer
# Software mixer with waveOut/XAudio2 backend

add_library(xbox_dsound STATIC
    dsound_device.c
)

target_include_directories(xbox_dsound PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Links to APU emulation for mixer voices
target_link_libraries(xbox_dsound PUBLIC xbox_apu)

if(NOT WIN32)
    # Linux: needs the platform layer for NT types / win32_compat
    target_link_libraries(xbox_dsound PUBLIC platform)
endif()

if(MSVC)
    target_compile_options(xbox_dsound PRIVATE /W4 /O2)
else()
    target_compile_options(xbox_dsound PRIVATE -Wall -Wextra -O2)
endif()
