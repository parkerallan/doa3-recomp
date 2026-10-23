#include "doa3_ui.h"

#include "imgui.h"
#include "backends/imgui_impl_win32.h"
#include "backends/imgui_impl_dx11.h"

#include <d3d11.h>
#include <xinput.h>
#include <stdio.h>
#include <string.h>
#include <winhttp.h>
#include "miniz.h"

#include <atomic>
#include <string>
#include <thread>

extern "C" {
#include "pad_mapping.h"
#include "../game/video_settings.h"
#include "../game/log_settings.h"
#include "../online/netplay_session.h"
#include "../online/netplay.h"
#include "../online/net_upnp.h"
ID3D11RenderTargetView *d3d8_GetPresentRTV(void);
UINT                    d3d8_GetPresentWidth(void);
UINT                    d3d8_GetPresentHeight(void);
ID3D11Device           *d3d8_GetD3D11Device(void);
ID3D11DeviceContext    *d3d8_GetD3D11Context(void);
ID3D11RenderTargetView *d3d8_GetDefaultRTV(void);
HWND                    d3d8_GetHWND(void);
UINT                    d3d8_GetBackbufferWidth(void);
UINT                    d3d8_GetBackbufferHeight(void);
void                    d3d8_RestoreDefaultTarget(void);
float                   d3d8_GetGameFPS(void);
unsigned int            doa3_dbg_read32(unsigned int va);
unsigned int            doa3_dbg_read8(unsigned int va);
}

/* imgui_impl_win32's message handler, declared in its header. */
extern IMGUI_IMPL_API LRESULT ImGui_ImplWin32_WndProcHandler(HWND, UINT, WPARAM, LPARAM);

