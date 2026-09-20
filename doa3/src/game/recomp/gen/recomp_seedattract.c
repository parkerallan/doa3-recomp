/**
 * DOA3 - Recompiled attract-flow targets reached only through a function
 * pointer table.
 *
 * The screen/demo cluster at 0x00049B10..0x0004CB80 dispatches per-frame work
 * through tables the detector cannot follow, so these eight entry points were
 * never emitted: every call through them resolved to nothing and returned 0
 * ([ICALL-CENSUS] counted 816 failed calls each in one attract cycle). The
 * code itself already exists inside the larger detected functions they sit in
 * (recomp_0001.c); what was missing is an entry point at the address the
 * table holds.
 *
 * Seeded into tools/disasm/output/functions.json as `link_seed` entries and
 * emitted with `tools.recomp -f`. See NOTES.md "Regeneration Contract".
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

/**
 * sub_0004A630
 * Original: 0x0004A630 - 0x0004A6E0 (176 bytes, 66 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A630(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_0004A630: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    eax = MEM32(edi);
    esi = eax;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CA70;
    if (CMP_LE(eax, 1)) goto loc_0004A664; /* jle: less or equal (signed <=) */

loc_0004A64C: ;
    eax = eax + 0xFFFFFFFEu;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A655: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004A65A: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A661: ;
    esp = esp + 8;

loc_0004A664: ;
    eax = (uint32_t)(int32_t)SMEM16(esi + 0x14);
    ebx = (uint32_t)(int32_t)SMEM16(esi + eax * 8 + 0x174);
    MEM32(esp + 0x10) = ebx;
    PUSH32(esp, ecx);
    fp_push((double)SMEM32(esp + 0x14)); /* fild */
    MEMF(esp + 0x14) = (float)fp_top(); /* fst */
    fp_top() = fp_top() * (double)MEMF(esi + 4); /* fmul mem */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00159900(); /* call 0x00159900 */

loc_0004A688: ;
    MEMF(esi + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x14)); /* fld float */
    fp_top() = fp_top() * (double)MEMF(esi + 4); /* fmul mem */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001598A0(); /* call 0x001598A0 */

loc_0004A69A: ;
    esp = esp + 4;
    PUSH32(esp, 0); sub_0018DB30(); /* call 0x0018DB30 */

loc_0004A6A2: ;
    /* cmp ebx, eax - flags set for next jcc */
    MEM32(esi + 0x10) = eax;
    if (CMP_G(ebx, eax)) goto loc_0004A6B4; /* jg: greater (signed >) */

loc_0004A6A9: ;
    ebx--;
    MEM32(esi + 0x10) = ebx;
    MEM32(esi + 0xC) = 0x3F800000;

loc_0004A6B4: ;
    ecx = MEM32(edi + 0x1C);
    eax = MEM32(ecx + 0x18);
    MEM32(esi + 0x1C) = eax;
    edx = MEM32(edi + 0x1C);
    edx = edx + eax;
    PUSH32(esp, edi);
    MEM32(esi + 0x1C) = edx;
    PUSH32(esp, 0); sub_0004A490(); /* call 0x0004A490 */

loc_0004A6CB: ;
    esp = esp + 4;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_0004A6E0
 * Original: 0x0004A6E0 - 0x0004A790 (176 bytes, 66 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A6E0(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_0004A6E0: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    eax = MEM32(edi);
    esi = eax;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CCC8;
    if (CMP_LE(eax, 1)) goto loc_0004A714; /* jle: less or equal (signed <=) */

loc_0004A6FC: ;
    eax = eax + 0xFFFFFFFEu;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A705: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004A70A: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004A711: ;
    esp = esp + 8;

loc_0004A714: ;
    eax = (uint32_t)(int32_t)SMEM16(esi + 0x14);
    ebx = (uint32_t)(int32_t)SMEM16(esi + eax * 8 + 0x174);
    MEM32(esp + 0x10) = ebx;
    PUSH32(esp, ecx);
    fp_push((double)SMEM32(esp + 0x14)); /* fild */
    MEMF(esp + 0x14) = (float)fp_top(); /* fst */
    fp_top() = fp_top() * (double)MEMF(esi + 4); /* fmul mem */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00159900(); /* call 0x00159900 */

loc_0004A738: ;
    MEMF(esi + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x14)); /* fld float */
    fp_top() = fp_top() * (double)MEMF(esi + 4); /* fmul mem */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001598A0(); /* call 0x001598A0 */

loc_0004A74A: ;
    esp = esp + 4;
    PUSH32(esp, 0); sub_0018DB30(); /* call 0x0018DB30 */

loc_0004A752: ;
    /* cmp ebx, eax - flags set for next jcc */
    MEM32(esi + 0x10) = eax;
    if (CMP_G(ebx, eax)) goto loc_0004A764; /* jg: greater (signed >) */

loc_0004A759: ;
    ebx--;
    MEM32(esi + 0x10) = ebx;
    MEM32(esi + 0xC) = 0x3F800000;

loc_0004A764: ;
    ecx = MEM32(edi + 0x1C);
    eax = MEM32(ecx + 0x1C);
    MEM32(esi + 0x1C) = eax;
    edx = MEM32(edi + 0x1C);
    edx = edx + eax;
    PUSH32(esp, edi);
    MEM32(esi + 0x1C) = edx;
    PUSH32(esp, 0); sub_0004A490(); /* call 0x0004A490 */

loc_0004A77B: ;
    esp = esp + 4;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_0004A930
 * Original: 0x0004A930 - 0x0004A960 (48 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A930(void)
{

loc_0004A930: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x1C);
    ecx = MEM32(ecx + 0x20);
    PUSH32(esp, esi);
    esi = MEM32(eax);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CA70;
    MEM32(esi + 0x20) = ecx;
    edx = MEM32(eax + 0x1C);
    edx = edx + ecx;
    PUSH32(esp, eax);
    MEM32(esi + 0x20) = edx;
    PUSH32(esp, 0); sub_0004A790(); /* call 0x0004A790 */

loc_0004A95A: ;
    esp = esp + 4;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_0004A960
 * Original: 0x0004A960 - 0x0004AD40 (992 bytes, 271 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004A960(void)
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

loc_0004A960: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x1C);
    ecx = MEM32(ecx + 0x24);
    PUSH32(esp, esi);
    esi = MEM32(eax);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x4B0);
    esi = esi + 0x46CCC8;
    MEM32(esi + 0x20) = ecx;
    edx = MEM32(eax + 0x1C);
    edx = edx + ecx;
    PUSH32(esp, eax);
    MEM32(esi + 0x20) = edx;
    PUSH32(esp, 0); sub_0004A790(); /* call 0x0004A790 */

loc_0004A98A: ;
    esp = esp + 4;
    POP32(esp, esi);
    esp += 4; return; /* ret */

    esi = MEM32(esp + 0x4C);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x5C0);
    ecx = esi + 0x4787D0;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_0004A9BE: ;
    ecx = esp + 0x18;
    MEM32(esp + 0x18) = 0;
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x20) = 0;
    MEM32(esp + 8) = 0;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0xBF800000u;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004A9F7: ;
    ecx = esp + 8;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004AA00: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x18); /* fsub mem */
    ecx = esp + 0x38;
    MEMF(esp + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x1C); /* fsub mem */
    MEMF(esp + 0x3C) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x20); /* fsub mem */
    MEMF(esp + 0x40) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001542D0(); /* call 0x001542D0 */

