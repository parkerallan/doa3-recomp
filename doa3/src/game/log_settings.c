/**
 * Log settings (see log_settings.h).
 */
#include <windows.h>
#include <stdio.h>

#include "log_settings.h"
#include "video_settings.h"
#include "../kernel/kernel.h"
#include "../kernel/perf.h"

static int g_enabled = 0;
static int g_own_stderr = 0;   /* stderr was a console or absent, so it is ours to route */

static void route_stderr(void)
{
    if (g_own_stderr) {
        freopen(g_enabled ? "doa3_log.txt" : "NUL", "w", stderr);
        setvbuf(stderr, NULL, _IONBF, 0);
    }
    xbox_log_set_enabled(g_enabled);
}

void doa3_log_init(void)
{
    /* GetConsoleMode only succeeds on a console handle, so a redirected or
     * piped stderr is left exactly as the caller set it. Double-clicked debug
     * builds own a real console, and unbuffered console writes starve the
     * guest badly enough that boot never completes; release builds have no
     * stderr at all. Both get routed here. */
    HANDLE herr = GetStdHandle(STD_ERROR_HANDLE);
    DWORD cmode;
    g_own_stderr = herr == NULL || herr == INVALID_HANDLE_VALUE ||
                   GetConsoleMode(herr, &cmode);
    g_enabled = GetPrivateProfileIntA("General", "Logging", 0,
                                      doa3_settings_ini_path()) != 0;
    route_stderr();
}

int doa3_log_enabled(void) { return g_enabled; }

void doa3_log_set_enabled(int on)
{
    on = on ? 1 : 0;
    if (on == g_enabled) return;
    g_enabled = on;
    route_stderr();
}

int doa3_log_save(void)
{
    /* Logging: 0 = off, 1 = write doa3_log.txt and xbox_kernel.log. */
    return WritePrivateProfileStringA("General", "Logging", g_enabled ? "1" : "0",
                                      doa3_settings_ini_path());
}

static int g_movies = -1;   /* -1 = not read from the ini yet */

int doa3_movies_enabled(void)
{
    if (g_movies < 0)
        g_movies = GetPrivateProfileIntA("General", "Movies", 1,
                                         doa3_settings_ini_path()) != 0;
    return g_movies;
}

void doa3_movies_set_enabled(int on) { g_movies = on ? 1 : 0; }

int doa3_movies_save(void)
{
    /* Movies: 0 = skip every FMV, 1 = play them. */
    return WritePrivateProfileStringA("General", "Movies",
                                      doa3_movies_enabled() ? "1" : "0",
                                      doa3_settings_ini_path());
}

static int g_fps = -1, g_fps_corner = -1;   /* -1 = not read from the ini yet */

int doa3_fps_enabled(void)
{
    if (g_fps < 0)
        g_fps = GetPrivateProfileIntA("General", "FpsCounter", 0, doa3_settings_ini_path()) != 0;
    return g_fps;
}

void doa3_fps_set_enabled(int on) { g_fps = on ? 1 : 0; }

int doa3_fps_corner(void)
{
    if (g_fps_corner < 0) {
        g_fps_corner = (int)GetPrivateProfileIntA("General", "FpsCorner", FPS_TOP_LEFT,
                                                  doa3_settings_ini_path());
        if (g_fps_corner < FPS_TOP_LEFT || g_fps_corner > FPS_BOTTOM_RIGHT)
            g_fps_corner = FPS_TOP_LEFT;
    }
    return g_fps_corner;
}

void doa3_fps_set_corner(int corner)
{
    if (corner >= FPS_TOP_LEFT && corner <= FPS_BOTTOM_RIGHT) g_fps_corner = corner;
}

int doa3_fps_save(void)
{
    /* FpsCounter: 0 = off, 1 = on. FpsCorner: 0 top-left, 1 top-right, 2 bottom-left, 3 bottom-right. */
    char corner[2] = { (char)('0' + doa3_fps_corner()), 0 };
    return WritePrivateProfileStringA("General", "FpsCounter", doa3_fps_enabled() ? "1" : "0",
                                      doa3_settings_ini_path()) &&
           WritePrivateProfileStringA("General", "FpsCorner", corner, doa3_settings_ini_path());
}

static int g_perfmon = -1;   /* -1 = not read from the ini yet */

int doa3_perfmon_enabled(void)
{
    if (g_perfmon < 0)
        g_perfmon = GetPrivateProfileIntA("General", "PerfMonitor", 0, doa3_settings_ini_path()) != 0;
    return g_perfmon;
}

void doa3_perfmon_set_enabled(int on)
{
    g_perfmon = on ? 1 : 0;
    perf_set_threshold_ms(doa3_perfmon_threshold());
    perf_set_enabled(g_perfmon);
}

static int g_perf_threshold = -1;   /* -1 = not read from the ini yet */

int doa3_perfmon_threshold(void)
{
    if (g_perf_threshold < 0) {
        g_perf_threshold = (int)GetPrivateProfileIntA("General", "PerfThreshold", 20,
                                                      doa3_settings_ini_path());
        if (g_perf_threshold < 17) g_perf_threshold = 17;
        if (g_perf_threshold > 200) g_perf_threshold = 200;
    }
    return g_perf_threshold;
}

void doa3_perfmon_set_threshold(int ms)
{
    if (ms < 17) ms = 17;
    if (ms > 200) ms = 200;
    g_perf_threshold = ms;
    perf_set_threshold_ms(ms);
}

int doa3_perfmon_save(void)
{
    /* PerfMonitor: 0 = off, 1 = measure, graph in the Esc menu, write doa3_perf.log.
     * PerfThreshold: frames longer than this many ms are logged. */
    char ms[8];
    _snprintf_s(ms, sizeof(ms), _TRUNCATE, "%d", doa3_perfmon_threshold());
    return WritePrivateProfileStringA("General", "PerfMonitor", doa3_perfmon_enabled() ? "1" : "0",
                                      doa3_settings_ini_path()) &&
           WritePrivateProfileStringA("General", "PerfThreshold", ms, doa3_settings_ini_path());
}
