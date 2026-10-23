/**
 * DirectInput game controllers -> XInput-shaped state. Enumeration is slow, so
 * it runs on a worker thread; XInput devices are skipped (their path has "IG_").
 */

#define DIRECTINPUT_VERSION 0x0800
#include "dinput_device.h"

#include <dinput.h>
#include <xinput.h>
#include <stdlib.h>
#include <string.h>

#pragma comment(lib, "dinput8.lib")
#pragma comment(lib, "dxguid.lib")

HWND d3d8_GetHWND(void);

#define MAX_FOUND 16

/* ── Enumeration (worker thread) ───────────────────────────────────────── */

static INIT_ONCE        s_once = INIT_ONCE_STATIC_INIT;
static CRITICAL_SECTION s_found_lock;   /* s_found, s_found_n, s_found_gen */
static CRITICAL_SECTION s_pad_lock;     /* s_pad, s_di, s_synced_gen */
static HANDLE           s_enum_event;
static GUID             s_found[MAX_FOUND];
static int              s_found_n;
static LONG             s_found_gen;

typedef struct { GUID g[MAX_FOUND]; int n; } FoundList;

static BOOL is_xinput_device(const GUID *product)
{
    RAWINPUTDEVICELIST *list;
    UINT n = 0, i;
    BOOL hit = FALSE;

    if (GetRawInputDeviceList(NULL, &n, sizeof(*list)) != 0 || n == 0) return FALSE;
    list = (RAWINPUTDEVICELIST *)malloc(n * sizeof(*list));
    if (!list) return FALSE;
    n = GetRawInputDeviceList(list, &n, sizeof(*list));
    if (n == (UINT)-1) n = 0;

    for (i = 0; i < n && !hit; i++) {
        RID_DEVICE_INFO info;
        UINT size = sizeof(info);
        char name[512];
        UINT len = sizeof(name);

        if (list[i].dwType != RIM_TYPEHID) continue;
        info.cbSize = sizeof(info);
        if (GetRawInputDeviceInfoA(list[i].hDevice, RIDI_DEVICEINFO, &info, &size) == (UINT)-1)
            continue;
        if ((DWORD)MAKELONG(info.hid.dwVendorId, info.hid.dwProductId) != product->Data1)
            continue;
        if (GetRawInputDeviceInfoA(list[i].hDevice, RIDI_DEVICENAME, name, &len) == (UINT)-1)
            continue;
        name[sizeof(name) - 1] = 0;
        if (strstr(name, "IG_") || strstr(name, "ig_")) hit = TRUE;
    }
    free(list);
    return hit;
}

static BOOL CALLBACK enum_device_cb(LPCDIDEVICEINSTANCEA inst, LPVOID ctx)
{
    FoundList *out = (FoundList *)ctx;
    switch (GET_DIDEVICE_TYPE(inst->dwDevType)) {
    case DI8DEVTYPE_GAMEPAD:
    case DI8DEVTYPE_JOYSTICK:
    case DI8DEVTYPE_1STPERSON:
    case DI8DEVTYPE_DRIVING:
    case DI8DEVTYPE_FLIGHT:
        break;
    default:
        return DIENUM_CONTINUE;
    }
    if (is_xinput_device(&inst->guidProduct)) return DIENUM_CONTINUE;
    if (out->n < MAX_FOUND) out->g[out->n++] = inst->guidInstance;
    return DIENUM_CONTINUE;
}

static DWORD WINAPI enum_thread(LPVOID unused)
{
    IDirectInput8A *di = NULL;
    (void)unused;
    if (FAILED(DirectInput8Create(GetModuleHandleA(NULL), DIRECTINPUT_VERSION,
                                  &IID_IDirectInput8A, (void **)&di, NULL)))
        return 0;

    for (;;) {
        FoundList list;
        WaitForSingleObject(s_enum_event, INFINITE);
        Sleep(300);   /* let a newly plugged driver settle */

        list.n = 0;
        di->lpVtbl->EnumDevices(di, DI8DEVCLASS_GAMECTRL, enum_device_cb, &list,
                                DIEDFL_ATTACHEDONLY);

        EnterCriticalSection(&s_found_lock);
        memcpy(s_found, list.g, sizeof(GUID) * (size_t)list.n);
        s_found_n = list.n;
        s_found_gen++;
        LeaveCriticalSection(&s_found_lock);
    }
}

static BOOL CALLBACK init_once(PINIT_ONCE once, PVOID param, PVOID *ctx)
{
    HANDLE t;
    (void)once; (void)param; (void)ctx;
    InitializeCriticalSection(&s_found_lock);
    InitializeCriticalSection(&s_pad_lock);
    s_enum_event = CreateEventA(NULL, FALSE, TRUE, NULL);
    t = CreateThread(NULL, 0, enum_thread, NULL, 0, NULL);
    if (t) CloseHandle(t);
    return TRUE;
}