loc_0004AA2D: ;
    ecx = esi + 0x4786D0;
    MEMF(esp + 0x4C) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_0004AA3C: ;
    ecx = esp + 0x18;
    MEM32(esp + 0x18) = 0;
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x20) = 0;
    MEM32(esp + 8) = 0;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0xBF800000u;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004AA75: ;
    ecx = esp + 8;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004AA7E: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x18); /* fsub mem */
    ecx = esp + 0x28;
    MEMF(esp + 0x28) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x1C); /* fsub mem */
    MEMF(esp + 0x2C) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x20); /* fsub mem */
    MEMF(esp + 0x30) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001542D0(); /* call 0x001542D0 */

loc_0004AAAB: ;
    edx = esp + 0x28;
    MEMF(esp + 0x50) = (float)fp_top(); fp_popp(); /* fstp */
    ecx = esp + 0x38;
    PUSH32(esp, 0); sub_00154170(); /* call 0x00154170 */

loc_0004AABC: ;
    fp_push(MEMF(esp + 0x50)); /* fld float */
    fp_top() = fp_top() * (double)MEMF(esp + 0x4C); /* fmul mem */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((!X86_PF8((HI8(eax)) & (0x44)))) goto loc_0004AB29; /* jnp: not parity */

loc_0004AAD3: ;
    { double _t = fp_top(); fp_top() = g_fp_stack[(g_fp_top + 1) & 7]; g_fp_stack[(g_fp_top + 1) & 7] = _t; } /* fxch st(1) */
    fp_top() = fp_top() / g_fp_stack[(g_fp_top + 1) & 7]; /* fdiv st(1) */
    fp_top() = fp_top() + (double)MEMF(0x1ED554); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = fp_top(); fp_popp(); /* fstp st(1) */
    MEMF(edi) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (5)))) goto loc_0004AAFE; /* jp: parity */

loc_0004AAF6: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED554)); /* fld float */

loc_0004AAFE: ;
    MEMF(edi) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004AB17; /* jne: not equal / not zero */

loc_0004AB0F: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004AB17: ;
    ecx = 1;
    MEMF(edi) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_0004AB23: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x40;
    esp += 4; return; /* ret */

loc_0004AB29: ;
    fp_popp(); /* fstp st(0) = pop */
    ecx = 1;
    fp_popp(); /* fstp st(0) = pop */
    MEM32(edi) = 0;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_0004AB3D: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x40;
    esp += 4; return; /* ret */

    esi = MEM32(esp + 0x4C);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x5C0);
    ecx = esi + 0x478950;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_0004AB7E: ;
    ecx = esp + 0x18;
    MEM32(esp + 0x18) = 0;
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x20) = 0;
    MEM32(esp + 8) = 0;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0xBF800000u;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004ABB7: ;
    ecx = esp + 8;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004ABC0: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x18); /* fsub mem */
    ecx = esp + 0x38;
    MEMF(esp + 0x38) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x1C); /* fsub mem */
    MEMF(esp + 0x3C) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x20); /* fsub mem */
    MEMF(esp + 0x40) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001542D0(); /* call 0x001542D0 */

loc_0004ABED: ;
    ecx = esi + 0x478850;
    MEMF(esp + 0x4C) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_0004ABFC: ;
    ecx = esp + 0x18;
    MEM32(esp + 0x18) = 0;
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x20) = 0;
    MEM32(esp + 8) = 0;
    MEM32(esp + 0xC) = 0;
    MEM32(esp + 0x10) = 0xBF800000u;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004AC35: ;
    ecx = esp + 8;
    PUSH32(esp, 0); sub_00154950(); /* call 0x00154950 */

loc_0004AC3E: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x18); /* fsub mem */
    ecx = esp + 0x28;
    MEMF(esp + 0x28) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x1C); /* fsub mem */
    MEMF(esp + 0x2C) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0x20); /* fsub mem */
    MEMF(esp + 0x30) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_001542D0(); /* call 0x001542D0 */

loc_0004AC6B: ;
    edx = esp + 0x28;
    MEMF(esp + 0x50) = (float)fp_top(); fp_popp(); /* fstp */
    ecx = esp + 0x38;
    PUSH32(esp, 0); sub_00154170(); /* call 0x00154170 */

