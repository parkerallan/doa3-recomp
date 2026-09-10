/**
 * DOA3 - Recompiled extras #2: data-referenced vtable/callback functions the
 * detector missed (CRI ADXF file-ops vtbl 0x3BEEB8, MFS/wxCi device ops, game
 * callback tables). Found by scanning .data/.rdata for unemitted .text
 * pointers; emitted transitively via tools.recomp -f. See NOTES.md.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

/**
 * sub_00046030
 * Original: 0x00046030 - 0x00046170 (320 bytes, 96 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00046030_oldfpu3(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00046030: ;
    edx = MEM32(esp + 4);
    esp = esp - 0x30;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = edx;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x74);
    esi = esi + 0x46B748;
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    ecx = 0x1D;
    edi = esi;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    eax = MEM32(esp + 0x44);
    MEM32(esi + 0x60) = edx;
    SET_LO8(ecx, MEM8(eax + 0xB1));
    ebx = 0; /* xor self */
    if (CMP_EQ(LO8(ecx), LO8(ebx))) goto loc_00046086; /* je: equal / zero */

loc_00046063: ;
    ecx = MEM32(eax + 0xB4);
    eax = MEM32(ecx + 0x14);
    edi = MEM32(eax + ecx);
    eax = eax + ecx;
    ecx = esi;
    MEM32(ecx) = edi;
    edi = MEM32(eax + 4);
    MEM32(ecx + 4) = edi;
    edi = MEM32(eax + 8);
    MEM32(ecx + 8) = edi;
    eax = MEM32(eax + 0xC);
    goto loc_000460A4;

loc_00046086: ;
    eax = MEM32(0x2EECFC);
    ecx = esi;
    MEM32(ecx) = eax;
    eax = MEM32(0x2EED00);
    MEM32(ecx + 4) = eax;
    eax = MEM32(0x2EED04);
    MEM32(ecx + 8) = eax;
    eax = MEM32(0x2EED08);

loc_000460A4: ;
    MEM32(ecx + 0xC) = eax;
    ecx = edx;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x5C0);
    ecx = ecx + 0x4785D0;
    MEM32(esi + 0x38) = ebx;
    MEM32(esi + 0x34) = ebx;
    MEM32(esi + 0x30) = ebx;
    MEM32(esi + 0x48) = ebx;
    MEM32(esi + 0x44) = ebx;
    MEM32(esi + 0x40) = ebx;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000460CC: ;
    edi = esi + 0x10;
    edx = edi;
    ecx = esp + 0xC;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0x3E4CCCCD;
    MEM32(esp + 0x14) = 0x3E99999A;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_000460F2: ;
    ecx = MEM32(edi);
    edx = MEM32(esi + 0x14);
    eax = MEM32(esi + 0x18);
    MEM32(esi + 0x20) = ecx;
    MEM32(esi + 0x24) = edx;
    edx = esp + 0x1C;
    ecx = esp + 0xC;
    MEM32(esi + 0x28) = eax;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0;
    MEM32(esp + 0x14) = 0;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_00046128: ;
    edx = esp + 0x2C;
    ecx = esp + 0xC;
    MEM32(esp + 0x10) = 0x3F800000;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_0004613D: ;
    fp_push(MEMF(esp + 0x20)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    POP32(esp, edi);
    MEM8(esi + 0x70) = 2;
    MEMF(esi + 0x64) = (float)fp_top(); fp_pop(); /* fst */
    fp_push(MEMF(esi + 0xC)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    /* fld st(0) */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    MEMF(esi + 0x6C) = (float)fp_top(); fp_popp(); /* fstp */
    POP32(esp, esi);
    /* fstp st(0) */
    POP32(esp, ebx);
    /* fstp st(0) */
    esp = esp + 0x30;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00046500
 * Original: 0x00046500 - 0x00046570 (112 bytes, 42 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00046500(void)
{
    int _flags = 0; /* fallback flag var */

loc_00046500: ;
    eax = MEM32(esp + 4);
    SET_LO8(ecx, MEM8(eax + 0x48899C));
    PUSH32(esp, esi);
    esi = eax;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x74);
    esi = esi + 0x46B748;
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */
    MEM32(esi + 0x60) = eax;
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00046529; /* jne: not equal / not zero */

loc_0004651D: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax) = 0;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00046529: ;
    SET_LO8(eax, MEM8(0x4B838A));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004654A; /* je: equal / zero */

loc_00046532: ;
    ecx = MEM32(0x4A0D94);
    ecx++;
    if (CMP_LE(ecx, 1)) goto loc_0004654A; /* jle: less or equal (signed <=) */

loc_0004653E: ;
    edx = MEM32(esp + 0xC);
    MEM32(edx) = 0;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0004654A: ;
    SET_LO8(eax, MEM8(0x47E795));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_00046566; /* jne: not equal / not zero */

loc_00046553: ;
    PUSH32(esp, 0); sub_00046340(); /* call 0x00046340 */

loc_00046558: ;
    PUSH32(esp, 0); sub_00046170(); /* call 0x00046170 */

loc_0004655D: ;
    eax = MEM32(esi + 0x6C);
    ecx = MEM32(esp + 0xC);
    MEM32(ecx) = eax;

loc_00046566: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00049860
 * Original: 0x00049860 - 0x000499B0 (336 bytes, 107 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049860_oldcf2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00049860: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 0; /* xor self */
    /* cmp esi, 1 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_LE(esi, 1)) goto loc_00049885; /* jle: less or equal (signed <=) */

loc_0004986E: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049877: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004987C: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049882: ;
    esp = esp + 8;

loc_00049885: ;
    eax = MEM32(esp + 0x14);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x188);
    esi = esi + 0x46BAF0;
    edx = esi;
    MEM32(edx + 0x150) = eax;
    /* cmp MEM8(eax + 0xB1), LO8(ebx) - flags set for next jcc */
    PUSH32(esp, ebp);
    if (CMP_EQ(MEM8(eax + 0xB1), LO8(ebx))) goto loc_00049907; /* je: equal / zero */

loc_000498A6: ;
    ecx = MEM32(eax + 0xB4);
    eax = MEM32(ecx + 4);
    eax = eax + ecx;
    SET_LO16(ecx, MEM16(eax));
    eax = eax + 4;
    MEM16(edx + 0x154) = LO16(ecx);
    ecx = MEM32(eax);
    eax = eax + 4;
    esi = 0; /* xor self */
    if (CMP_LE(ecx, ebx)) goto loc_000498EB; /* jle: less or equal (signed <=) */

loc_000498C9: ;
    edi = edx + 0x156;
    /* nop */

loc_000498D0: ;
    if (CMP_GE(esi, 0x18)) goto loc_00049920; /* jge: greater or equal (signed >=) */

loc_000498D5: ;
    SET_LO16(ebp, MEM16(eax));
    eax = eax + 4;
    MEM16(edi) = LO16(ebp);
    esi++;
    edi = edi + 2;
    if (CMP_L(esi, ecx)) goto loc_000498D0; /* jl: less (signed <) */

loc_000498E6: ;
    if (CMP_GE(esi, 0x18)) goto loc_00049920; /* jge: greater or equal (signed >=) */

loc_000498EB: ;
    ecx = 0x18;
    ecx = ecx - esi;
    eax = eax | 0xFFFFFFFFu;
    ecx = ecx >> 1;
    edi = edx + esi * 2 + 0x156;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    ecx = ecx + ecx + _cf; /* adc */
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM16(edi + _i*2) = LO16(eax); }
    edi += ecx * 2; ecx = 0; /* rep stosw */
    goto loc_00049920;

loc_00049907: ;
    edi = edx + 0x156;
    ecx = 0xC;
    esi = 0x2EF440;
    MEM16(edx + 0x154) = LO16(ebx);
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */

loc_00049920: ;
    SET_LO16(eax, MEM16(edx + 0x154));
    edi = 0x3F800000;
    ecx = edx + 0x70;
    MEM16(edx + 6) = LO16(eax);
    MEM16(edx + 4) = LO16(eax);
    MEM32(edx) = ebx;
    MEM32(edx + 8) = ebx;
    MEM32(edx + 0xC) = edi;
    MEM16(edx + 0x132) = LO16(ebx);
    MEM16(edx + 0x14C) = LO16(ebx);
    eax = ecx;
    esi = 0x18;
    POP32(esp, ebp);

loc_00049955: ;
    MEM32(eax + -96) = ebx;
    MEM32(eax) = ebx;
    MEM32(eax + 0x60) = ebx;
    eax = eax + 4;
    esi--;
    if ((esi != 0)) goto loc_00049955; /* jne: not equal / not zero */

loc_00049963: ;
    MEM32(ecx) = edi;
    MEM32(edx + 0xD0) = edi;
    MEM32(edx + 0x10) = edi;
    MEM16(edx + 0x130) = LO16(ebx);
    eax = edx + 0x136;
    ecx = 3;

loc_00049980: ;
    MEM16(eax + -2) = LO16(ebx);
    MEM16(eax) = 1;
    MEM32(eax + 2) = edi;
    eax = eax + 8;
    ecx--;
    if ((ecx != 0)) goto loc_00049980; /* jne: not equal / not zero */

loc_00049992: ;
    POP32(esp, edi);
    POP32(esp, esi);
    MEM16(edx + 0x146) = LO16(ebx);
    MEM16(edx + 0x134) = 1;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_000499B0
 * Original: 0x000499B0 - 0x000499D0 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000499B0(void)
{

loc_000499B0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x188);
    eax = (uint32_t)(int32_t)SMEM16(ecx + 0x46BC20);
    esp += 4; return; /* ret */

}


/**
 * sub_000499D0
 * Original: 0x000499D0 - 0x00049AF0 (288 bytes, 99 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000499D0_oldcf2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000499D0: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 0; /* xor self */
    /* cmp esi, 1 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_LE(esi, 1)) goto loc_000499F5; /* jle: less or equal (signed <=) */

loc_000499DE: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_000499E7: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_000499EC: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_000499F2: ;
    esp = esp + 8;

loc_000499F5: ;
    eax = MEM32(esp + 0x14);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x16C);
    esi = esi + 0x46C1A0;
    edx = esi;
    MEM32(edx + 0x134) = eax;
    /* cmp MEM8(eax + 0xB1), LO8(ebx) - flags set for next jcc */
    PUSH32(esp, ebp);
    if (CMP_EQ(MEM8(eax + 0xB1), LO8(ebx))) goto loc_00049A77; /* je: equal / zero */

loc_00049A16: ;
    ecx = MEM32(eax + 0xB4);
    eax = MEM32(ecx + 8);
    eax = eax + ecx;
    SET_LO16(ecx, MEM16(eax));
    eax = eax + 4;
    MEM16(edx + 0x138) = LO16(ecx);
    ecx = MEM32(eax);
    eax = eax + 4;
    esi = 0; /* xor self */
    if (CMP_LE(ecx, ebx)) goto loc_00049A5B; /* jle: less or equal (signed <=) */

loc_00049A39: ;
    edi = edx + 0x13A;
    /* nop */

loc_00049A40: ;
    if (CMP_GE(esi, 0x18)) goto loc_00049A90; /* jge: greater or equal (signed >=) */

loc_00049A45: ;
    SET_LO16(ebp, MEM16(eax));
    eax = eax + 4;
    MEM16(edi) = LO16(ebp);
    esi++;
    edi = edi + 2;
    if (CMP_L(esi, ecx)) goto loc_00049A40; /* jl: less (signed <) */

loc_00049A56: ;
    if (CMP_GE(esi, 0x18)) goto loc_00049A90; /* jge: greater or equal (signed >=) */

loc_00049A5B: ;
    ecx = 0x18;
    ecx = ecx - esi;
    eax = eax | 0xFFFFFFFFu;
    ecx = ecx >> 1;
    edi = edx + esi * 2 + 0x13A;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    ecx = ecx + ecx + _cf; /* adc */
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM16(edi + _i*2) = LO16(eax); }
    edi += ecx * 2; ecx = 0; /* rep stosw */
    goto loc_00049A90;

loc_00049A77: ;
    edi = edx + 0x13A;
    ecx = 0xC;
    esi = 0x2EF470;
    MEM16(edx + 0x138) = LO16(ebx);
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */

loc_00049A90: ;
    SET_LO16(eax, MEM16(edx + 0x138));
    edi = 0x3F800000;
    esi = edx + 0x70;
    MEM16(edx + 6) = LO16(eax);
    MEM16(edx + 4) = LO16(eax);
    MEM32(edx) = ebx;
    MEM32(edx + 8) = ebx;
    MEM32(edx + 0xC) = edi;
    MEM16(edx + 0x132) = LO16(ebx);
    eax = esi;
    ecx = 0x18;
    POP32(esp, ebp);
    edi = edi;

loc_00049AC0: ;
    MEM32(eax + -96) = ebx;
    MEM32(eax) = ebx;
    MEM32(eax + 0x60) = ebx;
    eax = eax + 4;
    ecx--;
    if ((ecx != 0)) goto loc_00049AC0; /* jne: not equal / not zero */

loc_00049ACE: ;
    MEM32(esi) = edi;
    MEM32(edx + 0xD0) = edi;
    MEM32(edx + 0x10) = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    MEM16(edx + 0x130) = LO16(ebx);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_00049AF0
 * Original: 0x00049AF0 - 0x00049B10 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049AF0(void)
{

loc_00049AF0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x16C);
    eax = (uint32_t)(int32_t)SMEM16(ecx + 0x46C2D0);
    esp += 4; return; /* ret */

}


/**
 * sub_00049B10
 * Original: 0x00049B10 - 0x00049B30 (32 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049B10(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00049B10: ;
    eax = MEM32(esp + 4);
    ecx = eax * 4 + 0x46BAC0;
    MEM32(esp + 8) = ecx;
    MEM32(esp + 4) = eax;
    g_seh_ebp = ebp; sub_00046500(); return; /* tail jmp 0x00046500 */

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
 * sub_00049B30
 * Original: 0x00049B30 - 0x00049CC0 (400 bytes, 143 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049B30_oldfpu(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _fpu_cmp = 0; /* FPU compare result: -1/0/1 */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00049B30: ;
    esp = esp - 0x24;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x38);
    esi = MEM32(edi);
    if (CMP_LE(esi, 1)) goto loc_00049B61; /* jle: less or equal (signed <=) */

loc_00049B42: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049B4B: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00049B50: ;
    SET_LO16(ebx, ZX8(MEM8(eax + 8)));
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049B5C: ;
    esp = esp + 8;
    goto loc_00049B6E;

loc_00049B61: ;
    ecx = esi;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x68);
    SET_LO16(ebx, ZX8(MEM8(ecx + 0x484C4B)));

loc_00049B6E: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    eax = SX16(LO16(ebx));
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi*4 + 0x46bac0] */
    edx = eax;
    fp_push(MEMF(esi * 4 + 0x46BAC0)); /* fld float */
    edx = (uint32_t)((int32_t)edx * (int32_t)0xF);
    ecx = ZX8(MEM8(edx + 0x46B944));
    eax = eax << 7;
    ecx = ecx + eax;
    eax = MEM32(edi + 0x1C);
    ebx = MEM32(ecx * 4 + 0x484360);
    ecx = MEM32(eax + 0x10);
    edx = MEM32(ecx + eax + 4);
    ebp = MEM32(ecx + eax + 8);
    ecx = ecx + eax;
    edx = edx + ecx;
    /* fnstsw ax - store FPU status word */
    ebp = ebp + ecx;
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_00049BBA; /* jne: not equal / not zero */

loc_00049BB8: ;
    fp_top() = -fp_top(); /* fchs */

loc_00049BBA: ;
    SET_LO8(eax, MEM8(0x4842B0));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_00049BCB; /* je: equal / zero */

loc_00049BC3: ;
    /* fstp st(0) */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_00049BCB: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi*4 + 0x46bac0] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_00049BE6; /* jne: not equal / not zero */

loc_00049BDF: ;
    eax = 1;
    goto loc_00049BE8;

loc_00049BE6: ;
    eax = 0; /* xor self */

loc_00049BE8: ;
    eax = MEM32(ecx + eax * 4 + 0xC);
    eax = eax + ecx;
    if (CMP_LE(MEM32(edi), 1)) goto loc_00049BFA; /* jle: less or equal (signed <=) */

loc_00049BF3: ;
    SET_LO8(ecx, MEM8(edi + 7));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00049C3A; /* jne: not equal / not zero */

loc_00049BFA: ;
    SET_LO8(ecx, MEM8(0x48A2A0));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00049C3A; /* jne: not equal / not zero */

loc_00049C04: ;
    SET_LO8(ecx, MEM8(0x48A2AC));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049C15; /* je: equal / zero */

loc_00049C0E: ;
    SET_LO8(ecx, MEM8(edi + 7));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00049C3A; /* jne: not equal / not zero */

loc_00049C15: ;
    SET_LO8(ecx, MEM8(0x4842B0));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049C4E; /* je: equal / zero */

loc_00049C1F: ;
    SET_LO8(ecx, MEM8(edi + 7));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049C4E; /* je: equal / zero */

loc_00049C26: ;
    SET_LO8(ecx, MEM8(0x4B838A));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049CA9; /* je: equal / zero */

loc_00049C30: ;
    SET_LO8(ecx, MEM8(0x4B8432));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049C4E; /* je: equal / zero */

loc_00049C3A: ;
    SET_LO8(ecx, MEM8(0x4B838A));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049CA9; /* je: equal / zero */

loc_00049C44: ;
    SET_LO8(ecx, MEM8(0x4B8432));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00049CA9; /* jne: not equal / not zero */

loc_00049C4E: ;
    if (TEST_Z(ebx, ebx)) goto loc_00049CA9; /* je: equal / zero */

loc_00049C52: ;
    MEMF(esp + 0x24) = (float)fp_top(); fp_pop(); /* fst */
    MEM32(esp + 0x1C) = eax;
    fp_push(MEMF(0x1ED528)); /* fld float */
    MEM32(esp + 0x10) = 0;
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp st(1) */
    MEM32(esp + 0x14) = edx;
    MEM32(esp + 0x18) = ebp;
    MEM32(esp + 0x20) = ebx;
    /* fnstsw ax - store FPU status word */
    /* fstp st(0) */
    if (1 /* jp after test - parity */) goto loc_00049C94; /* jp: parity */

loc_00049C7F: ;
    edx = esp + 0x10;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00048190(); /* call 0x00048190 */

loc_00049C89: ;
    esp = esp + 4;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp = esp + 0x24;
    esp += 4; return; /* ret */

loc_00049C94: ;
    eax = esp + 0x10;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00048300(); /* call 0x00048300 */

loc_00049C9E: ;
    esp = esp + 4;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp = esp + 0x24;
    esp += 4; return; /* ret */

loc_00049CA9: ;
    POP32(esp, edi);
    /* fstp st(0) */
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp = esp + 0x24;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00049CC0
 * Original: 0x00049CC0 - 0x00049EF0 (560 bytes, 173 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049CC0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00049CC0: ;
    esp = esp - 0x14;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x1C);
    if (CMP_LE(edi, 1)) goto loc_00049CEF; /* jle: less or equal (signed <=) */

loc_00049CCD: ;
    eax = edi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049CD6: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00049CDB: ;
    ecx = ZX8(MEM8(eax + 6));
    PUSH32(esp, 0);
    MEM32(esp + 0x14) = ecx;
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049CEA: ;
    esp = esp + 8;
    goto loc_00049CFF;

loc_00049CEF: ;
    edx = edi;
    edx = (uint32_t)((int32_t)edx * (int32_t)0x68);
    eax = ZX8(MEM8(edx + 0x484C49));
    MEM32(esp + 0xC) = eax;

loc_00049CFF: ;
    eax = MEM32(esp + 0x20);
    edi = (uint32_t)((int32_t)edi * (int32_t)0x4B0);
    SET_LO8(ecx, MEM8(eax + 0xB1));
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    edi = edi + 0x46CA70;
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */
    PUSH32(esp, esi);
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00049E20; /* je: equal / zero */

loc_00049D20: ;
    ecx = MEM32(eax + 0xB4);
    eax = MEM32(ecx + 0x10);
    eax = eax + ecx;
    SET_LO16(ecx, MEM16(eax));
    MEM32(esp + 0x1C) = eax;
    eax = eax + 4;
    MEM16(edi + 0x1A) = LO16(ecx);
    ecx = MEM32(eax);
    edx = 0; /* xor self */
    eax = eax + 4;
    /* test ecx, ecx - flags set for next jcc */
    MEM32(esp + 0x20) = ecx;
    MEM32(esp + 0x2C) = edx;
    if (CMP_LE(ecx & ecx, 0)) goto loc_00049DFE; /* jle: less or equal (signed <=) */

loc_00049D50: ;
    edx = edi + 0x178;
    ecx = edi + 0x24;
    MEM32(esp + 0x28) = 0x12;
    MEM32(esp + 0x10) = edx;
    MEM32(esp + 0x14) = ecx;
    /* nop */

loc_00049D70: ;
    if (CMP_GE(MEM32(esp + 0x28), 0xBA)) goto loc_00049E9F; /* jge: greater or equal (signed >=) */

loc_00049D7E: ;
    esi = MEM32(eax);
    edx = MEM32(eax + 4);
    ebp = MEM32(esp + 0x1C);
    eax = eax + 4;
    edx = edx + ebp;
    ecx = 0; /* xor self */
    if (CMP_LE(esi & esi, 0)) goto loc_00049DAC; /* jle: less or equal (signed <=) */

loc_00049D92: ;
    if (CMP_GE(ecx, 6)) goto loc_00049DAC; /* jge: greater or equal (signed >=) */

loc_00049D97: ;
    ebx = MEM32(esp + 0x28);
    SET_LO16(ebp, MEM16(edx));
    ebx = ebx + ecx;
    edx = edx + 4;
    ecx++;
    /* cmp ecx, esi - flags set for next jcc */
    MEM16(edi + ebx * 2) = LO16(ebp);
    if (CMP_L(ecx, esi)) goto loc_00049D92; /* jl: less (signed <) */

loc_00049DAC: ;
    if (CMP_LE(esi, 6)) goto loc_00049DB6; /* jle: less or equal (signed <=) */

loc_00049DB1: ;
    esi = 6;

loc_00049DB6: ;
    ecx = MEM32(esp + 0x10);
    edx = MEM32(esp + 0x2C);
    ebp = MEM32(esp + 0x28);
    MEM16(ecx + -4) = LO16(esi);
    esi = MEM32(esp + 0x14);
    MEM32(ecx) = esi;
    ecx = ecx + 8;
    eax = eax + 4;
    edx++;
    MEM32(esp + 0x10) = ecx;
    ecx = MEM32(esp + 0x20);
    ebp = ebp + 6;
    esi = esi + 0xC;
    /* cmp edx, ecx - flags set for next jcc */
    MEM32(esp + 0x2C) = edx;
    MEM32(esp + 0x28) = ebp;
    MEM32(esp + 0x14) = esi;
    if (CMP_L(edx, ecx)) goto loc_00049D70; /* jl: less (signed <) */

loc_00049DF5: ;
    if (CMP_GE(edx, 0x1C)) goto loc_00049E9F; /* jge: greater or equal (signed >=) */

loc_00049DFE: ;
    eax = 0x1C;
    ecx = edi + edx * 8 + 0x174;
    eax = eax - edx;
    /* nop */

loc_00049E10: ;
    MEM16(ecx) = 0;
    ecx = ecx + 8;
    eax--;
    if ((eax != 0)) goto loc_00049E10; /* jne: not equal / not zero */

loc_00049E1B: ;
    goto loc_00049E9F;

loc_00049E20: ;
    edx = edi + 0x24;
    MEM16(edi + 0x1A) = 0;
    MEM32(esp + 0x28) = 0x12;
    ecx = 0x46DE50;
    esi = edi + 0x178;
    MEM32(esp + 0x2C) = edx;

loc_00049E40: ;
    edx = (uint32_t)(int32_t)SMEM16(ecx);
    eax = 0; /* xor self */
    if (CMP_LE(edx & edx, 0)) goto loc_00049E6B; /* jle: less or equal (signed <=) */

loc_00049E49: ;
    /* nop */

loc_00049E50: ;
    if (CMP_GE(eax, 6)) goto loc_00049E6B; /* jge: greater or equal (signed >=) */

loc_00049E55: ;
    ebx = MEM32(ecx + 4);
    ebp = MEM32(esp + 0x28);
    SET_LO16(ebx, MEM16(ebx + eax * 2));
    ebp = ebp + eax;
    eax++;
    /* cmp eax, edx - flags set for next jcc */
    MEM16(edi + ebp * 2) = LO16(ebx);
    if (CMP_L(eax, edx)) goto loc_00049E50; /* jl: less (signed <) */

loc_00049E6B: ;
    if (CMP_LE(edx, 6)) goto loc_00049E75; /* jle: less or equal (signed <=) */

loc_00049E70: ;
    edx = 6;

loc_00049E75: ;
    eax = MEM32(esp + 0x2C);
    ebx = MEM32(esp + 0x28);
    MEM32(esi) = eax;
    MEM16(esi + -4) = LO16(edx);
    ecx = ecx + 8;
    ebx = ebx + 6;
    eax = eax + 0xC;
    esi = esi + 8;
    /* cmp ecx, 0x46DF30 - flags set for next jcc */
    MEM32(esp + 0x28) = ebx;
    MEM32(esp + 0x2C) = eax;
    if (CMP_L(ecx, 0x46DF30)) goto loc_00049E40; /* jl: less (signed <) */

loc_00049E9F: ;
    eax = MEM32(esp + 0x18);
    ecx = 0; /* xor self */
    /* cmp eax, ecx - flags set for next jcc */
    POP32(esp, esi);
    POP32(esp, ebp);
    MEM32(edi) = 5;
    MEM16(edi + 0x14) = 1;
    MEM16(edi + 0x16) = LO16(ecx);
    MEM16(edi + 0x18) = LO16(ecx);
    MEM32(edi + 4) = ecx;
    MEM32(edi + 8) = ecx;
    MEM8(edi + 0x254) = LO8(ecx);
    POP32(esp, ebx);
    if (CMP_EQ(eax, ecx)) goto loc_00049ED1; /* je: equal / zero */

loc_00049ECC: ;
    if (CMP_NE(eax, 3)) goto loc_00049EDC; /* jne: not equal / not zero */

loc_00049ED1: ;
    eax = 0x3F800000;
    MEM32(edi + 8) = eax;
    MEM32(edi + 4) = eax;

loc_00049EDC: ;
    POP32(esp, edi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

}


/**
 * sub_00049EF0
 * Original: 0x00049EF0 - 0x0004A120 (560 bytes, 173 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00049EF0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00049EF0: ;
    esp = esp - 0x14;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x1C);
    if (CMP_LE(edi, 1)) goto loc_00049F1F; /* jle: less or equal (signed <=) */

loc_00049EFD: ;
    eax = edi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049F06: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00049F0B: ;
    ecx = ZX8(MEM8(eax + 6));
    PUSH32(esp, 0);
    MEM32(esp + 0x14) = ecx;
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00049F1A: ;
    esp = esp + 8;
    goto loc_00049F2F;

loc_00049F1F: ;
    edx = edi;
    edx = (uint32_t)((int32_t)edx * (int32_t)0x68);
    eax = ZX8(MEM8(edx + 0x484C49));
    MEM32(esp + 0xC) = eax;

loc_00049F2F: ;
    eax = MEM32(esp + 0x20);
    edi = (uint32_t)((int32_t)edi * (int32_t)0x4B0);
    SET_LO8(ecx, MEM8(eax + 0xB1));
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    edi = edi + 0x46CCC8;
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */
    PUSH32(esp, esi);
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_0004A050; /* je: equal / zero */

loc_00049F50: ;
    ecx = MEM32(eax + 0xB4);
    eax = MEM32(ecx + 0xC);
    eax = eax + ecx;
    SET_LO16(ecx, MEM16(eax));
    MEM32(esp + 0x1C) = eax;
    eax = eax + 4;
    MEM16(edi + 0x1A) = LO16(ecx);
    ecx = MEM32(eax);
    edx = 0; /* xor self */
    eax = eax + 4;
    /* test ecx, ecx - flags set for next jcc */
    MEM32(esp + 0x20) = ecx;
    MEM32(esp + 0x2C) = edx;
    if (CMP_LE(ecx & ecx, 0)) goto loc_0004A02E; /* jle: less or equal (signed <=) */

