/**
 * Performance monitor: per-frame time by subsystem on the game thread, a
 * history for the overlay graph, and doa3_perf.log entries for slow frames.
 * Nothing is measured while it is off.
 */
#ifndef DOA3_PERF_H
#define DOA3_PERF_H

#ifdef __cplusplus
extern "C" {
#endif

enum {
    PERF_GAME,        /* game logic: frame time not claimed by any part below */
    PERF_TRANSLATE,   /* push-buffer -> D3D11 translation */
    PERF_DRAW,        /* draw submission */
    PERF_TEXTURE,     /* texture lookup and conversion */
    PERF_STREAMING,   /* CRI worker fibers (file streaming, audio/movie decode) */
    PERF_AUDIO,       /* APU interrupt delivery */
    PERF_COMPOSE,     /* frame -> window, overlay */
    PERF_PRESENT,     /* DXGI Present */
    PERF_ONLINE,      /* waiting on the other player */
    PERF_COUNT
};

#define PERF_HISTORY 300

extern volatile int g_perf_on;

void perf_begin_(int part);
void perf_end_(int part);
void perf_fiber_(int to_worker);
#define perf_begin(p)       do { if (g_perf_on) perf_begin_(p); } while (0)
#define perf_end(p)         do { if (g_perf_on) perf_end_(p); } while (0)
#define perf_fiber(worker)  do { if (g_perf_on) perf_fiber_(worker); } while (0)

/* The game finished a frame. */
void perf_frame(void);

void perf_set_enabled(int on);
/* Frames longer than this are logged (17..200 ms, default 20). */
void perf_set_threshold_ms(int ms);
const char *perf_part_name(int part);

/* Oldest-first copy of up to PERF_HISTORY frames, ms per part. Returns the count. */
int perf_history(float out[][PERF_COUNT], int max);

#ifdef __cplusplus
}
#endif

#endif /* DOA3_PERF_H */