loc_0004AC7C: ;
    fp_push(MEMF(esp + 0x50)); /* fld float */
    fp_top() = fp_top() * (double)MEMF(esp + 0x4C); /* fmul mem */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((!X86_PF8((HI8(eax)) & (0x44)))) goto loc_0004ACE9; /* jnp: not parity */

loc_0004AC93: ;
    { double _t = fp_top(); fp_top() = g_fp_stack[(g_fp_top + 1) & 7]; g_fp_stack[(g_fp_top + 1) & 7] = _t; } /* fxch st(1) */
    fp_top() = fp_top() / g_fp_stack[(g_fp_top + 1) & 7]; /* fdiv st(1) */
    fp_top() = fp_top() + (double)MEMF(0x1ED554); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = fp_top(); fp_popp(); /* fstp st(1) */
    MEMF(edi) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED554)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (5)))) goto loc_0004ACBE; /* jp: parity */

loc_0004ACB6: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED554)); /* fld float */

loc_0004ACBE: ;
    MEMF(edi) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004ACD7; /* jne: not equal / not zero */

loc_0004ACCF: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004ACD7: ;
    ecx = 1;
    MEMF(edi) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_0004ACE3: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x40;
    esp += 4; return; /* ret */

loc_0004ACE9: ;
    fp_popp(); /* fstp st(0) = pop */
    ecx = 1;
    fp_popp(); /* fstp st(0) = pop */
    MEM32(edi) = 0;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_0004ACFD: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x40;
    esp += 4; return; /* ret */

    eax = eax + 0xFFFFFFFEu;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004AD24: ;
    esp = esp + 4;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004AD2C: ;
    MEM32(esp + 4) = 0;
    g_seh_ebp = ebp; sub_00094E50(); return; /* tail jmp 0x00094E50 */

loc_0004AD39: ;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_0004BBB0
 * Original: 0x0004BBB0 - 0x0004BFA0 (1008 bytes, 324 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004BBB0(void)
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

loc_0004BBB0: ;
    edx = MEM32(esp + 4);
    edx = (uint32_t)((int32_t)edx * (int32_t)0x188);
    esp = esp - 0x60;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    edx = edx + 0x46BAF0;
    eax = MEM32(edx);
    PUSH32(esp, edi);
    esi = edx + 0xD0;
    ecx = 0x18;
    edi = esp + 0x10;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    edi = 0; /* xor self */
    if (CMP_EQ(eax, edi)) goto loc_0004BE89; /* je: equal / zero */

loc_0004BBE4: ;
    fp_push(MEMF(0x2FD558)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(edx + 8); /* fadd mem */
    MEMF(edx + 8) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(edx + 0xC)) ? -1 : (fp_top() > (double)MEMF(edx + 0xC)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [edx + 0xc] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 1)) goto loc_0004BC08; /* jne: not equal / not zero */

loc_0004BC00: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004BC0B;

loc_0004BC08: ;
    fp_push(MEMF(edx + 0xC)); /* fld float */

loc_0004BC0B: ;
    MEMF(edx + 0xC) = (float)fp_top(); /* fst */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] / fp_top(); fp_pop(); /* fdivp st(1) */
    _fpu_cmp = (fp_top() < (double)MEMF(0x1ED554)) ? -1 : (fp_top() > (double)MEMF(0x1ED554)) ? 1 : 0; /* fcom dword ptr [0x1ed554] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004BC27; /* jne: not equal / not zero */

loc_0004BC1D: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004BC3E;

loc_0004BC27: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004BC3E; /* jne: not equal / not zero */

loc_0004BC36: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BC3E: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    eax = edx + 0x70;
    fp_top() = fp_top() - g_fp_stack[(g_fp_top + 1) & 7]; /* fsub st(1) */
    ecx = 3;
    edi = edi;

loc_0004BC50: ;
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    eax = eax + 0x20;
    ecx--;
    fp_top() = fp_top() * (double)MEMF(eax + -128); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -32); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x40) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -124); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -28); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x44) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -120); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -24); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x48) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -116); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -20); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x4C) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -112); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -16); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x50) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -108); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -12); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x54) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -104); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -8); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x58) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -100); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -4); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x5C) = (float)fp_top(); fp_popp(); /* fstp */
    if ((ecx != 0)) goto loc_0004BC50; /* jne: not equal / not zero */

loc_0004BCCE: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(edx + 8)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(edx + 0xC)) ? -1 : (fp_top() > (double)MEMF(edx + 0xC)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [edx + 0xc] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 1)) goto loc_0004BE89; /* jne: not equal / not zero */

loc_0004BCE3: ;
    eax = MEM32(edx);
    if (CMP_NE(MEM16(eax + 2), LO16(edi))) goto loc_0004BCFF; /* jne: not equal / not zero */

loc_0004BCEB: ;
    eax = MEM32(edx + 0xC);
    MEM32(edx) = edi;
    MEM32(edx + 8) = eax;
    MEM16(edx + 0x14C) = LO16(edi);
    goto loc_0004BE89;

