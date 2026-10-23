/**
 * Log files on/off, persisted as Logging= in the [General] section of
 * doa3_settings.ini. Off by default: stderr goes to NUL and xbox_kernel.log is
 * not written. On: stderr goes to doa3_log.txt and the kernel layer writes
 * xbox_kernel.log, both next to the working directory as before.
 *
 * A stderr the launcher redirected (a shell `2> file`) is left alone either
 * way, so a redirected run still captures everything.
 */
#ifndef DOA3_LOG_SETTINGS_H
#define DOA3_LOG_SETTINGS_H

#ifdef __cplusplus
extern "C" {
#endif

/* Read the setting and route stderr. Call once, before anything is logged. */
void doa3_log_init(void);

int  doa3_log_enabled(void);
/* Takes effect immediately; turning it on starts fresh log files. */
void doa3_log_set_enabled(int on);
/* Returns non-zero on success. */
int  doa3_log_save(void);

/* Movies on/off, persisted as Movies= in [General] (default on). Off: every
 * FMV is skipped unopened, so the .sfd files and ninja.aix need not be installed. */
int  doa3_movies_enabled(void);
void doa3_movies_set_enabled(int on);
int  doa3_movies_save(void);

/* FPS counter, persisted as FpsCounter= (0/1) and FpsCorner= in [General]. */
enum { FPS_TOP_LEFT, FPS_TOP_RIGHT, FPS_BOTTOM_LEFT, FPS_BOTTOM_RIGHT };
int  doa3_fps_enabled(void);
void doa3_fps_set_enabled(int on);
int  doa3_fps_corner(void);
void doa3_fps_set_corner(int corner);
int  doa3_fps_save(void);

#ifdef __cplusplus
}
#endif

#endif /* DOA3_LOG_SETTINGS_H */
