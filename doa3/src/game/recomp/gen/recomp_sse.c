/**
 * DOA3 - SSE matrix/vector routines re-emitted with the 128-bit xmm model.
 *
 * The original translation modelled xmm registers as single floats: movaps
 * moved 4 of 16 bytes and every packed op (mulps/addps/subps/shufps/
 * cmpneqps/orps) was dropped as a comment. These are the 11 functions in the
 * image that use xmm at all (XDK maths: matrix copy/multiply/inverse, the
 * D3D composite-matrix multiply, and two game vector helpers). Their old
 * bodies are kept as sub_*_oldsse in the files they came from. Generated
 * by tools.recomp -f with the lifter's SSE section (see NOTES.md).
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

/**
 * sub_00032AE1
 * Original: 0x00032AE1 - 0x00032B50 (111 bytes, 43 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032AE1(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0;
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00032AE1: ;
    /* cmp edi, 3 - flags set for next jcc */
    fp_push((double)SMEM32(esp + 4)); /* fild */
    fp_top() = fp_top() + g_fp_stack[(g_fp_top + 1) & 7]; /* fadd st(1) */
    fp_top() = fp_top() / (double)SMEM32(esp + 8); /* fidiv mem */
    MEMF(esp + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_popp(); /* fstp st(0) = pop */
    if (CMP_A(edi, 3)) goto loc_00032B33; /* ja: above (unsigned >) */

loc_00032AF6: ;
    { uint32_t _jt = MEM32(edi * 4 + 0x32B34); /* switch: 4 entries, 4 targets */
    if (_jt == 0x00032AFDu) goto loc_00032AFD;
    if (_jt == 0x00032B04u) goto loc_00032B04;
    if (_jt == 0x00032B0Fu) goto loc_00032B0F;
    if (_jt == 0x00032B26u) goto loc_00032B26;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_00032AFD: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    esp += 4; return; /* ret */

loc_00032B04: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = fp_top() * (double)MEMF(esp + 0xC); /* fmul mem */
    esp += 4; return; /* ret */

loc_00032B0F: ;
    fp_popp(); /* fstp st(0) = pop */
    fp_push(MEMF(0x1ED554)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 0xC); /* fsub mem */
    { double _t = g_fp_stack[(g_fp_top + 0) & 7]; fp_push(_t); } /* fld st(0) */
    g_fp_stack[(g_fp_top + 1) & 7] = g_fp_stack[(g_fp_top + 1) & 7] * fp_top(); fp_pop(); /* fmulp st(1) */
    fp_top() = (double)MEMF(0x1ED554) - fp_top(); /* fsubr mem */
    esp += 4; return; /* ret */

loc_00032B26: ;
    eax = MEM32(esp + 0xC);
    fp_popp(); /* fstp st(0) = pop */
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000329F0(); /* call 0x000329F0 */

loc_00032B32: ;
    POP32(esp, ecx);

loc_00032B33: ;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_00032B26
 * Original: 0x00032B26 - 0x00032B50 (42 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032B26(void)
{
    uint32_t ebp;
    xmm128_t xmm0;
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00032B26: ;
    eax = MEM32(esp + 0xC);
    fp_popp(); /* fstp st(0) = pop */
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000329F0(); /* call 0x000329F0 */

loc_00032B32: ;
    POP32(esp, ecx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


/**
 * sub_001540F0
 * Original: 0x001540F0 - 0x00154130 (64 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001540F0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3;

loc_001540F0: ;
    esp = esp - 8;
    /* test LO8(edx), 0xF - flags set for next jcc */
    eax = ecx;
    MEM32(esp + 4) = edx;
    MEM32(esp) = eax;
    if (TEST_NZ(LO8(edx), 0xF)) { g_seh_ebp = ebp; sub_00154130(); return; } /* jne: not equal / not zero */

loc_00154102: ;
    if (TEST_NZ(LO8(eax), 0xF)) { g_seh_ebp = ebp; sub_00154130(); return; } /* jne: not equal / not zero */

loc_00154106: ;
    ecx = MEM32(esp);
    eax = MEM32(esp + 4);
    xmm0 = xmm_load(eax); /* movaps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_load(eax + 0x20); /* movaps */
    xmm3 = xmm_load(eax + 0x30); /* movaps */
    xmm_store(ecx, xmm0); /* movaps */
    xmm_store(ecx + 0x10, xmm1); /* movaps */
    xmm_store(ecx + 0x20, xmm2); /* movaps */
    xmm_store(ecx + 0x30, xmm3); /* movaps */
    esp = esp + 8;
    esp += 4; return; /* ret */

}


/**
 * sub_00154510
 * Original: 0x00154510 - 0x00154570 (96 bytes, 40 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00154510(void)
{
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3;

loc_00154510: ;
    eax = 0x3A8B10;
    if (TEST_NZ(LO8(eax), 0xF)) goto loc_0015454C; /* jne: not equal / not zero */

loc_00154519: ;
    ecx = 0x90FAA0;
    if (TEST_NZ(LO8(ecx), 0xF)) goto loc_0015454C; /* jne: not equal / not zero */

loc_00154523: ;
    ecx = 0x90FAA0;
    eax = 0x3A8B10;
    xmm0 = xmm_load(eax); /* movaps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_load(eax + 0x20); /* movaps */
    xmm3 = xmm_load(eax + 0x30); /* movaps */
    xmm_store(ecx, xmm0); /* movaps */
    xmm_store(ecx + 0x10, xmm1); /* movaps */
    xmm_store(ecx + 0x20, xmm2); /* movaps */
    xmm_store(ecx + 0x30, xmm3); /* movaps */
    esp += 4; return; /* ret */

loc_0015454C: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    ecx = 0x10;
    esi = 0x3A8B10;
    edi = 0x90FAA0;
    memcpy((void*)XBOX_PTR(edi), (void*)XBOX_PTR(esi), ecx * 4);
    esi += ecx * 4; edi += ecx * 4; ecx = 0; /* rep movsd */
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_00154570
 * Original: 0x00154570 - 0x001545AC (60 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00154570(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3;

loc_00154570: ;
    PUSH32(esp, ebp);
    ebp = esp;
    eax = MEM32(ebp + 8);
    if (TEST_NZ(LO8(eax), 0xF)) { g_seh_ebp = ebp; sub_001545AC(); return; } /* jne: not equal / not zero */

loc_0015457A: ;
    ecx = 0x90FAA0;
    if (TEST_NZ(LO8(ecx), 0xF)) { g_seh_ebp = ebp; sub_001545AC(); return; } /* jne: not equal / not zero */

loc_00154584: ;
    ecx = 0x90FAA0;
    eax = MEM32(ebp + 8);
    xmm0 = xmm_load(eax); /* movaps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_load(eax + 0x20); /* movaps */
    xmm3 = xmm_load(eax + 0x30); /* movaps */
    xmm_store(ecx, xmm0); /* movaps */
    xmm_store(ecx + 0x10, xmm1); /* movaps */
    xmm_store(ecx + 0x20, xmm2); /* movaps */
    xmm_store(ecx + 0x30, xmm3); /* movaps */
    POP32(esp, ebp);
    esp += 4; return; /* ret */

}


/**
 * sub_001545C0
 * Original: 0x001545C0 - 0x001545FB (59 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001545C0(void)
{
    int _rccf = 0; /* DOA3: deferred condition evaluated at the compare */
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3;

loc_001545C0: ;
    PUSH32(esp, ebp);
    ebp = esp;
    eax = 0x90FAA0;
    /* test LO8(eax), 0xF - flags set for next jcc */
    _rccf = (TEST_NZ(LO8(eax), 0xF));  /* DOA3: x86 latched these flags at the compare above and the branch below reads them, but an operand is overwritten in between -- evaluate the condition where the guest does. */
    eax = MEM32(ebp + 8);
    if (_rccf) { g_seh_ebp = ebp; sub_001545FB(); return; } /* jne: not equal / not zero */

loc_001545CF: ;
    if (TEST_NZ(LO8(eax), 0xF)) { g_seh_ebp = ebp; sub_001545FB(); return; } /* jne: not equal / not zero */

loc_001545D3: ;
    ecx = MEM32(ebp + 8);
    eax = 0x90FAA0;
    xmm0 = xmm_load(eax); /* movaps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_load(eax + 0x20); /* movaps */
    xmm3 = xmm_load(eax + 0x30); /* movaps */
    xmm_store(ecx, xmm0); /* movaps */
    xmm_store(ecx + 0x10, xmm1); /* movaps */
    xmm_store(ecx + 0x20, xmm2); /* movaps */
    xmm_store(ecx + 0x30, xmm3); /* movaps */
    POP32(esp, ebp);
    esp += 4; return; /* ret */

}


/**
 * sub_00154A00
 * Original: 0x00154A00 - 0x00154A49 (73 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00154A00(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00154A00: ;
    esp = esp - 0x40;
    eax = ecx;
    /* test LO8(eax), 0xF - flags set for next jcc */
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    MEM32(esp + 0x18) = eax;
    MEM32(esp + 0x20) = 0x90F980;
    if (TEST_NZ(LO8(eax), 0xF)) { g_seh_ebp = ebp; sub_00154A49(); return; } /* jne: not equal / not zero */

loc_00154A17: ;
    ecx = 0x90F980;
    if (TEST_NZ(LO8(ecx), 0xF)) { g_seh_ebp = ebp; sub_00154A49(); return; } /* jne: not equal / not zero */

loc_00154A21: ;
    ecx = MEM32(esp + 0x20);
    eax = MEM32(esp + 0x18);
    xmm0 = xmm_load(eax); /* movaps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_load(eax + 0x20); /* movaps */
    xmm3 = xmm_load(eax + 0x30); /* movaps */
    xmm_store(ecx, xmm0); /* movaps */
    xmm_store(ecx + 0x10, xmm1); /* movaps */
    xmm_store(ecx + 0x20, xmm2); /* movaps */
    xmm_store(ecx + 0x30, xmm3); /* movaps */
    g_seh_ebp = ebp; sub_00154A57(); return; /* tail jmp 0x00154A57 */

}


/**
 * sub_00154F70
 * Original: 0x00154F70 - 0x001552FB (907 bytes, 235 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00154F70(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    xmm128_t xmm0, xmm1, xmm2, xmm3, xmm4, xmm5, xmm6, xmm7;

loc_00154F70: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp & 0xFFFFFFF0u;
    esp = esp - 0xF0;
    MEM32(esp + 0xC) = ecx;
    MEM32(esp + 0x2C) = ecx;
    eax = MEM32(esp + 0x2C);
    xmm1 = xmm_load(eax); /* movaps */
    xmm0 = xmm_zero(); /* xorps self */
    xmm3 = xmm_load(eax + 0x10); /* movaps */
    xmm2 = xmm_zero(); /* xorps self */
    xmm5 = xmm_load(eax + 0x20); /* movaps */
    xmm0 = xmm_cmpneqps(xmm0, xmm1); /* cmpneqps */
    xmm4 = xmm_zero(); /* xorps self */
    xmm2 = xmm_cmpneqps(xmm2, xmm3); /* cmpneqps */
    xmm0 = xmm_orps(xmm0, xmm2); /* orps */
    xmm4 = xmm_cmpneqps(xmm4, xmm5); /* cmpneqps */
    eax = esp + 0x10;
    xmm0 = xmm_orps(xmm0, xmm4); /* orps */
    xmm_store(eax, xmm0); /* movaps */
    eax = MEM32(esp + 0x10);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001552FB(); return; } /* jne: not equal / not zero */

loc_00154FC1: ;
    eax = MEM32(esp + 0x14);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001552FB(); return; } /* jne: not equal / not zero */

loc_00154FCD: ;
    eax = MEM32(esp + 0x18);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001552FB(); return; } /* jne: not equal / not zero */