loc_0004BCFF: ;
    fp_push(MEMF(edx + 8)); /* fld float */
    ecx = MEM32(0x4A0D94);
    fp_top() = fp_top() - (double)MEMF(edx + 0xC); /* fsub mem */
    ecx++;
    MEM32(esp + 0x74) = ecx;
    MEMF(edx + 8) = (float)fp_top(); fp_popp(); /* fstp */
    ecx = (uint32_t)(int32_t)SMEM16(eax + 2);
    fp_push((double)SMEM32(esp + 0x74)); /* fild */
    MEM32(esp + 0x74) = ecx;
    SET_LO16(ecx, MEM16(edx + 6));
    MEM16(edx + 4) = LO16(ecx);
    fp_top() = fp_top() * (double)SMEM32(esp + 0x74); /* fimul mem */
    MEMF(edx + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    SET_LO16(eax, MEM16(eax));
    /* cmp LO16(eax), 0x18 - flags set for next jcc */
    MEM16(edx + 6) = LO16(eax);
    if (CMP_L(LO16(eax), 0x18)) goto loc_0004BD3F; /* jl: less (signed <) */

loc_0004BD3B: ;
    MEM16(edx + 6) = LO16(edi);

loc_0004BD3F: ;
    if (CMP_GE(MEM16(edx + 6), LO16(edi))) goto loc_0004BD49; /* jge: greater or equal (signed >=) */

loc_0004BD45: ;
    MEM16(edx + 6) = LO16(edi);

loc_0004BD49: ;
    ecx = 2;
    eax = edx + 0x10;

loc_0004BD51: ;
    esi = MEM32(eax + 0xC0);
    MEM32(eax) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + -2;
    if (CMP_NE(ebx, esi)) goto loc_0004BD6B; /* jne: not equal / not zero */

loc_0004BD64: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BD71;

loc_0004BD6B: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BD71: ;
    esi = MEM32(eax + 0xC4);
    MEMF(eax + 0x60) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 4) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + -1;
    if (CMP_NE(ebx, esi)) goto loc_0004BD8F; /* jne: not equal / not zero */

loc_0004BD88: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BD95;

loc_0004BD8F: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BD95: ;
    esi = MEM32(eax + 0xC8);
    MEMF(eax + 0x64) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 8) = esi;
    esi = (uint32_t)(int32_t)SMEM16(edx + 6);
    if (CMP_NE(esi, ecx)) goto loc_0004BDB0; /* jne: not equal / not zero */

loc_0004BDA9: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BDB6;

loc_0004BDB0: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BDB6: ;
    esi = MEM32(eax + 0xCC);
    MEMF(eax + 0x68) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0xC) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 1;
    if (CMP_NE(ebx, esi)) goto loc_0004BDD4; /* jne: not equal / not zero */

loc_0004BDCD: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BDDA;

loc_0004BDD4: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BDDA: ;
    esi = MEM32(eax + 0xD0);
    MEMF(eax + 0x6C) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x10) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 2;
    if (CMP_NE(ebx, esi)) goto loc_0004BDF8; /* jne: not equal / not zero */

loc_0004BDF1: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BDFE;

loc_0004BDF8: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BDFE: ;
    esi = MEM32(eax + 0xD4);
    MEMF(eax + 0x70) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x14) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 3;
    if (CMP_NE(ebx, esi)) goto loc_0004BE1C; /* jne: not equal / not zero */

loc_0004BE15: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BE22;

loc_0004BE1C: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BE22: ;
    esi = MEM32(eax + 0xD8);
    MEMF(eax + 0x74) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x18) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 4;
    if (CMP_NE(ebx, esi)) goto loc_0004BE40; /* jne: not equal / not zero */

loc_0004BE39: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BE46;

loc_0004BE40: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BE46: ;
    esi = MEM32(eax + 0xDC);
    MEMF(eax + 0x78) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x1C) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 5;
    if (CMP_NE(ebx, esi)) goto loc_0004BE64; /* jne: not equal / not zero */

loc_0004BE5D: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004BE6A;

loc_0004BE64: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004BE6A: ;
    ecx = ecx + 8;
    MEMF(eax + 0x7C) = (float)fp_top(); fp_popp(); /* fstp */
    esi = ecx + -2;
    eax = eax + 0x20;
    if (CMP_L(esi, 0x18)) goto loc_0004BD51; /* jl: less (signed <) */

loc_0004BE7F: ;
    eax = MEM32(edx);
    eax = eax + 8;
    MEM32(edx + 8) = edi;
    MEM32(edx) = eax;

loc_0004BE89: ;
    SET_LO8(eax, MEM8(0x4842B1));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    ebp = MEM32(esp + 0x78);
    SET_LO8(ebx, MEM8(0x4B838A));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF07; /* je: equal / zero */

loc_0004BE9C: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF07; /* je: equal / zero */

loc_0004BEA3: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_0004BEB0; /* je: equal / zero */

loc_0004BEA7: ;
    SET_LO8(eax, MEM8(0x4B8432));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF07; /* je: equal / zero */

loc_0004BEB0: ;
    SET_LO16(eax, MEM16(edx + 0x154));
    MEM32(edx) = edi;
    MEM32(edx + 8) = edi;
    edi = 0x3F800000;
    esi = edx + 0x70;
    MEM16(edx + 6) = LO16(eax);
    MEM16(edx + 4) = LO16(eax);
    MEM32(edx + 0xC) = edi;
    MEM16(edx + 0x14C) = 0;
    eax = esi;
    ecx = 0x18;
    /* nop */

loc_0004BEE0: ;
    MEM32(eax + -96) = 0;
    MEM32(eax) = 0;
    MEM32(eax + 0x60) = 0;
    eax = eax + 4;
    ecx--;
    if ((ecx != 0)) goto loc_0004BEE0; /* jne: not equal / not zero */

loc_0004BEFA: ;
    MEM32(edx + 0xD0) = edi;
    MEM32(edx + 0x10) = edi;
    MEM32(esi) = edi;
    edi = 0; /* xor self */

loc_0004BF07: ;
    MEM16(edx + 0x130) = LO16(edi);
    ecx = 0; /* xor self */
    esi = edx + 0xD0;

loc_0004BF16: ;
    fp_push(MEMF(esp + ecx * 4 + 0x10)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(esi)) ? -1 : (fp_top() > (double)MEMF(esi)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [esi] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (0x44)))) goto loc_0004BF2E; /* jp: parity */

loc_0004BF23: ;
    ecx++;
    esi = esi + 4;
    if (CMP_L(ecx, 0x18)) goto loc_0004BF16; /* jl: less (signed <) */

