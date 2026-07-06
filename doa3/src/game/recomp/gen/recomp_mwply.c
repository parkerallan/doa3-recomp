/**
 * DOA3 - mwPly vtable functions the detector merged into neighbors
 * (movie open/status family; see CLAUDE.md item 44). Re-emitted
 * standalone. RE-GENERATE after any pipeline regen.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

/**
 * sub_00176E60
 * Original: 0x00176E60 - 0x00176E90 (48 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00176E60(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00176E60: ;
    edx = MEM32(0xB28B0C);
    eax = MEM32(0xC0F770);
    edx++;
    eax++;
    MEM32(0xC0F770) = eax;
    /* cmp MEM32(0xB28B08), 1 - flags set for next jcc */
    MEM32(0xB28B0C) = edx;
    if (CMP_NE(MEM32(0xB28B08), 1)) goto loc_00176E86; /* jne: not equal / not zero */

loc_00176E81: ;
    g_seh_ebp = ebp; sub_0017C8D0(); return; /* tail jmp 0x0017C8D0 */

loc_00176E86: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00176ED0
 * Original: 0x00176ED0 - 0x00176F30 (96 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00176ED0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00176ED0: ;
    eax = MEM32(esp + 4);
    eax = MEM32(eax + 0x30);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    PUSH32(esp, edi);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017EB80(); /* call 0x0017EB80 */

loc_00176EE9: ;
    esp = esp + 0xC;
    if (TEST_Z(eax, eax)) goto loc_00176F13; /* je: equal / zero */

loc_00176EF0: ;
    PUSH32(esp, 0x217C44);
    MEM32(0xC0F74C) = 0xFFFFFECBu;
    PUSH32(esp, 0); sub_00177910(); /* call 0x00177910 */

loc_00176F04: ;
    MEM32(esi) = 0;
    esp = esp + 4;
    MEM32(edi) = 1;

loc_00176F13: ;
    if (CMP_GE(MEM32(esi), 0)) goto loc_00176F24; /* jge: greater or equal (signed >=) */

loc_00176F18: ;
    MEM32(esi) = 0;
    MEM32(edi) = 1;

loc_00176F24: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00176FB0
 * Original: 0x00176FB0 - 0x00176FE0 (48 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00176FB0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00176FB0: ;
    g_seh_ebp = ebp; sub_0017EBD0(); return; /* tail jmp 0x0017EBD0 */

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
    g_seh_ebp = ebp; sub_0017EBE0(); return; /* tail jmp 0x0017EBE0 */

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
    g_seh_ebp = ebp; sub_0017EBF0(); return; /* tail jmp 0x0017EBF0 */

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
 * sub_00177670
 * Original: 0x00177670 - 0x001776A0 (48 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00177670(void)
{
    int _flags = 0; /* fallback flag var */

loc_00177670: ;
    eax = MEM32(esp + 8);
    if (TEST_NZ(eax, eax)) goto loc_00177686; /* jne: not equal / not zero */

loc_00177678: ;
    PUSH32(esp, 0x217ED0);
    PUSH32(esp, 0); sub_00177910(); /* call 0x00177910 */

loc_00177682: ;
    esp = esp + 4;
    esp += 4; return; /* ret */

loc_00177686: ;
    PUSH32(esp, 0xFFFFFFFFu);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    eax = MEM32(esp + 0x10);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00177270(); /* call 0x00177270 */

loc_00177695: ;
    esp = esp + 0x10;
    esp += 4; return; /* ret */

}

/**
 * sub_001782A0
 * Original: 0x001782A0 - 0x001782C0 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001782A0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001782A0: ;
    edx = MEM32(esp + 4);
    eax = MEM32(edx + 0x3BAC);
    MEM32(esp + 4) = eax;
    g_seh_ebp = ebp; sub_00169AF0(); return; /* tail jmp 0x00169AF0 */

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
 * sub_001782C0
 * Original: 0x001782C0 - 0x001782E0 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001782C0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001782C0: ;
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

}

/**
 * sub_001782E0
 * Original: 0x001782E0 - 0x00178300 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001782E0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001782E0: ;
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

}

/**
 * sub_00178300
 * Original: 0x00178300 - 0x00178320 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178300(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178300: ;
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

}

/**
 * sub_00178320
 * Original: 0x00178320 - 0x00178370 (80 bytes, 32 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178320(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00178320: ;
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
 * sub_00178A20
 * Original: 0x00178A20 - 0x00178C20 (512 bytes, 189 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178A20(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178A20: ;
    eax = MEM32(esp + 0x10);
    esp = esp - 0xC;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    MEM32(eax) = 0;
    eax = MEM32(edi + 0x6004);
    /* test eax, eax - flags set for next jcc */
    ecx = edi + 0xA94;
    if (TEST_Z(eax, eax)) goto loc_00178AA8; /* je: equal / zero */

loc_00178A42: ;
    edx = MEM32(edi + 0x3BEC);
    if (CMP_G(edx & edx, 0)) goto loc_00178AA8; /* jg: greater (signed >) */

loc_00178A4C: ;
    eax = eax + 0xCFC;
    if (TEST_Z(eax, eax)) goto loc_00178AA8; /* je: equal / zero */

loc_00178A55: ;
    PUSH32(esp, ebx);
    ebx = MEM32(eax + 0xC);
    PUSH32(esp, ebp);
    ebp = MEM32(eax + 0x10);
    PUSH32(esp, esi);
    PUSH32(esp, ebp);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_0017DCD0(); /* call 0x0017DCD0 */

loc_00178A65: ;
    esi = eax;
    esp = esp + 8;
    /* test esi, esi - flags set for next jcc */
    MEM32(esp + 0x20) = esi;
    if (TEST_S(esi, esi)) goto loc_00178C0A; /* jl: less (signed <) */

loc_00178A76: ;
    PUSH32(esp, 5);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_00178A7E: ;
    esp = esp + 8;
    /* test eax, eax - flags set for next jcc */
    eax = edi + 0xA94;
    if (TEST_NZ(eax, eax)) goto loc_00178AB7; /* jne: not equal / not zero */

loc_00178A8B: ;
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017DD70(); /* call 0x0017DD70 */

loc_00178A93: ;
    esp = esp + 0xC;
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    MEM32(edi + 0x3BE8) = 0x178430;
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_00178AA8: ;
    MEM32(edi + 0x3BE8) = 0x178430;
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_00178AB7: ;
    ecx = esp + 0x10;
    PUSH32(esp, ecx);
    PUSH32(esp, ebp);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017DD10(); /* call 0x0017DD10 */

loc_00178AC3: ;
    esi = eax;
    esp = esp + 0xC;
    if (TEST_S(esi, esi)) goto loc_00178C0A; /* jl: less (signed <) */

loc_00178AD0: ;
    PUSH32(esp, ebp);
    eax = edi + 0xA94;
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017DD70(); /* call 0x0017DD70 */

loc_00178ADE: ;
    ecx = MEM32(edi + 0x3BE4);
    eax = MEM32(esp + 0x2C);
    ebp = 0; /* xor self */
    esi = esi - ecx;
    esp = esp + 0xC;
    esi = esi - eax;
    MEM32(esp + 0x14) = ebp;
    if (((int32_t)esi < 0)) goto loc_00178BB5; /* js: sign (negative) */

loc_00178AFB: ;
    eax = esi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 0x1F;
    eax = eax + edx;
    eax = (uint32_t)((int32_t)eax >> 5);
    eax = (uint32_t)((int32_t)eax * (int32_t)ebx);
    esi = eax + eax * 8;
    esi = esi << 1;
    /* cmp esi, ebp - flags set for next jcc */
    MEM32(esp + 0x20) = ebp;
    if (CMP_LE(esi, ebp)) goto loc_00178B61; /* jle: less or equal (signed <=) */

loc_00178B16: ;
    eax = MEM32(esp + 0x28);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    ebp = ebx + ebx * 8;
    ebp = ebp << 1;
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ebp));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ebp)); }
    eax = (uint32_t)((int32_t)eax * (int32_t)ebx);
    eax = eax + eax * 8;
    eax = eax << 1;
    /* cmp eax, esi - flags set for next jcc */
    ebx = eax;
    if (CMP_L(eax, esi)) goto loc_00178B32; /* jl: less (signed <) */