loc_00049F80: ;
    edx = edi + 0x178;
    ecx = edi + 0x24;
    MEM32(esp + 0x28) = 0x12;
    MEM32(esp + 0x10) = edx;
    MEM32(esp + 0x14) = ecx;
    /* nop */

loc_00049FA0: ;
    if (CMP_GE(MEM32(esp + 0x28), 0xBA)) goto loc_0004A0CF; /* jge: greater or equal (signed >=) */

loc_00049FAE: ;
    esi = MEM32(eax);
    edx = MEM32(eax + 4);
    ebp = MEM32(esp + 0x1C);
    eax = eax + 4;
    edx = edx + ebp;
    ecx = 0; /* xor self */
    if (CMP_LE(esi & esi, 0)) goto loc_00049FDC; /* jle: less or equal (signed <=) */

loc_00049FC2: ;
    if (CMP_GE(ecx, 6)) goto loc_00049FDC; /* jge: greater or equal (signed >=) */

loc_00049FC7: ;
    ebx = MEM32(esp + 0x28);
    SET_LO16(ebp, MEM16(edx));
    ebx = ebx + ecx;
    edx = edx + 4;
    ecx++;
    /* cmp ecx, esi - flags set for next jcc */
    MEM16(edi + ebx * 2) = LO16(ebp);
    if (CMP_L(ecx, esi)) goto loc_00049FC2; /* jl: less (signed <) */

loc_00049FDC: ;
    if (CMP_LE(esi, 6)) goto loc_00049FE6; /* jle: less or equal (signed <=) */

loc_00049FE1: ;
    esi = 6;

loc_00049FE6: ;
    ecx = MEM32(esp + 0x10);
    edx = MEM32(esp + 0x2C);
    ebp = MEM32(esp + 0x28);
    MEM16(ecx + -4) = LO16(esi);
    esi = MEM32(esp + 0x14);
    MEM32(ecx) = esi;
    ecx = ecx + 8;
    eax = eax + 4;
    edx++;
    MEM32(esp + 0x10) = ecx;
    ecx = MEM32(esp + 0x20);
    ebp = ebp + 6;
    esi = esi + 0xC;
    /* cmp edx, ecx - flags set for next jcc */
    MEM32(esp + 0x2C) = edx;
    MEM32(esp + 0x28) = ebp;
    MEM32(esp + 0x14) = esi;
    if (CMP_L(edx, ecx)) goto loc_00049FA0; /* jl: less (signed <) */

loc_0004A025: ;
    if (CMP_GE(edx, 0x1C)) goto loc_0004A0CF; /* jge: greater or equal (signed >=) */

loc_0004A02E: ;
    eax = 0x1C;
    ecx = edi + edx * 8 + 0x174;
    eax = eax - edx;
    /* nop */

loc_0004A040: ;
    MEM16(ecx) = 0;
    ecx = ecx + 8;
    eax--;
    if ((eax != 0)) goto loc_0004A040; /* jne: not equal / not zero */

loc_0004A04B: ;
    goto loc_0004A0CF;

loc_0004A050: ;
    edx = edi + 0x24;
    MEM16(edi + 0x1A) = 0;
    MEM32(esp + 0x28) = 0x12;
    ecx = 0x46DD70;
    esi = edi + 0x178;
    MEM32(esp + 0x2C) = edx;

loc_0004A070: ;
    edx = (uint32_t)(int32_t)SMEM16(ecx);
    eax = 0; /* xor self */
    if (CMP_LE(edx & edx, 0)) goto loc_0004A09B; /* jle: less or equal (signed <=) */

loc_0004A079: ;
    /* nop */

loc_0004A080: ;
    if (CMP_GE(eax, 6)) goto loc_0004A09B; /* jge: greater or equal (signed >=) */

loc_0004A085: ;
    ebx = MEM32(ecx + 4);
    ebp = MEM32(esp + 0x28);
    SET_LO16(ebx, MEM16(ebx + eax * 2));
    ebp = ebp + eax;
    eax++;
    /* cmp eax, edx - flags set for next jcc */
    MEM16(edi + ebp * 2) = LO16(ebx);
    if (CMP_L(eax, edx)) goto loc_0004A080; /* jl: less (signed <) */

loc_0004A09B: ;
    if (CMP_LE(edx, 6)) goto loc_0004A0A5; /* jle: less or equal (signed <=) */

loc_0004A0A0: ;
    edx = 6;

loc_0004A0A5: ;
    eax = MEM32(esp + 0x2C);
    ebx = MEM32(esp + 0x28);
    MEM32(esi) = eax;
    MEM16(esi + -4) = LO16(edx);
    ecx = ecx + 8;
    ebx = ebx + 6;
    eax = eax + 0xC;
    esi = esi + 8;
    /* cmp ecx, 0x46DE50 - flags set for next jcc */
    MEM32(esp + 0x28) = ebx;
    MEM32(esp + 0x2C) = eax;
    if (CMP_L(ecx, 0x46DE50)) goto loc_0004A070; /* jl: less (signed <) */

loc_0004A0CF: ;
    eax = MEM32(esp + 0x18);
    ecx = 0; /* xor self */
    /* cmp eax, ecx - flags set for next jcc */
    POP32(esp, esi);
    POP32(esp, ebp);
    MEM32(edi) = 0xB;
    MEM16(edi + 0x14) = 1;
    MEM16(edi + 0x16) = LO16(ecx);
    MEM16(edi + 0x18) = LO16(ecx);
    MEM32(edi + 4) = ecx;
    MEM32(edi + 8) = ecx;
    MEM8(edi + 0x254) = LO8(ecx);
    POP32(esp, ebx);
    if (CMP_EQ(eax, ecx)) goto loc_0004A101; /* je: equal / zero */

loc_0004A0FC: ;
    if (CMP_NE(eax, 3)) goto loc_0004A10C; /* jne: not equal / not zero */

loc_0004A101: ;
    eax = 0x3F800000;
    MEM32(edi + 8) = eax;
    MEM32(edi + 4) = eax;

loc_0004A10C: ;
    POP32(esp, edi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

}


/**
 * sub_0004A120
 * Original: 0x0004A120 - 0x0004A2D0 (432 bytes, 146 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A120_oldfpu(void)
{
    int _flags = 0; /* fallback flag var */
    int _fpu_cmp = 0; /* FPU compare result: -1/0/1 */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_0004A120: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 0; /* xor self */
    /* cmp esi, 1 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_LE(esi, 1)) goto loc_0004A14C; /* jle: less or equal (signed <=) */

loc_0004A12E: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A137: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004A13C: ;
    SET_LO16(edi, ZX8(MEM8(eax + 6)));
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A147: ;
    esp = esp + 8;
    goto loc_0004A159;

loc_0004A14C: ;
    ecx = esi;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x68);
    SET_LO16(edi, ZX8(MEM8(ecx + 0x484C49)));

loc_0004A159: ;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CA70;
    ecx = esi;
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    MEMF(ecx + 4) = (float)fp_top(); fp_pop(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp st(1) */
    /* fnstsw ax - store FPU status word */
    /* fstp st(0) */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A1B5; /* jne: not equal / not zero */

loc_0004A184: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 8] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A1B5; /* jne: not equal / not zero */

loc_0004A194: ;
    SET_LO16(eax, MEM16(ecx + 0x16));
    if (CMP_EQ(LO16(eax), LO16(ebx))) goto loc_0004A1B5; /* je: equal / zero */

loc_0004A19D: ;
    fp_push(MEMF(ecx + 8)); /* fld float */
    MEM16(ecx + 0x14) = LO16(eax);
    fp_top() = -fp_top(); /* fchs */
    MEM16(ecx + 0x16) = LO16(ebx);
    MEMF(ecx + 8) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(ecx + 4) = (float)fp_top(); fp_popp(); /* fstp */

loc_0004A1B5: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 4] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_0004A1CD; /* jp: parity */

loc_0004A1C5: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004A1D0;

loc_0004A1CD: ;
    fp_push(MEMF(ecx + 4)); /* fld float */

loc_0004A1D0: ;
    MEMF(ecx + 4) = (float)fp_top(); fp_pop(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp st(1) */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A1EA; /* jne: not equal / not zero */

loc_0004A1E2: ;
    /* fstp st(0) */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004A1EA: ;
    SET_LO8(eax, MEM8(0x4842B3));
    MEMF(ecx + 4) = (float)fp_top(); fp_popp(); /* fstp */
    /* cmp LO8(eax), LO8(ebx) - flags set for next jcc */
    esi = MEM32(esp + 0x14);
    if (CMP_EQ(LO8(eax), LO8(ebx))) goto loc_0004A23F; /* je: equal / zero */

loc_0004A1FA: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A23F; /* je: equal / zero */

loc_0004A1FF: ;
    if (CMP_EQ(MEM8(0x4B838A), LO8(ebx))) goto loc_0004A20F; /* je: equal / zero */

loc_0004A207: ;
    if (CMP_EQ(MEM8(0x4B8432), LO8(ebx))) goto loc_0004A23F; /* je: equal / zero */

loc_0004A20F: ;
    /* cmp LO16(edi), LO16(ebx) - flags set for next jcc */
    MEM16(ecx + 0x14) = 1;
    MEM16(ecx + 0x16) = LO16(ebx);
    MEM16(ecx + 0x18) = LO16(ebx);
    MEM32(ecx + 4) = ebx;
    MEM32(ecx + 8) = ebx;
    MEM8(ecx + 0x254) = LO8(ebx);
    if (CMP_EQ(LO16(edi), LO16(ebx))) goto loc_0004A234; /* je: equal / zero */

loc_0004A22E: ;
    if (CMP_NE(LO16(edi), 3)) goto loc_0004A23F; /* jne: not equal / not zero */

loc_0004A234: ;
    eax = 0x3F800000;
    MEM32(ecx + 8) = eax;
    MEM32(ecx + 4) = eax;

loc_0004A23F: ;
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 4] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_0004A257; /* jp: parity */

loc_0004A249: ;
    SET_LO16(edx, MEM16(ecx + 0x14));
    if (CMP_NE(LO16(edx), MEM16(ecx + 0x18))) goto loc_0004A257; /* jne: not equal / not zero */

loc_0004A253: ;
    edx = 0; /* xor self */
    goto loc_0004A25C;

loc_0004A257: ;
    edx = 1;

loc_0004A25C: ;
    if (CMP_EQ(MEM8(0x4B838A), LO8(ebx))) goto loc_0004A26C; /* je: equal / zero */

loc_0004A264: ;
    if (CMP_EQ(MEM8(0x4B8432), LO8(ebx))) goto loc_0004A285; /* je: equal / zero */

loc_0004A26C: ;
    if (CMP_EQ(MEM8(0x48A2A0), LO8(ebx))) goto loc_0004A276; /* je: equal / zero */

loc_0004A274: ;
    edx = 0; /* xor self */

loc_0004A276: ;
    if (CMP_EQ(MEM8(0x48A2AC), LO8(ebx))) goto loc_0004A285; /* je: equal / zero */

loc_0004A27E: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A285; /* je: equal / zero */

loc_0004A283: ;
    edx = 0; /* xor self */

loc_0004A285: ;
    if (CMP_LE(MEM32(esi), 1)) goto loc_0004A291; /* jle: less or equal (signed <=) */

loc_0004A28A: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A291; /* je: equal / zero */

loc_0004A28F: ;
    edx = 0; /* xor self */

loc_0004A291: ;
    if (CMP_EQ(MEM32(esi + 0x28), ebx)) goto loc_0004A2A0; /* je: equal / zero */

loc_0004A296: ;
    eax = MEM32(esi + 0x44);
    edx = 1;
    goto loc_0004A2B0;

loc_0004A2A0: ;
    if (CMP_EQ(edx, ebx)) goto loc_0004A2A9; /* je: equal / zero */

loc_0004A2A4: ;
    eax = MEM32(esi + 0x44);
    goto loc_0004A2B0;

loc_0004A2A9: ;
    eax = MEM32(esi + 0x44);
    if (CMP_EQ(eax, ebx)) goto loc_0004A2B4; /* je: equal / zero */

loc_0004A2B0: ;
    eax++;
    MEM32(esi + 0x44) = eax;

loc_0004A2B4: ;
    SET_LO16(eax, MEM16(ecx + 0x14));
    POP32(esp, edi);
    POP32(esp, esi);
    MEM8(ecx + 0x254) = LO8(edx);
    MEM16(ecx + 0x18) = LO16(eax);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_0004A2D0
 * Original: 0x0004A2D0 - 0x0004A490 (448 bytes, 149 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A2D0_oldfpu(void)
{
    int _flags = 0; /* fallback flag var */
    int _fpu_cmp = 0; /* FPU compare result: -1/0/1 */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_0004A2D0: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 0; /* xor self */
    /* cmp esi, 1 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_LE(esi, 1)) goto loc_0004A2FC; /* jle: less or equal (signed <=) */

loc_0004A2DE: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A2E7: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004A2EC: ;
    SET_LO16(edi, ZX8(MEM8(eax + 6)));
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A2F7: ;
    esp = esp + 8;
    goto loc_0004A309;

loc_0004A2FC: ;
    ecx = esi;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x68);
    SET_LO16(edi, ZX8(MEM8(ecx + 0x484C49)));

loc_0004A309: ;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CCC8;
    ecx = esi;
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    MEMF(ecx + 4) = (float)fp_top(); fp_pop(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp st(1) */
    /* fnstsw ax - store FPU status word */
    /* fstp st(0) */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A365; /* jne: not equal / not zero */

loc_0004A334: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 8] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A365; /* jne: not equal / not zero */

loc_0004A344: ;
    SET_LO16(eax, MEM16(ecx + 0x16));
    if (CMP_EQ(LO16(eax), LO16(ebx))) goto loc_0004A365; /* je: equal / zero */

loc_0004A34D: ;
    fp_push(MEMF(ecx + 8)); /* fld float */
    MEM16(ecx + 0x14) = LO16(eax);
    fp_top() = -fp_top(); /* fchs */
    MEM16(ecx + 0x16) = LO16(ebx);
    MEMF(ecx + 8) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(ecx + 4)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(ecx + 4) = (float)fp_top(); fp_popp(); /* fstp */

loc_0004A365: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 4] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_0004A37D; /* jp: parity */

loc_0004A375: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004A380;

loc_0004A37D: ;
    fp_push(MEMF(ecx + 4)); /* fld float */

loc_0004A380: ;
    MEMF(ecx + 4) = (float)fp_top(); fp_pop(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp st(1) */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004A39A; /* jne: not equal / not zero */

loc_0004A392: ;
    /* fstp st(0) */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004A39A: ;
    SET_LO8(eax, MEM8(0x4842B3));
    MEMF(ecx + 4) = (float)fp_top(); fp_popp(); /* fstp */
    /* cmp LO8(eax), LO8(ebx) - flags set for next jcc */
    esi = MEM32(esp + 0x14);
    if (CMP_EQ(LO8(eax), LO8(ebx))) goto loc_0004A401; /* je: equal / zero */

loc_0004A3AA: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A401; /* je: equal / zero */

loc_0004A3AF: ;
    if (CMP_EQ(MEM8(0x4B838A), LO8(ebx))) goto loc_0004A3BF; /* je: equal / zero */

loc_0004A3B7: ;
    if (CMP_EQ(MEM8(0x4B8432), LO8(ebx))) goto loc_0004A401; /* je: equal / zero */

loc_0004A3BF: ;
    /* cmp LO16(edi), LO16(ebx) - flags set for next jcc */
    MEM16(ecx + 0x14) = 1;
    MEM16(ecx + 0x16) = LO16(ebx);
    MEM16(ecx + 0x18) = LO16(ebx);
    MEM32(ecx + 4) = ebx;
    MEM32(ecx + 8) = ebx;
    MEM8(ecx + 0x254) = LO8(ebx);
    eax = 0x3F800000;
    if (CMP_EQ(LO16(edi), LO16(ebx))) goto loc_0004A3E9; /* je: equal / zero */

loc_0004A3E3: ;
    if (CMP_NE(LO16(edi), 3)) goto loc_0004A3EF; /* jne: not equal / not zero */

loc_0004A3E9: ;
    MEM32(ecx + 8) = eax;
    MEM32(ecx + 4) = eax;

loc_0004A3EF: ;
    if (CMP_NE(LO16(edi), 0x11)) goto loc_0004A401; /* jne: not equal / not zero */

loc_0004A3F5: ;
    MEM16(ecx + 0x14) = 0x14;
    MEM32(ecx + 8) = eax;
    MEM32(ecx + 4) = eax;

loc_0004A401: ;
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [ecx + 4] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_0004A419; /* jp: parity */

loc_0004A40B: ;
    SET_LO16(edx, MEM16(ecx + 0x14));
    if (CMP_NE(LO16(edx), MEM16(ecx + 0x18))) goto loc_0004A419; /* jne: not equal / not zero */

loc_0004A415: ;
    edx = 0; /* xor self */
    goto loc_0004A41E;

loc_0004A419: ;
    edx = 1;

loc_0004A41E: ;
    if (CMP_EQ(MEM8(0x4B838A), LO8(ebx))) goto loc_0004A42E; /* je: equal / zero */

loc_0004A426: ;
    if (CMP_EQ(MEM8(0x4B8432), LO8(ebx))) goto loc_0004A447; /* je: equal / zero */

loc_0004A42E: ;
    if (CMP_EQ(MEM8(0x48A2A0), LO8(ebx))) goto loc_0004A438; /* je: equal / zero */

loc_0004A436: ;
    edx = 0; /* xor self */

loc_0004A438: ;
    if (CMP_EQ(MEM8(0x48A2AC), LO8(ebx))) goto loc_0004A447; /* je: equal / zero */

loc_0004A440: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A447; /* je: equal / zero */

loc_0004A445: ;
    edx = 0; /* xor self */

loc_0004A447: ;
    if (CMP_LE(MEM32(esi), 1)) goto loc_0004A453; /* jle: less or equal (signed <=) */

loc_0004A44C: ;
    if (CMP_EQ(MEM8(esi + 7), LO8(ebx))) goto loc_0004A453; /* je: equal / zero */

loc_0004A451: ;
    edx = 0; /* xor self */

loc_0004A453: ;
    if (CMP_EQ(MEM32(esi + 0x28), ebx)) goto loc_0004A462; /* je: equal / zero */

loc_0004A458: ;
    eax = MEM32(esi + 0x48);
    edx = 1;
    goto loc_0004A472;

loc_0004A462: ;
    if (CMP_EQ(edx, ebx)) goto loc_0004A46B; /* je: equal / zero */

loc_0004A466: ;
    eax = MEM32(esi + 0x48);
    goto loc_0004A472;

loc_0004A46B: ;
    eax = MEM32(esi + 0x48);
    if (CMP_EQ(eax, ebx)) goto loc_0004A476; /* je: equal / zero */

loc_0004A472: ;
    eax++;
    MEM32(esi + 0x48) = eax;

loc_0004A476: ;
    SET_LO16(eax, MEM16(ecx + 0x14));
    POP32(esp, edi);
    POP32(esp, esi);
    MEM8(ecx + 0x254) = LO8(edx);
    MEM16(ecx + 0x18) = LO16(eax);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00065090
 * Original: 0x00065090 - 0x000651C0 (304 bytes, 85 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00065090_oldfpu4(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00065090: ;
    esp = esp - 0x24;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x2C);
    ecx = (uint32_t)(int32_t)SMEM16(esi);
    eax = MEM32(esi + 4);
    if (CMP_GE(eax, ecx)) goto loc_000650A9; /* jge: greater or equal (signed >=) */

loc_000650A2: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp = esp + 0x24;
    esp += 4; return; /* ret */

loc_000650A9: ;
    ecx = (uint32_t)(int32_t)SMEM16(esi + 2);
    PUSH32(esp, edi);
    PUSH32(esp, 0);
    edx = esi + 0x10;
    PUSH32(esp, edx);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0006A3B0(); /* call 0x0006A3B0 */

loc_000650BB: ;
    edi = eax;
    esp = esp + 0x10;
    if (CMP_LE(edi, 0xFF)) goto loc_000650CD; /* jle: less or equal (signed <=) */

loc_000650C8: ;
    edi = 0xFF;

loc_000650CD: ;
    edx = ZX16(MEM16(0x47E778));
    MEM32(esp + 0x30) = edx;
    MEM32(esp + 8) = 0xDA;
    fp_push((double)SMEM32(esp + 0x30)); /* fild */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_000650EF: ;
    edx = ZX16(MEM16(0x48A3A0));
    MEM32(esp + 0x30) = edx;
    ecx = 0xFFFFFE9Cu;
    ecx = ecx - eax;
    fp_push((double)SMEM32(esp + 0x30)); /* fild */
    MEM16(esp + 0xC) = LO16(ecx);
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_00065115: ;
    edx = 0; /* xor self */
    ecx = 0xFFFFFFE4u;
    MEM8(esp + 0x10) = 2;
    MEM8(esp + 0x11) = 0;
    MEM8(esp + 0x12) = 1;
    ecx = ecx - eax;
    /* test edi, edi - flags set for next jcc */
    SET_LO8(edx, (TEST_S(edi, edi)) ? 1 : 0); /* setl */
    eax = esp + 8;
    PUSH32(esp, eax);
    MEM16(esp + 0x12) = LO16(ecx);
    MEM8(esp + 0x17) = 1;
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x28) = 0x3F800000;
    edx--;
    edx = edx & edi;
    MEM32(esp + 0x34) = edx;
    fp_push((double)SMEM32(esp + 0x34)); /* fild */
    MEM32(esp + 0x20) = 0x3F4CCCCD;
    MEM32(esp + 0x24) = 0x3F4CCCCD;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 0x2C) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_0006D7F0(); /* call 0x0006D7F0 */

loc_0006517B: ;
    MEM8(esp + 0x14) = MEM8(esp + 0x14) + 1;
    ecx = esp + 0xC;
    PUSH32(esp, ecx);
    MEM32(esp + 0x10) = 0xDB;
    PUSH32(esp, 0); sub_0006D7F0(); /* call 0x0006D7F0 */

loc_00065191: ;
    edx = MEM32(esi + 4);
    esp = esp + 8;
    edx++;
    eax = edx;
    MEM32(esi + 4) = edx;
    edx = (uint32_t)(int32_t)SMEM16(esi + 2);
    /* cmp eax, edx - flags set for next jcc */
    POP32(esp, edi);
    if (CMP_L(eax, edx)) goto loc_000651B3; /* jl: less (signed <) */

loc_000651A6: ;
    if (CMP_NE(MEM32(esi + 0xC), 1)) goto loc_000651B3; /* jne: not equal / not zero */

loc_000651AC: ;
    MEM32(esi + 8) = 0;

