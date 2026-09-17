/**
 * DOA3 - the per-screen-state draw routines.
 *
 * sub_000CD8C0 runs once a frame for the active screen. After submitting the
 * frame's common sprites through sub_000CD390 it tail-jumps to a draw routine
 * chosen by the screen-state byte 0x8612AD:
 *
 *     eax = MEM32(state * 4 + 0x00369128);  if (eax) jmp eax;
 *
 * Four of that table's six routines were never recompiled. Nothing references
 * them by address -- they are reached only through the table -- so the
 * direct-call scan never promoted them and they had no body and no dispatch
 * entry. The tail-jump then failed silently every frame (RECOMP_ITAIL only
 * reports each distinct target once, hence the single easily-missed
 * "[ITAILF] unresolved tail-jump target 0x000CB480" line).
 *
 * The cost is most of each affected screen. On mode select (state 0 ->
 * sub_000CB480) cxbx shows the retail game submitting 53 overlay sprites per
 * frame; this port submitted 10 -- exactly the ones sub_000CD390 emits before
 * the tail jump. The missing 43 are the mode-icon carousel from XPR bundle #5
 * and the information bar's glyph text.
 *
 * States covered here: 0 (sub_000CB480), 3 (sub_000CD280), 5 (sub_000C88D0),
 * 7 (sub_000C8900). States 4 and 9 were already present.
 *
 * Extents were verified by walking each function's basic blocks to a real
 * terminator; every callee already existed, so the set closed immediately.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stdio.h>
#include <math.h>

void sub_000C88D0(void);
void sub_000C8900(void);
void sub_000CB480(void);
void sub_000CD280(void);

void sub_000C88D0(void)
{

loc_000C88D0: ;
    edx = 0xA;
    ecx = edx;
    PUSH32(esp, 0); sub_0017EC00(); /* call 0x0017EC00 */

loc_000C88DC: ;
    PUSH32(esp, 0x206E10);
    PUSH32(esp, 0); sub_00178710(); /* call 0x00178710 */

loc_000C88E6: ;
    eax = MEM32(esp + 8);
    ecx = (uint32_t)(int32_t)SMEM8(eax + 0x1E6);
    PUSH32(esp, ecx);
    PUSH32(esp, 0x206DFC);
    PUSH32(esp, 0); sub_00178710(); /* call 0x00178710 */

loc_000C88FC: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}


void sub_000C8900(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000C8900: ;
    edx = 0xA;
    ecx = edx;
    PUSH32(esp, 0); sub_0017EC00(); /* call 0x0017EC00 */

loc_000C890C: ;
    MEM32(esp + 4) = 0x206E24;
    g_seh_ebp = ebp; sub_00178710(); return; /* tail jmp 0x00178710 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}


void sub_000CB480(void)
{

loc_000CB480: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 8);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000C9030(); /* call 0x000C9030 */

loc_000CB48B: ;
    esp = esp + 4;
    PUSH32(esp, 0); sub_000C83D0(); /* call 0x000C83D0 */

loc_000CB493: ;
    POP32(esp, edi);
    esp += 4; return; /* ret */

}


void sub_000CD280(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CD280: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 8);
    eax = (uint32_t)(int32_t)SMEM8(edi + 0x1CD);
    eax = eax + eax * 4;
    if (CMP_NE(MEM16(edi + eax * 4 + 0xFC), 1)) goto loc_000CD2A4; /* jne: not equal / not zero */

loc_000CD29A: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_000672B0(); /* call 0x000672B0 */

loc_000CD2A1: ;
    esp = esp + 4;

loc_000CD2A4: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000C99E0(); /* call 0x000C99E0 */

loc_000CD2AA: ;
    PUSH32(esp, 0); sub_000694E0(); /* call 0x000694E0 */

loc_000CD2AF: ;
    PUSH32(esp, 8);
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00069320(); /* call 0x00069320 */

