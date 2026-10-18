# In-game overlay: Dear ImGui + the pad remapping panel, and the first-run
# setup screen that installs the game files from a disc image.

set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/third_party/imgui)

add_library(doa3_ui STATIC
    doa3_ui.cpp
    doa3_setup.cpp
    ${CMAKE_SOURCE_DIR}/third_party/miniz/miniz.c
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/backends/imgui_impl_win32.cpp
    ${IMGUI_DIR}/backends/imgui_impl_dx11.cpp
)

target_include_directories(doa3_ui PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${IMGUI_DIR}
    ${CMAKE_SOURCE_DIR}/third_party/miniz
)

target_link_libraries(doa3_ui PRIVATE
    input_compat
    d3d11
    dxgi
    xinput
    user32
    dwmapi
    comdlg32
    shell32
    winhttp
)

# This build's version, compared against the GitHub release tags
# (v<major>.<minor>.<CI run number>) by Check for Updates.
set(DOA3_BUILD_NUMBER 0 CACHE STRING "CI run number")
target_compile_definitions(doa3_ui PRIVATE
    DOA3_VERSION_STRING="${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${DOA3_BUILD_NUMBER}")

# ImGui is third-party: build it clean but do not hold it to our warning level.
if(MSVC)
    target_compile_options(doa3_ui PRIVATE /W3 /WX-)
    set_property(TARGET doa3_ui PROPERTY MSVC_RUNTIME_CHECKS "")
endif()