loc_00154FD9: ;
    eax = MEM32(esp + 0x1C);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001552FB(); return; } /* jne: not equal / not zero */

loc_00154FE5: ;
    xmm2 = xmm_load(esp + 0x30); /* movaps */
    xmm2 = xmm_load_lo(xmm2, ecx); /* movlps */
    xmm2 = xmm_load_hi(xmm2, ecx + 0x10); /* movhps */
    xmm1 = xmm_load(esp + 0x70); /* movaps */
    xmm1 = xmm_load_lo(xmm1, ecx + 0x20); /* movlps */
    xmm1 = xmm_load_hi(xmm1, ecx + 0x30); /* movhps */
    eax = ecx + 0x10;
    eax = ecx + 0x20;
    xmm0 = xmm2; /* movaps */
    edx = ecx + 0x30;
    xmm0 = xmm_shufps(xmm0, xmm1, 0x88); /* shufps */
    xmm1 = xmm_shufps(xmm1, xmm2, 0xDD); /* shufps */
    xmm2 = xmm_load_lo(xmm2, ecx + 8); /* movlps */
    eax = ecx + 8;
    xmm4 = xmm2; /* movaps */
    xmm4 = xmm_load_hi(xmm4, ecx + 0x18); /* movhps */
    xmm2 = xmm_load(esp + 0x70); /* movaps */
    xmm2 = xmm_load_lo(xmm2, ecx + 0x28); /* movlps */
    xmm2 = xmm_load_hi(xmm2, ecx + 0x38); /* movhps */
    xmm3 = xmm4; /* movaps */
    edx = ecx + 0x18;
    edx = ecx + 0x38;
    ecx = ecx + 0x28;
    xmm3 = xmm_shufps(xmm3, xmm2, 0x88); /* shufps */
    xmm2 = xmm_shufps(xmm2, xmm4, 0xDD); /* shufps */
    xmm4 = xmm3; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm2); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0xB1); /* shufps */
    xmm5 = xmm1; /* movaps */
    xmm5 = xmm_mulps(xmm5, xmm4); /* mulps */
    xmm_store(esp + 0x10, xmm5); /* movaps */
    xmm6 = xmm0; /* movaps */
    xmm6 = xmm_mulps(xmm6, xmm4); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0x4E); /* shufps */
    xmm5 = xmm1; /* movaps */
    xmm5 = xmm_mulps(xmm5, xmm4); /* mulps */
    xmm5 = xmm_subps(xmm5, xmm_load(esp + 0x10)); /* subps */
    xmm7 = xmm0; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm4 = xmm7; /* movaps */
    xmm4 = xmm_subps(xmm4, xmm6); /* subps */
    xmm_store(esp + 0xE0, xmm4); /* movaps */
    xmm4 = xmm1; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm3); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0xB1); /* shufps */
    xmm7 = xmm0; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x60, xmm7); /* movaps */
    xmm6 = xmm2; /* movaps */
    xmm6 = xmm_mulps(xmm6, xmm4); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0x4E); /* shufps */
    xmm7 = xmm2; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x50, xmm7); /* movaps */
    xmm7 = xmm0; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm4 = xmm7; /* movaps */
    xmm4 = xmm_subps(xmm4, xmm_load(esp + 0x60)); /* subps */
    xmm_store(esp + 0x60, xmm4); /* movaps */
    xmm4 = xmm1; /* movaps */
    xmm4 = xmm_shufps(xmm4, xmm1, 0x4E); /* shufps */
    xmm4 = xmm_mulps(xmm4, xmm2); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0xB1); /* shufps */
    xmm3 = xmm_shufps(xmm3, xmm3, 0x4E); /* shufps */
    xmm7 = xmm3; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x40, xmm7); /* movaps */
    xmm7 = xmm0; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x80, xmm7); /* movaps */
    xmm7 = xmm4; /* movaps */
    xmm7 = xmm_shufps(xmm7, xmm4, 0x4E); /* shufps */
    xmm4 = xmm3; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm7); /* mulps */
    xmm_store(esp + 0x30, xmm7); /* movaps */
    xmm7 = xmm4; /* movaps */
    xmm4 = xmm_load(esp + 0x40); /* movaps */
    xmm6 = xmm_addps(xmm6, xmm5); /* addps */
    xmm6 = xmm_subps(xmm6, xmm_load(esp + 0x50)); /* subps */
    xmm4 = xmm_addps(xmm4, xmm6); /* addps */
    xmm4 = xmm_subps(xmm4, xmm7); /* subps */
    xmm_store(esp + 0x10, xmm4); /* movaps */
    xmm4 = xmm0; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm_load(esp + 0x30)); /* mulps */
    xmm4 = xmm_subps(xmm4, xmm_load(esp + 0x80)); /* subps */
    xmm_store(esp + 0x80, xmm4); /* movaps */
    xmm6 = xmm3; /* movaps */
    xmm4 = xmm0; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm1); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0xB1); /* shufps */
    xmm5 = xmm2; /* movaps */
    xmm5 = xmm_mulps(xmm5, xmm4); /* mulps */
    xmm6 = xmm_mulps(xmm6, xmm4); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0x4E); /* shufps */
    xmm7 = xmm2; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0xB0, xmm7); /* movaps */
    xmm7 = xmm3; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0xC0, xmm7); /* movaps */
    xmm7 = xmm3; /* movaps */
    xmm4 = xmm0; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm2); /* mulps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0xB1); /* shufps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x40, xmm7); /* movaps */
    xmm7 = xmm1; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0xD0, xmm7); /* movaps */
    xmm7 = xmm3; /* movaps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0x4E); /* shufps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm_store(esp + 0x50, xmm7); /* movaps */
    xmm7 = xmm1; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm4); /* mulps */
    xmm4 = xmm0; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm3); /* mulps */
    xmm3 = xmm4; /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm4, 0xB1); /* shufps */
    xmm4 = xmm2; /* movaps */
    xmm4 = xmm_mulps(xmm4, xmm3); /* mulps */
    xmm_store(esp + 0xA0, xmm7); /* movaps */
    xmm7 = xmm1; /* movaps */
    xmm7 = xmm_mulps(xmm7, xmm3); /* mulps */
    xmm3 = xmm_shufps(xmm3, xmm3, 0x4E); /* shufps */
    xmm2 = xmm_mulps(xmm2, xmm3); /* mulps */
    xmm_store(esp + 0x90, xmm2); /* movaps */
    xmm1 = xmm_mulps(xmm1, xmm3); /* mulps */
    xmm_store(esp + 0x70, xmm7); /* movaps */
    xmm7 = xmm_load(esp + 0x10); /* movaps */
    xmm0 = xmm_mulps(xmm0, xmm7); /* mulps */
    xmm2 = xmm0; /* movaps */
    xmm2 = xmm_shufps(xmm2, xmm0, 0x4E); /* shufps */
    xmm3 = xmm2; /* movaps */
    xmm3 = xmm_addps(xmm3, xmm0); /* addps */
    xmm0 = xmm3; /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm3, 0xB1); /* shufps */
    xmm0.f[0] = xmm0.f[0] + xmm3.f[0]; /* addss */
    xmm_store(esp + 0x30, xmm0); /* movaps */
    xmm2.f[0] = 1.0f / xmm0.f[0]; /* rcpss */
    xmm_store_ss(esp + 0x30, xmm2); /* movss */
    xmm3 = xmm_load(esp + 0x30); /* movaps */
    xmm2 = xmm3; /* movaps */
    xmm2.f[0] = xmm2.f[0] * xmm3.f[0]; /* mulss */
    xmm0.f[0] = xmm0.f[0] * xmm2.f[0]; /* mulss */
    xmm2 = xmm0; /* movaps */
    xmm0 = xmm3; /* movaps */
    xmm0.f[0] = xmm0.f[0] + xmm3.f[0]; /* addss */
    xmm0.f[0] = xmm0.f[0] - xmm2.f[0]; /* subss */
    xmm2 = xmm_load(esp + 0xE0); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0); /* shufps */
    xmm3 = xmm0; /* movaps */
    xmm3 = xmm_mulps(xmm3, xmm7); /* mulps */
    eax = 0x90FAA0;
    xmm_store_lo(eax, xmm3); /* movlps */
    ecx = 0x90FAA8;
    xmm_store_hi(ecx, xmm3); /* movhps */
    xmm3 = xmm2; /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm2, 0x4E); /* shufps */
    xmm3 = xmm_subps(xmm3, xmm_load(esp + 0x40)); /* subps */
    xmm2 = xmm3; /* movaps */
    xmm3 = xmm_load(esp + 0x50); /* movaps */
    xmm3 = xmm_addps(xmm3, xmm2); /* addps */
    xmm4 = xmm_addps(xmm4, xmm3); /* addps */
    xmm4 = xmm_subps(xmm4, xmm_load(esp + 0x90)); /* subps */
    xmm2 = xmm0; /* movaps */
    xmm2 = xmm_mulps(xmm2, xmm4); /* mulps */
    edx = 0x90FAB0;
    xmm_store_lo(edx, xmm2); /* movlps */
    eax = 0x90FAB8;
    xmm_store_hi(eax, xmm2); /* movhps */
    xmm2 = xmm_load(esp + 0x80); /* movaps */
    xmm3 = xmm2; /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm2, 0x4E); /* shufps */
    xmm2 = xmm_load(esp + 0xB0); /* movaps */
    xmm5 = xmm_addps(xmm5, xmm3); /* addps */
    xmm2 = xmm_subps(xmm2, xmm5); /* subps */
    xmm3 = xmm2; /* movaps */
    xmm2 = xmm_load(esp + 0xD0); /* movaps */
    xmm2 = xmm_addps(xmm2, xmm3); /* addps */
    xmm2 = xmm_subps(xmm2, xmm_load(esp + 0xA0)); /* subps */
    xmm3 = xmm2; /* movaps */
    xmm2 = xmm0; /* movaps */
    xmm2 = xmm_mulps(xmm2, xmm3); /* mulps */
    ecx = 0x90FAC0;
    xmm_store_lo(ecx, xmm2); /* movlps */
    edx = 0x90FAC8;
    xmm_store_hi(edx, xmm2); /* movhps */
    xmm2 = xmm_load(esp + 0x60); /* movaps */
    xmm3 = xmm2; /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm2, 0x4E); /* shufps */
    xmm6 = xmm_subps(xmm6, xmm3); /* subps */
    xmm6 = xmm_subps(xmm6, xmm_load(esp + 0xC0)); /* subps */
    xmm6 = xmm_subps(xmm6, xmm_load(esp + 0x70)); /* subps */
    xmm1 = xmm_addps(xmm1, xmm6); /* addps */
    xmm0 = xmm_mulps(xmm0, xmm1); /* mulps */
    eax = 0x90FAD0;
    ecx = 0x90FAD8;
    xmm_store_lo(eax, xmm0); /* movlps */
    xmm_store_hi(ecx, xmm0); /* movhps */
    esp = ebp;
    POP32(esp, ebp);
    esp += 4; return; /* ret */

}