loc_00178B30: ;
    ebx = esi;

loc_00178B32: ;
    eax = MEM32(esp + 0x24);
    edx = esp + 0x20;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001784F0(); /* call 0x001784F0 */

loc_00178B40: ;
    MEM32(esp + 0x18) = eax;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ebp));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ebp)); }
    edx = MEM32(edi + 0x3BE4);
    esi = esi - ebx;
    esp = esp + 4;
    eax = eax << 5;
    edx = edx + eax;
    /* test esi, esi - flags set for next jcc */
    MEM32(edi + 0x3BE4) = edx;
    if (CMP_G(esi & esi, 0)) goto loc_00178B8E; /* jg: greater (signed >) */

loc_00178B61: ;
    eax = MEM32(esp + 0x10);
    if (TEST_Z(eax, eax)) goto loc_00178B8E; /* je: equal / zero */

loc_00178B69: ;
    ecx = MEM32(esp + 0x28);
    edx = MEM32(esp + 0x24);
    eax = esp + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    MEM32(edi + 0x3BE8) = 0x178430;
    PUSH32(esp, 0); sub_00169E50(); /* call 0x00169E50 */

loc_00178B87: ;
    esp = esp + 0xC;
    MEM32(esp + 0x20) = eax;

loc_00178B8E: ;
    eax = MEM32(esp + 0x20);
    if (TEST_Z(eax, eax)) goto loc_00178C00; /* je: equal / zero */

loc_00178B96: ;
    PUSH32(esp, 0);
    PUSH32(esp, 6);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D520(); /* call 0x0017D520 */

loc_00178BA0: ;
    eax = MEM32(esp + 0x38);
    ecx = MEM32(esp + 0x20);
    esp = esp + 0xC;
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    MEM32(eax) = ecx;
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_00178BB5: ;
    if (CMP_EQ(MEM32(esp + 0x10), ebp)) goto loc_00178C00; /* je: equal / zero */

loc_00178BBB: ;
    eax = esi;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 0x1F;
    eax = eax + edx;
    eax = (uint32_t)((int32_t)eax >> 5);
    esi = eax;
    esi = (uint32_t)(-(int32_t)esi);
    esi = esi << 5;
    if (CMP_LE(esi, ebp)) goto loc_00178BF6; /* jle: less or equal (signed <=) */

loc_00178BD1: ;
    eax = MEM32(edi + 0x3BAC);
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00169E80(); /* call 0x00169E80 */

loc_00178BDF: ;
    edx = MEM32(edi + 0x3BE4);
    edx = edx - eax;
    esi = esi - eax;
    esp = esp + 0xC;
    /* cmp esi, ebp - flags set for next jcc */
    MEM32(edi + 0x3BE4) = edx;
    if (CMP_G(esi, ebp)) goto loc_00178C00; /* jg: greater (signed >) */

loc_00178BF6: ;
    MEM32(edi + 0x3BE8) = 0x178430;

loc_00178C00: ;
    eax = MEM32(esp + 0x2C);
    ecx = MEM32(esp + 0x14);
    MEM32(eax) = ecx;

loc_00178C0A: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, edi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}

/**
 * sub_00178C20
 * Original: 0x00178C20 - 0x00178CB0 (144 bytes, 56 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178C20(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178C20: ;
    PUSH32(esp, ebp);
    ebp = MEM32(esp + 0x14);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x14);
    /* cmp esi, 0x120 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    MEM32(ebp) = 0;
    if (CMP_L(esi, 0x120)) goto loc_00178CA8; /* jl: less (signed <) */

loc_00178C3E: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0x18);
    eax = esp + 0x20;
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169DE0(); /* call 0x00169DE0 */

loc_00178C4F: ;
    esp = esp + 0xC;
    if (TEST_Z(eax, eax)) goto loc_00178C6C; /* je: equal / zero */

loc_00178C56: ;
    eax = MEM32(esp + 0x20);
    POP32(esp, ebx);
    MEM32(edi + 0x3BE8) = 0x178A20;
    POP32(esp, edi);
    POP32(esp, esi);
    MEM32(ebp) = eax;
    POP32(esp, ebp);
    esp += 4; return; /* ret */

loc_00178C6C: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017FCE0(); /* call 0x0017FCE0 */

loc_00178C72: ;
    esp = esp + 4;
    if (CMP_L(eax, 0x6C)) goto loc_00178C8E; /* jl: less (signed <) */

loc_00178C7A: ;
    POP32(esp, ebx);
    MEM32(edi + 0x3BE8) = 0x178A20;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    MEM32(ebp) = eax;
    POP32(esp, ebp);
    esp += 4; return; /* ret */

loc_00178C8E: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00178540(); /* call 0x00178540 */

loc_00178C95: ;
    esp = esp + 8;
    eax = eax - ebx;
    MEM32(edi + 0x3BE8) = 0x178A20;
    MEM32(ebp) = eax;
    POP32(esp, ebx);

loc_00178CA8: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    esp += 4; return; /* ret */

}

/**
 * sub_00178CB0
 * Original: 0x00178CB0 - 0x00179070 (960 bytes, 365 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178CB0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178CB0: ;
    eax = MEM32(esp + 0x10);
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 8);
    PUSH32(esp, ebx);
    MEM32(eax) = 0;
    PUSH32(esp, 0); sub_0017FCE0(); /* call 0x0017FCE0 */

loc_00178CC5: ;
    esp = esp + 4;
    if (CMP_L(eax, 0x6C)) goto loc_00178CD9; /* jl: less (signed <) */

loc_00178CCD: ;
    MEM32(ebx + 0x3BE8) = 0x178C20;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00178CD9: ;
    edx = MEM32(esp + 0x10);
    edx = edx + 0xFFFFFFEEu;
    eax = 0; /* xor self */
    if (CMP_LE(edx & edx, 0)) goto loc_00178D1D; /* jle: less or equal (signed <=) */

loc_00178CE6: ;
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    /* nop */

loc_00178CF0: ;
    esi = MEM32(esp + 0x18);
    esi = esi + eax;
    ecx = 9;
    edi = 0x218004;
    ebp = 0; /* xor self */
    { uint32_t _ca=0,_cb=0; while (ecx != 0) { _ca=(uint16_t)MEM16(esi); _cb=(uint16_t)MEM16(edi); esi+=2; edi+=2; ecx--; if (!(_ca == _cb)) break; } g_str_a=_ca; g_str_b=_cb; } /* repe cmpsw */
    if ((g_str_a != g_str_b)) goto loc_00178D10; /* jne: not equal / not zero */

loc_00178D07: ;
    eax = eax + 0x12;
    if (CMP_L(eax, edx)) goto loc_00178CF0; /* jl: less (signed <) */

loc_00178D0E: ;
    goto loc_00178D1A;

loc_00178D10: ;
    MEM32(ebx + 0x3BE8) = 0x178C20;

loc_00178D1A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);

loc_00178D1D: ;
    ecx = MEM32(esp + 0x14);
    MEM32(ecx) = eax;
    ecx = MEM32(ebx + 0x6004);
    if (TEST_Z(ecx, ecx)) goto loc_00178D5D; /* je: equal / zero */

loc_00178D2D: ;
    edx = MEM32(ebx + 0x3BEC);
    if (CMP_G(edx & edx, 0)) goto loc_00178D5D; /* jg: greater (signed >) */

loc_00178D37: ;
    ecx = ecx + 0xCFC;
    if (TEST_Z(ecx, ecx)) goto loc_00178D5D; /* je: equal / zero */

loc_00178D41: ;
    ecx = MEM32(ecx + 0xC);
    ecx = ecx + ecx * 8;
    ecx = ecx << 1;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    ecx = MEM32(ebx + 0x3BE4);
    eax = eax << 5;
    ecx = ecx + eax;
    MEM32(ebx + 0x3BE4) = ecx;

loc_00178D5D: ;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178D76; /* jne: not equal / not zero */

