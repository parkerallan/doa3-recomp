/* Performance monitor (see perf.h). */
#include "perf.h"

#include <windows.h>
#include <stdio.h>
#include <string.h>

#define STACK_MAX    8
#define WARMUP       30      /* frames before "normal" means anything */
#define EMA_ALPHA    0.05

volatile int g_perf_on = 0;
static double s_slow_ms = 20.0;   /* frames longer than this are logged */

static const char *k_names[PERF_COUNT] = {
    "game logic", "GPU command translation", "draw submission", "texture conversion",
    "streaming/decode", "audio interrupt", "compose", "present wait", "online wait",
};

static DWORD         s_tid;           /* game thread: the one that finishes frames */
static LARGE_INTEGER s_freq;
static LONGLONG      s_frame_t;
static LONGLONG      s_acc[PERF_COUNT];
static struct { int part; LONGLONG t; } s_stack[STACK_MAX];
static int           s_depth;
static int           s_in_worker;

static float  s_hist[PERF_HISTORY][PERF_COUNT];
static int    s_head, s_count;
static double s_normal[PERF_COUNT];
static int    s_seen;

static FILE    *s_log;
static int      s_log_opened;
static LONGLONG s_flush_t;

static LONGLONG now_ticks(void)
{
    LARGE_INTEGER t;
    QueryPerformanceCounter(&t);
    return t.QuadPart;
}

static double ticks_ms(LONGLONG t) { return (double)t * 1000.0 / (double)s_freq.QuadPart; }

void perf_begin_(int part)
{
    LONGLONG now;
    if (GetCurrentThreadId() != s_tid) return;
    now = now_ticks();
    /* Exclusive time: the enclosing part stops accruing while this one runs. */
    if (s_depth > 0 && s_depth <= STACK_MAX)
        s_acc[s_stack[s_depth - 1].part] += now - s_stack[s_depth - 1].t;
    if (s_depth < STACK_MAX) {
        s_stack[s_depth].part = part;
        s_stack[s_depth].t = now;
    }
    s_depth++;
}

void perf_end_(int part)
{
    LONGLONG now;
    (void)part;
    if (GetCurrentThreadId() != s_tid || s_depth == 0) return;
    now = now_ticks();
    s_depth--;
    if (s_depth < STACK_MAX)
        s_acc[s_stack[s_depth].part] += now - s_stack[s_depth].t;
    if (s_depth > 0 && s_depth <= STACK_MAX)
        s_stack[s_depth - 1].t = now;
}

void perf_fiber_(int to_worker)
{
    if (to_worker && !s_in_worker) {
        perf_begin_(PERF_STREAMING);
        s_in_worker = 1;
    } else if (!to_worker && s_in_worker) {
        perf_end_(PERF_STREAMING);
        s_in_worker = 0;
    }
}

static void log_open(void)
{
    SYSTEMTIME st;
    s_log = fopen("doa3_perf.log", s_log_opened ? "a" : "w");
    if (!s_log) return;
    GetLocalTime(&st);
    fprintf(s_log, "%sPerformance monitor on %04u-%02u-%02u %02u:%02u:%02u. "
                   "Frames over %.0f ms; each part's time over its normal.\n",
            s_log_opened ? "\n" : "", st.wYear, st.wMonth, st.wDay,
            st.wHour, st.wMinute, st.wSecond, s_slow_ms);
    s_log_opened = 1;
}