static void ensure_init(void)
{
    InitOnceExecuteOnce(&s_once, init_once, NULL, NULL);
}

void dinput_pads_changed(void)
{
    ensure_init();
    SetEvent(s_enum_event);
}

/* ── Open pads (caller's thread) ───────────────────────────────────────── */

typedef struct {
    IDirectInputDevice8A *dev;
    GUID                  guid;
    BOOL                  rest_known;
    LONG                  trig_rest[2];
    int                   ff_n;
    DWORD                 ff_axis[2];
    IDirectInputEffect   *fx[2];
    BOOL                  fx_periodic[2];
    WORD                  rumble[2];
    XINPUT_GAMEPAD        last;
    DWORD                 packet;
} DiPad;

static IDirectInput8A *s_di;
static DiPad           s_pad[DINPUT_MAX_PADS];
static LONG            s_synced_gen;

static BOOL CALLBACK enum_object_cb(LPCDIDEVICEOBJECTINSTANCEA obj, LPVOID ctx)
{
    DiPad *p = (DiPad *)ctx;
    DIPROPRANGE r;
    r.diph.dwSize       = sizeof(r);
    r.diph.dwHeaderSize = sizeof(r.diph);
    r.diph.dwHow        = DIPH_BYID;
    r.diph.dwObj        = obj->dwType;
    r.lMin = -32768;
    r.lMax =  32767;
    p->dev->lpVtbl->SetProperty(p->dev, DIPROP_RANGE, &r.diph);

    if ((obj->dwFlags & DIDOI_FFACTUATOR) && p->ff_n < 2)
        p->ff_axis[p->ff_n++] = obj->dwOfs;
    return DIENUM_CONTINUE;
}

/* One effect per actuator: constant force, else sine. */
static void create_effects(DiPad *p)
{
    DIPROPDWORD ac;
    int i;

    ac.diph.dwSize       = sizeof(ac);
    ac.diph.dwHeaderSize = sizeof(ac.diph);
    ac.diph.dwHow        = DIPH_DEVICE;
    ac.diph.dwObj        = 0;
    ac.dwData            = DIPROPAUTOCENTER_OFF;
    p->dev->lpVtbl->SetProperty(p->dev, DIPROP_AUTOCENTER, &ac.diph);
    p->dev->lpVtbl->SendForceFeedbackCommand(p->dev, DISFFC_RESET);

    for (i = 0; i < p->ff_n; i++) {
        DWORD axis = p->ff_axis[i];
        LONG dir = 0;
        DICONSTANTFORCE cf = { 0 };
        DIPERIODIC pe = { 0 };
        DIEFFECT e;

        memset(&e, 0, sizeof(e));
        e.dwSize          = sizeof(e);
        e.dwFlags         = DIEFF_CARTESIAN | DIEFF_OBJECTOFFSETS;
        e.dwDuration      = INFINITE;
        e.dwGain          = DI_FFNOMINALMAX;
        e.dwTriggerButton = DIEB_NOTRIGGER;
        e.cAxes           = 1;
        e.rgdwAxes        = &axis;
        e.rglDirection    = &dir;

        e.cbTypeSpecificParams  = sizeof(cf);
        e.lpvTypeSpecificParams = &cf;
        if (SUCCEEDED(p->dev->lpVtbl->CreateEffect(p->dev, &GUID_ConstantForce, &e, &p->fx[i], NULL)))
            continue;

        pe.dwPeriod = DI_SECONDS / 20;
        e.cbTypeSpecificParams  = sizeof(pe);
        e.lpvTypeSpecificParams = &pe;
        if (SUCCEEDED(p->dev->lpVtbl->CreateEffect(p->dev, &GUID_Sine, &e, &p->fx[i], NULL)))
            p->fx_periodic[i] = TRUE;
        else
            p->fx[i] = NULL;
    }
}

static void close_pad(DiPad *p)
{
    int i;
    for (i = 0; i < 2; i++) {
        if (!p->fx[i]) continue;
        p->fx[i]->lpVtbl->Stop(p->fx[i]);
        p->fx[i]->lpVtbl->Release(p->fx[i]);
    }
    if (p->dev) {
        p->dev->lpVtbl->Unacquire(p->dev);
        p->dev->lpVtbl->Release(p->dev);
    }
    memset(p, 0, sizeof(*p));
}