/**
 * sub_00168684
 * Original: 0x00168684 - 0x00168782 (254 bytes, 69 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00168684(void)
{
    xmm128_t xmm0, xmm1, xmm2, xmm3, xmm4, xmm5;

loc_00168684: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 0xC);
    xmm2 = xmm_load(eax); /* movaps */
    xmm2 = xmm_shufps(xmm2, xmm2, 0); /* shufps */
    xmm2 = xmm_mulps(xmm2, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm1 = xmm_load(eax); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm0); /* addps */
    xmm3 = xmm_load(eax + 0x10); /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm3, 0); /* shufps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm3 = xmm_mulps(xmm3, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x10); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm3 = xmm_addps(xmm3, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm3 = xmm_addps(xmm3, xmm0); /* addps */
    xmm4 = xmm_load(eax + 0x20); /* movaps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0); /* shufps */
    xmm3 = xmm_addps(xmm3, xmm1); /* addps */
    xmm4 = xmm_mulps(xmm4, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x20); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x20); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm4 = xmm_addps(xmm4, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x20); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm4 = xmm_addps(xmm4, xmm0); /* addps */
    xmm5 = xmm_load(eax + 0x30); /* movaps */
    xmm5 = xmm_shufps(xmm5, xmm5, 0); /* shufps */
    xmm4 = xmm_addps(xmm4, xmm1); /* addps */
    xmm5 = xmm_mulps(xmm5, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x30); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x30); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm5 = xmm_addps(xmm5, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x30); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    ecx = MEM32(esp + 4);
    xmm5 = xmm_addps(xmm5, xmm0); /* addps */
    xmm5 = xmm_addps(xmm5, xmm1); /* addps */
    xmm_store(ecx, xmm2); /* movaps */
    xmm_store(ecx + 0x10, xmm3); /* movaps */
    xmm_store(ecx + 0x20, xmm4); /* movaps */
    xmm_store(ecx + 0x30, xmm5); /* movaps */
    eax = MEM32(esp + 4);
    esp += 16; return; /* ret 12 */

}


