/**
 * DOA3 - handler vtable at 0x002E8C74, missed entirely by function detection.
 *
 * All 35 slots of this table are reached only through the table itself, so the
 * direct-call scan never promoted any of them: they had no disassembly entry,
 * no generated body and no dispatch entry, and every call through the table was
 * an unresolved icall. sub_000318D0 (seeded earlier) was one of them -- calling
 * it hit a null target and segfaulted.
 *
 * Extents come from successive table entries; the last two are bounded by the
 * next detected functions (sub_000329F0 and sub_00034A70).
 *
 * Prototypes are declared here and in recomp_dispatch.c rather than in
 * recomp_funcs.h: that header is included by every generated unit, so touching
 * it forces a full rebuild of the whole recompilation.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stdio.h>
#include <math.h>

void sub_00079CE0(void);
void sub_000745A0(void);

void sub_000C7420(void);
void sub_000C7830(void);
void sub_00031950(void);
void sub_000319E0(void);
void sub_00031AC0(void);
void sub_00031BA0(void);
void sub_00031EF0(void);
void sub_000321D0(void);
void sub_00032220(void);
void sub_00032240(void);
void sub_00032270(void);
void sub_000322C0(void);
void sub_000322F0(void);
void sub_00032400(void);
void sub_00032500(void);
void sub_00032540(void);
void sub_00032570(void);
void sub_000325C0(void);
void sub_00032640(void);
void sub_000326F0(void);
void sub_00032760(void);
void sub_00032800(void);
void sub_00032840(void);
void sub_00032870(void);
void sub_000328A0(void);
void sub_000328E0(void);
void sub_00032930(void);
void sub_000329A0(void);
void sub_000329C0(void);
void sub_000346A0(void);

/**
 * sub_00031950
 * Original: 0x00031950 - 0x000319E0 (144 bytes, 52 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00031950(void)
{

loc_00031950: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x73C);
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_00031964: ;
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_00031969: ;
    eax = MEM32(edi + 0xC);
    ecx = MEM32(edi + 8);
    edx = MEM32(edi + 4);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_0003197A: ;
    eax = MEM32(edi + 0x10);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_00031983: ;
    ebx = esi + 0x630;
    esp = esp + 0x10;
    ecx = ebx;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_00031993: ;
    ecx = 1;
    MEM32(esi + 0x430) = ebx;
    MEM32(esi + 0x4FC) = ebx;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_000319A9: ;
    eax = MEM32(esi + 0x73C);
    MEM32(esi + 0x730) = 0;
    ecx = (uint32_t)(int32_t)SMEM16(edi + 2);
    ecx = ecx << 2;
    eax = eax + ecx;
    POP32(esp, edi);
    MEM32(esi + 0x73C) = eax;
    POP32(esp, esi);
    eax = 1;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_000319E0
 * Original: 0x000319E0 - 0x00031AC0 (224 bytes, 80 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000319E0(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_000319E0: ;
    esp = esp - 0x10;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x20);
    esi = MEM32(edi + 0x73C);
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_000319F7: ;
    fp_push(MEMF(esi + 4)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 8)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0xC)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0x14) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_00031A17: ;
    eax = MEM32(esi + 0x1C);
    ecx = MEM32(esi + 0x18);
    edx = MEM32(esi + 0x14);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031A28: ;
    eax = MEM32(esi + 0xC);
    ecx = MEM32(esi + 8);
    edx = MEM32(esi + 4);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031A39: ;
    eax = MEM32(esi + 0x10);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_00031A42: ;
    ecx = MEM32(esp + 0x30);
    edx = MEM32(esp + 0x2C);
    eax = MEM32(esp + 0x28);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031A56: ;
    ebx = edi + 0x630;
    esp = esp + 0x28;
    ecx = ebx;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_00031A66: ;
    ecx = 1;
    MEM32(edi + 0x430) = ebx;
    MEM32(edi + 0x4FC) = ebx;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_00031A7C: ;
    eax = 0; /* xor self */
    MEM8(edi + 0xA31) = LO8(eax);
    MEM8(edi + 0xA34) = LO8(eax);
    MEM32(edi + 0x730) = eax;
    ecx = (uint32_t)(int32_t)SMEM16(esi + 2);
    eax = MEM32(edi + 0x73C);
    ecx = ecx << 2;
    eax = eax + ecx;
    MEM32(edi + 0x73C) = eax;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x10;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_00031AC0
 * Original: 0x00031AC0 - 0x00031BA0 (224 bytes, 80 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00031AC0(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00031AC0: ;
    esp = esp - 0x10;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x20);
    esi = MEM32(edi + 0x73C);
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_00031AD7: ;
    fp_push(MEMF(esi + 4)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0xC) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 8)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0x10) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(esi + 0xC)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0x14) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_00031AF7: ;
    eax = MEM32(esi + 0xC);
    ecx = MEM32(esi + 8);
    edx = MEM32(esi + 4);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031B08: ;
    eax = MEM32(esi + 0x10);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_00031B11: ;
    ecx = MEM32(esp + 0x24);
    edx = MEM32(esp + 0x20);
    eax = MEM32(esp + 0x1C);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031B25: ;
    ecx = MEM32(esi + 0x1C);
    edx = MEM32(esi + 0x18);
    eax = MEM32(esi + 0x14);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031B36: ;
    ebx = edi + 0x630;
    esp = esp + 0x28;
    ecx = ebx;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_00031B46: ;
    ecx = 1;
    MEM32(edi + 0x430) = ebx;
    MEM32(edi + 0x4FC) = ebx;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_00031B5C: ;
    eax = 0; /* xor self */
    MEM8(edi + 0xA31) = LO8(eax);
    MEM8(edi + 0xA34) = LO8(eax);
    MEM32(edi + 0x730) = eax;
    ecx = (uint32_t)(int32_t)SMEM16(esi + 2);
    eax = MEM32(edi + 0x73C);
    ecx = ecx << 2;
    eax = eax + ecx;
    MEM32(edi + 0x73C) = eax;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x10;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_00031BA0
 * Original: 0x00031BA0 - 0x00031EF0 (848 bytes, 252 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00031BA0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    int _cf = 0; /* carry flag */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00031BA0: ;
    SET_LO16(eax, MEM16(0x85BB8C));
    esp = esp - 0x18;
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_00031BB5; /* jne: not equal / not zero */

loc_00031BAD: ;
    if (TEST_NZ(HI8(eax), HI8(eax))) goto loc_00031BB5; /* jne: not equal / not zero */

loc_00031BB1: ;
    ecx = 0; /* xor self */
    goto loc_00031BBA;

loc_00031BB5: ;
    ecx = 1;

loc_00031BBA: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x2C);
    eax = MEM32(edi + 0x73C);
    edx = (uint32_t)(int32_t)SMEM16(eax + 2);
    esi = MEM32(eax + 4);
    eax = eax + edx * 4;
    ebp = 0; /* xor self */
    /* cmp esi, 7 - flags set for next jcc */
    MEM32(edi + 0x73C) = eax;
    if (CMP_A(esi, 7)) goto loc_00031C02; /* ja: above (unsigned >) */

loc_00031BDF: ;
    { uint32_t _jt = MEM32(esi * 4 + 0x31EC4); /* switch: 8 entries, 7 targets */
    if (_jt == 0x00031BE6u) goto loc_00031BE6;
    if (_jt == 0x00031BFDu) goto loc_00031BFD;
    if (_jt == 0x00031C02u) goto loc_00031C02;
    if (_jt == 0x00031C09u) goto loc_00031C09;
    if (_jt == 0x00031C33u) goto loc_00031C33;
    if (_jt == 0x00031C4Fu) goto loc_00031C4F;
    if (_jt == 0x00031C56u) goto loc_00031C56;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_00031BE6: ;
    eax = ZX8(MEM8(edi + 0xB0E));
    esi = eax;
    esi = ~esi;
    esi = esi & 1;
    eax = eax & 0xFE;
    esi = esi | eax;
    goto loc_00031C09;

loc_00031BFD: ;
    ebp = 1;

loc_00031C02: ;
    esi = ZX8(MEM8(edi + 0xB0E));

loc_00031C09: ;
    ebx = esi;
    ebx = ebx & 1;
    eax = ebx;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x1C);
    SET_LO8(edx, MEM8(eax + 0x4BB87E));
    /* test LO8(edx), LO8(edx) - flags set for next jcc */
    MEM32(esp + 0x10) = ebx;
    if (TEST_Z(LO8(edx), LO8(edx))) goto loc_00031C72; /* je: equal / zero */

loc_00031C21: ;
    if (TEST_NZ(ecx, ecx)) goto loc_00031C72; /* jne: not equal / not zero */

loc_00031C25: ;
    ecx = MEM32(eax + 0x4BB864);
    edx = MEM32(eax + 0x4BB868);
    goto loc_00031CAE;

loc_00031C33: ;
    eax = ZX8(MEM8(edi + 0xB0E));
    esi = eax;
    esi = ~esi;
    esi = esi & 1;
    eax = eax & 0xFE;
    esi = esi | eax;
    ebp = 1;
    goto loc_00031C09;

loc_00031C4F: ;
    ebp = 2;
    goto loc_00031C02;

loc_00031C56: ;
    eax = ZX8(MEM8(edi + 0xB0E));
    esi = eax;
    esi = ~esi;
    esi = esi & 1;
    eax = eax & 0xFE;
    esi = esi | eax;
    ebp = 2;
    goto loc_00031C09;

loc_00031C72: ;
    if (CMP_G(esi, 1)) goto loc_00031C8A; /* jg: greater (signed >) */

loc_00031C77: ;
    eax = esi;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    ecx = MEM32(eax + 0x484C4C);
    edx = MEM32(eax + 0x484C54);
    goto loc_00031CAE;

loc_00031C8A: ;
    eax = esi + -2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031C93: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00031C98: ;
    PUSH32(esp, 0);
    ebx = eax;
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031CA1: ;
    ecx = MEM32(ebx + 0xC);
    edx = MEM32(ebx + 0x14);
    ebx = MEM32(esp + 0x18);
    esp = esp + 8;

loc_00031CAE: ;
    eax = edx;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    MEM32(esp + 0x20) = ecx;
    MEM32(esp + 0x28) = edx;
    PUSH32(esp, 0); sub_000D3C40(); /* call 0x000D3C40 */

loc_00031CBF: ;
    MEMF(esp + 0x24) = (float)fp_top(); fp_popp(); /* fstp */
    esp = esp + 8;
    if (CMP_NE(ebp, 1)) goto loc_00031D43; /* jne: not equal / not zero */

loc_00031CCB: ;
    esi = MEM32(esp + 0x20);
    ebp = MEM32(esp + 0x18);
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    edx = esp + 0x1C;
    PUSH32(esp, edx);
    eax = esp + 0x38;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000D6170(); /* call 0x000D6170 */

loc_00031CE4: ;
    esp = esp + 0x10;
    if (CMP_GE(eax, 8)) goto loc_00031D2A; /* jge: greater or equal (signed >=) */