loc_0004BF2C: ;
    goto loc_0004BF37;

loc_0004BF2E: ;
    MEM16(edx + 0x130) = 1;

loc_0004BF37: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_0004BF44; /* je: equal / zero */

loc_0004BF3B: ;
    SET_LO8(eax, MEM8(0x4B8432));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF6B; /* je: equal / zero */

loc_0004BF44: ;
    SET_LO8(eax, MEM8(0x48A2A0));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF54; /* je: equal / zero */

loc_0004BF4D: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004BF54: ;
    SET_LO8(eax, MEM8(0x48A2AC));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF6B; /* je: equal / zero */

loc_0004BF5D: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF6B; /* je: equal / zero */

loc_0004BF64: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004BF6B: ;
    if (CMP_LE(MEM32(ebp), 1)) goto loc_0004BF7F; /* jle: less or equal (signed <=) */

loc_0004BF71: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004BF7F; /* je: equal / zero */

loc_0004BF78: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004BF7F: ;
    /* cmp MEM32(ebp + 0x28), edi - flags set for next jcc */
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    if (CMP_EQ(MEM32(ebp + 0x28), edi)) goto loc_0004BF91; /* je: equal / zero */

loc_0004BF88: ;
    MEM16(edx + 0x130) = 1;

loc_0004BF91: ;
    esp = esp + 0x60;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_0004C040
 * Original: 0x0004C040 - 0x0004C420 (992 bytes, 320 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004C040(void)
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

loc_0004C040: ;
    edx = MEM32(esp + 4);
    edx = (uint32_t)((int32_t)edx * (int32_t)0x16C);
    esp = esp - 0x60;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    edx = edx + 0x46C1A0;
    eax = MEM32(edx);
    PUSH32(esp, edi);
    esi = edx + 0xD0;
    ecx = 0x18;
    edi = esp + 0x10;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    edi = 0; /* xor self */
    if (CMP_EQ(eax, edi)) goto loc_0004C311; /* je: equal / zero */

loc_0004C074: ;
    fp_push(MEMF(0x2FD558)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(edx + 8); /* fadd mem */
    MEMF(edx + 8) = (float)fp_top(); /* fst */
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(edx + 0xC)) ? -1 : (fp_top() > (double)MEMF(edx + 0xC)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [edx + 0xc] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 1)) goto loc_0004C098; /* jne: not equal / not zero */

loc_0004C090: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004C09B;

loc_0004C098: ;
    fp_push(MEMF(edx + 0xC)); /* fld float */

loc_0004C09B: ;
    MEMF(edx + 0xC) = (float)fp_top(); /* fst */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] / fp_top(); fp_pop(); /* fdivp st(1) */
    _fpu_cmp = (fp_top() < (double)MEMF(0x1ED554)) ? -1 : (fp_top() > (double)MEMF(0x1ED554)) ? 1 : 0; /* fcom dword ptr [0x1ed554] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004C0B7; /* jne: not equal / not zero */

loc_0004C0AD: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED554)); /* fld float */
    goto loc_0004C0CE;

loc_0004C0B7: ;
    fp_push(MEMF(0x1ED528)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 0x41)) goto loc_0004C0CE; /* jne: not equal / not zero */

loc_0004C0C6: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C0CE: ;
    fp_push(MEMF(0x1ED554)); /* fld float */
    eax = edx + 0x70;
    fp_top() = fp_top() - g_fp_stack[(g_fp_top + 1) & 7]; /* fsub st(1) */
    ecx = 3;
    edi = edi;

loc_0004C0E0: ;
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    eax = eax + 0x20;
    ecx--;
    fp_top() = fp_top() * (double)MEMF(eax + -128); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -32); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x40) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -124); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -28); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x44) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -120); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -24); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x48) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -116); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -20); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x4C) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -112); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -16); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x50) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -108); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -12); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x54) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -104); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -8); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x58) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    fp_top() = fp_top() * (double)MEMF(eax + -100); /* fmul mem */
    { double _t = g_fp_stack[(g_fp_top + 2) & 7]; fp_push(_t); } /* fld st(2) */
    fp_top() = fp_top() * (double)MEMF(eax + -4); /* fmul mem */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] + fp_top(); fp_pop(); /* faddp st(1) */
    MEMF(eax + 0x5C) = (float)fp_top(); fp_popp(); /* fstp */
    if ((ecx != 0)) goto loc_0004C0E0; /* jne: not equal / not zero */