loc_000651B3: ;
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x24;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00067110
 * Original: 0x00067110 - 0x00067140 (48 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00067110(void)
{

loc_00067110: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000694E0(); /* call 0x000694E0 */

loc_00067117: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0); sub_000693C0(); /* call 0x000693C0 */

loc_00067121: ;
    esp = esp + 4;
    esi = 0x491F80;
    edi = 0x491E50;
    PUSH32(esp, 0); sub_00067030(); /* call 0x00067030 */

loc_00067133: ;
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00067140
 * Original: 0x00067140 - 0x00067170 (48 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00067140(void)
{

loc_00067140: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000694E0(); /* call 0x000694E0 */

loc_00067147: ;
    PUSH32(esp, 0x3F19999A);
    PUSH32(esp, 0); sub_00069420(); /* call 0x00069420 */

loc_00067151: ;
    esp = esp + 4;
    esi = 0x492018;
    edi = 0x491EE8;
    PUSH32(esp, 0); sub_00067030(); /* call 0x00067030 */

loc_00067163: ;
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0006C8F0
 * Original: 0x0006C8F0 - 0x0006C910 (32 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0006C8F0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0006C8F0: ;
    PUSH32(esp, esi);
    esi = ecx;
    PUSH32(esp, 0); sub_0006C910(); /* call 0x0006C910 */

loc_0006C8F8: ;
    if (TEST_Z(MEM8(esp + 8), 1)) goto loc_0006C908; /* je: equal / zero */

loc_0006C8FF: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0018E275(); /* call 0x0018E275 */

loc_0006C905: ;
    esp = esp + 4;

loc_0006C908: ;
    eax = esi;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_0006CA80
 * Original: 0x0006CA80 - 0x0006CAA0 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0006CA80(void)
{

loc_0006CA80: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    esi = ecx;
    PUSH32(esp, 0); sub_0006CA10(); /* call 0x0006CA10 */

loc_0006CA8D: ;
    MEM32(esi) = 0x1F5BB4;
    eax = esi;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_00095430
 * Original: 0x00095430 - 0x000954E0 (176 bytes, 63 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00095430_oldfpu3(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00095430: ;
    eax = MEM32(esp + 8);
    edx = (uint32_t)(int32_t)SMEM8(eax + 6);
    ecx = ZX16(MEM16(eax + 4));
    edx = edx << 0x10;
    ecx = ecx | edx;
    edx = ZX16(MEM16(eax + 8));
    MEM32(esp + 8) = ecx;
    ecx = (uint32_t)(int32_t)SMEM8(eax + 7);
    fp_push((double)SMEM32(esp + 8)); /* fild */
    eax = MEM32(esp + 4);
    ecx = ecx << 0x10;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    ecx = ecx | edx;
    MEM32(esp + 8) = ecx;
    ecx = (uint32_t)(int32_t)SMEM16(eax + 6);
    fp_push((double)SMEM32(esp + 8)); /* fild */
    MEM32(esp + 8) = ecx;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    edx = MEM32(esp + 0xC);
    fp_push((double)SMEM32(esp + 8)); /* fild */
    MEM32(eax + 0xC) = edx;
    fp_push(MEMF(0x1ED554)); /* fld float */
    fp_st1() /= fp_top(); fp_pop(); /* fdiv */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 8) = (float)fp_top(); fp_popp(); /* fstp */
    /* fld st(3) */
    MEMF(eax + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    /* fld st(4) */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() -= fp_top(); fp_pop(); /* fsubp */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(eax + 0x14) = (float)fp_top(); fp_popp(); /* fstp */
    /* fstp st(0) */
    { double _t = fp_top(); fp_top() = fp_st1(); fp_st1() = _t; } /* fxch */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* faddp */
    /* fld st(1) */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() /= fp_top(); fp_pop(); /* fdivp */
    MEMF(eax + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    /* fstp st(0) */
    /* fstp st(0) */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_000954E0
 * Original: 0x000954E0 - 0x00095580 (160 bytes, 59 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000954E0_oldfpu3(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_000954E0: ;
    eax = MEM32(esp + 8);
    ecx = (uint32_t)(int32_t)SMEM16(eax + 4);
    edx = (uint32_t)(int32_t)SMEM16(eax + 6);
    eax = MEM32(esp + 4);
    MEM32(esp + 8) = ecx;
    ecx = (uint32_t)(int32_t)SMEM16(eax + 6);
    fp_push((double)SMEM32(esp + 8)); /* fild */
    MEM32(esp + 8) = edx;
    edx = MEM32(esp + 0xC);
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEM32(eax + 0xC) = edx;
    fp_push((double)SMEM32(esp + 8)); /* fild */
    MEM32(esp + 8) = ecx;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_push((double)SMEM32(esp + 8)); /* fild */
    fp_push(MEMF(0x1ED554)); /* fld float */
    fp_st1() /= fp_top(); fp_pop(); /* fdiv */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 8) = (float)fp_top(); fp_popp(); /* fstp */
    /* fld st(3) */
    MEMF(eax + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    /* fld st(4) */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() -= fp_top(); fp_pop(); /* fsubp */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(eax + 0x14) = (float)fp_top(); fp_popp(); /* fstp */
    /* fstp st(0) */
    { double _t = fp_top(); fp_top() = fp_st1(); fp_st1() = _t; } /* fxch */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* faddp */
    /* fld st(1) */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() /= fp_top(); fp_pop(); /* fdivp */
    MEMF(eax + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    /* fstp st(0) */
    /* fstp st(0) */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00095580
 * Original: 0x00095580 - 0x000955B0 (48 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00095580_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00095580: ;
    eax = MEM32(esp + 4);
    fp_push(MEMF(esp + 0xC)); /* fld float */
    ecx = (uint32_t)(int32_t)SMEM16(eax + 6);
    MEMF(eax + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    MEM32(esp + 0xC) = ecx;
    ecx = 0; /* xor self */
    fp_push((double)SMEM32(esp + 0xC)); /* fild */
    MEM32(eax + 0x14) = ecx;
    MEM32(eax + 0x18) = ecx;
    fp_st1() /= fp_top(); fp_pop(); /* fdivp */
    MEMF(eax + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_000955B0
 * Original: 0x000955B0 - 0x00095600 (80 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000955B0_oldfpu3(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_000955B0: ;
    eax = MEM32(esp + 4);
    ecx = (uint32_t)(int32_t)SMEM16(eax + 6);
    edx = MEM32(esp + 8);
    MEM32(esp + 4) = ecx;
    ecx = (uint32_t)(int32_t)SMEM16(edx + 4);
    fp_push((double)SMEM32(esp + 4)); /* fild */
    MEM32(esp + 4) = ecx;
    edx = MEM32(esp + 0xC);
    MEM32(eax + 0xC) = edx;
    fp_push((double)SMEM32(esp + 4)); /* fild */
    MEM32(eax + 0x18) = 0;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() /= fp_top(); fp_pop(); /* fdiv */
    /* fld st(1) */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* faddp */
    MEMF(eax + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    fp_top() = -fp_top(); /* fchs */
    MEMF(eax + 0x14) = (float)fp_top(); fp_popp(); /* fstp */
    /* fstp st(0) */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_000BB760
 * Original: 0x000BB760 - 0x000BB7D0 (112 bytes, 48 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000BB760(void)
{
    int _flags = 0; /* fallback flag var */

loc_000BB760: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_Z(MEM8(esi + 0xC), 0x10)) goto loc_000BB779; /* je: equal / zero */

loc_000BB76B: ;
    SET_LO8(eax, MEM8(esi + 5));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000BB779; /* jne: not equal / not zero */

loc_000BB772: ;
    PUSH32(esp, 0x3F000000);
    goto loc_000BB77E;

loc_000BB779: ;
    PUSH32(esp, 0x3F800000);

loc_000BB77E: ;
    PUSH32(esp, 0); sub_00055780(); /* call 0x00055780 */

loc_000BB783: ;
    eax = MEM32(esi + 0x10);
    esp = esp + 4;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00055760(); /* call 0x00055760 */

loc_000BB78F: ;
    ecx = MEM32(esi + 0x1C);
    edx = 0; /* xor self */
    SET_LO8(edx, MEM8(ecx + 4));
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00055770(); /* call 0x00055770 */

loc_000BB79D: ;
    eax = (uint32_t)(int32_t)SMEM16(esi + 8);
    ecx = (uint32_t)(int32_t)SMEM16(esi + 6);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00055740(); /* call 0x00055740 */

loc_000BB7AC: ;
    edx = MEM32(esi + 0x1C);
    eax = MEM32(edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00055E90(); /* call 0x00055E90 */

loc_000BB7B7: ;
    esp = esp + 0x14;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000C6600
 * Original: 0x000C6600 - 0x000C66A0 (160 bytes, 48 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C6600(void)
{
    int _flags = 0; /* fallback flag var */

loc_000C6600: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x12);
    /* test MEM16(eax * 8 + 0x86132A), 0x220 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esp + 0xC);
    if (TEST_Z(MEM16(eax * 8 + 0x86132A), 0x220)) goto loc_000C6660; /* je: equal / zero */

loc_000C661A: ;
    eax = MEM32(esi + 0x20);
    if (CMP_G(eax & eax, 0)) goto loc_000C6660; /* jg: greater (signed >) */

loc_000C6621: ;
    SET_LO8(eax, MEM8(0x48A39C));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000C6646; /* je: equal / zero */

loc_000C662A: ;
    ecx = (uint32_t)(int32_t)SMEM8(esi + 0x1A);
    ecx = ecx & 0x80000001u;
    if (((int32_t)ecx >= 0)) goto loc_000C663B; /* jns: not sign (positive) */

loc_000C6636: ;
    ecx--;
    ecx = ecx | 0xFFFFFFFEu;
    ecx++;

loc_000C663B: ;
    edx = ZX8(MEM8(0x48899F));
    if (CMP_EQ(ecx, edx)) goto loc_000C6660; /* je: equal / zero */

loc_000C6646: ;
    eax = edi;
    PUSH32(esp, 0); sub_000C5B10(); /* call 0x000C5B10 */

loc_000C664D: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x29);
    MEM32(esi + 0x20) = 1;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C665D: ;
    esp = esp + 8;

loc_000C6660: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x12);
    if (TEST_Z(MEM16(eax * 8 + 0x86132A), 0xD10)) goto loc_000C6697; /* je: equal / zero */

loc_000C6670: ;
    SET_LO8(eax, MEM8(edi + 0x1DD));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000C6697; /* je: equal / zero */

loc_000C667A: ;
    SET_LO8(eax, MEM8(edi + 0x1DE));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000C6697; /* jne: not equal / not zero */

loc_000C6684: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x24);
    MEM8(edi + 0x1DE) = 1;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C6694: ;
    esp = esp + 8;

loc_000C6697: ;
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000C66A0
 * Original: 0x000C66A0 - 0x000C6780 (224 bytes, 80 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C66A0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000C66A0: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x14);
    ebp = (uint32_t)(int32_t)SMEM8(esi + 0x12);
    SET_LO8(eax, MEM8(ebp * 8 + 0x86132C));
    SET_LO8(ecx, MEM8(esi + 0x17));
    ebx = 1;
    if (TEST_Z(LO8(ebx), LO8(eax))) goto loc_000C66CD; /* je: equal / zero */

loc_000C66BE: ;
    SET_LO8(eax, LO8(ecx));
    SET_LO8(eax, LO8(eax) + 1);
    /* cmp LO8(eax), 5 - flags set for next jcc */
    MEM8(esi + 0x17) = LO8(eax);
    if (CMP_LE(LO8(eax), 5)) goto loc_000C66CD; /* jle: less or equal (signed <=) */

loc_000C66C9: ;
    MEM8(esi + 0x17) = 5;

loc_000C66CD: ;
    if (TEST_Z(MEM8(ebp * 8 + 0x86132C), 2)) goto loc_000C66E8; /* je: equal / zero */

loc_000C66D7: ;
    SET_LO8(edx, MEM8(esi + 0x17));
    SET_LO8(edx, LO8(edx) - 1);
    SET_LO8(eax, LO8(edx));
    /* cmp LO8(eax), LO8(ebx) - flags set for next jcc */
    MEM8(esi + 0x17) = LO8(edx);
    if (CMP_GE(LO8(eax), LO8(ebx))) goto loc_000C66E8; /* jge: greater or equal (signed >=) */

loc_000C66E5: ;
    MEM8(esi + 0x17) = LO8(ebx);

loc_000C66E8: ;
    if (CMP_EQ(LO8(ecx), MEM8(esi + 0x17))) goto loc_000C6700; /* je: equal / zero */

loc_000C66ED: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x23);
    MEM32(esi + 0x20) = 0;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C66FD: ;
    esp = esp + 8;

loc_000C6700: ;
    if (TEST_Z(MEM16(ebp * 8 + 0x86132A), 0x110)) goto loc_000C6771; /* je: equal / zero */

loc_000C670C: ;
    eax = MEM32(esi + 0x20);
    if (TEST_NZ(eax, eax)) goto loc_000C6771; /* jne: not equal / not zero */

loc_000C6713: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x1A);
    eax = eax & 0x80000001u;
    if (((int32_t)eax >= 0)) goto loc_000C6723; /* jns: not sign (positive) */

loc_000C671E: ;
    eax--;
    eax = eax | 0xFFFFFFFEu;
    eax++;

loc_000C6723: ;
    SET_LO8(edx, MEM8(esi + 0x17));
    ecx = ZX8(LO8(eax));
    MEM8(ecx + 0x86134C) = LO8(edx);
    MEM8(esi + 0x18) = LO8(ebx);
    eax = ZX8(MEM8(0x2FD55C));
    eax = eax + 6;
    ecx = eax + eax * 4;
    eax = 0x88888889u;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)ecx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = edx + ecx;
    edx = (uint32_t)((int32_t)edx >> 5);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + eax;
    PUSH32(esp, 0);
    PUSH32(esp, 0x24);
    MEM32(esi + 0x20) = edx;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C675E: ;
    esp = esp + 8;
    PUSH32(esp, 0);
    ecx = esi;
    MEM32(esi + 0x34) = 0;
    PUSH32(esp, 0); sub_000C64C0(); /* call 0x000C64C0 */

loc_000C6771: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = ebx;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_000C6B10
 * Original: 0x000C6B10 - 0x000C6B90 (128 bytes, 42 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C6B10(void)
{
    int _flags = 0; /* fallback flag var */

loc_000C6B10: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 2;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = LO8(ebx);
    PUSH32(esp, 0); sub_000C6550(); /* call 0x000C6550 */

loc_000C6B27: ;
    eax = esi;
    PUSH32(esp, 0); sub_000C4800(); /* call 0x000C4800 */

loc_000C6B2E: ;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000C6B33: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000CDDE0(); /* call 0x000CDDE0 */

loc_000C6B39: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_000C6B6E; /* je: equal / zero */

loc_000C6B40: ;
    if (CMP_EQ(MEM16(esi + 0x136), 0)) goto loc_000C6B53; /* je: equal / zero */

loc_000C6B4A: ;
    MEM16(esi + 0x136) = 0;

loc_000C6B53: ;
    if (CMP_NE(MEM16(esi + 0x138), LO16(ebx))) goto loc_000C6B65; /* jne: not equal / not zero */

loc_000C6B5C: ;
    MEM16(esi + 0x138) = 1;

loc_000C6B65: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000CDF20(); /* call 0x000CDF20 */

loc_000C6B6B: ;
    esp = esp + 4;

loc_000C6B6E: ;
    ecx = esi;
    PUSH32(esp, 0); sub_000C4A70(); /* call 0x000C4A70 */

loc_000C6B75: ;
    ebx = esi;
    PUSH32(esp, 0); sub_000C5AB0(); /* call 0x000C5AB0 */

loc_000C6B7C: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000C5D70(); /* call 0x000C5D70 */

loc_000C6B82: ;
    esp = esp + 4;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_000C9510
 * Original: 0x000C9510 - 0x000C9960 (1104 bytes, 266 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C9510_oldfpu4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000C9510: ;
    esp = esp - 0x20;
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000694E0(); /* call 0x000694E0 */

loc_000C951B: ;
    PUSH32(esp, 8);
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00069320(); /* call 0x00069320 */

loc_000C9526: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_000C8130(); /* call 0x000C8130 */

loc_000C952D: ;
    esp = esp + 0x10;
    esi = 0x36894C;
    edi = 4;
    /* nop */

loc_000C9540: ;
    PUSH32(esp, 0);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0006D140(); /* call 0x0006D140 */

loc_000C9548: ;
    esp = esp + 8;
    esi = esi + 8;
    edi--;
    if ((edi != 0)) goto loc_000C9540; /* jne: not equal / not zero */

loc_000C9551: ;
    eax = MEM32(0x860E98);
    eax = eax & 0xFF05A22Bu;
    eax = eax | 0x5A22B;
    MEM32(0x860E98) = eax;
    ecx = 0x1A1A1A;
    eax = 0x801A1A1Au;
    PUSH32(esp, 0x860E98);
    MEM8(0x860E9B) = 3;
    MEM16(0x860E9C) = 0x56;
    MEM16(0x860E9E) = 0x13;
    MEM32(0x860EA0) = ecx;
    MEM32(0x860EA4) = eax;
    MEM32(0x860EA8) = ecx;
    MEM32(0x860EAC) = eax;
    PUSH32(esp, 0); sub_0006D610(); /* call 0x0006D610 */

loc_000C95A8: ;
    eax = MEM32(0x860E98);
    ecx = eax;
    ecx = ecx & 0xFFFFF000u;
    ecx = ecx << 8;
    ecx = (uint32_t)((int32_t)ecx >> 8);
    ecx = ecx + 0x2F000;
    ecx = ecx ^ eax;
    ecx = ecx & 0xFFF000;
    eax = eax ^ ecx;
    PUSH32(esp, 0x860E98);
    MEM32(0x860E98) = eax;
    PUSH32(esp, 0); sub_0006D610(); /* call 0x0006D610 */

loc_000C95DA: ;
    edx = MEM32(0x860E98);
    edx = edx & 0xFF15D000u;
    edx = edx | 0x15D000;
    eax = 0x80000000u;
    MEM32(0x860E98) = edx;
    PUSH32(esp, 0x860E98);
    MEM8(0x860E9B) = 3;
    MEM16(0x860E9C) = 0x2D0;
    MEM16(0x860E9E) = 0x39;
    MEM32(0x860EA0) = 0;
    MEM32(0x860EA4) = 0;
    MEM32(0x860EA8) = eax;
    MEM32(0x860EAC) = eax;
    PUSH32(esp, 0); sub_0006D610(); /* call 0x0006D610 */

loc_000C9638: ;
    eax = MEM32(0x860E98);
    edx = (uint32_t)(int32_t)SMEM16(0x860E9E);
    ecx = eax;
    ecx = ecx & 0xFFFFF000u;
    ecx = ecx << 8;
    ecx = (uint32_t)((int32_t)ecx >> 8);
    edx = edx << 0xC;
    ecx = ecx + edx;
    ecx = ecx ^ eax;
    ecx = ecx & 0xFFF000;
    eax = eax ^ ecx;
    ecx = MEM32(0x860EA4);
    MEM32(0x860E98) = eax;
    eax = MEM32(0x860EA8);
    PUSH32(esp, 0x860E98);
    MEM32(0x860EA0) = eax;
    MEM32(0x860EA8) = ecx;
    MEM32(0x860EA4) = eax;
    MEM32(0x860EAC) = ecx;
    PUSH32(esp, 0); sub_0006D610(); /* call 0x0006D610 */

loc_000C9691: ;
    eax = MEM32(0x860F44);
    eax = eax & 0xFF05305Du;
    eax = eax | 0x5305D;
    MEM32(0x860F44) = eax;
    esp = esp + 0x10;
    MEM8(0x860F47) = 3;
    MEM16(0x860F48) = 0x60;
    MEM16(0x860F4A) = 0x42;
    MEM32(0x860F4C) = 0x80333333u;
    PUSH32(esp, 0); sub_00163CDA(); /* call 0x00163CDA */

loc_000C96D0: ;
    if (TEST_Z(LO8(eax), 1)) goto loc_000C970B; /* je: equal / zero */

loc_000C96D4: ;
    eax = MEM32(0x860F44);
    ecx = eax;
    ecx = ecx << 0x14;
    ecx = (uint32_t)((int32_t)ecx >> 0x14);
    ecx = ecx ^ eax;
    ecx = ecx & 0xFFF;
    eax = eax ^ ecx;
    MEM32(esp + 0xC) = 0x3F400000;
    MEM32(0x860F44) = eax;
    MEM16(0x860F48) = 0x49;
    MEM32(esp + 0x10) = 0x2CA;
    goto loc_000C971B;

loc_000C970B: ;
    MEM32(esp + 0xC) = 0x3F800000;
    MEM32(esp + 0x10) = 0x2C9;

loc_000C971B: ;
    ebp = MEM32(esp + 0x30);
    edi = 0; /* xor self */

loc_000C9721: ;
    edx = MEM32(esp + 0xC);
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00069400(); /* call 0x00069400 */

loc_000C9730: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_000C8130(); /* call 0x000C8130 */

loc_000C9736: ;
    esi = eax;
    eax = edi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 3;
    eax = eax + edx;
    eax = (uint32_t)((int32_t)eax >> 2);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x4A);
    PUSH32(esp, eax);
    eax = edi;
    eax = eax & 0x80000003u;
    if (((int32_t)eax >= 0)) goto loc_000C9755; /* jns: not sign (positive) */

loc_000C9750: ;
    eax--;
    eax = eax | 0xFFFFFFFCu;
    eax++;

loc_000C9755: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x78);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00069300(); /* call 0x00069300 */

loc_000C975E: ;
    ecx = ZX16(MEM16(esi));
    SET_LO8(eax, MEM8(ecx + 0x488839));
    esp = esp + 0x14;
    if (CMP_BE(LO8(eax) & LO8(eax), 0)) goto loc_000C9799; /* jbe: below or equal (unsigned <=) */

loc_000C976E: ;
    MEM32(0x860F4C) = 0x80000000u;
    edx = ZX16(MEM16(esi + 4));
    eax = esp + 0x14;
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    MEM32(esp + 0x1C) = edx;
    MEM32(esp + 0x20) = 0x205505F;
    PUSH32(esp, 0); sub_0006D140(); /* call 0x0006D140 */

loc_000C9794: ;
    esp = esp + 8;
    goto loc_000C97D6;

loc_000C9799: ;
    PUSH32(esp, 0x3E99999A);
    MEM32(0x860F4C) = 0x80333333u;
    PUSH32(esp, 0); sub_000693C0(); /* call 0x000693C0 */

loc_000C97AD: ;
    ecx = esp + 0x20;
    PUSH32(esp, 0);
    PUSH32(esp, ecx);
    MEM32(esp + 0x28) = 0x2C8;
    MEM32(esp + 0x2C) = 0x205505F;
    PUSH32(esp, 0); sub_0006D140(); /* call 0x0006D140 */

loc_000C97C9: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0); sub_000693C0(); /* call 0x000693C0 */

loc_000C97D3: ;
    esp = esp + 0x10;

loc_000C97D6: ;
    edx = (uint32_t)(int32_t)SMEM8(ebp + 0x1E8);
    if (CMP_NE(edi, edx)) goto loc_000C986D; /* jne: not equal / not zero */

loc_000C97E5: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0); sub_00069400(); /* call 0x00069400 */

loc_000C97F4: ;
    eax = MEM32(ebp + 0x220);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    ecx = 0x78;
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    esp = esp + 8;
    eax = edx + -60;
    if (CMP_G(eax & eax, 0)) goto loc_000C9813; /* jg: greater (signed >) */

loc_000C980C: ;
    eax = 0x3C;
    eax = eax - edx;

loc_000C9813: ;
    MEM32(esp + 0x30) = eax;
    fp_push((double)SMEM32(esp + 0x30)); /* fild */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_000C983E: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000693E0(); /* call 0x000693E0 */

loc_000C9844: ;
    ecx = MEM32(esp + 0x14);
    edx = esp + 0x28;
    PUSH32(esp, 0);
    PUSH32(esp, edx);
    MEM32(esp + 0x30) = ecx;
    MEM32(esp + 0x34) = 0x104A054;
    PUSH32(esp, 0); sub_0006D140(); /* call 0x0006D140 */

loc_000C9860: ;
    PUSH32(esp, 0xFF);
    PUSH32(esp, 0); sub_000693E0(); /* call 0x000693E0 */

loc_000C986A: ;
    esp = esp + 0x10;

loc_000C986D: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0); sub_00069400(); /* call 0x00069400 */

loc_000C987C: ;
    PUSH32(esp, 0x860F44);
    PUSH32(esp, 0); sub_0006D560(); /* call 0x0006D560 */

loc_000C9886: ;
    esp = esp + 0xC;
    edi++;
    if (CMP_L(edi, 0x10)) goto loc_000C9721; /* jl: less (signed <) */

loc_000C9893: ;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebp + 0x1E8));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000C8130(); /* call 0x000C8130 */

loc_000C98A1: ;
    ecx = ZX16(MEM16(eax));
    SET_LO8(edx, MEM8(ecx + 0x488839));
    esp = esp + 4;
    if (CMP_BE(LO8(edx) & LO8(edx), 0)) goto loc_000C9912; /* jbe: below or equal (unsigned <=) */

loc_000C98B1: ;
    edx = MEM32(eax + 0xC);
    eax = MEM32(eax + 8);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0x206E40);
    PUSH32(esp, 0x860EC0);
    PUSH32(esp, 0); sub_0018DAD6(); /* call 0x0018DAD6 */

loc_000C98C8: ;
    PUSH32(esp, 0xC);
    PUSH32(esp, 0x369158);
    PUSH32(esp, 0x860EC0);
    PUSH32(esp, 0x860DB8);
    PUSH32(esp, 0); sub_000652E0(); /* call 0x000652E0 */

loc_000C98DE: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0); sub_00055760(); /* call 0x00055760 */

loc_000C98E8: ;
    PUSH32(esp, 0xA);
    PUSH32(esp, 0); sub_00055790(); /* call 0x00055790 */

loc_000C98EF: ;
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_00055770(); /* call 0x00055770 */

loc_000C98F6: ;
    PUSH32(esp, 0x18B);
    PUSH32(esp, 0x168);
    PUSH32(esp, 0); sub_00055740(); /* call 0x00055740 */

loc_000C9905: ;
    PUSH32(esp, 0x860DB8);
    PUSH32(esp, 0); sub_00055E90(); /* call 0x00055E90 */

loc_000C990F: ;
    esp = esp + 0x38;

loc_000C9912: ;
    if (CMP_L(MEM32(ebp + 0x218), 0x1E)) goto loc_000C9954; /* jl: less (signed <) */

loc_000C991B: ;
    eax = ZX8(MEM8(ebp + 0x230));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0009EE10(); /* call 0x0009EE10 */

loc_000C9928: ;
    esp = esp + 4;
    if (TEST_NZ(eax, eax)) goto loc_000C9954; /* jne: not equal / not zero */

loc_000C992F: ;
    PUSH32(esp, 0xFFFF);
    PUSH32(esp, 0x48);
    PUSH32(esp, 0); sub_000559F0(); /* call 0x000559F0 */

loc_000C993B: ;
    PUSH32(esp, 0xFFE03030u);
    PUSH32(esp, 0); sub_000692F0(); /* call 0x000692F0 */

loc_000C9945: ;
    PUSH32(esp, 0); sub_000568A0(); /* call 0x000568A0 */

loc_000C994A: ;
    PUSH32(esp, 0xFFFFFFFFu);
    PUSH32(esp, 0); sub_000692F0(); /* call 0x000692F0 */

loc_000C9951: ;
    esp = esp + 0x10;

loc_000C9954: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    esp = esp + 0x20;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_000CDA50
 * Original: 0x000CDA50 - 0x000CDA60 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDA50(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDA50: ;
    g_seh_ebp = ebp; sub_000D02A0(); return; /* tail jmp 0x000D02A0 */

    /* nop */
    /* nop */
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
 * sub_000CDA60
 * Original: 0x000CDA60 - 0x000CDA70 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDA60(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDA60: ;
    g_seh_ebp = ebp; sub_000D26B0(); return; /* tail jmp 0x000D26B0 */

    /* nop */
    /* nop */
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
 * sub_000CDA70
 * Original: 0x000CDA70 - 0x000CDA80 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDA70(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDA70: ;
    g_seh_ebp = ebp; sub_000C6B10(); return; /* tail jmp 0x000C6B10 */

    /* nop */
    /* nop */
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
 * sub_000CDA80
 * Original: 0x000CDA80 - 0x000CDA90 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDA80(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDA80: ;
    g_seh_ebp = ebp; sub_000D1150(); return; /* tail jmp 0x000D1150 */

    /* nop */
    /* nop */
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
 * sub_000CDA90
 * Original: 0x000CDA90 - 0x000CDAA0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDA90(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDA90: ;
    g_seh_ebp = ebp; sub_000D2670(); return; /* tail jmp 0x000D2670 */

    /* nop */
    /* nop */
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
 * sub_000CDAA0
 * Original: 0x000CDAA0 - 0x000CDAB0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDAA0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDAA0: ;
    g_seh_ebp = ebp; sub_000D2690(); return; /* tail jmp 0x000D2690 */

    /* nop */
    /* nop */
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
 * sub_000CDAB0
 * Original: 0x000CDAB0 - 0x000CDAC0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDAB0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDAB0: ;
    g_seh_ebp = ebp; sub_000CFD30(); return; /* tail jmp 0x000CFD30 */

    /* nop */
    /* nop */
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
 * sub_000CDAC0
 * Original: 0x000CDAC0 - 0x000CDAD0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDAC0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDAC0: ;
    g_seh_ebp = ebp; sub_000D2650(); return; /* tail jmp 0x000D2650 */

    /* nop */
    /* nop */
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
 * sub_000CDAD0
 * Original: 0x000CDAD0 - 0x000CDAE0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CDAD0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000CDAD0: ;
    g_seh_ebp = ebp; sub_000D0270(); return; /* tail jmp 0x000D0270 */

    /* nop */
    /* nop */
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
 * sub_000CF060
 * Original: 0x000CF060 - 0x000CF0E0 (128 bytes, 43 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CF060(void)
{
    int _flags = 0; /* fallback flag var */

loc_000CF060: ;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00067260(); /* call 0x00067260 */

loc_000CF066: ;
    SET_LO8(ecx, MEM8(0x8612AD));
    /* cmp LO8(ecx), 3 - flags set for next jcc */
    eax = ZX8(LO8(eax));
    if (CMP_EQ(LO8(ecx), 3)) goto loc_000CF07E; /* je: equal / zero */

loc_000CF074: ;
    /* cmp LO8(ecx), 4 - flags set for next jcc */
    MEM8(esp) = 0x1B;
    if (CMP_NE(LO8(ecx), 4)) goto loc_000CF083; /* jne: not equal / not zero */

loc_000CF07E: ;
    MEM8(esp) = 6;

loc_000CF083: ;
    ecx = MEM32(esp);
    PUSH32(esp, 0);
    PUSH32(esp, 0xFFFFFFFFu);
    PUSH32(esp, ecx);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00067880(); /* call 0x00067880 */

loc_000CF096: ;
    PUSH32(esp, 0x50);
    PUSH32(esp, 0x1E);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_000672F0(); /* call 0x000672F0 */

loc_000CF0A1: ;
    PUSH32(esp, 0); sub_000C46A0(); /* call 0x000C46A0 */

loc_000CF0A6: ;
    eax = MEM32(esp + 0x2C);
    SET_LO8(edx, MEM8(eax + 0x1CD));
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    MEM8(eax + 0x1CE) = LO8(edx);
    MEM8(eax + 0x1CD) = 0;
    MEM8(eax + 0x1CF) = 3;
    MEM8(eax + 0x1EC) = 0;
    PUSH32(esp, 0); sub_000CE7D0(); /* call 0x000CE7D0 */

loc_000CF0D3: ;
    esp = esp + 0x30;
    esp += 4; return; /* ret */

}


/**
 * sub_000CFA70
 * Original: 0x000CFA70 - 0x000CFC70 (512 bytes, 151 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CFA70(void)
{
    int _flags = 0; /* fallback flag var */

loc_000CFA70: ;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = eax;
    eax = 0x86132A;
    /* nop */

loc_000CFA80: ;
    if (TEST_Z(MEM16(eax), 0x220)) goto loc_000CFA9F; /* je: equal / zero */

loc_000CFA87: ;
    SET_LO8(ecx, MEM8(esi + 0x224));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_000CFA9F; /* jne: not equal / not zero */

loc_000CFA91: ;
    if (CMP_NE(MEM16(esi + 0xFC), 0)) goto loc_000CFB3E; /* jne: not equal / not zero */

loc_000CFA9F: ;
    eax = eax + 8;
    if (CMP_L(eax, 0x86134A)) goto loc_000CFA80; /* jl: less (signed <) */

loc_000CFAA9: ;
    ecx = 3;
    if (CMP_NE(MEM16(esi + 0xFC), LO16(ecx))) goto loc_000CFAE5; /* jne: not equal / not zero */

loc_000CFAB7: ;
    if (CMP_G(MEM16(esi + 0xFE), 0)) goto loc_000CFAE5; /* jg: greater (signed >) */

loc_000CFAC1: ;
    SET_LO8(edx, MEM8(esi + 0x1CD));
    PUSH32(esp, 0xA);
    PUSH32(esp, esi);
    MEM32(esi + 0x1D4) = ecx;
    MEM8(esi + 0x1CE) = LO8(edx);
    MEM8(esi + 0x1CD) = 0xA;
    PUSH32(esp, 0); sub_000CE7D0(); /* call 0x000CE7D0 */

loc_000CFAE2: ;
    esp = esp + 8;

loc_000CFAE5: ;
    if (CMP_NE(MEM16(esi + 0xFC), 2)) goto loc_000CFB1E; /* jne: not equal / not zero */

loc_000CFAEF: ;
    if (CMP_G(MEM16(esi + 0xFE), 0)) goto loc_000CFB1E; /* jg: greater (signed >) */

loc_000CFAF9: ;
    SET_LO8(eax, MEM8(esi + 0x1CD));
    MEM8(esi + 0x1CE) = LO8(eax);
    SET_LO8(eax, MEM8(esi + 0x1CF));
    ecx = SX8(LO8(eax));
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    MEM8(esi + 0x1CD) = LO8(eax);
    PUSH32(esp, 0); sub_000CE7D0(); /* call 0x000CE7D0 */

loc_000CFB1B: ;
    esp = esp + 8;

loc_000CFB1E: ;
    if (CMP_NE(MEM16(esi + 0xFC), 0)) goto loc_000CFB3B; /* jne: not equal / not zero */

loc_000CFB28: ;
    if (CMP_G(MEM16(esi + 0xFE), 0)) goto loc_000CFB3B; /* jg: greater (signed >) */

loc_000CFB32: ;
    MEM16(esi + 0xFC) = 1;

loc_000CFB3B: ;
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

loc_000CFB3E: ;
    SET_LO16(eax, MEM16(esi + 0xFC));
    if (CMP_NE(LO16(eax), 2)) goto loc_000CFBAE; /* jne: not equal / not zero */

loc_000CFB4B: ;
    PUSH32(esp, 0);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000CE7D0(); /* call 0x000CE7D0 */

loc_000CFB53: ;
    esp = esp + 8;
    PUSH32(esp, 0); sub_00067260(); /* call 0x00067260 */

loc_000CFB5B: ;
    SET_LO8(ecx, MEM8(0x8612AD));
    /* cmp LO8(ecx), 3 - flags set for next jcc */
    eax = ZX8(LO8(eax));
    if (CMP_EQ(LO8(ecx), 3)) goto loc_000CFB73; /* je: equal / zero */

loc_000CFB69: ;
    /* cmp LO8(ecx), 4 - flags set for next jcc */
    MEM8(esp + 4) = 0x1B;
    if (CMP_NE(LO8(ecx), 4)) goto loc_000CFB78; /* jne: not equal / not zero */

loc_000CFB73: ;
    MEM8(esp + 4) = 6;

loc_000CFB78: ;
    ecx = MEM32(esp + 4);
    PUSH32(esp, 0);
    PUSH32(esp, 0xFFFFFFFFu);
    PUSH32(esp, ecx);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00067880(); /* call 0x00067880 */

loc_000CFB8B: ;
    PUSH32(esp, 0x50);
    PUSH32(esp, 1);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_000672F0(); /* call 0x000672F0 */

loc_000CFB96: ;
    PUSH32(esp, 0);
    PUSH32(esp, 2);
    PUSH32(esp, 0); sub_000C8780(); /* call 0x000C8780 */

loc_000CFB9F: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x29);
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000CFBA8: ;
    esp = esp + 0x34;
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

loc_000CFBAE: ;
    ecx = 3;
    if (CMP_EQ(LO16(eax), LO16(ecx))) goto loc_000CFB3B; /* je: equal / zero */

loc_000CFBB8: ;
    MEM16(esi + 0xFC) = LO16(ecx);
    ecx = ZX8(MEM8(0x2FD55C));
    ecx = ecx << 5;
    ecx = ecx + 0x1E;
    eax = 0x88888889u;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)ecx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = edx + ecx;
    edx = (uint32_t)((int32_t)edx >> 5);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + eax;
    PUSH32(esp, 0);
    MEM16(esi + 0xFE) = LO16(edx);
    PUSH32(esp, 0); sub_00067260(); /* call 0x00067260 */

loc_000CFBED: ;
    esi = ZX8(MEM8(0x2FD55C));
    ecx = ZX8(LO8(eax));
    esi = esi << 5;
    esi = esi + 0x1E;
    eax = 0x88888889u;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)esi;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = edx + esi;
    edx = (uint32_t)((int32_t)edx >> 5);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + eax;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000CE490(); /* call 0x000CE490 */

loc_000CFC16: ;
    ecx = ZX8(MEM8(0x2FD55C));
    ecx = ecx << 5;
    ecx = ecx + 0x1E;
    eax = 0x88888889u;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)ecx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = edx + ecx;
    edx = (uint32_t)((int32_t)edx >> 5);
    ecx = edx;
    esp = esp + 8;
    ecx = ecx >> 0x1F;
    PUSH32(esp, 0);
    edx = edx + ecx;
    PUSH32(esp, edx);
    PUSH32(esp, 2);
    ecx = 0x861360;
    PUSH32(esp, 0); sub_000D0440(); /* call 0x000D0440 */

loc_000CFC48: ;
    PUSH32(esp, 0);
    PUSH32(esp, 1);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_000C87E0(); /* call 0x000C87E0 */

loc_000CFC53: ;
    PUSH32(esp, 0);
    PUSH32(esp, 1);
    PUSH32(esp, 2);
    PUSH32(esp, 0); sub_000C87E0(); /* call 0x000C87E0 */

loc_000CFC5E: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x29);
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000CFC67: ;
    esp = esp + 0x20;
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}


/**
 * sub_000CFD30
 * Original: 0x000CFD30 - 0x000CFD50 (32 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000CFD30(void)
{

loc_000CFD30: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000CFD3D: ;
    esi = MEM32(esp + 8);
    PUSH32(esp, 0); sub_000CF390(); /* call 0x000CF390 */

loc_000CFD46: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D0270
 * Original: 0x000D0270 - 0x000D02A0 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D0270(void)
{

loc_000D0270: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D027E: ;
    esi = MEM32(esp + 0xC);
    edi = esi;
    PUSH32(esp, 0); sub_000CFD50(); /* call 0x000CFD50 */

loc_000D0289: ;
    PUSH32(esp, 0); sub_000CFF10(); /* call 0x000CFF10 */

loc_000D028E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D02A0
 * Original: 0x000D02A0 - 0x000D02D0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D02A0_gen(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000D02A0: ;
    PUSH32(esp, edi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D02AD: ;
    edi = MEM32(esp + 8);
    PUSH32(esp, 0); sub_000CFCA0(); /* call 0x000CFCA0 */

loc_000D02B6: ;
    eax = edi;
    PUSH32(esp, 0); sub_000D0060(); /* call 0x000D0060 */

loc_000D02BD: ;
    eax = edi;
    POP32(esp, edi);
    g_seh_ebp = ebp; sub_000CFA70(); return; /* tail jmp 0x000CFA70 */

    /* nop */
    /* nop */
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
 * sub_000D02D0
 * Original: 0x000D02D0 - 0x000D02E0 (16 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D02D0(void)
{

loc_000D02D0: ;
    eax = 1;
    MEM8(0x47E764) = LO8(eax);
    esp += 4; return; /* ret */

}


/**
 * sub_000D02E0
 * Original: 0x000D02E0 - 0x000D0340 (96 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D02E0(void)
{
    int _flags = 0; /* fallback flag var */

loc_000D02E0: ;
    SET_LO8(ecx, MEM8(0x484CB2));
    SET_LO8(edx, MEM8(0x484CB1));
    eax = 0; /* xor self */
    PUSH32(esp, ebx);
    /* nop */

loc_000D02F0: ;
    SET_LO8(ebx, MEM8(0x484C49));
    MEM8(eax + 0x481571) = LO8(ebx);
    SET_LO8(ebx, MEM8(0x484C4A));
    MEM8(eax + 0x481576) = LO8(ebx);
    ebx = 5;
    MEM8(0x481570) = LO8(ebx);
    MEM8(eax + 0x481581) = LO8(edx);
    MEM8(eax + 0x481586) = LO8(ecx);
    eax++;
    /* cmp eax, ebx - flags set for next jcc */
    MEM8(0x481580) = LO8(ebx);
    if (CMP_L(eax, ebx)) goto loc_000D02F0; /* jl: less (signed <) */

loc_000D032A: ;
    SET_LO8(eax, 0); /* xor self */
    MEM8(0x484CB0) = LO8(eax);
    MEM8(0x47E764) = LO8(eax);
    eax = 1;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_000D0340
 * Original: 0x000D0340 - 0x000D0390 (80 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D0340(void)
{

loc_000D0340: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x12);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00025400(); /* call 0x00025400 */

loc_000D034B: ;
    esp = esp + 0xC;
    MEM8(0x484C48) = 0;
    MEM8(0x484CB0) = 0;
    MEM8(0x47E764) = 4;
    eax = 1;
    esp += 4; return; /* ret */

}


/**
 * sub_000D1150
 * Original: 0x000D1150 - 0x000D1180 (48 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D1150(void)
{

loc_000D1150: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 3;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D115D: ;
    esi = MEM32(esp + 8);
    eax = esi;
    PUSH32(esp, 0); sub_000D0390(); /* call 0x000D0390 */

loc_000D1168: ;
    PUSH32(esp, 0); sub_000D0EC0(); /* call 0x000D0EC0 */

loc_000D116D: ;
    PUSH32(esp, 0); sub_000D0680(); /* call 0x000D0680 */

loc_000D1172: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D2650
 * Original: 0x000D2650 - 0x000D2670 (32 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D2650(void)
{

loc_000D2650: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D265D: ;
    esi = MEM32(esp + 8);
    PUSH32(esp, 0); sub_000D1D40(); /* call 0x000D1D40 */

loc_000D2666: ;
    PUSH32(esp, 0); sub_000D1ED0(); /* call 0x000D1ED0 */

loc_000D266B: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D2670
 * Original: 0x000D2670 - 0x000D2690 (32 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D2670(void)
{

loc_000D2670: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D267D: ;
    esi = MEM32(esp + 8);
    PUSH32(esp, 0); sub_000D11B0(); /* call 0x000D11B0 */

loc_000D2686: ;
    PUSH32(esp, 0); sub_000D2040(); /* call 0x000D2040 */

loc_000D268B: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D2690
 * Original: 0x000D2690 - 0x000D26B0 (32 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D2690(void)
{

loc_000D2690: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D269D: ;
    esi = MEM32(esp + 8);
    PUSH32(esp, 0); sub_000D2120(); /* call 0x000D2120 */

loc_000D26A6: ;
    PUSH32(esp, 0); sub_000D22E0(); /* call 0x000D22E0 */

loc_000D26AB: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000D26B0
 * Original: 0x000D26B0 - 0x000D26D0 (32 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000D26B0(void)
{

loc_000D26B0: ;
    PUSH32(esp, esi);
    MEM8(0x47E71C) = 1;
    PUSH32(esp, 0); sub_000CEAC0(); /* call 0x000CEAC0 */

loc_000D26BD: ;
    esi = MEM32(esp + 8);
    eax = esi;
    PUSH32(esp, 0); sub_000D2480(); /* call 0x000D2480 */

loc_000D26C8: ;
    PUSH32(esp, 0); sub_000D19C0(); /* call 0x000D19C0 */

loc_000D26CD: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_000DFF50
 * Original: 0x000DFF50 - 0x000E0002 (178 bytes, 57 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000DFF50(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */
    int _flags = 0; /* fallback flag var */

loc_000DFF50: ;
    PUSH32(esp, esi);
    esi = ecx;
    SET_LO8(eax, MEM8(esi + 0x1E));
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E00B5(); return; } /* je: equal / zero */

loc_000DFF5E: ;
    SET_LO8(eax, MEM8(esi + 0x1C));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esp + 0xC);
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000DFF78; /* jne: not equal / not zero */

loc_000DFF6A: ;
    SET_LO8(ecx, MEM8(edi + 0x238));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) { g_seh_ebp = ebp; sub_000E00B4(); return; } /* jne: not equal / not zero */

loc_000DFF78: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_000DFF8A; /* jne: not equal / not zero */

loc_000DFF7C: ;
    SET_LO8(eax, MEM8(edi + 0x238));
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E00B4(); return; } /* je: equal / zero */

loc_000DFF8A: ;
    SET_LO8(eax, MEM8(esi + 0x1D));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000DFF9F; /* jne: not equal / not zero */

loc_000DFF91: ;
    SET_LO8(ecx, MEM8(edi + 0x239));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) { g_seh_ebp = ebp; sub_000E00B4(); return; } /* jne: not equal / not zero */

loc_000DFF9F: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_000DFFB1; /* jne: not equal / not zero */

loc_000DFFA3: ;
    SET_LO8(eax, MEM8(edi + 0x239));
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E00B4(); return; } /* je: equal / zero */

loc_000DFFB1: ;
    eax = MEM32(esi + 8);
    PUSH32(esp, eax);
    ecx = edi;
    PUSH32(esp, 0); sub_000DFF10(); /* call 0x000DFF10 */

loc_000DFFBC: ;
    ecx = MEM32(esi + 0xC);
    PUSH32(esp, ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF360(); /* call 0x000DF360 */

loc_000DFFC7: ;
    edx = MEM32(esi + 0x10);
    PUSH32(esp, edx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF460(); /* call 0x000DF460 */

loc_000DFFD2: ;
    eax = MEM32(esi + 0x14);
    PUSH32(esp, eax);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF4D0(); /* call 0x000DF4D0 */

loc_000DFFDD: ;
    if (CMP_NE(MEM32(esi + 0x18), 0x3F800000)) { g_seh_ebp = ebp; sub_000E003D(); return; } /* jne: not equal / not zero */

loc_000DFFE6: ;
    SET_LO8(eax, MEM8(esi + 0x20));
    if (CMP_EQ(LO8(eax), 2)) { g_seh_ebp = ebp; sub_000E003D(); return; } /* je: equal / zero */

loc_000DFFED: ;
    eax = SX8(LO8(eax));
    eax = eax - 0;
    if ((eax == 0)) { g_seh_ebp = ebp; sub_000E0026(); return; } /* je: equal / zero */

loc_000DFFF5: ;
    eax--;
    if ((eax == 0)) { g_seh_ebp = ebp; sub_000E000F(); return; } /* je: equal / zero */

loc_000DFFF8: ;
    ecx = ZX16(MEM16(esi + 4));
    edx = MEM32(edi + 0x234);

}


/**
 * sub_000E0004
 * Original: 0x000E0004 - 0x000E0026 (34 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0004(void)
{

loc_000E0004: ;
    SET_HI8(ecx, LO8(eax));
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)MEM8(esi + 7));
      edx = (uint32_t)(_dividend % (uint32_t)MEM8(esi + 7)); }
    MEM8(edi + 0x5E) = MEM8(edi + 0x5E) + LO8(ebx);
    esp += 8; return; /* ret 4 */

    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E000F
 * Original: 0x000E000F - 0x000E0026 (23 bytes, 7 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E000F(void)
{

loc_000E000F: ;
    eax = ZX16(MEM16(esi + 4));
    ecx = MEM32(edi + 0x234);
    ecx = MEM32(ecx + eax * 4);
    PUSH32(esp, 0); sub_00156930(); /* call 0x00156930 */

loc_000E0021: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E0026
 * Original: 0x000E0026 - 0x000E002A (4 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0026(void)
{

loc_000E0026: ;
    edx = ZX16(MEM16(esi + 4));

    sub_000E002A(); return; /* DOA3: restored dropped fall-through to sub_000E002A */
}


/**
 * sub_000E002A
 * Original: 0x000E002A - 0x000E0050 (38 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E002A_oldjt(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E002A: ;
    eax = MEM32(edi + 0x234);
    ecx = MEM32(eax + edx * 4);
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E0038: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

    g_seh_ebp = ebp; RECOMP_ITAIL(MEM32(eax * 4 + 0xE00BC)); return; /* indirect tail jmp */

    ecx = MEM32(esi + 0x18);

    g_seh_ebp = ebp; sub_000E0050(); return; /* DOA3: restored dropped fall-through to sub_000E0050 */
}


/**
 * sub_000E003D
 * Original: 0x000E003D - 0x000E0050 (19 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E003D_oldjt(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E003D: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x1F);
    if (CMP_A(eax, 3)) { g_seh_ebp = ebp; sub_000E009E(); return; } /* ja: above (unsigned >) */

loc_000E0046: ;
    g_seh_ebp = ebp; RECOMP_ITAIL(MEM32(eax * 4 + 0xE00BC)); return; /* indirect tail jmp */

    ecx = MEM32(esi + 0x18);

    g_seh_ebp = ebp; sub_000E0050(); return; /* DOA3: restored dropped fall-through to sub_000E0050 */
}


/**
 * sub_000E0050
 * Original: 0x000E0050 - 0x000E006B (27 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0050(void)
{

loc_000E0050: ;
    edx = ZX16(MEM16(esi + 4));
    eax = MEM32(edi + 0x234);
    PUSH32(esp, ecx);
    ecx = MEM32(eax + edx * 4);
    PUSH32(esp, 0); sub_001562E0(); /* call 0x001562E0 */

loc_000E0063: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E006B
 * Original: 0x000E006B - 0x000E0076 (11 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E006B(void)
{

loc_000E006B: ;
    edx = ZX16(MEM16(esi + 4));
    eax = MEM32(edi + 0x234);
    PUSH32(esp, ecx);

    sub_000E0076(); return; /* DOA3: restored dropped fall-through to sub_000E0076 */
}


/**
 * sub_000E0076
 * Original: 0x000E0076 - 0x000E00D0 (90 bytes, 34 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0076(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E0076: ;
    ecx = MEM32(eax + edx * 4);
    PUSH32(esp, 0); sub_001562F0(); /* call 0x001562F0 */

loc_000E007E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E009E
 * Original: 0x000E009E - 0x000E00B4 (22 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E009E(void)
{

loc_000E009E: ;
    ecx = MEM32(esi + 0x18);
    edx = ZX16(MEM16(esi + 4));
    eax = MEM32(edi + 0x234);
    PUSH32(esp, ecx);
    ecx = MEM32(eax + edx * 4);
    PUSH32(esp, 0); sub_00155FE0(); /* call 0x00155FE0 */

    sub_000E00B4(); return; /* DOA3: restored dropped fall-through to sub_000E00B4 */
}


/**
 * sub_000E00B4
 * Original: 0x000E00B4 - 0x000E00B5 (1 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E00B4(void)
{

loc_000E00B4: ;
    POP32(esp, edi);

    sub_000E00B5(); return; /* DOA3: restored dropped fall-through to sub_000E00B5 */
}


/**
 * sub_000E00B5
 * Original: 0x000E00B5 - 0x000E00D0 (27 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E00B5(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E00B5: ;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E00D0
 * Original: 0x000E00D0 - 0x000E00FF (47 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E00D0_gen(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E00D0: ;
    PUSH32(esp, ecx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    ebp = MEM32(edi + 0x234);
    esi = ecx;
    SET_LO8(eax, MEM8(esi + 0x1E));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    MEM32(esp + 0xC) = ebp;
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E03F5(); return; } /* je: equal / zero */

loc_000E00EF: ;
    SET_LO8(eax, MEM8(esi + 0x1C));
    if (TEST_NZ(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E0104(); return; } /* jne: not equal / not zero */

loc_000E00F6: ;
    SET_LO8(ecx, MEM8(edi + 0x238));
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */

    g_seh_ebp = ebp; sub_000E00FF(); return; /* DOA3: restored dropped fall-through to sub_000E00FF */
}


/**
 * sub_000E00FF
 * Original: 0x000E00FF - 0x000E0108 (9 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E00FF(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */
    int _flags = 0; /* fallback flag var */

loc_000E00FF: ;
    /* test ecx, esi - flags set for next jcc */
    SET_LO8(eax, LO8(eax) + MEM8(eax));
    MEM8(edx + eax) = MEM8(edx + eax) + HI8(ebx);
    if ((MEM8(edx + eax) != 0)) { g_seh_ebp = ebp; sub_000E0116(); return; } /* jne: not equal / not zero */

    g_seh_ebp = ebp; sub_000E0108(); return; /* DOA3: restored dropped fall-through to sub_000E0108 */
}


/**
 * sub_000E0104
 * Original: 0x000E0104 - 0x000E0108 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0104(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */
    int _flags = 0; /* fallback flag var */

loc_000E0104: ;
    if (CMP_NE(LO8(eax), 2)) { g_seh_ebp = ebp; sub_000E0116(); return; } /* jne: not equal / not zero */

    g_seh_ebp = ebp; sub_000E0108(); return; /* DOA3: restored dropped fall-through to sub_000E0108 */
}


/**
 * sub_000E0108
 * Original: 0x000E0108 - 0x000E0590 (1160 bytes, 390 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0108_oldfpu(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    int _fpu_cmp = 0; /* FPU compare result: -1/0/1 */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E0108: ;
    SET_LO8(eax, MEM8(edi + 0x238));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000E03F5; /* je: equal / zero */

loc_000E0116: ;
    SET_LO8(eax, MEM8(esi + 0x1D));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E012B; /* jne: not equal / not zero */

loc_000E011D: ;
    SET_LO8(ecx, MEM8(edi + 0x239));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_000E03F5; /* jne: not equal / not zero */

loc_000E012B: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_000E013D; /* jne: not equal / not zero */

loc_000E012F: ;
    SET_LO8(eax, MEM8(edi + 0x239));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000E03F5; /* je: equal / zero */

loc_000E013D: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, ebx);
    PUSH32(esp, eax);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF360(); /* call 0x000DF360 */

loc_000E0149: ;
    ecx = MEM32(esi + 0x10);
    PUSH32(esp, ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF460(); /* call 0x000DF460 */

loc_000E0154: ;
    edx = MEM32(esi + 0x14);
    PUSH32(esp, edx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF4D0(); /* call 0x000DF4D0 */

loc_000E015F: ;
    ebx = MEM32(esi + 0x28);
    if (CMP_LE(ebx & ebx, 0)) goto loc_000E02BD; /* jle: less or equal (signed <=) */

loc_000E016A: ;
    ebp = MEM32(esi + 0x24);
    MEM32(esp + 0x18) = 1;

loc_000E0175: ;
    ecx = MEM32(ebp);
    eax = MEM32(ecx);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edi);
    { uint32_t _icall_t = MEM32(eax + 4); PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_000E017E: ;
    MEM32(esp + 0x18) = MEM32(esp + 0x18) & eax;
    if ((MEM32(esp + 0x18) == 0)) goto loc_000E01B5; /* je: equal / zero */

loc_000E0184: ;
    ebx--;
    ebp = ebp + 4;
    if (TEST_NZ(ebx, ebx)) goto loc_000E0175; /* jne: not equal / not zero */

loc_000E018C: ;
    fp_push(MEMF(edi + 0x240)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */

loc_000E0195: ;
    MEMF(esi + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0x34)); /* fld float */
    fp_push(MEMF(esi + 0x38)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [0x1ed554] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_000E01C0; /* jne: not equal / not zero */

loc_000E01AB: ;
    /* fstp st(0) */
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_000E01CF;

loc_000E01B5: ;
    fp_push(MEMF(edi + 0x240)); /* fld float */
    /* FPU: fsubr dword ptr [esi + 0x38] */
    goto loc_000E0195;

loc_000E01C0: ;
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcom dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (TEST_Z(HI8(eax), 0x41)) goto loc_000E01CF; /* je: equal / zero */

loc_000E01CA: ;
    /* fstp st(0) */
    fp_push(MEMF(esi + 0x38)); /* fld float */

loc_000E01CF: ;
    MEMF(esi + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0x18)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_000E02B9; /* jne: not equal / not zero */

loc_000E01F0: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E022E; /* jp: parity */

loc_000E0200: ;
    ecx = MEM32(esi + 8);
    PUSH32(esp, ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DFF10(); /* call 0x000DFF10 */

loc_000E020B: ;
    SET_LO8(eax, MEM8(esi + 0x1F));
    ecx = MEM32(esp + 0x10);
    edx = MEM32(esp + 0x18);
    /* cmp LO8(eax), 3 - flags set for next jcc */
    eax = ZX16(MEM16(esi + 4));
    ecx = MEM32(ecx + eax * 4);
    PUSH32(esp, edx);
    if (CMP_EQ(LO8(eax), 3)) goto loc_000E0229; /* je: equal / zero */

loc_000E0222: ;
    PUSH32(esp, 0); sub_001562F0(); /* call 0x001562F0 */

loc_000E0227: ;
    goto loc_000E022E;

loc_000E0229: ;
    PUSH32(esp, 0); sub_001579E0(); /* call 0x001579E0 */

loc_000E022E: ;
    eax = MEM32(esi + 0x30);
    if (CMP_LE(eax & eax, 0)) goto loc_000E02B9; /* jle: less or equal (signed <=) */

loc_000E0239: ;
    ebp = MEM32(esi + 0x2C);
    MEM32(esp + 0x18) = 0;

loc_000E0244: ;
    ebx = MEM32(ebp + 4);
    if (CMP_EQ(MEM32(edi + 0x50), ebx)) goto loc_000E026A; /* je: equal / zero */

loc_000E024C: ;
    ecx = edi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E0254: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E025F; /* je: equal / zero */

loc_000E0258: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E025F: ;
    ecx = edi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E0267: ;
    MEM32(edi + 0x50) = ebx;

loc_000E026A: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x20);
    eax = eax - 0;
    SET_LO16(ecx, MEM16(ebp));
    if ((eax == 0)) goto loc_000E0297; /* je: equal / zero */

loc_000E0277: ;
    eax--;
    if ((eax == 0)) goto loc_000E0286; /* je: equal / zero */

loc_000E027A: ;
    eax = MEM32(esp + 0x10);
    edx = SX16(LO16(ecx));
    ecx = MEM32(eax + edx * 4);
    goto loc_000E02A1;

loc_000E0286: ;
    edx = MEM32(esp + 0x10);
    ecx = SX16(LO16(ecx));
    ecx = MEM32(edx + ecx * 4);
    PUSH32(esp, 0); sub_00156930(); /* call 0x00156930 */

loc_000E0295: ;
    goto loc_000E02A6;

loc_000E0297: ;
    eax = SX16(LO16(ecx));
    ecx = MEM32(esp + 0x10);
    ecx = MEM32(ecx + eax * 4);

loc_000E02A1: ;
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E02A6: ;
    eax = MEM32(esp + 0x18);
    ecx = MEM32(esi + 0x30);
    eax++;
    ebp = ebp + 8;
    /* cmp eax, ecx - flags set for next jcc */
    MEM32(esp + 0x18) = eax;
    if (CMP_L(eax, ecx)) goto loc_000E0244; /* jl: less (signed <) */

loc_000E02B9: ;
    ebp = MEM32(esp + 0x10);

loc_000E02BD: ;
    fp_push(MEMF(esi + 0x18)); /* fld float */
    eax = MEM32(esi + 0x28);
    /* test eax, eax - flags set for next jcc */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    if (CMP_LE(eax & eax, 0)) goto loc_000E02E2; /* jle: less or equal (signed <=) */

loc_000E02CE: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E03F4; /* jp: parity */

loc_000E02E2: ;
    ebx = MEM32(esi + 8);
    if (CMP_EQ(MEM32(edi + 0x50), ebx)) goto loc_000E0308; /* je: equal / zero */

loc_000E02EA: ;
    ecx = edi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E02F2: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E02FD; /* je: equal / zero */

loc_000E02F6: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E02FD: ;
    ecx = edi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E0305: ;
    MEM32(edi + 0x50) = ebx;

loc_000E0308: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esp + 0x18] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E036A; /* jp: parity */

loc_000E0319: ;
    SET_LO8(eax, MEM8(esi + 0x20));
    if (CMP_EQ(LO8(eax), 2)) goto loc_000E036A; /* je: equal / zero */

loc_000E0320: ;
    eax = SX8(LO8(eax));
    eax = eax - 0;
    if ((eax == 0)) goto loc_000E0355; /* je: equal / zero */

loc_000E0328: ;
    eax--;
    if ((eax == 0)) goto loc_000E0340; /* je: equal / zero */

loc_000E032B: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E0338: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0340: ;
    eax = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, 0); sub_00156930(); /* call 0x00156930 */

loc_000E034D: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0355: ;
    ecx = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + ecx * 4);
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E0362: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E036A: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x1F);
    if (CMP_A(eax, 3)) goto loc_000E03E2; /* ja: above (unsigned >) */

loc_000E0373: ;
    { uint32_t _jt = MEM32(eax * 4 + 0xE03FC); /* switch: 4 entries, 4 targets */
    if (_jt == 0x000E037Au) goto loc_000E037A;
    if (_jt == 0x000E0394u) goto loc_000E0394;
    if (_jt == 0x000E03AEu) goto loc_000E03AE;
    if (_jt == 0x000E03C8u) goto loc_000E03C8;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_000E037A: ;
    eax = ZX16(MEM16(esi + 4));
    edx = MEM32(esp + 0x18);
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00155FE0(); /* call 0x00155FE0 */

loc_000E038C: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0394: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(esp + 0x18);
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_001562E0(); /* call 0x001562E0 */

loc_000E03A6: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03AE: ;
    ecx = ZX16(MEM16(esi + 4));
    eax = MEM32(esp + 0x18);
    ecx = MEM32(ebp + ecx * 4);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001562F0(); /* call 0x001562F0 */

loc_000E03C0: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03C8: ;
    eax = ZX16(MEM16(esi + 4));
    edx = MEM32(esp + 0x18);
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001579E0(); /* call 0x001579E0 */

loc_000E03DA: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03E2: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(esp + 0x18);
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_00155FE0(); /* call 0x00155FE0 */

loc_000E03F4: ;
    POP32(esp, ebx);

loc_000E03F5: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

    PUSH32(esp, 0 /* seg:cs */);
    MEM8(ebx + eax + 0x3AE000E) = MEM8(ebx + eax + 0x3AE000E) + LO8(edx);
    PUSH32(esp, 0 /* seg:cs */);
    SET_LO8(eax, LO8(eax) + LO8(ecx));
    ecx = ecx + MEM32(esi);
    MEM8(eax + -2087677808) = MEM8(eax + -2087677808) + LO8(edx);
    /* TODO: in al, dx */
    eax++;
    PUSH32(esp, edi);
    edi = ecx;
    SET_LO8(eax, MEM8(edi + 4));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E057F; /* jne: not equal / not zero */

loc_000E0421: ;
    if (CMP_L(MEM16(edi + 8), 0)) goto loc_000E0446; /* jl: less (signed <) */

loc_000E0428: ;
    SET_LO8(eax, MEM8(0x4B838A));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E0446; /* jne: not equal / not zero */

loc_000E0431: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00025610(); /* call 0x00025610 */

loc_000E0438: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00025470(); /* call 0x00025470 */

loc_000E043E: ;
    esp = esp + 8;
    if (CMP_NE(eax, 6)) goto loc_000E0452; /* jne: not equal / not zero */

loc_000E0446: ;
    eax = 1;
    POP32(esp, edi);
    esp = esp + 0x40;
    esp += 8; return; /* ret 4 */

loc_000E0452: ;
    eax = MEM32(0x4842A4);
    ecx = MEM32(0x48A48C);
    edx = MEM32(0x47E7C8);
    PUSH32(esp, ebx);
    ebx = MEM32(edi + 0xC);
    MEM32(esp + 0x18) = eax;
    eax = MEM32(0x480290);
    PUSH32(esp, ebp);
    MEM32(esp + 0x2C) = eax;
    eax = MEM32(0x4803A0);
    MEM32(esp + 0x20) = ecx;
    ecx = MEM32(0x480294);
    MEM32(esp + 0x24) = edx;
    edx = MEM32(0x480298);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x54);
    MEM32(esp + 0x40) = eax;
    /* cmp MEM32(esi + 0x50), ebx - flags set for next jcc */
    MEM32(esp + 0x34) = ecx;
    ecx = MEM32(0x4803A4);
    MEM32(esp + 0x38) = edx;
    edx = MEM32(0x4803A8);
    MEM32(esp + 0x44) = ecx;
    MEM32(esp + 0x48) = edx;
    if (CMP_EQ(MEM32(esi + 0x50), ebx)) goto loc_000E04D6; /* je: equal / zero */

loc_000E04B8: ;
    ecx = esi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E04C0: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E04CB; /* je: equal / zero */

loc_000E04C4: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E04CB: ;
    ecx = esi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E04D3: ;
    MEM32(esi + 0x50) = ebx;

loc_000E04D6: ;
    ecx = (uint32_t)(int32_t)SMEM16(edi + 8);
    eax = MEM32(esi + 0x244);
    esi = MEM32(eax + ecx * 4 + 0x14);
    edx = MEM32(esi + eax + 0x10);
    ecx = MEM32(esi + eax + 0x18);
    esi = esi + eax;
    eax = MEM32(esi + 0x14);
    MEM32(esp + 0x10) = edx;
    edx = MEM32(esi + 0x1C);
    MEM32(esp + 0x14) = eax;
    MEM32(esp + 0x18) = ecx;
    MEM32(esp + 0x54) = edx;
    ebp = esp + 0x30;
    ebx = 0x484C9A;
    /* nop */

loc_000E0510: ;
    if (CMP_EQ(MEM8(ebx), 0)) goto loc_000E0538; /* je: equal / zero */

loc_000E0515: ;
    eax = MEM32(esp + 0x54);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    ecx = esp + 0x18;
    PUSH32(esp, ecx);
    edx = esp + 0x2C;
    PUSH32(esp, ebp);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000DFD40(); /* call 0x000DFD40 */

loc_000E052B: ;
    SET_LO8(ecx, MEM8(edi + 5));
    esp = esp + 0x14;
    SET_LO8(ecx, LO8(ecx) & LO8(eax));
    MEM8(edi + 5) = LO8(ecx);
    if ((LO8(ecx) == 0)) goto loc_000E0546; /* je: equal / zero */

loc_000E0538: ;
    ebx = ebx + 0x68;
    ebp = ebp + 0x10;
    if (CMP_L(ebx, 0x484D6A)) goto loc_000E0510; /* jl: less (signed <) */

loc_000E0546: ;
    SET_LO8(eax, MEM8(edi + 5));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000E0578; /* je: equal / zero */

loc_000E054D: ;
    eax = MEM32(esp + 0x54);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    ecx = esp + 0x18;
    PUSH32(esp, ecx);
    edx = esp + 0x2C;
    PUSH32(esp, 0x3E99999A);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000DFE70(); /* call 0x000DFE70 */

loc_000E0567: ;
    SET_LO8(ecx, MEM8(edi + 5));
    esp = esp + 0x14;
    eax = (uint32_t)(-(int32_t)eax);
    SET_LO8(eax, _cf ? 0xFFFFFFFF : 0); /* sbb self (CF extend) */
    SET_LO8(eax, LO8(eax) + 1);
    SET_LO8(ecx, LO8(ecx) & LO8(eax));
    MEM8(edi + 5) = LO8(ecx);

loc_000E0578: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    MEM8(edi + 4) = 1;
    POP32(esp, ebx);

loc_000E057F: ;
    eax = ZX8(MEM8(edi + 5));
    POP32(esp, edi);
    esp = esp + 0x40;
    esp += 8; return; /* ret 4 */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_000E0116
 * Original: 0x000E0116 - 0x000E03F5 (735 bytes, 250 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0116_oldfpu(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _fpu_cmp = 0; /* FPU compare result: -1/0/1 */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E0116: ;
    SET_LO8(eax, MEM8(esi + 0x1D));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E012B; /* jne: not equal / not zero */

loc_000E011D: ;
    SET_LO8(ecx, MEM8(edi + 0x239));
    if (TEST_NZ(LO8(ecx), LO8(ecx))) { g_seh_ebp = ebp; sub_000E03F5(); return; } /* jne: not equal / not zero */

loc_000E012B: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_000E013D; /* jne: not equal / not zero */

loc_000E012F: ;
    SET_LO8(eax, MEM8(edi + 0x239));
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_000E03F5(); return; } /* je: equal / zero */

loc_000E013D: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, ebx);
    PUSH32(esp, eax);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF360(); /* call 0x000DF360 */

loc_000E0149: ;
    ecx = MEM32(esi + 0x10);
    PUSH32(esp, ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF460(); /* call 0x000DF460 */

loc_000E0154: ;
    edx = MEM32(esi + 0x14);
    PUSH32(esp, edx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DF4D0(); /* call 0x000DF4D0 */

loc_000E015F: ;
    ebx = MEM32(esi + 0x28);
    if (CMP_LE(ebx & ebx, 0)) goto loc_000E02BD; /* jle: less or equal (signed <=) */

loc_000E016A: ;
    ebp = MEM32(esi + 0x24);
    MEM32(esp + 0x18) = 1;

loc_000E0175: ;
    ecx = MEM32(ebp);
    eax = MEM32(ecx);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edi);
    { uint32_t _icall_t = MEM32(eax + 4); PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_000E017E: ;
    MEM32(esp + 0x18) = MEM32(esp + 0x18) & eax;
    if ((MEM32(esp + 0x18) == 0)) goto loc_000E01B5; /* je: equal / zero */

loc_000E0184: ;
    ebx--;
    ebp = ebp + 4;
    if (TEST_NZ(ebx, ebx)) goto loc_000E0175; /* jne: not equal / not zero */

loc_000E018C: ;
    fp_push(MEMF(edi + 0x240)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */

loc_000E0195: ;
    MEMF(esi + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0x34)); /* fld float */
    fp_push(MEMF(esi + 0x38)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [0x1ed554] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_000E01C0; /* jne: not equal / not zero */

loc_000E01AB: ;
    /* fstp st(0) */
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_000E01CF;

loc_000E01B5: ;
    fp_push(MEMF(edi + 0x240)); /* fld float */
    /* FPU: fsubr dword ptr [esi + 0x38] */
    goto loc_000E0195;

loc_000E01C0: ;
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcom dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (TEST_Z(HI8(eax), 0x41)) goto loc_000E01CF; /* je: equal / zero */

loc_000E01CA: ;
    /* fstp st(0) */
    fp_push(MEMF(esi + 0x38)); /* fld float */

loc_000E01CF: ;
    MEMF(esi + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0x18)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_000E02B9; /* jne: not equal / not zero */

loc_000E01F0: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E022E; /* jp: parity */

loc_000E0200: ;
    ecx = MEM32(esi + 8);
    PUSH32(esp, ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_000DFF10(); /* call 0x000DFF10 */

loc_000E020B: ;
    SET_LO8(eax, MEM8(esi + 0x1F));
    ecx = MEM32(esp + 0x10);
    edx = MEM32(esp + 0x18);
    /* cmp LO8(eax), 3 - flags set for next jcc */
    eax = ZX16(MEM16(esi + 4));
    ecx = MEM32(ecx + eax * 4);
    PUSH32(esp, edx);
    if (CMP_EQ(LO8(eax), 3)) goto loc_000E0229; /* je: equal / zero */

loc_000E0222: ;
    PUSH32(esp, 0); sub_001562F0(); /* call 0x001562F0 */

loc_000E0227: ;
    goto loc_000E022E;

loc_000E0229: ;
    PUSH32(esp, 0); sub_001579E0(); /* call 0x001579E0 */

loc_000E022E: ;
    eax = MEM32(esi + 0x30);
    if (CMP_LE(eax & eax, 0)) goto loc_000E02B9; /* jle: less or equal (signed <=) */

loc_000E0239: ;
    ebp = MEM32(esi + 0x2C);
    MEM32(esp + 0x18) = 0;

loc_000E0244: ;
    ebx = MEM32(ebp + 4);
    if (CMP_EQ(MEM32(edi + 0x50), ebx)) goto loc_000E026A; /* je: equal / zero */

loc_000E024C: ;
    ecx = edi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E0254: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E025F; /* je: equal / zero */

loc_000E0258: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E025F: ;
    ecx = edi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E0267: ;
    MEM32(edi + 0x50) = ebx;

loc_000E026A: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x20);
    eax = eax - 0;
    SET_LO16(ecx, MEM16(ebp));
    if ((eax == 0)) goto loc_000E0297; /* je: equal / zero */

loc_000E0277: ;
    eax--;
    if ((eax == 0)) goto loc_000E0286; /* je: equal / zero */

loc_000E027A: ;
    eax = MEM32(esp + 0x10);
    edx = SX16(LO16(ecx));
    ecx = MEM32(eax + edx * 4);
    goto loc_000E02A1;

loc_000E0286: ;
    edx = MEM32(esp + 0x10);
    ecx = SX16(LO16(ecx));
    ecx = MEM32(edx + ecx * 4);
    PUSH32(esp, 0); sub_00156930(); /* call 0x00156930 */

loc_000E0295: ;
    goto loc_000E02A6;

loc_000E0297: ;
    eax = SX16(LO16(ecx));
    ecx = MEM32(esp + 0x10);
    ecx = MEM32(ecx + eax * 4);

loc_000E02A1: ;
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E02A6: ;
    eax = MEM32(esp + 0x18);
    ecx = MEM32(esi + 0x30);
    eax++;
    ebp = ebp + 8;
    /* cmp eax, ecx - flags set for next jcc */
    MEM32(esp + 0x18) = eax;
    if (CMP_L(eax, ecx)) goto loc_000E0244; /* jl: less (signed <) */

loc_000E02B9: ;
    ebp = MEM32(esp + 0x10);

loc_000E02BD: ;
    fp_push(MEMF(esi + 0x18)); /* fld float */
    eax = MEM32(esi + 0x28);
    /* test eax, eax - flags set for next jcc */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    if (CMP_LE(eax & eax, 0)) goto loc_000E02E2; /* jle: less or equal (signed <=) */

loc_000E02CE: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esi + 0x38] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E03F4; /* jp: parity */

loc_000E02E2: ;
    ebx = MEM32(esi + 8);
    if (CMP_EQ(MEM32(edi + 0x50), ebx)) goto loc_000E0308; /* je: equal / zero */

loc_000E02EA: ;
    ecx = edi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E02F2: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E02FD; /* je: equal / zero */

loc_000E02F6: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E02FD: ;
    ecx = edi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E0305: ;
    MEM32(edi + 0x50) = ebx;

loc_000E0308: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; /* fcomp dword ptr [esp + 0x18] */
    /* fnstsw ax - store FPU status word */
    if (1 /* jp after test - parity */) goto loc_000E036A; /* jp: parity */

loc_000E0319: ;
    SET_LO8(eax, MEM8(esi + 0x20));
    if (CMP_EQ(LO8(eax), 2)) goto loc_000E036A; /* je: equal / zero */

loc_000E0320: ;
    eax = SX8(LO8(eax));
    eax = eax - 0;
    if ((eax == 0)) goto loc_000E0355; /* je: equal / zero */

loc_000E0328: ;
    eax--;
    if ((eax == 0)) goto loc_000E0340; /* je: equal / zero */

loc_000E032B: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E0338: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0340: ;
    eax = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, 0); sub_00156930(); /* call 0x00156930 */

loc_000E034D: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0355: ;
    ecx = ZX16(MEM16(esi + 4));
    ecx = MEM32(ebp + ecx * 4);
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_000E0362: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E036A: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x1F);
    if (CMP_A(eax, 3)) goto loc_000E03E2; /* ja: above (unsigned >) */

loc_000E0373: ;
    { uint32_t _jt = MEM32(eax * 4 + 0xE03FC); /* switch: 4 entries, 4 targets */
    if (_jt == 0x000E037Au) goto loc_000E037A;
    if (_jt == 0x000E0394u) goto loc_000E0394;
    if (_jt == 0x000E03AEu) goto loc_000E03AE;
    if (_jt == 0x000E03C8u) goto loc_000E03C8;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_000E037A: ;
    eax = ZX16(MEM16(esi + 4));
    edx = MEM32(esp + 0x18);
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00155FE0(); /* call 0x00155FE0 */

loc_000E038C: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E0394: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(esp + 0x18);
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_001562E0(); /* call 0x001562E0 */

loc_000E03A6: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03AE: ;
    ecx = ZX16(MEM16(esi + 4));
    eax = MEM32(esp + 0x18);
    ecx = MEM32(ebp + ecx * 4);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001562F0(); /* call 0x001562F0 */

loc_000E03C0: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03C8: ;
    eax = ZX16(MEM16(esi + 4));
    edx = MEM32(esp + 0x18);
    ecx = MEM32(ebp + eax * 4);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001579E0(); /* call 0x001579E0 */

loc_000E03DA: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

loc_000E03E2: ;
    edx = ZX16(MEM16(esi + 4));
    ecx = MEM32(esp + 0x18);
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + edx * 4);
    PUSH32(esp, 0); sub_00155FE0(); /* call 0x00155FE0 */

loc_000E03F4: ;
    POP32(esp, ebx);

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
    g_seh_ebp = ebp; sub_000E03F5(); return; /* DOA3: restored dropped fall-through to sub_000E03F5 */
}


/**
 * sub_000E03F5
 * Original: 0x000E03F5 - 0x000E0410 (27 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E03F5(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E03F5: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ecx);
    esp += 8; return; /* ret 4 */

    PUSH32(esp, 0 /* seg:cs */);
    MEM8(ebx + eax + 0x3AE000E) = MEM8(ebx + eax + 0x3AE000E) + LO8(edx);
    PUSH32(esp, 0 /* seg:cs */);
    SET_LO8(eax, LO8(eax) + LO8(ecx));
    ecx = ecx + MEM32(esi);

    g_seh_ebp = ebp; sub_000E0410(); return; /* DOA3: restored dropped fall-through to sub_000E0410 */
}


/**
 * sub_000E0410
 * Original: 0x000E0410 - 0x000E0590 (384 bytes, 124 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E0410_oldcf2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E0410: ;
    esp = esp - 0x40;
    PUSH32(esp, edi);
    edi = ecx;
    SET_LO8(eax, MEM8(edi + 4));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E057F; /* jne: not equal / not zero */

loc_000E0421: ;
    if (CMP_L(MEM16(edi + 8), 0)) goto loc_000E0446; /* jl: less (signed <) */

loc_000E0428: ;
    SET_LO8(eax, MEM8(0x4B838A));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000E0446; /* jne: not equal / not zero */

loc_000E0431: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00025610(); /* call 0x00025610 */

loc_000E0438: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00025470(); /* call 0x00025470 */

loc_000E043E: ;
    esp = esp + 8;
    if (CMP_NE(eax, 6)) goto loc_000E0452; /* jne: not equal / not zero */

loc_000E0446: ;
    eax = 1;
    POP32(esp, edi);
    esp = esp + 0x40;
    esp += 8; return; /* ret 4 */

loc_000E0452: ;
    eax = MEM32(0x4842A4);
    ecx = MEM32(0x48A48C);
    edx = MEM32(0x47E7C8);
    PUSH32(esp, ebx);
    ebx = MEM32(edi + 0xC);
    MEM32(esp + 0x18) = eax;
    eax = MEM32(0x480290);
    PUSH32(esp, ebp);
    MEM32(esp + 0x2C) = eax;
    eax = MEM32(0x4803A0);
    MEM32(esp + 0x20) = ecx;
    ecx = MEM32(0x480294);
    MEM32(esp + 0x24) = edx;
    edx = MEM32(0x480298);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x54);
    MEM32(esp + 0x40) = eax;
    /* cmp MEM32(esi + 0x50), ebx - flags set for next jcc */
    MEM32(esp + 0x34) = ecx;
    ecx = MEM32(0x4803A4);
    MEM32(esp + 0x38) = edx;
    edx = MEM32(0x4803A8);
    MEM32(esp + 0x44) = ecx;
    MEM32(esp + 0x48) = edx;
    if (CMP_EQ(MEM32(esi + 0x50), ebx)) goto loc_000E04D6; /* je: equal / zero */

loc_000E04B8: ;
    ecx = esi + 0x70;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_000E04C0: ;
    if (TEST_Z(ebx, ebx)) goto loc_000E04CB; /* je: equal / zero */

loc_000E04C4: ;
    ecx = ebx;
    PUSH32(esp, 0); sub_00155450(); /* call 0x00155450 */

loc_000E04CB: ;
    ecx = esi + 0x10;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_000E04D3: ;
    MEM32(esi + 0x50) = ebx;

loc_000E04D6: ;
    ecx = (uint32_t)(int32_t)SMEM16(edi + 8);
    eax = MEM32(esi + 0x244);
    esi = MEM32(eax + ecx * 4 + 0x14);
    edx = MEM32(esi + eax + 0x10);
    ecx = MEM32(esi + eax + 0x18);
    esi = esi + eax;
    eax = MEM32(esi + 0x14);
    MEM32(esp + 0x10) = edx;
    edx = MEM32(esi + 0x1C);
    MEM32(esp + 0x14) = eax;
    MEM32(esp + 0x18) = ecx;
    MEM32(esp + 0x54) = edx;
    ebp = esp + 0x30;
    ebx = 0x484C9A;
    /* nop */

loc_000E0510: ;
    if (CMP_EQ(MEM8(ebx), 0)) goto loc_000E0538; /* je: equal / zero */

loc_000E0515: ;
    eax = MEM32(esp + 0x54);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    ecx = esp + 0x18;
    PUSH32(esp, ecx);
    edx = esp + 0x2C;
    PUSH32(esp, ebp);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000DFD40(); /* call 0x000DFD40 */

loc_000E052B: ;
    SET_LO8(ecx, MEM8(edi + 5));
    esp = esp + 0x14;
    SET_LO8(ecx, LO8(ecx) & LO8(eax));
    MEM8(edi + 5) = LO8(ecx);
    if ((LO8(ecx) == 0)) goto loc_000E0546; /* je: equal / zero */

loc_000E0538: ;
    ebx = ebx + 0x68;
    ebp = ebp + 0x10;
    if (CMP_L(ebx, 0x484D6A)) goto loc_000E0510; /* jl: less (signed <) */

loc_000E0546: ;
    SET_LO8(eax, MEM8(edi + 5));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000E0578; /* je: equal / zero */

loc_000E054D: ;
    eax = MEM32(esp + 0x54);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    ecx = esp + 0x18;
    PUSH32(esp, ecx);
    edx = esp + 0x2C;
    PUSH32(esp, 0x3E99999A);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000DFE70(); /* call 0x000DFE70 */

loc_000E0567: ;
    SET_LO8(ecx, MEM8(edi + 5));
    esp = esp + 0x14;
    eax = (uint32_t)(-(int32_t)eax);
    SET_LO8(eax, _cf ? 0xFFFFFFFF : 0); /* sbb self (CF extend) */
    SET_LO8(eax, LO8(eax) + 1);
    SET_LO8(ecx, LO8(ecx) & LO8(eax));
    MEM8(edi + 5) = LO8(ecx);

loc_000E0578: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    MEM8(edi + 4) = 1;
    POP32(esp, ebx);

loc_000E057F: ;
    eax = ZX8(MEM8(edi + 5));
    POP32(esp, edi);
    esp = esp + 0x40;
    esp += 8; return; /* ret 4 */

}


/**
 * sub_000E16F0
 * Original: 0x000E16F0 - 0x000E1700 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E16F0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000E16F0: ;
    g_seh_ebp = ebp; sub_000E0410(); return; /* tail jmp 0x000E0410 */

    /* nop */
    /* nop */
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
 * sub_00117820
 * Original: 0x00117820 - 0x00117830 (16 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117820_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117820: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00117830
 * Original: 0x00117830 - 0x00117850 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117830_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117830: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00117850
 * Original: 0x00117850 - 0x00117860 (16 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117850_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117850: ;
    fp_push(MEMF(0x207854)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00117860
 * Original: 0x00117860 - 0x00117880 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117860_oldfpu2(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117860: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    /* FPU: fsubr dword ptr [0x20785c] */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00117880
 * Original: 0x00117880 - 0x00117890 (16 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117880_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117880: ;
    fp_push(MEMF(0x207854)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00117890
 * Original: 0x00117890 - 0x001178B0 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00117890_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00117890: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_001178B0
 * Original: 0x001178B0 - 0x001178C0 (16 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001178B0_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_001178B0: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_001178C0
 * Original: 0x001178C0 - 0x001178E0 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001178C0_oldfpu4(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_001178C0: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() += fp_top(); fp_pop(); /* fadd */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00169B30
 * Original: 0x00169B30 - 0x00169B40 (16 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00169B30(void)
{

loc_00169B30: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 4);
    eax = (uint32_t)(int32_t)SMEM16(ecx + eax * 2 + 0x42);
    esp += 4; return; /* ret */

}


/**
 * sub_00169B60
 * Original: 0x00169B60 - 0x00169B70 (16 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00169B60(void)
{

loc_00169B60: ;
    eax = MEM32(esp + 4);
    eax = (uint32_t)(int32_t)SMEM16(eax + 0x40);
    esp += 4; return; /* ret */

}


/**
 * sub_0016AA60
 * Original: 0x0016AA60 - 0x0016AA90 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016AA60(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0016AA60: ;
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_0016AA65: ;
    edx = MEM32(esp + 4);
    if (TEST_Z(edx, edx)) goto loc_0016AA7D; /* je: equal / zero */

loc_0016AA6D: ;
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    ecx = 0xC;
    edi = edx;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    MEM32(edx + 4) = eax;
    POP32(esp, edi);

loc_0016AA7D: ;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
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
 * sub_0016AA90
 * Original: 0x0016AA90 - 0x0016AAA0 (16 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016AA90(void)
{

loc_0016AA90: ;
    eax = MEM32(esp + 4);
    eax = MEM32(eax + 8);
    esp += 4; return; /* ret */

}


/**
 * sub_0016AAA0
 * Original: 0x0016AAA0 - 0x0016AAC0 (32 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016AAA0(void)
{

loc_0016AAA0: ;
    eax = MEM32(esp + 4);
    edx = MEM32(eax + 0x20);
    ecx = 0; /* xor self */
    MEM32(eax + 0xC) = ecx;
    MEM32(eax + 0x10) = edx;
    MEM32(eax + 0x14) = ecx;
    MEM32(eax + 0x18) = ecx;
    esp += 4; return; /* ret */

}


/**
 * sub_0016AAC0
 * Original: 0x0016AAC0 - 0x0016AB00 (64 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016AAC0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0016AAC0: ;
    eax = MEM32(esp + 8);
    if (CMP_NE(eax, 1)) goto loc_0016AAD1; /* jne: not equal / not zero */

loc_0016AAC9: ;
    eax = MEM32(esp + 4);
    eax = MEM32(eax + 0xC);
    esp += 4; return; /* ret */

loc_0016AAD1: ;
    /* test eax, eax - flags set for next jcc */
    ecx = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_0016AADD; /* jne: not equal / not zero */

loc_0016AAD9: ;
    eax = MEM32(ecx + 0x10);
    esp += 4; return; /* ret */

loc_0016AADD: ;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_0016AAEF; /* je: equal / zero */

loc_0016AAE4: ;
    edx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016AAEC: ;
    esp = esp + 8;

loc_0016AAEF: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_0016AB00
 * Original: 0x0016AB00 - 0x0016ABF0 (240 bytes, 97 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016AB00(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0016AB00: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_0016AB07: ;
    eax = MEM32(esp + 0x10);
    /* test eax, eax - flags set for next jcc */
    ecx = MEM32(esp + 0xC);
    if (TEST_NZ(eax, eax)) goto loc_0016AB65; /* jne: not equal / not zero */

loc_0016AB13: ;
    edx = MEM32(ecx + 0x14);
    eax = MEM32(ecx + 0x24);
    eax = eax - edx;
    edx = MEM32(ecx + 0x20);
    eax = eax + edx;
    edx = MEM32(ecx + 0x10);
    if (CMP_GE(edx, eax)) goto loc_0016AB29; /* jge: greater or equal (signed >=) */

loc_0016AB27: ;
    eax = edx;

loc_0016AB29: ;
    edx = MEM32(esp + 0x14);
    /* cmp eax, edx - flags set for next jcc */
    esi = MEM32(esp + 0x18);
    MEM32(esi + 4) = eax;
    if (CMP_GE(eax, edx)) goto loc_0016AB3A; /* jge: greater or equal (signed >=) */

loc_0016AB38: ;
    edx = eax;

loc_0016AB3A: ;
    MEM32(esi + 4) = edx;
    edi = MEM32(ecx + 0x14);
    eax = MEM32(ecx + 0x1C);
    eax = eax + edi;
    MEM32(esi) = eax;
    eax = MEM32(ecx + 0x14);
    eax = eax + edx;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)MEM32(ecx + 0x20)));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)MEM32(ecx + 0x20))); }
    eax = MEM32(ecx + 0x10);
    POP32(esp, edi);
    MEM32(ecx + 0x14) = edx;
    edx = MEM32(esi + 4);
    eax = eax - edx;
    MEM32(ecx + 0x10) = eax;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016AB65: ;
    if (CMP_NE(eax, 1)) goto loc_0016ABBC; /* jne: not equal / not zero */

loc_0016AB6A: ;
    eax = MEM32(ecx + 0x24);
    edi = MEM32(ecx + 0x18);
    edx = MEM32(ecx + 0x20);
    eax = eax - edi;
    eax = eax + edx;
    edx = MEM32(ecx + 0xC);
    if (CMP_GE(edx, eax)) goto loc_0016AB80; /* jge: greater or equal (signed >=) */

loc_0016AB7E: ;
    eax = edx;

loc_0016AB80: ;
    edx = MEM32(esp + 0x14);
    /* cmp eax, edx - flags set for next jcc */
    esi = MEM32(esp + 0x18);
    MEM32(esi + 4) = eax;
    if (CMP_GE(eax, edx)) goto loc_0016AB91; /* jge: greater or equal (signed >=) */

loc_0016AB8F: ;
    edx = eax;

loc_0016AB91: ;
    MEM32(esi + 4) = edx;
    edi = MEM32(ecx + 0x18);
    eax = MEM32(ecx + 0x1C);
    eax = eax + edi;
    MEM32(esi) = eax;
    eax = MEM32(ecx + 0x18);
    eax = eax + edx;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)MEM32(ecx + 0x20)));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)MEM32(ecx + 0x20))); }
    eax = MEM32(ecx + 0xC);
    POP32(esp, edi);
    MEM32(ecx + 0x18) = edx;
    edx = MEM32(esi + 4);
    eax = eax - edx;
    MEM32(ecx + 0xC) = eax;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016ABBC: ;
    eax = MEM32(esp + 0x18);
    MEM32(eax + 4) = 0;
    MEM32(eax) = 0;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_0016ABDF; /* je: equal / zero */

loc_0016ABD4: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016ABDC: ;
    esp = esp + 8;

loc_0016ABDF: ;
    POP32(esp, edi);
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

    /* nop */
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
 * sub_0016ABF0
 * Original: 0x0016ABF0 - 0x0016ACE0 (240 bytes, 99 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016ABF0_gen(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0016ABF0: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0x10);
    eax = MEM32(ebx + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_0016ACDB; /* jle: less or equal (signed <=) */

loc_0016AC00: ;
    if (CMP_EQ(MEM32(ebx), 0)) goto loc_0016ACDB; /* je: equal / zero */

loc_0016AC09: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_0016AC10: ;
    eax = MEM32(esp + 0x14);
    if (CMP_NE(eax, 1)) goto loc_0016AC95; /* jne: not equal / not zero */

loc_0016AC19: ;
    eax = MEM32(esp + 0x10);
    ecx = MEM32(ebx + 4);
    edx = MEM32(eax + 0xC);
    edx = edx + ecx;
    ecx = MEM32(eax + 0x24);
    MEM32(eax + 0xC) = edx;
    esi = MEM32(ebx);
    PUSH32(esp, ebp);
    ebp = MEM32(eax + 0x1C);
    edx = esi;
    edx = edx - ebp;
    if (CMP_GE(edx, ecx)) goto loc_0016AC59; /* jge: greater or equal (signed >=) */

loc_0016AC39: ;
    edi = MEM32(ebx + 4);
    ecx = ecx - edx;
    if (CMP_GE(edi, ecx)) goto loc_0016AC44; /* jge: greater or equal (signed >=) */

loc_0016AC42: ;
    ecx = edi;

loc_0016AC44: ;
    edi = MEM32(eax + 0x20);
    edi = edi + ebp;
    edi = edi + edx;
    edx = ecx;
    ecx = ecx >> 2;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    ecx = edx;
    ecx = ecx & 3;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx);
    esi += ecx; edi += ecx; ecx = 0; /* rep movsb */

loc_0016AC59: ;
    ecx = MEM32(ebx + 4);
    edi = MEM32(eax + 0x1C);
    ebp = MEM32(ebx);
    eax = MEM32(eax + 0x20);
    edx = ecx;
    edx = edx - edi;
    edx = edx + ebp;
    /* cmp edx, eax - flags set for next jcc */
    POP32(esp, ebp);
    if (CMP_LE(edx, eax)) goto loc_0016ACD3; /* jle: less or equal (signed <=) */

loc_0016AC6F: ;
    esi = edx;
    esi = esi - eax;
    if (CMP_L(ecx, esi)) goto loc_0016AC79; /* jl: less (signed <) */

loc_0016AC77: ;
    ecx = esi;

loc_0016AC79: ;
    esi = edi;
    esi = esi - ecx;
    eax = ecx;
    esi = esi + edx;
    ecx = ecx >> 2;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    ecx = eax;
    ecx = ecx & 3;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx);
    esi += ecx; edi += ecx; ecx = 0; /* rep movsb */
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016AC95: ;
    if (TEST_NZ(eax, eax)) goto loc_0016ACB0; /* jne: not equal / not zero */

loc_0016AC99: ;
    eax = MEM32(esp + 0x10);
    ecx = MEM32(ebx + 4);
    edx = MEM32(eax + 0x10);
    POP32(esp, edi);
    edx = edx + ecx;
    POP32(esp, esi);
    MEM32(eax + 0x10) = edx;
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016ACB0: ;
    ecx = MEM32(esp + 0x10);
    MEM32(ebx + 4) = 0;
    MEM32(ebx) = 0;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_0016ACD3; /* je: equal / zero */

loc_0016ACC8: ;
    edx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016ACD0: ;
    esp = esp + 8;

loc_0016ACD3: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016ACDB: ;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_0016ACE0
 * Original: 0x0016ACE0 - 0x0016ADC0 (224 bytes, 92 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016ACE0_gen(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0016ACE0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    eax = MEM32(esi + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_0016ADBE; /* jle: less or equal (signed <=) */

loc_0016ACF0: ;
    if (CMP_EQ(MEM32(esi), 0)) goto loc_0016ADBE; /* je: equal / zero */

loc_0016ACF9: ;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_0016AD00: ;
    eax = MEM32(esp + 0x14);
    /* test eax, eax - flags set for next jcc */
    ecx = MEM32(esp + 0x10);
    if (TEST_NZ(eax, eax)) goto loc_0016AD42; /* jne: not equal / not zero */

loc_0016AD0C: ;
    edi = MEM32(ecx + 0x20);
    edx = MEM32(esi + 4);
    ebx = MEM32(ecx + 0x14);
    eax = edi;
    eax = eax - edx;
    eax = eax + ebx;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    eax = MEM32(esi);
    ebx = edx;
    eax = eax - MEM32(ecx + 0x1C);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    if (CMP_NE(ebx, edx)) goto loc_0016AD7D; /* jne: not equal / not zero */

loc_0016AD2C: ;
    edx = MEM32(ecx + 0x10);
    MEM32(ecx + 0x14) = ebx;
    eax = MEM32(esi + 4);
    POP32(esp, edi);
    edx = edx + eax;
    POP32(esp, ebx);
    MEM32(ecx + 0x10) = edx;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016AD42: ;
    if (CMP_NE(eax, 1)) goto loc_0016AD97; /* jne: not equal / not zero */

loc_0016AD47: ;
    edi = MEM32(ecx + 0x20);
    edx = MEM32(esi + 4);
    ebx = MEM32(ecx + 0x18);
    eax = edi;
    eax = eax - edx;
    eax = eax + ebx;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    eax = MEM32(esi);
    ebx = edx;
    eax = eax - MEM32(ecx + 0x1C);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    if (CMP_NE(ebx, edx)) goto loc_0016AD7D; /* jne: not equal / not zero */

loc_0016AD67: ;
    eax = MEM32(ecx + 0xC);
    MEM32(ecx + 0x18) = ebx;
    edx = MEM32(esi + 4);
    POP32(esp, edi);
    eax = eax + edx;
    POP32(esp, ebx);
    MEM32(ecx + 0xC) = eax;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016AD7D: ;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_0016ADB6; /* je: equal / zero */

loc_0016AD84: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016AD8C: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016AD97: ;
    MEM32(esi + 4) = 0;
    MEM32(esi) = 0;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_0016ADB6; /* je: equal / zero */

loc_0016ADAB: ;
    edx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016ADB3: ;
    esp = esp + 8;

loc_0016ADB6: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0016ADBE: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0016ADC0
 * Original: 0x0016ADC0 - 0x0016AE50 (144 bytes, 61 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0016ADC0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0016ADC0: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_0016ADC7: ;
    eax = MEM32(esp + 0x10);
    /* test eax, eax - flags set for next jcc */
    edi = MEM32(esp + 0x14);
    if (TEST_NZ(eax, eax)) goto loc_0016ADF7; /* jne: not equal / not zero */

loc_0016ADD3: ;
    eax = MEM32(esp + 0xC);
    esi = MEM32(eax + 0x14);
    ecx = MEM32(eax + 0x24);
    edx = MEM32(eax + 0x20);
    eax = MEM32(eax + 0x10);
    ecx = ecx - esi;
    ecx = ecx + edx;
    /* cmp eax, ecx - flags set for next jcc */
    esi = eax;
    if (CMP_L(eax, ecx)) goto loc_0016ADEF; /* jl: less (signed <) */

loc_0016ADED: ;
    esi = ecx;

loc_0016ADEF: ;
    if (CMP_L(esi, edi)) goto loc_0016AE38; /* jl: less (signed <) */

loc_0016ADF3: ;
    esi = edi;
    goto loc_0016AE38;

loc_0016ADF7: ;
    if (CMP_NE(eax, 1)) goto loc_0016AE20; /* jne: not equal / not zero */

loc_0016ADFC: ;
    eax = MEM32(esp + 0xC);
    esi = MEM32(eax + 0x18);
    ecx = MEM32(eax + 0x24);
    edx = MEM32(eax + 0x20);
    eax = MEM32(eax + 0xC);
    ecx = ecx - esi;
    ecx = ecx + edx;
    /* cmp eax, ecx - flags set for next jcc */
    esi = eax;
    if (CMP_L(eax, ecx)) goto loc_0016AE18; /* jl: less (signed <) */

loc_0016AE16: ;
    esi = ecx;

loc_0016AE18: ;
    if (CMP_L(esi, edi)) goto loc_0016AE38; /* jl: less (signed <) */

loc_0016AE1C: ;
    esi = edi;
    goto loc_0016AE38;

loc_0016AE20: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + 0x28);
    esi = 0; /* xor self */
    if (TEST_Z(eax, eax)) goto loc_0016AE38; /* je: equal / zero */

loc_0016AE2D: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0016AE35: ;
    esp = esp + 8;

loc_0016AE38: ;
    edx = MEM32(esp + 0x18);
    MEM32(edx) = esi;
    PUSH32(esp, 0); sub_001728F0(); /* call 0x001728F0 */

loc_0016AE43: ;
    eax = 0; /* xor self */
    /* cmp esi, edi - flags set for next jcc */
    POP32(esp, edi);
    SET_LO8(eax, (CMP_EQ(esi, edi)) ? 1 : 0); /* sete */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00170840
 * Original: 0x00170840 - 0x00170860 (32 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170840(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170840: ;
    edx = MEM32(esp + 4);
    if (TEST_Z(edx, edx)) goto loc_00170858; /* je: equal / zero */

loc_00170848: ;
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    ecx = 9;
    edi = edx;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    MEM32(edx + 4) = eax;
    POP32(esp, edi);

loc_00170858: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00170860
 * Original: 0x00170860 - 0x00170880 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170860(void)
{

loc_00170860: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    edx = MEM32(esp + 0xC);
    MEM32(eax + 0x1C) = ecx;
    MEM32(eax + 0x20) = edx;
    esp += 4; return; /* ret */

}


/**
 * sub_00170880
 * Original: 0x00170880 - 0x001708A0 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170880(void)
{

loc_00170880: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x18);
    MEM32(eax + 0xC) = ecx;
    MEM32(eax + 0x10) = 0;
    esp += 4; return; /* ret */

}


/**
 * sub_001708A0
 * Original: 0x001708A0 - 0x00170950 (176 bytes, 69 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001708A0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001708A0: ;
    eax = MEM32(esp + 8);
    if (CMP_NE(eax, 1)) goto loc_001708B1; /* jne: not equal / not zero */

loc_001708A9: ;
    eax = MEM32(esp + 4);
    eax = MEM32(eax + 0xC);
    esp += 4; return; /* ret */

loc_001708B1: ;
    if (TEST_Z(eax, eax)) goto loc_001708CB; /* je: equal / zero */

loc_001708B5: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x1C);
    if (TEST_Z(eax, eax)) goto loc_001708CB; /* je: equal / zero */

loc_001708C0: ;
    ecx = MEM32(ecx + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_001708C8: ;
    esp = esp + 8;

loc_001708CB: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

    eax = MEM32(esp + 8);
    edx = 0; /* xor self */
    if (CMP_NE(eax, edx)) goto loc_001708ED; /* jne: not equal / not zero */

loc_001708DF: ;
    eax = MEM32(esp + 0x10);
    MEM32(eax + 4) = edx;
    MEM32(eax) = edx;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_001708ED: ;
    if (CMP_NE(eax, 1)) goto loc_00170927; /* jne: not equal / not zero */

loc_001708F2: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0xC);
    edx = MEM32(esp + 0xC);
    if (CMP_L(ecx, edx)) goto loc_00170903; /* jl: less (signed <) */

loc_00170901: ;
    ecx = edx;

loc_00170903: ;
    edx = MEM32(esp + 0x10);
    PUSH32(esp, esi);
    MEM32(edx + 4) = ecx;
    esi = MEM32(eax + 0x14);
    esi = esi + MEM32(eax + 0x10);
    MEM32(edx) = esi;
    MEM32(eax + 0x10) = MEM32(eax + 0x10) + ecx;
    ecx = MEM32(edx + 4);
    edx = MEM32(eax + 0xC);
    edx = edx - ecx;
    MEM32(eax + 0xC) = edx;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170927: ;
    eax = MEM32(esp + 0x10);
    ecx = MEM32(esp + 4);
    MEM32(eax + 4) = edx;
    MEM32(eax) = edx;
    eax = MEM32(ecx + 0x1C);
    if (CMP_EQ(eax, edx)) goto loc_00170946; /* je: equal / zero */

loc_0017093B: ;
    edx = MEM32(ecx + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170943: ;
    esp = esp + 8;

loc_00170946: ;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}


/**
 * sub_00170950
 * Original: 0x00170950 - 0x001709A0 (80 bytes, 30 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170950(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00170950: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    eax = MEM32(esi + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_0017099C; /* jle: less or equal (signed <=) */

loc_0017095C: ;
    if (CMP_EQ(MEM32(esi), 0)) goto loc_0017099C; /* je: equal / zero */

loc_00170961: ;
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_00170966: ;
    eax = MEM32(esp + 0xC);
    if (TEST_Z(eax, eax)) goto loc_00170996; /* je: equal / zero */

loc_0017096E: ;
    if (CMP_EQ(eax, 1)) goto loc_00170996; /* je: equal / zero */

loc_00170973: ;
    ecx = MEM32(esp + 8);
    MEM32(esi + 4) = 0;
    MEM32(esi) = 0;
    eax = MEM32(ecx + 0x1C);
    if (TEST_Z(eax, eax)) goto loc_00170996; /* je: equal / zero */

loc_0017098B: ;
    ecx = MEM32(ecx + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170993: ;
    esp = esp + 8;

loc_00170996: ;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_0017099C: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_001709A0
 * Original: 0x001709A0 - 0x00170A50 (176 bytes, 71 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001709A0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001709A0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    eax = MEM32(esi + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_00170A46; /* jle: less or equal (signed <=) */

loc_001709B0: ;
    if (CMP_EQ(MEM32(esi), 0)) goto loc_00170A46; /* je: equal / zero */

loc_001709B9: ;
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_001709BE: ;
    eax = MEM32(esp + 0xC);
    if (TEST_Z(eax, eax)) goto loc_00170A2A; /* je: equal / zero */

loc_001709C6: ;
    if (CMP_NE(eax, 1)) goto loc_00170A1D; /* jne: not equal / not zero */

loc_001709CB: ;
    eax = MEM32(esp + 8);
    edx = MEM32(esi + 4);
    ecx = MEM32(eax + 0x10);
    ecx = ecx - edx;
    edx = 0; /* xor self */
    /* test ecx, ecx - flags set for next jcc */
    SET_LO8(edx, (CMP_LE(ecx & ecx, 0)) ? 1 : 0); /* setle */
    PUSH32(esp, edi);
    edx--;
    ecx = ecx & edx;
    edx = MEM32(eax + 0xC);
    MEM32(eax + 0x10) = ecx;
    edi = MEM32(esi + 4);
    edx = edx + edi;
    edi = MEM32(eax + 0x18);
    if (CMP_GE(edi, edx)) goto loc_001709F6; /* jge: greater or equal (signed >=) */

loc_001709F4: ;
    edx = edi;

loc_001709F6: ;
    edi = MEM32(eax + 0x14);
    MEM32(eax + 0xC) = edx;
    edx = MEM32(esi);
    edx = edx - edi;
    /* cmp ecx, edx - flags set for next jcc */
    POP32(esp, edi);
    if (CMP_EQ(ecx, edx)) goto loc_00170A40; /* je: equal / zero */

loc_00170A05: ;
    ecx = MEM32(eax + 0x1C);
    if (TEST_Z(ecx, ecx)) goto loc_00170A40; /* je: equal / zero */

loc_00170A0C: ;
    eax = MEM32(eax + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, eax);
    { uint32_t _icall_t = ecx; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170A14: ;
    esp = esp + 8;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170A1D: ;
    MEM32(esi + 4) = 0;
    MEM32(esi) = 0;

loc_00170A2A: ;
    ecx = MEM32(esp + 8);
    eax = MEM32(ecx + 0x1C);
    if (TEST_Z(eax, eax)) goto loc_00170A40; /* je: equal / zero */

loc_00170A35: ;
    ecx = MEM32(ecx + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170A3D: ;
    esp = esp + 8;

loc_00170A40: ;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170A46: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00170A50
 * Original: 0x00170A50 - 0x00170AB0 (96 bytes, 44 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170A50(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170A50: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_00170A57: ;
    eax = MEM32(esp + 0x10);
    /* test eax, eax - flags set for next jcc */
    edi = MEM32(esp + 0x14);
    if (TEST_NZ(eax, eax)) goto loc_00170A67; /* jne: not equal / not zero */

loc_00170A63: ;
    esi = 0; /* xor self */
    goto loc_00170A93;

loc_00170A67: ;
    if (CMP_NE(eax, 1)) goto loc_00170A7B; /* jne: not equal / not zero */

loc_00170A6C: ;
    eax = MEM32(esp + 0xC);
    esi = MEM32(eax + 0xC);
    if (CMP_L(esi, edi)) goto loc_00170A93; /* jl: less (signed <) */

loc_00170A77: ;
    esi = edi;
    goto loc_00170A93;

loc_00170A7B: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + 0x1C);
    esi = 0; /* xor self */
    if (TEST_Z(eax, eax)) goto loc_00170A93; /* je: equal / zero */

loc_00170A88: ;
    ecx = MEM32(ecx + 0x20);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170A90: ;
    esp = esp + 8;

loc_00170A93: ;
    edx = MEM32(esp + 0x18);
    MEM32(edx) = esi;
    PUSH32(esp, 0); sub_001728F0(); /* call 0x001728F0 */

loc_00170A9E: ;
    eax = 0; /* xor self */
    /* cmp esi, edi - flags set for next jcc */
    POP32(esp, edi);
    SET_LO8(eax, (CMP_EQ(esi, edi)) ? 1 : 0); /* sete */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00170BB0
 * Original: 0x00170BB0 - 0x00170BD0 (32 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170BB0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170BB0: ;
    edx = MEM32(esp + 4);
    if (TEST_Z(edx, edx)) goto loc_00170BC8; /* je: equal / zero */

loc_00170BB8: ;
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    ecx = 0xC;
    edi = edx;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    MEM8(edx + 4) = LO8(eax);
    POP32(esp, edi);

loc_00170BC8: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00170BD0
 * Original: 0x00170BD0 - 0x00170BF0 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170BD0(void)
{

loc_00170BD0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    edx = MEM32(esp + 0xC);
    MEM32(eax + 0x28) = ecx;
    MEM32(eax + 0x2C) = edx;
    esp += 4; return; /* ret */

}


/**
 * sub_00170BF0
 * Original: 0x00170BF0 - 0x00170C50 (96 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170BF0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170BF0: ;
    edx = MEM32(esp + 4);
    eax = MEM32(edx + 0x10);
    PUSH32(esp, esi);
    esi = MEM32(edx + 0xC);
    PUSH32(esp, edi);
    edi = 0; /* xor self */
    ecx = 0; /* xor self */
    eax--;
    /* test eax, eax - flags set for next jcc */
    MEM32(edx + 0x14) = esi;
    if (CMP_LE(eax & eax, 0)) goto loc_00170C28; /* jle: less or equal (signed <=) */

loc_00170C08: ;
    eax = esi + 8;
    PUSH32(esp, ebx);
    /* nop */

loc_00170C10: ;
    ebx = eax + 8;
    MEM32(eax + -8) = ebx;
    MEM32(eax) = edi;
    MEM32(eax + 4) = edi;
    ebx = MEM32(edx + 0x10);
    ecx++;
    eax = eax + 0x10;
    ebx--;
    if (CMP_L(ecx, ebx)) goto loc_00170C10; /* jl: less (signed <) */

loc_00170C27: ;
    POP32(esp, ebx);

loc_00170C28: ;
    ecx = ecx << 4;
    eax = ecx + esi;
    MEM32(eax) = edi;
    MEM32(eax + 8) = edi;
    MEM32(eax + 0xC) = edi;
    eax = edx + 0x18;
    ecx = 0; /* xor self */
    MEM32(eax) = ecx;
    MEM32(eax + 4) = ecx;
    MEM32(eax + 8) = ecx;
    POP32(esp, edi);
    MEM32(eax + 0xC) = ecx;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00170C50
 * Original: 0x00170C50 - 0x00170CA0 (80 bytes, 40 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170C50(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170C50: ;
    ecx = MEM32(esp + 8);
    if (TEST_S(ecx, ecx)) goto loc_00170C7C; /* jl: less (signed <) */

loc_00170C58: ;
    if (CMP_GE(ecx, 4)) goto loc_00170C7C; /* jge: greater or equal (signed >=) */

loc_00170C5D: ;
    edx = MEM32(esp + 4);
    ecx = MEM32(edx + ecx * 4 + 0x18);
    eax = 0; /* xor self */
    if (TEST_Z(ecx, ecx)) goto loc_00170C94; /* je: equal / zero */

loc_00170C6B: ;
    goto loc_00170C70;

    /* nop */

loc_00170C70: ;
    edx = MEM32(ecx + 0xC);
    ecx = MEM32(ecx);
    eax = eax + edx;
    if (TEST_NZ(ecx, ecx)) goto loc_00170C70; /* jne: not equal / not zero */

loc_00170C7B: ;
    esp += 4; return; /* ret */

loc_00170C7C: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170C92; /* je: equal / zero */

loc_00170C87: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170C8F: ;
    esp = esp + 8;

loc_00170C92: ;
    eax = 0; /* xor self */

loc_00170C94: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00170CA0
 * Original: 0x00170CA0 - 0x00170DB0 (272 bytes, 98 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170CA0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00170CA0: ;
    esp = esp - 0x10;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x1C);
    if (TEST_S(edi, edi)) goto loc_00170D7B; /* jl: less (signed <) */

loc_00170CB0: ;
    if (CMP_GE(edi, 4)) goto loc_00170D7B; /* jge: greater or equal (signed >=) */

loc_00170CB9: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_00170CBF: ;
    eax = MEM32(esp + 0x1C);
    esi = MEM32(eax + edi * 4 + 0x18);
    if (TEST_NZ(esi, esi)) goto loc_00170CDE; /* jne: not equal / not zero */

loc_00170CCB: ;
    eax = MEM32(esp + 0x28);
    MEM32(eax) = esi;
    MEM32(eax + 4) = esi;
    POP32(esp, esi);
    POP32(esp, edi);
    esp = esp + 0x10;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170CDE: ;
    edx = MEM32(esp + 0x24);
    PUSH32(esp, ebx);
    ebx = MEM32(esi + 8);
    MEM32(esp + 0xC) = ebx;
    ecx = MEM32(esi + 0xC);
    /* cmp ecx, edx - flags set for next jcc */
    MEM32(esp + 0x10) = ecx;
    if (CMP_G(ecx, edx)) goto loc_00170D17; /* jg: greater (signed >) */

loc_00170CF5: ;
    edx = MEM32(esp + 0x2C);
    MEM32(edx) = ebx;
    MEM32(edx + 4) = ecx;
    ecx = MEM32(esi);
    MEM32(eax + edi * 4 + 0x18) = ecx;
    edx = MEM32(eax + 0x14);
    MEM32(esi) = edx;
    POP32(esp, ebx);
    MEM32(eax + 0x14) = esi;
    POP32(esp, esi);
    POP32(esp, edi);
    esp = esp + 0x10;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170D17: ;
    if (CMP_NE(MEM8(eax + 5), 1)) goto loc_00170D5F; /* jne: not equal / not zero */

loc_00170D1D: ;
    eax = esp + 0x14;
    PUSH32(esp, eax);
    ecx = esp + 0x10;
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    edx = esp + 0x18;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00170270(); /* call 0x00170270 */

loc_00170D32: ;
    ecx = MEM32(esp + 0x1C);
    eax = MEM32(esp + 0x3C);
    edx = MEM32(esp + 0x20);
    MEM32(eax) = ecx;
    MEM32(eax + 4) = edx;
    eax = MEM32(esp + 0x24);
    esp = esp + 0x10;
    MEM32(esi + 8) = eax;
    ecx = MEM32(esp + 0x18);
    POP32(esp, ebx);
    MEM32(esi + 0xC) = ecx;
    POP32(esp, esi);
    POP32(esp, edi);
    esp = esp + 0x10;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170D5F: ;
    eax = MEM32(esp + 0x2C);
    POP32(esp, ebx);
    POP32(esp, esi);
    MEM32(eax) = 0;
    MEM32(eax + 4) = 0;
    POP32(esp, edi);
    esp = esp + 0x10;
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170D7B: ;
    ecx = MEM32(esp + 0x18);
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170D91; /* je: equal / zero */

loc_00170D86: ;
    edx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170D8E: ;
    esp = esp + 8;

loc_00170D91: ;
    eax = MEM32(esp + 0x24);
    MEM32(eax) = 0;
    MEM32(eax + 4) = 0;
    POP32(esp, edi);
    esp = esp + 0x10;
    esp += 4; return; /* ret */

}


/**
 * sub_00170DB0
 * Original: 0x00170DB0 - 0x00170E90 (224 bytes, 95 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170DB0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00170DB0: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0xC);
    /* test ebx, ebx - flags set for next jcc */
    PUSH32(esp, edi);
    if (TEST_S(ebx, ebx)) goto loc_00170E6C; /* jl: less (signed <) */

loc_00170DBE: ;
    if (CMP_GE(ebx, 4)) goto loc_00170E6C; /* jge: greater or equal (signed >=) */

loc_00170DC7: ;
    edi = MEM32(esp + 0x14);
    eax = MEM32(edi + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_00170E82; /* jle: less or equal (signed <=) */

loc_00170DD6: ;
    if (CMP_EQ(MEM32(edi), 0)) goto loc_00170E82; /* je: equal / zero */

loc_00170DDF: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_00170DE5: ;
    esi = MEM32(esp + 0x10);
    eax = MEM32(esi + ebx * 4 + 0x18);
    ecx = esi + ebx * 4 + 0x18;
    edx = 0; /* xor self */
    if (TEST_Z(eax, eax)) goto loc_00170E01; /* je: equal / zero */

loc_00170DF7: ;
    ecx = eax;
    edx = eax;
    eax = MEM32(ecx);
    if (TEST_NZ(eax, eax)) goto loc_00170DF7; /* jne: not equal / not zero */

loc_00170E01: ;
    if (CMP_NE(MEM8(esi + 5), 1)) goto loc_00170E2B; /* jne: not equal / not zero */

loc_00170E07: ;
    if (TEST_Z(edx, edx)) goto loc_00170E2B; /* je: equal / zero */

loc_00170E0B: ;
    eax = MEM32(edx + 0xC);
    ebx = MEM32(edx + 8);
    PUSH32(esp, ebp);
    ebp = MEM32(edi);
    ebx = ebx + eax;
    /* cmp ebx, ebp - flags set for next jcc */
    POP32(esp, ebp);
    if (CMP_NE(ebx, ebp)) goto loc_00170E2B; /* jne: not equal / not zero */

loc_00170E1B: ;
    ecx = MEM32(edi + 4);
    POP32(esp, esi);
    ecx = ecx + eax;
    POP32(esp, edi);
    MEM32(edx + 0xC) = ecx;
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170E2B: ;
    eax = MEM32(esi + 0x14);
    if (TEST_NZ(eax, eax)) goto loc_00170E4C; /* jne: not equal / not zero */

loc_00170E32: ;
    eax = MEM32(esi + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170E64; /* je: equal / zero */

loc_00170E39: ;
    edx = MEM32(esi + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170E41: ;
    esp = esp + 8;
    POP32(esp, esi);
    POP32(esp, edi);
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170E4C: ;
    edx = MEM32(eax);
    MEM32(esi + 0x14) = edx;
    MEM32(eax) = 0;
    edx = MEM32(edi);
    MEM32(eax + 8) = edx;
    edx = MEM32(edi + 4);
    MEM32(eax + 0xC) = edx;
    MEM32(ecx) = eax;

loc_00170E64: ;
    POP32(esp, esi);
    POP32(esp, edi);
    POP32(esp, ebx);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170E6C: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170E82; /* je: equal / zero */

loc_00170E77: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170E7F: ;
    esp = esp + 8;

loc_00170E82: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_00170E90
 * Original: 0x00170E90 - 0x00170F60 (208 bytes, 80 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170E90(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00170E90: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    if (TEST_S(edi, edi)) goto loc_00170F44; /* jl: less (signed <) */

loc_00170E9E: ;
    if (CMP_GE(edi, 4)) goto loc_00170F44; /* jge: greater or equal (signed >=) */

loc_00170EA7: ;
    esi = MEM32(esp + 0x14);
    eax = MEM32(esi + 4);
    if (CMP_LE(eax & eax, 0)) goto loc_00170F5A; /* jle: less or equal (signed <=) */

loc_00170EB6: ;
    if (CMP_EQ(MEM32(esi), 0)) goto loc_00170F5A; /* je: equal / zero */

loc_00170EBF: ;
    PUSH32(esp, 0); sub_001728D0(); /* call 0x001728D0 */

loc_00170EC4: ;
    ecx = MEM32(esp + 0xC);
    /* cmp MEM8(ecx + 5), 1 - flags set for next jcc */
    eax = MEM32(ecx + edi * 4 + 0x18);
    if (CMP_NE(MEM8(ecx + 5), 1)) goto loc_00170EFD; /* jne: not equal / not zero */

loc_00170ED2: ;
    if (TEST_Z(eax, eax)) goto loc_00170EFD; /* je: equal / zero */

loc_00170ED6: ;
    edx = MEM32(esi);
    PUSH32(esp, ebx);
    ebx = MEM32(esi + 4);
    PUSH32(esp, ebp);
    ebp = MEM32(eax + 8);
    ebx = ebx + edx;
    /* cmp ebx, ebp - flags set for next jcc */
    POP32(esp, ebp);
    POP32(esp, ebx);
    if (CMP_NE(ebx, ebp)) goto loc_00170EFD; /* jne: not equal / not zero */

loc_00170EE8: ;
    MEM32(eax + 8) = edx;
    ecx = MEM32(esi + 4);
    edx = MEM32(eax + 0xC);
    edx = edx + ecx;
    POP32(esp, edi);
    MEM32(eax + 0xC) = edx;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170EFD: ;
    eax = MEM32(ecx + 0x14);
    if (TEST_NZ(eax, eax)) goto loc_00170F1D; /* jne: not equal / not zero */

loc_00170F04: ;
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170F3D; /* je: equal / zero */

loc_00170F0B: ;
    edx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170F13: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170F1D: ;
    edx = MEM32(eax);
    MEM32(ecx + 0x14) = edx;
    MEM32(eax) = 0;
    edx = MEM32(esi);
    MEM32(eax + 8) = edx;
    edx = MEM32(esi + 4);
    MEM32(eax + 0xC) = edx;
    edx = MEM32(ecx + edi * 4 + 0x18);
    MEM32(eax) = edx;
    MEM32(ecx + edi * 4 + 0x18) = eax;

loc_00170F3D: ;
    POP32(esp, edi);
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_001728F0(); return; /* tail jmp 0x001728F0 */

loc_00170F44: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170F5A; /* je: equal / zero */

loc_00170F4F: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170F57: ;
    esp = esp + 8;

loc_00170F5A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00170F60
 * Original: 0x00170F60 - 0x00170FE0 (128 bytes, 54 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00170F60(void)
{
    int _flags = 0; /* fallback flag var */

loc_00170F60: ;
    eax = MEM32(esp + 8);
    edx = MEM32(esp + 0x10);
    esp = esp - 8;
    /* test eax, eax - flags set for next jcc */
    MEM32(edx) = 0;
    if (TEST_S(eax, eax)) goto loc_00170FBC; /* jl: less (signed <) */

loc_00170F75: ;
    if (CMP_GE(eax, 4)) goto loc_00170FBC; /* jge: greater or equal (signed >=) */

loc_00170F7A: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + eax * 4 + 0x18);
    if (TEST_Z(eax, eax)) goto loc_00170FD2; /* je: equal / zero */

loc_00170F86: ;
    PUSH32(esp, esi);
    esi = MEM32(eax + 8);
    eax = MEM32(eax + 0xC);
    MEM32(edx) = eax;
    /* cmp MEM8(ecx + 5), 1 - flags set for next jcc */
    MEM32(esp + 4) = esi;
    POP32(esp, esi);
    if (CMP_NE(MEM8(ecx + 5), 1)) goto loc_00170FAB; /* jne: not equal / not zero */

loc_00170F9A: ;
    edx = MEM32(esp + 0x14);
    ecx = 0; /* xor self */
    /* cmp eax, edx - flags set for next jcc */
    SET_LO8(ecx, (CMP_GE(eax, edx)) ? 1 : 0); /* setge */
    eax = ecx;
    esp = esp + 8;
    esp += 4; return; /* ret */

loc_00170FAB: ;
    ecx = MEM32(esp + 0x14);
    edx = 0; /* xor self */
    /* cmp eax, ecx - flags set for next jcc */
    SET_LO8(edx, (CMP_EQ(eax, ecx)) ? 1 : 0); /* sete */
    eax = edx;
    esp = esp + 8;
    esp += 4; return; /* ret */

loc_00170FBC: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(ecx + 0x28);
    if (TEST_Z(eax, eax)) goto loc_00170FD2; /* je: equal / zero */

loc_00170FC7: ;
    ecx = MEM32(ecx + 0x2C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xFFFFFFFDu);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00170FCF: ;
    esp = esp + 8;

loc_00170FD2: ;
    eax = 0; /* xor self */
    esp = esp + 8;
    esp += 4; return; /* ret */

}


/**
 * sub_001713F0
 * Original: 0x001713F0 - 0x00171420 (48 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001713F0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001713F0: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171417; /* jne: not equal / not zero */

loc_001713F8: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171414; /* je: equal / zero */

loc_00171401: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171411: ;
    esp = esp + 0xC;

loc_00171414: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171417: ;
    eax = (uint32_t)(int32_t)SMEM8(eax + 1);
    esp += 4; return; /* ret */

}


/**
 * sub_00171420
 * Original: 0x00171420 - 0x00171450 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171420(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171420: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171447; /* jne: not equal / not zero */

loc_00171428: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171444; /* je: equal / zero */

loc_00171431: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216A30);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171441: ;
    esp = esp + 0xC;

loc_00171444: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171447: ;
    eax = MEM32(eax + 0xC);
    esp += 4; return; /* ret */

}


/**
 * sub_00171450
 * Original: 0x00171450 - 0x001714E0 (144 bytes, 63 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171450(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171450: ;
    ecx = MEM32(esp + 4);
    if (TEST_NZ(ecx, ecx)) goto loc_00171474; /* jne: not equal / not zero */

loc_00171458: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_001714D4; /* je: equal / zero */

loc_00171461: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ecx);
    ecx = MEM32(0xB2560C);
    PUSH32(esp, 0x216A64);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171470: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_00171474: ;
    eax = MEM32(ecx + 0xC);
    edx = eax;
    edx = edx & 0x8000001Fu;
    if (((int32_t)edx >= 0)) goto loc_00171486; /* jns: not sign (positive) */

loc_00171481: ;
    edx--;
    edx = edx | 0xFFFFFFE0u;
    edx++;

loc_00171486: ;
    if ((edx == 0)) goto loc_001714A5; /* je: equal / zero */

loc_00171488: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_001714D4; /* je: equal / zero */

loc_00171491: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216A48);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_001714A1: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_001714A5: ;
    edx = MEM32(ecx + 0x10);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    PUSH32(esp, edi);
    edi = MEM32(ecx + 0x18);
    edi = (uint32_t)((int32_t)edi * (int32_t)eax);
    eax = edx + esi + -1;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    MEM32(ecx + 0xC) = esi;
    MEM32(ecx + 0x14) = eax;
    eax = edi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    POP32(esp, edi);
    MEM32(ecx + 0x18) = eax;
    eax = MEM32(ecx + 0x20);
    eax = (uint32_t)((int32_t)eax * (int32_t)esi);
    MEM32(ecx + 0x1C) = eax;
    POP32(esp, esi);

loc_001714D4: ;
    esp += 4; return; /* ret */

}


/**
 * sub_001714E0
 * Original: 0x001714E0 - 0x00171510 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001714E0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001714E0: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171507; /* jne: not equal / not zero */

loc_001714E8: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171504; /* je: equal / zero */

loc_001714F1: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171501: ;
    esp = esp + 0xC;

loc_00171504: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171507: ;
    eax = MEM32(eax + 0x1C);
    esp += 4; return; /* ret */

}


/**
 * sub_00171CA0
 * Original: 0x00171CA0 - 0x00171D40 (160 bytes, 69 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171CA0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171CA0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00171CC8; /* jne: not equal / not zero */

loc_00171CA9: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171CEC; /* je: equal / zero */

loc_00171CB2: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216CD8);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171CC1: ;
    esp = esp + 0xC;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171CC8: ;
    eax = MEM32(esp + 0x10);
    if (TEST_Z(eax, eax)) goto loc_00171CF0; /* je: equal / zero */

loc_00171CD0: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171CEC; /* je: equal / zero */

loc_00171CD9: ;
    edx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216CB4);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171CE9: ;
    esp = esp + 0xC;

loc_00171CEC: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171CF0: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00171C20(); /* call 0x00171C20 */

loc_00171CF6: ;
    edi = eax;
    if (TEST_NZ(edi, edi)) goto loc_00171D1C; /* jne: not equal / not zero */

loc_00171CFC: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171D17; /* je: equal / zero */

loc_00171D05: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edi);
    PUSH32(esp, 0x216C84);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171D14: ;
    esp = esp + 0xC;

loc_00171D17: ;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171D1C: ;
    edx = edi + 0x1C;
    eax = esi;
    edx = edx - esi;

loc_00171D23: ;
    SET_LO8(ecx, MEM8(eax));
    MEM8(edx + eax) = LO8(ecx);
    eax++;
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_00171D23; /* jne: not equal / not zero */

loc_00171D2D: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00171C50(); /* call 0x00171C50 */

loc_00171D33: ;
    esp = esp + 4;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00171D40
 * Original: 0x00171D40 - 0x00171DD0 (144 bytes, 63 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171D40(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171D40: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00171D68; /* jne: not equal / not zero */

loc_00171D49: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171D64; /* je: equal / zero */

loc_00171D52: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216CFC);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171D61: ;
    esp = esp + 0xC;

loc_00171D64: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171D68: ;
    PUSH32(esp, 0); sub_001702F0(); /* call 0x001702F0 */

loc_00171D6D: ;
    eax = MEM32(esp + 0x10);
    if (TEST_NZ(eax, eax)) goto loc_00171D7E; /* jne: not equal / not zero */

loc_00171D75: ;
    edx = MEM32(esp + 0xC);
    MEM32(esi + 0x10) = edx;
    goto loc_00171D9D;

loc_00171D7E: ;
    if (CMP_NE(eax, 2)) goto loc_00171D8C; /* jne: not equal / not zero */

loc_00171D83: ;
    eax = MEM32(esi + 0xC);
    ecx = MEM32(esp + 0xC);
    goto loc_00171D98;

loc_00171D8C: ;
    if (CMP_NE(eax, 1)) goto loc_00171D9D; /* jne: not equal / not zero */

loc_00171D91: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(esi + 0x10);

loc_00171D98: ;
    eax = eax + ecx;
    MEM32(esi + 0x10) = eax;

loc_00171D9D: ;
    eax = MEM32(esi + 0x10);
    ecx = MEM32(esi + 0xC);
    if (CMP_L(eax, ecx)) goto loc_00171DA9; /* jl: less (signed <) */

loc_00171DA7: ;
    eax = ecx;

loc_00171DA9: ;
    edx = 0; /* xor self */
    /* test eax, eax - flags set for next jcc */
    SET_LO8(edx, (CMP_LE(eax & eax, 0)) ? 1 : 0); /* setle */
    MEM32(esi + 0x10) = eax;
    edx--;
    eax = eax & edx;
    MEM32(esi + 0x10) = eax;
    PUSH32(esp, 0); sub_00170310(); /* call 0x00170310 */

loc_00171DBE: ;
    eax = MEM32(esi + 0x10);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00171DD0
 * Original: 0x00171DD0 - 0x00171E00 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171DD0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171DD0: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171DF7; /* jne: not equal / not zero */

loc_00171DD8: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171DF4; /* je: equal / zero */

loc_00171DE1: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216D18);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171DF1: ;
    esp = esp + 0xC;

loc_00171DF4: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171DF7: ;
    eax = MEM32(eax + 0x10);
    esp += 4; return; /* ret */

}


/**
 * sub_00171E00
 * Original: 0x00171E00 - 0x00171F50 (336 bytes, 149 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171E00(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00171E00: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 8);
    if (TEST_NZ(ebx, ebx)) goto loc_00171E28; /* jne: not equal / not zero */

loc_00171E09: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171E24; /* je: equal / zero */

loc_00171E12: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, 0x216D78);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171E21: ;
    esp = esp + 0xC;

loc_00171E24: ;
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00171E28: ;
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x18);
    if (CMP_GE(edi & edi, 0)) goto loc_00171E55; /* jge: greater or equal (signed >=) */

loc_00171E33: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171E4E; /* je: equal / zero */

loc_00171E3C: ;
    edx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, 0x216D58);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171E4B: ;
    esp = esp + 0xC;

loc_00171E4E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00171E55: ;
    ebp = MEM32(esp + 0x1C);
    if (TEST_NZ(ebp, ebp)) goto loc_00171E7F; /* jne: not equal / not zero */

loc_00171E5D: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171E4E; /* je: equal / zero */

loc_00171E66: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, 0x216D34);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171E75: ;
    esp = esp + 0xC;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00171E7F: ;
    if (TEST_NZ(edi, edi)) goto loc_00171E8E; /* jne: not equal / not zero */

loc_00171E83: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    MEM8(ebx + 1) = 1;
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00171E8E: ;
    PUSH32(esp, 0); sub_001702F0(); /* call 0x001702F0 */

loc_00171E93: ;
    esi = MEM32(ebx + 0x10);
    edx = MEM32(ebx + 0xC);
    edx = edx - esi;
    /* cmp edi, edx - flags set for next jcc */
    MEM32(ebx + 0x14) = 0;
    if (CMP_GE(edi, edx)) goto loc_00171EA8; /* jge: greater or equal (signed >=) */

loc_00171EA6: ;
    edx = edi;

loc_00171EA8: ;
    eax = MEM32(ebx + 4);
    ecx = eax;
    eax = (uint32_t)((int32_t)eax * (int32_t)edx);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)esi);
    /* test eax, eax - flags set for next jcc */
    MEM32(ebx + 0x18) = edx;
    if (TEST_NZ(eax, eax)) goto loc_00171ECA; /* jne: not equal / not zero */

loc_00171EBA: ;
    MEM8(ebx + 1) = 1;
    PUSH32(esp, 0); sub_00170310(); /* call 0x00170310 */

loc_00171EC3: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00171ECA: ;
    edx = esp + 0x14;
    MEM32(ebx + 0x34) = eax;
    PUSH32(esp, edx);
    eax = ebx + 0x1C;
    PUSH32(esp, eax);
    MEM32(ebx + 0x30) = ecx;
    MEM8(ebx + 1) = 2;
    PUSH32(esp, 0); sub_00171B10(); /* call 0x00171B10 */

loc_00171EE2: ;
    esi = MEM32(ebx + 0x30);
    edx = MEM32(esp + 0x1C);
    ecx = MEM32(ebx + 0x34);
    edx = edx - esi;
    esp = esp + 8;
    if (CMP_G(ecx, edx)) goto loc_00171EF7; /* jg: greater (signed >) */

loc_00171EF5: ;
    edx = ecx;

loc_00171EF7: ;
    esi = esi + eax;
    eax = ecx;
    ecx = ecx >> 2;
    edi = ebp;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    ecx = eax;
    ecx = ecx & 3;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx);
    esi += ecx; edi += ecx; ecx = 0; /* rep movsb */
    ecx = MEM32(ebx + 0x34);
    ecx = ecx - edx;
    edi = edx + ebp;
    edx = ecx;
    ecx = ecx >> 2;
    eax = 0; /* xor self */
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    ecx = edx;
    ecx = ecx & 3;
    memset((void*)XBOX_PTR(edi), (uint8_t)eax, ecx);
    edi += ecx; ecx = 0; /* rep stosb */
    eax = MEM32(ebx + 0x18);
    ecx = MEM32(ebx + 4);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)eax);
    MEM32(ebx + 0x14) = ecx;
    MEM32(ebx + 0x10) = MEM32(ebx + 0x10) + eax;
    MEM8(ebx + 1) = 1;
    PUSH32(esp, 0); sub_00170310(); /* call 0x00170310 */

loc_00171F39: ;
    eax = MEM32(ebx + 0x18);
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_00171F50
 * Original: 0x00171F50 - 0x00171F90 (64 bytes, 30 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171F50(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00171F50: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00171F76; /* jne: not equal / not zero */

loc_00171F59: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171F74; /* je: equal / zero */

loc_00171F62: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171F71: ;
    esp = esp + 0xC;

loc_00171F74: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171F76: ;
    PUSH32(esp, 0); sub_001702F0(); /* call 0x001702F0 */

loc_00171F7B: ;
    MEM8(esi + 1) = 0;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_00170310(); return; /* tail jmp 0x00170310 */

    /* nop */
    /* nop */
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
 * sub_00171F90
 * Original: 0x00171F90 - 0x00171FC0 (48 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171F90(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171F90: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171FB7; /* jne: not equal / not zero */

loc_00171F98: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171FB4; /* je: equal / zero */

loc_00171FA1: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171FB1: ;
    esp = esp + 0xC;

loc_00171FB4: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171FB7: ;
    eax = (uint32_t)(int32_t)SMEM8(eax + 1);
    esp += 4; return; /* ret */

}


/**
 * sub_00171FC0
 * Original: 0x00171FC0 - 0x00171FF0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171FC0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171FC0: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171FE7; /* jne: not equal / not zero */

loc_00171FC8: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00171FE4; /* je: equal / zero */

loc_00171FD1: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216A30);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171FE1: ;
    esp = esp + 0xC;

loc_00171FE4: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171FE7: ;
    eax = MEM32(eax + 4);
    esp += 4; return; /* ret */

}


/**
 * sub_00171FF0
 * Original: 0x00171FF0 - 0x00172050 (96 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171FF0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171FF0: ;
    ecx = MEM32(esp + 4);
    if (TEST_NZ(ecx, ecx)) goto loc_00172014; /* jne: not equal / not zero */

loc_00171FF8: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00172044; /* je: equal / zero */

loc_00172001: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ecx);
    ecx = MEM32(0xB25624);
    PUSH32(esp, 0x216A64);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00172010: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_00172014: ;
    edx = MEM32(ecx + 8);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    eax = edx + esi + -1;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    PUSH32(esp, edi);
    edi = MEM32(ecx + 4);
    edi = (uint32_t)((int32_t)edi * (int32_t)MEM32(ecx + 0x10));
    MEM32(ecx + 4) = esi;
    MEM32(ecx + 0xC) = eax;
    eax = edi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    POP32(esp, edi);
    MEM32(ecx + 0x10) = eax;
    eax = MEM32(ecx + 0x18);
    eax = (uint32_t)((int32_t)eax * (int32_t)esi);
    MEM32(ecx + 0x14) = eax;
    POP32(esp, esi);

loc_00172044: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00172050
 * Original: 0x00172050 - 0x00172080 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172050(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172050: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00172077; /* jne: not equal / not zero */

loc_00172058: ;
    eax = MEM32(0xB25620);
    if (TEST_Z(eax, eax)) goto loc_00172074; /* je: equal / zero */

loc_00172061: ;
    ecx = MEM32(0xB25624);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00172071: ;
    esp = esp + 0xC;

loc_00172074: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00172077: ;
    eax = MEM32(eax + 0x14);
    esp += 4; return; /* ret */

}


/**
 * sub_00172080
 * Original: 0x00172080 - 0x001720B0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172080(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172080: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 8);
    if (TEST_Z(edi, edi)) goto loc_001720A8; /* je: equal / zero */

loc_00172089: ;
    PUSH32(esp, 0); sub_001702F0(); /* call 0x001702F0 */

loc_0017208E: ;
    MEM8(edi + 1) = 0;
    PUSH32(esp, 0); sub_00170310(); /* call 0x00170310 */

loc_00172097: ;
    if (CMP_NE(MEM8(edi), 1)) goto loc_001720A8; /* jne: not equal / not zero */

loc_0017209C: ;
    ecx = 0xE;
    eax = 0; /* xor self */
    MEM8(edi) = 0;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */

loc_001720A8: ;
    POP32(esp, edi);
    esp += 4; return; /* ret */

}


/**
 * sub_001720B0
 * Original: 0x001720B0 - 0x001720E0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001720B0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001720B0: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(0x216D94);
    MEM32(0xBF9DA0) = ecx;
    eax = 0xBF9AA8;
    ecx = 0; /* xor self */

loc_001720C6: ;
    MEM32(eax + -4) = ecx;
    MEM32(eax) = ecx;
    eax = eax + 0x30;
    if (CMP_L(eax, 0xBF9DA8)) goto loc_001720C6; /* jl: less (signed <) */

loc_001720D5: ;
    esp += 4; return; /* ret */

}