loc_00031CEC: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    ecx = esp + 0x1C;
    PUSH32(esp, ecx);
    edx = esp + 0x38;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000D6280(); /* call 0x000D6280 */

loc_00031CFD: ;
    esp = esp + 0x10;
    if (CMP_GE(eax, 8)) goto loc_00031D1C; /* jge: greater or equal (signed >=) */

loc_00031D05: ;
    /* test ebx, ebx - flags set for next jcc */
    eax = MEM32(0x48A2D4);
    if (TEST_NZ(ebx, ebx)) goto loc_00031E35; /* jne: not equal / not zero */

loc_00031D12: ;
    eax = eax + 0x4000;
    goto loc_00031E3A;

loc_00031D1C: ;
    eax = MEM32(esp + 0x2C);
    eax = eax + 0xFFFF8000u;
    goto loc_00031E3A;

loc_00031D2A: ;
    ecx = MEM32(esp + 0x2C);
    ecx = ecx + 0xFFFF8000u;
    ecx = ecx & 0xFFFF;
    MEM32(esp + 0x2C) = ecx;
    goto loc_00031E43;

loc_00031D43: ;
    if (CMP_NE(ebp, 2)) goto loc_00031D87; /* jne: not equal / not zero */

loc_00031D48: ;
    if (CMP_GE(esi, ebp)) goto loc_00031D64; /* jge: greater or equal (signed >=) */

loc_00031D4C: ;
    esi = (uint32_t)((int32_t)esi * (int32_t)0x68);
    edx = MEM32(esi + 0x484C5C);
    edx = edx + 0x4000;
    MEM32(esp + 0x2C) = edx;
    goto loc_00031E43;

loc_00031D64: ;
    esi = esi + 0xFFFFFFFEu;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031D6D: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00031D72: ;
    PUSH32(esp, 0);
    esi = eax;
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031D7B: ;
    eax = ZX16(MEM16(esi + 0x34));
    esp = esp + 8;
    goto loc_00031E3F;

loc_00031D87: ;
    SET_LO8(eax, MEM8(0x4BB87E));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    SET_LO8(eax, MEM8(0x4BB89A));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_00031DA5; /* jne: not equal / not zero */

loc_00031D95: ;
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_00031DCB; /* jne: not equal / not zero */

loc_00031D99: ;
    eax = MEM32(0x48A2D4);
    /* test esi, esi - flags set for next jcc */
    goto loc_00031E2C;

loc_00031DA5: ;
    SET_LO8(ecx, MEM8(0x4BB7F8));
    fp_push(MEMF(0x4BB864)); /* fld float */
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */
    fp_push(MEMF(0x4BB868)); /* fld float */
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_00031DD7; /* je: equal / zero */

loc_00031DBB: ;
    fp_push(MEMF(0x4BBD48)); /* fld float */
    g_fp_stack[(g_fp_top + 2) & 7] = g_fp_stack[(g_fp_top + 2) & 7] + fp_top(); fp_pop(); /* faddp st(2) */
    fp_top() = fp_top() + (double)MEMF(0x4BBD50); /* fadd mem */
    goto loc_00031DD7;

loc_00031DCB: ;
    fp_push(MEMF(0x484C4C)); /* fld float */
    fp_push(MEMF(0x484C54)); /* fld float */

loc_00031DD7: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_00031E00; /* je: equal / zero */

loc_00031DDB: ;
    SET_LO8(eax, MEM8(0x4BB7F9));
    fp_push(MEMF(0x4BB880)); /* fld float */
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    fp_push(MEMF(0x4BB884)); /* fld float */
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_00031E0C; /* je: equal / zero */

loc_00031DF0: ;
    fp_push(MEMF(0x4BBD58)); /* fld float */
    g_fp_stack[(g_fp_top + 2) & 7] = g_fp_stack[(g_fp_top + 2) & 7] + fp_top(); fp_pop(); /* faddp st(2) */
    fp_top() = fp_top() + (double)MEMF(0x4BBD60); /* fadd mem */
    goto loc_00031E0C;

loc_00031E00: ;
    fp_push(MEMF(0x484CB4)); /* fld float */
    fp_push(MEMF(0x484CBC)); /* fld float */

loc_00031E0C: ;
    { double _t = fp_top(); fp_top() = g_fp_stack[(g_fp_top + 0) & 7]; g_fp_stack[(g_fp_top + 0) & 7] = _t; } /* fxch st(0) */
    esp = esp - 8;
    fp_top() = fp_top() - g_fp_stack[(g_fp_top + 3) & 7]; /* fsub st(3) */
    MEMF(esp + 4) = (float)fp_top(); fp_popp(); /* fstp */
    { double _t = fp_top(); fp_top() = g_fp_stack[(g_fp_top + 0) & 7]; g_fp_stack[(g_fp_top + 0) & 7] = _t; } /* fxch st(0) */
    fp_top() = fp_top() - g_fp_stack[(g_fp_top + 1) & 7]; /* fsub st(1) */
    MEMF(esp) = (float)fp_top(); fp_popp(); /* fstp */
    fp_popp(); /* fstp st(0) = pop */
    fp_popp(); /* fstp st(0) = pop */
    PUSH32(esp, 0); sub_00154040(); /* call 0x00154040 */

loc_00031E27: ;
    esp = esp + 8;
    /* test ebx, ebx - flags set for next jcc */

loc_00031E2C: ;
    if (TEST_NZ(ebx, ebx)) goto loc_00031E35; /* jne: not equal / not zero */

loc_00031E2E: ;
    eax = eax + 0x4000;
    goto loc_00031E3A;

loc_00031E35: ;
    eax = eax + 0xC000;

loc_00031E3A: ;
    eax = eax & 0xFFFF;

loc_00031E3F: ;
    MEM32(esp + 0x2C) = eax;

loc_00031E43: ;
    MEM8(edi + 0xA31) = 1;
    SET_LO8(ecx, MEM8(0x48E612));
    MEM8(edi + 0xA34) = LO8(ecx);
    ecx = 0; /* xor self */
    MEM8(edi + 0xA33) = 1;
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_00031E64: ;
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_00031E69: ;
    edx = MEM32(esp + 0x20);
    eax = MEM32(esp + 0x1C);
    ecx = MEM32(esp + 0x18);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00031E7D: ;
    edx = MEM32(esp + 0x38);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_00031E87: ;
    esi = edi + 0x630;
    esp = esp + 0x10;
    ecx = esi;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_00031E97: ;
    ecx = 1;
    MEM32(edi + 0x430) = esi;
    MEM32(edi + 0x4FC) = esi;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_00031EAD: ;
    MEM32(edi + 0x730) = 1;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x18;
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_00031EF0
 * Original: 0x00031EF0 - 0x000321D0 (736 bytes, 234 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00031EF0(void)
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

loc_00031EF0: ;
    esp = esp - 0x28;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x30);
    eax = MEM32(esi + 0x73C);
    edx = (uint32_t)(int32_t)SMEM16(eax + 2);
    ecx = MEM32(eax + 4);
    /* cmp ecx, 6 - flags set for next jcc */
    eax = eax + edx * 4;
    MEM32(esi + 0x73C) = eax;
    if (CMP_A(ecx, 6)) goto loc_000321A2; /* ja: above (unsigned >) */

loc_00031F17: ;
    PUSH32(esp, edi);
    { uint32_t _jt = MEM32(ecx * 4 + 0x321AC); /* switch: 7 entries, 7 targets */
    if (_jt == 0x00031F1Fu) goto loc_00031F1F;
    if (_jt == 0x00031F31u) goto loc_00031F31;
    if (_jt == 0x00031F43u) goto loc_00031F43;
    if (_jt == 0x00031F65u) goto loc_00031F65;
    if (_jt == 0x00031F90u) goto loc_00031F90;
    if (_jt == 0x00031FE8u) goto loc_00031FE8;
    if (_jt == 0x00032190u) goto loc_00032190;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_00031F1F: ;
    POP32(esp, edi);
    MEM8(esi + 0x740) = 0;
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031F31: ;
    POP32(esp, edi);
    MEM8(esi + 0x740) = 1;
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031F43: ;
    SET_LO8(ecx, MEM8(esi + 0xB0E));
    SET_LO8(eax, MEM8(esi + 0x741));
    SET_LO8(ecx, LO8(ecx) & 1);
    SET_LO8(ecx, LO8(ecx) ^ LO8(eax));
    POP32(esp, edi);
    MEM8(esi + 0x740) = LO8(ecx);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031F65: ;
    eax = (uint32_t)(int32_t)SMEM8(esi + 0x741);
    edx = 0; /* xor self */
    SET_LO8(edx, MEM8(esi + 0xB0E));
    POP32(esp, edi);
    edx = edx & 1;
    edx = edx ^ eax;
    edx = (uint32_t)(-(int32_t)edx);
    _cf = ((edx) != 0); /* CF from neg */
    SET_LO8(edx, _cf ? 0xFFFFFFFF : 0); /* sbb self (CF extend) */
    SET_LO8(edx, LO8(edx) + 1);
    MEM8(esi + 0x740) = LO8(edx);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031F90: ;
    SET_LO8(eax, MEM8(esi + 0xB0E));
    if (CMP_AE(LO8(eax), 2)) goto loc_00031FB7; /* jae: above or equal (unsigned >=) */

loc_00031F9A: ;
    ecx = ZX8(LO8(eax));
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x68);
    SET_LO8(edx, MEM8(ecx + 0x484C82));
    POP32(esp, edi);
    MEM8(esi + 0x740) = LO8(edx);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031FB7: ;
    eax = ZX8(LO8(eax));
    eax = eax - 2;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031FC3: ;
    PUSH32(esp, 0); sub_00094D60(); /* call 0x00094D60 */

loc_00031FC8: ;
    PUSH32(esp, 0);
    edi = eax;
    PUSH32(esp, 0); sub_00094E50(); /* call 0x00094E50 */