static BOOL open_pad(DiPad *p, const GUID *guid, HWND hwnd)
{
    IDirectInputDevice8A *dev = NULL;

    memset(p, 0, sizeof(*p));
    if (FAILED(s_di->lpVtbl->CreateDevice(s_di, guid, &dev, NULL))) return FALSE;
    p->dev  = dev;
    p->guid = *guid;

    if (FAILED(dev->lpVtbl->SetDataFormat(dev, &c_dfDIJoystick2))) goto fail;
    dev->lpVtbl->EnumObjects(dev, enum_object_cb, p, DIDFT_AXIS);

    /* Force feedback needs exclusive access; fall back to shared without it. */
    if (p->ff_n &&
        SUCCEEDED(dev->lpVtbl->SetCooperativeLevel(dev, hwnd, DISCL_EXCLUSIVE | DISCL_BACKGROUND)) &&
        SUCCEEDED(dev->lpVtbl->Acquire(dev))) {
        create_effects(p);
    } else {
        p->ff_n = 0;
        if (FAILED(dev->lpVtbl->SetCooperativeLevel(dev, hwnd, DISCL_NONEXCLUSIVE | DISCL_BACKGROUND)) ||
            FAILED(dev->lpVtbl->Acquire(dev)))
            goto fail;
    }
    return TRUE;

fail:
    close_pad(p);
    return FALSE;
}

static BOOL guid_in(const GUID *list, int n, const GUID *g)
{
    int i;
    for (i = 0; i < n; i++)
        if (IsEqualGUID(&list[i], g)) return TRUE;
    return FALSE;
}

DWORD dinput_pads_refresh(void)
{
    GUID found[MAX_FOUND];
    int  n, i, j;
    LONG gen;
    DWORD mask = 0;

    ensure_init();

    EnterCriticalSection(&s_found_lock);
    gen = s_found_gen;
    n   = s_found_n;
    memcpy(found, s_found, sizeof(GUID) * (size_t)n);
    LeaveCriticalSection(&s_found_lock);

    EnterCriticalSection(&s_pad_lock);
    if (gen != s_synced_gen) {
        HWND hwnd = d3d8_GetHWND();
        if (!s_di && hwnd)
            DirectInput8Create(GetModuleHandleA(NULL), DIRECTINPUT_VERSION,
                               &IID_IDirectInput8A, (void **)&s_di, NULL);
        if (s_di && hwnd) {
            for (i = 0; i < DINPUT_MAX_PADS; i++)
                if (s_pad[i].dev && !guid_in(found, n, &s_pad[i].guid))
                    close_pad(&s_pad[i]);

            for (j = 0; j < n; j++) {
                int open = 0, slot = -1;
                for (i = 0; i < DINPUT_MAX_PADS; i++) {
                    if (s_pad[i].dev && IsEqualGUID(&s_pad[i].guid, &found[j])) open = 1;
                    else if (!s_pad[i].dev && slot < 0) slot = i;
                }
                if (!open && slot >= 0) open_pad(&s_pad[slot], &found[j], hwnd);
            }
            s_synced_gen = gen;
        }
    }
    for (i = 0; i < DINPUT_MAX_PADS; i++)
        if (s_pad[i].dev) mask |= 1u << i;
    LeaveCriticalSection(&s_pad_lock);
    return mask;
}

/* ── Read ──────────────────────────────────────────────────────────────── */

static SHORT clamp_short(LONG v)
{
    if (v >  32767) return  32767;
    if (v < -32768) return (SHORT)-32768;
    return (SHORT)v;
}

/* Distance past the resting position, scaled to 0..255. */
static BYTE trigger_value(LONG v, LONG rest)
{
    LONGLONG t;
    if (rest >= 32767 || v <= rest) return 0;
    t = ((LONGLONG)(v - rest) * 255) / (32767 - rest);
    return (BYTE)(t > 255 ? 255 : t);
}

