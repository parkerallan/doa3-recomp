/**
 * Log settings (see log_settings.h).
 */
#include <windows.h>
#include <stdio.h>

#include "log_settings.h"
#include "video_settings.h"
#include "../kernel/kernel.h"

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