namespace {

bool g_ready   = false;
bool g_visible = false;
ImFont *g_fps_font = nullptr;   /* large bold font for the FPS counter */

/* Rebind capture state, mirroring MapperPanel's listening_/armed_ pair. */
int  g_listening = -1;   /* row capturing a binding, or -1 */
bool g_armed     = false; /* skip the frame the click started on */
int  g_pending_vk = 0;    /* VK grabbed by the wndproc while listening */

char g_status[128] = { 0 };

void SetStatus(const char *s) { _snprintf_s(g_status, sizeof(g_status), _TRUNCATE, "%s", s); }

/* Re-run WM_SETCURSOR now so the cursor shows/hides without waiting for a mouse move. */
void RefreshCursor()
{
    HWND hwnd = d3d8_GetHWND();
    POINT pt;
    RECT rc;
    if (!hwnd || !GetCursorPos(&pt) || !ScreenToClient(hwnd, &pt) || !GetClientRect(hwnd, &rc)) return;
    if (PtInRect(&rc, pt))
        SendMessageA(hwnd, WM_SETCURSOR, (WPARAM)hwnd, MAKELPARAM(HTCLIENT, WM_MOUSEMOVE));
}

/* ── Capture ───────────────────────────────────────────────────────────────
 * Returns true when a source was pressed. A key arrives via the wndproc (so we
 * get a real VK rather than translating back out of ImGuiKey); controller
 * sources are polled here. */
bool CaptureBinding(PadBinding &out)
{
    if (g_pending_vk) {
        out.kind = PADSRC_KEY;
        out.code = g_pending_vk;
        g_pending_vk = 0;
        return true;
    }

    XINPUT_STATE xi;
    for (DWORD pad = 0; pad < XBOX_INPUT_HOST_PADS; ++pad) {
        if (!xbox_InputReadHostPad(pad, &xi)) continue;

        static const int kButtons[] = {
            XINPUT_GAMEPAD_A, XINPUT_GAMEPAD_B, XINPUT_GAMEPAD_X, XINPUT_GAMEPAD_Y,
            XINPUT_GAMEPAD_LEFT_SHOULDER, XINPUT_GAMEPAD_RIGHT_SHOULDER,
            XINPUT_GAMEPAD_START, XINPUT_GAMEPAD_BACK,
            XINPUT_GAMEPAD_LEFT_THUMB, XINPUT_GAMEPAD_RIGHT_THUMB,
            XINPUT_GAMEPAD_DPAD_UP, XINPUT_GAMEPAD_DPAD_DOWN,
            XINPUT_GAMEPAD_DPAD_LEFT, XINPUT_GAMEPAD_DPAD_RIGHT,
        };
        for (int b : kButtons) {
            if (xi.Gamepad.wButtons & b) {
                out.kind = PADSRC_PAD_BUTTON; out.code = b; return true;
            }
        }
        if (xi.Gamepad.bLeftTrigger  > 80) { out.kind = PADSRC_PAD_TRIGGER; out.code = 0; return true; }
        if (xi.Gamepad.bRightTrigger > 80) { out.kind = PADSRC_PAD_TRIGGER; out.code = 1; return true; }

        /* Sticks: well past the resting deadzone so a drifting stick does not
         * capture itself the moment a row starts listening. */
        const SHORT kDead = 16000;
        struct { SHORT v; int neg, pos; } ax[] = {
            { xi.Gamepad.sThumbLX, PADAXIS_LX_NEG, PADAXIS_LX_POS },
            { xi.Gamepad.sThumbLY, PADAXIS_LY_NEG, PADAXIS_LY_POS },
            { xi.Gamepad.sThumbRX, PADAXIS_RX_NEG, PADAXIS_RX_POS },
            { xi.Gamepad.sThumbRY, PADAXIS_RY_NEG, PADAXIS_RY_POS },
        };
        for (auto &a : ax) {
            if (a.v >  kDead) { out.kind = PADSRC_PAD_AXIS; out.code = a.pos; return true; }
            if (a.v < -kDead) { out.kind = PADSRC_PAD_AXIS; out.code = a.neg; return true; }
        }
    }
    return false;
}

/* ── Controls section ─────────────────────────────────────────────────────*/

/* "Reset to defaults" and "Save" at the right end of the row, the last
 * status message at the left. Returns 1 for reset, 2 for save. */
int ResetSaveRow()
{
    const ImGuiStyle &style = ImGui::GetStyle();
    float w = ImGui::CalcTextSize("Reset to defaults").x + ImGui::CalcTextSize("Save").x +
              style.FramePadding.x * 4.0f + style.ItemSpacing.x;
    float right = ImGui::GetCursorPosX() + ImGui::GetContentRegionAvail().x;
    int hit = 0;
    ImGui::AlignTextToFramePadding();
    if (g_status[0]) ImGui::TextDisabled("%s", g_status);
    else ImGui::TextUnformatted("");
    ImGui::SameLine(right - w);
    if (ImGui::Button("Reset to defaults")) hit = 1;
    ImGui::SameLine();
    if (ImGui::Button("Save")) hit = 2;
    return hit;
}

void DrawControlsSection()
{
    PadMapping *m = pad_mapping_get();

    switch (ResetSaveRow()) {
    case 1:
        pad_mapping_reset_defaults();
        g_listening = -1;
        SetStatus("Mapping reset to defaults");
        break;
    case 2:
        SetStatus(pad_mapping_save(NULL) ? "Saved doa3_input.ini"
                                         : "Could not write doa3_input.ini");
        break;
    }

    ImGui::Separator();

    if (!ImGui::BeginTable("##pad", 2,
                           ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg |
                           ImGuiTableFlags_ScrollY | ImGuiTableFlags_SizingStretchProp))
        return;

    ImGui::TableSetupColumn("Xbox control", ImGuiTableColumnFlags_WidthFixed, 140.0f);
    ImGui::TableSetupColumn("Bound to");
    ImGui::TableSetupScrollFreeze(0, 1);
    ImGui::TableHeadersRow();

    const char *group = nullptr;
    for (int i = 0; i < PADCTL_COUNT; ++i) {
        const char *g = pad_ctl_group(i);
        if (!group || strcmp(g, group) != 0) {
            group = g;
            ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
            ImGui::TableSetColumnIndex(0);
            ImGui::TextDisabled("%s", g);
            ImGui::TableSetColumnIndex(1);
            ImGui::TextUnformatted("");
        }

        ImGui::TableNextRow();
        ImGui::TableSetColumnIndex(0);
        ImGui::TextUnformatted(pad_ctl_key(i));

        ImGui::TableSetColumnIndex(1);
        ImGui::PushID(i);
        const bool listening = (g_listening == i);
        char label[96];
        if (listening) _snprintf_s(label, sizeof(label), _TRUNCATE, "%s", "[ press an input ]");
        else           pad_binding_label(m->b[i], label, sizeof(label));

        if (listening) ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.55f, 0.38f, 0.10f, 1.0f));
        if (ImGui::Button(label, ImVec2(-1.0f, 0.0f))) {
            g_listening  = listening ? -1 : i;
            g_armed      = false;
            g_pending_vk = 0;
        }
        if (listening) ImGui::PopStyleColor();

        if (ImGui::BeginPopupContextItem("##ctx")) {
            if (ImGui::MenuItem("Clear")) { m->b[i].kind = PADSRC_NONE; m->b[i].code = 0; }
            ImGui::EndPopup();
        }
        ImGui::PopID();
    }
    ImGui::EndTable();

    /* Resolve a listening row. Skipping one frame keeps the initiating mouse
     * click (and a key still held from opening the menu) out of the capture. */
    if (g_listening >= 0 && g_listening < PADCTL_COUNT) {
        if (!g_armed) {
            g_armed = true;
        } else {
            PadBinding cap;
            if (CaptureBinding(cap)) {
                m->b[g_listening] = cap;
                char lbl[96];
                pad_binding_label(cap, lbl, sizeof(lbl));
                char msg[160];
                _snprintf_s(msg, sizeof(msg), _TRUNCATE, "%s bound to %s",
                            pad_ctl_key(g_listening), lbl);
                SetStatus(msg);
                g_listening = -1;
                g_armed = false;
            }
        }
    }


}

/* ── Video section ────────────────────────────────────────────────────────*/