loc_00031FD1: ;
    SET_LO8(ecx, MEM8(edi + 0xA));
    esp = esp + 8;
    POP32(esp, edi);
    MEM8(esi + 0x740) = LO8(ecx);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00031FE8: ;
    fp_push(MEMF(0x484CB4)); /* fld float */
    SET_LO8(eax, MEM8(esi + 0xB0E));
    /* test LO8(eax), 1 - flags set for next jcc */
    fp_top() = fp_top() + (double)MEMF(0x484C4C); /* fadd mem */
    PUSH32(esp, ebp);
    ebp = MEM32(0x48A2D4);
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    MEMF(esp + 0x24) = (float)fp_top(); fp_popp(); /* fstp */
    fp_push(MEMF(0x484CBC)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(0x484C54); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    MEMF(esp + 0x2C) = (float)fp_top(); fp_popp(); /* fstp */
    if (TEST_Z(LO8(eax), 1)) goto loc_0003202B; /* je: equal / zero */

loc_00032025: ;
    ebp = ebp + 0x8000;

loc_0003202B: ;
    edi = ebp + -16384;
    PUSH32(esp, ebx);
    ecx = edi;
    PUSH32(esp, 0); sub_00153F80(); /* call 0x00153F80 */

loc_00032039: ;
    fp_top() = fp_top() * (double)MEMF(0x1ED6F8); /* fmul mem */
    ecx = edi;
    fp_top() = fp_top() + (double)MEMF(esp + 0x28); /* fadd mem */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00153F60(); /* call 0x00153F60 */

loc_0003204E: ;
    fp_top() = fp_top() * (double)MEMF(0x1ED6F8); /* fmul mem */
    ebx = MEM32(esp + 0x18);
    edx = esp + 0x3C;
    eax = esp + 0x10;
    fp_top() = (double)MEMF(esp + 0x30) - fp_top(); /* fsubr mem */
    MEMF(esp + 0x20) = (float)fp_top(); fp_popp(); /* fstp */
    edi = MEM32(esp + 0x20);
    PUSH32(esp, edi);
    PUSH32(esp, ebx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000D6170(); /* call 0x000D6170 */

loc_00032075: ;
    esp = esp + 0x10;
    if (CMP_GE(eax, 8)) goto loc_000320A0; /* jge: greater or equal (signed >=) */

loc_0003207D: ;
    PUSH32(esp, edi);
    PUSH32(esp, ebx);
    ecx = esp + 0x44;
    PUSH32(esp, ecx);
    edx = esp + 0x1C;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000D6280(); /* call 0x000D6280 */

loc_0003208E: ;
    esp = esp + 0x10;
    if (CMP_GE(eax, 8)) goto loc_000320AA; /* jge: greater or equal (signed >=) */

loc_00032096: ;
    MEM32(esp + 0x3C) = 0xC2C80000u;
    goto loc_000320AA;

loc_000320A0: ;
    fp_push(MEMF(esp + 0x3C)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(esp + 0x3C) = (float)fp_top(); fp_popp(); /* fstp */

loc_000320AA: ;
    edi = ebp + 0x4000;
    ecx = edi;
    PUSH32(esp, 0); sub_00153F80(); /* call 0x00153F80 */

loc_000320B7: ;
    fp_top() = fp_top() * (double)MEMF(0x1ED6F8); /* fmul mem */
    ecx = edi;
    fp_top() = fp_top() + (double)MEMF(esp + 0x28); /* fadd mem */
    MEMF(esp + 0x18) = (float)fp_top(); fp_popp(); /* fstp */
    PUSH32(esp, 0); sub_00153F60(); /* call 0x00153F60 */

loc_000320CC: ;
    fp_top() = fp_top() * (double)MEMF(0x1ED6F8); /* fmul mem */
    ebp = MEM32(esp + 0x18);
    eax = esp + 0x14;
    ecx = esp + 0x10;
    fp_top() = (double)MEMF(esp + 0x30) - fp_top(); /* fsubr mem */
    MEMF(esp + 0x20) = (float)fp_top(); fp_popp(); /* fstp */
    edi = MEM32(esp + 0x20);
    PUSH32(esp, edi);
    PUSH32(esp, ebp);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000D6170(); /* call 0x000D6170 */

loc_000320F3: ;
    esp = esp + 0x10;
    /* cmp eax, 8 - flags set for next jcc */
    POP32(esp, ebx);
    if (CMP_GE(eax, 8)) goto loc_0003211D; /* jge: greater or equal (signed >=) */

loc_000320FC: ;
    PUSH32(esp, edi);
    PUSH32(esp, ebp);
    edx = esp + 0x18;
    PUSH32(esp, edx);
    eax = esp + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000D6280(); /* call 0x000D6280 */

loc_0003210D: ;
    esp = esp + 0x10;
    if (CMP_GE(eax, 8)) goto loc_00032125; /* jge: greater or equal (signed >=) */

loc_00032115: ;
    fp_push(MEMF(0x1ED80C)); /* fld float */
    goto loc_00032129;

loc_0003211D: ;
    fp_push(MEMF(esp + 0x10)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    goto loc_00032129;

loc_00032125: ;
    fp_push(MEMF(esp + 0x10)); /* fld float */

loc_00032129: ;
    fp_push(MEMF(esp + 0x38)); /* fld float */
    POP32(esp, ebp);
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (0x44)))) goto loc_0003215B; /* jp: parity */

loc_00032137: ;
    SET_LO8(ecx, MEM8(esi + 0xB0E));
    fp_popp(); /* fstp st(0) = pop */
    SET_LO8(edx, MEM8(esi + 0x741));
    SET_LO8(ecx, LO8(ecx) & 1);
    SET_LO8(edx, LO8(edx) ^ LO8(ecx));
    POP32(esp, edi);
    MEM8(esi + 0x740) = LO8(edx);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_0003215B: ;
    fp_push(MEMF(esp + 0x34)); /* fld float */
    _fpu_cmp = (fp_top() < fp_st1()) ? -1 : (fp_top() > fp_st1()) ? 1 : 0; fp_popp(); /* fcomp st(1) */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    fp_popp(); /* fstp st(0) = pop */
    if ((X86_PF8((HI8(eax)) & (5)))) goto loc_0003217D; /* jp: parity */

loc_0003216A: ;
    SET_LO8(eax, 1);
    MEM8(esi + 0x740) = LO8(eax);
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_0003217D: ;
    SET_LO8(eax, 0); /* xor self */
    MEM8(esi + 0x740) = LO8(eax);
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

loc_00032190: ;
    SET_LO8(eax, MEM8(esi + 0x740));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    SET_LO8(eax, (TEST_Z(LO8(eax), LO8(eax))) ? 1 : 0); /* sete */
    MEM8(esi + 0x740) = LO8(eax);
    POP32(esp, edi);

loc_000321A2: ;
    eax = 1;
    POP32(esp, esi);
    esp = esp + 0x28;
    esp += 4; return; /* ret */

    MEM32(ebx) = MEM32(ebx) & eax;
    MEM8(eax + -1869574000) = MEM8(eax + -1869574000) + LO8(edx);
    /* nop */
    /* nop */
    /* nop */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_000321D0
 * Original: 0x000321D0 - 0x00032220 (80 bytes, 27 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000321D0(void)
{
    int _flags = 0; /* fallback flag var */

loc_000321D0: ;
    ecx = MEM32(esp + 4);
    edx = MEM32(ecx + 0x73C);
    SET_LO8(eax, MEM8(edx + 4));
    /* cmp LO8(eax), 1 - flags set for next jcc */
    MEM8(ecx + 0xB0E) = LO8(eax);
    if (CMP_BE(LO8(eax), 1)) goto loc_000321FE; /* jbe: below or equal (unsigned <=) */

loc_000321E7: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_000321F4; /* jne: not equal / not zero */

loc_000321EB: ;
    MEM8(ecx + 0xB0E) = 0;
    goto loc_000321FE;

loc_000321F4: ;
    SET_LO8(eax, ~LO8(eax));
    SET_LO8(eax, LO8(eax) & 1);
    MEM8(ecx + 0xB0E) = LO8(eax);

loc_000321FE: ;
    eax = (uint32_t)(int32_t)SMEM16(edx + 2);
    edx = MEM32(ecx + 0x73C);
    eax = eax << 2;
    edx = edx + eax;
    MEM32(ecx + 0x73C) = edx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032220
 * Original: 0x00032220 - 0x00032240 (32 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032220(void)
{

loc_00032220: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x73C);
    edx = (uint32_t)(int32_t)SMEM16(eax + 2);
    eax = eax + edx * 4;
    MEM32(ecx + 0x73C) = eax;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032240
 * Original: 0x00032240 - 0x00032270 (48 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032240(void)
{

loc_00032240: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x73C);
    SET_LO8(edx, MEM8(ecx + 4));
    MEM8(eax + 0xAFD) = LO8(edx);
    ecx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    edx = MEM32(eax + 0x73C);
    ecx = ecx << 2;
    edx = edx + ecx;
    MEM32(eax + 0x73C) = edx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032270
 * Original: 0x00032270 - 0x000322C0 (80 bytes, 30 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032270(void)
{
    int _flags = 0; /* fallback flag var */

loc_00032270: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x73C);
    edx = MEM32(ecx + 4);
    /* test edx, edx - flags set for next jcc */
    SET_LO8(edx, MEM8(ecx + 8));
    if (TEST_NZ(edx, edx)) goto loc_00032292; /* jne: not equal / not zero */

loc_00032284: ;
    MEM8(eax + 0xA32) = LO8(edx);
    MEM8(eax + 0xA33) = LO8(edx);
    goto loc_00032298;

loc_00032292: ;
    MEM8(eax + 0xA31) = LO8(edx);

loc_00032298: ;
    ecx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    edx = MEM32(eax + 0x73C);
    ecx = ecx << 2;
    edx = edx + ecx;
    MEM32(eax + 0x73C) = edx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000322C0
 * Original: 0x000322C0 - 0x000322F0 (48 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000322C0(void)
{
    int _flags = 0; /* fallback flag var */

loc_000322C0: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x73C);
    eax = MEM32(eax + 4);
    if (TEST_S(eax, eax)) goto loc_000322E0; /* jl: less (signed <) */

loc_000322D1: ;
    edx = MEM32(0x2D1CAC);
    eax = MEM32(edx + eax * 4);
    MEM32(ecx + 0x73C) = eax;

loc_000322E0: ;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000322F0
 * Original: 0x000322F0 - 0x00032400 (272 bytes, 78 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000322F0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000322F0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x73C);
    edx = MEM32(ecx + 8);
    PUSH32(esp, esi);
    esi = MEM32(ecx + 4);
    /* cmp esi, 3 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edi * 4;
    MEM32(eax + 0x73C) = ecx;
    if (CMP_A(esi, 3)) goto loc_000323DF; /* ja: above (unsigned >) */

loc_00032318: ;
    { uint32_t _jt = MEM32(esi * 4 + 0x323E8); /* switch: 4 entries, 4 targets */
    if (_jt == 0x0003231Fu) goto loc_0003231F;
    if (_jt == 0x00032351u) goto loc_00032351;
    if (_jt == 0x00032383u) goto loc_00032383;
    if (_jt == 0x000323B5u) goto loc_000323B5;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_0003231F: ;
    ecx = 0; /* xor self */
    MEM32(eax + 0x46C) = ecx;
    esi = MEM32(0x2D1CB4);
    edx = MEM32(esi + edx * 4);
    MEM32(eax + 0x464) = ecx;
    MEM32(eax + 0x474) = edx;
    ecx = MEM32(0x4A0D94);
    ecx++;
    POP32(esp, edi);
    MEM32(eax + 0x468) = ecx;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00032351: ;
    ecx = 0; /* xor self */
    MEM32(eax + 0x538) = ecx;
    esi = MEM32(0x2D1CBC);
    edx = MEM32(esi + edx * 4);
    MEM32(eax + 0x530) = ecx;
    MEM32(eax + 0x540) = edx;
    ecx = MEM32(0x4A0D94);
    ecx++;
    POP32(esp, edi);
    MEM32(eax + 0x534) = ecx;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00032383: ;
    ecx = 0; /* xor self */
    MEM32(eax + 0x5C8) = ecx;
    esi = MEM32(0x2D1CC4);
    edx = MEM32(esi + edx * 4);
    MEM32(eax + 0x5C0) = ecx;
    MEM32(eax + 0x5CC) = edx;
    ecx = MEM32(0x4A0D94);
    ecx++;
    POP32(esp, edi);
    MEM32(eax + 0x5C4) = ecx;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_000323B5: ;
    ecx = 0; /* xor self */
    MEM32(eax + 0x624) = ecx;
    esi = MEM32(0x2D1CCC);
    edx = MEM32(esi + edx * 4);
    MEM32(eax + 0x61C) = ecx;
    MEM32(eax + 0x628) = edx;
    ecx = MEM32(0x4A0D94);
    ecx++;
    MEM32(eax + 0x620) = ecx;

loc_000323DF: ;
    POP32(esp, edi);
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00032400
 * Original: 0x00032400 - 0x00032500 (256 bytes, 68 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032400(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00032400: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x73C);
    edx = MEM32(eax + 4);
    PUSH32(esp, ebx);
    ebx = (uint32_t)(int32_t)SMEM16(eax + 2);
    PUSH32(esp, esi);
    esi = MEM32(eax + 0xC);
    PUSH32(esp, edi);
    edi = MEM32(eax + 8);
    /* cmp edi, 3 - flags set for next jcc */
    eax = eax + ebx * 4;
    MEM32(ecx + 0x73C) = eax;
    eax = 1;
    if (CMP_A(edi, 3)) goto loc_000324E8; /* ja: above (unsigned >) */

loc_00032431: ;
    { uint32_t _jt = MEM32(edi * 4 + 0x324EC); /* switch: 4 entries, 4 targets */
    if (_jt == 0x00032438u) goto loc_00032438;
    if (_jt == 0x00032465u) goto loc_00032465;
    if (_jt == 0x00032492u) goto loc_00032492;
    if (_jt == 0x000324BFu) goto loc_000324BF;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_00032438: ;
    MEM32(ecx + 0x458) = edx;
    MEM32(ecx + 0x46C) = eax;
    MEM32(ecx + 0x45C) = 0;
    edx = MEM32(0x4A0D94);
    POP32(esp, edi);
    MEM32(ecx + 0x474) = esi;
    edx++;
    POP32(esp, esi);
    MEM32(ecx + 0x468) = edx;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00032465: ;
    MEM32(ecx + 0x524) = edx;
    MEM32(ecx + 0x538) = eax;
    MEM32(ecx + 0x528) = 0;
    edx = MEM32(0x4A0D94);
    POP32(esp, edi);
    MEM32(ecx + 0x540) = esi;
    edx++;
    POP32(esp, esi);
    MEM32(ecx + 0x534) = edx;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00032492: ;
    MEM32(ecx + 0x5B4) = edx;
    MEM32(ecx + 0x5C8) = eax;
    MEM32(ecx + 0x5B8) = 0;
    edx = MEM32(0x4A0D94);
    POP32(esp, edi);
    MEM32(ecx + 0x5CC) = esi;
    edx++;
    POP32(esp, esi);
    MEM32(ecx + 0x5C4) = edx;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_000324BF: ;
    MEM32(ecx + 0x610) = edx;
    MEM32(ecx + 0x624) = eax;
    MEM32(ecx + 0x614) = 0;
    edx = MEM32(0x4A0D94);
    edx++;
    MEM32(ecx + 0x620) = edx;
    MEM32(ecx + 0x628) = esi;

loc_000324E8: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_00032500
 * Original: 0x00032500 - 0x00032540 (64 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032500(void)
{

loc_00032500: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x73C);
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x734) = edx;
    edx = MEM32(0x4A0D94);
    edx++;
    MEM32(eax + 0x738) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x73C) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032540
 * Original: 0x00032540 - 0x00032570 (48 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032540(void)
{

loc_00032540: ;
    eax = MEM32(esp + 4);
    ecx = 0; /* xor self */
    MEM32(eax + 0x6C) = ecx;
    MEM32(eax + 0x78) = ecx;
    MEM32(eax + 0x7C) = ecx;
    MEM32(eax + 0x80) = ecx;
    ecx = MEM32(eax + 0x94);
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x94) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032570
 * Original: 0x00032570 - 0x000325C0 (80 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032570(void)
{

loc_00032570: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x94);
    edx = 0; /* xor self */
    MEM32(eax + 0x6C) = 1;
    MEM32(eax + 0x78) = edx;
    MEM32(eax + 0x7C) = edx;
    MEM32(eax + 0x80) = edx;
    edx = MEM32(ecx + 4);
    MEM32(eax) = edx;
    edx = MEM32(ecx + 8);
    MEM32(eax + 4) = edx;
    edx = MEM32(ecx + 0xC);
    MEM32(eax + 8) = edx;
    MEM32(eax + 0xC) = 0x3F800000;
    MEM32(eax + 0x54) = eax;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x94) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000325C0
 * Original: 0x000325C0 - 0x00032640 (128 bytes, 44 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000325C0(void)
{

loc_000325C0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x94);
    MEM32(eax + 0x6C) = 2;
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x78) = edx;
    edx = 0; /* xor self */
    MEM32(eax + 0x7C) = edx;
    MEM32(eax + 0x80) = edx;
    edx = MEM32(ecx + 8);
    MEM32(eax + 0x74) = edx;
    edx = MEM32(ecx + 0xC);
    MEM32(eax) = edx;
    edx = MEM32(ecx + 0x10);
    MEM32(eax + 4) = edx;
    edx = MEM32(ecx + 0x14);
    MEM32(eax + 8) = edx;
    MEM32(eax + 0xC) = 0x3F800000;
    MEM32(eax + 0x54) = eax;
    PUSH32(esp, edi);
    edi = MEM32(ecx + 0x18);
    edx = eax + 0x30;
    MEM32(edx) = edi;
    edi = MEM32(ecx + 0x1C);
    MEM32(eax + 0x34) = edi;
    edi = MEM32(ecx + 0x20);
    MEM32(eax + 0x38) = edi;
    MEM32(eax + 0x3C) = 0x3F800000;
    MEM32(eax + 0x58) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x94) = ecx;
    eax = 1;
    POP32(esp, edi);
    esp += 4; return; /* ret */

}

/**
 * sub_00032640
 * Original: 0x00032640 - 0x000326F0 (176 bytes, 60 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032640(void)
{

loc_00032640: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x94);
    MEM32(eax + 0x6C) = 4;
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x78) = edx;
    edx = 0; /* xor self */
    MEM32(eax + 0x7C) = edx;
    MEM32(eax + 0x80) = edx;
    edx = MEM32(ecx + 8);
    MEM32(eax + 0x74) = edx;
    edx = MEM32(ecx + 0xC);
    MEM32(eax) = edx;
    edx = MEM32(ecx + 0x10);
    MEM32(eax + 4) = edx;
    edx = MEM32(ecx + 0x14);
    MEM32(eax + 8) = edx;
    MEM32(eax + 0x54) = eax;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    esi = 0x3F800000;
    MEM32(eax + 0xC) = esi;
    edi = MEM32(ecx + 0x18);
    MEM32(eax + 0x10) = edi;
    edi = MEM32(ecx + 0x1C);
    MEM32(eax + 0x14) = edi;
    edi = MEM32(ecx + 0x20);
    edx = eax + 0x10;
    MEM32(eax + 0x5C) = edx;
    MEM32(eax + 0x18) = edi;
    MEM32(eax + 0x1C) = esi;
    edi = MEM32(ecx + 0x24);
    MEM32(eax + 0x20) = edi;
    edi = MEM32(ecx + 0x28);
    edx = eax + 0x20;
    MEM32(eax + 0x24) = edi;
    edi = MEM32(ecx + 0x2C);
    MEM32(eax + 0x28) = edi;
    MEM32(eax + 0x2C) = esi;
    MEM32(eax + 0x60) = edx;
    edi = MEM32(ecx + 0x30);
    edx = eax + 0x30;
    MEM32(edx) = edi;
    edi = MEM32(ecx + 0x34);
    MEM32(eax + 0x34) = edi;
    edi = MEM32(ecx + 0x38);
    MEM32(eax + 0x38) = edi;
    MEM32(eax + 0x3C) = esi;
    MEM32(eax + 0x58) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    POP32(esp, edi);
    MEM32(eax + 0x94) = ecx;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_000326F0
 * Original: 0x000326F0 - 0x00032760 (112 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000326F0(void)
{
    int _flags = 0; /* fallback flag var */

loc_000326F0: ;
    ecx = MEM32(esp + 4);
    edx = MEM32(ecx + 0x94);
    MEM32(ecx + 0x6C) = 6;
    eax = MEM32(edx + 4);
    MEM32(ecx + 0x78) = eax;
    eax = 0; /* xor self */
    MEM32(ecx + 0x7C) = eax;
    MEM32(ecx + 0x80) = eax;
    eax = MEM32(edx + 8);
    if (CMP_LE(eax, 1)) goto loc_00032731; /* jle: less or equal (signed <=) */

loc_0003271A: ;
    /* cmp eax, 2 - flags set for next jcc */
    eax = MEM32(ecx + 0x98);
    eax = ZX8(MEM8(eax + 0xB0E));
    if (CMP_EQ(eax, 2)) goto loc_0003272E; /* je: equal / zero */

loc_0003272C: ;
    eax = ~eax;

loc_0003272E: ;
    eax = eax & 1;

loc_00032731: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0xF);
    eax = eax + MEM32(edx + 0xC);
    eax = eax << 5;
    eax = eax + 0x47E7D0;
    MEM32(ecx + 0x90) = eax;
    eax = (uint32_t)(int32_t)SMEM16(edx + 2);
    edx = edx + eax * 4;
    MEM32(ecx + 0x94) = edx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032760
 * Original: 0x00032760 - 0x00032800 (160 bytes, 59 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032760(void)
{
    int _flags = 0; /* fallback flag var */

loc_00032760: ;
    ecx = MEM32(esp + 4);
    edx = MEM32(ecx + 0x94);
    eax = MEM32(edx + 4);
    /* test eax, eax - flags set for next jcc */
    PUSH32(esp, esi);
    if (TEST_Z(eax, eax)) goto loc_000327CF; /* je: equal / zero */

loc_00032772: ;
    eax = MEM32(edx + 8);
    if (CMP_LE(eax, 1)) goto loc_00032791; /* jle: less or equal (signed <=) */

loc_0003277A: ;
    /* cmp eax, 2 - flags set for next jcc */
    eax = MEM32(ecx + 0x98);
    eax = ZX8(MEM8(eax + 0xB0E));
    if (CMP_EQ(eax, 2)) goto loc_0003278E; /* je: equal / zero */

loc_0003278C: ;
    eax = ~eax;

loc_0003278E: ;
    eax = eax & 1;

loc_00032791: ;
    esi = MEM32(edx + 0xC);
    if (CMP_GE(esi & esi, 0)) goto loc_000327A9; /* jge: greater or equal (signed >=) */

loc_00032798: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x17);
    esi = 0; /* xor self */
    eax = eax + esi;
    eax = eax << 6;
    eax = eax + 0x4785D0;
    goto loc_000327DA;

loc_000327A9: ;
    if (CMP_GE(esi, 0xF)) goto loc_000327BD; /* jge: greater or equal (signed >=) */

loc_000327AE: ;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x17);
    eax = eax + esi;
    eax = eax << 6;
    eax = eax + 0x4785D0;
    goto loc_000327DA;

loc_000327BD: ;
    esi = MEM32(ecx + 0x98);
    eax = eax << 6;
    eax = esi + eax + 0x670;
    goto loc_000327DA;

loc_000327CF: ;
    eax = MEM32(ecx + 0x98);
    eax = eax + 0x630;

loc_000327DA: ;
    MEM32(ecx + 0x50) = eax;
    eax = (uint32_t)(int32_t)SMEM16(edx + 2);
    edx = edx + eax * 4;
    MEM32(ecx + 0x94) = edx;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00032800
 * Original: 0x00032800 - 0x00032840 (64 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032800(void)
{

loc_00032800: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x94);
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x84) = edx;
    edx = MEM32(0x4A0D94);
    edx++;
    MEM32(eax + 0x88) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x94) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032840
 * Original: 0x00032840 - 0x00032870 (48 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032840(void)
{

loc_00032840: ;
    eax = MEM32(esp + 4);
    ecx = 0; /* xor self */
    MEM32(eax + 0x34) = ecx;
    MEM32(eax + 0x3C) = ecx;
    MEM32(eax + 0x40) = ecx;
    MEM32(eax + 0x44) = ecx;
    ecx = MEM32(eax + 0x54);
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032870
 * Original: 0x00032870 - 0x000328A0 (48 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032870(void)
{

loc_00032870: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x54);
    edx = 0; /* xor self */
    MEM32(eax + 0x3C) = edx;
    MEM32(eax + 0x40) = edx;
    MEM32(eax + 0x44) = edx;
    edx = ecx + 4;
    MEM32(eax + 0x34) = 1;
    MEM32(eax + 0x1C) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000328A0
 * Original: 0x000328A0 - 0x000328E0 (64 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000328A0(void)
{

loc_000328A0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x54);
    MEM32(eax + 0x34) = 2;
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x3C) = edx;
    edx = 0; /* xor self */
    MEM32(eax + 0x40) = edx;
    MEM32(eax + 0x44) = edx;
    edx = MEM32(ecx + 8);
    MEM32(eax + 0x38) = edx;
    edx = ecx + 0xC;
    MEM32(eax + 0x1C) = edx;
    edx = ecx + 0x10;
    MEM32(eax + 0x20) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000328E0
 * Original: 0x000328E0 - 0x00032930 (80 bytes, 29 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000328E0(void)
{

loc_000328E0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x54);
    MEM32(eax + 0x34) = 4;
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x3C) = edx;
    edx = 0; /* xor self */
    MEM32(eax + 0x40) = edx;
    MEM32(eax + 0x44) = edx;
    edx = MEM32(ecx + 8);
    MEM32(eax + 0x38) = edx;
    edx = ecx + 0xC;
    MEM32(eax + 0x1C) = edx;
    edx = ecx + 0x10;
    MEM32(eax + 0x24) = edx;
    edx = ecx + 0x14;
    MEM32(eax + 0x28) = edx;
    edx = ecx + 0x18;
    MEM32(eax + 0x20) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_00032930
 * Original: 0x00032930 - 0x000329A0 (112 bytes, 39 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00032930(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00032930: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x54);
    MEM32(eax + 0x34) = 2;
    edx = MEM32(ecx + 4);
    edx++;
    MEM32(eax + 0x3C) = edx;
    MEM32(eax + 0x40) = 1;
    MEM32(eax + 0x44) = 0;
    edx = MEM32(ecx + 8);
    MEM32(eax + 0x38) = edx;
    edx = MEM32(eax + 0x2C);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    MEM32(eax + 0x1C) = eax;
    esi = MEM32(edx);
    MEM32(eax) = esi;
    MEM32(esp + 0xC) = esi;
    esi = MEM32(eax + 0x58);
    SET_LO8(ebx, MEM8(esi + 0x740));
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_00032985; /* je: equal / zero */

loc_00032976: ;
    esi = esi + 0x34;
    if (CMP_NE(esi, edx)) goto loc_00032985; /* jne: not equal / not zero */

loc_0003297D: ;
    fp_push(MEMF(esp + 0xC)); /* fld float */
    fp_top() = -fp_top(); /* fchs */
    MEMF(eax) = (float)fp_top(); fp_popp(); /* fstp */

loc_00032985: ;
    edx = ecx + 0xC;
    MEM32(eax + 0x20) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    POP32(esp, esi);
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_000329A0
 * Original: 0x000329A0 - 0x000329C0 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000329A0(void)
{

loc_000329A0: ;
    ecx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x54);
    edx = (uint32_t)(int32_t)SMEM16(eax + 2);
    eax = eax + edx * 4;
    MEM32(ecx + 0x54) = eax;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000329C0
 * Original: 0x000329C0 - 0x000329F0 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000329C0(void)
{

loc_000329C0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x54);
    edx = MEM32(ecx + 4);
    MEM32(eax + 0x48) = edx;
    edx = MEM32(0x4A0D94);
    edx++;
    MEM32(eax + 0x4C) = edx;
    edx = (uint32_t)(int32_t)SMEM16(ecx + 2);
    ecx = ecx + edx * 4;
    MEM32(eax + 0x54) = ecx;
    eax = 1;
    esp += 4; return; /* ret */

}

/**
 * sub_000346A0
 * Original: 0x000346A0 - 0x00034A70 (976 bytes, 291 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000346A0(void)
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

loc_000346A0: ;
    esp = esp - 0x50;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_000346AD: ;
    esi = MEM32(esp + 0x60);
    ebx = MEM32(esi + 0x73C);
    eax = MEM32(ebx + 4);
    edi = 0; /* xor self */
    /* cmp eax, 5 - flags set for next jcc */
    MEM32(esp + 0x14) = ebx;
    if (CMP_A(eax, 5)) goto loc_000348ED; /* ja: above (unsigned >) */

loc_000346C9: ;
    { uint32_t _jt = MEM32(eax * 4 + 0x34A54); /* switch: 6 entries, 6 targets */
    if (_jt == 0x000346D0u) goto loc_000346D0;
    if (_jt == 0x000346F5u) goto loc_000346F5;
    if (_jt == 0x000348C3u) goto loc_000348C3;
    if (_jt == 0x000348E6u) goto loc_000348E6;
    if (_jt == 0x00034918u) goto loc_00034918;
    if (_jt == 0x00034951u) goto loc_00034951;
    g_seh_ebp = ebp; RECOMP_ITAIL(_jt); return; }

loc_000346D0: ;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 0xB0E));
    eax = eax & 1;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    edi = (uint32_t)(int32_t)SMEM8(eax + 0x484C82);
    /* test edi, edi - flags set for next jcc */
    SET_LO8(ecx, (TEST_NZ(edi, edi)) ? 1 : 0); /* setne */
    MEM8(esi + 0x744) = LO8(ecx);
    goto loc_00034A15;

loc_000346F5: ;
    edx = 0; /* xor self */
    SET_LO8(edx, MEM8(esi + 0xB0E));
    PUSH32(esp, ebp);
    edx = edx & 1;
    edx = (uint32_t)((int32_t)edx * (int32_t)0x68);
    edx = edx + 0x484C48;
    ebp = edx;
    eax = ZX16(MEM16(ebp + 0x2E));
    ecx = ZX8(MEM8(ebp + 1));
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000251E0(); /* call 0x000251E0 */

loc_0003471B: ;
    esp = esp + 8;
    /* test eax, eax - flags set for next jcc */
    MEM32(esp + 0x64) = eax;
    if (TEST_NZ(eax, eax)) goto loc_00034765; /* jne: not equal / not zero */

loc_00034726: ;
    edx = MEM32(0x484C4C);
    eax = MEM32(0x484C50);
    ecx = MEM32(0x484C54);
    MEM32(esp + 0x40) = edx;
    edx = MEM32(0x484CB4);
    MEM32(esp + 0x44) = eax;
    eax = MEM32(0x484CB8);
    MEM32(esp + 0x48) = ecx;
    ecx = MEM32(0x484CBC);
    MEM32(esp + 0x30) = edx;
    MEM32(esp + 0x34) = eax;
    MEM32(esp + 0x38) = ecx;
    goto loc_00034807;

loc_00034765: ;
    ebx = ZX8(MEM8(esi + 0xB0E));
    edx = MEM32(0x48A2D4);
    ebx = ebx << 0xF;
    ebx = ebx | 0x4000;
    ebx = ebx + edx;
    ebx = ebx & 0xFFFF;
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_00034788: ;
    edx = MEM32(ebp + 0xC);
    ecx = MEM32(ebp + 4);
    PUSH32(esp, edx);
    eax = edx;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000D3C40(); /* call 0x000D3C40 */

loc_00034798: ;
    edx = MEM32(ebp + 4);
    MEMF(esp + 4) = (float)fp_top(); fp_popp(); /* fstp */
    esp = esp + 4;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_000347A8: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_000347AE: ;
    SET_LO8(eax, MEM8(ebp + 0x3A));
    esp = esp + 0x10;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000347CF; /* je: equal / zero */

loc_000347B8: ;
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0x3F800000);
    PUSH32(esp, 0xBF800000u);
    PUSH32(esp, 0); sub_001544D0(); /* call 0x001544D0 */

loc_000347CC: ;
    esp = esp + 0xC;

loc_000347CF: ;
    /* test MEM8(esi + 0xB0E), 1 - flags set for next jcc */
    ebx = MEM32(esp + 0x64);
    ecx = ebx + 8;
    if (TEST_NZ(MEM8(esi + 0xB0E), 1)) goto loc_000347EE; /* jne: not equal / not zero */

loc_000347DF: ;
    edx = esp + 0x40;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_000347E8: ;
    edx = esp + 0x30;
    goto loc_000347FB;

loc_000347EE: ;
    edx = esp + 0x30;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_000347F7: ;
    edx = esp + 0x40;

loc_000347FB: ;
    ecx = ebx + 0x18;
    PUSH32(esp, 0); sub_00154750(); /* call 0x00154750 */

loc_00034803: ;
    ebx = MEM32(esp + 0x18);

loc_00034807: ;
    eax = esp + 0x50;
    PUSH32(esp, eax);
    ecx = esp + 0x24;
    PUSH32(esp, ecx);
    edx = esp + 0x38;
    PUSH32(esp, edx);
    eax = esp + 0x4C;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00033250(); /* call 0x00033250 */

loc_00034820: ;
    ecx = MEM32(esp + 0x38);
    edx = MEM32(esp + 0x30);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    eax = esp + 0x2C;
    PUSH32(esp, eax);
    ecx = esp + 0x2C;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000D60F0(); /* call 0x000D60F0 */

loc_00034839: ;
    esp = esp + 0x20;
    /* cmp eax, 8 - flags set for next jcc */
    POP32(esp, ebp);
    if (CMP_L(eax, 8)) goto loc_000348B4; /* jl: less (signed <) */

loc_00034842: ;
    if (CMP_EQ(eax, 8)) goto loc_000348B4; /* je: equal / zero */

loc_00034844: ;
    if (CMP_EQ(eax, 0xA)) goto loc_000348B4; /* je: equal / zero */

loc_00034849: ;
    if (CMP_EQ(eax, 0xC)) goto loc_000348B4; /* je: equal / zero */

loc_0003484E: ;
    if (CMP_EQ(eax, 0xE)) goto loc_000348B4; /* je: equal / zero */

loc_00034853: ;
    if (CMP_EQ(eax, 0x10)) goto loc_000348B4; /* je: equal / zero */

loc_00034858: ;
    if (CMP_EQ(eax, 0x14)) goto loc_000348B4; /* je: equal / zero */

loc_0003485D: ;
    if (CMP_EQ(eax, 0x16)) goto loc_000348B4; /* je: equal / zero */

loc_00034862: ;
    edx = MEM32(esp + 0x54);
    eax = MEM32(esp + 0x4C);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    ecx = esp + 0x20;
    PUSH32(esp, ecx);
    edx = esp + 0x18;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000D60F0(); /* call 0x000D60F0 */

loc_0003487B: ;
    fp_push(MEMF(esp + 0x20)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(esp + 0x28)) ? -1 : (fp_top() > (double)MEMF(esp + 0x28)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [esp + 0x28] */
    esp = esp + 0x10;
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (5)))) goto loc_00034897; /* jp: parity */

loc_0003488D: ;
    SET_LO8(eax, MEM8(esi + 0x741));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000348AF; /* je: equal / zero */

loc_00034897: ;
    fp_push(MEMF(esp + 0x18)); /* fld float */
    _fpu_cmp = (fp_top() < (double)MEMF(esp + 0x10)) ? -1 : (fp_top() > (double)MEMF(esp + 0x10)) ? 1 : 0; fp_popp(); /* fcomp dword ptr [esp + 0x10] */
    SET_HI8(eax, (_fpu_cmp < 0 ? 0x01 : 0) | (_fpu_cmp == 0 ? 0x40 : 0)); /* fnstsw ax */
    if ((X86_PF8((HI8(eax)) & (5)))) goto loc_000348B4; /* jp: parity */

loc_000348A6: ;
    if (CMP_NE(MEM8(esi + 0x741), 1)) goto loc_000348B4; /* jne: not equal / not zero */

loc_000348AF: ;
    edi = 1;

loc_000348B4: ;
    /* test edi, edi - flags set for next jcc */
    SET_LO8(eax, (TEST_Z(edi, edi)) ? 1 : 0); /* sete */
    SET_LO8(eax, LO8(eax) - 1);
    eax = eax & 2;
    goto loc_00034A0F;

loc_000348C3: ;
    edx = (uint32_t)(int32_t)SMEM8(esi + 0x741);
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 0xB0E));
    ecx = ecx & 1;
    ecx = ecx ^ edx;
    SET_LO8(eax, ((ecx == 0)) ? 1 : 0); /* sete */
    SET_LO8(eax, LO8(eax) - 1);
    edi = ecx;
    eax = eax & 4;
    goto loc_00034A0F;

loc_000348E6: ;
    MEM8(esi + 0x744) = 0;

loc_000348ED: ;
    ecx = (uint32_t)(int32_t)SMEM16(ebx + 2);
    eax = MEM32(esi + 0x73C);
    ecx = ecx << 2;
    eax = eax + ecx;
    MEM32(esi + 0x73C) = eax;

loc_00034902: ;
    ecx = 1;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_0003490C: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x50;
    esp += 4; return; /* ret */

loc_00034918: ;
    edi = (uint32_t)(int32_t)SMEM8(esi + 0x741);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 0xB0E));
    eax = eax & 1;
    edi = edi ^ eax;
    edi = (uint32_t)(-(int32_t)edi);
    _cf = ((edi) != 0); /* CF from neg */
    edi = _cf ? 0xFFFFFFFF : 0; /* sbb self (CF extend) */
    eax = (uint32_t)((int32_t)eax * (int32_t)0x68);
    ecx = (uint32_t)(int32_t)SMEM8(eax + 0x484C82);
    edi = (uint32_t)(-(int32_t)edi);
    edi = edi ^ ecx;
    SET_LO8(edx, ((edi == 0)) ? 1 : 0); /* sete */
    SET_LO8(edx, LO8(edx) - 1);
    edx = edx & 0x10;
    MEM8(esi + 0x744) = LO8(edx);
    goto loc_00034A15;

loc_00034951: ;
    fp_push(MEMF(0x484CB4)); /* fld float */
    edx = esp + 0x10;
    fp_top() = fp_top() + (double)MEMF(0x484C4C); /* fadd mem */
    fp_push(MEMF(0x484CBC)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(0x484C54); /* fadd mem */
    { double _t = fp_top(); fp_top() = g_fp_stack[(g_fp_top + 0) & 7]; g_fp_stack[(g_fp_top + 0) & 7] = _t; } /* fxch st(0) */
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    MEMF(esp + 0x1C) = (float)fp_top(); fp_popp(); /* fstp */
    ecx = MEM32(esp + 0x1C);
    fp_top() = fp_top() * (double)MEMF(0x1ED480); /* fmul mem */
    MEMF(esp + 0x24) = (float)fp_top(); fp_popp(); /* fstp */
    eax = MEM32(esp + 0x24);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    eax = esp + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000D60F0(); /* call 0x000D60F0 */

loc_00034998: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 0xB0E));
    esp = esp + 0x10;
    ecx = ecx & 1;
    ecx = ecx << 0xF;
    edx = ecx;
    ecx = MEM32(esp + 0xC);
    ecx = ecx - edx;
    ecx = ecx - MEM32(0x48A2D4);
    ecx = ecx - 0x4000;
    ecx = ecx & 0xFFFF;
    /* cmp ecx, 0x4000 - flags set for next jcc */
    MEM32(esp + 0xC) = ecx;
    if (CMP_LE(ecx, 0x4000)) goto loc_000349D7; /* jle: less or equal (signed <=) */

loc_000349CF: ;
    if (CMP_L(ecx, 0xC000)) goto loc_00034A03; /* jl: less (signed <) */

loc_000349D7: ;
    if (CMP_L(eax, 8)) goto loc_00034A03; /* jl: less (signed <) */

loc_000349DC: ;
    if (CMP_EQ(eax, 8)) goto loc_00034A03; /* je: equal / zero */

loc_000349DE: ;
    if (CMP_EQ(eax, 0xA)) goto loc_00034A03; /* je: equal / zero */

loc_000349E3: ;
    if (CMP_EQ(eax, 0xC)) goto loc_00034A03; /* je: equal / zero */

loc_000349E8: ;
    if (CMP_EQ(eax, 0xE)) goto loc_00034A03; /* je: equal / zero */

loc_000349ED: ;
    if (CMP_EQ(eax, 0x10)) goto loc_00034A03; /* je: equal / zero */

loc_000349F2: ;
    if (CMP_EQ(eax, 0x14)) goto loc_00034A03; /* je: equal / zero */

loc_000349F7: ;
    if (CMP_EQ(eax, 0x16)) goto loc_00034A03; /* je: equal / zero */

loc_000349FC: ;
    edi = 1;
    goto loc_00034A05;

loc_00034A03: ;
    edi = 0; /* xor self */

loc_00034A05: ;
    /* test edi, edi - flags set for next jcc */
    SET_LO8(eax, (TEST_Z(edi, edi)) ? 1 : 0); /* sete */
    SET_LO8(eax, LO8(eax) - 1);
    eax = eax & 0x20;

loc_00034A0F: ;
    MEM8(esi + 0x744) = LO8(eax);

loc_00034A15: ;
    if (TEST_Z(edi, edi)) goto loc_000348ED; /* je: equal / zero */

loc_00034A1D: ;
    eax = MEM32(ebx + 8);
    if (TEST_S(eax, eax)) goto loc_00034A38; /* jl: less (signed <) */

loc_00034A24: ;
    ecx = MEM32(0x2D1CAC);
    edx = MEM32(ecx + eax * 4);
    MEM32(esi + 0x73C) = edx;
    goto loc_00034902;

loc_00034A38: ;
    eax = (uint32_t)(int32_t)SMEM16(ebx + 2);
    ecx = MEM32(esi + 0x73C);
    eax = eax << 2;
    ecx = ecx + eax;
    MEM32(esi + 0x73C) = ecx;
    goto loc_00034902;

    edi = edi;
    MEM8(esi + 3) = ROL32(MEM8(esi + 3), 1);
    SET_HI8(ecx, HI8(ecx) + HI8(edx));
    esi++;
    eax = eax + MEM32(eax);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_000C7420
 * Original: 0x000C7420 - 0x000C7830 (1040 bytes, 372 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C7420(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000C7420: ;
    esp = esp - 0x14;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x28);
    ebx = (uint32_t)(int32_t)SMEM8(esi + 0x12);
    SET_LO16(eax, MEM16(ebx * 8 + 0x86132C));
    SET_LO8(ecx, LO8(ecx) | 0xFF);
    /* test LO8(eax), 4 - flags set for next jcc */
    PUSH32(esp, edi);
    MEM32(esp + 0x20) = ebx;
    MEM8(esp + 0x14) = 0;
    MEM8(esp + 0x12) = 0;
    if (TEST_Z(LO8(eax), 4)) goto loc_000C7450; /* je: equal / zero */

loc_000C744C: ;
    MEM8(esp + 0x14) = LO8(ecx);

loc_000C7450: ;
    if (TEST_Z(LO8(eax), 8)) goto loc_000C7459; /* je: equal / zero */

loc_000C7454: ;
    MEM8(esp + 0x14) = 1;

loc_000C7459: ;
    if (TEST_Z(LO8(eax), 1)) goto loc_000C7461; /* je: equal / zero */

loc_000C745D: ;
    MEM8(esp + 0x12) = LO8(ecx);

loc_000C7461: ;
    if (TEST_Z(LO8(eax), 2)) goto loc_000C746A; /* je: equal / zero */

loc_000C7465: ;
    MEM8(esp + 0x12) = 1;

loc_000C746A: ;
    SET_LO8(ecx, MEM8(esp + 0x14));
    /* test LO8(ecx), LO8(ecx) - flags set for next jcc */
    SET_LO8(eax, MEM8(esi + 0x16));
    ebp = MEM32(esp + 0x28);
    MEM8(esp + 0x13) = LO8(eax);
    if (TEST_NZ(LO8(ecx), LO8(ecx))) goto loc_000C7489; /* jne: not equal / not zero */

loc_000C747D: ;
    SET_LO8(ecx, MEM8(esp + 0x12));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_000C75FF; /* je: equal / zero */

loc_000C7489: ;
    edi = SX8(LO8(eax));
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C7491: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    ecx = eax;
    eax = edi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    ecx = (uint32_t)((int32_t)ecx >> 1);
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    MEM8(esp + 0x2C) = LO8(edx);
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C74A6: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    ecx = eax;
    eax = edi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    ecx = (uint32_t)((int32_t)ecx >> 1);
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    SET_LO8(ebx, LO8(eax));
    MEM8(esp + 0x11) = LO8(ebx);
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C74BD: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    ecx = eax;
    ecx = (uint32_t)((int32_t)ecx >> 1);
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_000C74F7; /* je: equal / zero */

loc_000C74C8: ;
    eax = (uint32_t)(int32_t)SMEM8(esp + 0x14);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edi = SX8(LO8(ecx));
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    SET_LO8(eax, MEM8(esp + 0x2C));
    SET_LO8(eax, LO8(eax) + LO8(edx));
    /* cmp LO8(eax), LO8(ecx) - flags set for next jcc */
    MEM8(esp + 0x2C) = LO8(eax);
    if (CMP_L(LO8(eax), LO8(ecx))) goto loc_000C74ED; /* jl: less (signed <) */

loc_000C74E1: ;
    eax = SX8(LO8(eax));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    MEM8(esp + 0x2C) = LO8(edx);
    goto loc_000C74F7;

loc_000C74ED: ;
    if (CMP_GE(LO8(eax) & LO8(eax), 0)) goto loc_000C74F7; /* jge: greater or equal (signed >=) */

loc_000C74F1: ;
    SET_LO8(eax, LO8(eax) + LO8(ecx));
    MEM8(esp + 0x2C) = LO8(eax);

loc_000C74F7: ;
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C74FC: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    edi = eax;
    edi = (uint32_t)((int32_t)edi >> 1);
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C7508: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    SET_LO8(ecx, LO8(eax));
    if (TEST_Z(LO8(ecx), LO8(ecx))) goto loc_000C753E; /* je: equal / zero */

loc_000C7511: ;
    eax = (uint32_t)(int32_t)SMEM8(esp + 0x12);
    edi = SX8(LO8(ecx));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    SET_LO8(ebx, LO8(ebx) + LO8(edx));
    /* cmp LO8(ebx), LO8(ecx) - flags set for next jcc */
    MEM8(esp + 0x11) = LO8(ebx);
    if (CMP_L(LO8(ebx), LO8(ecx))) goto loc_000C7534; /* jl: less (signed <) */

loc_000C7526: ;
    eax = SX8(LO8(ebx));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    MEM8(esp + 0x11) = LO8(edx);
    SET_LO8(ebx, LO8(edx));
    goto loc_000C753E;

loc_000C7534: ;
    if (CMP_GE(LO8(ebx) & LO8(ebx), 0)) goto loc_000C753E; /* jge: greater or equal (signed >=) */

loc_000C7538: ;
    SET_LO8(ebx, LO8(ebx) + LO8(ecx));
    MEM8(esp + 0x11) = LO8(ebx);

loc_000C753E: ;
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C7543: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    eax = (uint32_t)((int32_t)eax >> 1);
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)LO8(ebx);
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    SET_LO8(ebx, LO8(eax));
    SET_LO8(ebx, LO8(ebx) + MEM8(esp + 0x2C));
    PUSH32(esp, esi);
    MEM8(esp + 0x1C) = LO8(ebx);
    PUSH32(esp, 0); sub_000C5050(); /* call 0x000C5050 */

loc_000C755A: ;
    edx = MEM32(esp + 0x1C);
    MEM8(esp + 0x20) = LO8(eax);
    eax = MEM32(esp + 0x20);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    edi = esp + 0x1E;
    PUSH32(esp, 0); sub_000C6380(); /* call 0x000C6380 */

loc_000C7571: ;
    esp = esp + 0xC;
    if (TEST_Z(eax, eax)) goto loc_000C75EC; /* je: equal / zero */

loc_000C7578: ;
    if (CMP_NE(MEM8(0x47E723), 0xA)) goto loc_000C7590; /* jne: not equal / not zero */

loc_000C7581: ;
    SET_LO8(edx, MEM8(esp + 0x12));
    ecx = SX8(LO8(ebx));
    MEM8(esi + 0x16) = LO8(ebx);
    MEM8(ecx + esi) = LO8(edx);
    goto loc_000C75EF;

loc_000C7590: ;
    SET_LO8(eax, MEM8(esp + 0x14));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000C75AF; /* je: equal / zero */

loc_000C7598: ;
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C759D: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    ebx = eax;
    eax = MEM32(esp + 0x14);
    ebx = (uint32_t)((int32_t)ebx >> 1);
    PUSH32(esp, eax);
    ecx = esp + 0x30;
    goto loc_000C75CB;

loc_000C75AF: ;
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C75B4: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    edi = eax;
    edi = (uint32_t)((int32_t)edi >> 1);
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C75C0: ;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    PUSH32(esp, 1);
    ecx = esp + 0x15;
    SET_LO8(ebx, LO8(eax));

loc_000C75CB: ;
    PUSH32(esp, 0); sub_000D0470(); /* call 0x000D0470 */

loc_000C75D0: ;
    esp = esp + 4;
    PUSH32(esp, 0); sub_000C7BB0(); /* call 0x000C7BB0 */

loc_000C75D8: ;
    SET_LO8(ecx, MEM8(esp + 0x2C));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    eax = eax - edx;
    eax = (uint32_t)((int32_t)eax >> 1);
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)MEM8(esp + 0x11);
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    SET_LO8(eax, LO8(eax) + LO8(ecx));
    MEM8(esi + 0x16) = LO8(eax);
    goto loc_000C75EF;