loc_0004C15E: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(edx + 8)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(edx + 0xC)) ? -1 : (fp_top() > (double)MEMF(edx + 0xC)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [edx + 0xc] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if (TEST_NZ(HI8(eax), 1)) goto loc_0004C311; /* jne: not equal / not zero */

loc_0004C173: ;
    eax = MEM32(edx);
    if (CMP_NE(MEM16(eax + 2), LO16(edi))) goto loc_0004C188; /* jne: not equal / not zero */

loc_0004C17B: ;
    eax = MEM32(edx + 0xC);
    MEM32(edx) = edi;
    MEM32(edx + 8) = eax;
    goto loc_0004C311;

loc_0004C188: ;
    fp_push(MEMF(edx + 8)); /* fld float */
    ecx = MEM32(0x4A0D94);
    fp_top() = fp_top() - (double)MEMF(edx + 0xC); /* fsub mem */
    ecx++;
    MEM32(esp + 0x74) = ecx;
    MEMF(edx + 8) = (float)fp_top(); fp_popp(); /* fstp */
    ecx = (uint32_t)(int32_t)SMEM16(eax + 2);
    fp_push((double)SMEM32(esp + 0x74)); /* fild */
    MEM32(esp + 0x74) = ecx;
    SET_LO16(ecx, MEM16(edx + 6));
    MEM16(edx + 4) = LO16(ecx);
    fp_top() = fp_top() * (double)SMEM32(esp + 0x74); /* fimul mem */
    MEMF(edx + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    SET_LO16(eax, MEM16(eax));
    /* cmp LO16(eax), 0x18 - flags set for next jcc */
    MEM16(edx + 6) = LO16(eax);
    if (CMP_L(LO16(eax), 0x18)) goto loc_0004C1C8; /* jl: less (signed <) */

loc_0004C1C4: ;
    MEM16(edx + 6) = LO16(edi);

loc_0004C1C8: ;
    if (CMP_GE(MEM16(edx + 6), LO16(edi))) goto loc_0004C1D2; /* jge: greater or equal (signed >=) */

loc_0004C1CE: ;
    MEM16(edx + 6) = LO16(edi);

loc_0004C1D2: ;
    ecx = 2;
    eax = edx + 0x10;
    /* nop */

loc_0004C1E0: ;
    esi = MEM32(eax + 0xC0);
    MEM32(eax) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + -2;
    if (CMP_NE(ebx, esi)) goto loc_0004C1FA; /* jne: not equal / not zero */

loc_0004C1F3: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C200;

loc_0004C1FA: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C200: ;
    esi = MEM32(eax + 0xC4);
    MEMF(eax + 0x60) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 4) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + -1;
    if (CMP_NE(ebx, esi)) goto loc_0004C21E; /* jne: not equal / not zero */

loc_0004C217: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C224;

loc_0004C21E: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C224: ;
    esi = MEM32(eax + 0xC8);
    MEMF(eax + 0x64) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 8) = esi;
    esi = (uint32_t)(int32_t)SMEM16(edx + 6);
    if (CMP_NE(esi, ecx)) goto loc_0004C23F; /* jne: not equal / not zero */

loc_0004C238: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C245;

loc_0004C23F: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C245: ;
    esi = MEM32(eax + 0xCC);
    MEMF(eax + 0x68) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0xC) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 1;
    if (CMP_NE(ebx, esi)) goto loc_0004C263; /* jne: not equal / not zero */

loc_0004C25C: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C269;

loc_0004C263: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C269: ;
    esi = MEM32(eax + 0xD0);
    MEMF(eax + 0x6C) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x10) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 2;
    if (CMP_NE(ebx, esi)) goto loc_0004C287; /* jne: not equal / not zero */

loc_0004C280: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C28D;

loc_0004C287: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C28D: ;
    esi = MEM32(eax + 0xD4);
    MEMF(eax + 0x70) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x14) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 3;
    if (CMP_NE(ebx, esi)) goto loc_0004C2AB; /* jne: not equal / not zero */

loc_0004C2A4: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C2B1;

loc_0004C2AB: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C2B1: ;
    esi = MEM32(eax + 0xD8);
    MEMF(eax + 0x74) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x18) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 4;
    if (CMP_NE(ebx, esi)) goto loc_0004C2CF; /* jne: not equal / not zero */

loc_0004C2C8: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C2D5;

loc_0004C2CF: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C2D5: ;
    esi = MEM32(eax + 0xDC);
    MEMF(eax + 0x78) = (float)fp_top(); fp_popp(); /* fstp */
    MEM32(eax + 0x1C) = esi;
    ebx = (uint32_t)(int32_t)SMEM16(edx + 6);
    esi = ecx + 5;
    if (CMP_NE(ebx, esi)) goto loc_0004C2F3; /* jne: not equal / not zero */

loc_0004C2EC: ;
    esi = MEM32(edx);
    fp_push(MEMF(esi + 4)); /* fld float */
    goto loc_0004C2F9;

loc_0004C2F3: ;
    fp_push(MEMF(0x1ED528)); /* fld float */

loc_0004C2F9: ;
    ecx = ecx + 8;
    MEMF(eax + 0x7C) = (float)fp_top(); fp_popp(); /* fstp */
    esi = ecx + -2;
    eax = eax + 0x20;
    if (CMP_L(esi, 0x18)) goto loc_0004C1E0; /* jl: less (signed <) */

loc_0004C30E: ;
    MEM32(edx) = MEM32(edx) + 8;

loc_0004C311: ;
    SET_LO8(eax, MEM8(0x4842B2));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    ebp = MEM32(esp + 0x78);
    SET_LO8(ebx, MEM8(0x4B838A));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C387; /* je: equal / zero */

loc_0004C324: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C387; /* je: equal / zero */

loc_0004C32B: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_0004C338; /* je: equal / zero */

loc_0004C32F: ;
    SET_LO8(eax, MEM8(0x4B8432));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C387; /* je: equal / zero */

loc_0004C338: ;
    SET_LO16(eax, MEM16(edx + 0x138));
    MEM32(edx) = edi;
    MEM32(edx + 8) = edi;
    edi = 0x3F800000;
    esi = edx + 0x70;
    MEM16(edx + 6) = LO16(eax);
    MEM16(edx + 4) = LO16(eax);
    MEM32(edx + 0xC) = edi;
    eax = esi;
    ecx = 0x18;
    edi = edi;

loc_0004C360: ;
    MEM32(eax + -96) = 0;
    MEM32(eax) = 0;
    MEM32(eax + 0x60) = 0;
    eax = eax + 4;
    ecx--;
    if ((ecx != 0)) goto loc_0004C360; /* jne: not equal / not zero */

loc_0004C37A: ;
    MEM32(edx + 0xD0) = edi;
    MEM32(edx + 0x10) = edi;
    MEM32(esi) = edi;
    edi = 0; /* xor self */

loc_0004C387: ;
    MEM16(edx + 0x130) = LO16(edi);
    ecx = 0; /* xor self */
    esi = edx + 0xD0;

loc_0004C396: ;
    fp_push(MEMF(esp + ecx * 4 + 0x10)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(esi)) ? -1 : (fp_top() > (double)MEMF(esi)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [esi] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (0x44)))) goto loc_0004C3AE; /* jp: parity */