void DrawVideoSection()
{
    static const char *kWindow[] = { "Windowed", "Borderless fullscreen" };
    static const char *kAspect[] = { "4:3", "16:9" };
    static const char *kScale[]  = { "1x (480p)", "2x (960p)", "3x (1440p)" };

    switch (ResetSaveRow()) {
    case 1:
        video_set_window_mode(VIDEO_BORDERLESS);
        video_set_aspect(VIDEO_ASPECT_16_9);
        video_set_scale(3);
        SetStatus("Video settings reset to defaults");
        break;
    case 2:
        SetStatus(video_settings_save() ? "Saved doa3_settings.ini"
                                        : "Could not write doa3_settings.ini");
        break;
    }

    ImGui::Separator();

    int wm = video_get_window_mode();
    if (ImGui::Combo("Window type", &wm, kWindow, IM_ARRAYSIZE(kWindow)) &&
        wm != video_get_window_mode())
        video_set_window_mode(wm);

    int ar = video_get_aspect();
    if (ImGui::Combo("Aspect ratio", &ar, kAspect, IM_ARRAYSIZE(kAspect)) &&
        ar != video_get_aspect())
        video_set_aspect(ar);

    int sc = video_get_scale() - 1;
    if (ImGui::Combo("Internal resolution", &sc, kScale, IM_ARRAYSIZE(kScale)) &&
        sc + 1 != video_get_scale())
        video_set_scale(sc + 1);
}

/* ── Check for Updates ────────────────────────────────────────────────────
 * Compares the latest GitHub release tag against this build's version and,
 * if it is higher, downloads the release zip and swaps DOA3.exe in place. */

std::atomic<bool> g_upd_busy{ false };
char g_upd_msg[256] = { 0 };

void UpdMsg(const char *s) { _snprintf_s(g_upd_msg, sizeof(g_upd_msg), _TRUNCATE, "%s", s); }

bool HttpGet(const std::wstring &url, std::string *out)
{
    URL_COMPONENTS uc = { sizeof(uc) };
    wchar_t host[256], path[2048];
    uc.lpszHostName = host; uc.dwHostNameLength = 256;
    uc.lpszUrlPath  = path; uc.dwUrlPathLength  = 2048;
    if (!WinHttpCrackUrl(url.c_str(), 0, 0, &uc)) return false;
    if (uc.dwExtraInfoLength) wcsncat_s(path, uc.lpszExtraInfo, uc.dwExtraInfoLength);

    bool ok = false;
    HINTERNET s = WinHttpOpen(L"DOA3", WINHTTP_ACCESS_TYPE_AUTOMATIC_PROXY,
                              WINHTTP_NO_PROXY_NAME, WINHTTP_NO_PROXY_BYPASS, 0);
    HINTERNET c = s ? WinHttpConnect(s, host, uc.nPort, 0) : NULL;
    HINTERNET r = c ? WinHttpOpenRequest(c, L"GET", path, NULL, WINHTTP_NO_REFERER,
                                         WINHTTP_DEFAULT_ACCEPT_TYPES, WINHTTP_FLAG_SECURE) : NULL;
    if (r && WinHttpSendRequest(r, WINHTTP_NO_ADDITIONAL_HEADERS, 0, WINHTTP_NO_REQUEST_DATA, 0, 0, 0) &&
        WinHttpReceiveResponse(r, NULL)) {
        DWORD status = 0, sz = sizeof(status);
        WinHttpQueryHeaders(r, WINHTTP_QUERY_STATUS_CODE | WINHTTP_QUERY_FLAG_NUMBER,
                            WINHTTP_HEADER_NAME_BY_INDEX, &status, &sz, WINHTTP_NO_HEADER_INDEX);
        ok = status == 200;
        char buf[65536];
        DWORD got = 0;
        while (ok && WinHttpReadData(r, buf, sizeof(buf), &got) && got)
            out->append(buf, got);
    }
    if (r) WinHttpCloseHandle(r);
    if (c) WinHttpCloseHandle(c);
    if (s) WinHttpCloseHandle(s);
    return ok;
}

/* The string after "key": in the release JSON, searching from `at`. */
std::string JsonStr(const std::string &js, const char *key, size_t *at)
{
    size_t p = js.find(std::string("\"") + key + "\"", *at);
    if (p == std::string::npos || (p = js.find('"', js.find(':', p) + 1)) == std::string::npos) return "";
    size_t e = js.find('"', p + 1);
    *at = e;
    return js.substr(p + 1, e - p - 1);
}

bool VersionHigher(const char *remote, const char *local)
{
    int r[3] = { 0 }, l[3] = { 0 };
    sscanf_s(remote + (*remote == 'v'), "%d.%d.%d", &r[0], &r[1], &r[2]);
    sscanf_s(local, "%d.%d.%d", &l[0], &l[1], &l[2]);
    for (int i = 0; i < 3; ++i)
        if (r[i] != l[i]) return r[i] > l[i];
    return false;
}