loc_00178D74: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178D76: ;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = esi + 0x3BAC;
    PUSH32(esp, esi);
    eax = edi;
    PUSH32(esp, 0); sub_00178620(); /* call 0x00178620 */

loc_00178D86: ;
    esp = esp + 4;
    if (TEST_NZ(eax, eax)) goto loc_00178E54; /* jne: not equal / not zero */

loc_00178D91: ;
    eax = MEM32(edi + 0x1C);
    ecx = MEM32(edi + 0x20);
    edx = MEM32(edi + 0x14);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_0016A130(); /* call 0x0016A130 */

loc_00178DA2: ;
    ebx = eax;
    esp = esp + 0xC;
    if (TEST_Z(ebx, ebx)) goto loc_00178DE0; /* je: equal / zero */

loc_00178DAB: ;
    PUSH32(esp, 0);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169BB0(); /* call 0x00169BB0 */

loc_00178DB3: ;
    eax = MEM32(edi + 0xC);
    ecx = MEM32(edi + 8);
    edx = MEM32(edi + 0x10);
    esp = esp + 8;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_0016AE80(); /* call 0x0016AE80 */

loc_00178DC7: ;
    esp = esp + 0xC;
    if (TEST_NZ(eax, eax)) goto loc_00178DF2; /* jne: not equal / not zero */

loc_00178DCE: ;
    PUSH32(esp, 0xFF000C05u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00178DD9: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178DE0: ;
    PUSH32(esp, 0xFF000C04u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00178DEB: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178DF2: ;
    MEM32(edi) = ebx;
    MEM32(edi + 4) = eax;
    ecx = MEM32(ebx + 0xC);
    PUSH32(esp, eax);
    PUSH32(esp, ebx);
    MEM32(esi + 0x53EC) = ecx;
    MEM32(esi + 0x53F0) = 0x1782A0;
    MEM32(esi + 0x53F4) = 0x1782C0;
    MEM32(esi + 0x53F8) = 0x1782E0;
    MEM32(esi + 0x53FC) = 0x178300;
    MEM32(esi + 0x5400) = 0x178320;
    PUSH32(esp, 0); sub_0016A0A0(); /* call 0x0016A0A0 */

loc_00178E39: ;
    edx = MEM32(edi);
    PUSH32(esp, 1);
    PUSH32(esp, edx);
    MEM32(edi + 0x2C) = 1;
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178E4A: ;
    esp = esp + 0x10;
    PUSH32(esp, 0); sub_00178950(); /* call 0x00178950 */

loc_00178E52: ;
    eax = 0; /* xor self */

loc_00178E54: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

    eax = MEM32(eax + 0x3BAC);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178E82: ;
    esp = esp + 8;

loc_00178E85: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

    eax--;
    if ((eax == 0)) goto loc_00178F16; /* je: equal / zero */

loc_00178EAC: ;
    eax--;
    if ((eax != 0)) goto loc_00178F50; /* jne: not equal / not zero */

loc_00178EB3: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_0016D5D0(); /* call 0x0016D5D0 */

loc_00178EB9: ;
    esp = esp + 4;
    if (TEST_Z(eax, eax)) goto loc_00178F50; /* je: equal / zero */

loc_00178EC4: ;
    if (CMP_EQ(eax, 1)) goto loc_00178F50; /* je: equal / zero */

loc_00178ECD: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169AB0(); /* call 0x00169AB0 */

loc_00178ED4: ;
    esi = eax;
    eax = esp + 0x14;
    PUSH32(esp, eax);
    ecx = esp + 0x1C;
    PUSH32(esp, ecx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017E080(); /* call 0x0017E080 */

loc_00178EE6: ;
    edx = MEM32(esp + 0x20);
    eax = MEM32(esp + 0x24);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017FBD0(); /* call 0x0017FBD0 */

loc_00178EF6: ;
    esi = MEM32(edi + 0x3BDC);
    esi = esi + eax;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169D50(); /* call 0x00169D50 */

loc_00178F05: ;
    esp = esp + 0x24;
    esi = esi - eax;
    MEM32(edi + 0x3BDC) = esi;
    POP32(esp, esi);
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00178F16: ;
    ecx = MEM32(edi + 0x3BAC);
    PUSH32(esp, 1);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178F24: ;
    esp = esp + 8;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00178F2C: ;
    MEM32(edi + 0x3BDC) = 0;
    if (CMP_EQ(MEM32(edi + 0x3BD8), 1)) goto loc_00178F50; /* je: equal / zero */

loc_00178F3F: ;
    edx = MEM32(edi + 0x3BAC);
    PUSH32(esp, 0);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178F4D: ;
    esp = esp + 8;

loc_00178F50: ;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

    ecx = MEM32(esi + 0x3BEC);
    if (CMP_G(ecx & ecx, 0)) goto loc_00178FCA; /* jg: greater (signed >) */

loc_00178F79: ;
    eax = eax + 0xCFC;
    if (TEST_Z(eax, eax)) goto loc_00178FCA; /* je: equal / zero */

loc_00178F82: ;
    ecx = MEM32(esi + 0x3BE0);
    /* test ecx, ecx - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x3BAC);
    if (TEST_NZ(ecx, ecx)) goto loc_00178FC9; /* jne: not equal / not zero */

loc_00178F93: ;
    if (CMP_EQ(MEM32(eax), 0)) goto loc_00178FC9; /* je: equal / zero */

loc_00178F98: ;
    ecx = MEM32(eax + 0x14);
    edx = MEM32(eax + 0x10);
    eax = MEM32(eax + 0xC);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00196A30(); /* call 0x00196A30 */

loc_00178FAA: ;
    PUSH32(esp, 0);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00169DC0(); /* call 0x00169DC0 */

loc_00178FB2: ;
    esp = esp + 0x18;
    MEM32(esi + 0x3BE0) = 1;
    MEM32(esi + 0x3BE8) = 0x178CB0;

loc_00178FC9: ;
    POP32(esp, edi);

loc_00178FCA: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    MEM32(esp + 8) = 0xFF000701u;
    g_seh_ebp = ebp; sub_0017C6A0(); return; /* tail jmp 0x0017C6A0 */

    /* nop */
    /* nop */
    /* nop */
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 0x40);
    if (CMP_EQ(eax, 3)) goto loc_00179010; /* je: equal / zero */

loc_00178FFD: ;
    if (CMP_EQ(eax, 4)) goto loc_00179010; /* je: equal / zero */

loc_00179002: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax) = 0;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00179010: ;
    eax = MEM32(esi + 0x53B0);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    PUSH32(esp, edi);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EE50(); /* call 0x0017EE50 */

loc_00179023: ;
    esp = esp + 0xC;
    if (TEST_NZ(eax, eax)) goto loc_0017903E; /* jne: not equal / not zero */

loc_0017902A: ;
    ecx = MEM32(edi);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EAD0(); /* call 0x0017EAD0 */

loc_00179033: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017903C; /* jne: not equal / not zero */

loc_0017903A: ;
    MEM32(edi) = eax;

loc_0017903C: ;
    eax = 0; /* xor self */

loc_0017903E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

    esp = esp + 0xC;
    esp += 4; return; /* ret */

}