loc_0004C3A3: ;
    ecx++;
    esi = esi + 4;
    if (CMP_L(ecx, 0x18)) goto loc_0004C396; /* jl: less (signed <) */

loc_0004C3AC: ;
    goto loc_0004C3B7;

loc_0004C3AE: ;
    MEM16(edx + 0x130) = 1;

loc_0004C3B7: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_0004C3C4; /* je: equal / zero */

loc_0004C3BB: ;
    SET_LO8(eax, MEM8(0x4B8432));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C3EB; /* je: equal / zero */

loc_0004C3C4: ;
    SET_LO8(eax, MEM8(0x48A2A0));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C3D4; /* je: equal / zero */

loc_0004C3CD: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004C3D4: ;
    SET_LO8(eax, MEM8(0x48A2AC));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C3EB; /* je: equal / zero */

loc_0004C3DD: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C3EB; /* je: equal / zero */

loc_0004C3E4: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004C3EB: ;
    if (CMP_LE(MEM32(ebp), 1)) goto loc_0004C3FF; /* jle: less or equal (signed <=) */

loc_0004C3F1: ;
    SET_LO8(eax, MEM8(ebp + 7));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_0004C3FF; /* je: equal / zero */

loc_0004C3F8: ;
    MEM16(edx + 0x130) = LO16(edi);

loc_0004C3FF: ;
    /* cmp MEM32(ebp + 0x28), edi - flags set for next jcc */
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    if (CMP_EQ(MEM32(ebp + 0x28), edi)) goto loc_0004C411; /* je: equal / zero */

loc_0004C408: ;
    MEM16(edx + 0x130) = 1;

loc_0004C411: ;
    esp = esp + 0x60;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_0004C930
 * Original: 0x0004C930 - 0x0004CA10 (224 bytes, 71 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004C930(void)
{
    int _flags = 0; /* fallback flag var */

loc_0004C930: ;
    esp = esp - 0x34;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x40);
    eax = MEM32(edi);
    if (CMP_LE(eax, 1)) goto loc_0004C95F; /* jle: less or equal (signed <=) */

loc_0004C940: ;
    eax = eax + 0xFFFFFFFEu;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004C949: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004C94E: ;
    SET_LO16(esi, ZX8(MEM8(eax + 8)));
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004C95A: ;
    esp = esp + 8;
    goto loc_0004C96A;

loc_0004C95F: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    SET_LO16(esi, ZX8(MEM8(eax + 0x484C4B)));

loc_0004C96A: ;
    ecx = MEM32(edi);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x188);
    ecx = ecx + 0x46BAF0;
    SET_LO16(edx, MEM16(ecx + 0x154));
    SET_LO16(eax, MEM16(ecx + 4));
    if (CMP_L(LO16(edx), LO16(eax))) goto loc_0004C98D; /* jl: less (signed <) */

loc_0004C988: ;
    if (CMP_GE(LO16(eax), 0) /* DOA3: x&x promoted to int, sign lost at width */) goto loc_0004C991; /* jge: greater or equal (signed >=) */

loc_0004C98D: ;
    MEM16(ecx + 4) = LO16(edx);

loc_0004C991: ;
    if (CMP_EQ(MEM16(ecx + 0x130), 0)) goto loc_0004CA01; /* je: equal / zero */

loc_0004C99B: ;
    eax = SX16(LO16(esi));
    edx = eax;
    edx = (uint32_t)((int32_t)edx * (int32_t)0xF);
    edx = ZX8(MEM8(edx + 0x46B945));
    eax = eax << 7;
    edx = edx + eax;
    esi = MEM32(edx * 4 + 0x484360);
    edx = MEM32(edi + 0x1C);
    eax = MEM32(edx + 4);
    eax = eax + edx;
    if (TEST_Z(esi, esi)) goto loc_0004CA01; /* je: equal / zero */

loc_0004C9C2: ;
    edx = MEM32(eax + 4);
    edx = edx + eax;
    MEM32(esp + 0x1C) = edx;
    edx = MEM32(eax + 8);
    edx = edx + eax;
    MEM32(esp + 0x14) = ecx;
    ecx = esp + 0x18;
    eax = esp + 8;
    PUSH32(esp, ecx);
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x24) = edx;
    MEM32(esp + 0x2C) = esi;
    MEM32(esp + 0x38) = 0x4BFA0;
    MEM32(esp + 0x3C) = eax;
    PUSH32(esp, 0); sub_00048C30(); /* call 0x00048C30 */

loc_0004C9FE: ;
    esp = esp + 4;

loc_0004CA01: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x34;
    esp += 4; return; /* ret */

}

/**
 * sub_0004CA10
 * Original: 0x0004CA10 - 0x0004CB80 (368 bytes, 116 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0004CA10(void)
{
    int _flags = 0; /* fallback flag var */

loc_0004CA10: ;
    esp = esp - 0x34;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x40);
    eax = MEM32(edi);
    if (CMP_LE(eax, 1)) goto loc_0004CA3F; /* jle: less or equal (signed <=) */

loc_0004CA20: ;
    eax = eax + 0xFFFFFFFEu;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004CA29: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_0004CA2E: ;
    SET_LO16(esi, ZX8(MEM8(eax + 8)));
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_0004CA3A: ;
    esp = esp + 8;
    goto loc_0004CA4A;

loc_0004CA3F: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    SET_LO16(esi, ZX8(MEM8(eax + 0x484C4B)));

loc_0004CA4A: ;
    ecx = MEM32(edi);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x16C);
    ecx = ecx + 0x46C1A0;
    SET_LO16(edx, MEM16(ecx + 0x138));
    SET_LO16(eax, MEM16(ecx + 4));
    /* cmp LO16(edx), LO16(eax) - flags set for next jcc */
    MEM32(ecx + 0x134) = edi;
    if (CMP_L(LO16(edx), LO16(eax))) goto loc_0004CA73; /* jl: less (signed <) */