void CheckForUpdates()
{
    std::string js;
    size_t at = 0;
    if (!HttpGet(L"https://api.github.com/repos/parkerallan/doa3-recomp/releases/latest", &js)) {
        UpdMsg("Could not reach GitHub");
        return;
    }
    std::string tag = JsonStr(js, "tag_name", &at);
    if (tag.empty()) { UpdMsg("No release found"); return; }
    char msg[256];
    if (!VersionHigher(tag.c_str(), DOA3_VERSION_STRING)) {
        _snprintf_s(msg, sizeof(msg), _TRUNCATE, "Already on the latest version (v%s)", DOA3_VERSION_STRING);
        UpdMsg(msg);
        return;
    }

    std::string url;
    at = 0;
    while (!(url = JsonStr(js, "browser_download_url", &at)).empty())
        if (url.size() > 4 && url.compare(url.size() - 4, 4, ".zip") == 0) break;
    if (url.empty()) { UpdMsg("The release has no download"); return; }

    _snprintf_s(msg, sizeof(msg), _TRUNCATE, "Downloading %s...", tag.c_str());
    UpdMsg(msg);

    wchar_t exe[MAX_PATH];
    GetModuleFileNameW(NULL, exe, MAX_PATH);
    std::wstring exe_path = exe;
    std::wstring fresh = exe_path + L".new";
    std::wstring old = exe_path + L".old";

    /* Download the zip into memory and pull DOA3.exe out of it. */
    std::string zip;
    bool ok = HttpGet(std::wstring(url.begin(), url.end()), &zip);
    if (ok) {
        mz_zip_archive za = {};
        size_t size = 0;
        void *data = NULL;
        if (mz_zip_reader_init_mem(&za, zip.data(), zip.size(), 0)) {
            data = mz_zip_reader_extract_file_to_heap(&za, "DOA3.exe", &size, 0);
            mz_zip_reader_end(&za);
        }
        DWORD wr = 0;
        HANDLE f = data ? CreateFileW(fresh.c_str(), GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL)
                        : INVALID_HANDLE_VALUE;
        ok = f != INVALID_HANDLE_VALUE && WriteFile(f, data, (DWORD)size, &wr, NULL) && wr == size;
        if (f != INVALID_HANDLE_VALUE) CloseHandle(f);
        mz_free(data);
    }

    /* The running exe cannot be overwritten, but it can be renamed. The
     * renamed one is deleted when the game next starts (main.c). */
    if (ok) {
        DeleteFileW(old.c_str());
        ok = MoveFileExW(exe_path.c_str(), old.c_str(), MOVEFILE_REPLACE_EXISTING) != 0;
        if (ok && !MoveFileExW(fresh.c_str(), exe_path.c_str(), MOVEFILE_REPLACE_EXISTING)) {
            MoveFileExW(old.c_str(), exe_path.c_str(), MOVEFILE_REPLACE_EXISTING);
            ok = false;
        }
    }
    DeleteFileW(fresh.c_str());

    _snprintf_s(msg, sizeof(msg), _TRUNCATE,
                ok ? "Updated to %s. Restart the game to use it." : "Update to %s failed", tag.c_str());
    UpdMsg(msg);
}

/* ── General section ──────────────────────────────────────────────────────*/

void DrawGeneralSection()
{
    switch (ResetSaveRow()) {
    case 1:
        doa3_log_set_enabled(0);
        doa3_movies_set_enabled(1);
        doa3_fps_set_enabled(0);
        doa3_fps_set_corner(FPS_TOP_LEFT);
        SetStatus("General settings reset to defaults");
        break;
    case 2:
        SetStatus(doa3_log_save() && doa3_movies_save() && doa3_fps_save()
                      ? "Saved doa3_settings.ini" : "Could not write doa3_settings.ini");
        break;
    }

    ImGui::Separator();

    bool on = doa3_log_enabled() != 0;
    if (ImGui::Checkbox("Write log files", &on))
        doa3_log_set_enabled(on ? 1 : 0);

    bool no_fmv = doa3_movies_enabled() == 0;
    if (ImGui::Checkbox("Disable FMV playback", &no_fmv))
        doa3_movies_set_enabled(no_fmv ? 0 : 1);

    static const char *kCorner[] = { "Top left", "Top right", "Bottom left", "Bottom right" };
    bool fps = doa3_fps_enabled() != 0;
    if (ImGui::Checkbox("Show FPS counter", &fps))
        doa3_fps_set_enabled(fps ? 1 : 0);
    ImGui::SameLine();
    if (!fps) ImGui::BeginDisabled();
    int corner = doa3_fps_corner();
    ImGui::SetNextItemWidth(140.0f);
    if (ImGui::Combo("##fps_corner", &corner, kCorner, IM_ARRAYSIZE(kCorner)))
        doa3_fps_set_corner(corner);
    if (!fps) ImGui::EndDisabled();

    if (g_upd_busy) ImGui::BeginDisabled();
    if (ImGui::Button("Check for Updates")) {
        g_upd_busy = true;
        UpdMsg("Checking for updates...");
        std::thread([] { CheckForUpdates(); g_upd_busy = false; }).detach();
    }
    if (g_upd_busy) ImGui::EndDisabled();
    if (g_upd_msg[0]) ImGui::TextWrapped("%s", g_upd_msg);

    /* Quit centred above the bottom edge, version bottom-left. */
    const float gap = 24.0f;
    float bottom = ImGui::GetCursorPosY() + ImGui::GetContentRegionAvail().y -
                   ImGui::GetFrameHeight() - gap - ImGui::GetTextLineHeight();
    if (bottom > ImGui::GetCursorPosY()) ImGui::SetCursorPosY(bottom);
    float quit_w = ImGui::CalcTextSize("Quit Game").x + ImGui::GetStyle().FramePadding.x * 2.0f;
    ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (ImGui::GetContentRegionAvail().x - quit_w) * 0.5f);
    ImGui::PushStyleColor(ImGuiCol_Button,        ImVec4(0.70f, 0.12f, 0.12f, 1.0f));
    ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.85f, 0.18f, 0.18f, 1.0f));
    ImGui::PushStyleColor(ImGuiCol_ButtonActive,  ImVec4(0.55f, 0.08f, 0.08f, 1.0f));
    if (ImGui::Button("Quit Game")) PostMessageA(d3d8_GetHWND(), WM_CLOSE, 0, 0);
    ImGui::PopStyleColor(3);
    ImGui::SetCursorPosY(ImGui::GetCursorPosY() + ImGui::GetContentRegionAvail().y - ImGui::GetTextLineHeight());
    ImGui::TextDisabled("v%s", DOA3_VERSION_STRING);
}