/**
 * sub_0017B9A0
 * Original: 0x0017B9A0 - 0x0017B9B0 (16 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B9A0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0017B9A0: ;
    g_seh_ebp = ebp; sub_0017C6A0(); return; /* tail jmp 0x0017C6A0 */

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
 * sub_00169AF0
 * Original: 0x00169AF0 - 0x00169B30 (64 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00169AF0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00169AF0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    edx = MEM32(esp + 0xC);
    PUSH32(esp, esi);
    MEM16(eax + ecx * 2 + 0x42) = LO16(edx);
    esi = (uint32_t)(int32_t)SMEM8(eax + 3);
    /* cmp ecx, esi - flags set for next jcc */
    uint32_t _d14_1167_a = (uint32_t)(ecx), _d14_1167_b = (uint32_t)(esi); /* bug14 hoist */
    POP32(esp, esi);
    if (CMP_GE(_d14_1167_a, _d14_1167_b)) goto loc_00169B1F; /* jge: greater or equal (signed >=) */

loc_00169B0B: ;
    eax = MEM32(eax + 0xC);
    MEM32(esp + 0xC) = edx;
    MEM32(esp + 8) = ecx;
    MEM32(esp + 4) = eax;
    g_seh_ebp = ebp; sub_0016DFD0(); return; /* tail jmp 0x0016DFD0 */

loc_00169B1F: ;
    PUSH32(esp, 0x215ED4);
    PUSH32(esp, 0); sub_0016B6F0(); /* call 0x0016B6F0 */

loc_00169B29: ;
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_00178110
 * Original: 0x00178110 - 0x00178140 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178110(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178110: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017811D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178126; /* jne: not equal / not zero */

loc_00178124: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178126: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    PUSH32(esp, 5);
    PUSH32(esp, 3);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F710(); /* call 0x0017F710 */

loc_00178134: ;
    esp = esp + 0x14;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00178140
 * Original: 0x00178140 - 0x00178170 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178140(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178140: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017814D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178156; /* jne: not equal / not zero */

loc_00178154: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178156: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    PUSH32(esp, 6);
    PUSH32(esp, 3);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F710(); /* call 0x0017F710 */

loc_00178164: ;
    esp = esp + 0x14;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00178170
 * Original: 0x00178170 - 0x001781A0 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178170(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178170: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017817D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178186; /* jne: not equal / not zero */

loc_00178184: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178186: ;
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    PUSH32(esp, 7);
    PUSH32(esp, 3);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F710(); /* call 0x0017F710 */

loc_00178194: ;
    esp = esp + 0x14;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001781A0
 * Original: 0x001781A0 - 0x001781D0 (48 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001781A0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001781A0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_001781AD: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_001781B6; /* jne: not equal / not zero */

loc_001781B4: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_001781B6: ;
    eax = MEM32(esp + 0xC);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, 8);
    PUSH32(esp, 3);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017F710(); /* call 0x0017F710 */

loc_001781C7: ;
    esp = esp + 0x14;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001781D0
 * Original: 0x001781D0 - 0x001781F0 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001781D0(void)
{

loc_001781D0: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000A01u);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_001781DF: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}

/**
 * sub_001783C0
 * Original: 0x001783C0 - 0x001783E0 (32 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001783C0(void)
{

loc_001783C0: ;
    PUSH32(esp, 0); sub_0016A360(); /* call 0x0016A360 */

loc_001783C5: ;
    PUSH32(esp, 0); sub_00196A10(); /* call 0x00196A10 */

loc_001783CA: ;
    PUSH32(esp, 7);
    PUSH32(esp, 0);
    PUSH32(esp, 0xBDCC88);
    PUSH32(esp, 0); sub_0017FB10(); /* call 0x0017FB10 */

loc_001783D8: ;
    esp = esp + 0xC;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_001783E0
 * Original: 0x001783E0 - 0x001783F0 (16 bytes, 7 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001783E0(void)
{

loc_001783E0: ;
    PUSH32(esp, 0); sub_00196A20(); /* call 0x00196A20 */

loc_001783E5: ;
    PUSH32(esp, 0); sub_0016A3F0(); /* call 0x0016A3F0 */

loc_001783EA: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_00178D60
 * Original: 0x00178D60 - 0x00178E60 (256 bytes, 92 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178D60(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178D60: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_00178D6D: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_00178D76; /* jne: not equal / not zero */

loc_00178D74: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178D76: ;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = esi + 0x3BAC;
    PUSH32(esp, esi);
    eax = edi;
    PUSH32(esp, 0); sub_00178620(); /* call 0x00178620 */

loc_00178D86: ;
    esp = esp + 4;
    if (TEST_NZ(eax, eax)) goto loc_00178E54; /* jne: not equal / not zero */

loc_00178D91: ;
    eax = MEM32(edi + 0x1C);
    ecx = MEM32(edi + 0x20);
    edx = MEM32(edi + 0x14);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_0016A130(); /* call 0x0016A130 */

loc_00178DA2: ;
    ebx = eax;
    esp = esp + 0xC;
    if (TEST_Z(ebx, ebx)) goto loc_00178DE0; /* je: equal / zero */

loc_00178DAB: ;
    PUSH32(esp, 0);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169BB0(); /* call 0x00169BB0 */

loc_00178DB3: ;
    eax = MEM32(edi + 0xC);
    ecx = MEM32(edi + 8);
    edx = MEM32(edi + 0x10);
    esp = esp + 8;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_0016AE80(); /* call 0x0016AE80 */

loc_00178DC7: ;
    esp = esp + 0xC;
    if (TEST_NZ(eax, eax)) goto loc_00178DF2; /* jne: not equal / not zero */

loc_00178DCE: ;
    PUSH32(esp, 0xFF000C05u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00178DD9: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178DE0: ;
    PUSH32(esp, 0xFF000C04u);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00178DEB: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00178DF2: ;
    MEM32(edi) = ebx;
    MEM32(edi + 4) = eax;
    ecx = MEM32(ebx + 0xC);
    PUSH32(esp, eax);
    PUSH32(esp, ebx);
    MEM32(esi + 0x53EC) = ecx;
    MEM32(esi + 0x53F0) = 0x1782A0;
    MEM32(esi + 0x53F4) = 0x1782C0;
    MEM32(esi + 0x53F8) = 0x1782E0;
    MEM32(esi + 0x53FC) = 0x178300;
    MEM32(esi + 0x5400) = 0x178320;
    PUSH32(esp, 0); sub_0016A0A0(); /* call 0x0016A0A0 */

loc_00178E39: ;
    edx = MEM32(edi);
    PUSH32(esp, 1);
    PUSH32(esp, edx);
    MEM32(edi + 0x2C) = 1;
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178E4A: ;
    esp = esp + 0x10;
    PUSH32(esp, 0); sub_00178950(); /* call 0x00178950 */

loc_00178E52: ;
    eax = 0; /* xor self */

loc_00178E54: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00178E60
 * Original: 0x00178E60 - 0x00178E90 (48 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178E60(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178E60: ;
    eax = MEM32(esp + 4);
    MEM32(eax + 0x3BD8) = 0;
    if (CMP_EQ(MEM32(eax + 0x48), 1)) goto loc_00178E85; /* je: equal / zero */

loc_00178E74: ;
    eax = MEM32(eax + 0x3BAC);
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178E82: ;
    esp = esp + 8;

loc_00178E85: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_00178E90
 * Original: 0x00178E90 - 0x00178F60 (208 bytes, 79 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178E90(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178E90: ;
    eax = MEM32(esp + 8);
    eax = eax - 0;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0xC);
    ebx = MEM32(edi + 0x3BAC);
    if ((eax == 0)) goto loc_00178F2C; /* je: equal / zero */

loc_00178EA9: ;
    eax--;
    if ((eax == 0)) goto loc_00178F16; /* je: equal / zero */

loc_00178EAC: ;
    eax--;
    if ((eax != 0)) goto loc_00178F50; /* jne: not equal / not zero */

loc_00178EB3: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_0016D5D0(); /* call 0x0016D5D0 */

loc_00178EB9: ;
    esp = esp + 4;
    if (TEST_Z(eax, eax)) goto loc_00178F50; /* je: equal / zero */

loc_00178EC4: ;
    if (CMP_EQ(eax, 1)) goto loc_00178F50; /* je: equal / zero */

loc_00178ECD: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169AB0(); /* call 0x00169AB0 */

loc_00178ED4: ;
    esi = eax;
    eax = esp + 0x14;
    PUSH32(esp, eax);
    ecx = esp + 0x1C;
    PUSH32(esp, ecx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017E080(); /* call 0x0017E080 */

loc_00178EE6: ;
    edx = MEM32(esp + 0x20);
    eax = MEM32(esp + 0x24);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017FBD0(); /* call 0x0017FBD0 */

loc_00178EF6: ;
    esi = MEM32(edi + 0x3BDC);
    esi = esi + eax;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00169D50(); /* call 0x00169D50 */

loc_00178F05: ;
    esp = esp + 0x24;
    esi = esi - eax;
    MEM32(edi + 0x3BDC) = esi;
    POP32(esp, esi);
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00178F16: ;
    ecx = MEM32(edi + 0x3BAC);
    PUSH32(esp, 1);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178F24: ;
    esp = esp + 8;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_00178F2C: ;
    MEM32(edi + 0x3BDC) = 0;
    if (CMP_EQ(MEM32(edi + 0x3BD8), 1)) goto loc_00178F50; /* je: equal / zero */

loc_00178F3F: ;
    edx = MEM32(edi + 0x3BAC);
    PUSH32(esp, 0);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00169C60(); /* call 0x00169C60 */

loc_00178F4D: ;
    esp = esp + 8;

loc_00178F50: ;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_00178F60
 * Original: 0x00178F60 - 0x00178FD0 (112 bytes, 38 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178F60(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178F60: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 0x6004);
    if (TEST_Z(eax, eax)) goto loc_00178FCA; /* je: equal / zero */

loc_00178F6F: ;
    ecx = MEM32(esi + 0x3BEC);
    if (CMP_G(ecx & ecx, 0)) goto loc_00178FCA; /* jg: greater (signed >) */

loc_00178F79: ;
    eax = eax + 0xCFC;
    if (TEST_Z(eax, eax)) goto loc_00178FCA; /* je: equal / zero */

loc_00178F82: ;
    ecx = MEM32(esi + 0x3BE0);
    /* test ecx, ecx - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x3BAC);
    if (TEST_NZ(ecx, ecx)) goto loc_00178FC9; /* jne: not equal / not zero */

loc_00178F93: ;
    if (CMP_EQ(MEM32(eax), 0)) goto loc_00178FC9; /* je: equal / zero */

loc_00178F98: ;
    ecx = MEM32(eax + 0x14);
    edx = MEM32(eax + 0x10);
    eax = MEM32(eax + 0xC);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00196A30(); /* call 0x00196A30 */

loc_00178FAA: ;
    PUSH32(esp, 0);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00169DC0(); /* call 0x00169DC0 */

loc_00178FB2: ;
    esp = esp + 0x18;
    MEM32(esi + 0x3BE0) = 1;
    MEM32(esi + 0x3BE8) = 0x178CB0;

loc_00178FC9: ;
    POP32(esp, edi);

loc_00178FCA: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00178FD0
 * Original: 0x00178FD0 - 0x00178FE0 (16 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178FD0_gen(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178FD0: ;
    eax = MEM32(esp + 4);
    g_seh_ebp = ebp; sub_001789B0(); return; /* tail jmp 0x001789B0 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}

/**
 * sub_00178FE0
 * Original: 0x00178FE0 - 0x00178FF0 (16 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178FE0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00178FE0: ;
    MEM32(esp + 8) = 0xFF000701u;
    g_seh_ebp = ebp; sub_0017C6A0(); return; /* tail jmp 0x0017C6A0 */

    /* nop */
    /* nop */
    /* nop */

}

/**
 * sub_00178FF0
 * Original: 0x00178FF0 - 0x00179050 (96 bytes, 49 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00178FF0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00178FF0: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 0x40);
    if (CMP_EQ(eax, 3)) goto loc_00179010; /* je: equal / zero */

loc_00178FFD: ;
    if (CMP_EQ(eax, 4)) goto loc_00179010; /* je: equal / zero */

loc_00179002: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax) = 0;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00179010: ;
    eax = MEM32(esi + 0x53B0);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    PUSH32(esp, edi);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EE50(); /* call 0x0017EE50 */

loc_00179023: ;
    esp = esp + 0xC;
    if (TEST_NZ(eax, eax)) goto loc_0017903E; /* jne: not equal / not zero */

loc_0017902A: ;
    ecx = MEM32(edi);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EAD0(); /* call 0x0017EAD0 */

loc_00179033: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017903C; /* jne: not equal / not zero */

loc_0017903A: ;
    MEM32(edi) = eax;

loc_0017903C: ;
    eax = 0; /* xor self */

loc_0017903E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00179050
 * Original: 0x00179050 - 0x00179070 (32 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00179050(void)
{

loc_00179050: ;
    eax = MEM32(esp + 4);
    edx = MEM32(esp + 8);
    ecx = MEM32(eax + 0x53B0);
    PUSH32(esp, edx);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017EE90(); /* call 0x0017EE90 */

loc_00179066: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}

/**
 * sub_00179230
 * Original: 0x00179230 - 0x00179240 (16 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00179230(void)
{

loc_00179230: ;
    PUSH32(esp, 0); sub_0017EC00(); /* call 0x0017EC00 */

loc_00179235: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_00179CF0
 * Original: 0x00179CF0 - 0x00179D10 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00179CF0(void)
{

loc_00179CF0: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000F0Du);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00179CFF: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}

/**
 * sub_00179E00
 * Original: 0x00179E00 - 0x00179E60 (96 bytes, 39 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00179E00(void)
{
    int _flags = 0; /* fallback flag var */

loc_00179E00: ;
    PUSH32(esp, 0xBDCCA8);
    PUSH32(esp, 8);
    PUSH32(esp, 0); sub_00180680(); /* call 0x00180680 */

loc_00179E0C: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_00179E35; /* je: equal / zero */

loc_00179E13: ;
    ecx = 0; /* xor self */
    /* cmp eax, 0xFF03FF05u - flags set for next jcc */
    SET_LO8(ecx, (CMP_NE(eax, 0xFF03FF05u)) ? 1 : 0); /* setne */
    ecx--;
    ecx = ecx & 0x12;
    ecx = ecx + 0xFF000F01u;
    eax = ecx;
    PUSH32(esp, eax);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_00179E31: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

loc_00179E35: ;
    PUSH32(esp, 9);
    PUSH32(esp, 0);
    PUSH32(esp, 0xBF0CA8);
    PUSH32(esp, 0); sub_0017FB10(); /* call 0x0017FB10 */

loc_00179E43: ;
    esp = esp + 0xC;
    MEM32(0xC0E528) = 0;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_0017B040
 * Original: 0x0017B040 - 0x0017B0A0 (96 bytes, 43 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B040(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017B040: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 8);
    PUSH32(esp, esi);
    eax = esp + 0xC;
    PUSH32(esp, eax);
    esi = ebx + 0x359C;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017AA50(); /* call 0x0017AA50 */

loc_0017B057: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017B091; /* jne: not equal / not zero */

loc_0017B05E: ;
    eax = MEM32(esp + 0xC);
    /* test eax, eax - flags set for next jcc */
    MEM32(esi + 0x2C) = 2;
    if (TEST_Z(eax, eax)) goto loc_0017B088; /* je: equal / zero */

loc_0017B06D: ;
    PUSH32(esp, 0x30);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B075: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017B088; /* je: equal / zero */

loc_0017B07C: ;
    MEM32(esi + 0x30) = 0xC8;
    POP32(esp, esi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_0017B088: ;
    MEM32(esi + 0x30) = 0xC0;
    eax = 0; /* xor self */

loc_0017B091: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_0017B1F0
 * Original: 0x0017B1F0 - 0x0017B2D0 (224 bytes, 101 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B1F0(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017B1F0: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 8);
    PUSH32(esp, 5);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B1FD: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_0017B206; /* jne: not equal / not zero */

loc_0017B204: ;
    POP32(esp, edi);
    esp += 4; return; /* ret */

loc_0017B206: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    ebx = edi + 0x359C;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017AF60(); /* call 0x0017AF60 */

loc_0017B214: ;
    esp = esp + 4;
    if (TEST_NZ(eax, eax)) goto loc_0017B2BD; /* jne: not equal / not zero */

loc_0017B21F: ;
    PUSH32(esp, 0); sub_00180740(); /* call 0x00180740 */

loc_0017B224: ;
    esi = eax;
    if (TEST_NZ(esi, esi)) goto loc_0017B23C; /* jne: not equal / not zero */

loc_0017B22A: ;
    PUSH32(esp, 0xFF000F0Au);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017B235: ;
    esp = esp + 8;
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, edi);
    esp += 4; return; /* ret */

loc_0017B23C: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0x179CD0);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001828A0(); /* call 0x001828A0 */

loc_0017B248: ;
    esp = esp + 0xC;
    if (TEST_Z(eax, eax)) goto loc_0017B267; /* je: equal / zero */

loc_0017B24F: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001805D0(); /* call 0x001805D0 */

loc_0017B255: ;
    PUSH32(esp, 0xFF000F0Bu);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017B260: ;
    esp = esp + 0xC;
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, edi);
    esp += 4; return; /* ret */

loc_0017B267: ;
    PUSH32(esp, 0);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B26F: ;
    PUSH32(esp, eax);
    PUSH32(esp, 1);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B278: ;
    PUSH32(esp, 1);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017B280: ;
    PUSH32(esp, eax);
    PUSH32(esp, 2);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B289: ;
    PUSH32(esp, 0);
    PUSH32(esp, 3);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B293: ;
    PUSH32(esp, 0);
    PUSH32(esp, 4);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B29D: ;
    esp = esp + 0x40;
    PUSH32(esp, 0);
    PUSH32(esp, 5);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B2AA: ;
    eax = MEM32(edi + 0x38);
    PUSH32(esp, eax);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00180610(); /* call 0x00180610 */

loc_0017B2B6: ;
    esp = esp + 0x18;
    MEM32(ebx) = esi;
    eax = 0; /* xor self */

loc_0017B2BD: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, edi);
    esp += 4; return; /* ret */

}

/**
 * sub_0017B6E0
 * Original: 0x0017B6E0 - 0x0017B6F0 (16 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017B6E0(void)
{

loc_0017B6E0: ;
    PUSH32(esp, 0); sub_00182B80(); /* call 0x00182B80 */

loc_0017B6E5: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_0017BB10
 * Original: 0x0017BB10 - 0x0017BC00 (240 bytes, 90 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017BB10(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017BB10: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017BB1D: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017BBA1; /* je: equal / zero */

loc_0017BB24: ;
    /* cmp MEM32(esi + 0x2FB8), 0xFFFFFFFFu - flags set for next jcc */
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    if (CMP_NE(MEM32(esi + 0x2FB8), 0xFFFFFFFFu)) goto loc_0017BB39; /* jne: not equal / not zero */

loc_0017BB33: ;
    MEM32(esi + 0x2FB8) = edi;

loc_0017BB39: ;
    if (CMP_NE(MEM32(esi + 0x2FB0), 0xFFFFFFFFu)) goto loc_0017BB48; /* jne: not equal / not zero */

loc_0017BB42: ;
    MEM32(esi + 0x2FB0) = edi;

loc_0017BB48: ;
    PUSH32(esp, 0x1E);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017BB50: ;
    ebx = eax;
    esp = esp + 8;
    if (CMP_EQ(ebx, 0xFFFFFFFFu)) goto loc_0017BB8F; /* je: equal / zero */

loc_0017BB5A: ;
    PUSH32(esp, 0x37);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_0017BB62: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_0017BB78; /* je: equal / zero */

loc_0017BB69: ;
    ecx = MEM32(esi + 0x2FA8);
    eax = 0; /* xor self */
    /* cmp edi, ecx - flags set for next jcc */
    SET_LO8(eax, (CMP_L(edi, ecx)) ? 1 : 0); /* setl */
    goto loc_0017BB85;

loc_0017BB78: ;
    ecx = MEM32(esi + 0x2FB0);
    eax = 0; /* xor self */
    /* cmp edi, ecx - flags set for next jcc */
    SET_LO8(eax, (CMP_EQ(edi, ecx)) ? 1 : 0); /* sete */

loc_0017BB85: ;
    if (TEST_Z(eax, eax)) goto loc_0017BB8F; /* je: equal / zero */

loc_0017BB89: ;
    MEM32(esi + 0x2FB8) = ebx;

loc_0017BB8F: ;
    eax = MEM32(esi + 0x2FB8);
    MEM32(esi + 0x2FA8) = edi;
    /* cmp eax, edi - flags set for next jcc */
    uint32_t _d14_2269_a = (uint32_t)(eax), _d14_2269_b = (uint32_t)(edi); /* bug14 hoist */
    POP32(esp, edi);
    POP32(esp, ebx);
    if (CMP_EQ(_d14_2269_a, _d14_2269_b)) goto loc_0017BBA8; /* je: equal / zero */

loc_0017BBA1: ;
    eax = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017BBA8: ;
    eax = MEM32(esp + 0x18);
    if (TEST_S(eax, eax)) goto loc_0017BBD6; /* jl: less (signed <) */

loc_0017BBB0: ;
    edx = MEM32(esi + 0x2F98);
    if (CMP_GE(eax, edx)) goto loc_0017BBBC; /* jge: greater or equal (signed >=) */

loc_0017BBBA: ;
    edx = eax;

loc_0017BBBC: ;
    ecx = MEM32(esi + 0x2F9C);
    /* cmp eax, ecx - flags set for next jcc */
    MEM32(esi + 0x2F98) = edx;
    if (CMP_GE(eax, ecx)) goto loc_0017BBCE; /* jge: greater or equal (signed >=) */

loc_0017BBCC: ;
    ecx = eax;

loc_0017BBCE: ;
    MEM32(esi + 0x2F9C) = ecx;
    eax = eax - edx;

loc_0017BBD6: ;
    ecx = MEM32(esi + 0x3568);
    PUSH32(esp, eax);
    eax = MEM32(esp + 0x14);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x24);
    PUSH32(esp, 0); sub_0017B7F0(); /* call 0x0017B7F0 */

loc_0017BBED: ;
    esp = esp + 0x10;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_0017C480
 * Original: 0x0017C480 - 0x0017C4E0 (96 bytes, 47 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C480(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0017C480: ;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0x14);
    PUSH32(esp, ebp);
    ebp = MEM32(esp + 0x14);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x14);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x24);
    eax = esp + 0x10;
    PUSH32(esp, eax);
    PUSH32(esp, edi);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001802E0(); /* call 0x001802E0 */

loc_0017C4A3: ;
    esp = esp + 0x14;
    if (TEST_Z(eax, eax)) goto loc_0017C4CE; /* je: equal / zero */

loc_0017C4AA: ;
    eax = MEM32(esp + 0x10);
    if (TEST_Z(eax, eax)) goto loc_0017C4C3; /* je: equal / zero */

loc_0017C4B2: ;
    edi = edi + 0x12;
    PUSH32(esp, edi);
    ebx = ebx + 0xFFFFFFEEu;
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_0017C0D0(); /* call 0x0017C0D0 */

loc_0017C4C0: ;
    esp = esp + 8;

loc_0017C4C3: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 1;
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

loc_0017C4CE: ;
    PUSH32(esp, edi);
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_0017C0D0(); /* call 0x0017C0D0 */

loc_0017C4D5: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_0017C5D0
 * Original: 0x0017C5D0 - 0x0017C5E0 (16 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C5D0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_0017C5D0: ;
    eax = MEM32(esp + 4);
    g_seh_ebp = ebp; sub_0017C560(); return; /* tail jmp 0x0017C560 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}

/**
 * sub_0017C5E0
 * Original: 0x0017C5E0 - 0x0017C600 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C5E0(void)
{

loc_0017C5E0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x2F54);
    PUSH32(esp, 1);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017EEE0(); /* call 0x0017EEE0 */

loc_0017C5F3: ;
    esp = esp + 0xC;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_0017C600
 * Original: 0x0017C600 - 0x0017C620 (32 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C600(void)
{

loc_0017C600: ;
    eax = MEM32(esp + 4);
    edx = MEM32(esp + 8);
    ecx = MEM32(eax + 0x2F54);
    PUSH32(esp, edx);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017F2F0(); /* call 0x0017F2F0 */

loc_0017C616: ;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}

/**
 * sub_0017C620
 * Original: 0x0017C620 - 0x0017C640 (32 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C620(void)
{

loc_0017C620: ;
    edx = MEM32(esp + 0xC);
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 0x2F54);
    PUSH32(esp, edx);
    edx = MEM32(esp + 0xC);
    PUSH32(esp, edx);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017F690(); /* call 0x0017F690 */

loc_0017C63B: ;
    esp = esp + 0x10;
    esp += 4; return; /* ret */

}

/**
 * sub_0017C640
 * Original: 0x0017C640 - 0x0017C660 (32 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C640(void)
{

loc_0017C640: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, 0xFF000501u);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_0017C6A0(); /* call 0x0017C6A0 */

loc_0017C64F: ;
    esp = esp + 8;
    esp += 4; return; /* ret */

}

/**
 * sub_001789B0
 * Original: 0x001789B0 - 0x00178A20 (112 bytes, 50 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001789B0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001789B0: ;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = eax;
    PUSH32(esp, 6);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017D510(); /* call 0x0017D510 */

loc_001789BC: ;
    esp = esp + 8;
    if (TEST_Z(eax, eax)) goto loc_001789D8; /* je: equal / zero */

loc_001789C3: ;
    eax = MEM32(esi + 0x4184);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_001789D0: ;
    esp = esp + 8;
    if (CMP_NE(eax, 1)) goto loc_001789DD; /* jne: not equal / not zero */

loc_001789D8: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

loc_001789DD: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, edi);
    edi = esp + 0x10;
    PUSH32(esp, 0); sub_00178760(); /* call 0x00178760 */

loc_001789E9: ;
    ebp = eax;
    PUSH32(esp, 0); sub_001787C0(); /* call 0x001787C0 */

loc_001789F0: ;
    eax = MEM32(esp + 0x10);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00178810(); /* call 0x00178810 */

loc_001789FA: ;
    esp = esp + 4;
    ecx = esi;
    PUSH32(esp, 0); sub_001788D0(); /* call 0x001788D0 */

loc_00178A04: ;
    edi = esi;
    PUSH32(esp, 0); sub_001785D0(); /* call 0x001785D0 */

loc_00178A0B: ;
    ebx = esi;
    PUSH32(esp, 0); sub_001783F0(); /* call 0x001783F0 */

loc_00178A12: ;
    POP32(esp, edi);
    eax = ebp;
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_0017C560
 * Original: 0x0017C560 - 0x0017C5D0 (112 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017C560(void)
{
    int _flags = 0; /* fallback flag var */

loc_0017C560: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = eax;
    eax = MEM32(esi + 0x3568);
    PUSH32(esp, edi);
    PUSH32(esp, eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_0017C572: ;
    ecx = MEM32(esi + 0x3564);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    edi = eax;
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_0017C581: ;
    edx = MEM32(esi + 0x356C);
    PUSH32(esp, edx);
    PUSH32(esp, esi);
    ebx = eax;
    PUSH32(esp, 0); sub_0017EF40(); /* call 0x0017EF40 */

loc_0017C590: ;
    eax = eax & ebx;
    eax = eax & edi;
    esp = esp + 0x18;
    if (CMP_NE(eax, 1)) goto loc_0017C5A2; /* jne: not equal / not zero */

loc_0017C59C: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = 0; /* xor self */
    POP32(esp, ebx);
    esp += 4; return; /* ret */

loc_0017C5A2: ;
    PUSH32(esp, 0); sub_0017C4E0(); /* call 0x0017C4E0 */

loc_0017C5A7: ;
    ebx = eax;
    if (CMP_NE(MEM32(esi + 0x40), 2)) goto loc_0017C5C7; /* jne: not equal / not zero */

loc_0017C5AF: ;
    PUSH32(esp, 0); sub_0017BDB0(); /* call 0x0017BDB0 */

loc_0017C5B4: ;
    edi = esi;
    PUSH32(esp, 0); sub_0017B950(); /* call 0x0017B950 */

loc_0017C5BB: ;
    PUSH32(esp, 0); sub_0017BE60(); /* call 0x0017BE60 */

loc_0017C5C0: ;
    ecx = esi;
    PUSH32(esp, 0); sub_0017C160(); /* call 0x0017C160 */

loc_0017C5C7: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = ebx;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_00173E70
 * Original: 0x00173E70 - 0x00173EA0 (48 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173E70(void)
{
    int _flags = 0; /* fallback flag var */

loc_00173E70: ;
    eax = MEM32(0x2170A0);
    eax = 0xBF77A4;
    /* nop */

loc_00173E80: ;
    MEM32(eax) = 0;
    eax = eax + 0x20;
    if (CMP_L(eax, 0xBF79A4)) goto loc_00173E80; /* jl: less (signed <) */

loc_00173E90: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00173EA0
 * Original: 0x00173EA0 - 0x00173ED0 (48 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173EA0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00173EA0: ;
    eax = 0xBF77A4;
    goto loc_00173EB0;

    /* nop */
    edi = edi;

loc_00173EB0: ;
    MEM32(eax) = 0;
    eax = eax + 0x20;
    if (CMP_L(eax, 0xBF79A4)) goto loc_00173EB0; /* jl: less (signed <) */

loc_00173EC0: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00173ED0
 * Original: 0x00173ED0 - 0x00173F30 (96 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173ED0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00173ED0: ;
    PUSH32(esp, esi);
    esi = 0; /* xor self */
    eax = 0; /* xor self */
    edx = 0; /* xor self */
    ecx = 0xBF77A4;
    /* nop */

loc_00173EE0: ;
    if (CMP_EQ(MEM32(ecx), esi)) goto loc_00173EF2; /* je: equal / zero */

loc_00173EE4: ;
    ecx = ecx + 0x20;
    edx++;
    if (CMP_L(ecx, 0xBF79A4)) goto loc_00173EE0; /* jl: less (signed <) */

loc_00173EF0: ;
    goto loc_00173EFD;

loc_00173EF2: ;
    edx = edx << 5;
    edx = edx + 0xBF77A0;
    eax = edx;

loc_00173EFD: ;
    MEM32(eax + 0x14) = esi;
    MEM32(eax + 0x18) = esi;
    MEM32(eax + 0x1C) = esi;
    MEM32(eax + 8) = esi;
    MEM32(eax) = 0x3BF0F0;
    MEM32(eax + 0xC) = 0xAC44;
    MEM32(eax + 0x10) = 0x4000;
    MEM32(eax + 4) = 1;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00173F30
 * Original: 0x00173F30 - 0x00173F50 (32 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173F30(void)
{

loc_00173F30: ;
    edx = MEM32(esp + 4);
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    ecx = 8;
    edi = edx;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    MEM32(edx + 4) = eax;
    POP32(esp, edi);
    esp += 4; return; /* ret */

}

/**
 * sub_00173F50
 * Original: 0x00173F50 - 0x00173FA0 (80 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173F50(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00173F50: ;
    ecx = MEM32(0xB2548C);
    eax = 0; /* xor self */
    if (TEST_Z(ecx, ecx)) goto loc_00173F5E; /* je: equal / zero */

loc_00173F5C: ;
    { uint32_t _icall_esp = g_esp;
    { uint32_t _icall_t = ecx; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00173F5E: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (CMP_NE(MEM32(esi + 8), 1)) goto loc_00173F71; /* jne: not equal / not zero */

loc_00173F69: ;
    eax = MEM32(esi + 0x18);
    MEM32(esi + 0x14) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00173F71: ;
    /* test eax, eax - flags set for next jcc */
    MEM32(esp + 8) = eax;
    fp_push((double)SMEM32(esp + 8)); /* fild */
    if (CMP_GE(eax & eax, 0)) goto loc_00173F83; /* jge: greater or equal (signed >=) */

loc_00173F7D: ;
    fp_st1() += fp_top(); fp_pop(); /* fadd */

loc_00173F83: ;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_00173F8E: ;
    MEM32(esi + 0x14) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}

/**
 * sub_00173FA0
 * Original: 0x00173FA0 - 0x00174070 (208 bytes, 101 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00173FA0(void)
{
    int _flags = 0; /* fallback flag var */
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00173FA0: ;
    PUSH32(esp, ecx);
    ecx = MEM32(0xB2548C);
    eax = 0; /* xor self */
    if (TEST_Z(ecx, ecx)) goto loc_00173FAF; /* je: equal / zero */

loc_00173FAD: ;
    { uint32_t _icall_esp = g_esp;
    { uint32_t _icall_t = ecx; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00173FAF: ;
    /* test eax, eax - flags set for next jcc */
    MEM32(esp) = eax;
    fp_push((double)SMEM32(esp)); /* fild */
    if (CMP_GE(eax & eax, 0)) goto loc_00173FC1; /* jge: greater or equal (signed >=) */

loc_00173FBB: ;
    fp_st1() += fp_top(); fp_pop(); /* fadd */

loc_00173FC1: ;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

loc_00173FCC: ;
    ecx = MEM32(esp + 8);
    MEM32(ecx + 0x18) = eax;
    POP32(esp, ecx);
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
    fp_st1() += fp_top(); fp_pop(); /* fadd */

loc_00174012: ;
    fp_st1() *= fp_top(); fp_pop(); /* fmul */
    { int64_t _ft = (int64_t)fp_top(); fp_popp(); eax = (uint32_t)_ft; edx = (uint32_t)((uint64_t)_ft >> 32); } /* inline _ftol2 (bug #8) */

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
 * sub_0017DE60
 * Original: 0x0017DE60 - 0x0017DEA0 (64 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DE60(void)
{

loc_0017DE60: ;
    eax = MEM32(esp + 8);
    edx = MEM32(eax + 8);
    ecx = MEM32(eax + 0x10);
    edx = (uint32_t)((int32_t)edx * (int32_t)0x3C);
    PUSH32(esp, esi);
    edx = edx + MEM32(eax + 0xC);
    esi = MEM32(eax + 0x18);
    edx = (uint32_t)((int32_t)edx * (int32_t)0x3C);
    PUSH32(esp, edi);
    edi = MEM32(eax + 0x14);
    eax = MEM32(esp + 0x14);
    edx = edx + ecx;
    ecx = MEM32(esp + 0xC);
    esi = esi + edi;
    edx = (uint32_t)((int32_t)edx * (int32_t)ecx);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x3E8);
    edx = edx + esi;
    MEM32(eax) = edx;
    edx = MEM32(esp + 0x18);
    POP32(esp, edi);
    MEM32(edx) = ecx;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_0017DEA0
 * Original: 0x0017DEA0 - 0x0017DEE0 (64 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DEA0(void)
{

loc_0017DEA0: ;
    ecx = MEM32(esp + 8);
    eax = MEM32(ecx + 8);
    edx = MEM32(ecx + 0xC);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3C);
    eax = eax + edx;
    edx = MEM32(ecx + 0x10);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3C);
    eax = eax + edx;
    edx = MEM32(ecx + 0x18);
    eax = eax + eax * 2;
    eax = edx + eax * 8;
    edx = MEM32(ecx + 0x14);
    ecx = MEM32(esp + 0xC);
    eax = eax + edx;
    edx = MEM32(esp + 0x10);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3E8);
    MEM32(ecx) = eax;
    eax = MEM32(esp + 4);
    MEM32(edx) = eax;
    esp += 4; return; /* ret */

}

/**
 * sub_0017DEE0
 * Original: 0x0017DEE0 - 0x0017DF20 (64 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DEE0(void)
{

loc_0017DEE0: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(eax + 8);
    edx = MEM32(eax + 0xC);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3C);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x10);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3C);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x18);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x1E);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x14);
    eax = MEM32(esp + 0x10);
    ecx = ecx + edx;
    edx = MEM32(esp + 0xC);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3E8);
    MEM32(edx) = ecx;
    ecx = MEM32(esp + 4);
    MEM32(eax) = ecx;
    esp += 4; return; /* ret */

}

/**
 * sub_0017DF20
 * Original: 0x0017DF20 - 0x0017DF60 (64 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DF20(void)
{

loc_0017DF20: ;
    eax = MEM32(esp + 8);
    ecx = MEM32(eax + 8);
    edx = MEM32(eax + 0xC);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3C);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x10);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3C);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x18);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3C);
    ecx = ecx + edx;
    edx = MEM32(eax + 0x14);
    eax = MEM32(esp + 0x10);
    ecx = ecx + edx;
    edx = MEM32(esp + 0xC);
    ecx = (uint32_t)((int32_t)ecx * (int32_t)0x3E8);
    MEM32(edx) = ecx;
    ecx = MEM32(esp + 4);
    MEM32(eax) = ecx;
    esp += 4; return; /* ret */

}

/**
 * sub_0017DF60
 * Original: 0x0017DF60 - 0x0017DFC0 (96 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DF60(void)
{

loc_0017DF60: ;
    ecx = MEM32(esp + 8);
    eax = MEM32(ecx + 0x10);
    edx = MEM32(ecx + 0xC);
    PUSH32(esp, esi);
    esi = MEM32(ecx + 8);
    esi = (uint32_t)((int32_t)esi * (int32_t)0xA88A);
    eax = eax + eax * 2;
    esi = esi + eax * 4;
    eax = edx;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x2CF);
    esi = esi + eax;
    eax = 0x66666667;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)edx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = (uint32_t)((int32_t)edx >> 2);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + esi;
    eax = eax + edx;
    edx = MEM32(ecx + 0x18);
    eax = edx + eax * 2;
    edx = MEM32(ecx + 0x14);
    ecx = MEM32(esp + 0x10);
    eax = eax + edx;
    edx = MEM32(esp + 0x14);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3E8);
    MEM32(ecx) = eax;
    eax = MEM32(esp + 8);
    MEM32(edx) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_0017DFC0
 * Original: 0x0017DFC0 - 0x0017E020 (96 bytes, 37 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017DFC0(void)
{

loc_0017DFC0: ;
    ecx = MEM32(esp + 8);
    eax = MEM32(ecx + 0x10);
    edx = MEM32(ecx + 0xC);
    eax = (uint32_t)((int32_t)eax * (int32_t)0xF);
    PUSH32(esp, esi);
    esi = MEM32(ecx + 8);
    esi = (uint32_t)((int32_t)esi * (int32_t)0xD2BA);
    esi = esi + eax;
    eax = edx;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x383);
    esi = esi + eax;
    eax = 0x66666667;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)edx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = (uint32_t)((int32_t)edx >> 2);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + esi;
    eax = eax + edx;
    edx = MEM32(ecx + 0x18);
    eax = edx + eax * 2;
    edx = MEM32(ecx + 0x14);
    ecx = MEM32(esp + 0x10);
    eax = eax + edx;
    edx = MEM32(esp + 0x14);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3E8);
    MEM32(ecx) = eax;
    eax = MEM32(esp + 8);
    MEM32(edx) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_0017E020
 * Original: 0x0017E020 - 0x0017E080 (96 bytes, 37 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_0017E020(void)
{

loc_0017E020: ;
    ecx = MEM32(esp + 8);
    eax = MEM32(ecx + 0x10);
    edx = MEM32(ecx + 0xC);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x1E);
    PUSH32(esp, esi);
    esi = MEM32(ecx + 8);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x1A5AA);
    esi = esi + eax;
    eax = edx;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x707);
    esi = esi + eax;
    eax = 0x66666667;
    { int64_t _r = (int64_t)(int32_t)eax * (int64_t)(int32_t)edx;
      eax = (uint32_t)_r; edx = (uint32_t)(_r >> 32); }
    edx = (uint32_t)((int32_t)edx >> 2);
    eax = edx;
    eax = eax >> 0x1F;
    edx = edx + esi;
    eax = eax + edx;
    edx = MEM32(ecx + 0x18);
    eax = edx + eax * 2;
    edx = MEM32(ecx + 0x14);
    ecx = MEM32(esp + 0x10);
    eax = eax + edx;
    edx = MEM32(esp + 0x14);
    eax = (uint32_t)((int32_t)eax * (int32_t)0x3E8);
    MEM32(ecx) = eax;
    eax = MEM32(esp + 8);
    MEM32(edx) = eax;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