/**
 * sub_001720E0
 * Original: 0x001720E0 - 0x00172100 (32 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001720E0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001720E0: ;
    ecx = 0; /* xor self */
    MEM32(0xBF9DA0) = ecx;
    eax = 0xBF9AA8;
    /* nop */

loc_001720F0: ;
    MEM32(eax + -4) = ecx;
    MEM32(eax) = ecx;
    eax = eax + 0x30;
    if (CMP_L(eax, 0xBF9DA8)) goto loc_001720F0; /* jl: less (signed <) */

loc_001720FF: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00172770
 * Original: 0x00172770 - 0x001728A0 (304 bytes, 119 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172770(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00172770: ;
    esp = esp - 0xC;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    eax = MEM32(edi + 4);
    if (TEST_Z(eax, eax)) goto loc_00172893; /* je: equal / zero */

loc_00172783: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    ebp = MEM32(edi + 8);
    if (TEST_NZ(ebp, ebp)) goto loc_001727A0; /* jne: not equal / not zero */

loc_0017278C: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_00172796: ;
    esp = esp + 4;
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_001727A0: ;
    ebx = ZX16(MEM16(edi + 0x1A));
    eax = ebx;
    eax = (uint32_t)((int32_t)eax * (int32_t)MEM32(esp + 0x2C));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 7;
    eax = eax + edx;
    eax = (uint32_t)((int32_t)eax >> 3);
    if (CMP_L(eax, 0x20)) goto loc_00172891; /* jl: less (signed <) */

loc_001727BD: ;
    PUSH32(esp, esi);
    esi = MEM32(edi + 0x24);
    ecx = esi;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)eax);
    eax = ebx;
    eax = (uint32_t)((int32_t)eax * (int32_t)MEM32(esp + 0x28));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 7;
    eax = eax + edx;
    PUSH32(esp, 0);
    edx = esp + 0x18;
    PUSH32(esp, edx);
    eax = (uint32_t)((int32_t)eax >> 3);
    edx = esp + 0x20;
    eax = (uint32_t)((int32_t)eax * (int32_t)esi);
    PUSH32(esp, edx);
    edx = esp + 0x2C;
    PUSH32(esp, edx);
    edx = esp + 0x20;
    PUSH32(esp, edx);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_001C75DD(); /* call 0x001C75DD */