/* ── Online section ───────────────────────────────────────────────────────*/

/* Online play has something to show over the game (a wait, a disconnect, a
 * desync) even when the menu is closed. */
bool NetplayBannerPending()
{
    char b[8];
    return netplay_banner(b, sizeof(b)) != 0;
}

void DrawNetplayBanner()
{
    char text[200];
    if (!netplay_banner(text, sizeof(text))) return;
    const ImGuiViewport *vp = ImGui::GetMainViewport();
    ImVec2 size = ImGui::CalcTextSize(text);
    ImGui::SetNextWindowPos(ImVec2(vp->WorkPos.x + vp->WorkSize.x * 0.5f, vp->WorkPos.y + 24.0f),
                            ImGuiCond_Always, ImVec2(0.5f, 0.0f));
    ImGui::SetNextWindowSize(ImVec2(size.x + 32.0f, 0.0f), ImGuiCond_Always);
    ImGui::SetNextWindowBgAlpha(0.75f);
    if (ImGui::Begin("##netplay_banner", nullptr,
                     ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoInputs |
                     ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoFocusOnAppearing |
                     ImGuiWindowFlags_NoNav | ImGuiWindowFlags_AlwaysAutoResize)) {
        ImGui::TextUnformatted(text);
    }
    ImGui::End();
}

void DrawFpsCounter()
{
    char text[16];
    _snprintf_s(text, sizeof(text), _TRUNCATE, "%.0f", d3d8_GetGameFPS());

    const ImGuiViewport *vp = ImGui::GetMainViewport();
    ImFont *font = g_fps_font ? g_fps_font : ImGui::GetFont();
    float size = vp->WorkSize.y * 0.045f;
    if (size < 24.0f) size = 24.0f;
    float pad = size * 0.4f;
    ImVec2 ts = font->CalcTextSizeA(size, FLT_MAX, 0.0f, text);

    int c = doa3_fps_corner();
    bool right = c == FPS_TOP_RIGHT || c == FPS_BOTTOM_RIGHT;
    bool bottom = c == FPS_BOTTOM_LEFT || c == FPS_BOTTOM_RIGHT;
    ImVec2 pos(right  ? vp->WorkPos.x + vp->WorkSize.x - pad - ts.x : vp->WorkPos.x + pad,
               bottom ? vp->WorkPos.y + vp->WorkSize.y - pad - ts.y : vp->WorkPos.y + pad);

    ImDrawList *dl = ImGui::GetForegroundDrawList();
    const ImU32 outline = IM_COL32(0, 0, 0, 255);
    float o = size / 16.0f;
    for (int dx = -1; dx <= 1; ++dx)
        for (int dy = -1; dy <= 1; ++dy)
            if (dx || dy) dl->AddText(font, size, ImVec2(pos.x + dx * o, pos.y + dy * o), outline, text);
    dl->AddText(font, size, pos, IM_COL32(255, 255, 0, 255), text);
}

