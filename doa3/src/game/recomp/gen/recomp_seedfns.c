/**
 * DOA3 - indirect-call targets missed by function detection.
 *
 * Each of these is a clean function entry that is only ever reached through a
 * function pointer, so the direct-call scan never promoted it and RECOMP_ICALL
 * had no body to dispatch to (see NOTES.md, "Regeneration Contract").
 *
 * Prototypes are declared here and in recomp_dispatch.c rather than in
 * recomp_funcs.h: that header is included by every generated unit, so touching
 * it forces a full rebuild of the whole recompilation.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stdio.h>
#include <math.h>

/**
 * sub_00050D30
 * Original: 0x00050D30 - 0x00050DA0 (112 bytes, 32 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00050D30(void)
{
    int _flags = 0; /* fallback flag var */

loc_00050D30: ;
    MEM32(0x47AD30) = 0;
    /* nop */

loc_00050D40: ;
    MEM32(0x47AD30) = MEM32(0x47AD30) + 1;
    edx = 1;
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00155E40(); /* call 0x00155E40 */

loc_00050D52: ;
    edx = 1;
    ecx = edx;
    PUSH32(esp, 0); sub_00155E40(); /* call 0x00155E40 */

loc_00050D5E: ;
    edx = 1;
    ecx = 2;
    PUSH32(esp, 0); sub_00155E40(); /* call 0x00155E40 */

loc_00050D6D: ;
    eax = ZX8(MEM8(0x48E611));
    if (CMP_NE(MEM8(eax + 0x484D74), 0x35)) goto loc_00050D8B; /* jne: not equal / not zero */

loc_00050D7D: ;
    SET_LO8(eax, MEM8(0x479CD0));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_00050D8B; /* je: equal / zero */

loc_00050D86: ;
    PUSH32(esp, 0); sub_00114DF7(); /* call 0x00114DF7 */

loc_00050D8B: ;
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_0009E562(); /* call 0x0009E562 */

loc_00050D92: ;
    esp = esp + 4;
    goto loc_00050D40;

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}


/**
 * sub_00171BE0
 * Original: 0x00171BE0 - 0x00171C20 (64 bytes, 34 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171BE0(void)
{

loc_00171BE0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    MEM32(0xB25620) = eax;
    MEM32(0xB25624) = ecx;
    esp += 4; return; /* ret */

    eax = MEM32(esp + 8);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}


/**
 * sub_00173FE0
 * Original: 0x00173FE0 - 0x00174040 (96 bytes, 47 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173FE0(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00173FE0: ;
    eax = 0x4000;
    esp += 4; return; /* ret */

    { uint32_t _icall_esp = g_esp;
    { uint32_t _icall_t = ecx; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00173FFF: ;
    /* test eax, eax - flags set for next jcc */
    MEM32(esp) = eax;
    fp_push((double)SMEM32(esp)); /* fild */
    PUSH32(esp, esi);
    if (CMP_GE(eax & eax, 0)) goto loc_00174012; /* jge: greater or equal (signed >=) */

loc_0017400C: ;
    fp_top() = fp_top() + (double)MEMD(0x215978); /* fadd mem */

loc_00174012: ;
    fp_top() = fp_top() * (double)MEMD(0x2170E0); /* fmul mem */
    PUSH32(esp, 0); sub_0018DB30(); /* call 0x0018DB30 */

loc_0017401D: ;
    esi = MEM32(esp + 0xC);
    ecx = MEM32(esi + 0x14);
    ecx = (uint32_t)(-(int32_t)ecx);
    ecx = ecx - eax;
    eax = ecx;
    edx = 0; /* xor self */
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)MEM32(esi + 0x10));
      edx = (uint32_t)(_dividend % (uint32_t)MEM32(esi + 0x10)); }
    MEM32(esi + 0x1C) = ecx;
    POP32(esp, esi);
    eax = edx;
    POP32(esp, ecx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00174040
 * Original: 0x00174040 - 0x00174070 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00174040(void)
{

loc_00174040: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 4);
    MEM32(ecx + 0xC) = eax;
    esp += 4; return; /* ret */

}


/**
 * sub_0018DAC9
 * Original: 0x0018DAC9 - 0x0018DAD6 (13 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0018DAC9_oldfpu2(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_0018DAC9: ;
    PUSH32(esp, 0); sub_0018DA91(); /* call 0x0018DA91 */

loc_0018DACE: ;
    PUSH32(esp, 0); sub_00190216(); /* call 0x00190216 */

loc_0018DAD3: ;
    /* FPU: fnclex  */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00191C0A
 * Original: 0x00191C0A - 0x00191C28 (30 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00191C0A(void)
{

loc_00191C0A: ;
    PUSH32(esp, 0x191BC4);
    PUSH32(esp, 0); sub_00164BCD(); /* call 0x00164BCD */

loc_00191C14: ;
    MEM32(0xBF4E78) = eax;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

    esp += 4; return; /* ret */

}


/**
 * sub_00195716
 * Original: 0x00195716 - 0x00195740 (42 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00195716(void)
{
    int _flags = 0; /* fallback flag var */

loc_00195716: ;
    if (CMP_EQ(MEM32(esp + 4), 0)) goto loc_0019572A; /* je: equal / zero */

loc_0019571D: ;
    eax = MEM32(0x3C0D7C);
    if (TEST_Z(eax, eax)) goto loc_0019573D; /* je: equal / zero */

loc_00195726: ;
    { uint32_t _icall_esp = g_esp;
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00195728: ;
    goto loc_0019573D;

loc_0019572A: ;
    eax = MEM32(0x3C0D80);
    if (TEST_Z(eax, eax)) goto loc_00195735; /* je: equal / zero */

loc_00195733: ;
    { uint32_t _icall_esp = g_esp;
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00195735: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00192572(); /* call 0x00192572 */

loc_0019573C: ;
    POP32(esp, ecx);

loc_0019573D: ;
    esp += 8; return; /* ret 4 */

}