loc_000CD2BA: ;
    esi = esi | 0xFFFFFFFFu;
    SET_LO8(edx, 8);
    eax = 0x14D;
    ecx = 0xAB;
    PUSH32(esp, 0); sub_000C8920(); /* call 0x000C8920 */

loc_000CD2CE: ;
    eax = edi;
    PUSH32(esp, 0); sub_000C8570(); /* call 0x000C8570 */

loc_000CD2D5: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000C9B70(); /* call 0x000C9B70 */

loc_000CD2DB: ;
    eax = MEM32(edi + 0x1D8);
    esp = esp + 0x10;
    /* test eax, eax - flags set for next jcc */
    POP32(esp, esi);
    if (TEST_Z(eax, eax)) goto loc_000CD2F8; /* je: equal / zero */

loc_000CD2E9: ;
    if (CMP_LE(eax & eax, 0)) goto loc_000CD301; /* jle: less or equal (signed <=) */

loc_000CD2EB: ;
    if (CMP_G(eax, 2)) goto loc_000CD301; /* jg: greater (signed >) */

loc_000CD2F0: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000CBE00(); /* call 0x000CBE00 */

loc_000CD2F6: ;
    goto loc_000CD2FE;

loc_000CD2F8: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000C9F00(); /* call 0x000C9F00 */

loc_000CD2FE: ;
    esp = esp + 4;

loc_000CD301: ;
    PUSH32(esp, 0xFF202020u);
    PUSH32(esp, 0); sub_00153960(); /* call 0x00153960 */

loc_000CD30B: ;
    SET_LO8(eax, MEM8(0x47E723));
    esp = esp + 4;
    /* cmp LO8(eax), 0xA - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_NE(LO8(eax), 0xA)) goto loc_000CD31F; /* jne: not equal / not zero */

loc_000CD318: ;
    PUSH32(esp, 0); sub_000CBAB0(); /* call 0x000CBAB0 */

loc_000CD31D: ;
    goto loc_000CD336;

loc_000CD31F: ;
    SET_LO8(eax, MEM8(0x48E612));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000CD331; /* je: equal / zero */

loc_000CD328: ;
    PUSH32(esp, 0); sub_000CB8E0(); /* call 0x000CB8E0 */

loc_000CD32D: ;
    PUSH32(esp, 4);
    goto loc_000CD338;

loc_000CD331: ;
    PUSH32(esp, 0); sub_000CB660(); /* call 0x000CB660 */

loc_000CD336: ;
    PUSH32(esp, 2);

loc_000CD338: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000CA540(); /* call 0x000CA540 */

loc_000CD33E: ;
    esp = esp + 0xC;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000CA3E0(); /* call 0x000CA3E0 */

loc_000CD347: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000CCE60(); /* call 0x000CCE60 */

loc_000CD34D: ;
    esp = esp + 8;
    PUSH32(esp, 0); sub_000D12B0(); /* call 0x000D12B0 */

loc_000CD355: ;
    /* test eax, eax - flags set for next jcc */
    POP32(esp, edi);
    if (TEST_NZ(eax, eax)) goto loc_000CD385; /* jne: not equal / not zero */

loc_000CD35A: ;
    PUSH32(esp, 0xFFFF);
    PUSH32(esp, 0x48);
    PUSH32(esp, 0); sub_000559F0(); /* call 0x000559F0 */

loc_000CD366: ;
    PUSH32(esp, 0xFFE03030u);
    PUSH32(esp, 0); sub_000692F0(); /* call 0x000692F0 */

loc_000CD370: ;
    esp = esp + 0xC;
    PUSH32(esp, 0); sub_000568A0(); /* call 0x000568A0 */

loc_000CD378: ;
    MEM32(esp + 4) = 0xFFFFFFFFu;
    g_seh_ebp = ebp; sub_000692F0(); return; /* tail jmp 0x000692F0 */

loc_000CD385: ;
    esp += 4; return; /* ret */

}