void DrawOnlineSection()
{
    static const char *kState[] = { "Off", "Armed - waiting for VS character select", "Session running" };
    static char s_join[128];
    static int  s_join_init = 0;
    static int  s_port = 0;
    np_status st;
    npl_status nl;
    netplay_get_status(&st);
    netplay_get(&nl);
    if (!s_join_init) {
        s_join_init = 1;
        s_join[0] = 0;   /* starts empty; nothing pre-filled */
    }
    if (!s_port) s_port = (int)netplay_port();

    bool online = nl.state != NPL_OFFLINE;
    bool connected = nl.state == NPL_CONNECTED || nl.state == NPL_INMATCH;

    /* status, with Save at the right end of the same line */
    {
        const ImGuiStyle &style = ImGui::GetStyle();
        float w = ImGui::CalcTextSize("Save").x + style.FramePadding.x * 2.0f;
        float right = ImGui::GetCursorPosX() + ImGui::GetContentRegionAvail().x;
        ImGui::AlignTextToFramePadding();
        ImGui::PushTextWrapPos(right - w - style.ItemSpacing.x);
        if (nl.state == NPL_INMATCH && nl.stalling)
            ImGui::TextColored(ImVec4(1.0f, 0.8f, 0.3f, 1.0f), "%s", nl.status);
        else if (nl.desynced)
            ImGui::TextColored(ImVec4(1.0f, 0.45f, 0.35f, 1.0f), "%s", nl.status);
        else
            ImGui::TextWrapped("%s", nl.status);
        ImGui::PopTextWrapPos();
        ImGui::SameLine(right - w);
        if (ImGui::Button("Save")) {
            netplay_set_port((unsigned short)s_port);
            SetStatus(netplay_settings_save() ? "Saved doa3_settings.ini" : "Could not write doa3_settings.ini");
        }
        if (g_status[0]) ImGui::TextDisabled("%s", g_status);
    }
    if (nl.event[0]) ImGui::TextWrapped("%s", nl.event);

    (void)connected;
    if (nl.is_host && online) {
        /* the host's code: the one thing the other player needs */
        ImGui::SeparatorText("Your code");
        if (nl.my_code[0]) {
            ImGui::Text("%s", nl.my_code);
            ImGui::SameLine();
            if (ImGui::SmallButton("Copy")) { ImGui::SetClipboardText(nl.my_code); SetStatus("Code copied"); }
            if (nl.my_code_note[0]) ImGui::TextDisabled("%s", nl.my_code_note);
        }
    } else if (!online) {
        ImGui::SeparatorText("Join");
        ImGui::SetNextItemWidth(220);
        bool enter = ImGui::InputText("##code", s_join, sizeof(s_join), ImGuiInputTextFlags_EnterReturnsTrue);
        ImGui::SameLine();
        if (ImGui::Button("Join") || enter) netplay_use_code(s_join);
        ImGui::SameLine();
        if (ImGui::Button("Host")) {
            netplay_set_port((unsigned short)s_port);
            netplay_host((unsigned short)s_port);
        }
    }
    if (online && ImGui::Button("Disconnect")) netplay_disconnect();
    if (nl.hint[0]) ImGui::TextWrapped("%s", nl.hint);

    /* delay */
    ImGui::SeparatorText("Input delay");
    {
        int automatic = netplay_delay_auto();
        int manual = netplay_delay_manual();
        bool in_match = nl.state == NPL_INMATCH;
        if (in_match) ImGui::BeginDisabled();
        if (ImGui::RadioButton("Auto (from the ping)", automatic != 0)) netplay_set_delay(1, manual);
        ImGui::SameLine();
        if (ImGui::RadioButton("Manual", automatic == 0)) netplay_set_delay(0, manual);
        ImGui::SameLine();
        ImGui::SetNextItemWidth(120);
        if (ImGui::SliderInt("frames", &manual, 1, 8)) netplay_set_delay(automatic, manual);
        if (in_match) ImGui::EndDisabled();
    }

    ImGui::Separator();
    if (nl.state == NPL_INMATCH)
        ImGui::Text("%s Battle online, %.1f frames ahead of the other side",
                    nl.match_tag ? "Tag" : "Single", nl.frames_ahead);

    ImGui::Separator();
    if (ImGui::CollapsingHeader("Developer Settings")) {
        static int role = NP_ROLE_HOST;
        bool armed = netplay_armed() != 0;
        bool running = st.state == NP_STATE_ACTIVE;

        if (running || online) ImGui::BeginDisabled();
        ImGui::RadioButton("Host path", &role, NP_ROLE_HOST);
        ImGui::SameLine();
        ImGui::RadioButton("Joiner path", &role, NP_ROLE_JOINER);
        bool mirror = netplay_mirror() != 0;
        if (ImGui::Checkbox("Player 2 mirrors Player 1 (one controller)", &mirror))
            netplay_set_mirror(mirror ? 1 : 0);
        if (ImGui::Checkbox("Arm local session", &armed))
            netplay_set_armed(armed ? 1 : 0, role);
        if (running || online) ImGui::EndDisabled();

        bool diag = netplay_diag() != 0;
        if (ImGui::Checkbox("Diagnostic logs", &diag))
            netplay_set_diag(diag ? 1 : 0);
        ImGui::Text("State: %s", kState[st.state < 3 ? st.state : 0]);
        if (running) {
            ImGui::Text("%s Battle, %s path, frame %u",
                        st.tag ? "Tag" : "Single",
                        st.role == NP_ROLE_JOINER ? "joiner" : "host", st.frame);
            ImGui::Text("Digest %016llX", (unsigned long long)st.digest);
        }
        ImGui::Text("Sessions completed: %u", st.sessions);
        if (st.last_log[0]) ImGui::TextDisabled("Last log: %s", st.last_log);

        /* Determinism check: record a session, then replay it (ideally in a
         * fresh launch) and see whether every frame's digest matches. */
        ImGui::Separator();
        bool record = netplay_record() != 0;
        if (ImGui::Checkbox("Record each session to a replay file", &record))
            netplay_set_record(record ? 1 : 0);

        static char s_files[32][128];
        static int s_nfiles = -1, s_pick = 0;
        if (s_nfiles < 0 || ImGui::Button("Refresh")) {
            s_nfiles = netplay_list_replays(s_files, 32);
            if (s_pick >= s_nfiles) s_pick = 0;
        }
        if (s_nfiles > 0) {
            ImGui::SameLine();
            ImGui::SetNextItemWidth(330);
            if (ImGui::BeginCombo("##replay", s_files[s_pick])) {
                for (int i = 0; i < s_nfiles; i++)
                    if (ImGui::Selectable(s_files[i], i == s_pick)) s_pick = i;
                ImGui::EndCombo();
            }
            if (running) ImGui::BeginDisabled();
            if (ImGui::Button("Replay selected")) netplay_request_replay(s_files[s_pick]);
            if (running) ImGui::EndDisabled();
        } else {
            ImGui::SameLine();
            ImGui::TextDisabled("No replay files yet");
        }
        if (running && st.replaying) {
            if (st.diverged_at == 0xFFFFFFFFu)
                ImGui::Text("Replay frame %u / %u - matching", st.frame, st.replay_frames);
            else
                ImGui::TextColored(ImVec4(1.0f, 0.45f, 0.35f, 1.0f),
                                   "Replay frame %u / %u - diverged at frame %u",
                                   st.frame, st.replay_frames, st.diverged_at);
        }
        if (st.message[0]) ImGui::TextWrapped("%s", st.message);
    }
}