loc_001727F7: ;
    if (TEST_Z(eax, eax)) goto loc_00172808; /* je: equal / zero */

loc_001727FB: ;
    PUSH32(esp, 0x216F78);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_00172805: ;
    esp = esp + 4;

loc_00172808: ;
    ecx = MEM32(edi + 0x24);
    eax = 1;
    if (CMP_NE(ecx, eax)) goto loc_00172830; /* jne: not equal / not zero */

loc_00172814: ;
    ecx = MEM32(esp + 0x20);
    edi = MEM32(esp + 0x10);
    esi = MEM32(esp + 0x2C);
    eax = ecx;
    ecx = ecx >> 2;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    ecx = eax;
    ecx = ecx & 3;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx);
    esi += ecx; edi += ecx; ecx = 0; /* rep movsb */
    goto loc_00172865;

loc_00172830: ;
    ecx = MEM32(edi + 0x28);
    edx = MEM32(esp + 0x2C);
    /* cmp ecx, eax - flags set for next jcc */
    ecx = MEM32(esp + 0x20);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    if (CMP_NE(ecx, eax)) goto loc_0017284D; /* jne: not equal / not zero */

loc_00172841: ;
    eax = MEM32(esp + 0x18);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001726F0(); /* call 0x001726F0 */

loc_0017284B: ;
    goto loc_00172862;