/**
 * sub_001B7DF0
 * Original: 0x001B7DF0 - 0x001B7E47 (87 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001B7DF0(void)
{
    xmm128_t xmm1, xmm2;

loc_001B7DF0: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 0x10);
    xmm2 = xmm_load_ss(eax); /* movss */
    xmm2 = xmm_shufps(xmm2, xmm2, 0); /* shufps */
    xmm2 = xmm_mulps(xmm2, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load_ss(eax + 4); /* movss */
    xmm1 = xmm_shufps(xmm1, xmm1, 0); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm1 = xmm_load_ss(eax + 8); /* movss */
    xmm1 = xmm_shufps(xmm1, xmm1, 0); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x20)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    eax = MEM32(esp + 4);
    xmm1 = xmm_load_ss(esp + 0xC); /* movss */
    xmm1 = xmm_shufps(xmm1, xmm1, 0); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm_store_lo(eax, xmm2); /* movlps */
    xmm2 = xmm_shufps(xmm2, xmm2, 2); /* shufps */
    xmm_store_ss(eax + 8, xmm2); /* movss */
    esp += 20; return; /* ret 16 */

}


/**
 * sub_001B7E50
 * Original: 0x001B7E50 - 0x001B7F4A (250 bytes, 68 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001B7E50_gen(void)
{
    xmm128_t xmm0, xmm1, xmm2, xmm3, xmm4, xmm5;

loc_001B7E50: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 0xC);
    xmm2 = xmm_load(eax); /* movaps */
    xmm2 = xmm_shufps(xmm2, xmm2, 0); /* shufps */
    xmm2 = xmm_mulps(xmm2, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm1 = xmm_load(eax); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm2 = xmm_addps(xmm2, xmm0); /* addps */
    xmm3 = xmm_load(eax + 0x10); /* movaps */
    xmm3 = xmm_shufps(xmm3, xmm3, 0); /* shufps */
    xmm2 = xmm_addps(xmm2, xmm1); /* addps */
    xmm3 = xmm_mulps(xmm3, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x10); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm3 = xmm_addps(xmm3, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x10); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm3 = xmm_addps(xmm3, xmm0); /* addps */
    xmm4 = xmm_load(eax + 0x20); /* movaps */
    xmm4 = xmm_shufps(xmm4, xmm4, 0); /* shufps */
    xmm3 = xmm_addps(xmm3, xmm1); /* addps */
    xmm4 = xmm_mulps(xmm4, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x20); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x20); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm4 = xmm_addps(xmm4, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x20); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    xmm4 = xmm_addps(xmm4, xmm0); /* addps */
    xmm5 = xmm_load(eax + 0x30); /* movaps */
    xmm5 = xmm_shufps(xmm5, xmm5, 0); /* shufps */
    xmm4 = xmm_addps(xmm4, xmm1); /* addps */
    xmm5 = xmm_mulps(xmm5, xmm_load(ecx)); /* mulps */
    xmm1 = xmm_load(eax + 0x30); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0x55); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x10)); /* mulps */
    xmm0 = xmm_load(eax + 0x30); /* movaps */
    xmm0 = xmm_shufps(xmm0, xmm0, 0xAA); /* shufps */
    xmm0 = xmm_mulps(xmm0, xmm_load(ecx + 0x20)); /* mulps */
    xmm5 = xmm_addps(xmm5, xmm1); /* addps */
    xmm1 = xmm_load(eax + 0x30); /* movaps */
    xmm1 = xmm_shufps(xmm1, xmm1, 0xFF); /* shufps */
    xmm1 = xmm_mulps(xmm1, xmm_load(ecx + 0x30)); /* mulps */
    ecx = MEM32(esp + 4);
    xmm5 = xmm_addps(xmm5, xmm0); /* addps */
    xmm5 = xmm_addps(xmm5, xmm1); /* addps */
    xmm_store(ecx, xmm2); /* movaps */
    xmm_store(ecx + 0x10, xmm3); /* movaps */
    xmm_store(ecx + 0x20, xmm4); /* movaps */
    xmm_store(ecx + 0x30, xmm5); /* movaps */
    esp += 16; return; /* ret 12 */

}

