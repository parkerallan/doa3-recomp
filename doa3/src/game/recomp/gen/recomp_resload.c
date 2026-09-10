/**
 * DOA3 - resource-loader entry points (XPR0 bundle load).
 *
 * The resource service at 0x00080232 posts a request into globals and then
 * dispatches the loader indirectly:
 *
 *     eax  = [0x4A2121] ? 0x00080020 : 0x00080070
 *     push [0x4A212C]        ; destination
 *     push [0x4A2124]        ; resource id
 *     call eax
 *     [0x4A2128] = 0         ; clear "busy" -> load reported complete
 *
 * Neither target was recompiled, so RECOMP_ICALL failed, returned 0, and the
 * busy flag was cleared anyway: the readiness gate (sub_0006E040) opened and
 * the texture resolver (sub_0006E0B0) was handed an arena that had never been
 * read into, failing its 'XPR0' magic check with E_INVALIDARG.
 *
 * Only reachable through that function pointer, so direct-call detection never
 * found them -- same class as the CRT initializers in recomp_ctors.c.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stdio.h>
#include <math.h>

/**
 * sub_00080020
 * Original: 0x00080020 - 0x00080070 (80 bytes, 33 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00080020_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00080020: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 4);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_0007E720(); /* call 0x0007E720 */

loc_00080030: ;
    esp = esp + 8;
    MEM32(0x4A2150) = eax;
    PUSH32(esp, 0); sub_0007F7B0(); /* call 0x0007F7B0 */

loc_0008003D: ;
    PUSH32(esp, 0); sub_0007E860(); /* call 0x0007E860 */

loc_00080042: ;
    esi = 0; /* xor self */

loc_00080044: ;
    SET_LO8(eax, MEM8(esi + 0x4A1094));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0008005E; /* je: equal / zero */

loc_0008004E: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0009E502(); /* call 0x0009E502 */

loc_00080054: ;
    esp = esp + 4;
    MEM8(esi + 0x4A1094) = 0;

loc_0008005E: ;
    esi++;
    if (CMP_L(esi, 0x11)) goto loc_00080044; /* jl: less (signed <) */

loc_00080064: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00080070
 * Original: 0x00080070 - 0x00080090 (32 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00080070_gen(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00080070: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 4);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_0007E720(); /* call 0x0007E720 */

loc_0008007F: ;
    esp = esp + 8;
    MEM32(0x4A2150) = eax;
    g_seh_ebp = ebp; sub_0007E860(); return; /* tail jmp 0x0007E860 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */

}