loc_0017284D: ;
    eax = MEM32(esp + 0x2C);
    /* test eax, eax - flags set for next jcc */
    eax = MEM32(esp + 0x18);
    if (TEST_Z(eax, eax)) goto loc_0017285C; /* je: equal / zero */

loc_00172859: ;
    eax = eax + 2;

loc_0017285C: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00172730(); /* call 0x00172730 */

loc_00172862: ;
    esp = esp + 0xC;

loc_00172865: ;
    ecx = MEM32(esp + 0x14);
    edx = MEM32(esp + 0x18);
    eax = MEM32(esp + 0x20);
    PUSH32(esp, ecx);
    ecx = MEM32(esp + 0x14);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_001C6B77(); /* call 0x001C6B77 */

loc_0017287F: ;
    /* test eax, eax - flags set for next jcc */
    POP32(esp, esi);
    if (TEST_Z(eax, eax)) goto loc_00172891; /* je: equal / zero */

loc_00172884: ;
    PUSH32(esp, 0x216FE4);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017288E: ;
    esp = esp + 4;

loc_00172891: ;
    POP32(esp, ebp);
    POP32(esp, ebx);

loc_00172893: ;
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}


/**
 * sub_001728A0
 * Original: 0x001728A0 - 0x001728C0 (32 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001728A0(void)
{

loc_001728A0: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 4);
    edx = MEM32(esp + 0xC);
    MEM32(ecx + 0x2C) = eax;
    MEM32(edx) = 0;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_00176DD0
 * Original: 0x00176DD0 - 0x00176E90 (192 bytes, 83 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00176DD0_oldcf2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00176DD0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00176DEA; /* jne: not equal / not zero */

