/**
 * DirectInput game controllers, read as XINPUT_STATE through one generic layout.
 */

#ifndef DOA3_DINPUT_DEVICE_H
#define DOA3_DINPUT_DEVICE_H

#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

#define DINPUT_MAX_PADS 8

/* Sync open pads with the latest enumeration; returns connected pads as a bitmask. */
DWORD dinput_pads_refresh(void);
/* Read pad `index` into an XINPUT_STATE. FALSE (and released) when unplugged. */
BOOL  dinput_pad_read(int index, void *xinput_state);
void  dinput_pad_rumble(int index, WORD left, WORD right);
/* WM_DEVICECHANGE: re-enumerate. */
void  dinput_pads_changed(void);

#ifdef __cplusplus
}
#endif

#endif /* DOA3_DINPUT_DEVICE_H */