loc_000C75EC: ;
    MEM8(esi + 0x16) = LO8(ebx);

loc_000C75EF: ;
    PUSH32(esp, 0);
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_000C6780(); /* call 0x000C6780 */

loc_000C75F8: ;
    ebx = MEM32(esp + 0x2C);
    esp = esp + 0xC;

loc_000C75FF: ;
    SET_LO8(ecx, MEM8(esp + 0x13));
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 0x16));
    if (CMP_EQ(LO8(eax), LO8(ecx))) goto loc_000C76D3; /* je: equal / zero */

loc_000C7610: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000C7BE0(); /* call 0x000C7BE0 */

loc_000C7616: ;
    PUSH32(esp, esi);
    MEM8(esi + 0x14) = LO8(eax);
    PUSH32(esp, 0); sub_000C5050(); /* call 0x000C5050 */

loc_000C761F: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 0x16));
    SET_LO8(ebx, LO8(eax));
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000C7BE0(); /* call 0x000C7BE0 */

loc_000C762C: ;
    esp = esp + 0xC;
    if (CMP_EQ(LO8(eax), 0xFF)) goto loc_000C7663; /* je: equal / zero */

loc_000C7633: ;
    edx = 0; /* xor self */
    SET_LO8(edx, MEM8(esi + 0x16));
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_000C7BE0(); /* call 0x000C7BE0 */