loc_00176DD9: ;
    PUSH32(esp, 0x217C1C);
    PUSH32(esp, 0); sub_00177910(); /* call 0x00177910 */

loc_00176DE3: ;
    esp = esp + 4;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00176DEA: ;
    /* cmp MEM32(0xB28B08), 1 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x30);
    if (CMP_NE(MEM32(0xB28B08), 1)) goto loc_00176E00; /* jne: not equal / not zero */

loc_00176DF7: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D470(); /* call 0x0017D470 */

loc_00176DFD: ;
    esp = esp + 4;

loc_00176E00: ;
    eax = MEM32(esi + 4);
    if (TEST_Z(eax, eax)) goto loc_00176E3E; /* je: equal / zero */

loc_00176E07: ;
    MEM32(0xC0F774) = esi;
    eax = MEM32(esi + 8);
    if (TEST_NZ(eax, eax)) goto loc_00176E2E; /* jne: not equal / not zero */

loc_00176E14: ;
    PUSH32(esp, edi);
    MEM32(esi + 0x68) = 0;
    PUSH32(esp, 0); sub_0017C900(); /* call 0x0017C900 */

loc_00176E21: ;
    esp = esp + 4;
    eax--;
    eax = (uint32_t)(-(int32_t)eax);
    eax = _cf ? 0xFFFFFFFF : 0; /* sbb self (CF extend) */
    POP32(esp, edi);
    eax = (uint32_t)(-(int32_t)eax);
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00176E2E: ;
    PUSH32(esp, esi);
    MEM32(esi + 0x68) = 1;
    PUSH32(esp, 0); sub_00176CE0(); /* call 0x00176CE0 */