static void log_slow_frame(double frame_ms, const double ms[PERF_COUNT])
{
    SYSTEMTIME st;
    int order[PERF_COUNT], n = 0, i, j;
    double over[PERF_COUNT];

    if (!s_log) return;
    for (i = 0; i < PERF_COUNT; i++) {
        over[i] = ms[i] - s_normal[i];
        if (over[i] >= 0.1) order[n++] = i;
    }
    for (i = 1; i < n; i++)
        for (j = i; j > 0 && over[order[j]] > over[order[j - 1]]; j--) {
            int t = order[j]; order[j] = order[j - 1]; order[j - 1] = t;
        }

    GetLocalTime(&st);
    fprintf(s_log, "%02u:%02u:%02u.%03u  frame %.1f ms ", st.wHour, st.wMinute,
            st.wSecond, st.wMilliseconds, frame_ms);
    for (i = 0; i < n; i++)
        fprintf(s_log, "%s %s +%.1f ms", i ? "," : "", k_names[order[i]], over[order[i]]);
    fputc('\n', s_log);
}

void perf_frame(void)
{
    LONGLONG now, frame;
    double ms[PERF_COUNT], frame_ms, claimed = 0.0;
    int i;

    if (!s_tid) s_tid = GetCurrentThreadId();
    if (GetCurrentThreadId() != s_tid) return;
    now = now_ticks();
    if (!s_frame_t) {
        s_frame_t = now;
        memset(s_acc, 0, sizeof(s_acc));
        return;
    }
    /* A part still open at the boundary is split across the two frames. */
    if (s_depth > 0 && s_depth <= STACK_MAX) {
        s_acc[s_stack[s_depth - 1].part] += now - s_stack[s_depth - 1].t;
        s_stack[s_depth - 1].t = now;
    }

    frame = now - s_frame_t;
    s_frame_t = now;
    frame_ms = ticks_ms(frame);
    for (i = 1; i < PERF_COUNT; i++) {
        ms[i] = ticks_ms(s_acc[i]);
        claimed += ms[i];
    }
    ms[PERF_GAME] = frame_ms > claimed ? frame_ms - claimed : 0.0;
    memset(s_acc, 0, sizeof(s_acc));

    for (i = 0; i < PERF_COUNT; i++) s_hist[s_head][i] = (float)ms[i];
    s_head = (s_head + 1) % PERF_HISTORY;
    if (s_count < PERF_HISTORY) s_count++;

    if (s_seen >= WARMUP && frame_ms > s_slow_ms) {
        log_slow_frame(frame_ms, ms);
    } else {
        /* Normal = running average of frames that were not slow. */
        for (i = 0; i < PERF_COUNT; i++)
            s_normal[i] = s_seen ? s_normal[i] + (ms[i] - s_normal[i]) * EMA_ALPHA : ms[i];
        if (s_seen < WARMUP) s_seen++;
    }

    if (s_log && ticks_ms(now - s_flush_t) >= 1000.0) {
        fflush(s_log);
        s_flush_t = now;
    }
}

void perf_set_enabled(int on)
{
    on = on ? 1 : 0;
    if (on == g_perf_on) return;
    if (on) {
        if (!s_freq.QuadPart) QueryPerformanceFrequency(&s_freq);
        s_frame_t = 0;
        s_depth = 0;
        s_in_worker = 0;
        s_head = s_count = 0;
        s_seen = 0;
        memset(s_acc, 0, sizeof(s_acc));
        log_open();
        s_flush_t = now_ticks();
        g_perf_on = 1;
    } else {
        g_perf_on = 0;
        if (s_log) { fclose(s_log); s_log = NULL; }
    }
}

void perf_set_threshold_ms(int ms)
{
    if (ms < 17) ms = 17;
    if (ms > 200) ms = 200;
    if (s_log && (double)ms != s_slow_ms)
        fprintf(s_log, "Threshold changed to %d ms.\n", ms);
    s_slow_ms = (double)ms;
}

const char *perf_part_name(int part)
{
    return (part >= 0 && part < PERF_COUNT) ? k_names[part] : "?";
}

int perf_history(float out[][PERF_COUNT], int max)
{
    int n = s_count < max ? s_count : max, i;
    int start = (s_head - n + PERF_HISTORY) % PERF_HISTORY;
    for (i = 0; i < n; i++)
        memcpy(out[i], s_hist[(start + i) % PERF_HISTORY], sizeof(out[i]));
    return n;
}