void DrawMenu()
{
    const ImGuiViewport *vp = ImGui::GetMainViewport();
    /* Re-centre when the window is resized (window type change). */
    static ImVec2 s_last_size;
    bool resized = vp->WorkSize.x != s_last_size.x || vp->WorkSize.y != s_last_size.y;
    s_last_size = vp->WorkSize;
    ImGui::SetNextWindowPos(ImVec2(vp->WorkPos.x + vp->WorkSize.x * 0.5f,
                                   vp->WorkPos.y + vp->WorkSize.y * 0.5f),
                            resized ? ImGuiCond_Always : ImGuiCond_Appearing, ImVec2(0.5f, 0.5f));
    ImGui::SetNextWindowSize(ImVec2(560, 460), ImGuiCond_Appearing);

    bool open = true;
    if (ImGui::Begin("Dead or Alive 3", &open, ImGuiWindowFlags_NoCollapse)) {
        if (ImGui::BeginTabBar("##tabs")) {
            if (ImGui::BeginTabItem("General")) {
                DrawGeneralSection();
                ImGui::EndTabItem();
            }
            if (ImGui::BeginTabItem("Online")) {
                DrawOnlineSection();
                ImGui::EndTabItem();
            }
            if (ImGui::BeginTabItem("Controls")) {
                DrawControlsSection();
                ImGui::EndTabItem();
            }
            if (ImGui::BeginTabItem("Video")) {
                DrawVideoSection();
                ImGui::EndTabItem();
            }

            ImGui::EndTabBar();
        }
    }
    ImGui::End();

    if (!open) {
        g_visible = false;
        pad_mapping_set_menu_open(0);
        RefreshCursor();
    }
}

} /* namespace */

/* ── C API ─────────────────────────────────────────────────────────────── */

extern "C" int doa3_ui_init(void)
{
    if (g_ready) return 1;

    HWND hwnd = d3d8_GetHWND();
    ID3D11Device *dev = d3d8_GetD3D11Device();
    ID3D11DeviceContext *ctx = d3d8_GetD3D11Context();
    if (!hwnd || !dev || !ctx) return 0;

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO &io = ImGui::GetIO();
    /* No imgui.ini: the overlay is one centred window, and writing a settings
     * file into the game's working directory is just clutter. */
    io.IniFilename = nullptr;
    /* Restored: with this off the pad stopped being read in the mapper.
     * The Win32 backend only initialises its XInput path when gamepad nav
     * is enabled, and removing this is what broke capture. */
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
    ImGui::StyleColorsDark();

    /* Default font stays first (the menu); a bold system font for the FPS
     * counter, falling back to the default scaled up if it is not installed. */
    io.Fonts->AddFontDefault();
    char font_path[MAX_PATH];
    UINT n = GetWindowsDirectoryA(font_path, MAX_PATH);
    if (n && n < MAX_PATH - 32) {
        strcat_s(font_path, sizeof(font_path), "\\Fonts\\arialbd.ttf");
        if (GetFileAttributesA(font_path) != INVALID_FILE_ATTRIBUTES)
            g_fps_font = io.Fonts->AddFontFromFileTTF(font_path, 64.0f);
    }

    if (!ImGui_ImplWin32_Init(hwnd)) { ImGui::DestroyContext(); return 0; }
    if (!ImGui_ImplDX11_Init(dev, ctx)) {
        ImGui_ImplWin32_Shutdown();
        ImGui::DestroyContext();
        return 0;
    }

    g_ready = true;
    return 1;
}

extern "C" void doa3_ui_shutdown(void)
{
    if (!g_ready) return;
    g_ready = false;
    g_fps_font = nullptr;
    ImGui_ImplDX11_Shutdown();
    ImGui_ImplWin32_Shutdown();
    ImGui::DestroyContext();
}