loc_00176E3B: ;
    esp = esp + 4;

loc_00176E3E: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017C900(); /* call 0x0017C900 */

loc_00176E44: ;
    esp = esp + 4;
    eax--;
    eax = (uint32_t)(-(int32_t)eax);
    eax = _cf ? 0xFFFFFFFF : 0; /* sbb self (CF extend) */
    POP32(esp, edi);
    eax = (uint32_t)(-(int32_t)eax);
    POP32(esp, esi);
    esp += 4; return; /* ret */

    g_seh_ebp = ebp; sub_0017C8D0(); return; /* tail jmp 0x0017C8D0 */

loc_00176E86: ;
    esp += 4; return; /* ret */

}


/**
 * sub_00177130
 * Original: 0x00177130 - 0x00177170 (64 bytes, 28 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177130(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00177130: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001770B0(); /* call 0x001770B0 */

loc_0017713B: ;
    SET_LO8(ecx, MEM8(esi + 0x7C));
    SET_LO8(eax, 1);
    esp = esp + 4;
    if (CMP_NE(LO8(ecx), LO8(eax))) goto loc_0017714A; /* jne: not equal / not zero */

loc_00177147: ;
    MEM8(esi + 0x7D) = LO8(eax);

loc_0017714A: ;
    eax = 0; /* xor self */
    MEM8(esi + 0x7C) = LO8(eax);
    MEM32(esi + 0x84) = eax;
    eax = MEM32(esi + 0x80);
    POP32(esp, esi);
    MEM32(esp + 4) = eax;
    g_seh_ebp = ebp; sub_0016E200(); return; /* tail jmp 0x0016E200 */

    /* nop */
    /* nop */
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
 * sub_00177170
 * Original: 0x00177170 - 0x001771E0 (112 bytes, 44 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177170_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00177170: ;
    ecx = MEM32(esp + 4);
    if (TEST_NZ(ecx, ecx)) goto loc_00177192; /* jne: not equal / not zero */

loc_00177178: ;
    PUSH32(esp, 0x217D34);
    MEM32(0xC0F74C) = 0xFFFFFFF4u;
    PUSH32(esp, 0); sub_00177910(); /* call 0x00177910 */

loc_0017718C: ;
    esp = esp + 4;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00177192: ;
    eax = MEM32(ecx + 8);
    if (CMP_NE(eax, 2)) goto loc_001771D2; /* jne: not equal / not zero */

loc_0017719A: ;
    eax = MEM32(ecx + 0x30);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017D4E0(); /* call 0x0017D4E0 */

loc_001771A3: ;
    esp = esp + 4;
    if (CMP_EQ(eax, 4)) goto loc_001771CD; /* je: equal / zero */

loc_001771AB: ;
    if (CMP_EQ(eax, 6)) goto loc_001771CD; /* je: equal / zero */

loc_001771B0: ;
    if (CMP_GE(eax & eax, 0)) goto loc_001771C7; /* jge: greater or equal (signed >=) */

loc_001771B4: ;
    PUSH32(esp, 0x217D0C);
    PUSH32(esp, 0); sub_00177910(); /* call 0x00177910 */

loc_001771BE: ;
    esp = esp + 4;
    eax = 4;
    esp += 4; return; /* ret */

loc_001771C7: ;
    eax = 1;
    esp += 4; return; /* ret */

loc_001771CD: ;
    eax = 2;

loc_001771D2: ;
    esp += 4; return; /* ret */

}


/**
 * sub_001771E0
 * Original: 0x001771E0 - 0x001771F0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001771E0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001771E0: ;
    g_seh_ebp = ebp; sub_00176DD0(); return; /* tail jmp 0x00176DD0 */

    /* nop */
    /* nop */
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
 * sub_00177EE0
 * Original: 0x00177EE0 - 0x00177F00 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177EE0(void)
{

loc_00177EE0: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000601u);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00177EEF: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}


/**
 * sub_00177F00
 * Original: 0x00177F00 - 0x00177F70 (112 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177F00(void)
{
    int _flags = 0; /* fallback flag var */

loc_00177F00: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F7B0(); /* call 0x0017F7B0 */

loc_00177F0D: ;
    esp = esp + 8;
    if (CMP_EQ(eax, 1)) goto loc_00177F36; /* je: equal / zero */

loc_00177F15: ;
    eax = MEM32(esi + 0x5FD0);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_00177F22: ;
    esp = esp + 8;
    if (CMP_NE(eax, 1)) goto loc_00177F36; /* jne: not equal / not zero */

loc_00177F2A: ;
    PUSH32(esp, eax);
    PUSH32(esp, 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F790(); /* call 0x0017F790 */

loc_00177F33: ;
    esp = esp + 0xC;

loc_00177F36: ;
    PUSH32(esp, 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F770(); /* call 0x0017F770 */

loc_00177F3E: ;
    esp = esp + 8;
    if (CMP_EQ(eax, 1)) goto loc_00177F67; /* je: equal / zero */

loc_00177F46: ;
    eax = MEM32(esi + 0x5FD0);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF00(); /* call 0x0017EF00 */

loc_00177F53: ;
    esp = esp + 8;
    if (CMP_NE(eax, 1)) goto loc_00177F67; /* jne: not equal / not zero */

loc_00177F5B: ;
    PUSH32(esp, eax);
    PUSH32(esp, 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F750(); /* call 0x0017F750 */

loc_00177F64: ;
    esp = esp + 0xC;

loc_00177F67: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00177FB0
 * Original: 0x00177FB0 - 0x00177FD0 (32 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177FB0(void)
{

loc_00177FB0: ;
    ecx = MEM32(esp + 4);
    PUSH32(esp, ebx);
    ebx = MEM32(ecx + 0x5FD0);
    eax = ecx + 0x59FC;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00177F70(); /* call 0x00177F70 */

loc_00177FC7: ;
    esp = esp + 4;
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_00178260
 * Original: 0x00178260 - 0x00178280 (32 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178260(void)
{

loc_00178260: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 6);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017826C: ;
    esp = esp + 8;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_00178280
 * Original: 0x00178280 - 0x00178370 (240 bytes, 116 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178280_oldfpu2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178280: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017828D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178296; /* jne: not equal / not zero */

loc_00178294: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178296: ;
    PUSH32(esp, 0); sub_001781F0(); /* call 0x001781F0 */

loc_0017829B: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    ecx = MEM32(esp + 4);
    edx = MEM32(ecx + 0x3BAC);
    MEM32(esp + 4) = edx;
    g_seh_ebp = ebp; sub_00169B30(); return; /* tail jmp 0x00169B30 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    ecx = MEM32(esp + 4);
    edx = MEM32(ecx + 0x3BAC);
    MEM32(esp + 4) = edx;
    g_seh_ebp = ebp; sub_00169B40(); return; /* tail jmp 0x00169B40 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x3BAC);
    MEM32(esp + 4) = ecx;
    g_seh_ebp = ebp; sub_00169B60(); return; /* tail jmp 0x00169B60 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* FPU: fldln2  */
    PUSH32(esp, esi);
    fp_push((double)SMEM32(esp + 0xC)); /* fild */
    PUSH32(esp, edi);
    /* FPU: fyl2x  */
    fp_st1() -= fp_top(); fp_pop(); /* fsub */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    fp_push(MEMF(0x1ED558)); /* fld float */
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_00178343: ;
    esi = eax;
    edi = esi;
    edi = (uint32_t)((int32_t)edi * (int32_t)0x64);
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_0017834F: ;
    eax = eax - edi;
    PUSH32(esp, eax);
    eax = MEM32(esp + 0x10);
    ecx = MEM32(eax + 0x3BAC);
    PUSH32(esp, esi);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_0017EC00(); /* call 0x0017EC00 */

loc_00178363: ;
    esp = esp + 0xC;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00178720
 * Original: 0x00178720 - 0x00178740 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178720(void)
{

loc_00178720: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x3BAC);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001697E0(); /* call 0x001697E0 */

loc_00178730: ;
    esp = esp + 4;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_00178740
 * Original: 0x00178740 - 0x00178760 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178740(void)
{

loc_00178740: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000C03u);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017874F: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}


/**
 * sub_001790C0
 * Original: 0x001790C0 - 0x00179110 (80 bytes, 32 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001790C0_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_001790C0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 5);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_001790CD: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017910A; /* je: equal / zero */

loc_001790D4: ;
    PUSH32(esp, 0); sub_00179070(); /* call 0x00179070 */

loc_001790D9: ;
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F770(); /* call 0x0017F770 */

loc_001790E1: ;
    esp = esp + 8;
    if (CMP_EQ(eax, 1)) goto loc_0017910A; /* je: equal / zero */

loc_001790E9: ;
    eax = MEM32(esi + 0x53B0);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF00(); /* call 0x0017EF00 */

loc_001790F6: ;
    esp = esp + 8;
    if (CMP_NE(eax, 1)) goto loc_0017910A; /* jne: not equal / not zero */

loc_001790FE: ;
    PUSH32(esp, eax);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F750(); /* call 0x0017F750 */

loc_00179107: ;
    esp = esp + 0xC;

loc_0017910A: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017A970
 * Original: 0x0017A970 - 0x0017A9B0 (64 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017A970(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017A970: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 0x359C);
    if (TEST_Z(eax, eax)) goto loc_0017A9A6; /* je: equal / zero */

loc_0017A97F: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001805D0(); /* call 0x001805D0 */

loc_0017A985: ;
    esp = esp + 4;
    if (TEST_Z(eax, eax)) goto loc_0017A99C; /* je: equal / zero */

loc_0017A98C: ;
    PUSH32(esp, 0xFF000F0Cu);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017A997: ;
    esp = esp + 8;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017A99C: ;
    MEM32(esi + 0x359C) = 0;

loc_0017A9A6: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017A9B0
 * Original: 0x0017A9B0 - 0x0017AA20 (112 bytes, 49 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017A9B0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017A9B0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017DA20(); /* call 0x0017DA20 */

loc_0017A9BB: ;
    esp = esp + 4;
    if (CMP_NE(eax, 0xFFFFFFFFu)) goto loc_0017A9D1; /* jne: not equal / not zero */

loc_0017A9C3: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax) = 0;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017A9D1: ;
    ecx = esp + 8;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017DB50(); /* call 0x0017DB50 */

loc_0017A9DC: ;
    ecx = eax;
    esp = esp + 8;
    if (TEST_NZ(ecx, ecx)) goto loc_0017A9ED; /* jne: not equal / not zero */

loc_0017A9E5: ;
    edx = MEM32(esp + 0xC);
    MEM32(edx) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017A9ED: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    eax = edi;
    edx = esi;
    PUSH32(esp, 0); sub_00179D10(); /* call 0x00179D10 */

loc_0017A9FB: ;
    eax = MEM32(edi);
    ecx = MEM32(eax + 0x14);
    MEM32(esi + 0xCC4) = ecx;
    edx = MEM32(edi);
    eax = MEM32(edx + 0x18);
    MEM32(esi + 0xCC8) = eax;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017AA20
 * Original: 0x0017AA20 - 0x0017AA50 (48 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017AA20_gen(void)
{

loc_0017AA20: ;
    PUSH32(esp, ecx);
    eax = esp;
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C680(); /* call 0x0017C680 */

loc_0017AA2C: ;
    esi = MEM32(esp + 0x14);
    ecx = MEM32(esp + 0x10);
    PUSH32(esp, 0); sub_00179DA0(); /* call 0x00179DA0 */

loc_0017AA39: ;
    ecx = esp + 8;
    PUSH32(esp, ecx);
    esi = eax;
    PUSH32(esp, 0); sub_0017C690(); /* call 0x0017C690 */

loc_0017AA45: ;
    esp = esp + 8;
    eax = esi;
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}


/**
 * sub_0017B650
 * Original: 0x0017B650 - 0x0017B6D0 (128 bytes, 58 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B650(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017B650: ;
    PUSH32(esp, esi);
    esi = eax;
    PUSH32(esp, 5);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B65B: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017B677; /* je: equal / zero */

loc_0017B662: ;
    eax = MEM32(esi + 0x3B74);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_0017B66F: ;
    esp = esp + 8;
    if (CMP_NE(eax, 1)) goto loc_0017B67B; /* jne: not equal / not zero */

loc_0017B677: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017B67B: ;
    PUSH32(esp, 0x1C);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B683: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017B6AD; /* je: equal / zero */

loc_0017B68A: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017FD00(); /* call 0x0017FD00 */

loc_0017B690: ;
    esp = esp + 4;
    if (CMP_EQ(eax, 0xFFFFFFFFu)) goto loc_0017B6AD; /* je: equal / zero */

loc_0017B698: ;
    ecx = 0; /* xor self */
    /* test eax, eax - flags set for next jcc */
    SET_LO8(ecx, (TEST_Z(eax, eax)) ? 1 : 0); /* sete */
    eax = ecx;
    PUSH32(esp, eax);
    PUSH32(esp, 5);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001791C0(); /* call 0x001791C0 */

loc_0017B6AA: ;
    esp = esp + 0xC;

loc_0017B6AD: ;
    PUSH32(esp, edi);
    eax = esi;
    PUSH32(esp, 0); sub_0017B5E0(); /* call 0x0017B5E0 */

loc_0017B6B5: ;
    edi = eax;
    PUSH32(esp, 0); sub_0017B0A0(); /* call 0x0017B0A0 */

loc_0017B6BC: ;
    PUSH32(esp, 0); sub_00179EC0(); /* call 0x00179EC0 */

loc_0017B6C1: ;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017B6D0
 * Original: 0x0017B6D0 - 0x0017B6F0 (32 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B6D0_gen(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0017B6D0: ;
    eax = MEM32(esp + 4);
    g_seh_ebp = ebp; sub_0017B650(); return; /* tail jmp 0x0017B650 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    PUSH32(esp, 0); sub_00182B80(); /* call 0x00182B80 */

loc_0017B6E5: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_0017B9B0
 * Original: 0x0017B9B0 - 0x0017B9D0 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B9B0(void)
{

loc_0017B9B0: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000D0Bu);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017B9BF: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}


/**
 * sub_0017BA50
 * Original: 0x0017BA50 - 0x0017BA80 (48 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017BA50(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017BA50: ;
    PUSH32(esp, 0xBF0CD0);
    PUSH32(esp, 0x20);
    PUSH32(esp, 0); sub_00182C20(); /* call 0x00182C20 */

loc_0017BA5C: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017BA73; /* je: equal / zero */

loc_0017BA63: ;
    PUSH32(esp, 0xFF000D01u);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017BA6F: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

loc_0017BA73: ;
    MEM32(0xC0E524) = 0;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}


/**
 * sub_0017BEE0
 * Original: 0x0017BEE0 - 0x0017BFA0 (192 bytes, 68 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017BEE0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017BEE0: ;
    PUSH32(esp, ebx);
    eax = 0x7FFFFFFF;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ebx = 0; /* xor self */
    MEM32(esi + 0x2F98) = eax;
    MEM32(esi + 0x2F9C) = eax;
    MEM32(esi + 0x2FA4) = eax;
    MEM32(esi + 0x2FA8) = eax;
    eax = eax | 0xFFFFFFFFu;
    PUSH32(esp, edi);
    MEM32(esi + 0x2F8C) = ebx;
    MEM32(esi + 0x2F90) = ebx;
    MEM32(esi + 0x2F94) = ebx;
    MEM32(esi + 0x2FA0) = ebx;
    MEM32(esi + 0x2FAC) = eax;
    MEM32(esi + 0x2FB0) = eax;
    MEM32(esi + 0x2FB4) = eax;
    MEM32(esi + 0x2FB8) = eax;
    MEM32(esi + 0x2FBC) = ebx;
    PUSH32(esp, 0); sub_00182BF0(); /* call 0x00182BF0 */

loc_0017BF44: ;
    edi = eax;
    if (CMP_NE(edi, ebx)) goto loc_0017BF5C; /* jne: not equal / not zero */

loc_0017BF4A: ;
    PUSH32(esp, 0xFF000D08u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017BF55: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_0017BF5C: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0x17B9A0);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00182970(); /* call 0x00182970 */

loc_0017BF68: ;
    esp = esp + 0xC;
    if (TEST_Z(eax, eax)) goto loc_0017BF87; /* je: equal / zero */

loc_0017BF6F: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00182AC0(); /* call 0x00182AC0 */

loc_0017BF75: ;
    PUSH32(esp, 0xFF000D09u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017BF80: ;
    esp = esp + 0xC;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_0017BF87: ;
    MEM32(esi + 0x2F8C) = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


/**
 * sub_0017BFA0
 * Original: 0x0017BFA0 - 0x0017BFD0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017BFA0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017BFA0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 0x2F8C);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00182AC0(); /* call 0x00182AC0 */

loc_0017BFB1: ;
    esp = esp + 4;
    if (TEST_Z(eax, eax)) goto loc_0017BFC8; /* je: equal / zero */

loc_0017BFB8: ;
    PUSH32(esp, 0xFF000D0Au);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017BFC3: ;
    esp = esp + 8;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017BFC8: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017BFD0
 * Original: 0x0017BFD0 - 0x0017C0D0 (256 bytes, 94 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017BFD0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0017BFD0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 5);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017BFDD: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017BFEB; /* jne: not equal / not zero */

loc_0017BFE4: ;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017BFEB: ;
    eax = MEM32(esi + 0x2FB4);
    PUSH32(esp, ebp);
    ebp = ebp | 0xFFFFFFFFu;
    /* cmp eax, ebp - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    if (CMP_NE(eax, ebp)) goto loc_0017C009; /* jne: not equal / not zero */

loc_0017BFFE: ;
    PUSH32(esp, 0); sub_0017BC00(); /* call 0x0017BC00 */

loc_0017C003: ;
    MEM32(esi + 0x2FB4) = eax;

loc_0017C009: ;
    if (CMP_NE(MEM32(esi + 0x2FAC), ebp)) goto loc_0017C017; /* jne: not equal / not zero */

loc_0017C011: ;
    MEM32(esi + 0x2FAC) = edi;

loc_0017C017: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0x1D);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017C020: ;
    ebx = eax;
    esp = esp + 8;
    /* cmp ebx, ebp - flags set for next jcc */
    /* DOA3 item 195: RECOMP BUG #14, FIFTH SIGHTING — live ES-delivery path.
     * Original at 0x0017C025:  cmp ebx, ebp / mov ebp,[esp+0x1c] / je
     * The mov CLOBBERS ebp, an operand, before the jcc; the deferred emission
     * evaluated the compare against the RELOADED ebp, so the FIRST video PES
     * (the 2018-byte packet at file offset 8204 carrying the MPEG sequence
     * header) was never delivered -> movie started 1.6s in. Hoist both
     * operands before the clobber. */
    uint32_t _d14_c025_a = (uint32_t)ebx, _d14_c025_b = (uint32_t)ebp;
    ebp = MEM32(esp + 0x1C);
    if (CMP_EQ(_d14_c025_a, _d14_c025_b)) goto loc_0017C098; /* je: equal / zero */

loc_0017C02D: ;
    PUSH32(esp, 0x37);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017C035: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017C04B; /* je: equal / zero */

loc_0017C03C: ;
    ecx = MEM32(esi + 0x2FA4);
    eax = 0; /* xor self */
    /* cmp edi, ecx - flags set for next jcc */
    SET_LO8(eax, (CMP_L(edi, ecx)) ? 1 : 0); /* setl */
    goto loc_0017C058;

loc_0017C04B: ;
    ecx = MEM32(esi + 0x2FAC);
    eax = 0; /* xor self */
    /* cmp edi, ecx - flags set for next jcc */
    SET_LO8(eax, (CMP_EQ(edi, ecx)) ? 1 : 0); /* sete */

loc_0017C058: ;
    if (TEST_Z(eax, eax)) goto loc_0017C098; /* je: equal / zero */

loc_0017C05C: ;
    if (CMP_EQ(MEM32(esi + 0x2FB4), ebx)) goto loc_0017C098; /* je: equal / zero */

loc_0017C064: ;
    if (CMP_L(MEM32(esp + 0x20), 4)) goto loc_0017C098; /* jl: less (signed <) */

loc_0017C06B: ;
    if (CMP_NE(MEM8(ebp), 0)) goto loc_0017C098; /* jne: not equal / not zero */

loc_0017C071: ;
    SET_LO8(eax, MEM8(ebp + 1));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_0017C098; /* jne: not equal / not zero */

loc_0017C078: ;
    if (CMP_NE(MEM8(ebp + 2), 1)) goto loc_0017C098; /* jne: not equal / not zero */

loc_0017C07E: ;
    SET_LO8(eax, MEM8(ebp + 3));
    if (CMP_EQ(LO8(eax), 0xB3)) goto loc_0017C092; /* je: equal / zero */

loc_0017C085: ;
    ecx = 0; /* xor self */
    /* cmp LO8(eax), 0xB8 - flags set for next jcc */
    SET_LO8(ecx, (CMP_EQ(LO8(eax), 0xB8)) ? 1 : 0); /* sete */
    eax = ecx;
    if (TEST_Z(eax, eax)) goto loc_0017C098; /* je: equal / zero */

loc_0017C092: ;
    MEM32(esi + 0x2FB4) = ebx;

loc_0017C098: ;
    /* cmp MEM32(esi + 0x2FB4), edi - flags set for next jcc */
    MEM32(esi + 0x2FA4) = edi;
    POP32(esp, ebx);
    if (CMP_EQ(MEM32(esi + 0x2FB4), edi)) goto loc_0017C0B0; /* je: equal / zero */

loc_0017C0A7: ;
    POP32(esp, edi);
    POP32(esp, ebp);
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017C0B0: ;
    edx = MEM32(esp + 0x20);
    eax = MEM32(esi + 0x3564);
    PUSH32(esp, edx);
    PUSH32(esp, ebp);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x2C);
    PUSH32(esp, 0); sub_0017B7F0(); /* call 0x0017B7F0 */

loc_0017C0C7: ;
    esp = esp + 0x10;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_0017C290
 * Original: 0x0017C290 - 0x0017C300 (112 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C290(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017C290: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0xC);
    eax = MEM32(edi + 0x6004);
    if (TEST_Z(eax, eax)) goto loc_0017C2B9; /* je: equal / zero */

loc_0017C2A0: ;
    ecx = MEM32(edi + 0x2FA0);
    if (CMP_G(ecx & ecx, 0)) goto loc_0017C2B9; /* jg: greater (signed >) */

loc_0017C2AA: ;
    esi = eax + 0x8A0;
    if (TEST_Z(esi, esi)) goto loc_0017C2B9; /* je: equal / zero */

loc_0017C2B4: ;
    if (CMP_NE(MEM32(esi), 0)) goto loc_0017C2BE; /* jne: not equal / not zero */

loc_0017C2B9: ;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017C2BE: ;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    ebx = edi + 0x2F8C;
    PUSH32(esp, 0); sub_00180270(); /* call 0x00180270 */

loc_0017C2CB: ;
    PUSH32(esp, edi);
    ecx = esi;
    eax = ebx;
    PUSH32(esp, 0); sub_0017B9D0(); /* call 0x0017B9D0 */

loc_0017C2D5: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017C2F9; /* jne: not equal / not zero */

loc_0017C2DC: ;
    eax = MEM32(esi + 0x1C);
    MEM32(ebx + 0x20) = eax;
    ecx = MEM32(esi + 0x20);
    MEM32(ebx + 0x24) = ecx;
    edx = MEM32(esi + 0x14);
    MEM32(edi + 0xBA4) = edx;
    eax = MEM32(esi + 0x18);
    MEM32(ebx + 0xC) = eax;
    eax = 0; /* xor self */

loc_0017C2F9: ;
    POP32(esp, ebx);
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00197FA0
 * Original: 0x00197FA0 - 0x00197FA8 (8 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00197FA0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00197FA0: ;
    ecx = MEM32(ebp + -16);
    g_seh_ebp = ebp; sub_0018E862(); return; /* tail jmp 0x0018E862 */

}



/* DOA3: reached only through the function pointer stored at
 * [ebp-56] = 0xE5590 in sub_000B8xxx (recomp_0005.c:29129); binds the
 * post-movie screen's four texture stages. Seeded by hand 2026-09-10. */
/**
 * sub_000E5590
 * Original: 0x000E5590 - 0x000E55D9 (73 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000E5590(void)
{

loc_000E5590: ;
    eax = ZX8(MEM8(0x48E611));
    eax = (uint32_t)((int32_t)eax * (int32_t)0x1900);
    ecx = MEM32(eax + 0x47BC10);
    PUSH32(esp, ecx);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E55AB: ;
    edx = ZX8(MEM8(0x48E611));
    edx = (uint32_t)((int32_t)edx * (int32_t)0x1900);
    eax = MEM32(edx + 0x47B7D0);
    PUSH32(esp, eax);
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E55C6: ;
    PUSH32(esp, 0);
    PUSH32(esp, 2);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E55CF: ;
    PUSH32(esp, 0);
    PUSH32(esp, 3);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E55D8: ;
    esp += 4; return; /* ret */

}