BOOL dinput_pad_read(int index, void *xinput_state)
{
    static const WORD k_buttons[12] = {
        XINPUT_GAMEPAD_X, XINPUT_GAMEPAD_A, XINPUT_GAMEPAD_B, XINPUT_GAMEPAD_Y,
        XINPUT_GAMEPAD_LEFT_SHOULDER, XINPUT_GAMEPAD_RIGHT_SHOULDER,
        0, 0,   /* triggers */
        XINPUT_GAMEPAD_BACK, XINPUT_GAMEPAD_START,
        XINPUT_GAMEPAD_LEFT_THUMB, XINPUT_GAMEPAD_RIGHT_THUMB,
    };
    XINPUT_STATE *xi = (XINPUT_STATE *)xinput_state;
    XINPUT_GAMEPAD g;
    DIJOYSTATE2 js;
    DiPad *p;
    HRESULT hr;
    DWORD pov;
    int b;
    BOOL ok = FALSE;

    if (index < 0 || index >= DINPUT_MAX_PADS || !xi) return FALSE;
    ensure_init();
    EnterCriticalSection(&s_pad_lock);
    p = &s_pad[index];
    if (!p->dev) goto out;

    p->dev->lpVtbl->Poll(p->dev);
    hr = p->dev->lpVtbl->GetDeviceState(p->dev, sizeof(js), &js);
    if (hr == DIERR_INPUTLOST || hr == DIERR_NOTACQUIRED) {
        if (SUCCEEDED(p->dev->lpVtbl->Acquire(p->dev))) {
            p->dev->lpVtbl->Poll(p->dev);
            hr = p->dev->lpVtbl->GetDeviceState(p->dev, sizeof(js), &js);
        }
    }
    if (FAILED(hr)) {
        close_pad(p);
        goto out;
    }

    if (!p->rest_known) {
        p->trig_rest[0] = js.lRx;
        p->trig_rest[1] = js.lRy;
        p->rest_known = TRUE;
    }

    memset(&g, 0, sizeof(g));
    g.sThumbLX = clamp_short(js.lX);
    g.sThumbLY = clamp_short(-js.lY);
    g.sThumbRX = clamp_short(js.lZ);
    g.sThumbRY = clamp_short(-js.lRz);
    g.bLeftTrigger  = trigger_value(js.lRx, p->trig_rest[0]);
    g.bRightTrigger = trigger_value(js.lRy, p->trig_rest[1]);

    for (b = 0; b < 12; b++) {
        if (!(js.rgbButtons[b] & 0x80)) continue;
        if (b == 6)      g.bLeftTrigger  = 255;
        else if (b == 7) g.bRightTrigger = 255;
        else             g.wButtons |= k_buttons[b];
    }

    pov = js.rgdwPOV[0];
    if (LOWORD(pov) != 0xFFFF) {
        if (pov > 27000 || pov < 9000)    g.wButtons |= XINPUT_GAMEPAD_DPAD_UP;
        if (pov > 0     && pov < 18000)   g.wButtons |= XINPUT_GAMEPAD_DPAD_RIGHT;
        if (pov > 9000  && pov < 27000)   g.wButtons |= XINPUT_GAMEPAD_DPAD_DOWN;
        if (pov > 18000)                  g.wButtons |= XINPUT_GAMEPAD_DPAD_LEFT;
    }

    if (memcmp(&g, &p->last, sizeof(g)) != 0) {
        p->last = g;
        p->packet++;
    }
    xi->dwPacketNumber = p->packet;
    xi->Gamepad = g;
    ok = TRUE;

out:
    LeaveCriticalSection(&s_pad_lock);
    return ok;
}

/* ── Rumble ────────────────────────────────────────────────────────────── */

static void set_motor(DiPad *p, int i, WORD speed)
{
    LONG mag = (LONG)(((DWORD)speed * DI_FFNOMINALMAX) / 65535u);
    DICONSTANTFORCE cf;
    DIPERIODIC pe;
    DIEFFECT e;
    HRESULT hr;

    memset(&e, 0, sizeof(e));
    e.dwSize = sizeof(e);
    if (p->fx_periodic[i]) {
        memset(&pe, 0, sizeof(pe));
        pe.dwMagnitude = (DWORD)mag;
        pe.dwPeriod    = DI_SECONDS / 20;
        e.cbTypeSpecificParams  = sizeof(pe);
        e.lpvTypeSpecificParams = &pe;
    } else {
        cf.lMagnitude = mag;
        e.cbTypeSpecificParams  = sizeof(cf);
        e.lpvTypeSpecificParams = &cf;
    }

    hr = p->fx[i]->lpVtbl->SetParameters(p->fx[i], &e, DIEP_TYPESPECIFICPARAMS | DIEP_START);
    if (hr == DIERR_INPUTLOST || hr == DIERR_NOTEXCLUSIVEACQUIRED || hr == DIERR_NOTACQUIRED) {
        if (SUCCEEDED(p->dev->lpVtbl->Acquire(p->dev)))
            p->fx[i]->lpVtbl->SetParameters(p->fx[i], &e, DIEP_TYPESPECIFICPARAMS | DIEP_START);
    }
}

void dinput_pad_rumble(int index, WORD left, WORD right)
{
    WORD want[2];
    DiPad *p;
    int i;

    if (index < 0 || index >= DINPUT_MAX_PADS) return;
    ensure_init();
    EnterCriticalSection(&s_pad_lock);
    p = &s_pad[index];
    if (p->dev && p->ff_n) {
        if (p->ff_n == 1) {
            want[0] = left > right ? left : right;
            want[1] = 0;
        } else {
            want[0] = left;
            want[1] = right;
        }
        for (i = 0; i < p->ff_n; i++) {
            if (!p->fx[i] || want[i] == p->rumble[i]) continue;
            set_motor(p, i, want[i]);
            p->rumble[i] = want[i];
        }
    }
    LeaveCriticalSection(&s_pad_lock);
}