loc_000C763E: ;
    esp = esp + 4;
    if (CMP_EQ(LO8(eax), 0xFE)) goto loc_000C7663; /* je: equal / zero */

loc_000C7645: ;
    ebp = ZX8(LO8(ebx));
    edi = ebp;
    edi = edi << 5;
    PUSH32(esp, 0);
    ecx = esi;
    MEM8(edi + 0x860FF7) = 0;
    PUSH32(esp, 0); sub_000C64C0(); /* call 0x000C64C0 */

loc_000C765D: ;
    MEM8(esi + 0x31) = 0;
    goto loc_000C7688;

loc_000C7663: ;
    ebp = ZX8(LO8(ebx));
    edi = ebp;
    edi = edi << 5;
    ecx = edi + 0x860FF0;
    PUSH32(esp, 0); sub_000C8C50(); /* call 0x000C8C50 */

loc_000C7676: ;
    MEM8(edi + 0x860FF6) = 1;
    MEM8(edi + 0x860FF7) = 1;
    MEM8(esi + 0x31) = 1;

loc_000C7688: ;
    eax = 0; /* xor self */
    PUSH32(esp, eax);
    MEM8(edi + 0x86100D) = 0;
    PUSH32(esp, 0x23);
    MEM32(esi + 0x24) = eax;
    MEM32(esi + 0x20) = eax;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C769F: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000C51C0(); /* call 0x000C51C0 */