extern "C" int doa3_ui_visible(void) { return g_visible ? 1 : 0; }

extern "C" void doa3_ui_toggle(void)
{
    g_visible = !g_visible;
    g_listening = -1;
    g_armed = false;
    g_pending_vk = 0;
    /* Keyboard sources are suppressed while the menu owns the keyboard. */
    pad_mapping_set_menu_open(g_visible ? 1 : 0);
    RefreshCursor();
}

extern "C" int doa3_ui_wndproc(HWND hwnd, UINT msg, WPARAM wp, LPARAM lp)
{
    /* Escape: cancel a listening row first, otherwise toggle the overlay. It is
     * handled here rather than as a bindable key so the menu can always be
     * closed, whatever the mapping says. */
    if (msg == WM_KEYDOWN && wp == VK_ESCAPE && !(lp & (1 << 30))) {
        if (g_visible && g_listening >= 0) {
            g_listening = -1;
            g_armed = false;
            SetStatus("Rebind cancelled");
        } else {
            doa3_ui_toggle();
        }
        return 1;
    }

    /* No cursor over the game while the overlay is closed. */
    if (msg == WM_SETCURSOR && LOWORD(lp) == HTCLIENT && !g_visible) {
        SetCursor(NULL);
        return 1;
    }

    if (!g_ready || !g_visible) return 0;

    /* Grab the raw VK for a listening row before ImGui swallows it. */
    if (msg == WM_KEYDOWN && g_listening >= 0 && g_armed && wp != VK_ESCAPE)
        g_pending_vk = (int)wp;

    ImGui_ImplWin32_WndProcHandler(hwnd, msg, wp, lp);

    /* Keep mouse/keyboard out of the game while the overlay has them. */
    ImGuiIO &io = ImGui::GetIO();
    switch (msg) {
    case WM_KEYDOWN: case WM_KEYUP: case WM_SYSKEYDOWN: case WM_SYSKEYUP: case WM_CHAR:
        return io.WantCaptureKeyboard ? 1 : 0;
    case WM_MOUSEMOVE:
    case WM_LBUTTONDOWN: case WM_LBUTTONUP: case WM_LBUTTONDBLCLK:
    case WM_RBUTTONDOWN: case WM_RBUTTONUP: case WM_RBUTTONDBLCLK:
    case WM_MBUTTONDOWN: case WM_MBUTTONUP: case WM_MBUTTONDBLCLK:
    case WM_MOUSEWHEEL:  case WM_MOUSEHWHEEL:
        return io.WantCaptureMouse ? 1 : 0;
    default:
        return 0;
    }
}

extern "C" void doa3_ui_render(void)
{
    /* Nothing to do on a normal frame unless the menu is open, the FPS counter
     * is on, or online play has something to say over the game. */
    if (!g_visible && !doa3_fps_enabled() && !NetplayBannerPending()) return;
    if (!g_ready && !doa3_ui_init()) return;

    ID3D11DeviceContext *ctx = d3d8_GetD3D11Context();
    /* Drawn after the guest frame has been scaled into the window, so the
     * overlay is at window resolution and lines up with the mouse. */
    ID3D11RenderTargetView *rtv = d3d8_GetPresentRTV();
    if (!ctx || !rtv) return;

    /* The overlay replaces the output-merger targets and the viewport below.
     * Save the viewport: the guest only re-sets its own when it calls
     * SetViewport, not once a frame. */
    D3D11_VIEWPORT prev_vp[D3D11_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE];
    UINT prev_nvp = D3D11_VIEWPORT_AND_SCISSORRECT_OBJECT_COUNT_PER_PIPELINE;
    ctx->RSGetViewports(&prev_nvp, prev_vp);

    ImGui_ImplDX11_NewFrame();
    ImGui_ImplWin32_NewFrame();
    ImGui::NewFrame();

    if (doa3_fps_enabled()) DrawFpsCounter();
    if (g_visible) DrawMenu();
    DrawNetplayBanner();

    ImGui::Render();

    /* The pgraph translator and the movie presenter each bind their own target
     * and viewport; bind the backbuffer explicitly rather than inheriting
     * whatever the last draw left set. */
    D3D11_VIEWPORT vp;
    vp.TopLeftX = 0.0f; vp.TopLeftY = 0.0f;
    vp.Width  = (FLOAT)d3d8_GetPresentWidth();
    vp.Height = (FLOAT)d3d8_GetPresentHeight();
    vp.MinDepth = 0.0f; vp.MaxDepth = 1.0f;
    ctx->OMSetRenderTargets(1, &rtv, nullptr);
    ctx->RSSetViewports(1, &vp);

    ImGui_ImplDX11_RenderDrawData(ImGui::GetDrawData());
    /* Hand the output merger back with the depth buffer attached. The bind
     * above passes a null depth-stencil view; leaving that bound means every
     * guest draw afterwards runs with no depth test and no depth writes. */
    d3d8_RestoreDefaultTarget();
    if (prev_nvp) ctx->RSSetViewports(prev_nvp, prev_vp);
}