loc_0004CA6E: ;
    if (CMP_GE(LO16(eax), 0) /* DOA3: x&x promoted to int, sign lost at width */) goto loc_0004CA77; /* jge: greater or equal (signed >=) */

loc_0004CA73: ;
    MEM16(ecx + 4) = LO16(edx);

loc_0004CA77: ;
    if (CMP_EQ(MEM16(ecx + 0x130), 0)) goto loc_0004CAE7; /* je: equal / zero */

loc_0004CA81: ;
    eax = SX16(LO16(esi));
    edx = eax;
    edx = (uint32_t)((int32_t)edx * (int32_t)0xF);
    edx = ZX8(MEM8(edx + 0x46B945));
    eax = eax << 7;
    edx = edx + eax;
    esi = MEM32(edx * 4 + 0x484360);
    edx = MEM32(edi + 0x1C);
    eax = MEM32(edx + 0xC);
    eax = eax + edx;
    if (TEST_Z(esi, esi)) goto loc_0004CAE7; /* je: equal / zero */

loc_0004CAA8: ;
    edx = MEM32(eax + 4);
    edx = edx + eax;
    MEM32(esp + 0x1C) = edx;
    edx = MEM32(eax + 8);
    edx = edx + eax;
    MEM32(esp + 0x14) = ecx;
    ecx = esp + 0x18;
    eax = esp + 8;
    PUSH32(esp, ecx);
    MEM32(esp + 0x1C) = 0;
    MEM32(esp + 0x24) = edx;
    MEM32(esp + 0x2C) = esi;
    MEM32(esp + 0x38) = 0x4C420;
    MEM32(esp + 0x3C) = eax;
    PUSH32(esp, 0); sub_00048C30(); /* call 0x00048C30 */

loc_0004CAE4: ;
    esp = esp + 4;

loc_0004CAE7: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = esp + 0x34;
    esp += 4; return; /* ret */

    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    SET_LO16(eax, ZX8(MEM8(eax + 0x484C4B)));
    eax = SX16(LO16(eax));
    ecx = eax;
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0xF);
    edx = ZX8(MEM8(ecx + 0x46B944));
    ecx = MEM32(esi + 0x1C);
    eax = eax << 7;
    edx = edx + eax;
    eax = MEM32(ecx + 0x14);
    edx = MEM32(edx * 4 + 0x484360);
    eax = eax + ecx;
    if (TEST_Z(edx, edx)) goto loc_0004CB70; /* je: equal / zero */

loc_0004CB31: ;
    ecx = MEM32(eax + 4);
    ecx = ecx + eax;
    MEM32(esp + 0x18) = ecx;
    ecx = MEM32(eax + 8);
    ecx = ecx + eax;
    MEM32(esp + 0x24) = edx;
    eax = esp + 0x14;
    edx = esp + 4;
    PUSH32(esp, eax);
    MEM32(esp + 0x18) = 0;
    MEM32(esp + 0x20) = ecx;
    MEM32(esp + 0x34) = 0x4C4C0;
    MEM32(esp + 0x14) = esi;
    MEM32(esp + 0x38) = edx;
    PUSH32(esp, 0); sub_00048C30(); /* call 0x00048C30 */

loc_0004CB6D: ;
    esp = esp + 4;

loc_0004CB70: ;
    POP32(esp, esi);
    esp = esp + 0x34;
    esp += 4; return; /* ret */

}

/* DOA3 2026-09-20: three more function-pointer targets the detector never emitted; they were
 * reached during the attract montage (~2-3 min in) and each unresolved icall was a silent no-op.
 * sub_00105AB0 is the canyon stage's third descriptor callback (texture stages 0-3), sub_00108540 is
 * the explosion effect armed by sub_001095B0 in the cage scene, sub_000DD2E0 is a float-constant getter
 * installed into [0x868804]. Measured in the port: all three are reached only once the fixed choreography
 * plays the throws; none of them was the cause of the missing 2D overlay (that was sub_001B29A2/A7). */

/**
 * sub_00108540
 * Original: 0x00108540 - 0x0010856F (47 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00108540(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00108540: ;
    fp_push(MEMF(0x1ED6CC)); /* fld float */
    PUSH32(esp, ecx);
    fp_top() = fp_top() - (double)MEMF(0x4842A4); /* fsub mem */
    fp_top() = fp_top() * (double)MEMF(0x1F5204); /* fmul mem */
    fp_top() = fp_top() * (double)MEMF(0x1ED710); /* fmul mem */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0x3886E0);
    PUSH32(esp, 0x388720);
    PUSH32(esp, 0); sub_000D6AA0(); /* call 0x000D6AA0 */

loc_0010856B: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_000DD2E0
 * Original: 0x000DD2E0 - 0x000DD2E7 (7 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000DD2E0(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_000DD2E0: ;
    fp_push(MEMF(0x207584)); /* fld float */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_00105AB0
 * Original: 0x00105AB0 - 0x00105AF9 (73 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00105AB0(void)
{

loc_00105AB0: ;
    eax = ZX8(MEM8(0x48E611));
    eax = (uint32_t)((int32_t)eax * (int32_t)0x1900);
    ecx = MEM32(eax + 0x47B220);
    PUSH32(esp, ecx);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_00105ACB: ;
    edx = ZX8(MEM8(0x48E611));
    edx = (uint32_t)((int32_t)edx * (int32_t)0x1900);
    eax = MEM32(edx + 0x47B110);
    PUSH32(esp, eax);
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_00105AE6: ;
    PUSH32(esp, 0);
    PUSH32(esp, 2);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_00105AEF: ;
    PUSH32(esp, 0);
    PUSH32(esp, 3);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_00105AF8: ;
    esp += 4; return; /* ret */

}