loc_000C76A5: ;
    esp = esp + 0xC;
    ebp = ebp & 0x80000001u;
    if (((int32_t)ebp >= 0)) goto loc_000C76B5; /* jns: not sign (positive) */

loc_000C76B0: ;
    ebp--;
    ebp = ebp | 0xFFFFFFFEu;
    ebp++;

loc_000C76B5: ;
    edx = ZX8(LO8(eax));
    SET_LO8(eax, MEM8(esi + 0x14));
    POP32(esp, edi);
    POP32(esp, esi);
    ecx = ebp + ebp * 4;
    POP32(esp, ebp);
    MEM8(ecx + edx + 0x4705C4) = LO8(eax);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_000C76D3: ;
    edi = 0; /* xor self */
    SET_LO16(edi, MEM16(ebx * 8 + 0x86132A));
    if (TEST_Z(edi, 0xD10)) goto loc_000C7754; /* je: equal / zero */

loc_000C76E5: ;
    ecx = MEM32(esi + 0x20);
    if (CMP_G(ecx & ecx, 0)) goto loc_000C7754; /* jg: greater (signed >) */

loc_000C76EC: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_000C7BE0(); /* call 0x000C7BE0 */

loc_000C76F2: ;
    esp = esp + 4;
    /* cmp LO8(eax), 0xFE - flags set for next jcc */
    PUSH32(esp, 0);
    if (CMP_NE(LO8(eax), 0xFE)) goto loc_000C770F; /* jne: not equal / not zero */

loc_000C76FB: ;
    PUSH32(esp, 0x29);
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C7702: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_000C770F: ;
    PUSH32(esp, 0x24);
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C7716: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 0x16));
    edi = 1;
    MEM32(esi + 0x20) = edi;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000C7BE0(); /* call 0x000C7BE0 */

loc_000C7729: ;
    esp = esp + 0xC;
    if (CMP_NE(LO8(eax), 0xFF)) goto loc_000C7747; /* jne: not equal / not zero */

loc_000C7730: ;
    PUSH32(esp, 0);
    PUSH32(esp, ebp);
    SET_LO8(eax, LO8(ebx));
    PUSH32(esp, 0); sub_000C7200(); /* call 0x000C7200 */

loc_000C773A: ;
    esp = esp + 8;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_000C7747: ;
    MEM32(esi + 0x34) = edi;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_000C7754: ;
    edi = edi & 0x220;
    if (TEST_Z(LO16(edi), LO16(edi))) goto loc_000C77B1; /* je: equal / zero */

loc_000C775F: ;
    SET_LO8(eax, MEM8(esi + 0x19));
    if (CMP_BE(LO8(eax) & LO8(eax), 0)) goto loc_000C77B1; /* jbe: below or equal (unsigned <=) */

loc_000C7766: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_000C5CC0(); /* call 0x000C5CC0 */

loc_000C776D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_000C77B1; /* jne: not equal / not zero */

loc_000C7774: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000C5050(); /* call 0x000C5050 */

loc_000C777A: ;
    SET_LO8(ebx, LO8(eax));
    esp = esp + 4;
    eax = ebp;
    PUSH32(esp, 0); sub_000C5B10(); /* call 0x000C5B10 */

loc_000C7786: ;
    if (TEST_Z(eax, eax)) goto loc_000C77ED; /* je: equal / zero */

loc_000C778A: ;
    if (CMP_NE(MEM8(0x47E723), 0xA)) goto loc_000C779E; /* jne: not equal / not zero */

loc_000C7793: ;
    PUSH32(esp, 0);
    ecx = esi;
    PUSH32(esp, 0); sub_000C64C0(); /* call 0x000C64C0 */

loc_000C779C: ;
    goto loc_000C77ED;

loc_000C779E: ;
    ecx = ZX8(LO8(ebx));
    ecx = ecx << 5;
    ecx = ecx + 0x860FF0;
    PUSH32(esp, 0); sub_000C8C50(); /* call 0x000C8C50 */

loc_000C77AF: ;
    goto loc_000C77ED;

loc_000C77B1: ;
    if (CMP_NE(MEM8(0x47E723), 0xA)) goto loc_000C781C; /* jne: not equal / not zero */

loc_000C77BA: ;
    if (TEST_Z(LO16(edi), LO16(edi))) goto loc_000C781C; /* je: equal / zero */

loc_000C77BF: ;
    SET_LO8(eax, MEM8(esi + 0x19));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_000C781C; /* jne: not equal / not zero */

loc_000C77C6: ;
    ecx = (uint32_t)(int32_t)SMEM8(esi + 0x1A);
    ecx = ecx << 5;
    ecx = ecx + 0x860FF0;
    PUSH32(esp, 0); sub_000C8C50(); /* call 0x000C8C50 */

loc_000C77D8: ;
    ecx = (uint32_t)(int32_t)SMEM8(esi + 0x1A);
    ecx = ecx << 5;
    MEM8(ecx + 0x860FF6) = 1;
    MEM32(esi + 0x34) = 3;

loc_000C77ED: ;
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
    PUSH32(esp, 0x29);
    MEM32(esi + 0x20) = edx;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C7819: ;
    esp = esp + 8;

loc_000C781C: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 1;
    POP32(esp, ebx);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

}

/**
 * sub_000C7830
 * Original: 0x000C7830 - 0x000C7990 (352 bytes, 117 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000C7830(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000C7830: ;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x18);
    ebx = (uint32_t)(int32_t)SMEM8(esi + 0x12);
    SET_LO16(eax, MEM16(ebx * 8 + 0x86132C));
    /* test LO8(eax), 1 - flags set for next jcc */
    MEM8(esp + 0x18) = 0;
    if (TEST_Z(LO8(eax), 1)) goto loc_000C7852; /* je: equal / zero */

loc_000C784D: ;
    MEM8(esp + 0x18) = 0xFF;

loc_000C7852: ;
    /* test LO8(eax), 2 - flags set for next jcc */
    ebp = MEM32(esp + 0x14);
    if (TEST_Z(LO8(eax), 2)) goto loc_000C7861; /* je: equal / zero */

loc_000C785A: ;
    MEM8(esp + 0x18) = 1;
    goto loc_000C7869;

loc_000C7861: ;
    SET_LO8(eax, MEM8(esp + 0x18));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_000C78E1; /* je: equal / zero */

loc_000C7869: ;
    if (CMP_NE(MEM8(0x47E723), 0xA)) goto loc_000C789D; /* jne: not equal / not zero */

loc_000C7872: ;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 0x16));
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 0x1A));
    PUSH32(esp, edi);
    edi = esp + 0x13;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_000C6380(); /* call 0x000C6380 */

loc_000C7888: ;
    esp = esp + 8;
    /* test eax, eax - flags set for next jcc */
    POP32(esp, edi);
    if (TEST_Z(eax, eax)) goto loc_000C789D; /* je: equal / zero */

loc_000C7890: ;
    edx = (uint32_t)(int32_t)SMEM8(esi + 0x16);
    SET_LO8(eax, MEM8(esp + 0xF));
    MEM8(edx + esi) = LO8(eax);
    goto loc_000C78E1;

loc_000C789D: ;
    ecx = (uint32_t)(int32_t)SMEM8(esp + 0x18);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_000C6780(); /* call 0x000C6780 */

loc_000C78AA: ;
    esp = esp + 0xC;
    if (CMP_NE(eax, 1)) goto loc_000C78E1; /* jne: not equal / not zero */

loc_000C78B2: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_000C5050(); /* call 0x000C5050 */

loc_000C78B8: ;
    edx = ZX8(LO8(eax));
    edx = edx << 5;
    PUSH32(esp, 0);
    PUSH32(esp, 0x23);
    MEM8(edx + 0x86100D) = 0;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C78CE: ;
    esp = esp + 0xC;
    PUSH32(esp, 0);
    ecx = esi;
    PUSH32(esp, 0); sub_000C64C0(); /* call 0x000C64C0 */

loc_000C78DA: ;
    MEM32(esi + 0x28) = 0;

loc_000C78E1: ;
    if (TEST_Z(MEM16(ebx * 8 + 0x86132A), 0x220)) goto loc_000C7923; /* je: equal / zero */

loc_000C78ED: ;
    MEM32(esi + 0x34) = 0;
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
    PUSH32(esp, 0x29);
    MEM32(esi + 0x20) = edx;
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C7920: ;
    esp = esp + 8;

loc_000C7923: ;
    if (TEST_Z(MEM16(ebx * 8 + 0x86132A), 0xD10)) goto loc_000C7980; /* je: equal / zero */

loc_000C792F: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0x24);
    PUSH32(esp, 0); sub_0009FD00(); /* call 0x0009FD00 */

loc_000C7938: ;
    ecx = (uint32_t)(int32_t)SMEM8(esi + 0x16);
    SET_LO8(ecx, MEM8(ecx + esi));
    SET_LO8(eax, MEM8(esi + 0x14));
    edx = ebx;
    PUSH32(esp, 0); sub_000C5350(); /* call 0x000C5350 */

loc_000C7949: ;
    MEM8(esp + 0x20) = LO8(eax);
    edx = MEM32(esp + 0x20);
    PUSH32(esp, edx);
    PUSH32(esp, ebp);
    SET_LO8(eax, LO8(ebx));
    PUSH32(esp, 0); sub_000C7200(); /* call 0x000C7200 */

loc_000C795A: ;
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
    esp = esp + 0x10;
    edx = edx + eax;
    MEM32(esi + 0x20) = edx;

loc_000C7980: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 1;
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_00079CE0
 * Original: 0x00079CE0 - 0x00079D20 (64 bytes, 30 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00079CE0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00079CE0: ;
    PUSH32(esp, 0); sub_000745A0(); /* call 0x000745A0 */

loc_00079CE5: ;
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_0009E562(); /* call 0x0009E562 */

loc_00079CEC: ;
    SET_LO8(eax, MEM8(0x47E764));
    esp = esp + 4;
    if (CMP_NE(LO8(eax), 3)) goto loc_00079CFF; /* jne: not equal / not zero */

loc_00079CF8: ;
    PUSH32(esp, 0); sub_00077190(); /* call 0x00077190 */

loc_00079CFD: ;
    goto loc_00079CE5;

loc_00079CFF: ;
    if (CMP_NE(LO8(eax), 2)) goto loc_00079D0A; /* jne: not equal / not zero */

loc_00079D03: ;
    PUSH32(esp, 0); sub_000746B0(); /* call 0x000746B0 */

loc_00079D08: ;
    goto loc_00079CE5;

loc_00079D0A: ;
    PUSH32(esp, 0); sub_00079C50(); /* call 0x00079C50 */

loc_00079D0F: ;
    goto loc_00079CE5;

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
    /* nop */

}

/**
 * sub_000745A0
 * Original: 0x000745A0 - 0x000746B0 (272 bytes, 62 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_000745A0(void)
{

loc_000745A0: ;
    PUSH32(esp, ebx);
    SET_LO8(ebx, 0); /* xor self */
    MEM8(0x47AD35) = LO8(ebx);
    MEM8(0x480814) = LO8(ebx);
    PUSH32(esp, 0); sub_0002D030(); /* call 0x0002D030 */

loc_000745B4: ;
    PUSH32(esp, 0); sub_0006E950(); /* call 0x0006E950 */

loc_000745B9: ;
    PUSH32(esp, 5);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745C0: ;
    PUSH32(esp, 6);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745C7: ;
    PUSH32(esp, 7);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745CE: ;
    PUSH32(esp, 8);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745D5: ;
    PUSH32(esp, 9);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745DC: ;
    PUSH32(esp, 0xA);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745E3: ;
    PUSH32(esp, 0xB);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745EA: ;
    PUSH32(esp, 0xD);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745F1: ;
    PUSH32(esp, 0xC);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745F8: ;
    PUSH32(esp, 0xE);
    PUSH32(esp, 0); sub_0009E4D3(); /* call 0x0009E4D3 */

loc_000745FF: ;
    esp = esp + 0x28;
    MEM8(0x484D69) = LO8(ebx);
    MEM32(0x4A04D0) = 0x3C;
    PUSH32(esp, 0); sub_0006E250(); /* call 0x0006E250 */

loc_00074617: ;
    SET_LO8(eax, MEM8(0x47E764));
    SET_LO8(edx, MEM8(0x48899F));
    MEM8(0x4A04C4) = LO8(edx);
    SET_LO8(edx, MEM8(0x484CB3));
    MEM8(0x4A0391) = LO8(eax);
    SET_LO8(eax, 0xFF);
    MEM8(0x4A0389) = LO8(ebx);
    MEM8(0x4A03A6) = LO8(ebx);
    MEM8(0x4A0370) = LO8(ebx);
    SET_LO8(ebx, MEM8(0x484C4B));
    MEM8(0x4705C2) = LO8(eax);
    MEM8(0x4A04B4) = LO8(eax);
    SET_LO8(eax, 2);
    SET_LO8(edx, LO8(edx) & LO8(eax));
    SET_LO8(ebx, LO8(ebx) & LO8(eax));
    SET_LO8(edx, LO8(edx) + 1);
    MEM8(0x484CB3) = LO8(edx);
    MEM8(0x484CAE) = MEM8(0x484CAE) & LO8(eax);
    SET_LO8(edx, MEM8(0x484D16));
    SET_LO8(edx, LO8(edx) & LO8(eax));
    ecx = 1;
    SET_LO8(edx, LO8(edx) + 1);
    MEM8(0x484C4B) = LO8(ebx);
    MEM32(0x4A0474) = 5;
    MEM8(0x47E727) = 5;
    MEM8(0x4A04D6) = LO8(ecx);
    MEM8(0x484D16) = LO8(edx);
    MEM32(0x491D78) = ecx;
    MEM32(0x4A04D8) = 0x331378;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}
