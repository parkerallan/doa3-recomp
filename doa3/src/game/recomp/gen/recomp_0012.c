/**
 * Dead or Alive 3 - Recompiled code chunk 12
 * Functions: 236 (0x001E8F62 - 0x001ED09C)
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>
#include <stdio.h>

/**
 * sub_001E8F62
 * Original: 0x001E8F62 - 0x001E8FCE (108 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E8F62(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E8F62: ;
    MEM32(0xB22950) = eax;
    ecx = MEM32(eax + 0x10);
    MEM32(0xB2294C) = ecx;
    SET_LO8(ecx, MEM8(eax + 5));
    MEM8(0xB228D2) = LO8(ecx);
    MEM8(0xB228D3) = 0x80;
    MEM8(eax) = 0xFD;
    eax = MEM32(0xB22950);
    MEM32(eax + 0x10) = ebx;
    eax = MEM32(0xB22950);
    MEM8(eax + 5) = LO8(ebx);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED228), _icall_esp); /* indirect call */
    }

loc_001E8F99: ;
    ecx = MEM32(0xB22950);
    if (CMP_L(edx, MEM32(ecx + 0x1C))) goto loc_001E8FB2; /* jl: less (signed <) */

loc_001E8FA4: ;
    if (CMP_G(edx, MEM32(ecx + 0x1C))) goto loc_001E8FAB; /* jg: greater (signed >) */

loc_001E8FA6: ;
    if (CMP_BE(eax, MEM32(ecx + 0x18))) goto loc_001E8FB2; /* jbe: below or equal (unsigned <=) */

loc_001E8FAB: ;
    PUSH32(esp, 0); sub_001E8E02(); /* call 0x001E8E02 */

loc_001E8FB0: ;
    g_seh_ebp = ebp; sub_001E8FCE(); return; /* tail jmp 0x001E8FCE */

loc_001E8FB2: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22904);
    MEM8(0xB22948) = LO8(ebx);
    PUSH32(esp, MEM32(ecx + 0x1C));
    PUSH32(esp, MEM32(ecx + 0x18));
    PUSH32(esp, 0xB22920);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

}

/**
 * sub_001E8FCE
 * Original: 0x001E8FCE - 0x001E8FD2 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E8FCE(void)
{

loc_001E8FCE: ;
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E8FD2
 * Original: 0x001E8FD2 - 0x001E9049 (119 bytes, 40 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E8FD2(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E8FD2: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, MEM32(esp + 0xC));
    edi = ecx;
    PUSH32(esp, 0); sub_001E9B79(); /* call 0x001E9B79 */

loc_001E8FDF: ;
    esi = eax;
    if (TEST_Z(esi, esi)) goto loc_001E9044; /* je: equal / zero */

loc_001E8FE5: ;
    PUSH32(esp, esi);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9BF2(); /* call 0x001E9BF2 */

loc_001E8FED: ;
    if (CMP_NE(MEM8(esi), 0xFE)) goto loc_001E9024; /* jne: not equal / not zero */

loc_001E8FF2: ;
    eax = MEM32(0xB2294C);
    if (CMP_NE(eax, esi)) goto loc_001E9008; /* jne: not equal / not zero */

loc_001E8FFB: ;
    eax = MEM32(esi + 0x10);
    MEM32(0xB2294C) = eax;
    goto loc_001E9013;

loc_001E9005: ;
    eax = MEM32(eax + 0x10);

loc_001E9008: ;
    if (CMP_NE(esi, MEM32(eax + 0x10))) goto loc_001E9005; /* jne: not equal / not zero */

loc_001E900D: ;
    ecx = MEM32(esi + 0x10);
    MEM32(eax + 0x10) = ecx;

loc_001E9013: ;
    MEM32(esi + 0x10) = MEM32(esi + 0x10) & 0;
    PUSH32(esp, esi);
    ecx = 0xB228D0;
    PUSH32(esp, 0); sub_001E8BAC(); /* call 0x001E8BAC */

loc_001E9022: ;
    goto loc_001E9044;

loc_001E9024: ;
    if (CMP_EQ(MEM8(0xB228D0), 0)) goto loc_001E903E; /* je: equal / zero */

loc_001E902D: ;
    if (CMP_NE(MEM32(0xB22950), esi)) goto loc_001E903E; /* jne: not equal / not zero */

loc_001E9035: ;
    MEM8(0xB228D1) = 1;
    goto loc_001E9044;

loc_001E903E: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E8EDF(); /* call 0x001E8EDF */

loc_001E9044: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9049
 * Original: 0x001E9049 - 0x001E905D (20 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9049(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9049: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    /* cmp MEM8(ecx), 5 - flags set for next jcc */
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    if (CMP_NE(MEM8(ecx), 5)) { g_seh_ebp = ebp; sub_001E905D(); return; } /* jne: not equal / not zero */

loc_001E9054: ;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9059: ;
    esi = eax;
    g_seh_ebp = ebp; sub_001E905F(); return; /* tail jmp 0x001E905F */

}

/**
 * sub_001E905D
 * Original: 0x001E905D - 0x001E905F (2 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E905D(void)
{

loc_001E905D: ;
    esi = ecx;

}

/**
 * sub_001E905F
 * Original: 0x001E905F - 0x001E908E (47 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E905F(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E905F: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9066: ;
    edi = eax;
    if (TEST_Z(edi, edi)) goto loc_001E908A; /* je: equal / zero */

loc_001E906C: ;
    SET_LO8(eax, MEM8(esi + 4));
    SET_LO8(eax, LO8(eax) & 0x7F);
    MEM8(ebp + -4) = LO8(eax);
    PUSH32(esp, MEM32(ebp + -4));
    ecx = edi;
    PUSH32(esp, 0); sub_001E8FD2(); /* call 0x001E8FD2 */

loc_001E907E: ;
    PUSH32(esp, 5);
    PUSH32(esp, MEM32(ebp + -4));
    ecx = edi;
    PUSH32(esp, 0); sub_001E8C23(); /* call 0x001E8C23 */

loc_001E908A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001E908E
 * Original: 0x001E908E - 0x001E910F (129 bytes, 49 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E908E(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E908E: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    SET_LO8(ebx, 0); /* xor self */
    MEM8(ebp + -4) = MEM8(ebp + -4) & LO8(ebx);
    PUSH32(esp, edi);
    edi = 0; /* xor self */
    /* cmp MEM8(0xB228D1), 0 - flags set for next jcc */
    esi = ecx;
    MEM8(0xB228D3) = 0xA;
    if (CMP_NE(MEM8(0xB228D1), 0)) goto loc_001E90D0; /* jne: not equal / not zero */

loc_001E90AE: ;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E90B3: ;
    edi = eax;
    PUSH32(esp, esi);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9BF2(); /* call 0x001E9BF2 */

loc_001E90BD: ;
    SET_LO8(eax, MEM8(0xB228D2));
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001E90D0; /* je: equal / zero */

loc_001E90C6: ;
    SET_LO8(ebx, LO8(eax));
    SET_LO8(eax, MEM8(esi + 4));
    SET_LO8(eax, LO8(eax) & 0x7F);
    MEM8(ebp + -4) = LO8(eax);

loc_001E90D0: ;
    SET_LO8(edx, MEM8(esi + 5));
    if (TEST_Z(LO8(edx), LO8(edx))) goto loc_001E90DF; /* je: equal / zero */

loc_001E90D7: ;
    ecx = MEM32(esi + 0xC);
    PUSH32(esp, 0); sub_001E8DB9(); /* call 0x001E8DB9 */

loc_001E90DF: ;
    PUSH32(esp, esi);
    ecx = 0xB228D0;
    PUSH32(esp, 0); sub_001E8BAC(); /* call 0x001E8BAC */

loc_001E90EA: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_001E90FB; /* je: equal / zero */

loc_001E90EE: ;
    SET_LO8(ebx, LO8(ebx) - 1);
    ecx = edi;
    PUSH32(esp, ebx);
    PUSH32(esp, MEM32(ebp + -4));
    PUSH32(esp, 0); sub_001E8C23(); /* call 0x001E8C23 */

loc_001E90FB: ;
    MEM8(0xB228D1) = MEM8(0xB228D1) & 0;
    PUSH32(esp, esi);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_001E8F31(); /* call 0x001E8F31 */

loc_001E910A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001E910F
 * Original: 0x001E910F - 0x001E9122 (19 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E910F(void)
{

loc_001E910F: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, MEM32(esp + 8));
    ecx = MEM32(eax + -20);
    PUSH32(esp, 0); sub_001E8FD2(); /* call 0x001E8FD2 */

loc_001E911F: ;
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9122
 * Original: 0x001E9122 - 0x001E9155 (51 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9122(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9122: ;
    ecx = MEM32(esp + 8);
    eax = 0; /* xor self */
    /* cmp MEM32(esp + 4), eax - flags set for next jcc */
    MEM8(0xB228D3) = 9;
    if (CMP_GE(MEM32(esp + 4), eax)) goto loc_001E9140; /* jge: greater or equal (signed >=) */

loc_001E9135: ;
    if (CMP_NE(MEM8(0xB228D1), LO8(eax))) goto loc_001E9148; /* jne: not equal / not zero */

loc_001E913D: ;
    MEM8(ecx + 5) = LO8(eax);

loc_001E9140: ;
    if (CMP_EQ(MEM8(0xB228D1), LO8(eax))) goto loc_001E914D; /* je: equal / zero */

loc_001E9148: ;
    MEM8(0xB228D2) = LO8(eax);

loc_001E914D: ;
    PUSH32(esp, 0); sub_001E908E(); /* call 0x001E908E */

loc_001E9152: ;
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9155
 * Original: 0x001E9155 - 0x001E91AE (89 bytes, 31 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9155(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9155: ;
    /* cmp MEM8(0xB228D1), 0 - flags set for next jcc */
    PUSH32(esp, esi);
    MEM8(0xB228D3) = 8;
    if (CMP_NE(MEM8(0xB228D1), 0)) { g_seh_ebp = ebp; sub_001E91AE(); return; } /* jne: not equal / not zero */

loc_001E9166: ;
    esi = MEM32(esp + 0xC);
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9171: ;
    if (CMP_NE(MEM8(eax), 0)) goto loc_001E9197; /* jne: not equal / not zero */

loc_001E9176: ;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 4));
    eax = eax & 0x7F;
    PUSH32(esp, eax);
    eax = MEM32(esi + 0xC);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EB7FD(); /* call 0x001EB7FD */

loc_001E918B: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9122(); /* call 0x001E9122 */

loc_001E9195: ;
    g_seh_ebp = ebp; sub_001E91BE(); return; /* tail jmp 0x001E91BE */

loc_001E9197: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 4));
    PUSH32(esp, 1);
    PUSH32(esp, esi);
    ecx = ecx & 0xFFFFFF7Fu;
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAE42(); /* call 0x001EAE42 */

loc_001E91AC: ;
    g_seh_ebp = ebp; sub_001E91BE(); return; /* tail jmp 0x001E91BE */

}

/**
 * sub_001E91AE
 * Original: 0x001E91AE - 0x001E91BE (16 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E91AE(void)
{

loc_001E91AE: ;
    ecx = MEM32(esp + 0xC);
    MEM8(0xB228D2) = MEM8(0xB228D2) & 0;
    PUSH32(esp, 0); sub_001E908E(); /* call 0x001E908E */

}

/**
 * sub_001E91BE
 * Original: 0x001E91BE - 0x001E91C2 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E91BE(void)
{

loc_001E91BE: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E91C2
 * Original: 0x001E91C2 - 0x001E9227 (101 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E91C2(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E91C2: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22920);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E91CD: ;
    eax = MEM32(esp + 4);
    MEM8(0xB228D3) = 3;
    if (CMP_L(MEM32(eax + 4), 0)) goto loc_001E91F1; /* jl: less (signed <) */

loc_001E91DE: ;
    /* cmp MEM8(0xB228D1), 0 - flags set for next jcc */
    MEM32(0xB228DC) = 0x1E8D5D;
    if (CMP_EQ(MEM8(0xB228D1), 0)) goto loc_001E91FB; /* je: equal / zero */

loc_001E91F1: ;
    MEM32(0xB228DC) = 0x1E9155;

loc_001E91FB: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    MEM8(0xB228D4) = 0x1C;
    MEM8(0xB228D5) = 0x43;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E921F: ;
    MEM32(esi + 8) = MEM32(esi + 8) & 0;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9227
 * Original: 0x001E9227 - 0x001E9245 (30 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9227(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9227: ;
    PUSH32(esp, ebp);
    ebp = esp;
    /* cmp MEM32(ebp + 8), 0x80000400u - flags set for next jcc */
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    esi = ecx;
    MEM8(0xB228D3) = 7;
    if (CMP_NE(MEM32(ebp + 8), 0x80000400u)) { g_seh_ebp = ebp; sub_001E9245(); return; } /* jne: not equal / not zero */

loc_001E923F: ;
    MEM32(esi + 0x10) = MEM32(esi + 0x10) & 0;
    g_seh_ebp = ebp; sub_001E9267(); return; /* tail jmp 0x001E9267 */

}

/**
 * sub_001E9245
 * Original: 0x001E9245 - 0x001E9267 (34 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9245(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9245: ;
    SET_LO8(eax, MEM8(esi + 7));
    if (CMP_EQ(LO8(eax), 0xFF)) { sub_001E9267(); return; } /* je: equal / zero */

loc_001E924C: ;
    ecx = MEM32(esi + 0x10);
    ecx = MEM32(ecx + 0x14);
    eax = ZX8(LO8(eax));
    eax = MEM32(ecx + eax * 4);
    if (TEST_Z(eax, eax)) { sub_001E9267(); return; } /* je: equal / zero */

loc_001E925C: ;
    PUSH32(esp, 1);
    PUSH32(esp, MEM32(esi + 0x14));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E6931(); /* call 0x001E6931 */

}

/**
 * sub_001E9267
 * Original: 0x001E9267 - 0x001E935A (243 bytes, 73 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9267(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9267: ;
    SET_LO8(ecx, MEM8(esi));
    if (CMP_EQ(LO8(ecx), 2)) goto loc_001E9331; /* je: equal / zero */

loc_001E9272: ;
    if (CMP_EQ(LO8(ecx), 1)) goto loc_001E9331; /* je: equal / zero */

loc_001E927B: ;
    edi = MEM32(esi + 8);
    MEM32(esi + 8) = MEM32(esi + 8) & 0;
    /* cmp LO8(ecx), 5 - flags set for next jcc */
    eax = esi;
    ebx = 0x1E8F31;
    if (CMP_NE(LO8(ecx), 5)) goto loc_001E92E7; /* jne: not equal / not zero */

loc_001E928E: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9295: ;
    if (TEST_Z(eax, eax)) goto loc_001E92DE; /* je: equal / zero */

loc_001E9299: ;
    edx = MEM32(0xB229AC);

loc_001E929F: ;
    ecx = ZX8(MEM8(edx));
    edx = edx + ecx;
    if (CMP_NE(MEM8(edx + 1), 4)) goto loc_001E929F; /* jne: not equal / not zero */

loc_001E92AA: ;
    MEM32(0xB229AC) = edx;
    SET_LO8(ecx, MEM8(edx + 2));
    MEM8(eax + 2) = LO8(ecx);
    edx = MEM32(0xB229AC);
    SET_LO8(ecx, MEM8(edx + 5));
    MEM8(ebp + 9) = LO8(ecx);
    SET_LO8(ecx, MEM8(edx + 6));
    MEM8(ebp + 0xA) = LO8(ecx);
    SET_LO8(ecx, MEM8(edx + 7));
    MEM8(ebp + 0xB) = LO8(ecx);
    MEM8(ebp + 8) = 0x82;
    PUSH32(esp, MEM32(ebp + 8));
    ecx = eax;
    PUSH32(esp, 0); sub_001E935A(); /* call 0x001E935A */

loc_001E92DC: ;
    goto loc_001E9353;

loc_001E92DE: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E92E5: ;
    goto loc_001E92FF;

loc_001E92E7: ;
    if (CMP_GE(MEM32(ebp + 8), 0)) goto loc_001E92FF; /* jge: greater or equal (signed >=) */

loc_001E92ED: ;
    if (CMP_NE(MEM32(esi + 0x10), 0)) goto loc_001E92FA; /* jne: not equal / not zero */

loc_001E92F3: ;
    MEM8(0xB228D2) = MEM8(0xB228D2) & 0;

loc_001E92FA: ;
    ebx = 0x1E9155;

loc_001E92FF: ;
    MEM32(0xB228E0) = eax;
    MEM8(0xB228D4) = 0x1C;
    MEM8(0xB228D5) = 0x43;
    MEM32(0xB228DC) = ebx;
    MEM32(0xB228E4) = edi;
    eax = MEM32(eax + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E932F: ;
    goto loc_001E9353;

loc_001E9331: ;
    eax = 0; /* xor self */
    if (CMP_GE(MEM32(ebp + 8), eax)) goto loc_001E934C; /* jge: greater or equal (signed >=) */

loc_001E9338: ;
    if (CMP_NE(MEM32(esi + 0x10), eax)) goto loc_001E9343; /* jne: not equal / not zero */

loc_001E933D: ;
    MEM8(0xB228D2) = MEM8(0xB228D2) & LO8(eax);

loc_001E9343: ;
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E9155(); /* call 0x001E9155 */

loc_001E934A: ;
    goto loc_001E9353;

loc_001E934C: ;
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E8F31(); /* call 0x001E8F31 */

loc_001E9353: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E935A
 * Original: 0x001E935A - 0x001E937E (36 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E935A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E935A: ;
    PUSH32(esp, esi);
    esi = ecx;
    PUSH32(esp, 0); sub_001E9DE4(); /* call 0x001E9DE4 */

loc_001E9362: ;
    if (CMP_EQ(MEM32(esi + 0x14), 0x20)) { g_seh_ebp = ebp; sub_001E937E(); return; } /* je: equal / zero */

loc_001E9368: ;
    PUSH32(esp, MEM32(esp + 8));
    PUSH32(esp, 0); sub_001E7FD7(); /* call 0x001E7FD7 */

loc_001E9371: ;
    /* test eax, eax - flags set for next jcc */
    MEM32(esi + 0x10) = eax;
    if (TEST_Z(eax, eax)) { g_seh_ebp = ebp; sub_001E937E(); return; } /* je: equal / zero */

loc_001E9378: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(eax + 8), _icall_esp); /* indirect call */
    }

loc_001E937C: ;
    g_seh_ebp = ebp; sub_001E938A(); return; /* tail jmp 0x001E938A */

}

/**
 * sub_001E937E
 * Original: 0x001E937E - 0x001E938A (12 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E937E(void)
{

loc_001E937E: ;
    ecx = esi;
    PUSH32(esp, 0x80000400u);
    PUSH32(esp, 0); sub_001E9227(); /* call 0x001E9227 */

}

/**
 * sub_001E938A
 * Original: 0x001E938A - 0x001E9469 (223 bytes, 53 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E938A(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E938A: ;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

    edx = MEM32(esp + 8);
    ebx = 0; /* xor self */
    MEM8(0xB228D3) = 2;
    if (CMP_L(MEM32(edx + 4), ebx)) goto loc_001E945B; /* jl: less (signed <) */

loc_001E93B0: ;
    if (CMP_NE(MEM8(0xB228D1), LO8(ebx))) goto loc_001E945B; /* jne: not equal / not zero */

loc_001E93BC: ;
    if (CMP_B(MEM32(edx + 0x14), 8)) goto loc_001E9454; /* jb: below (unsigned <) */

loc_001E93C6: ;
    SET_LO8(eax, MEM8(0xB2295B));
    if (CMP_A(LO8(eax), 0x40)) goto loc_001E9454; /* ja: above (unsigned >) */

loc_001E93D3: ;
    if (CMP_NE(MEM8(0xB22955), 1)) goto loc_001E9454; /* jne: not equal / not zero */

loc_001E93DC: ;
    SET_LO8(ecx, MEM8(0xB22954));
    if (CMP_EQ(LO8(ecx), 8)) goto loc_001E93EC; /* je: equal / zero */

loc_001E93E7: ;
    if (CMP_NE(LO8(ecx), 0x12)) goto loc_001E9454; /* jne: not equal / not zero */

loc_001E93EC: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    ecx = MEM32(esi + 0xC);
    MEM8(esi + 6) = LO8(eax);
    PUSH32(esp, 0); sub_001E8D88(); /* call 0x001E8D88 */

loc_001E93FC: ;
    MEM8(esi + 5) = LO8(eax);
    MEM32(0xB228DC) = 0x1E91C2;
    MEM32(0xB228EC) = ebx;
    MEM32(0xB228E8) = ebx;
    MEM8(0xB228FC) = LO8(ebx);
    MEM8(0xB228FD) = 5;
    SET_LO16(eax, ZX8(MEM8(esi + 5)));
    MEM16(0xB228FE) = LO16(eax);
    MEM16(0xB22900) = LO16(ebx);
    MEM16(0xB22902) = LO16(ebx);
    PUSH32(esp, 0); sub_001E8CEA(); /* call 0x001E8CEA */

loc_001E9440: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9451: ;
    POP32(esp, esi);
    goto loc_001E9465;

loc_001E9454: ;
    MEM32(edx + 4) = 0x80000600u;

loc_001E945B: ;
    PUSH32(esp, MEM32(esp + 0xC));
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001E91C2(); /* call 0x001E91C2 */

loc_001E9465: ;
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E938E
 * Original: 0x001E938E - 0x001E9469 (219 bytes, 51 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E938E(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E938E: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, 0xB22920);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E939A: ;
    edx = MEM32(esp + 8);
    ebx = 0; /* xor self */
    MEM8(0xB228D3) = 2;
    if (CMP_L(MEM32(edx + 4), ebx)) goto loc_001E945B; /* jl: less (signed <) */

loc_001E93B0: ;
    if (CMP_NE(MEM8(0xB228D1), LO8(ebx))) goto loc_001E945B; /* jne: not equal / not zero */

loc_001E93BC: ;
    if (CMP_B(MEM32(edx + 0x14), 8)) goto loc_001E9454; /* jb: below (unsigned <) */

loc_001E93C6: ;
    SET_LO8(eax, MEM8(0xB2295B));
    if (CMP_A(LO8(eax), 0x40)) goto loc_001E9454; /* ja: above (unsigned >) */

loc_001E93D3: ;
    if (CMP_NE(MEM8(0xB22955), 1)) goto loc_001E9454; /* jne: not equal / not zero */

loc_001E93DC: ;
    SET_LO8(ecx, MEM8(0xB22954));
    if (CMP_EQ(LO8(ecx), 8)) goto loc_001E93EC; /* je: equal / zero */

loc_001E93E7: ;
    if (CMP_NE(LO8(ecx), 0x12)) goto loc_001E9454; /* jne: not equal / not zero */

loc_001E93EC: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    ecx = MEM32(esi + 0xC);
    MEM8(esi + 6) = LO8(eax);
    PUSH32(esp, 0); sub_001E8D88(); /* call 0x001E8D88 */

loc_001E93FC: ;
    MEM8(esi + 5) = LO8(eax);
    MEM32(0xB228DC) = 0x1E91C2;
    MEM32(0xB228EC) = ebx;
    MEM32(0xB228E8) = ebx;
    MEM8(0xB228FC) = LO8(ebx);
    MEM8(0xB228FD) = 5;
    SET_LO16(eax, ZX8(MEM8(esi + 5)));
    MEM16(0xB228FE) = LO16(eax);
    MEM16(0xB22900) = LO16(ebx);
    MEM16(0xB22902) = LO16(ebx);
    PUSH32(esp, 0); sub_001E8CEA(); /* call 0x001E8CEA */

loc_001E9440: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9451: ;
    POP32(esp, esi);
    goto loc_001E9465;

loc_001E9454: ;
    MEM32(edx + 4) = 0x80000600u;

loc_001E945B: ;
    PUSH32(esp, MEM32(esp + 0xC));
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001E91C2(); /* call 0x001E91C2 */

loc_001E9465: ;
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9469
 * Original: 0x001E9469 - 0x001E9597 (302 bytes, 87 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9469(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9469: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, 0xB22920);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E9479: ;
    ecx = MEM32(ebp + 8);
    ebx = 0; /* xor self */
    MEM8(0xB228D3) = 6;
    if (CMP_L(MEM32(ecx + 4), ebx)) { g_seh_ebp = ebp; sub_001E9597(); return; } /* jl: less (signed <) */

loc_001E948E: ;
    if (CMP_NE(MEM8(0xB228D1), LO8(ebx))) { g_seh_ebp = ebp; sub_001E9597(); return; } /* jne: not equal / not zero */

loc_001E949A: ;
    esi = MEM32(ebp + 0xC);
    MEM32(esi + 0x18) = ebx;
    eax = 0xB2295C;

loc_001E94A5: ;
    edx = ZX8(MEM8(eax));
    eax = eax + edx;
    if (CMP_AE(eax, 0xB229AC)) goto loc_001E9586; /* jae: above or equal (unsigned >=) */

loc_001E94B5: ;
    if (CMP_EQ(MEM8(eax), 0)) goto loc_001E9586; /* je: equal / zero */

loc_001E94BE: ;
    if (CMP_NE(MEM8(eax + 1), 4)) goto loc_001E94A5; /* jne: not equal / not zero */

loc_001E94C4: ;
    /* cmp MEM8(0xB22960), 1 - flags set for next jcc */
    MEM32(0xB229AC) = eax;
    if (CMP_EQ(MEM8(0xB22960), 1)) goto loc_001E9551; /* je: equal / zero */

loc_001E94D2: ;
    if (CMP_EQ(MEM8(0xB2294B), 0)) goto loc_001E9551; /* je: equal / zero */

loc_001E94DB: ;
    MEM8(esi) = 4;
    MEM8(esi + 2) = 0x80;
    if (CMP_BE(MEM8(0xB22960), 0)) goto loc_001E9542; /* jbe: below or equal (unsigned <=) */

loc_001E94EB: ;
    eax = ZX8(MEM8(0xB2294B));
    if (CMP_BE(eax, ebx)) goto loc_001E9542; /* jbe: below or equal (unsigned <=) */

loc_001E94F6: ;
    ecx = 0xB228D0;
    PUSH32(esp, 0); sub_001E7F2A(); /* call 0x001E7F2A */

loc_001E9500: ;
    if (TEST_Z(eax, eax)) goto loc_001E9542; /* je: equal / zero */

loc_001E9504: ;
    MEM8(eax) = 5;
    SET_LO8(ecx, MEM8(esi + 4));
    SET_LO8(ecx, LO8(ecx) & 0x80);
    SET_LO8(edx, LO8(ebx));
    SET_LO8(edx, LO8(edx) + 1);
    SET_LO8(ecx, LO8(ecx) | LO8(edx));
    MEM8(eax + 4) = LO8(ecx);
    SET_LO8(ecx, MEM8(esi + 5));
    MEM8(eax + 5) = LO8(ecx);
    ecx = MEM32(esi + 8);
    MEM32(eax + 8) = ecx;
    ecx = MEM32(esi + 0xC);
    MEM32(eax + 0xC) = ecx;
    SET_LO8(ecx, MEM8(esi + 6));
    MEM8(eax + 6) = LO8(ecx);
    PUSH32(esp, eax);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9BAA(); /* call 0x001E9BAA */

loc_001E9536: ;
    eax = ZX8(MEM8(0xB22960));
    ebx++;
    if (CMP_B(ebx, eax)) goto loc_001E94EB; /* jb: below (unsigned <) */

loc_001E9542: ;
    MEM32(esi + 8) = MEM32(esi + 8) & 0;
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BF5(); /* call 0x001E8BF5 */

loc_001E954D: ;
    esi = eax;
    goto loc_001E9554;

loc_001E9551: ;
    MEM8(esi) = 3;

loc_001E9554: ;
    eax = MEM32(0xB229AC);
    SET_LO8(eax, MEM8(eax + 2));
    MEM8(esi + 2) = LO8(eax);
    eax = MEM32(0xB229AC);
    SET_LO8(ecx, MEM8(eax + 5));
    MEM8(ebp + 0xD) = LO8(ecx);
    SET_LO8(ecx, MEM8(eax + 6));
    SET_LO8(eax, MEM8(eax + 7));
    MEM8(ebp + 0xE) = LO8(ecx);
    MEM8(ebp + 0xF) = LO8(eax);
    MEM8(ebp + 0xC) = 0x82;
    PUSH32(esp, MEM32(ebp + 0xC));
    ecx = esi;
    PUSH32(esp, 0); sub_001E935A(); /* call 0x001E935A */

loc_001E9584: ;
    g_seh_ebp = ebp; sub_001E95A0(); return; /* tail jmp 0x001E95A0 */

loc_001E9586: ;
    MEM8(0xB228D2) = MEM8(0xB228D2) & 0;
    MEM32(ecx + 4) = 0x80000400u;
    PUSH32(esp, esi);
    g_seh_ebp = ebp; sub_001E959A(); return; /* tail jmp 0x001E959A */

}

/**
 * sub_001E9597
 * Original: 0x001E9597 - 0x001E959A (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9597(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9597: ;
    PUSH32(esp, MEM32(ebp + 0xC));

}

/**
 * sub_001E959A
 * Original: 0x001E959A - 0x001E95A0 (6 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E959A(void)
{

loc_001E959A: ;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001E91C2(); /* call 0x001E91C2 */

}

/**
 * sub_001E95A0
 * Original: 0x001E95A0 - 0x001E95A6 (6 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E95A0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E95A0: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E95A6
 * Original: 0x001E95A6 - 0x001E95CE (40 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E95A6(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E95A6: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    esi = ecx;
    edi = MEM32(esi + 0xC);
    ebx = 0; /* xor self */
    edi = edi + 0x18;
    /* cmp MEM8(0xB228D1), LO8(ebx) - flags set for next jcc */
    MEM8(0xB228D3) = 1;
    if (CMP_EQ(MEM8(0xB228D1), LO8(ebx))) { g_seh_ebp = ebp; sub_001E95CE(); return; } /* je: equal / zero */

loc_001E95C2: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_001E9155(); /* call 0x001E9155 */

loc_001E95C9: ;
    g_seh_ebp = ebp; sub_001E969F(); return; /* tail jmp 0x001E969F */

}

/**
 * sub_001E95CE
 * Original: 0x001E95CE - 0x001E969F (209 bytes, 41 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E95CE(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E95CE: ;
    PUSH32(esp, ebp);
    MEM8(0xB228D4) = 0x20;
    MEM8(0xB228D5) = 2;
    MEM32(0xB228DC) = ebx;
    MEM8(0xB228E9) = LO8(ebx);
    MEM8(0xB228EA) = LO8(ebx);
    MEM8(0xB228EB) = LO8(ebx);
    MEM16(0xB228F0) = 8;
    SET_LO8(eax, MEM8(esi + 4));
    ebp = 0xB228D4;
    PUSH32(esp, ebp);
    SET_LO8(eax, LO8(eax) >> 7);
    PUSH32(esp, edi);
    MEM8(0xB228F2) = LO8(eax);
    MEM8(0xB228E8) = LO8(ebx);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E961B: ;
    eax = MEM32(0xB228E4);
    MEM32(esi + 8) = eax;
    MEM8(0xB228D4) = 0x30;
    MEM8(0xB228D5) = 0x40;
    MEM32(0xB228DC) = 0x1E938E;
    MEM32(0xB228E0) = esi;
    eax = MEM32(esi + 8);
    PUSH32(esp, 8);
    MEM32(0xB228E4) = eax;
    POP32(esp, eax);
    MEM32(0xB228EC) = 0xB22954;
    MEM32(0xB228E8) = eax;
    MEM8(0xB228F0) = 2;
    MEM8(0xB228F1) = LO8(ebx);
    MEM8(0xB228F2) = LO8(ebx);
    MEM8(0xB228FC) = 0x80;
    MEM8(0xB228FD) = 6;
    MEM16(0xB228FE) = 0x100;
    MEM16(0xB22900) = LO16(ebx);
    MEM16(0xB22902) = LO16(eax);
    PUSH32(esp, 0); sub_001E8CEA(); /* call 0x001E8CEA */

loc_001E9697: ;
    PUSH32(esp, ebp);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E969E: ;
    POP32(esp, ebp);

}

/**
 * sub_001E969F
 * Original: 0x001E969F - 0x001E96A3 (4 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E969F(void)
{

loc_001E969F: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_001E96A3
 * Original: 0x001E96A3 - 0x001E96F1 (78 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E96A3(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E96A3: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, 0xB22920);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E96B1: ;
    eax = MEM32(ebp + 8);
    edx = 0; /* xor self */
    MEM8(0xB228D3) = 5;
    if (CMP_L(MEM32(eax + 4), edx)) goto loc_001E96E4; /* jl: less (signed <) */

loc_001E96C2: ;
    if (CMP_NE(MEM8(0xB228D1), LO8(edx))) goto loc_001E96E4; /* jne: not equal / not zero */

loc_001E96CA: ;
    SET_LO16(ecx, MEM16(0xB2295E));
    if (CMP_BE(LO16(ecx), 0x50)) { g_seh_ebp = ebp; sub_001E96F1(); return; } /* jbe: below or equal (unsigned <=) */

loc_001E96D7: ;
    MEM8(0xB228D2) = LO8(edx);
    MEM32(eax + 4) = 0x80000400u;

loc_001E96E4: ;
    PUSH32(esp, MEM32(ebp + 0xC));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E91C2(); /* call 0x001E91C2 */

loc_001E96ED: ;
    POP32(esp, ebp);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E96E4
 * Original: 0x001E96E4 - 0x001E96ED (9 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E96E4(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E96E4: ;
    PUSH32(esp, MEM32(ebp + 0xC));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E91C2(); /* call 0x001E91C2 */

}

/**
 * sub_001E96ED
 * Original: 0x001E96ED - 0x001E96F1 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E96ED(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E96ED: ;
    POP32(esp, ebp);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E96F1
 * Original: 0x001E96F1 - 0x001E975C (107 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E96F1(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E96F1: ;
    ecx = ZX16(LO16(ecx));
    if (CMP_EQ(ecx, MEM32(eax + 0x14))) goto loc_001E9702; /* je: equal / zero */

loc_001E96F9: ;
    MEM32(eax + 4) = 0x80000000u;
    g_seh_ebp = ebp; sub_001E96E4(); return; /* tail jmp 0x001E96E4 */

loc_001E9702: ;
    SET_LO16(eax, ZX8(MEM8(0xB22961)));
    MEM32(0xB228DC) = 0x1E9469;
    MEM32(0xB228EC) = edx;
    MEM32(0xB228E8) = edx;
    MEM8(0xB228FC) = LO8(edx);
    MEM8(0xB228FD) = 9;
    MEM16(0xB228FE) = LO16(eax);
    MEM16(0xB22900) = LO16(edx);
    MEM16(0xB22902) = LO16(edx);
    PUSH32(esp, 0); sub_001E8CEA(); /* call 0x001E8CEA */

loc_001E9746: ;
    eax = MEM32(ebp + 0xC);
    eax = MEM32(eax + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E975A: ;
    g_seh_ebp = ebp; sub_001E96ED(); return; /* tail jmp 0x001E96ED */

}

/**
 * sub_001E975C
 * Original: 0x001E975C - 0x001E9781 (37 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E975C(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E975C: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    ebx = 0; /* xor self */
    /* cmp MEM8(0xB228D1), LO8(ebx) - flags set for next jcc */
    PUSH32(esp, esi);
    esi = edx;
    MEM8(0xB228D3) = 4;
    if (CMP_EQ(MEM8(0xB228D1), LO8(ebx))) { g_seh_ebp = ebp; sub_001E9781(); return; } /* je: equal / zero */

loc_001E9775: ;
    PUSH32(esp, esi);
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_001E9155(); /* call 0x001E9155 */

loc_001E977C: ;
    g_seh_ebp = ebp; sub_001E98A3(); return; /* tail jmp 0x001E98A3 */

}

/**
 * sub_001E9781
 * Original: 0x001E9781 - 0x001E98A3 (290 bytes, 65 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9781(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9781: ;
    SET_LO8(eax, MEM8(0xB22958));
    if (CMP_EQ(LO8(eax), LO8(ebx))) goto loc_001E97BE; /* je: equal / zero */

loc_001E978A: ;
    /* cmp LO8(eax), 9 - flags set for next jcc */
    SET_LO8(eax, (CMP_NE(LO8(eax), 9)) ? 1 : 0); /* setne */
    SET_LO8(eax, LO8(eax) + 1);
    MEM8(esi) = LO8(eax);
    SET_LO8(eax, MEM8(0xB22958));
    MEM8(ebp + -3) = LO8(eax);
    SET_LO8(eax, MEM8(0xB22959));
    MEM8(ebp + -2) = LO8(eax);
    SET_LO8(eax, MEM8(0xB2295A));
    MEM8(ebp + -1) = LO8(eax);
    MEM8(ebp + -4) = 0x81;
    PUSH32(esp, MEM32(ebp + -4));
    ecx = esi;
    PUSH32(esp, 0); sub_001E935A(); /* call 0x001E935A */

loc_001E97B9: ;
    g_seh_ebp = ebp; sub_001E98A3(); return; /* tail jmp 0x001E98A3 */

loc_001E97BE: ;
    SET_LO16(eax, ZX8(MEM8(0xB2295B)));
    MEM16(0xB228F0) = LO16(eax);
    MEM8(0xB228D4) = 0x20;
    MEM8(0xB228D5) = 2;
    MEM32(0xB228DC) = ebx;
    MEM8(0xB228E9) = LO8(ebx);
    MEM8(0xB228EA) = LO8(ebx);
    MEM8(0xB228EB) = LO8(ebx);
    SET_LO8(eax, MEM8(esi + 4));
    SET_LO8(eax, LO8(eax) >> 7);
    MEM8(0xB228F2) = LO8(eax);
    SET_LO8(eax, MEM8(esi + 5));
    PUSH32(esp, edi);
    MEM8(0xB228E8) = LO8(eax);
    eax = MEM32(esi + 0xC);
    edi = 0xB228D4;
    PUSH32(esp, edi);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9818: ;
    eax = MEM32(0xB228E4);
    MEM32(esi + 8) = eax;
    MEM8(0xB228D4) = 0x30;
    MEM8(0xB228D5) = 0x40;
    MEM32(0xB228DC) = 0x1E96A3;
    MEM32(0xB228E0) = esi;
    eax = MEM32(esi + 8);
    PUSH32(esp, 0x50);
    MEM32(0xB228E4) = eax;
    POP32(esp, eax);
    MEM32(0xB228EC) = 0xB2295C;
    MEM32(0xB228E8) = eax;
    MEM8(0xB228F0) = 2;
    MEM8(0xB228F1) = 1;
    MEM8(0xB228F2) = LO8(ebx);
    MEM8(0xB228FC) = 0x80;
    MEM8(0xB228FD) = 6;
    MEM16(0xB228FE) = 0x200;
    MEM16(0xB22900) = LO16(ebx);
    MEM16(0xB22902) = LO16(eax);
    PUSH32(esp, 0); sub_001E8CEA(); /* call 0x001E8CEA */

loc_001E9895: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, edi);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E98A2: ;
    POP32(esp, edi);

}

/**
 * sub_001E98A3
 * Original: 0x001E98A3 - 0x001E98FB (88 bytes, 29 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E98A3(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E98A3: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

    eax--;
    if ((eax == 0)) goto loc_001E98DB; /* je: equal / zero */

loc_001E98B6: ;
    eax--;
    if ((eax == 0)) goto loc_001E98CE; /* je: equal / zero */

loc_001E98B9: ;
    eax--;
    if ((eax != 0)) goto loc_001E98F8; /* jne: not equal / not zero */

loc_001E98BC: ;
    edx = MEM32(0xB22950);
    ecx = 0xB228D4;
    PUSH32(esp, 0); sub_001E975C(); /* call 0x001E975C */

loc_001E98CC: ;
    goto loc_001E98F8;

loc_001E98CE: ;
    ecx = MEM32(0xB22950);
    PUSH32(esp, 0); sub_001E95A6(); /* call 0x001E95A6 */

loc_001E98D9: ;
    goto loc_001E98F8;

loc_001E98DB: ;
    eax = MEM32(0xB22950);
    eax = MEM32(eax + 0xC);
    PUSH32(esp, 0xB228D4);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EA8D9(); /* call 0x001EA8D9 */

loc_001E98F1: ;
    goto loc_001E98F8;

loc_001E98F3: ;
    PUSH32(esp, 0); sub_001E8E02(); /* call 0x001E8E02 */

loc_001E98F8: ;
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001E98FB
 * Original: 0x001E98FB - 0x001E990E (19 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E98FB(void)
{

loc_001E98FB: ;
    eax = MEM32(ecx + 0xC);
    PUSH32(esp, MEM32(esp + 4));
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EA8D9(); /* call 0x001EA8D9 */

loc_001E990B: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E990E
 * Original: 0x001E990E - 0x001E9912 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E990E(void)
{

loc_001E990E: ;
    eax = MEM32(ecx + 0x1C);
    esp += 4; return; /* ret */

}

/**
 * sub_001E9912
 * Original: 0x001E9912 - 0x001E991F (13 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9912(void)
{

loc_001E9912: ;
    edx = MEM32(esp + 4);
    eax = MEM32(ecx + 0x1C);
    MEM32(ecx + 0x1C) = edx;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E991F
 * Original: 0x001E991F - 0x001E9923 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E991F(void)
{

loc_001E991F: ;
    SET_LO8(eax, MEM8(ecx + 2));
    esp += 4; return; /* ret */

}

/**
 * sub_001E9923
 * Original: 0x001E9923 - 0x001E992D (10 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9923(void)
{

loc_001E9923: ;
    SET_LO8(eax, MEM8(esp + 4));
    MEM8(ecx + 7) = LO8(eax);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E992D
 * Original: 0x001E992D - 0x001E9997 (106 bytes, 34 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E992D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E992D: ;
    eax = MEM32(esp + 4);
    ecx = 0xC000000Fu;
    if (CMP_G(eax, ecx)) goto loc_001E997A; /* jg: greater (signed >) */

loc_001E993A: ;
    if (CMP_EQ(eax, ecx)) goto loc_001E9973; /* je: equal / zero */

loc_001E993C: ;
    if (CMP_EQ(eax, 0x80000000u)) goto loc_001E995F; /* je: equal / zero */

loc_001E9943: ;
    if (CMP_EQ(eax, 0x80000100u)) goto loc_001E996E; /* je: equal / zero */

loc_001E994A: ;
    if (CMP_EQ(eax, 0x80000800u)) goto loc_001E9967; /* je: equal / zero */

loc_001E9951: ;
    if (CMP_LE(eax, 0xBFFFFFFFu)) goto loc_001E998C; /* jle: less or equal (signed <=) */

loc_001E9958: ;
    if (CMP_G(eax, 0xC000000Eu)) goto loc_001E998C; /* jg: greater (signed >) */

loc_001E995F: ;
    eax = 0x45D;

loc_001E9964: ;
    esp += 8; return; /* ret 4 */

loc_001E9967: ;
    eax = 0x5AA;
    goto loc_001E9964;

loc_001E996E: ;
    PUSH32(esp, 0xE);

loc_001E9970: ;
    POP32(esp, eax);
    goto loc_001E9964;

loc_001E9973: ;
    eax = 0x4C7;
    goto loc_001E9964;

loc_001E997A: ;
    if (CMP_EQ(eax, 0xC0000010u)) goto loc_001E995F; /* je: equal / zero */

loc_001E9981: ;
    if (TEST_Z(eax, eax)) { sub_001E9997(); return; } /* je: equal / zero */

loc_001E9985: ;
    if (CMP_EQ(eax, 0x40000000)) goto loc_001E9990; /* je: equal / zero */

loc_001E998C: ;
    PUSH32(esp, 0x1F);
    goto loc_001E9970;

loc_001E9990: ;
    eax = 0x3E5;
    goto loc_001E9964;

}

/**
 * sub_001E995F
 * Original: 0x001E995F - 0x001E9964 (5 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E995F(void)
{

loc_001E995F: ;
    eax = 0x45D;

}

/**
 * sub_001E9964
 * Original: 0x001E9964 - 0x001E9997 (51 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9964(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9964: ;
    esp += 8; return; /* ret 4 */

    PUSH32(esp, 0xE);

loc_001E9970: ;
    POP32(esp, eax);
    goto loc_001E9964;

    eax = 0x4C7;
    goto loc_001E9964;

    if (CMP_EQ(eax, 0xC0000010u)) { sub_001E995F(); return; } /* je: equal / zero */

loc_001E9981: ;
    if (TEST_Z(eax, eax)) { sub_001E9997(); return; } /* je: equal / zero */

loc_001E9985: ;
    if (CMP_EQ(eax, 0x40000000)) goto loc_001E9990; /* je: equal / zero */

loc_001E998C: ;
    PUSH32(esp, 0x1F);
    goto loc_001E9970;

loc_001E9990: ;
    eax = 0x3E5;
    goto loc_001E9964;

}

/**
 * sub_001E9997
 * Original: 0x001E9997 - 0x001E999B (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9997(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9997: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001E9964(); return; /* tail jmp 0x001E9964 */

}

/**
 * sub_001E999B
 * Original: 0x001E999B - 0x001E9A03 (104 bytes, 31 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E999B(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E999B: ;
    eax = MEM32(esp + 4);
    ecx = 0xC000000Fu;
    if (CMP_G(eax, ecx)) goto loc_001E99E3; /* jg: greater (signed >) */

loc_001E99A8: ;
    if (CMP_EQ(eax, ecx)) goto loc_001E99DC; /* je: equal / zero */

loc_001E99AA: ;
    if (CMP_EQ(eax, 0x80000000u)) goto loc_001E99CD; /* je: equal / zero */

loc_001E99B1: ;
    if (CMP_EQ(eax, 0x80000100u)) goto loc_001E99D5; /* je: equal / zero */

loc_001E99B8: ;
    if (CMP_EQ(eax, 0x80000800u)) goto loc_001E99D5; /* je: equal / zero */

loc_001E99BF: ;
    if (CMP_LE(eax, 0xBFFFFFFFu)) goto loc_001E99F5; /* jle: less or equal (signed <=) */

loc_001E99C6: ;
    if (CMP_G(eax, 0xC000000Eu)) goto loc_001E99F5; /* jg: greater (signed >) */

loc_001E99CD: ;
    eax = 0xC0000185u;

loc_001E99D2: ;
    esp += 8; return; /* ret 4 */

loc_001E99D5: ;
    eax = 0xC000009Au;
    goto loc_001E99D2;

loc_001E99DC: ;
    eax = 0xC0000120u;
    goto loc_001E99D2;

loc_001E99E3: ;
    if (CMP_EQ(eax, 0xC0000010u)) goto loc_001E99CD; /* je: equal / zero */

loc_001E99EA: ;
    if (TEST_Z(eax, eax)) { sub_001E9A03(); return; } /* je: equal / zero */

loc_001E99EE: ;
    if (CMP_EQ(eax, 0x40000000)) goto loc_001E99FC; /* je: equal / zero */

loc_001E99F5: ;
    eax = 0xC0000001u;
    goto loc_001E99D2;

loc_001E99FC: ;
    eax = 0x103;
    goto loc_001E99D2;

}

/**
 * sub_001E99CD
 * Original: 0x001E99CD - 0x001E99D2 (5 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E99CD(void)
{

loc_001E99CD: ;
    eax = 0xC0000185u;

}

/**
 * sub_001E99D2
 * Original: 0x001E99D2 - 0x001E9A03 (49 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E99D2(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E99D2: ;
    esp += 8; return; /* ret 4 */

    eax = 0xC0000120u;
    goto loc_001E99D2;

    if (CMP_EQ(eax, 0xC0000010u)) { sub_001E99CD(); return; } /* je: equal / zero */

loc_001E99EA: ;
    if (TEST_Z(eax, eax)) { sub_001E9A03(); return; } /* je: equal / zero */

loc_001E99EE: ;
    if (CMP_EQ(eax, 0x40000000)) goto loc_001E99FC; /* je: equal / zero */

loc_001E99F5: ;
    eax = 0xC0000001u;
    goto loc_001E99D2;

loc_001E99FC: ;
    eax = 0x103;
    goto loc_001E99D2;

}

/**
 * sub_001E9A03
 * Original: 0x001E9A03 - 0x001E9A07 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9A03(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9A03: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001E99D2(); return; /* tail jmp 0x001E99D2 */

}

/**
 * sub_001E9A07
 * Original: 0x001E9A07 - 0x001E9A0D (6 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9A07(void)
{

loc_001E9A07: ;
    eax = MEM32(0xB229AC);
    esp += 4; return; /* ret */

}

/**
 * sub_001E9A0D
 * Original: 0x001E9A0D - 0x001E9A83 (118 bytes, 49 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9A0D(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9A0D: ;
    PUSH32(esp, ebp);
    ebp = esp;
    ecx = MEM32(0xB229AC);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = ZX16(MEM16(0xB2295E));
    PUSH32(esp, edi);
    esi = esi + 0xB2295C;
    edi = 0; /* xor self */

loc_001E9A28: ;
    SET_LO8(edx, MEM8(ecx));
    if (TEST_Z(LO8(edx), LO8(edx))) goto loc_001E9A7A; /* je: equal / zero */

loc_001E9A2E: ;
    eax = ZX8(LO8(edx));
    ecx = ecx + eax;
    if (CMP_AE(ecx, esi)) goto loc_001E9A7A; /* jae: above or equal (unsigned >=) */

loc_001E9A37: ;
    SET_LO8(eax, MEM8(ecx + 1));
    if (CMP_NE(LO8(eax), 5)) goto loc_001E9A72; /* jne: not equal / not zero */

loc_001E9A3E: ;
    SET_LO8(edx, MEM8(ecx + 3));
    SET_LO8(edx, LO8(edx) & 3);
    if (CMP_NE(LO8(edx), MEM8(ebp + 8))) goto loc_001E9A72; /* jne: not equal / not zero */

loc_001E9A49: ;
    if (CMP_EQ(MEM8(ebp + 8), 0)) goto loc_001E9A72; /* je: equal / zero */

loc_001E9A4F: ;
    edx = 0; /* xor self */
    SET_LO8(edx, MEM8(ecx + 2));
    ebx = 0; /* xor self */
    edx = edx >> 7;
    edx = ~edx;
    edx = edx & 1;
    /* cmp MEM8(ebp + 0xC), LO8(ebx) - flags set for next jcc */
    SET_LO8(ebx, (CMP_EQ(MEM8(ebp + 0xC), LO8(ebx))) ? 1 : 0); /* sete */
    if (CMP_NE(edx, ebx)) goto loc_001E9A72; /* jne: not equal / not zero */

loc_001E9A68: ;
    SET_LO8(edx, MEM8(ebp + 0x10));
    MEM8(ebp + 0x10) = MEM8(ebp + 0x10) - 1;
    if (TEST_Z(LO8(edx), LO8(edx))) goto loc_001E9A78; /* je: equal / zero */

loc_001E9A72: ;
    if (CMP_NE(LO8(eax), 4)) goto loc_001E9A28; /* jne: not equal / not zero */

loc_001E9A76: ;
    goto loc_001E9A7A;

loc_001E9A78: ;
    edi = ecx;

loc_001E9A7A: ;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 16; return; /* ret 12 */

}

/**
 * sub_001E9A83
 * Original: 0x001E9A83 - 0x001E9A87 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9A83(void)
{

loc_001E9A83: ;
    eax = MEM32(ecx + 0x14);
    esp += 4; return; /* ret */

}

/**
 * sub_001E9A87
 * Original: 0x001E9A87 - 0x001E9AB5 (46 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9A87(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9A87: ;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = ecx;
    ebx = 0; /* xor self */
    if (CMP_NE(MEM8(edi), 5)) { g_seh_ebp = ebp; sub_001E9AB5(); return; } /* jne: not equal / not zero */

loc_001E9A92: ;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9A97: ;
    ebx = eax;
    eax = MEM32(ebx + 8);
    if (TEST_Z(eax, eax)) { g_seh_ebp = ebp; sub_001E9AB5(); return; } /* je: equal / zero */

loc_001E9AA0: ;
    MEM32(edi + 8) = eax;
    eax = MEM32(esp + 0xC);
    MEM32(eax + 4) = MEM32(eax + 4) & 0;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001E9AB1: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001E9B08(); return; /* tail jmp 0x001E9B08 */

}

/**
 * sub_001E9AB5
 * Original: 0x001E9AB5 - 0x001E9B08 (83 bytes, 28 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9AB5(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9AB5: ;
    SET_LO8(eax, MEM8(edi + 5));
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    MEM8(esi + 0x15) = MEM8(esi + 0x15) & 0;
    MEM8(esi + 0x16) = MEM8(esi + 0x16) & 0;
    MEM8(esi + 0x14) = LO8(eax);
    SET_LO16(eax, ZX8(MEM8(edi + 6)));
    MEM16(esi + 0x1C) = LO16(eax);
    SET_LO8(eax, MEM8(edi + 4));
    MEM32(esi + 0x18) = MEM32(esi + 0x18) & 0;
    SET_LO8(eax, LO8(eax) >> 7);
    MEM8(esi + 0x1E) = LO8(eax);
    MEM8(esi + 1) = 2;
    eax = MEM32(edi + 0xC);
    PUSH32(esp, esi);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9AEF: ;
    if (TEST_S(eax, eax)) goto loc_001E9B03; /* jl: less (signed <) */

loc_001E9AF3: ;
    /* test ebx, ebx - flags set for next jcc */
    ecx = MEM32(esi + 0x10);
    MEM32(edi + 8) = ecx;
    if (TEST_Z(ebx, ebx)) goto loc_001E9B03; /* je: equal / zero */

loc_001E9AFD: ;
    ecx = MEM32(esi + 0x10);
    MEM32(ebx + 8) = ecx;

loc_001E9B03: ;
    MEM32(esi + 0x10) = MEM32(esi + 0x10) & 0;
    POP32(esp, esi);

}

/**
 * sub_001E9B08
 * Original: 0x001E9B08 - 0x001E9B0D (5 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9B08(void)
{

loc_001E9B08: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9B0D
 * Original: 0x001E9B0D - 0x001E9B67 (90 bytes, 32 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9B0D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9B0D: ;
    PUSH32(esp, esi);
    esi = ecx;
    PUSH32(esp, edi);
    edi = MEM32(esi + 8);
    MEM32(esi + 8) = MEM32(esi + 8) & 0;
    if (CMP_NE(MEM8(esi), 5)) goto loc_001E9B46; /* jne: not equal / not zero */

loc_001E9B1D: ;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9B22: ;
    ecx = eax;
    PUSH32(esp, 0); sub_001E8BF5(); /* call 0x001E8BF5 */

loc_001E9B29: ;
    goto loc_001E9B37;

loc_001E9B2B: ;
    if (CMP_EQ(MEM32(eax + 8), edi)) { sub_001E9B67(); return; } /* je: equal / zero */

loc_001E9B30: ;
    ecx = eax;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9B37: ;
    if (TEST_NZ(eax, eax)) goto loc_001E9B2B; /* jne: not equal / not zero */

loc_001E9B3B: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9B42: ;
    MEM32(eax + 8) = MEM32(eax + 8) & 0;

loc_001E9B46: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax + 0x18) = MEM32(eax + 0x18) & 0;
    PUSH32(esp, eax);
    MEM8(eax + 1) = 0x43;
    MEM32(eax + 0x10) = edi;
    eax = MEM32(esi + 0xC);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9B62: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9B62
 * Original: 0x001E9B62 - 0x001E9B67 (5 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9B62(void)
{

loc_001E9B62: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9B67
 * Original: 0x001E9B67 - 0x001E9B79 (18 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9B67(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9B67: ;
    eax = MEM32(esp + 0xC);
    MEM32(eax + 4) = MEM32(eax + 4) & 0;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001E9B75: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001E9B62(); return; /* tail jmp 0x001E9B62 */

}

/**
 * sub_001E9B79
 * Original: 0x001E9B79 - 0x001E9BAA (49 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9B79(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9B79: ;
    PUSH32(esp, 0); sub_001E8BF5(); /* call 0x001E8BF5 */

loc_001E9B7E: ;
    if (TEST_Z(eax, eax)) goto loc_001E9BA7; /* je: equal / zero */

loc_001E9B82: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = ZX8(MEM8(esp + 0xC));
    esi = 0xFFFFFF7Fu;
    edi = edi & esi;

loc_001E9B90: ;
    ecx = ZX8(MEM8(eax + 4));
    ecx = ecx & esi;
    if (CMP_EQ(ecx, edi)) goto loc_001E9BA5; /* je: equal / zero */

loc_001E9B9A: ;
    ecx = eax;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9BA1: ;
    if (TEST_NZ(eax, eax)) goto loc_001E9B90; /* jne: not equal / not zero */

loc_001E9BA5: ;
    POP32(esp, edi);
    POP32(esp, esi);

loc_001E9BA7: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9BAA
 * Original: 0x001E9BAA - 0x001E9BF2 (72 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9BAA(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9BAA: ;
    eax = MEM32(esp + 4);
    PUSH32(esp, ebx);
    ebx = eax;
    ebx = ebx - MEM32(0xB229B0);
    PUSH32(esp, esi);
    esi = ecx;
    MEM8(eax + 3) = 0x80;
    ecx = ecx - MEM32(0xB229B0);
    ebx = (uint32_t)((int32_t)ebx >> 5);
    ecx = (uint32_t)((int32_t)ecx >> 5);
    MEM8(eax + 1) = LO8(ecx);
    ecx = esi;
    PUSH32(esp, 0); sub_001E8BF5(); /* call 0x001E8BF5 */

loc_001E9BD4: ;
    if (TEST_NZ(eax, eax)) goto loc_001E9BE4; /* jne: not equal / not zero */

loc_001E9BD8: ;
    MEM8(esi + 2) = LO8(ebx);
    goto loc_001E9BED;

loc_001E9BDD: ;
    ecx = eax;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9BE4: ;
    if (CMP_NE(MEM8(eax + 3), 0x80)) goto loc_001E9BDD; /* jne: not equal / not zero */

loc_001E9BEA: ;
    MEM8(eax + 3) = LO8(ebx);

loc_001E9BED: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9BF2
 * Original: 0x001E9BF2 - 0x001E9C4E (92 bytes, 40 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9BF2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9BF2: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    ebp = ecx;
    PUSH32(esp, 0); sub_001E8BF5(); /* call 0x001E8BF5 */

loc_001E9BFD: ;
    esi = MEM32(esp + 0x14);
    edi = eax;
    /* cmp edi, esi - flags set for next jcc */
    SET_LO8(ebx, 1);
    if (CMP_NE(edi, esi)) goto loc_001E9C17; /* jne: not equal / not zero */

loc_001E9C09: ;
    SET_LO8(eax, MEM8(esi + 3));
    /* cmp LO8(eax), 0x80 - flags set for next jcc */
    MEM8(ebp + 2) = LO8(eax);
    if (CMP_NE(LO8(eax), 0x80)) goto loc_001E9C3D; /* jne: not equal / not zero */

loc_001E9C13: ;
    SET_LO8(ebx, 0); /* xor self */
    goto loc_001E9C3D;

loc_001E9C17: ;
    if (TEST_Z(edi, edi)) goto loc_001E9C3D; /* je: equal / zero */

loc_001E9C1B: ;
    ecx = edi;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9C22: ;
    if (CMP_EQ(eax, esi)) goto loc_001E9C33; /* je: equal / zero */

loc_001E9C26: ;
    ecx = edi;
    PUSH32(esp, 0); sub_001E8C0C(); /* call 0x001E8C0C */

loc_001E9C2D: ;
    edi = eax;
    if (TEST_NZ(edi, edi)) goto loc_001E9C1B; /* jne: not equal / not zero */

loc_001E9C33: ;
    if (TEST_Z(edi, edi)) goto loc_001E9C3D; /* je: equal / zero */

loc_001E9C37: ;
    SET_LO8(eax, MEM8(esi + 3));
    MEM8(edi + 3) = LO8(eax);

loc_001E9C3D: ;
    POP32(esp, edi);
    MEM8(esi + 3) = 0x80;
    MEM8(esi + 1) = 0x80;
    POP32(esp, esi);
    POP32(esp, ebp);
    SET_LO8(eax, LO8(ebx));
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9C4E
 * Original: 0x001E9C4E - 0x001E9C6E (32 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9C4E(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9C4E: ;
    eax = MEM32(esp + 4);
    edx = MEM32(eax + 4);
    edx = ZX8(MEM8(edx + 4));
    edx = edx & 0x7F;
    edx--;
    /* cmp edx, 4 - flags set for next jcc */
    MEM32(ecx + 0x14) = edx;
    if (CMP_L(edx, 4)) { g_seh_ebp = ebp; sub_001E9C6E(); return; } /* jl: less (signed <) */

loc_001E9C65: ;
    MEM32(ecx + 0x14) = 0x20;
    g_seh_ebp = ebp; sub_001E9CB2(); return; /* tail jmp 0x001E9CB2 */

}

/**
 * sub_001E9C6E
 * Original: 0x001E9C6E - 0x001E9CB2 (68 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9C6E(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9C6E: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    edx = edx ^ 2;
    MEM32(ecx + 0x14) = edx;
    PUSH32(esp, edi);
    edi = MEM32(eax + esi * 4);
    if (CMP_NE(MEM8(edi), 1)) goto loc_001E9C90; /* jne: not equal / not zero */

loc_001E9C82: ;
    if (CMP_EQ(esi, 1)) goto loc_001E9CB0; /* je: equal / zero */

loc_001E9C87: ;
    MEM32(ecx + 0x14) = 0x20;
    goto loc_001E9CB0;

loc_001E9C90: ;
    if (CMP_BE(esi, 1)) goto loc_001E9CB0; /* jbe: below or equal (unsigned <=) */

loc_001E9C95: ;
    eax = MEM32(eax + 8);
    eax = ZX8(MEM8(eax + 4));
    eax = eax & 0x7F;
    eax--;
    if (CMP_A(eax, 3)) goto loc_001E9C87; /* ja: above (unsigned >) */

loc_001E9CA5: ;
    if (CMP_NE(eax, 2)) goto loc_001E9CB0; /* jne: not equal / not zero */

loc_001E9CAA: ;
    edx = edx + 0x10;
    MEM32(ecx + 0x14) = edx;

loc_001E9CB0: ;
    POP32(esp, edi);
    POP32(esp, esi);

}

/**
 * sub_001E9CB2
 * Original: 0x001E9CB2 - 0x001E9CB5 (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9CB2(void)
{

loc_001E9CB2: ;
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9CB5
 * Original: 0x001E9CB5 - 0x001E9DA2 (237 bytes, 90 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9CB5(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9CB5: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x14;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(ebp + 8);
    SET_LO8(eax, MEM8(esi + 1));
    ebx = 0; /* xor self */
    /* test LO8(eax), 0x40 - flags set for next jcc */
    MEM8(ebp + -1) = LO8(ebx);
    if (TEST_Z(LO8(eax), 0x40)) goto loc_001E9CF8; /* je: equal / zero */

loc_001E9CCC: ;
    if (CMP_NE(MEM32(esi + 8), ebx)) goto loc_001E9CF8; /* jne: not equal / not zero */

loc_001E9CD1: ;
    edx = ebp + -12;
    MEM32(ebp + -8) = edx;
    edx = ebp + -12;
    MEM32(ebp + -12) = edx;
    edx = ebp + -20;
    MEM8(ebp + -1) = 1;
    MEM8(ebp + -20) = LO8(ebx);
    MEM8(ebp + -18) = 4;
    MEM32(ebp + -16) = ebx;
    MEM32(esi + 8) = 0x1E75B1;
    MEM32(esi + 0xC) = edx;

loc_001E9CF8: ;
    eax = ZX8(LO8(eax));
    eax--;
    eax--;
    if ((eax == 0)) goto loc_001E9D4E; /* je: equal / zero */

loc_001E9CFF: ;
    eax = eax - 7;
    if ((eax == 0)) goto loc_001E9D46; /* je: equal / zero */

loc_001E9D04: ;
    eax = eax - 0x37;
    if ((eax == 0)) goto loc_001E9D30; /* je: equal / zero */

loc_001E9D09: ;
    eax = eax - 3;
    if ((eax == 0)) goto loc_001E9D28; /* je: equal / zero */

loc_001E9D0E: ;
    eax = eax - 0x3F;
    if ((eax == 0)) goto loc_001E9D20; /* je: equal / zero */

loc_001E9D13: ;
    eax = eax - 0x41;
    if ((eax != 0)) goto loc_001E9D63; /* jne: not equal / not zero */

loc_001E9D18: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E9B0D(); /* call 0x001E9B0D */

loc_001E9D1E: ;
    goto loc_001E9D70;

loc_001E9D20: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E9A87(); /* call 0x001E9A87 */

loc_001E9D26: ;
    goto loc_001E9D70;

loc_001E9D28: ;
    eax = ecx + 0x18;
    MEM32(esi + 0x18) = eax;
    goto loc_001E9D63;

loc_001E9D30: ;
    if (CMP_NE(MEM32(esi + 0x10), ebx)) goto loc_001E9D3B; /* jne: not equal / not zero */

loc_001E9D35: ;
    eax = MEM32(ecx + 8);
    MEM32(esi + 0x10) = eax;

loc_001E9D3B: ;
    if (CMP_NE(MEM8(esi + 0x29), 9)) goto loc_001E9D63; /* jne: not equal / not zero */

loc_001E9D41: ;
    MEM32(ecx + 0x18) = ebx;
    goto loc_001E9D63;

loc_001E9D46: ;
    SET_LO8(eax, MEM8(ecx + 5));
    MEM8(esi + 0x14) = LO8(eax);
    goto loc_001E9D63;

loc_001E9D4E: ;
    SET_LO8(eax, MEM8(ecx + 5));
    MEM8(esi + 0x14) = LO8(eax);
    eax = ecx + 0x18;
    MEM32(esi + 0x18) = eax;
    SET_LO8(eax, MEM8(ecx + 4));
    SET_LO8(eax, LO8(eax) >> 7);
    MEM8(esi + 0x1E) = LO8(eax);

loc_001E9D63: ;
    eax = MEM32(ecx + 0xC);
    PUSH32(esp, esi);
    eax = eax + 0x18;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EAA4A(); /* call 0x001EAA4A */

loc_001E9D70: ;
    if (CMP_EQ(MEM8(ebp + -1), LO8(ebx))) goto loc_001E9D9C; /* je: equal / zero */

loc_001E9D75: ;
    ecx = eax;
    ecx = ecx & 0xC0000000u;
    if (CMP_NE(ecx, 0x40000000)) goto loc_001E9D96; /* jne: not equal / not zero */

loc_001E9D85: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebx);
    eax = ebp + -20;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1E4), _icall_esp); /* indirect call */
    }

loc_001E9D93: ;
    eax = MEM32(esi + 4);

loc_001E9D96: ;
    MEM32(esi + 8) = ebx;
    MEM32(esi + 0xC) = ebx;

loc_001E9D9C: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001E9DA2
 * Original: 0x001E9DA2 - 0x001E9DC5 (35 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9DA2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9DA2: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = esi + 4;
    edx = MEM32(eax);
    if (CMP_NE(MEM8(edx), 1)) goto loc_001E9DBC; /* jne: not equal / not zero */

loc_001E9DB1: ;
    SET_LO8(edx, MEM8(edx + 4));
    SET_LO8(edx, LO8(edx) & 0x7F);
    if (CMP_EQ(LO8(edx), 1)) { g_seh_ebp = ebp; sub_001E9DC5(); return; } /* je: equal / zero */

loc_001E9DBC: ;
    MEM32(ecx + 0x14) = 0x20;
    g_seh_ebp = ebp; sub_001E9DE0(); return; /* tail jmp 0x001E9DE0 */

}

/**
 * sub_001E9DC5
 * Original: 0x001E9DC5 - 0x001E9DE0 (27 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9DC5(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9DC5: ;
    edx = MEM32(esp + 0xC);
    if (CMP_NE(edx, 1)) goto loc_001E9DD4; /* jne: not equal / not zero */

loc_001E9DCE: ;
    MEM32(ecx + 0x14) = MEM32(ecx + 0x14) & 0;
    g_seh_ebp = ebp; sub_001E9DE0(); return; /* tail jmp 0x001E9DE0 */

loc_001E9DD4: ;
    esi = MEM32(esi);
    edx--;
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    MEM32(eax) = esi;
    PUSH32(esp, 0); sub_001E9C4E(); /* call 0x001E9C4E */

}

/**
 * sub_001E9DE0
 * Original: 0x001E9DE0 - 0x001E9DE4 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9DE0(void)
{

loc_001E9DE0: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9DE4
 * Original: 0x001E9DE4 - 0x001E9E26 (66 bytes, 27 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9DE4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001E9DE4: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x18;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = ecx;
    PUSH32(esp, 5);
    POP32(esp, esi);
    MEM32(ebp + -4) = edi;

loc_001E9DF4: ;
    ecx = MEM32(ebp + esi * 4 + -24);
    esi--;
    PUSH32(esp, 0); sub_001E8BDE(); /* call 0x001E8BDE */

loc_001E9DFE: ;
    /* cmp MEM8(eax), 0 - flags set for next jcc */
    MEM32(ebp + esi * 4 + -24) = eax;
    if (CMP_NE(MEM8(eax), 0)) goto loc_001E9DF4; /* jne: not equal / not zero */

loc_001E9E07: ;
    edx = MEM32(0x1ED22C);
    PUSH32(esp, 5);
    POP32(esp, eax);
    eax = eax - esi;
    /* test MEM8(edx), 1 - flags set for next jcc */
    ecx = ebp + esi * 4 + -24;
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    ecx = edi;
    if (TEST_Z(MEM8(edx), 1)) { g_seh_ebp = ebp; sub_001E9E26(); return; } /* je: equal / zero */

loc_001E9E1F: ;
    PUSH32(esp, 0); sub_001E9DA2(); /* call 0x001E9DA2 */

loc_001E9E24: ;
    g_seh_ebp = ebp; sub_001E9E2B(); return; /* tail jmp 0x001E9E2B */

}

/**
 * sub_001E9E26
 * Original: 0x001E9E26 - 0x001E9E2B (5 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9E26(void)
{

loc_001E9E26: ;
    PUSH32(esp, 0); sub_001E9C4E(); /* call 0x001E9C4E */

}

/**
 * sub_001E9E2B
 * Original: 0x001E9E2B - 0x001E9E6A (63 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9E2B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9E2B: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

    eax = esi + 0xB8;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001E9E4F: ;
    if (TEST_Z(MEM8(esi + 0xD), 4)) goto loc_001E9E66; /* je: equal / zero */

loc_001E9E55: ;
    eax = esi + 0xE8;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001E9E66: ;
    POP32(esp, esi);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001E9E2F
 * Original: 0x001E9E2F - 0x001E9E6A (59 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9E2F(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9E2F: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFE;
    if (TEST_Z(MEM8(esi + 0xD), 2)) goto loc_001E9E4F; /* je: equal / zero */

loc_001E9E3E: ;
    eax = esi + 0xB8;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001E9E4F: ;
    if (TEST_Z(MEM8(esi + 0xD), 4)) goto loc_001E9E66; /* je: equal / zero */

loc_001E9E55: ;
    eax = esi + 0xE8;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001E9E66: ;
    POP32(esp, esi);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001E9E6A
 * Original: 0x001E9E6A - 0x001E9E9D (51 bytes, 19 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9E6A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9E6A: ;
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = ecx;
    /* test MEM8(esi + 0xD), 1 - flags set for next jcc */
    ebp = MEM32(esi + 8);
    PUSH32(esp, edi);
    edi = edx;
    if (TEST_Z(MEM8(esi + 0xD), 1)) goto loc_001E9E88; /* je: equal / zero */

loc_001E9E7A: ;
    eax = esi + 0x70;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E9E84: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFE;

loc_001E9E88: ;
    eax = MEM32(esi + 0xC);
    if (TEST_Z(LO8(eax), 6)) { g_seh_ebp = ebp; sub_001E9E9D(); return; } /* je: equal / zero */

loc_001E9E8F: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xC000009Du);
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(esi + 0x30), _icall_esp); /* indirect call */
    }

loc_001E9E98: ;
    g_seh_ebp = ebp; sub_001E9F6C(); return; /* tail jmp 0x001E9F6C */

}

/**
 * sub_001E9E9D
 * Original: 0x001E9E9D - 0x001E9F6C (207 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9E9D(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9E9D: ;
    eax = eax | 0x1000;
    PUSH32(esp, ebx);
    MEM32(esi + 0xC) = eax;
    eax = MEM32(esi + 0x20);
    MEM32(esi + 0x6C) = edi;
    edi = esi + 0xB8;
    ebx = 0; /* xor self */
    MEM8(edi) = 0x18;
    MEM8(esi + 0xB9) = 5;
    MEM32(esi + 0xC0) = ebx;
    MEM32(esi + 0xC8) = eax;
    MEM32(esi + 0xCC) = 4;
    ecx = MEM32(ebp);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001E9EDD: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 3;
    edx = esi + 0x98;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edx);
    ecx = ecx | 0xFFFFFFFFu;
    PUSH32(esp, ecx);
    eax = 0xFFF0BDC0u;
    PUSH32(esp, eax);
    eax = esi + 0x70;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001E9EFC: ;
    MEM8(edi) = 0x30;
    MEM8(esi + 0xB9) = 0x40;
    MEM32(esi + 0xC0) = 0x1EA351;
    MEM32(esi + 0xC4) = esi;
    MEM32(esi + 0xC8) = ebx;
    MEM32(esi + 0xD0) = ebx;
    MEM32(esi + 0xCC) = ebx;
    MEM8(esi + 0xD4) = LO8(ebx);
    MEM8(esi + 0xD5) = LO8(ebx);
    MEM8(esi + 0xD6) = LO8(ebx);
    MEM8(esi + 0xE0) = 2;
    MEM8(esi + 0xE1) = 1;
    MEM16(esi + 0xE2) = LO16(ebx);
    SET_LO16(eax, ZX8(MEM8(ebp + 5)));
    MEM16(esi + 0xE4) = LO16(eax);
    MEM16(esi + 0xE6) = LO16(ebx);
    ecx = MEM32(ebp);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001E9F6B: ;
    POP32(esp, ebx);

}

/**
 * sub_001E9F6C
 * Original: 0x001E9F6C - 0x001E9FF4 (136 bytes, 52 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9F6C(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001E9F6C: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    esp += 4; return; /* ret */

    eax = esi + 0x70;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E9F88: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFE;

loc_001E9F8C: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFD;
    eax = MEM32(esp + 0xC);
    eax = MEM32(eax + 4);
    if (CMP_GE(eax & eax, 0)) goto loc_001E9FA3; /* jge: greater or equal (signed >=) */

loc_001E9F9B: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001E9FA1: ;
    edi = eax;

loc_001E9FA3: ;
    /* cmp MEM32(esi + 0x5F), 0x53425355 - flags set for next jcc */
    eax = 0xC0000001u;
    if (CMP_EQ(MEM32(esi + 0x5F), 0x53425355)) goto loc_001E9FB3; /* je: equal / zero */

loc_001E9FB1: ;
    edi = eax;

loc_001E9FB3: ;
    ecx = MEM32(esi + 0x63);
    if (CMP_EQ(ecx, MEM32(esi + 0x44))) goto loc_001E9FBD; /* je: equal / zero */

loc_001E9FBB: ;
    edi = eax;

loc_001E9FBD: ;
    SET_LO8(ecx, MEM8(esi + 0x6B));
    if (CMP_NE(LO8(ecx), 2)) goto loc_001E9FC7; /* jne: not equal / not zero */

loc_001E9FC5: ;
    edi = eax;

loc_001E9FC7: ;
    if (CMP_NE(LO8(ecx), 1)) goto loc_001E9FD1; /* jne: not equal / not zero */

loc_001E9FCC: ;
    edi = 0xC000003Eu;

loc_001E9FD1: ;
    eax = 0xC0000000u;
    ecx = edi;
    ecx = ecx & eax;
    if (CMP_NE(ecx, eax)) goto loc_001E9FE9; /* jne: not equal / not zero */

loc_001E9FDE: ;
    edx = edi;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001E9FE7: ;
    goto loc_001E9FEF;

loc_001E9FE9: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(esi + 0x30), _icall_esp); /* indirect call */
    }

loc_001E9FEF: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9F70
 * Original: 0x001E9F70 - 0x001E9FF4 (132 bytes, 48 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9F70(void)
{
    int _flags = 0; /* fallback flag var */

loc_001E9F70: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    PUSH32(esp, edi);
    edi = 0; /* xor self */
    if (TEST_Z(MEM8(esi + 0xD), 1)) goto loc_001E9F8C; /* je: equal / zero */

loc_001E9F7E: ;
    eax = esi + 0x70;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001E9F88: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFE;

loc_001E9F8C: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFD;
    eax = MEM32(esp + 0xC);
    eax = MEM32(eax + 4);
    if (CMP_GE(eax & eax, 0)) goto loc_001E9FA3; /* jge: greater or equal (signed >=) */

loc_001E9F9B: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001E9FA1: ;
    edi = eax;

loc_001E9FA3: ;
    /* cmp MEM32(esi + 0x5F), 0x53425355 - flags set for next jcc */
    eax = 0xC0000001u;
    if (CMP_EQ(MEM32(esi + 0x5F), 0x53425355)) goto loc_001E9FB3; /* je: equal / zero */

loc_001E9FB1: ;
    edi = eax;

loc_001E9FB3: ;
    ecx = MEM32(esi + 0x63);
    if (CMP_EQ(ecx, MEM32(esi + 0x44))) goto loc_001E9FBD; /* je: equal / zero */

loc_001E9FBB: ;
    edi = eax;

loc_001E9FBD: ;
    SET_LO8(ecx, MEM8(esi + 0x6B));
    if (CMP_NE(LO8(ecx), 2)) goto loc_001E9FC7; /* jne: not equal / not zero */

loc_001E9FC5: ;
    edi = eax;

loc_001E9FC7: ;
    if (CMP_NE(LO8(ecx), 1)) goto loc_001E9FD1; /* jne: not equal / not zero */

loc_001E9FCC: ;
    edi = 0xC000003Eu;

loc_001E9FD1: ;
    eax = 0xC0000000u;
    ecx = edi;
    ecx = ecx & eax;
    if (CMP_NE(ecx, eax)) goto loc_001E9FE9; /* jne: not equal / not zero */

loc_001E9FDE: ;
    edx = edi;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001E9FE7: ;
    goto loc_001E9FEF;

loc_001E9FE9: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(esi + 0x30), _icall_esp); /* indirect call */
    }

loc_001E9FEF: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001E9FF4
 * Original: 0x001E9FF4 - 0x001EA07D (137 bytes, 37 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001E9FF4(void)
{

loc_001E9FF4: ;
    PUSH32(esp, esi);
    esi = ecx;
    eax = MEM32(esi + 0x20);
    MEM8(esi + 0xD5) = MEM8(esi + 0xD5) & 0;
    MEM8(esi + 0xD6) = MEM8(esi + 0xD6) & 0;
    MEM32(esi + 0xC8) = eax;
    PUSH32(esp, edi);
    eax = esi + 0x5F;
    MEM32(esi + 0xD0) = eax;
    eax = ZX16(MEM16(esi + 0x34));
    PUSH32(esp, 0xFFFFFFFFu);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    PUSH32(esp, 0xFFFE7960u);
    PUSH32(esp, edx);
    edi = esi + 0xB8;
    PUSH32(esp, eax);
    MEM8(edi) = 0x28;
    MEM8(esi + 0xB9) = 0x41;
    MEM32(esi + 0xC0) = 0x1E9F70;
    MEM32(esi + 0xC4) = esi;
    MEM32(esi + 0xCC) = 0xD;
    MEM8(esi + 0xD4) = 2;
    PUSH32(esp, 0); sub_0018F460(); /* call 0x0018F460 */

loc_001EA05C: ;
    ecx = esi + 0x98;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    eax = esi + 0x70;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EA06F: ;
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EA07A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA07D
 * Original: 0x001EA07D - 0x001EA17A (253 bytes, 80 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA07D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA07D: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    eax = MEM32(esi + 0xC);
    edx = 0x800;
    if (TEST_Z(edx, eax)) goto loc_001EA0CC; /* je: equal / zero */

loc_001EA08E: ;
    eax = eax & 0xFFFFF7FFu;
    ecx = esi + 0xB8;
    /* cmp MEM32(esp + 8), ecx - flags set for next jcc */
    MEM32(esi + 0xC) = eax;
    if (CMP_NE(MEM32(esp + 8), ecx)) goto loc_001EA0AA; /* jne: not equal / not zero */

loc_001EA0A2: ;
    ecx = MEM32(esi + 0xEC);
    goto loc_001EA0B0;

loc_001EA0AA: ;
    ecx = MEM32(esi + 0xBC);

loc_001EA0B0: ;
    eax = eax & 0xFFFFF9FFu;
    PUSH32(esp, ecx);
    MEM32(esi + 0xC) = eax;
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001EA0BE: ;
    edx = eax;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001EA0C7: ;
    goto loc_001EA176;

loc_001EA0CC: ;
    ecx = MEM32(esp + 8);
    /* cmp MEM32(ecx + 4), 0 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_L(MEM32(ecx + 4), 0)) goto loc_001EA120; /* jl: less (signed <) */

loc_001EA0D7: ;
    if (TEST_NZ(LO8(eax), 6)) goto loc_001EA120; /* jne: not equal / not zero */

loc_001EA0DB: ;
    edx = MEM32(esi + 0x6C);
    if (CMP_AE(edx, MEM32(esi + 0x2C))) goto loc_001EA0EF; /* jae: above or equal (unsigned >=) */

loc_001EA0E3: ;
    edx = esi;
    PUSH32(esp, 0); sub_001EA17A(); /* call 0x001EA17A */

loc_001EA0EA: ;
    goto loc_001EA175;

loc_001EA0EF: ;
    edi = esi + 0xB8;
    /* cmp ecx, edi - flags set for next jcc */
    edx = 0x200;
    if (CMP_NE(ecx, edi)) goto loc_001EA108; /* jne: not equal / not zero */

loc_001EA0FE: ;
    eax = eax & 0xFFFFFDFFu;
    /* test HI8(eax), 4 - flags set for next jcc */
    goto loc_001EA10F;

loc_001EA108: ;
    eax = eax & 0xFFFFFBFFu;
    /* test edx, eax - flags set for next jcc */

loc_001EA10F: ;
    MEM32(esi + 0xC) = eax;
    if (TEST_NZ(edx, eax)) goto loc_001EA175; /* jne: not equal / not zero */

loc_001EA114: ;
    MEM32(esi + 0xC) = MEM32(esi + 0xC) | edx;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9FF4(); /* call 0x001E9FF4 */

loc_001EA11E: ;
    goto loc_001EA175;

loc_001EA120: ;
    edi = esi + 0xB8;
    if (CMP_NE(ecx, edi)) goto loc_001EA14F; /* jne: not equal / not zero */

loc_001EA12A: ;
    eax = eax & 0xFFFFFDFFu;
    /* test HI8(eax), 4 - flags set for next jcc */
    MEM32(esi + 0xC) = eax;
    if (TEST_Z(HI8(eax), 4)) goto loc_001EA164; /* je: equal / zero */

loc_001EA137: ;
    eax = eax | edx;
    MEM32(esi + 0xC) = eax;
    eax = esi + 0xE8;
    PUSH32(esp, eax);

loc_001EA143: ;
    eax = MEM32(esi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001EA14D: ;
    goto loc_001EA175;

loc_001EA14F: ;
    eax = eax & 0xFFFFFBFFu;
    /* test HI8(eax), 2 - flags set for next jcc */
    MEM32(esi + 0xC) = eax;
    if (TEST_Z(HI8(eax), 2)) goto loc_001EA164; /* je: equal / zero */

loc_001EA15C: ;
    eax = eax | edx;
    MEM32(esi + 0xC) = eax;
    PUSH32(esp, edi);
    goto loc_001EA143;

loc_001EA164: ;
    PUSH32(esp, MEM32(ecx + 4));
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001EA16C: ;
    edx = eax;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001EA175: ;
    POP32(esp, edi);

loc_001EA176: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EA17A
 * Original: 0x001EA17A - 0x001EA19B (33 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA17A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EA17A: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = edx;
    SET_LO8(eax, MEM8(edi + 0x37));
    esi = ecx;
    SET_LO8(ecx, LO8(eax));
    SET_LO8(ecx, LO8(ecx) & 3);
    if (CMP_NE(LO8(ecx), 1)) { g_seh_ebp = ebp; sub_001EA19B(); return; } /* jne: not equal / not zero */

loc_001EA192: ;
    ebx = MEM32(edi + 0x20);
    MEM8(ebp + -1) = 2;
    g_seh_ebp = ebp; sub_001EA1A2(); return; /* tail jmp 0x001EA1A2 */

}

/**
 * sub_001EA19B
 * Original: 0x001EA19B - 0x001EA1A2 (7 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA19B(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA19B: ;
    ebx = MEM32(edi + 0x24);
    MEM8(ebp + -1) = 1;

}

/**
 * sub_001EA1A2
 * Original: 0x001EA1A2 - 0x001EA2A8 (262 bytes, 88 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA1A2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA1A2: ;
    /* test LO8(eax), 4 - flags set for next jcc */
    edx = MEM32(edi + 0x6C);
    if (TEST_Z(LO8(eax), 4)) goto loc_001EA1D1; /* je: equal / zero */

loc_001EA1A9: ;
    ecx = MEM32(edi + 0x38);
    if (CMP_AE(edx, ecx)) goto loc_001EA1B8; /* jae: above or equal (unsigned >=) */

loc_001EA1B0: ;
    eax = edx + 0xB1F824;
    goto loc_001EA1D6;

loc_001EA1B8: ;
    eax = MEM32(edi + 0x3C);
    if (CMP_AE(edx, eax)) goto loc_001EA1C6; /* jae: above or equal (unsigned >=) */

loc_001EA1BF: ;
    eax = MEM32(edi + 0x28);
    eax = eax - ecx;
    goto loc_001EA1D4;

loc_001EA1C6: ;
    ecx = ecx - eax;
    eax = ecx + edx + 0xB1F824;
    goto loc_001EA1D6;

loc_001EA1D1: ;
    eax = MEM32(edi + 0x28);

loc_001EA1D4: ;
    eax = eax + edx;

loc_001EA1D6: ;
    ecx = MEM32(edi + 0x2C);
    ecx = ecx - edx;
    if (CMP_BE(ecx, 0x400)) goto loc_001EA1E8; /* jbe: below or equal (unsigned <=) */

loc_001EA1E3: ;
    ecx = 0x400;

loc_001EA1E8: ;
    edx = edx + ecx;
    MEM32(edi + 0x6C) = edx;
    MEM8(esi + 0x1D) = MEM8(esi + 0x1D) & 0;
    MEM8(esi + 0x1E) = MEM8(esi + 0x1E) & 0;
    MEM32(esi + 0x18) = eax;
    SET_LO8(eax, MEM8(ebp + -1));
    edx = edi + 0x98;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edx);
    MEM32(esi + 0x14) = ecx;
    MEM8(esi + 0x1C) = LO8(eax);
    ecx = ecx | 0xFFFFFFFFu;
    PUSH32(esp, ecx);
    eax = 0xFFE91CA0u;
    PUSH32(esp, eax);
    eax = edi + 0x70;
    PUSH32(esp, eax);
    MEM8(esi) = 0x28;
    MEM8(esi + 1) = 0x41;
    MEM32(esi + 8) = 0x1EA07D;
    MEM32(esi + 0xC) = edi;
    MEM32(esi + 0x10) = ebx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EA230: ;
    eax = MEM32(edi + 8);
    ecx = MEM32(eax);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EA23B: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

    if (TEST_NZ(MEM8(esi + 0xC), 6)) goto loc_001EA28F; /* jne: not equal / not zero */

loc_001EA256: ;
    if (CMP_EQ(MEM32(esi + 0x28), ecx)) goto loc_001EA286; /* je: equal / zero */

loc_001EA25B: ;
    MEM32(esi + 0x6C) = ecx;
    ecx = esi + 0xB8;
    edx = esi;
    PUSH32(esp, 0); sub_001EA17A(); /* call 0x001EA17A */

loc_001EA26B: ;
    eax = MEM32(esi + 0x6C);
    if (CMP_AE(eax, MEM32(esi + 0x2C))) goto loc_001EA2A4; /* jae: above or equal (unsigned >=) */

loc_001EA273: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 4;
    ecx = esi + 0xE8;
    edx = esi;
    PUSH32(esp, 0); sub_001EA17A(); /* call 0x001EA17A */

loc_001EA284: ;
    goto loc_001EA2A4;

loc_001EA286: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9FF4(); /* call 0x001E9FF4 */

loc_001EA28D: ;
    goto loc_001EA2A4;

loc_001EA28F: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFD;
    PUSH32(esp, MEM32(eax + 4));
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001EA29B: ;
    edx = eax;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001EA2A4: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EA240
 * Original: 0x001EA240 - 0x001EA2A8 (104 bytes, 33 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA240(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA240: ;
    eax = MEM32(esp + 4);
    ecx = 0; /* xor self */
    /* cmp MEM32(eax + 4), ecx - flags set for next jcc */
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    if (CMP_L(MEM32(eax + 4), ecx)) goto loc_001EA28F; /* jl: less (signed <) */

loc_001EA250: ;
    if (TEST_NZ(MEM8(esi + 0xC), 6)) goto loc_001EA28F; /* jne: not equal / not zero */

loc_001EA256: ;
    if (CMP_EQ(MEM32(esi + 0x28), ecx)) goto loc_001EA286; /* je: equal / zero */

loc_001EA25B: ;
    MEM32(esi + 0x6C) = ecx;
    ecx = esi + 0xB8;
    edx = esi;
    PUSH32(esp, 0); sub_001EA17A(); /* call 0x001EA17A */

loc_001EA26B: ;
    eax = MEM32(esi + 0x6C);
    if (CMP_AE(eax, MEM32(esi + 0x2C))) goto loc_001EA2A4; /* jae: above or equal (unsigned >=) */

loc_001EA273: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 4;
    ecx = esi + 0xE8;
    edx = esi;
    PUSH32(esp, 0); sub_001EA17A(); /* call 0x001EA17A */

loc_001EA284: ;
    goto loc_001EA2A4;

loc_001EA286: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9FF4(); /* call 0x001E9FF4 */

loc_001EA28D: ;
    goto loc_001EA2A4;

loc_001EA28F: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFD;
    PUSH32(esp, MEM32(eax + 4));
    PUSH32(esp, 0); sub_001E999B(); /* call 0x001E999B */

loc_001EA29B: ;
    edx = eax;
    ecx = esi;
    PUSH32(esp, 0); sub_001E9E6A(); /* call 0x001E9E6A */

loc_001EA2A4: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EA2A8
 * Original: 0x001EA2A8 - 0x001EA351 (169 bytes, 44 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA2A8(void)
{

loc_001EA2A8: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    esi = ecx;
    PUSH32(esp, edi);
    edi = esi + 0x40;
    MEM32(edi) = 0x43425355;
    eax = MEM32(esi + 0x10);
    MEM32(edi + 4) = eax;
    eax = MEM32(esi + 0x2C);
    MEM32(edi + 8) = eax;
    SET_LO8(eax, MEM8(esi + 0x37));
    MEM8(edi + 0xD) = MEM8(edi + 0xD) & 0;
    SET_LO8(eax, LO8(eax) << 7);
    edx = esi + 0x98;
    PUSH32(esp, edx);
    MEM8(edi + 0xC) = LO8(eax);
    ecx = ecx | 0xFFFFFFFFu;
    PUSH32(esp, ecx);
    eax = 0xFFF3CB00u;
    PUSH32(esp, eax);
    eax = esi + 0x70;
    MEM8(edi + 0xE) = 0xA;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 1;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EA2F1: ;
    ecx = MEM32(esi + 0x24);
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 2;
    MEM8(esi + 0xD5) = MEM8(esi + 0xD5) & 0;
    MEM8(esi + 0xD6) = MEM8(esi + 0xD6) & 0;
    eax = esi + 0xB8;
    MEM8(eax) = 0x28;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    MEM8(esi + 0xB9) = 0x41;
    MEM32(esi + 0xC0) = 0x1EA240;
    MEM32(esi + 0xC4) = esi;
    MEM32(esi + 0xC8) = ecx;
    MEM32(esi + 0xD0) = edi;
    MEM32(esi + 0xCC) = 0x1F;
    MEM8(esi + 0xD4) = 1;
    ecx = MEM32(eax);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EA34E: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA351
 * Original: 0x001EA351 - 0x001EA551 (512 bytes, 120 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA351(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA351: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    eax = MEM32(esi + 0xC);
    ebx = MEM32(esi + 8);
    PUSH32(esp, edi);
    edi = eax;
    eax = eax & 0xFFFFFDFFu;
    edi = edi & 0x7000;
    /* test HI8(eax), 1 - flags set for next jcc */
    MEM32(esi + 0xC) = eax;
    if (TEST_Z(HI8(eax), 1)) goto loc_001EA381; /* je: equal / zero */

loc_001EA373: ;
    eax = esi + 0x70;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EA37D: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) & 0xFE;

loc_001EA381: ;
    eax = MEM32(esi + 0xC);
    if (TEST_Z(LO8(eax), 6)) goto loc_001EA38F; /* je: equal / zero */

loc_001EA388: ;
    PUSH32(esp, 0xC000009Du);
    goto loc_001EA3F0;

loc_001EA38F: ;
    edx = MEM32(esp + 0x10);
    ecx = 0; /* xor self */
    if (CMP_GE(MEM32(edx + 4), ecx)) goto loc_001EA3AB; /* jge: greater or equal (signed >=) */

loc_001EA39A: ;
    eax = eax & 0xFFFF8FFFu;
    MEM32(esi + 0xC) = eax;
    ecx = MEM32(ebx);
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EA3A9: ;
    goto loc_001EA388;

loc_001EA3AB: ;
    if (CMP_EQ(edi, 0x1000)) goto loc_001EA47A; /* je: equal / zero */

loc_001EA3B7: ;
    if (CMP_EQ(edi, 0x2000)) goto loc_001EA3F9; /* je: equal / zero */

loc_001EA3BF: ;
    if (CMP_NE(edi, 0x4000)) goto loc_001EA54B; /* jne: not equal / not zero */

loc_001EA3CB: ;
    eax = eax & 0xFFFFBFFFu;
    MEM32(esi + 0xC) = eax;
    SET_LO8(eax, MEM8(esi + 0x36));
    SET_LO8(ecx, LO8(eax));
    SET_LO8(ecx, LO8(ecx) - 1);
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    MEM8(esi + 0x36) = LO8(ecx);
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EA3ED; /* je: equal / zero */

loc_001EA3E1: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001EA2A8(); /* call 0x001EA2A8 */

loc_001EA3E8: ;
    goto loc_001EA54B;

loc_001EA3ED: ;
    PUSH32(esp, MEM32(esi + 0x6C));

loc_001EA3F0: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(esi + 0x30), _icall_esp); /* indirect call */
    }

loc_001EA3F4: ;
    goto loc_001EA54B;

loc_001EA3F9: ;
    MEM8(esi + 0xD5) = MEM8(esi + 0xD5) & 0;
    MEM8(esi + 0xD6) = MEM8(esi + 0xD6) & 0;
    eax = eax & 0xFFFFDFFFu;
    eax = eax | 0x4000;
    MEM8(esi + 0xE1) = MEM8(esi + 0xE1) | 0xFF;
    edi = esi + 0xB8;
    MEM32(esi + 0xC) = eax;
    MEM8(edi) = 0x30;
    MEM8(esi + 0xB9) = 0x40;
    MEM32(esi + 0xC0) = 0x1EA351;
    MEM32(esi + 0xC4) = esi;
    MEM32(esi + 0xC8) = ecx;
    MEM32(esi + 0xD0) = ecx;
    MEM32(esi + 0xCC) = ecx;
    MEM8(esi + 0xD4) = 1;
    MEM8(esi + 0xE0) = 0x21;
    MEM16(esi + 0xE2) = LO16(ecx);
    SET_LO16(eax, ZX8(MEM8(ebx + 4)));
    MEM16(esi + 0xE4) = LO16(eax);
    MEM16(esi + 0xE6) = LO16(ecx);
    goto loc_001EA520;

loc_001EA47A: ;
    eax = eax & 0xFFFFEFFFu;
    eax = eax | 0x2000;
    MEM32(esi + 0xC) = eax;
    eax = MEM32(esi + 0x24);
    edi = esi + 0xB8;
    MEM8(edi) = 0x18;
    MEM8(esi + 0xB9) = 5;
    MEM32(esi + 0xC0) = ecx;
    MEM32(esi + 0xC8) = eax;
    MEM32(esi + 0xCC) = 4;
    ecx = MEM32(ebx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EA4B8: ;
    eax = 0; /* xor self */
    MEM8(esi + 0xD4) = MEM8(esi + 0xD4) & LO8(eax);
    MEM8(esi + 0xD5) = MEM8(esi + 0xD5) & LO8(eax);
    MEM8(esi + 0xD6) = MEM8(esi + 0xD6) & LO8(eax);
    MEM8(edi) = 0x30;
    MEM8(esi + 0xB9) = 0x40;
    MEM32(esi + 0xC0) = 0x1EA351;
    MEM32(esi + 0xC4) = esi;
    MEM32(esi + 0xC8) = eax;
    MEM32(esi + 0xD0) = eax;
    MEM32(esi + 0xCC) = eax;
    MEM8(esi + 0xE0) = 2;
    MEM8(esi + 0xE1) = 1;
    MEM16(esi + 0xE2) = LO16(eax);
    SET_LO16(ecx, ZX8(MEM8(ebx + 6)));
    MEM16(esi + 0xE4) = LO16(ecx);
    MEM16(esi + 0xE6) = LO16(eax);

loc_001EA520: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 3;
    edx = esi + 0x98;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, edx);
    ecx = ecx | 0xFFFFFFFFu;
    PUSH32(esp, ecx);
    eax = 0xFFF0BDC0u;
    PUSH32(esp, eax);
    eax = esi + 0x70;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EA53F: ;
    MEM8(esi + 0xD) = MEM8(esi + 0xD) | 2;
    ecx = MEM32(ebx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EA54B: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EA551
 * Original: 0x001EA551 - 0x001EA56E (29 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA551(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA551: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = ecx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EA55B: ;
    /* test MEM8(esi + 0xC), 6 - flags set for next jcc */
    SET_LO8(ebx, LO8(eax));
    if (TEST_Z(MEM8(esi + 0xC), 6)) { g_seh_ebp = ebp; sub_001EA56E(); return; } /* je: equal / zero */

loc_001EA563: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xC000009Du);
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(esi + 0x30), _icall_esp); /* indirect call */
    }

loc_001EA56C: ;
    g_seh_ebp = ebp; sub_001EA575(); return; /* tail jmp 0x001EA575 */

}

/**
 * sub_001EA56E
 * Original: 0x001EA56E - 0x001EA575 (7 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA56E(void)
{

loc_001EA56E: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001EA2A8(); /* call 0x001EA2A8 */

}

/**
 * sub_001EA575
 * Original: 0x001EA575 - 0x001EA57F (10 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA575(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA575: ;
    POP32(esp, esi);
    SET_LO8(ecx, LO8(ebx));
    POP32(esp, ebx);
    g_seh_ebp = ebp; RECOMP_ITAIL(MEM32(0x1ED1D0)); return; /* indirect tail jmp */

}

/**
 * sub_001EA57F
 * Original: 0x001EA57F - 0x001EA592 (19 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA57F(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA57F: ;
    eax = MEM32(0xBF4EE8);
    if (TEST_Z(eax, eax)) goto loc_001EA591; /* je: equal / zero */

loc_001EA588: ;
    ecx = MEM32(eax + 0x18);
    MEM32(0xBF4EE8) = ecx;

loc_001EA591: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001EA592
 * Original: 0x001EA592 - 0x001EA5B9 (39 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA592(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EA592: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ecx);
    MEM32(ebp + -4) = MEM32(ebp + -4) & 0;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    ebx = edx;
    MEM32(ebp + -8) = ecx;
    PUSH32(esp, 0); sub_001EA57F(); /* call 0x001EA57F */

loc_001EA5A7: ;
    esi = eax;
    if (TEST_NZ(esi, esi)) { g_seh_ebp = ebp; sub_001EA5B9(); return; } /* jne: not equal / not zero */

loc_001EA5AD: ;
    MEM32(ebp + -4) = 0x80000100u;
    g_seh_ebp = ebp; sub_001EA6E7(); return; /* tail jmp 0x001EA6E7 */

}

/**
 * sub_001EA5B9
 * Original: 0x001EA5B9 - 0x001EA6E7 (302 bytes, 108 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA5B9(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA5B9: ;
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    PUSH32(esp, 0xC);
    POP32(esp, ecx);
    edi = esi;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    eax = esi;
    eax = eax - MEM32(0xBF4EE0);
    MEM32(esi + 0x14) = eax;
    SET_LO8(eax, MEM8(ebx + 0x16));
    MEM8(esi + 0x11) = LO8(eax);
    SET_LO8(eax, MEM8(ebx + 0x17));
    MEM8(esi + 0x13) = LO8(eax);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 0x1E));
    PUSH32(esp, eax);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 0x11));
    PUSH32(esp, eax);
    eax = 0; /* xor self */
    SET_LO16(eax, MEM16(ebx + 0x1C));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E7F8E(); /* call 0x001E7F8E */

loc_001EA5F2: ;
    MEM16(esi + 0x22) = LO16(eax);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 0x14));
    eax = eax ^ MEM32(esi);
    eax = eax & 0x7F;
    MEM32(esi) = MEM32(esi) ^ eax;
    eax = ZX8(MEM8(ebx + 0x15));
    ecx = MEM32(esi);
    eax = eax << 7;
    eax = eax ^ ecx;
    eax = eax & 0x780;
    eax = eax ^ ecx;
    /* cmp MEM8(esi + 0x11), 0 - flags set for next jcc */
    MEM32(esi) = eax;
    if (CMP_NE(MEM8(esi + 0x11), 0)) goto loc_001EA625; /* jne: not equal / not zero */

loc_001EA61C: ;
    eax = eax & 0xFFFFE7FFu;
    MEM32(esi) = eax;
    goto loc_001EA63F;

loc_001EA625: ;
    /* test MEM8(ebx + 0x15), 0x80 - flags set for next jcc */
    PUSH32(esp, 0);
    POP32(esp, ecx);
    SET_LO8(ecx, (TEST_NZ(MEM8(ebx + 0x15), 0x80)) ? 1 : 0); /* setne */
    ecx++;
    ecx = ecx << 0xB;
    ecx = ecx ^ eax;
    ecx = ecx & 0x1800;
    ecx = ecx ^ eax;
    MEM32(esi) = ecx;

loc_001EA63F: ;
    ecx = MEM32(esi);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 0x1E));
    ecx = ecx & 0xFFFF5FFFu;
    eax = eax & 1;
    eax = eax | 2;
    eax = eax << 0xD;
    eax = eax | ecx;
    MEM32(esi) = eax;
    ecx = ZX16(MEM16(ebx + 0x1C));
    ecx = ecx << 0x10;
    ecx = ecx ^ eax;
    ecx = ecx & 0x7FF0000;
    ecx = ecx ^ eax;
    eax = 0; /* xor self */
    MEM32(esi) = ecx;
    MEM32(esi + 0xC) = eax;
    MEM32(esi + 8) = eax;
    MEM32(esi + 4) = eax;
    edx = MEM32(ebx + 0x18);
    if (CMP_EQ(edx, eax)) goto loc_001EA6A5; /* je: equal / zero */

loc_001EA67E: ;
    eax = ecx;
    edi = 0; /* xor self */
    ecx = ecx >> 7;
    ecx = ecx & 0xF;
    edi++;
    eax = eax & 0x1800;
    edi = edi << LO8(ecx);
    if (CMP_NE(eax, 0x1000)) goto loc_001EA69A; /* jne: not equal / not zero */

loc_001EA697: ;
    edi = edi << 0x10;

loc_001EA69A: ;
    if (TEST_Z(MEM32(edx), edi)) goto loc_001EA6A5; /* je: equal / zero */

loc_001EA69E: ;
    MEM32(esi + 8) = 2;

loc_001EA6A5: ;
    SET_LO8(eax, MEM8(esi + 0x11));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    POP32(esp, edi);
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EA6C0; /* je: equal / zero */

loc_001EA6AD: ;
    if (CMP_EQ(LO8(eax), 2)) goto loc_001EA6C0; /* je: equal / zero */

loc_001EA6B1: ;
    ecx = MEM32(ebp + -8);
    edx = esi;
    PUSH32(esp, 0); sub_001EBA3B(); /* call 0x001EBA3B */

loc_001EA6BB: ;
    MEM32(ebp + -4) = eax;
    goto loc_001EA6CA;

loc_001EA6C0: ;
    ecx = MEM32(ebp + -8);
    edx = esi;
    PUSH32(esp, 0); sub_001EB921(); /* call 0x001EB921 */

loc_001EA6CA: ;
    if (CMP_L(MEM32(ebp + -4), 0)) goto loc_001EA6D5; /* jl: less (signed <) */

loc_001EA6D0: ;
    MEM32(ebx + 0x10) = esi;
    g_seh_ebp = ebp; sub_001EA6E7(); return; /* tail jmp 0x001EA6E7 */

loc_001EA6D5: ;
    MEM32(ebx + 0x10) = MEM32(ebx + 0x10) & 0;
    eax = MEM32(0xBF4EE8);
    MEM32(esi + 0x18) = eax;
    MEM32(0xBF4EE8) = esi;

}

/**
 * sub_001EA6E7
 * Original: 0x001EA6E7 - 0x001EA6F1 (10 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA6E7(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA6E7: ;
    eax = MEM32(ebp + -4);
    POP32(esp, esi);
    MEM32(ebx + 4) = eax;
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EA6F1
 * Original: 0x001EA6F1 - 0x001EA712 (33 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA6F1(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA6F1: ;
    ecx = MEM32(edx + 0x10);
    eax = MEM32(ecx + 8);
    eax = eax & 1;
    MEM32(edx + 0x14) = eax;
    if (CMP_NE(MEM8(ecx + 0x26), 0)) goto loc_001EA709; /* jne: not equal / not zero */

loc_001EA703: ;
    if (CMP_EQ(MEM8(ecx + 0x27), 0)) goto loc_001EA70F; /* je: equal / zero */

loc_001EA709: ;
    eax = eax | 2;
    MEM32(edx + 0x14) = eax;

loc_001EA70F: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_001EA712
 * Original: 0x001EA712 - 0x001EA740 (46 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA712(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA712: ;
    eax = MEM32(edx + 0x10);
    edx = MEM32(edx + 0x14);
    if (TEST_Z(LO8(edx), 4)) goto loc_001EA721; /* je: equal / zero */

loc_001EA71D: ;
    MEM32(eax + 8) = MEM32(eax + 8) & 0xFFFFFFFDu;

loc_001EA721: ;
    if (TEST_Z(LO8(edx), 8)) goto loc_001EA72A; /* je: equal / zero */

loc_001EA726: ;
    MEM32(eax + 8) = MEM32(eax + 8) | 2;

loc_001EA72A: ;
    if (TEST_NZ(LO8(edx), 1)) goto loc_001EA73D; /* jne: not equal / not zero */

loc_001EA72F: ;
    ecx = MEM32(eax + 8);
    if (TEST_Z(LO8(ecx), 1)) goto loc_001EA73D; /* je: equal / zero */

loc_001EA737: ;
    ecx = ecx & 0xFFFFFFFEu;
    MEM32(eax + 8) = ecx;

loc_001EA73D: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_001EA740
 * Original: 0x001EA740 - 0x001EA765 (37 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA740(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA740: ;
    eax = MEM32(ecx + 0x41C);
    PUSH32(esp, esi);
    esi = 0; /* xor self */
    if (CMP_EQ(eax, edx)) goto loc_001EA75A; /* je: equal / zero */

loc_001EA74D: ;
    esi = eax;
    eax = MEM32(eax + 0x24);
    if (CMP_NE(eax, edx)) goto loc_001EA74D; /* jne: not equal / not zero */

loc_001EA756: ;
    if (TEST_NZ(esi, esi)) { g_seh_ebp = ebp; sub_001EA765(); return; } /* jne: not equal / not zero */

loc_001EA75A: ;
    eax = MEM32(eax + 0x24);
    MEM32(ecx + 0x41C) = eax;
    g_seh_ebp = ebp; sub_001EA76B(); return; /* tail jmp 0x001EA76B */

}

/**
 * sub_001EA765
 * Original: 0x001EA765 - 0x001EA76B (6 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA765(void)
{

loc_001EA765: ;
    eax = MEM32(eax + 0x24);
    MEM32(esi + 0x24) = eax;

}

/**
 * sub_001EA76B
 * Original: 0x001EA76B - 0x001EA779 (14 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA76B(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA76B: ;
    eax = ecx + 0x420;
    if (CMP_NE(edx, MEM32(eax))) goto loc_001EA777; /* jne: not equal / not zero */

loc_001EA775: ;
    MEM32(eax) = esi;

loc_001EA777: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA779
 * Original: 0x001EA779 - 0x001EA79E (37 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA779(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA779: ;
    eax = MEM32(ecx + 0x424);
    PUSH32(esp, esi);
    esi = 0; /* xor self */
    if (CMP_EQ(eax, edx)) goto loc_001EA793; /* je: equal / zero */

loc_001EA786: ;
    esi = eax;
    eax = MEM32(eax + 0x24);
    if (CMP_NE(eax, edx)) goto loc_001EA786; /* jne: not equal / not zero */

loc_001EA78F: ;
    if (TEST_NZ(esi, esi)) { g_seh_ebp = ebp; sub_001EA79E(); return; } /* jne: not equal / not zero */

loc_001EA793: ;
    eax = MEM32(eax + 0x24);
    MEM32(ecx + 0x424) = eax;
    g_seh_ebp = ebp; sub_001EA7A4(); return; /* tail jmp 0x001EA7A4 */

}

/**
 * sub_001EA79E
 * Original: 0x001EA79E - 0x001EA7A4 (6 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA79E(void)
{

loc_001EA79E: ;
    eax = MEM32(eax + 0x24);
    MEM32(esi + 0x24) = eax;

}

/**
 * sub_001EA7A4
 * Original: 0x001EA7A4 - 0x001EA7B2 (14 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA7A4(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA7A4: ;
    eax = ecx + 0x428;
    if (CMP_NE(edx, MEM32(eax))) goto loc_001EA7B0; /* jne: not equal / not zero */

loc_001EA7AE: ;
    MEM32(eax) = esi;

loc_001EA7B0: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA7B2
 * Original: 0x001EA7B2 - 0x001EA7D1 (31 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA7B2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA7B2: ;
    eax = MEM32(ecx + 0x28);
    PUSH32(esp, esi);
    esi = 0; /* xor self */
    if (CMP_EQ(eax, edx)) goto loc_001EA7C9; /* je: equal / zero */

loc_001EA7BC: ;
    esi = eax;
    eax = MEM32(eax + 0x24);
    if (CMP_NE(eax, edx)) goto loc_001EA7BC; /* jne: not equal / not zero */

loc_001EA7C5: ;
    if (TEST_NZ(esi, esi)) { g_seh_ebp = ebp; sub_001EA7D1(); return; } /* jne: not equal / not zero */

loc_001EA7C9: ;
    eax = MEM32(eax + 0x24);
    MEM32(ecx + 0x28) = eax;
    g_seh_ebp = ebp; sub_001EA7D7(); return; /* tail jmp 0x001EA7D7 */

}

/**
 * sub_001EA7D1
 * Original: 0x001EA7D1 - 0x001EA7D7 (6 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA7D1(void)
{

loc_001EA7D1: ;
    eax = MEM32(eax + 0x24);
    MEM32(esi + 0x24) = eax;

}

/**
 * sub_001EA7D7
 * Original: 0x001EA7D7 - 0x001EA7E1 (10 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA7D7(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA7D7: ;
    if (CMP_NE(edx, MEM32(ecx + 0x2C))) goto loc_001EA7DF; /* jne: not equal / not zero */

loc_001EA7DC: ;
    MEM32(ecx + 0x2C) = esi;

loc_001EA7DF: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA7E1
 * Original: 0x001EA7E1 - 0x001EA857 (118 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA7E1(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA7E1: ;
    PUSH32(esp, ecx);
    PUSH32(esp, edi);
    edi = edx;
    if (CMP_EQ(MEM8(edi + 0x26), 0)) goto loc_001EA854; /* je: equal / zero */

loc_001EA7EB: ;
    eax = ZX8(MEM8(edi + 0x11));
    eax = eax - 0;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    if ((eax == 0)) goto loc_001EA813; /* je: equal / zero */

loc_001EA7F6: ;
    eax--;
    eax--;
    if ((eax == 0)) goto loc_001EA805; /* je: equal / zero */

loc_001EA7FA: ;
    eax--;
    if ((eax != 0)) goto loc_001EA852; /* jne: not equal / not zero */

loc_001EA7FD: ;
    ebx = edi + 0x28;
    ebp = edi + 0x2C;
    goto loc_001EA81F;

loc_001EA805: ;
    ebx = ecx + 0x424;
    ebp = ecx + 0x428;
    goto loc_001EA81F;

loc_001EA813: ;
    ebx = ecx + 0x41C;
    ebp = ecx + 0x420;

loc_001EA81F: ;
    PUSH32(esp, esi);

loc_001EA820: ;
    esi = MEM32(ebx);
    if (CMP_NE(MEM32(esi + 0x10), edi)) goto loc_001EA83E; /* jne: not equal / not zero */

loc_001EA827: ;
    eax = MEM32(esi + 0x24);
    MEM32(ebx) = eax;
    MEM32(esi + 4) = 0xC000000Fu;
    MEM8(edi + 0x26) = MEM8(edi + 0x26) - 1;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EA83C: ;
    goto loc_001EA845;

loc_001EA83E: ;
    MEM32(esp + 0x10) = esi;
    ebx = esi + 0x24;

loc_001EA845: ;
    if (CMP_NE(MEM32(ebp), esi)) goto loc_001EA820; /* jne: not equal / not zero */

loc_001EA84A: ;
    eax = MEM32(esp + 0x10);
    MEM32(ebp) = eax;
    POP32(esp, esi);

loc_001EA852: ;
    POP32(esp, ebp);
    POP32(esp, ebx);

loc_001EA854: ;
    POP32(esp, edi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA857
 * Original: 0x001EA857 - 0x001EA89E (71 bytes, 28 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA857(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA857: ;
    PUSH32(esp, esi);
    esi = edx;
    MEM8(esi + 0x20) = MEM8(esi + 0x20) + 1;
    /* test MEM8(esi + 0x10), 0x20 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = ecx;
    if (TEST_NZ(MEM8(esi + 0x10), 0x20)) goto loc_001EA89B; /* jne: not equal / not zero */

loc_001EA866: ;
    MEM8(esi + 1) = MEM8(esi + 1) | 0x40;
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EA86F: ;
    eax++;
    /* cmp MEM8(esi + 0x11), 1 - flags set for next jcc */
    MEM32(esi + 0x1C) = eax;
    if (CMP_NE(MEM8(esi + 0x11), 1)) goto loc_001EA87D; /* jne: not equal / not zero */

loc_001EA879: ;
    eax++;
    MEM32(esi + 0x1C) = eax;

loc_001EA87D: ;
    if (CMP_EQ(MEM32(edi + 0x438), 0)) goto loc_001EA88A; /* je: equal / zero */

loc_001EA886: ;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) | 0x40;

loc_001EA88A: ;
    ecx = MEM32(edi);
    PUSH32(esp, 4);
    POP32(esp, eax);
    MEM32(ecx + 0xC) = eax;
    ecx = MEM32(edi);
    MEM32(ecx + 0x10) = eax;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) | 0x20;

loc_001EA89B: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA89E
 * Original: 0x001EA89E - 0x001EA8D9 (59 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA89E(void)
{

loc_001EA89E: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + -100);
    esi = esi + 0xFFFFFB40u;
    eax = (uint32_t)((int32_t)eax * (int32_t)0x70);
    SET_LO8(ecx, MEM8(eax + 0xBF4F2C));
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED244), _icall_esp); /* indirect call */
    }

loc_001EA8BB: ;
    ecx = MEM32(esi);
    MEM32(ecx + 0x14) = 0x80000033u;
    ecx = MEM32(esi);
    MEM32(ecx + 4) = 2;
    SET_LO8(ecx, LO8(eax));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EA8D5: ;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EA8D9
 * Original: 0x001EA8D9 - 0x001EA8EE (21 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA8D9(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA8D9: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    if (TEST_Z(MEM8(esi + 0x22), 1)) { g_seh_ebp = ebp; sub_001EA8EE(); return; } /* je: equal / zero */

loc_001EA8E4: ;
    eax = 0x40020000;
    g_seh_ebp = ebp; sub_001EA98C(); return; /* tail jmp 0x001EA98C */

}

/**
 * sub_001EA8EE
 * Original: 0x001EA8EE - 0x001EA98C (158 bytes, 53 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA8EE(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EA8EE: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EA8F6: ;
    edi = MEM32(esi + 0x10);
    /* test MEM8(edi + 0x10), 0x10 - flags set for next jcc */
    SET_LO8(ebx, LO8(eax));
    if (TEST_NZ(MEM8(edi + 0x10), 0x10)) goto loc_001EA97B; /* jne: not equal / not zero */

loc_001EA901: ;
    SET_LO16(eax, MEM16(esi + 0x22));
    if (TEST_Z(LO8(eax), 2)) goto loc_001EA95B; /* je: equal / zero */

loc_001EA909: ;
    eax = ZX8(MEM8(edi + 0x11));
    eax = eax - 0;
    if ((eax == 0)) goto loc_001EA938; /* je: equal / zero */

loc_001EA912: ;
    eax--;
    eax--;
    if ((eax == 0)) goto loc_001EA92B; /* je: equal / zero */

loc_001EA916: ;
    eax--;
    if ((eax == 0)) goto loc_001EA920; /* je: equal / zero */

loc_001EA919: ;
    esi = 0x80000600u;
    goto loc_001EA980;

loc_001EA920: ;
    edx = esi;
    ecx = edi;
    PUSH32(esp, 0); sub_001EA7B2(); /* call 0x001EA7B2 */

loc_001EA929: ;
    goto loc_001EA943;

loc_001EA92B: ;
    ecx = MEM32(esp + 0x10);
    edx = esi;
    PUSH32(esp, 0); sub_001EA779(); /* call 0x001EA779 */

loc_001EA936: ;
    goto loc_001EA943;

loc_001EA938: ;
    ecx = MEM32(esp + 0x10);
    edx = esi;
    PUSH32(esp, 0); sub_001EA740(); /* call 0x001EA740 */

loc_001EA943: ;
    MEM8(edi + 0x26) = MEM8(edi + 0x26) - 1;
    MEM8(esi + 0x22) = MEM8(esi + 0x22) | 1;
    PUSH32(esp, esi);
    MEM32(esi + 4) = 0xC000000Fu;
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EA957: ;
    esi = 0; /* xor self */
    goto loc_001EA980;

loc_001EA95B: ;
    ecx = MEM32(esp + 0x10);
    SET_LO16(eax, LO16(eax) | 1);
    MEM16(esi + 0x22) = LO16(eax);
    eax = ecx + 0x42C;
    edx = MEM32(eax);
    MEM32(esi + 0x24) = edx;
    edx = edi;
    MEM32(eax) = esi;
    PUSH32(esp, 0); sub_001EA857(); /* call 0x001EA857 */

loc_001EA97B: ;
    esi = 0x40020000;

loc_001EA980: ;
    SET_LO8(ecx, LO8(ebx));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EA988: ;
    POP32(esp, edi);
    eax = esi;
    POP32(esp, ebx);

}

/**
 * sub_001EA98C
 * Original: 0x001EA98C - 0x001EA990 (4 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA98C(void)
{

loc_001EA98C: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EA990
 * Original: 0x001EA990 - 0x001EA9C6 (54 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA990(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA990: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = edx;
    esi = MEM32(edi + 0x10);
    ebp = ecx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EA9A1: ;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) | 0x10;
    edx = esi;
    ecx = ebp;
    SET_LO8(ebx, LO8(eax));
    PUSH32(esp, 0); sub_001EA7E1(); /* call 0x001EA7E1 */

loc_001EA9B0: ;
    SET_LO8(eax, MEM8(esi + 0x11));
    if (TEST_Z(LO8(eax), LO8(eax))) { g_seh_ebp = ebp; sub_001EA9C6(); return; } /* je: equal / zero */

loc_001EA9B7: ;
    if (CMP_EQ(LO8(eax), 2)) { g_seh_ebp = ebp; sub_001EA9C6(); return; } /* je: equal / zero */

loc_001EA9BB: ;
    edx = esi;
    ecx = ebp;
    PUSH32(esp, 0); sub_001EBC17(); /* call 0x001EBC17 */

loc_001EA9C4: ;
    g_seh_ebp = ebp; sub_001EA9CF(); return; /* tail jmp 0x001EA9CF */

}

/**
 * sub_001EA9C6
 * Original: 0x001EA9C6 - 0x001EA9CF (9 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA9C6(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA9C6: ;
    edx = esi;
    ecx = ebp;
    PUSH32(esp, 0); sub_001EB95E(); /* call 0x001EB95E */

}

/**
 * sub_001EA9CF
 * Original: 0x001EA9CF - 0x001EA9F7 (40 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA9CF(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA9CF: ;
    edx = esi;
    ecx = ebp;
    PUSH32(esp, 0); sub_001EA857(); /* call 0x001EA857 */

loc_001EA9D8: ;
    eax = ebp + 0x434;
    ecx = MEM32(eax);
    MEM32(edi + 0x14) = ecx;
    SET_LO8(ecx, LO8(ebx));
    MEM32(eax) = edi;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EA9ED: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0x40000000;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EA9F7
 * Original: 0x001EA9F7 - 0x001EAA4A (83 bytes, 33 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EA9F7(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EA9F7: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = edx;
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x10);
    ebp = ecx;
    ebx = 0; /* xor self */
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EAA0B: ;
    edx = edi;
    ecx = ebp;
    MEM8(esp + 0x13) = LO8(eax);
    PUSH32(esp, 0); sub_001EA7E1(); /* call 0x001EA7E1 */

loc_001EAA18: ;
    if (CMP_EQ(MEM8(edi + 0x27), LO8(ebx))) goto loc_001EAA38; /* je: equal / zero */

loc_001EAA1D: ;
    eax = ebp + 0x430;
    ecx = MEM32(eax);
    MEM32(esi + 0x14) = ecx;
    edx = edi;
    ecx = ebp;
    MEM32(eax) = esi;
    PUSH32(esp, 0); sub_001EA857(); /* call 0x001EA857 */

loc_001EAA33: ;
    ebx = 0x40000000;

loc_001EAA38: ;
    SET_LO8(ecx, MEM8(esp + 0x13));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EAA42: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = ebx;
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EAA4A
 * Original: 0x001EAA4A - 0x001EAB37 (237 bytes, 82 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAA4A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EAA4A: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(ebp + 0xC);
    eax = ZX8(MEM8(edi + 1));
    if (CMP_G(eax, 0xC)) goto loc_001EAAE2; /* jg: greater (signed >) */

loc_001EAA5F: ;
    if (CMP_EQ(eax, 0xC)) goto loc_001EAAD6; /* je: equal / zero */

loc_001EAA61: ;
    PUSH32(esp, 2);
    POP32(esp, ecx);
    eax = eax - ecx;
    if ((eax == 0)) goto loc_001EAACA; /* je: equal / zero */

loc_001EAA68: ;
    eax = eax - ecx;
    if ((eax == 0)) goto loc_001EAABE; /* je: equal / zero */

loc_001EAA6C: ;
    eax--;
    if ((eax == 0)) goto loc_001EAAAF; /* je: equal / zero */

loc_001EAA6F: ;
    eax = eax - ecx;
    if ((eax == 0)) goto loc_001EAA9D; /* je: equal / zero */

loc_001EAA73: ;
    eax = eax - ecx;
    if ((eax == 0)) goto loc_001EAA8E; /* je: equal / zero */

loc_001EAA77: ;
    eax = eax - ecx;
    if ((eax != 0)) goto loc_001EAB30; /* jne: not equal / not zero */

loc_001EAA7F: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EC6E4(); /* call 0x001EC6E4 */

loc_001EAA89: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAA8E: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EC46A(); /* call 0x001EC46A */

loc_001EAA98: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAA9D: ;
    ecx = MEM32(ebp + 8);
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EAAA5: ;
    MEM32(edi + 0x14) = eax;
    esi = 0; /* xor self */
    g_seh_ebp = ebp; sub_001EAB43(); return; /* tail jmp 0x001EAB43 */

loc_001EAAAF: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EA712(); /* call 0x001EA712 */

loc_001EAAB9: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAABE: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EA6F1(); /* call 0x001EA6F1 */

loc_001EAAC8: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAACA: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EA592(); /* call 0x001EA592 */

loc_001EAAD4: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAAD6: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EC84B(); /* call 0x001EC84B */

loc_001EAAE0: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAAE2: ;
    if (CMP_EQ(eax, 0xD)) { g_seh_ebp = ebp; sub_001EAB37(); return; } /* je: equal / zero */

loc_001EAAE7: ;
    if (CMP_LE(eax, 0x3F)) goto loc_001EAB30; /* jle: less or equal (signed <=) */

loc_001EAAEC: ;
    if (CMP_LE(eax, 0x41)) goto loc_001EAB24; /* jle: less or equal (signed <=) */

loc_001EAAF1: ;
    if (CMP_EQ(eax, 0x43)) goto loc_001EAB18; /* je: equal / zero */

loc_001EAAF6: ;
    if (CMP_EQ(eax, 0x46)) goto loc_001EAB0C; /* je: equal / zero */

loc_001EAAFB: ;
    if (CMP_NE(eax, 0x4A)) goto loc_001EAB30; /* jne: not equal / not zero */

loc_001EAB00: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EC617(); /* call 0x001EC617 */

loc_001EAB0A: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAB0C: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EA9F7(); /* call 0x001EA9F7 */

loc_001EAB16: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAB18: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EA990(); /* call 0x001EA990 */

loc_001EAB22: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAB24: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001ED015(); /* call 0x001ED015 */

loc_001EAB2E: ;
    g_seh_ebp = ebp; sub_001EAB41(); return; /* tail jmp 0x001EAB41 */

loc_001EAB30: ;
    esi = 0x80000200u;
    g_seh_ebp = ebp; sub_001EAB43(); return; /* tail jmp 0x001EAB43 */

}

/**
 * sub_001EAB37
 * Original: 0x001EAB37 - 0x001EAB41 (10 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAB37(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAB37: ;
    ecx = MEM32(ebp + 8);
    edx = edi;
    PUSH32(esp, 0); sub_001EC96A(); /* call 0x001EC96A */

}

/**
 * sub_001EAB41
 * Original: 0x001EAB41 - 0x001EAB43 (2 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAB41(void)
{

loc_001EAB41: ;
    esi = eax;

}

/**
 * sub_001EAB43
 * Original: 0x001EAB43 - 0x001EABB6 (115 bytes, 39 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAB43(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAB43: ;
    eax = esi;
    eax = eax & 0xC0000000u;
    if (CMP_EQ(eax, 0x40000000)) goto loc_001EAB5A; /* je: equal / zero */

loc_001EAB51: ;
    PUSH32(esp, edi);
    MEM32(edi + 4) = esi;
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EAB5A: ;
    POP32(esp, edi);
    eax = esi;
    POP32(esp, esi);
    POP32(esp, ebp);
    esp += 12; return; /* ret 8 */

    ecx = MEM32(0xB22A64);
    ecx = ecx - 0;
    if ((ecx == 0)) goto loc_001EABA7; /* je: equal / zero */

loc_001EAB79: ;
    ecx--;
    if ((ecx == 0)) goto loc_001EAB93; /* je: equal / zero */

loc_001EAB7C: ;
    ecx--;
    if ((ecx != 0)) goto loc_001EABB2; /* jne: not equal / not zero */

loc_001EAB7F: ;
    PUSH32(esp, MEM32(0xB22A18));
    ecx = esi;
    PUSH32(esp, 0x80000600u);
    PUSH32(esp, 0); sub_001E9122(); /* call 0x001E9122 */

loc_001EAB91: ;
    goto loc_001EABB2;

loc_001EAB93: ;
    PUSH32(esp, MEM32(0xB22A18));
    ecx = esi;
    PUSH32(esp, 0x80000600u);
    PUSH32(esp, 0); sub_001E8E64(); /* call 0x001E8E64 */

loc_001EABA5: ;
    goto loc_001EABB2;

loc_001EABA7: ;
    eax = eax + 8;
    PUSH32(esp, eax);
    ecx = esi;
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001EABB2: ;
    POP32(esp, esi);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EAB62
 * Original: 0x001EAB62 - 0x001EABB6 (84 bytes, 27 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAB62(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EAB62: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAB6E: ;
    ecx = MEM32(0xB22A64);
    ecx = ecx - 0;
    if ((ecx == 0)) goto loc_001EABA7; /* je: equal / zero */

loc_001EAB79: ;
    ecx--;
    if ((ecx == 0)) goto loc_001EAB93; /* je: equal / zero */

loc_001EAB7C: ;
    ecx--;
    if ((ecx != 0)) goto loc_001EABB2; /* jne: not equal / not zero */

loc_001EAB7F: ;
    PUSH32(esp, MEM32(0xB22A18));
    ecx = esi;
    PUSH32(esp, 0x80000600u);
    PUSH32(esp, 0); sub_001E9122(); /* call 0x001E9122 */

loc_001EAB91: ;
    goto loc_001EABB2;

loc_001EAB93: ;
    PUSH32(esp, MEM32(0xB22A18));
    ecx = esi;
    PUSH32(esp, 0x80000600u);
    PUSH32(esp, 0); sub_001E8E64(); /* call 0x001E8E64 */

loc_001EABA5: ;
    goto loc_001EABB2;

loc_001EABA7: ;
    eax = eax + 8;
    PUSH32(esp, eax);
    ecx = esi;
    PUSH32(esp, 0); sub_001E98FB(); /* call 0x001E98FB */

loc_001EABB2: ;
    POP32(esp, esi);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EABB6
 * Original: 0x001EABB6 - 0x001EABE6 (48 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EABB6(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EABB6: ;
    edx = MEM32(esp + 4);
    ecx = ecx | 0xFFFFFFFFu;
    /* test edx, edx - flags set for next jcc */
    eax = 0xFD050F80u;
    if (TEST_Z(edx, edx)) goto loc_001EABCB; /* je: equal / zero */

loc_001EABC6: ;
    eax = 0xFFB3B4C0u;

loc_001EABCB: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A48);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0xB22A20);
    MEM32(0xB22A64) = edx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EABE3: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EABE6
 * Original: 0x001EABE6 - 0x001EAC25 (63 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EABE6(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EABE6: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    ecx = edi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EABF3: ;
    PUSH32(esp, 0);
    ecx = edi;
    esi = eax;
    PUSH32(esp, 0); sub_001E9912(); /* call 0x001E9912 */

loc_001EABFE: ;
    MEM8(esi) = MEM8(esi) & 0xFE;
    MEM16(0xB22A6A) = MEM16(0xB22A6A) - 1;
    /* test MEM8(esi), 2 - flags set for next jcc */
    ecx = edi;
    if (TEST_Z(MEM8(esi), 2)) goto loc_001EAC16; /* je: equal / zero */

loc_001EAC0F: ;
    PUSH32(esp, 0); sub_001E8E69(); /* call 0x001E8E69 */

loc_001EAC14: ;
    goto loc_001EAC20;

loc_001EAC16: ;
    PUSH32(esp, 0x80000100u);
    PUSH32(esp, 0); sub_001E9227(); /* call 0x001E9227 */

loc_001EAC20: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EAC25
 * Original: 0x001EAC25 - 0x001EAC51 (44 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAC25(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EAC25: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (CMP_GE(MEM32(esi + 4), 0)) goto loc_001EAC4D; /* jge: greater or equal (signed >=) */

loc_001EAC30: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EAC3B: ;
    PUSH32(esp, MEM32(0xB22A18));
    ecx = MEM32(esp + 0x10);
    PUSH32(esp, MEM32(esi + 4));
    PUSH32(esp, 0); sub_001E8E64(); /* call 0x001E8E64 */

loc_001EAC4D: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EAC51
 * Original: 0x001EAC51 - 0x001EAC75 (36 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAC51(void)
{

loc_001EAC51: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EAC5C: ;
    PUSH32(esp, MEM32(0xB22A18));
    eax = MEM32(esp + 8);
    PUSH32(esp, MEM32(eax + 4));
    ecx = MEM32(esp + 0x10);
    PUSH32(esp, 0); sub_001E9122(); /* call 0x001E9122 */

loc_001EAC72: ;
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EAC75
 * Original: 0x001EAC75 - 0x001EACD2 (93 bytes, 29 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAC75(void)
{

loc_001EAC75: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    PUSH32(esp, edi);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAC82: ;
    SET_LO16(edi, ZX8(MEM8(eax + 3)));
    edx = 0; /* xor self */
    ecx = eax + 8;
    MEM8(ecx) = 0x30;
    PUSH32(esp, ecx);
    ecx = esi;
    MEM8(eax + 9) = 0x40;
    MEM32(eax + 0x10) = 0x1EB3BD;
    MEM32(eax + 0x14) = esi;
    MEM32(eax + 0x18) = edx;
    MEM32(eax + 0x20) = edx;
    MEM32(eax + 0x1C) = edx;
    MEM8(eax + 0x24) = LO8(edx);
    MEM8(eax + 0x25) = LO8(edx);
    MEM8(eax + 0x26) = LO8(edx);
    MEM8(eax + 0x30) = 0x23;
    MEM8(eax + 0x31) = 1;
    MEM16(eax + 0x32) = 1;
    MEM16(eax + 0x34) = LO16(edi);
    MEM16(eax + 0x36) = LO16(edx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EACCD: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EACD2
 * Original: 0x001EACD2 - 0x001EAD49 (119 bytes, 40 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EACD2(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EACD2: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(ebp + 8);
    ecx = edi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EACE2: ;
    esi = eax;
    SET_LO16(eax, MEM16(esi + 0x3A));
    ebx = 0; /* xor self */
    if (TEST_Z(LO8(eax), 0x10)) { g_seh_ebp = ebp; sub_001EAD49(); return; } /* je: equal / zero */

loc_001EACEE: ;
    if (CMP_NE(MEM32(0xB22A64), 1)) goto loc_001EAD41; /* jne: not equal / not zero */

loc_001EACF7: ;
    if (CMP_EQ(MEM32(0xB22A18), ebx)) goto loc_001EAD41; /* je: equal / zero */

loc_001EACFF: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    edi = 0; /* xor self */
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EAD0C: ;
    SET_LO16(eax, MEM16(esi + 0x38));
    if (TEST_Z(LO8(eax), 2)) goto loc_001EAD24; /* je: equal / zero */

loc_001EAD14: ;
    if (TEST_NZ(LO8(eax), 0x10)) goto loc_001EAD24; /* jne: not equal / not zero */

loc_001EAD18: ;
    if (TEST_Z(HI8(eax), 2)) goto loc_001EAD29; /* je: equal / zero */

loc_001EAD1D: ;
    edi = 0x1000000;
    goto loc_001EAD29;

loc_001EAD24: ;
    edi = 0x80000600u;

loc_001EAD29: ;
    eax = MEM32(0xB22A18);
    ecx = MEM32(ebp + 8);
    PUSH32(esp, eax);
    PUSH32(esp, edi);
    MEM32(0xB22A18) = ebx;
    PUSH32(esp, 0); sub_001E8E64(); /* call 0x001E8E64 */

loc_001EAD3E: ;
    edi = MEM32(ebp + 8);

loc_001EAD41: ;
    MEM8(esi + 0x3A) = MEM8(esi + 0x3A) & 0xEF;
    PUSH32(esp, 0x14);
    g_seh_ebp = ebp; sub_001EADC0(); return; /* tail jmp 0x001EADC0 */

}

/**
 * sub_001EAD49
 * Original: 0x001EAD49 - 0x001EADC0 (119 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAD49(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAD49: ;
    if (TEST_Z(LO8(eax), 1)) goto loc_001EAD9A; /* je: equal / zero */

loc_001EAD4D: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(esi + 3));
    MEM8(ebp + 8) = LO8(ecx);
    SET_LO8(eax, 1);
    ecx--;
    SET_LO8(eax, LO8(eax) << LO8(ecx));
    if (TEST_Z(MEM8(esi + 0x38), 1)) goto loc_001EAD7A; /* je: equal / zero */

loc_001EAD60: ;
    if (TEST_Z(MEM8(esi + 5), LO8(eax))) goto loc_001EAD6F; /* je: equal / zero */

loc_001EAD65: ;
    PUSH32(esp, MEM32(ebp + 8));
    ecx = edi;
    PUSH32(esp, 0); sub_001E8FD2(); /* call 0x001E8FD2 */

loc_001EAD6F: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EAC75(); /* call 0x001EAC75 */

loc_001EAD75: ;
    g_seh_ebp = ebp; sub_001EAE19(); return; /* tail jmp 0x001EAE19 */

loc_001EAD7A: ;
    SET_LO8(ecx, MEM8(esi + 5));
    if (TEST_Z(LO8(eax), LO8(ecx))) goto loc_001EAD92; /* je: equal / zero */

loc_001EAD81: ;
    PUSH32(esp, MEM32(ebp + 8));
    SET_LO8(eax, ~LO8(eax));
    SET_LO8(eax, LO8(eax) & LO8(ecx));
    ecx = edi;
    MEM8(esi + 5) = LO8(eax);
    PUSH32(esp, 0); sub_001E8FD2(); /* call 0x001E8FD2 */

loc_001EAD92: ;
    MEM8(esi + 0x3A) = MEM8(esi + 0x3A) & 0xFE;
    PUSH32(esp, 0x10);
    g_seh_ebp = ebp; sub_001EADC0(); return; /* tail jmp 0x001EADC0 */

loc_001EAD9A: ;
    if (TEST_Z(LO8(eax), 2)) goto loc_001EADA6; /* je: equal / zero */

loc_001EAD9E: ;
    SET_LO16(eax, LO16(eax) & 0xFFFD);
    PUSH32(esp, 0x11);
    goto loc_001EADBC;

loc_001EADA6: ;
    if (TEST_Z(LO8(eax), 4)) goto loc_001EADB2; /* je: equal / zero */

loc_001EADAA: ;
    SET_LO16(eax, LO16(eax) & 0xFFFB);
    PUSH32(esp, 0x12);
    goto loc_001EADBC;

loc_001EADB2: ;
    if (TEST_Z(LO8(eax), 8)) { g_seh_ebp = ebp; sub_001EAE0A(); return; } /* je: equal / zero */

loc_001EADB6: ;
    SET_LO16(eax, LO16(eax) & 0xFFF7);
    PUSH32(esp, 0x13);

loc_001EADBC: ;
    MEM16(esi + 0x3A) = LO16(eax);

}

/**
 * sub_001EADC0
 * Original: 0x001EADC0 - 0x001EAE20 (96 bytes, 32 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EADC0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EADC0: ;
    POP32(esp, ecx);
    MEM16(esi + 0x32) = LO16(ecx);
    SET_LO16(ecx, ZX8(MEM8(esi + 3)));
    eax = esi + 8;
    MEM16(esi + 0x34) = LO16(ecx);
    PUSH32(esp, eax);
    ecx = edi;
    MEM8(eax) = 0x30;
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB38D;
    MEM32(esi + 0x14) = edi;
    MEM32(esi + 0x18) = ebx;
    MEM32(esi + 0x20) = ebx;
    MEM32(esi + 0x1C) = ebx;
    MEM8(esi + 0x24) = LO8(ebx);
    MEM8(esi + 0x25) = LO8(ebx);
    MEM8(esi + 0x26) = LO8(ebx);
    MEM8(esi + 0x30) = 0x23;
    MEM8(esi + 0x31) = 1;
    MEM16(esi + 0x36) = LO16(ebx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAE08: ;
    goto loc_001EAE19;

    MEM16(esi + 0x3A) = MEM16(esi + 0x3A) & 0;
    PUSH32(esp, edi);
    esi = esi + 8;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EB38D(); /* call 0x001EB38D */

loc_001EAE19: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EAE0A
 * Original: 0x001EAE0A - 0x001EAE19 (15 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAE0A(void)
{

loc_001EAE0A: ;
    MEM16(esi + 0x3A) = MEM16(esi + 0x3A) & 0;
    PUSH32(esp, edi);
    esi = esi + 8;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EB38D(); /* call 0x001EB38D */

}

/**
 * sub_001EAE19
 * Original: 0x001EAE19 - 0x001EAE20 (7 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAE19(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAE19: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EAE20
 * Original: 0x001EAE20 - 0x001EAE42 (34 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAE20(void)
{

loc_001EAE20: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    PUSH32(esp, eax);
    MEM8(eax) = 0x1C;
    MEM8(eax + 1) = 0xC3;
    MEM32(eax + 8) = 0x1EABE6;
    MEM32(eax + 0xC) = ecx;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAE3F: ;
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EAE42
 * Original: 0x001EAE42 - 0x001EAF12 (208 bytes, 51 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAE42(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EAE42: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + 8);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAE51: ;
    ecx = 0; /* xor self */
    /* cmp eax, ecx - flags set for next jcc */
    PUSH32(esp, 4);
    SET_LO8(edx, 3);
    POP32(esp, esi);
    MEM32(ebp + -4) = 1;
    edi = 0x1EAC25;
    if (CMP_EQ(eax, ecx)) { g_seh_ebp = ebp; sub_001EAF12(); return; } /* je: equal / zero */

loc_001EAE6C: ;
    SET_LO8(ebx, MEM8(ebp + 0xC));
    if (CMP_B(MEM8(eax + 2), LO8(ebx))) { g_seh_ebp = ebp; sub_001EAF12(); return; } /* jb: below (unsigned <) */

loc_001EAE78: ;
    /* cmp MEM8(ebp + 0x14), LO8(ecx) - flags set for next jcc */
    eax = MEM32(ebp + 0x10);
    MEM32(0xB22A18) = eax;
    if (CMP_EQ(MEM8(ebp + 0x14), LO8(ecx))) goto loc_001EAE96; /* je: equal / zero */

loc_001EAE85: ;
    edx = 0; /* xor self */
    edx++;
    esi = edx;
    edi = 0x1EAC51;
    MEM32(ebp + -4) = 2;

loc_001EAE96: ;
    PUSH32(esp, MEM32(ebp + -4));
    SET_LO16(eax, ZX8(LO8(ebx)));
    MEM32(0xB229F0) = edi;
    edi = MEM32(ebp + 8);
    MEM8(0xB229E8) = 0x30;
    MEM8(0xB229E9) = 0x40;
    MEM32(0xB229F4) = edi;
    MEM32(0xB229F8) = ecx;
    MEM32(0xB22A00) = ecx;
    MEM32(0xB229FC) = ecx;
    MEM8(0xB22A04) = LO8(ecx);
    MEM8(0xB22A05) = LO8(ecx);
    MEM8(0xB22A06) = LO8(ecx);
    MEM8(0xB22A10) = 0x23;
    MEM8(0xB22A11) = LO8(edx);
    MEM16(0xB22A12) = LO16(esi);
    MEM16(0xB22A14) = LO16(eax);
    MEM16(0xB22A16) = LO16(ecx);
    PUSH32(esp, 0); sub_001EABB6(); /* call 0x001EABB6 */

loc_001EAF04: ;
    PUSH32(esp, 0xB229E8);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAF10: ;
    g_seh_ebp = ebp; sub_001EAF22(); return; /* tail jmp 0x001EAF22 */

}

/**
 * sub_001EAF12
 * Original: 0x001EAF12 - 0x001EAF22 (16 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAF12(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAF12: ;
    PUSH32(esp, MEM32(ebp + 0x10));
    ecx = MEM32(ebp + 8);
    PUSH32(esp, 0x80000300u);
    PUSH32(esp, 0); sub_001E8E64(); /* call 0x001E8E64 */

}

/**
 * sub_001EAF22
 * Original: 0x001EAF22 - 0x001EAF29 (7 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAF22(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EAF22: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EAF29
 * Original: 0x001EAF29 - 0x001EAF5B (50 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAF29(void)
{

loc_001EAF29: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAF35: ;
    edx = MEM32(eax + 0x3C);
    ecx = eax + 8;
    MEM8(ecx) = 0x1C;
    PUSH32(esp, ecx);
    ecx = esi;
    MEM8(eax + 9) = 0x43;
    MEM32(eax + 0x10) = 0x1EAE20;
    MEM32(eax + 0x14) = esi;
    MEM32(eax + 0x18) = edx;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAF57: ;
    POP32(esp, esi);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EAF5B
 * Original: 0x001EAF5B - 0x001EAFEC (145 bytes, 49 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAF5B(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EAF5B: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0xC);
    PUSH32(esp, edi);
    ecx = ebx;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAF68: ;
    edi = eax;
    SET_LO8(eax, MEM8(edi));
    if (TEST_Z(LO8(eax), 2)) goto loc_001EAF78; /* je: equal / zero */

loc_001EAF70: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EAF76: ;
    goto loc_001EAFE7;

loc_001EAF78: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    /* cmp MEM32(esi + 4), 0 - flags set for next jcc */
    ecx = ebx;
    if (CMP_GE(MEM32(esi + 4), 0)) goto loc_001EAF90; /* jge: greater or equal (signed >=) */

loc_001EAF85: ;
    SET_LO8(eax, LO8(eax) | 8);
    MEM8(edi) = LO8(eax);
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EAF8E: ;
    goto loc_001EAFE6;

loc_001EAF90: ;
    MEM32(esi + 8) = MEM32(esi + 8) & 0;
    MEM8(esi) = 0x18;
    MEM8(esi + 1) = 5;
    eax = MEM32(edi + 0x3C);
    PUSH32(esp, esi);
    MEM32(esi + 0x10) = eax;
    MEM32(esi + 0x14) = 4;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAFAE: ;
    MEM8(esi) = 0x28;
    MEM8(esi + 1) = 0x41;
    MEM32(esi + 8) = 0x1EB0F2;
    MEM32(esi + 0xC) = ebx;
    eax = MEM32(edi + 0x3C);
    MEM32(esi + 0x10) = eax;
    eax = edi + 0x38;
    MEM32(esi + 0x18) = eax;
    eax = ZX8(MEM8(edi + 7));
    MEM8(esi + 0x1E) = MEM8(esi + 0x1E) & 0;
    PUSH32(esp, esi);
    ecx = ebx;
    MEM32(esi + 0x14) = eax;
    MEM8(esi + 0x1C) = 2;
    MEM8(esi + 0x1D) = 1;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EAFE6: ;
    POP32(esp, esi);

loc_001EAFE7: ;
    POP32(esp, edi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EAFEC
 * Original: 0x001EAFEC - 0x001EB0A2 (182 bytes, 62 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EAFEC(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EAFEC: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EAFF8: ;
    SET_LO8(ecx, MEM8(eax));
    if (TEST_Z(LO8(ecx), 2)) goto loc_001EB007; /* je: equal / zero */

loc_001EAFFF: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB005: ;
    goto loc_001EB043;

loc_001EB007: ;
    edx = MEM32(esp + 8);
    if (CMP_L(MEM32(edx + 4), 0)) goto loc_001EB01D; /* jl: less (signed <) */

loc_001EB011: ;
    MEM8(eax + 6) = MEM8(eax + 6) & 0;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EACD2(); /* call 0x001EACD2 */

loc_001EB01B: ;
    goto loc_001EB043;

loc_001EB01D: ;
    MEM8(eax + 6) = MEM8(eax + 6) + 1;
    if (CMP_BE(MEM8(eax + 6), 3)) goto loc_001EB034; /* jbe: below or equal (unsigned <=) */

loc_001EB026: ;
    SET_LO8(ecx, LO8(ecx) | 8);
    MEM8(eax) = LO8(ecx);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EB032: ;
    goto loc_001EB043;

loc_001EB034: ;
    PUSH32(esp, edx);
    ecx = esi;
    MEM32(edx + 0x14) = 4;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB043: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

    SET_LO8(ecx, MEM8(eax));
    if (TEST_Z(LO8(ecx), 2)) goto loc_001EB062; /* je: equal / zero */

loc_001EB05A: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB060: ;
    goto loc_001EB09E;

loc_001EB062: ;
    edx = MEM32(esp + 8);
    if (CMP_GE(MEM32(edx + 4), 0)) goto loc_001EB094; /* jge: greater or equal (signed >=) */

loc_001EB06C: ;
    MEM8(eax + 6) = MEM8(eax + 6) + 1;
    if (CMP_BE(MEM8(eax + 6), 3)) goto loc_001EB083; /* jbe: below or equal (unsigned <=) */

loc_001EB075: ;
    SET_LO8(ecx, LO8(ecx) | 8);
    MEM8(eax) = LO8(ecx);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EB081: ;
    goto loc_001EB09E;

loc_001EB083: ;
    PUSH32(esp, edx);
    ecx = esi;
    MEM32(edx + 0x14) = 4;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB092: ;
    goto loc_001EB09E;

loc_001EB094: ;
    MEM8(eax + 6) = MEM8(eax + 6) & 0;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EB2C4(); /* call 0x001EB2C4 */

loc_001EB09E: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB0A2
 * Original: 0x001EB0A2 - 0x001EB0F2 (80 bytes, 33 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB0A2(void)
{
    int _rcc = 0; /* DOA3: deferred condition evaluated at the compare */
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EB0A2: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    ecx = MEM32(ebp + 8);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB0B0: ;
    esi = eax;
    MEM8(esi) = MEM8(esi) | 2;
    ebx = 0; /* xor self */
    ebx++;
    MEM8(ebp + -4) = LO8(ebx);

loc_001EB0BB: ;
    if (TEST_Z(MEM8(esi + 5), LO8(ebx))) goto loc_001EB0D2; /* je: equal / zero */

loc_001EB0C0: ;
    PUSH32(esp, MEM32(ebp + -4));
    ecx = MEM32(ebp + 8);
    PUSH32(esp, 0); sub_001E8FD2(); /* call 0x001E8FD2 */

loc_001EB0CB: ;
    SET_LO8(eax, LO8(ebx));
    SET_LO8(eax, ~LO8(eax));
    MEM8(esi + 5) = MEM8(esi + 5) & LO8(eax);

loc_001EB0D2: ;
    ebx = ebx << 1;
    MEM8(ebp + -4) = MEM8(ebp + -4) + 1;
    SET_LO8(eax, MEM8(ebp + -4));
    if (CMP_BE(LO8(eax), MEM8(esi + 2))) goto loc_001EB0BB; /* jbe: below or equal (unsigned <=) */

loc_001EB0DF: ;
    /* test MEM8(esi), 8 - flags set for next jcc */
    _rcc = (TEST_Z(MEM8(esi), 8));  /* DOA3: x86 latched these flags at the compare above and the branch below reads them, but an operand is overwritten in between -- evaluate the condition where the guest does. */
    POP32(esp, esi);
    POP32(esp, ebx);
    if (_rcc) goto loc_001EB0EE; /* je: equal / zero */

loc_001EB0E6: ;
    PUSH32(esp, MEM32(ebp + 8));
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB0EE: ;
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EB0F2
 * Original: 0x001EB0F2 - 0x001EB199 (167 bytes, 57 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB0F2(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB0F2: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x10);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB0FF: ;
    SET_LO8(ebx, MEM8(eax));
    if (TEST_Z(LO8(ebx), 2)) goto loc_001EB111; /* je: equal / zero */

loc_001EB106: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB10C: ;
    goto loc_001EB194;

loc_001EB111: ;
    ecx = MEM32(esp + 0xC);
    edx = 0; /* xor self */
    if (CMP_L(MEM32(ecx + 4), edx)) goto loc_001EB139; /* jl: less (signed <) */

loc_001EB11C: ;
    ecx = 0; /* xor self */
    SET_LO8(ecx, MEM8(eax + 2));
    MEM8(eax + 6) = LO8(edx);
    SET_LO8(edx, 1);
    PUSH32(esp, esi);
    ecx++;
    SET_LO8(edx, LO8(edx) << LO8(ecx));
    SET_LO8(edx, LO8(edx) - 1);
    SET_LO8(edx, LO8(edx) & MEM8(eax + 0x38));
    MEM8(eax + 4) = LO8(edx);
    PUSH32(esp, 0); sub_001EB2C4(); /* call 0x001EB2C4 */

loc_001EB137: ;
    goto loc_001EB194;

loc_001EB139: ;
    MEM8(eax + 6) = MEM8(eax + 6) + 1;
    if (CMP_BE(MEM8(eax + 6), 3)) goto loc_001EB150; /* jbe: below or equal (unsigned <=) */

loc_001EB142: ;
    SET_LO8(ebx, LO8(ebx) | 8);
    ecx = esi;
    MEM8(eax) = LO8(ebx);
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EB14E: ;
    goto loc_001EB194;

loc_001EB150: ;
    MEM8(ecx) = 0x30;
    MEM8(ecx + 1) = 0x40;
    MEM32(ecx + 8) = 0x1EAF5B;
    MEM32(ecx + 0xC) = esi;
    MEM32(ecx + 0x10) = edx;
    MEM32(ecx + 0x18) = edx;
    MEM32(ecx + 0x14) = edx;
    MEM8(ecx + 0x1C) = LO8(edx);
    MEM8(ecx + 0x1D) = LO8(edx);
    MEM8(ecx + 0x1E) = LO8(edx);
    MEM8(ecx + 0x28) = 2;
    MEM8(ecx + 0x29) = 1;
    MEM16(ecx + 0x2A) = LO16(edx);
    SET_LO16(eax, ZX8(MEM8(eax + 1)));
    MEM16(ecx + 0x2C) = LO16(eax);
    MEM16(ecx + 0x2E) = LO16(edx);
    PUSH32(esp, ecx);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB194: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB199
 * Original: 0x001EB199 - 0x001EB259 (192 bytes, 64 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB199(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB199: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0xC);
    ecx = edi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB1A5: ;
    SET_LO8(ecx, MEM8(eax));
    if (TEST_Z(LO8(ecx), 2)) goto loc_001EB1B7; /* je: equal / zero */

loc_001EB1AC: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB1B2: ;
    goto loc_001EB255;

loc_001EB1B7: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    edx = 0; /* xor self */
    if (CMP_GE(MEM32(esi + 4), edx)) goto loc_001EB1EB; /* jge: greater or equal (signed >=) */

loc_001EB1C3: ;
    MEM8(eax + 6) = MEM8(eax + 6) + 1;
    if (CMP_BE(MEM8(eax + 6), 3)) goto loc_001EB1DA; /* jbe: below or equal (unsigned <=) */

loc_001EB1CC: ;
    SET_LO8(ecx, LO8(ecx) | 8);
    MEM8(eax) = LO8(ecx);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9049(); /* call 0x001E9049 */

loc_001EB1D8: ;
    goto loc_001EB254;

loc_001EB1DA: ;
    MEM32(esi + 0x14) = 4;
    PUSH32(esp, esi);

loc_001EB1E2: ;
    ecx = edi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB1E9: ;
    goto loc_001EB254;

loc_001EB1EB: ;
    SET_LO16(ecx, MEM16(eax + 0x3A));
    /* test LO8(ecx), 1 - flags set for next jcc */
    MEM8(eax + 6) = LO8(edx);
    if (TEST_Z(LO8(ecx), 1)) goto loc_001EB200; /* je: equal / zero */

loc_001EB1F7: ;
    esi = 0; /* xor self */
    SET_LO16(ecx, LO16(ecx) & 0xFFFE);
    goto loc_001EB20D;

loc_001EB200: ;
    if (TEST_Z(LO8(ecx), 2)) goto loc_001EB24E; /* je: equal / zero */

loc_001EB205: ;
    esi = 0; /* xor self */
    esi++;
    SET_LO16(ecx, LO16(ecx) & 0xFFFD);

loc_001EB20D: ;
    MEM16(eax + 0x3A) = LO16(ecx);
    ecx = eax + 8;
    MEM8(ecx) = 0x30;
    MEM8(eax + 9) = 0x40;
    MEM32(eax + 0x10) = 0x1EB047;
    MEM32(eax + 0x14) = edi;
    MEM32(eax + 0x18) = edx;
    MEM32(eax + 0x20) = edx;
    MEM32(eax + 0x1C) = edx;
    MEM8(eax + 0x24) = LO8(edx);
    MEM8(eax + 0x25) = LO8(edx);
    MEM8(eax + 0x26) = LO8(edx);
    MEM8(eax + 0x30) = 0x20;
    MEM8(eax + 0x31) = 1;
    MEM16(eax + 0x32) = LO16(esi);
    MEM16(eax + 0x34) = LO16(edx);
    MEM16(eax + 0x36) = LO16(edx);
    PUSH32(esp, ecx);
    goto loc_001EB1E2;

loc_001EB24E: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EB2C4(); /* call 0x001EB2C4 */

loc_001EB254: ;
    POP32(esp, esi);

loc_001EB255: ;
    POP32(esp, edi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB259
 * Original: 0x001EB259 - 0x001EB2C4 (107 bytes, 33 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB259(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB259: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB265: ;
    SET_LO8(ecx, MEM8(eax + 3));
    if (CMP_NE(LO8(ecx), MEM8(eax + 2))) goto loc_001EB2A4; /* jne: not equal / not zero */

loc_001EB26D: ;
    ecx = MEM32(eax + 0x3C);
    MEM8(eax + 3) = MEM8(eax + 3) & 0;
    MEM8(eax + 0x26) = MEM8(eax + 0x26) & 0;
    MEM32(eax + 0x18) = ecx;
    ecx = eax + 0x38;
    MEM32(eax + 0x20) = ecx;
    ecx = ZX8(MEM8(eax + 7));
    MEM8(eax + 8) = 0x28;
    MEM8(eax + 9) = 0x41;
    MEM32(eax + 0x10) = 0x1EB0F2;
    MEM32(eax + 0x14) = esi;
    MEM32(eax + 0x1C) = ecx;
    MEM8(eax + 0x24) = 2;
    MEM8(eax + 0x25) = 1;
    goto loc_001EB2B5;

loc_001EB2A4: ;
    edx = MEM32(esp + 8);
    SET_LO8(ecx, LO8(ecx) + 1);
    MEM8(eax + 3) = LO8(ecx);
    SET_LO16(ecx, ZX8(LO8(ecx)));
    MEM16(edx + 0x2C) = LO16(ecx);

loc_001EB2B5: ;
    eax = eax + 8;
    PUSH32(esp, eax);
    ecx = esi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB2C0: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB2C4
 * Original: 0x001EB2C4 - 0x001EB2F5 (49 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB2C4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EB2C4: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(ebp + 8);
    PUSH32(esp, edi);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB2D4: ;
    SET_LO8(ebx, MEM8(eax + 4));
    edx = 0; /* xor self */
    SET_LO8(ecx, 1);
    MEM8(eax + 3) = LO8(edx);
    MEM8(ebp + 0xB) = LO8(ebx);

loc_001EB2E1: ;
    if (TEST_NZ(MEM8(ebp + 0xB), LO8(ecx))) { g_seh_ebp = ebp; sub_001EB2F5(); return; } /* jne: not equal / not zero */

loc_001EB2E6: ;
    MEM8(eax + 3) = MEM8(eax + 3) + 1;
    SET_LO8(ebx, MEM8(eax + 3));
    SET_LO8(ecx, LO8(ecx) << 1);
    if (CMP_BE(LO8(ebx), MEM8(eax + 2))) goto loc_001EB2E1; /* jbe: below or equal (unsigned <=) */

loc_001EB2F3: ;
    g_seh_ebp = ebp; sub_001EB2FD(); return; /* tail jmp 0x001EB2FD */

}

/**
 * sub_001EB2F5
 * Original: 0x001EB2F5 - 0x001EB2FD (8 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB2F5(void)
{

loc_001EB2F5: ;
    SET_LO8(ecx, ~LO8(ecx));
    SET_LO8(ecx, LO8(ecx) & MEM8(eax + 4));
    MEM8(eax + 4) = LO8(ecx);

}

/**
 * sub_001EB2FD
 * Original: 0x001EB2FD - 0x001EB38D (144 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB2FD(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB2FD: ;
    SET_LO8(ebx, MEM8(eax + 3));
    /* cmp LO8(ebx), MEM8(eax + 2) - flags set for next jcc */
    MEM8(eax + 0x26) = LO8(edx);
    ecx = eax + 8;
    if (CMP_BE(LO8(ebx), MEM8(eax + 2))) goto loc_001EB32F; /* jbe: below or equal (unsigned <=) */

loc_001EB30B: ;
    edi = MEM32(eax + 0x3C);
    MEM32(eax + 0x18) = edi;
    edi = eax + 0x38;
    MEM32(eax + 0x20) = edi;
    edi = ZX8(MEM8(eax + 7));
    MEM8(ecx) = 0x28;
    MEM8(eax + 9) = 0x41;
    MEM32(eax + 0x10) = 0x1EB0F2;
    MEM8(eax + 0x25) = 1;
    goto loc_001EB374;

loc_001EB32F: ;
    /* cmp LO8(ebx), LO8(edx) - flags set for next jcc */
    edi = eax + 0x38;
    PUSH32(esp, 4);
    MEM32(eax + 0x20) = edi;
    POP32(esp, edi);
    MEM16(eax + 0x32) = LO16(edx);
    MEM8(eax + 0x31) = LO8(edx);
    MEM8(eax + 0x25) = LO8(edx);
    MEM32(eax + 0x18) = edx;
    MEM8(eax + 9) = 0x40;
    MEM8(ecx) = 0x30;
    MEM16(eax + 0x36) = LO16(edi);
    if (CMP_NE(LO8(ebx), LO8(edx))) goto loc_001EB361; /* jne: not equal / not zero */

loc_001EB354: ;
    MEM32(eax + 0x10) = 0x1EB199;
    MEM8(eax + 0x30) = 0xA0;
    goto loc_001EB370;

loc_001EB361: ;
    MEM32(eax + 0x10) = 0x1EAFEC;
    MEM8(eax + 0x30) = 0xA3;
    SET_LO16(edx, ZX8(LO8(ebx)));

loc_001EB370: ;
    MEM16(eax + 0x34) = LO16(edx);

loc_001EB374: ;
    PUSH32(esp, ecx);
    ecx = esi;
    MEM32(eax + 0x14) = esi;
    MEM32(eax + 0x1C) = edi;
    MEM8(eax + 0x24) = 2;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB386: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EB38D
 * Original: 0x001EB38D - 0x001EB3A6 (25 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB38D(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB38D: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = esi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB399: ;
    /* test MEM8(eax), 2 - flags set for next jcc */
    PUSH32(esp, esi);
    if (TEST_Z(MEM8(eax), 2)) { g_seh_ebp = ebp; sub_001EB3A6(); return; } /* je: equal / zero */

loc_001EB39F: ;
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB3A4: ;
    g_seh_ebp = ebp; sub_001EB3B9(); return; /* tail jmp 0x001EB3B9 */

}

/**
 * sub_001EB3A6
 * Original: 0x001EB3A6 - 0x001EB3B9 (19 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB3A6(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB3A6: ;
    if (CMP_EQ(MEM16(eax + 0x3A), 0)) goto loc_001EB3B4; /* je: equal / zero */

loc_001EB3AD: ;
    PUSH32(esp, 0); sub_001EACD2(); /* call 0x001EACD2 */

loc_001EB3B2: ;
    g_seh_ebp = ebp; sub_001EB3B9(); return; /* tail jmp 0x001EB3B9 */

loc_001EB3B4: ;
    PUSH32(esp, 0); sub_001EB2C4(); /* call 0x001EB2C4 */

}

/**
 * sub_001EB3B9
 * Original: 0x001EB3B9 - 0x001EB54F (406 bytes, 132 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB3B9(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB3B9: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

    esi = eax;
    MEM8(esi + 0x3A) = MEM8(esi + 0x3A) & 0xFE;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 3));
    ecx = 0; /* xor self */
    SET_LO8(ecx, LO8(eax));
    SET_LO8(ebx, 1);
    PUSH32(esp, 5);
    PUSH32(esp, eax);
    ecx--;
    SET_LO8(ebx, LO8(ebx) << LO8(ecx));
    ecx = edi;
    PUSH32(esp, 0); sub_001E8C23(); /* call 0x001E8C23 */

loc_001EB3E9: ;
    SET_LO16(edx, ZX8(MEM8(esi + 3)));
    MEM8(esi + 5) = MEM8(esi + 5) | LO8(ebx);
    ecx = 0; /* xor self */
    eax = esi + 8;
    MEM32(esi + 0x18) = ecx;
    MEM32(esi + 0x20) = ecx;
    MEM32(esi + 0x1C) = ecx;
    MEM8(esi + 0x24) = LO8(ecx);
    MEM8(esi + 0x25) = LO8(ecx);
    MEM8(esi + 0x26) = LO8(ecx);
    MEM16(esi + 0x36) = LO16(ecx);
    PUSH32(esp, eax);
    ecx = edi;
    MEM8(eax) = 0x30;
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB38D;
    MEM32(esi + 0x14) = edi;
    MEM8(esi + 0x30) = 0x23;
    MEM8(esi + 0x31) = 1;
    MEM16(esi + 0x32) = 0x10;
    MEM16(esi + 0x34) = LO16(edx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB437: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    esi = eax;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EB458: ;
    eax = MEM32(esp + 0x10);
    ebx = 0; /* xor self */
    if (CMP_GE(MEM32(eax + 4), ebx)) goto loc_001EB46B; /* jge: greater or equal (signed >=) */

loc_001EB463: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB469: ;
    goto loc_001EB4CD;

loc_001EB46B: ;
    SET_LO8(eax, MEM8(0xB229BA));
    /* cmp LO8(eax), 7 - flags set for next jcc */
    MEM8(esi + 2) = LO8(eax);
    if (CMP_BE(LO8(eax), 7)) goto loc_001EB47B; /* jbe: below or equal (unsigned <=) */

loc_001EB477: ;
    MEM8(esi + 2) = 7;

loc_001EB47B: ;
    PUSH32(esp, ebx);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9227(); /* call 0x001E9227 */

loc_001EB483: ;
    eax = esi + 8;
    PUSH32(esp, eax);
    ecx = edi;
    MEM8(esi + 3) = 1;
    MEM8(eax) = 0x30;
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB259;
    MEM32(esi + 0x14) = edi;
    MEM32(esi + 0x18) = ebx;
    MEM32(esi + 0x20) = ebx;
    MEM32(esi + 0x1C) = ebx;
    MEM8(esi + 0x24) = LO8(ebx);
    MEM8(esi + 0x25) = LO8(ebx);
    MEM8(esi + 0x26) = LO8(ebx);
    MEM8(esi + 0x30) = 0x23;
    MEM8(esi + 0x31) = 3;
    MEM16(esi + 0x32) = 8;
    MEM16(esi + 0x34) = 1;
    MEM16(esi + 0x36) = LO16(ebx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB4CD: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

    esi = MEM32(esp + 8);
    eax = 0; /* xor self */
    if (CMP_GE(MEM32(esi + 4), eax)) goto loc_001EB4F5; /* jge: greater or equal (signed >=) */

loc_001EB4EA: ;
    PUSH32(esp, MEM32(esp + 0xC));
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB4F3: ;
    goto loc_001EB54B;

loc_001EB4F5: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    PUSH32(esp, 8);
    POP32(esp, ecx);
    PUSH32(esp, eax);
    MEM8(esi) = 0x30;
    MEM8(esi + 1) = 0x40;
    MEM32(esi + 8) = 0x1EB43D;
    MEM32(esi + 0xC) = edi;
    MEM32(esi + 0x10) = eax;
    MEM32(esi + 0x18) = 0xB229B8;
    MEM32(esi + 0x14) = ecx;
    MEM8(esi + 0x1C) = 2;
    MEM8(esi + 0x1D) = 1;
    MEM8(esi + 0x1E) = LO8(eax);
    MEM8(esi + 0x28) = 0xA0;
    MEM8(esi + 0x29) = 6;
    MEM16(esi + 0x2A) = 0x2900;
    MEM16(esi + 0x2C) = LO16(eax);
    MEM16(esi + 0x2E) = LO16(ecx);
    PUSH32(esp, 0); sub_001EABB6(); /* call 0x001EABB6 */

loc_001EB542: ;
    PUSH32(esp, esi);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB54A: ;
    POP32(esp, edi);

loc_001EB54B: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB3BD
 * Original: 0x001EB3BD - 0x001EB43D (128 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB3BD(void)
{

loc_001EB3BD: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    ecx = edi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB3CB: ;
    esi = eax;
    MEM8(esi + 0x3A) = MEM8(esi + 0x3A) & 0xFE;
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(esi + 3));
    ecx = 0; /* xor self */
    SET_LO8(ecx, LO8(eax));
    SET_LO8(ebx, 1);
    PUSH32(esp, 5);
    PUSH32(esp, eax);
    ecx--;
    SET_LO8(ebx, LO8(ebx) << LO8(ecx));
    ecx = edi;
    PUSH32(esp, 0); sub_001E8C23(); /* call 0x001E8C23 */

loc_001EB3E9: ;
    SET_LO16(edx, ZX8(MEM8(esi + 3)));
    MEM8(esi + 5) = MEM8(esi + 5) | LO8(ebx);
    ecx = 0; /* xor self */
    eax = esi + 8;
    MEM32(esi + 0x18) = ecx;
    MEM32(esi + 0x20) = ecx;
    MEM32(esi + 0x1C) = ecx;
    MEM8(esi + 0x24) = LO8(ecx);
    MEM8(esi + 0x25) = LO8(ecx);
    MEM8(esi + 0x26) = LO8(ecx);
    MEM16(esi + 0x36) = LO16(ecx);
    PUSH32(esp, eax);
    ecx = edi;
    MEM8(eax) = 0x30;
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB38D;
    MEM32(esi + 0x14) = edi;
    MEM8(esi + 0x30) = 0x23;
    MEM8(esi + 0x31) = 1;
    MEM16(esi + 0x32) = 0x10;
    MEM16(esi + 0x34) = LO16(edx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB437: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB43D
 * Original: 0x001EB43D - 0x001EB4D3 (150 bytes, 48 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB43D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB43D: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x14);
    ecx = edi;
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB44B: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    esi = eax;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EB458: ;
    eax = MEM32(esp + 0x10);
    ebx = 0; /* xor self */
    if (CMP_GE(MEM32(eax + 4), ebx)) goto loc_001EB46B; /* jge: greater or equal (signed >=) */

loc_001EB463: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB469: ;
    goto loc_001EB4CD;

loc_001EB46B: ;
    SET_LO8(eax, MEM8(0xB229BA));
    /* cmp LO8(eax), 7 - flags set for next jcc */
    MEM8(esi + 2) = LO8(eax);
    if (CMP_BE(LO8(eax), 7)) goto loc_001EB47B; /* jbe: below or equal (unsigned <=) */

loc_001EB477: ;
    MEM8(esi + 2) = 7;

loc_001EB47B: ;
    PUSH32(esp, ebx);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9227(); /* call 0x001E9227 */

loc_001EB483: ;
    eax = esi + 8;
    PUSH32(esp, eax);
    ecx = edi;
    MEM8(esi + 3) = 1;
    MEM8(eax) = 0x30;
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB259;
    MEM32(esi + 0x14) = edi;
    MEM32(esi + 0x18) = ebx;
    MEM32(esi + 0x20) = ebx;
    MEM32(esi + 0x1C) = ebx;
    MEM8(esi + 0x24) = LO8(ebx);
    MEM8(esi + 0x25) = LO8(ebx);
    MEM8(esi + 0x26) = LO8(ebx);
    MEM8(esi + 0x30) = 0x23;
    MEM8(esi + 0x31) = 3;
    MEM16(esi + 0x32) = 8;
    MEM16(esi + 0x34) = 1;
    MEM16(esi + 0x36) = LO16(ebx);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB4CD: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB4D3
 * Original: 0x001EB4D3 - 0x001EB54F (124 bytes, 37 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB4D3(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB4D3: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0xB22A20);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EB4DF: ;
    esi = MEM32(esp + 8);
    eax = 0; /* xor self */
    if (CMP_GE(MEM32(esi + 4), eax)) goto loc_001EB4F5; /* jge: greater or equal (signed >=) */

loc_001EB4EA: ;
    PUSH32(esp, MEM32(esp + 0xC));
    PUSH32(esp, 0); sub_001EAF29(); /* call 0x001EAF29 */

loc_001EB4F3: ;
    goto loc_001EB54B;

loc_001EB4F5: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    PUSH32(esp, 8);
    POP32(esp, ecx);
    PUSH32(esp, eax);
    MEM8(esi) = 0x30;
    MEM8(esi + 1) = 0x40;
    MEM32(esi + 8) = 0x1EB43D;
    MEM32(esi + 0xC) = edi;
    MEM32(esi + 0x10) = eax;
    MEM32(esi + 0x18) = 0xB229B8;
    MEM32(esi + 0x14) = ecx;
    MEM8(esi + 0x1C) = 2;
    MEM8(esi + 0x1D) = 1;
    MEM8(esi + 0x1E) = LO8(eax);
    MEM8(esi + 0x28) = 0xA0;
    MEM8(esi + 0x29) = 6;
    MEM16(esi + 0x2A) = 0x2900;
    MEM16(esi + 0x2C) = LO16(eax);
    MEM16(esi + 0x2E) = LO16(ecx);
    PUSH32(esp, 0); sub_001EABB6(); /* call 0x001EABB6 */

loc_001EB542: ;
    PUSH32(esp, esi);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB54A: ;
    POP32(esp, edi);

loc_001EB54B: ;
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB54F
 * Original: 0x001EB54F - 0x001EB582 (51 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB54F(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EB54F: ;
    PUSH32(esp, ebp);
    ebp = esp;
    ecx = MEM32(ebp + 0xC);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E990E(); /* call 0x001E990E */

loc_001EB55D: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0xB22A20);
    edi = eax;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EB56A: ;
    esi = MEM32(ebp + 8);
    ebx = 0; /* xor self */
    if (CMP_GE(MEM32(esi + 4), ebx)) { g_seh_ebp = ebp; sub_001EB582(); return; } /* jge: greater or equal (signed >=) */

loc_001EB574: ;
    PUSH32(esp, MEM32(ebp + 0xC));
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EAE20(); /* call 0x001EAE20 */

loc_001EB57D: ;
    g_seh_ebp = ebp; sub_001EB634(); return; /* tail jmp 0x001EB634 */

}

/**
 * sub_001EB574
 * Original: 0x001EB574 - 0x001EB582 (14 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB574(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB574: ;
    PUSH32(esp, MEM32(ebp + 0xC));
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001EAE20(); /* call 0x001EAE20 */

loc_001EB57D: ;
    g_seh_ebp = ebp; sub_001EB634(); return; /* tail jmp 0x001EB634 */

}

/**
 * sub_001EB582
 * Original: 0x001EB582 - 0x001EB634 (178 bytes, 54 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB582(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB582: ;
    eax = 0xB229B8;
    ecx = 0; /* xor self */

loc_001EB589: ;
    eax = ZX8(MEM8(eax));
    ecx = ecx + eax;
    eax = ecx + 0xB229B8;
    if (CMP_NE(MEM8(eax + 1), 5)) goto loc_001EB589; /* jne: not equal / not zero */

loc_001EB59A: ;
    if (CMP_A(MEM16(eax + 4), 4)) goto loc_001EB5A9; /* ja: above (unsigned >) */

loc_001EB5A1: ;
    SET_LO8(ecx, MEM8(eax + 4));
    MEM8(edi + 7) = LO8(ecx);
    goto loc_001EB5AD;

loc_001EB5A9: ;
    MEM8(edi + 7) = 4;

loc_001EB5AD: ;
    SET_LO8(ecx, MEM8(eax + 2));
    MEM8(edi + 1) = LO8(ecx);
    MEM8(esi) = 0x20;
    MEM8(esi + 1) = 2;
    MEM32(esi + 8) = ebx;
    SET_LO8(ecx, MEM8(eax + 2));
    MEM8(esi + 0x15) = LO8(ecx);
    SET_LO8(eax, MEM8(eax + 3));
    ecx = MEM32(ebp + 0xC);
    SET_LO8(eax, LO8(eax) & 3);
    MEM8(esi + 0x16) = LO8(eax);
    MEM8(esi + 0x17) = 0x10;
    SET_LO16(eax, ZX8(MEM8(edi + 7)));
    PUSH32(esp, esi);
    MEM16(esi + 0x1C) = LO16(eax);
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB5E1: ;
    if (TEST_S(eax, eax)) { g_seh_ebp = ebp; sub_001EB574(); return; } /* jl: less (signed <) */

loc_001EB5E5: ;
    eax = MEM32(esi + 0x10);
    MEM32(edi + 0x3C) = eax;
    edi = MEM32(ebp + 0xC);
    PUSH32(esp, ebx);
    MEM8(esi) = 0x30;
    MEM8(esi + 1) = 0x40;
    MEM32(esi + 8) = 0x1EB4D3;
    MEM32(esi + 0xC) = edi;
    MEM32(esi + 0x10) = ebx;
    MEM32(esi + 0x18) = ebx;
    MEM32(esi + 0x14) = ebx;
    MEM8(esi + 0x1C) = LO8(ebx);
    MEM8(esi + 0x1D) = LO8(ebx);
    MEM8(esi + 0x1E) = LO8(ebx);
    MEM8(esi + 0x28) = LO8(ebx);
    MEM8(esi + 0x29) = 9;
    MEM16(esi + 0x2A) = 1;
    MEM16(esi + 0x2C) = LO16(ebx);
    MEM16(esi + 0x2E) = LO16(ebx);
    PUSH32(esp, 0); sub_001EABB6(); /* call 0x001EABB6 */

loc_001EB62C: ;
    PUSH32(esp, esi);
    ecx = edi;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

}

/**
 * sub_001EB634
 * Original: 0x001EB634 - 0x001EB721 (237 bytes, 77 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB634(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB634: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    POP32(esp, ebp);
    esp += 12; return; /* ret 8 */

    /* test MEM8(0xB22A6C), 1 - flags set for next jcc */
    eax = 0xB22A6C;
    if (TEST_Z(MEM8(0xB22A6C), 1)) goto loc_001EB66D; /* je: equal / zero */

loc_001EB662: ;
    ecx = eax;

loc_001EB664: ;
    ecx = ecx + 0x40;
    esi++;
    if (TEST_NZ(MEM8(ecx), 1)) goto loc_001EB664; /* jne: not equal / not zero */

loc_001EB66D: ;
    MEM16(0xB22A6A) = MEM16(0xB22A6A) + 1;
    PUSH32(esp, ebp);
    ebp = MEM32(esp + 0x10);
    esi = esi << 6;
    PUSH32(esp, edi);
    esi = esi + eax;
    PUSH32(esp, esi);
    ecx = ebp;
    PUSH32(esp, 0); sub_001E9912(); /* call 0x001E9912 */

loc_001EB687: ;
    SET_LO8(eax, MEM8(esi));
    SET_LO8(eax, LO8(eax) & 0xF5);
    edi = esi + 8;
    SET_LO8(eax, LO8(eax) | 1);
    PUSH32(esp, edi);
    ecx = ebp;
    MEM8(esi) = LO8(eax);
    MEM8(esi + 5) = LO8(ebx);
    MEM8(esi + 6) = LO8(ebx);
    MEM8(edi) = 0x20;
    MEM8(esi + 9) = 0x82;
    MEM32(esi + 0x10) = ebx;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB6AA: ;
    PUSH32(esp, 0x30);
    POP32(esp, eax);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    PUSH32(esp, 0x1EAB62);
    PUSH32(esp, 0xB22A48);
    MEM8(edi) = LO8(eax);
    MEM8(esi + 9) = 0x40;
    MEM32(esi + 0x10) = 0x1EB54F;
    MEM32(esi + 0x14) = ebp;
    MEM32(esi + 0x18) = ebx;
    MEM32(esi + 0x20) = 0xB229B8;
    MEM32(esi + 0x1C) = eax;
    MEM8(esi + 0x24) = 2;
    MEM8(esi + 0x25) = 1;
    MEM8(esi + 0x26) = LO8(ebx);
    MEM8(esi + 0x30) = 0x80;
    MEM8(esi + 0x31) = 6;
    MEM16(esi + 0x32) = 0x200;
    MEM16(esi + 0x34) = LO16(ebx);
    MEM16(esi + 0x36) = LO16(eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1EC), _icall_esp); /* indirect call */
    }

loc_001EB6FC: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_001EABB6(); /* call 0x001EABB6 */

loc_001EB702: ;
    PUSH32(esp, edi);
    ecx = ebp;
    PUSH32(esp, 0); sub_001E9CB5(); /* call 0x001E9CB5 */

loc_001EB70A: ;
    POP32(esp, edi);
    POP32(esp, ebp);
    goto loc_001EB71C;

loc_001EB70E: ;
    ecx = MEM32(esp + 0xC);
    PUSH32(esp, 0x80000100u);
    PUSH32(esp, 0); sub_001E9227(); /* call 0x001E9227 */

loc_001EB71C: ;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EB721
 * Original: 0x001EB721 - 0x001EB7B0 (143 bytes, 56 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB721(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB721: ;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = ecx;
    /* cmp MEM8(esi + 0x460), 0 - flags set for next jcc */
    ebp = edx;
    SET_LO8(ebx, 1);
    if (CMP_BE(MEM8(esi + 0x460), 0)) goto loc_001EB7AB; /* jbe: below or equal (unsigned <=) */

loc_001EB734: ;
    MEM8(esp + 0xC) = LO8(ebx);
    PUSH32(esp, edi);

loc_001EB739: ;
    SET_LO16(eax, ZX8(LO8(ebx)));
    if (TEST_Z(MEM16(ebp), LO16(eax))) goto loc_001EB796; /* je: equal / zero */

loc_001EB743: ;
    ecx = 0; /* xor self */
    SET_LO16(ecx, MEM16(ebp + 2));
    ecx = ecx & eax;
    if (TEST_Z(LO16(ecx), LO16(ecx))) goto loc_001EB778; /* je: equal / zero */

loc_001EB750: ;
    ecx = esi + 0x461;
    SET_LO8(eax, MEM8(ecx));
    if (TEST_Z(LO8(ebx), LO8(eax))) goto loc_001EB768; /* je: equal / zero */

loc_001EB75C: ;
    PUSH32(esp, MEM32(esp + 0x10));
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E910F(); /* call 0x001E910F */

loc_001EB766: ;
    goto loc_001EB76C;

loc_001EB768: ;
    SET_LO8(eax, LO8(eax) | LO8(ebx));
    MEM8(ecx) = LO8(eax);

loc_001EB76C: ;
    PUSH32(esp, MEM32(esp + 0x10));
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E8DED(); /* call 0x001E8DED */

loc_001EB776: ;
    goto loc_001EB796;

loc_001EB778: ;
    edi = esi + 0x461;
    SET_LO8(eax, MEM8(edi));
    if (TEST_Z(LO8(ebx), LO8(eax))) goto loc_001EB796; /* je: equal / zero */

loc_001EB784: ;
    PUSH32(esp, MEM32(esp + 0x10));
    SET_LO8(ecx, LO8(ebx));
    SET_LO8(ecx, ~LO8(ecx));
    SET_LO8(ecx, LO8(ecx) & LO8(eax));
    PUSH32(esp, esi);
    MEM8(edi) = LO8(ecx);
    PUSH32(esp, 0); sub_001E910F(); /* call 0x001E910F */

loc_001EB796: ;
    MEM8(esp + 0x10) = MEM8(esp + 0x10) + 1;
    SET_LO8(eax, MEM8(esp + 0x10));
    SET_LO8(ebx, LO8(ebx) << 1);
    SET_LO8(eax, LO8(eax) - 1);
    if (CMP_B(LO8(eax), MEM8(esi + 0x460))) goto loc_001EB739; /* jb: below (unsigned <) */

loc_001EB7AA: ;
    POP32(esp, edi);

loc_001EB7AB: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EB7B0
 * Original: 0x001EB7B0 - 0x001EB7FD (77 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB7B0(void)
{
    uint32_t ebp;

loc_001EB7B0: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    ebp = esp;
    eax = MEM32(ebp + 8);
    ecx = MEM32(ebp + 0x10);
    edx = MEM32(ebp + 0xC);
    MEM32(eax + 0x470) = ecx;
    ecx = MEM32(ebp + 0x14);
    PUSH32(esp, esi);
    MEM32(eax + 0x474) = ecx;
    ecx = MEM32(eax);
    MEM16(ebp + 8) = 0x10;
    esi = MEM32(ebp + 8);
    MEM32(ecx + edx * 4 + 0x50) = esi;
    esi = eax + 0x4A0;
    PUSH32(esp, esi);
    edx = edx | 0xFFFFFFFFu;
    PUSH32(esp, edx);
    ecx = 0xFFF0BDC0u;
    PUSH32(esp, ecx);
    eax = eax + 0x478;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED200), _icall_esp); /* indirect call */
    }

loc_001EB7F8: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EB7FD
 * Original: 0x001EB7FD - 0x001EB81A (29 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB7FD(void)
{
    uint32_t ebp;

loc_001EB7FD: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    eax = MEM32(ebp + 8);
    eax = MEM32(eax);
    ecx = MEM32(ebp + 0xC);
    MEM16(ebp + -4) = 1;
    edx = MEM32(ebp + -4);
    MEM32(eax + ecx * 4 + 0x50) = edx;
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EB81A
 * Original: 0x001EB81A - 0x001EB845 (43 bytes, 15 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB81A(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB81A: ;
    ecx = MEM32(esp + 8);
    eax = ecx + 0x470;
    edx = MEM32(eax);
    ecx = ecx + 0x474;
    /* test edx, edx - flags set for next jcc */
    PUSH32(esp, esi);
    esi = MEM32(ecx);
    if (TEST_Z(edx, edx)) goto loc_001EB841; /* je: equal / zero */

loc_001EB833: ;
    MEM32(eax) = MEM32(eax) & 0;
    MEM32(ecx) = MEM32(ecx) & 0;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x80000600u);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(edx, _icall_esp); /* indirect call */
    }

loc_001EB841: ;
    POP32(esp, esi);
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EB845
 * Original: 0x001EB845 - 0x001EB904 (191 bytes, 64 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB845(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EB845: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x1C;
    PUSH32(esp, esi);
    esi = ecx;
    eax = MEM32(esi);
    edx = ZX8(MEM8(esi + 0x460));
    ecx = eax + 0x54;
    eax = MEM32(ecx);
    PUSH32(esp, edi);
    eax = 0; /* xor self */
    /* test edx, edx - flags set for next jcc */
    edi = ebp + -8;
    MEM32(edi) = eax; edi += 4; /* stosd */
    MEM32(ebp + -12) = 1;
    if (CMP_BE(edx & edx, 0)) goto loc_001EB8F6; /* jbe: below or equal (unsigned <=) */

loc_001EB872: ;
    MEM32(ebp + -16) = ecx;
    MEM32(ebp + -20) = edx;
    PUSH32(esp, ebx);

loc_001EB879: ;
    edi = MEM32(ecx);
    MEM32(ebp + -4) = edi;
    if (TEST_Z(MEM8(ebp + -2), 0x10)) goto loc_001EB8C3; /* je: equal / zero */

loc_001EB884: ;
    ecx = MEM32(esi + 0x474);
    ebx = esi + 0x470;
    eax = MEM32(ebx);
    /* test eax, eax - flags set for next jcc */
    MEM32(ebp + -28) = eax;
    MEM32(ebp + -24) = ecx;
    if (TEST_Z(eax, eax)) goto loc_001EB8C3; /* je: equal / zero */

loc_001EB89C: ;
    eax = esi + 0x478;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED204), _icall_esp); /* indirect call */
    }

loc_001EB8A9: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, MEM32(ebp + -24));
    MEM32(ebx) = MEM32(ebx) & 0;
    MEM32(esi + 0x474) = MEM32(esi + 0x474) & 0;
    edi = edi & 0x200;
    edi = edi << 0xF;
    PUSH32(esp, edi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(ebp + -28), _icall_esp); /* indirect call */
    }

loc_001EB8C3: ;
    if (TEST_Z(MEM8(ebp + -2), 1)) goto loc_001EB8DA; /* je: equal / zero */

loc_001EB8C9: ;
    eax = MEM32(ebp + -12);
    MEM16(ebp + -8) = MEM16(ebp + -8) | LO16(eax);
    if (TEST_Z(MEM8(ebp + -4), 1)) goto loc_001EB8DA; /* je: equal / zero */

loc_001EB8D6: ;
    MEM16(ebp + -6) = MEM16(ebp + -6) | LO16(eax);

loc_001EB8DA: ;
    MEM16(ebp + -4) = MEM16(ebp + -4) & 0;
    ecx = MEM32(ebp + -16);
    eax = MEM32(ebp + -4);
    MEM32(ebp + -12) = MEM32(ebp + -12) << 1;
    MEM32(ecx) = eax;
    ecx = ecx + 4;
    MEM32(ebp + -20) = MEM32(ebp + -20) - 1;
    MEM32(ebp + -16) = ecx;
    if ((MEM32(ebp + -20) != 0)) goto loc_001EB879; /* jne: not equal / not zero */

loc_001EB8F5: ;
    POP32(esp, ebx);

loc_001EB8F6: ;
    edx = ebp + -8;
    ecx = esi;
    PUSH32(esp, 0); sub_001EB721(); /* call 0x001EB721 */

loc_001EB900: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EB904
 * Original: 0x001EB904 - 0x001EB921 (29 bytes, 7 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB904(void)
{

loc_001EB904: ;
    eax = MEM32(esp + 4);
    MEM32(eax + 8) = MEM32(eax + 8) | 0xFFFFFFFFu;
    MEM8(eax + 0x1F) = MEM8(eax + 0x1F) | 0xFF;
    ecx = MEM32(0xBF4EEC);
    MEM32(eax + 0x14) = ecx;
    MEM32(0xBF4EEC) = eax;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EB921
 * Original: 0x001EB921 - 0x001EB935 (20 bytes, 7 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB921(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB921: ;
    /* cmp MEM8(edx + 0x11), 0 - flags set for next jcc */
    eax = MEM32(ecx);
    PUSH32(esp, esi);
    if (CMP_NE(MEM8(edx + 0x11), 0)) { g_seh_ebp = ebp; sub_001EB935(); return; } /* jne: not equal / not zero */

loc_001EB92A: ;
    esi = ecx + 0x40C;
    eax = eax + 0x20;
    g_seh_ebp = ebp; sub_001EB93E(); return; /* tail jmp 0x001EB93E */

}

/**
 * sub_001EB935
 * Original: 0x001EB935 - 0x001EB93E (9 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB935(void)
{

loc_001EB935: ;
    esi = ecx + 0x410;
    eax = eax + 0x28;

}

/**
 * sub_001EB93E
 * Original: 0x001EB93E - 0x001EB95E (32 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB93E(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB93E: ;
    ecx = MEM32(esi);
    MEM32(edx + 0x18) = ecx;
    MEM32(esi) = edx;
    ecx = MEM32(edx + 0x18);
    /* test ecx, ecx - flags set for next jcc */
    POP32(esp, esi);
    if (TEST_NZ(ecx, ecx)) goto loc_001EB952; /* jne: not equal / not zero */

loc_001EB94D: ;
    MEM32(edx + 0xC) = MEM32(edx + 0xC) & ecx;
    goto loc_001EB958;

loc_001EB952: ;
    ecx = MEM32(ecx + 0x14);
    MEM32(edx + 0xC) = ecx;

loc_001EB958: ;
    ecx = MEM32(edx + 0x14);
    MEM32(eax) = ecx;
    esp += 4; return; /* ret */

}

/**
 * sub_001EB95E
 * Original: 0x001EB95E - 0x001EB973 (21 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB95E(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB95E: ;
    /* cmp MEM8(edx + 0x11), 0 - flags set for next jcc */
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    if (CMP_NE(MEM8(edx + 0x11), 0)) { g_seh_ebp = ebp; sub_001EB973(); return; } /* jne: not equal / not zero */

loc_001EB966: ;
    esi = ecx + 0x40C;
    ecx = MEM32(ecx);
    ecx = ecx + 0x20;
    g_seh_ebp = ebp; sub_001EB97E(); return; /* tail jmp 0x001EB97E */

}

/**
 * sub_001EB973
 * Original: 0x001EB973 - 0x001EB97E (11 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB973(void)
{

loc_001EB973: ;
    esi = ecx + 0x410;
    ecx = MEM32(ecx);
    ecx = ecx + 0x28;

}

/**
 * sub_001EB97E
 * Original: 0x001EB97E - 0x001EB9AE (48 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB97E(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB97E: ;
    eax = MEM32(esi);
    edi = 0; /* xor self */

loc_001EB982: ;
    if (CMP_EQ(edx, eax)) goto loc_001EB98F; /* je: equal / zero */

loc_001EB986: ;
    edi = eax;
    eax = MEM32(eax + 0x18);
    if (TEST_NZ(eax, eax)) goto loc_001EB982; /* jne: not equal / not zero */

loc_001EB98F: ;
    if (TEST_Z(edi, edi)) goto loc_001EB9A1; /* je: equal / zero */

loc_001EB993: ;
    ecx = MEM32(eax + 0x18);
    MEM32(edi + 0x18) = ecx;
    eax = MEM32(eax + 0xC);
    MEM32(edi + 0xC) = eax;
    goto loc_001EB9AB;

loc_001EB9A1: ;
    edx = MEM32(eax + 0x18);
    MEM32(esi) = edx;
    eax = MEM32(eax + 0xC);
    MEM32(ecx) = eax;

loc_001EB9AB: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001EB9AE
 * Original: 0x001EB9AE - 0x001EB9C4 (22 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB9AE(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EB9AE: ;
    eax = 0; /* xor self */
    if (CMP_BE(ecx & ecx, 0)) goto loc_001EB9C3; /* jbe: below or equal (unsigned <=) */

loc_001EB9B4: ;
    PUSH32(esp, esi);

loc_001EB9B5: ;
    esi = edx;
    esi = esi & 1;
    edx = edx >> 1;
    ecx--;
    eax = esi + eax * 2;
    if ((ecx != 0)) goto loc_001EB9B5; /* jne: not equal / not zero */

loc_001EB9C2: ;
    POP32(esp, esi);

loc_001EB9C3: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001EB9C4
 * Original: 0x001EB9C4 - 0x001EB9EC (40 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB9C4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EB9C4: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = ecx;
    SET_LO8(ecx, MEM8(ebp + 8));
    /* cmp LO8(ecx), 0x20 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = edx;
    if (CMP_B(LO8(ecx), 0x20)) { g_seh_ebp = ebp; sub_001EB9EC(); return; } /* jb: below (unsigned <) */

loc_001EB9D6: ;
    edx = ZX8(LO8(ecx));
    PUSH32(esp, 5);
    edx = edx - 0x20;
    POP32(esp, ecx);
    PUSH32(esp, 0); sub_001EB9AE(); /* call 0x001EB9AE */

loc_001EB9E4: ;
    ecx = MEM32(esi + 8);
    MEM32(ecx + eax * 4) = edi;
    g_seh_ebp = ebp; sub_001EBA35(); return; /* tail jmp 0x001EBA35 */

}

/**
 * sub_001EB9EC
 * Original: 0x001EB9EC - 0x001EBA35 (73 bytes, 28 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EB9EC(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EB9EC: ;
    MEM8(ebp + 0xB) = MEM8(ebp + 0xB) & 0;
    SET_LO8(eax, LO8(ecx));
    SET_LO8(eax, LO8(eax) << 1);
    PUSH32(esp, ebx);
    SET_LO8(eax, LO8(eax) + 1);
    SET_LO8(ebx, LO8(ecx));
    MEM8(ebp + -4) = LO8(eax);
    SET_LO8(ebx, LO8(ebx) << 1);

loc_001EB9FE: ;
    eax = ZX8(LO8(eax));
    eax = eax << 4;
    eax = eax + esi + 0xC;
    if (CMP_NE(MEM32(eax + 8), 0)) goto loc_001EBA1C; /* jne: not equal / not zero */

loc_001EBA0E: ;
    PUSH32(esp, MEM32(ebp + -4));
    edx = edi;
    ecx = esi;
    PUSH32(esp, 0); sub_001EB9C4(); /* call 0x001EB9C4 */

loc_001EBA1A: ;
    goto loc_001EBA22;

loc_001EBA1C: ;
    eax = MEM32(eax + 0xC);
    MEM32(eax + 0xC) = edi;

loc_001EBA22: ;
    SET_LO8(eax, LO8(ebx));
    /* test LO8(eax), LO8(eax) - flags set for next jcc */
    MEM8(ebp + -4) = LO8(eax);
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EBA34; /* je: equal / zero */

loc_001EBA2B: ;
    MEM8(ebp + 0xB) = MEM8(ebp + 0xB) + 1;
    if (CMP_B(MEM8(ebp + 0xB), 2)) goto loc_001EB9FE; /* jb: below (unsigned <) */

loc_001EBA34: ;
    POP32(esp, ebx);

}

/**
 * sub_001EBA35
 * Original: 0x001EBA35 - 0x001EBA3B (6 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBA35(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBA35: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EBA3B
 * Original: 0x001EBA3B - 0x001EBACC (145 bytes, 52 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBA3B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EBA3B: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x10;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = edx;
    /* cmp MEM8(esi + 0x11), 3 - flags set for next jcc */
    PUSH32(esp, edi);
    if (CMP_NE(MEM8(esi + 0x11), 3)) goto loc_001EBA9F; /* jne: not equal / not zero */

loc_001EBA4C: ;
    SET_LO8(eax, 0x20);
    if (CMP_AE(MEM8(esi + 0x13), LO8(eax))) goto loc_001EBA5C; /* jae: above or equal (unsigned >=) */

loc_001EBA53: ;
    SET_LO8(edx, MEM8(esi + 0x13));

loc_001EBA56: ;
    SET_LO8(eax, LO8(eax) >> 1);
    if (CMP_A(LO8(eax), LO8(edx))) goto loc_001EBA56; /* ja: above (unsigned >) */

loc_001EBA5C: ;
    SET_LO8(ebx, LO8(eax));
    SET_LO8(ebx, LO8(ebx) << 1);
    SET_LO8(ebx, LO8(ebx) - 1);
    /* cmp LO8(eax), LO8(ebx) - flags set for next jcc */
    edi = 0x2EE0;
    MEM8(ebp + -1) = LO8(eax);
    if (CMP_A(LO8(eax), LO8(ebx))) goto loc_001EBAAB; /* ja: above (unsigned >) */

loc_001EBA6E: ;
    eax = ZX8(LO8(eax));
    eax = eax << 4;
    edx = eax + ecx + 0x10;

loc_001EBA78: ;
    eax = 0; /* xor self */
    SET_LO16(eax, MEM16(edx + -2));
    SET_LO16(eax, LO16(eax) + MEM16(edx + 2));
    SET_LO16(eax, LO16(eax) + MEM16(edx));
    if (CMP_AE(LO16(eax), LO16(edi))) goto loc_001EBA92; /* jae: above or equal (unsigned >=) */

loc_001EBA8A: ;
    edi = eax;
    SET_LO8(eax, MEM8(ebp + -1));
    MEM8(ebp + -5) = LO8(eax);

loc_001EBA92: ;
    MEM8(ebp + -1) = MEM8(ebp + -1) + 1;
    edx = edx + 0x10;
    if (CMP_BE(MEM8(ebp + -1), LO8(ebx))) goto loc_001EBA78; /* jbe: below or equal (unsigned <=) */

loc_001EBA9D: ;
    goto loc_001EBAAB;

loc_001EBA9F: ;
    SET_LO16(edi, MEM16(ecx + 0x10));
    SET_LO16(edi, LO16(edi) + MEM16(ecx + 0xE));
    MEM8(ebp + -5) = MEM8(ebp + -5) & 0;

loc_001EBAAB: ;
    SET_LO16(eax, MEM16(esi + 0x22));
    edi = ZX16(LO16(edi));
    edx = ZX16(LO16(eax));
    edx = edx + edi;
    edi = ZX16(MEM16(ecx + 0x414));
    if (CMP_LE(edx, edi)) { g_seh_ebp = ebp; sub_001EBACC(); return; } /* jle: less or equal (signed <=) */

loc_001EBAC2: ;
    eax = 0x80000800u;
    g_seh_ebp = ebp; sub_001EBC12(); return; /* tail jmp 0x001EBC12 */

}

/**
 * sub_001EBACC
 * Original: 0x001EBACC - 0x001EBC12 (326 bytes, 115 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBACC(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBACC: ;
    SET_LO8(edx, MEM8(ebp + -5));
    edi = ZX8(LO8(edx));
    edi = edi << 4;
    edi = edi + ecx + 0xC;
    MEM8(esi + 0x12) = LO8(edx);
    MEM16(edi + 2) = MEM16(edi + 2) + LO16(eax);
    if (TEST_NZ(LO8(edx), LO8(edx))) goto loc_001EBAEB; /* jne: not equal / not zero */

loc_001EBAE4: ;
    SET_LO8(eax, 1);
    MEM8(ebp + -1) = LO8(eax);
    goto loc_001EBAFC;

loc_001EBAEB: ;
    SET_LO8(eax, LO8(edx));
    SET_LO8(eax, LO8(eax) << 1);
    MEM8(ebp + -1) = LO8(eax);
    SET_LO8(eax, LO8(edx));
    SET_LO8(eax, LO8(eax) << 1);
    SET_LO8(eax, LO8(eax) + 1);
    if (CMP_A(LO8(eax), 0x40)) goto loc_001EBB3C; /* ja: above (unsigned >) */

loc_001EBAFC: ;
    if (CMP_A(MEM8(ebp + -1), LO8(eax))) goto loc_001EBB2E; /* ja: above (unsigned >) */

loc_001EBB01: ;
    edx = ZX8(MEM8(ebp + -1));
    edx = edx << 4;
    edx = edx + ecx + 0x12;
    MEM32(ebp + -16) = edx;
    SET_LO8(edx, LO8(eax));
    SET_LO8(edx, LO8(edx) - MEM8(ebp + -1));
    SET_LO8(edx, LO8(edx) + 1);
    edx = ZX8(LO8(edx));
    MEM32(ebp + -12) = edx;
    edx = MEM32(ebp + -16);

loc_001EBB1F: ;
    SET_LO16(ebx, MEM16(esi + 0x22));
    MEM16(edx) = MEM16(edx) + LO16(ebx);
    edx = edx + 0x10;
    MEM32(ebp + -12) = MEM32(ebp + -12) - 1;
    if ((MEM32(ebp + -12) != 0)) goto loc_001EBB1F; /* jne: not equal / not zero */

loc_001EBB2E: ;
    MEM8(ebp + -1) = MEM8(ebp + -1) << 1;
    SET_LO8(eax, LO8(eax) << 1);
    SET_LO8(eax, LO8(eax) + 1);
    if (CMP_BE(LO8(eax), 0x40)) goto loc_001EBAFC; /* jbe: below or equal (unsigned <=) */

loc_001EBB39: ;
    SET_LO8(edx, MEM8(ebp + -5));

loc_001EBB3C: ;
    /* cmp LO8(edx), 1 - flags set for next jcc */
    MEM8(ebp + -1) = LO8(edx);
    if (CMP_BE(LO8(edx), 1)) goto loc_001EBBA5; /* jbe: below or equal (unsigned <=) */

loc_001EBB44: ;
    SET_LO8(eax, MEM8(ebp + -1));
    edx = ZX8(MEM8(ebp + -1));
    SET_LO8(eax, LO8(eax) ^ 1);
    eax = ZX8(LO8(eax));
    edx = edx << 4;
    edx = edx + ecx + 0xC;
    eax = eax << 4;
    ebx = 0; /* xor self */
    SET_LO16(ebx, MEM16(edx + 4));
    SET_LO16(edx, MEM16(edx + 2));
    eax = eax + ecx + 0xC;
    MEM16(ebp + -12) = LO16(edx);
    edx = ZX16(MEM16(eax + 4));
    eax = ZX16(MEM16(eax + 2));
    edx = edx + eax;
    eax = ZX16(MEM16(ebp + -12));
    MEM32(ebp + -16) = ebx;
    ebx = ZX16(LO16(ebx));
    eax = eax + ebx;
    if (CMP_LE(eax, edx)) goto loc_001EBBA5; /* jle: less or equal (signed <=) */

loc_001EBB86: ;
    SET_LO8(eax, MEM8(ebp + -1));
    ebx = MEM32(ebp + -16);
    edx = MEM32(ebp + -12);
    SET_LO8(eax, LO8(eax) >> 1);
    edx = edx + ebx;
    ebx = ZX8(LO8(eax));
    ebx = ebx << 4;
    /* cmp LO8(eax), 1 - flags set for next jcc */
    MEM16(ebx + ecx + 0x10) = LO16(edx);
    MEM8(ebp + -1) = LO8(eax);
    if (CMP_A(LO8(eax), 1)) goto loc_001EBB44; /* ja: above (unsigned >) */

loc_001EBBA5: ;
    if (CMP_NE(MEM8(ebp + -1), 1)) goto loc_001EBBB7; /* jne: not equal / not zero */

loc_001EBBAB: ;
    SET_LO16(eax, MEM16(ecx + 0x20));
    SET_LO16(eax, LO16(eax) + MEM16(ecx + 0x1E));
    MEM16(ecx + 0x10) = LO16(eax);

loc_001EBBB7: ;
    eax = MEM32(edi + 8);
    edx = 0; /* xor self */
    if (CMP_NE(eax, edx)) goto loc_001EBBF6; /* jne: not equal / not zero */

loc_001EBBC0: ;
    SET_LO8(eax, MEM8(ebp + -5));
    goto loc_001EBBC9;

loc_001EBBC5: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EBBD7; /* je: equal / zero */

loc_001EBBC9: ;
    SET_LO8(eax, LO8(eax) >> 1);
    ebx = ZX8(LO8(eax));
    ebx = ebx << 4;
    if (CMP_EQ(MEM32(ebx + ecx + 0x14), edx)) goto loc_001EBBC5; /* je: equal / zero */

loc_001EBBD7: ;
    eax = ZX8(LO8(eax));
    eax = eax << 4;
    eax = MEM32(eax + ecx + 0x14);
    if (CMP_EQ(eax, edx)) goto loc_001EBBEB; /* je: equal / zero */

loc_001EBBE5: ;
    eax = MEM32(eax + 0x14);
    MEM32(esi + 0xC) = eax;

loc_001EBBEB: ;
    MEM32(edi + 8) = esi;
    MEM32(edi + 0xC) = esi;
    MEM32(esi + 0x18) = edx;
    goto loc_001EBC05;

loc_001EBBF6: ;
    MEM32(esi + 0x18) = eax;
    MEM32(edi + 8) = esi;
    eax = MEM32(esi + 0x18);
    eax = MEM32(eax + 0x14);
    MEM32(esi + 0xC) = eax;

loc_001EBC05: ;
    PUSH32(esp, MEM32(ebp + -5));
    edx = MEM32(esi + 0x14);
    PUSH32(esp, 0); sub_001EB9C4(); /* call 0x001EB9C4 */

loc_001EBC10: ;
    eax = 0; /* xor self */

}

/**
 * sub_001EBC12
 * Original: 0x001EBC12 - 0x001EBC17 (5 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBC12(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBC12: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EBC17
 * Original: 0x001EBC17 - 0x001EBC88 (113 bytes, 44 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBC17(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EBC17: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x10;
    SET_LO16(eax, MEM16(edx + 0x22));
    MEM32(ebp + -4) = MEM32(ebp + -4) & 0;
    PUSH32(esp, ebx);
    SET_LO8(ebx, MEM8(edx + 0x12));
    MEM16(ebp + -12) = LO16(eax);
    eax = ZX8(LO8(ebx));
    PUSH32(esp, esi);
    esi = ecx;
    eax = eax << 4;
    PUSH32(esp, edi);
    edi = eax + esi + 0xC;
    ecx = MEM32(edi + 8);
    MEM32(ebp + -16) = edx;
    MEM8(ebp + -8) = LO8(ebx);

loc_001EBC44: ;
    if (CMP_EQ(ecx, edx)) goto loc_001EBC52; /* je: equal / zero */

loc_001EBC48: ;
    MEM32(ebp + -4) = ecx;
    ecx = MEM32(ecx + 0x18);
    if (TEST_NZ(ecx, ecx)) goto loc_001EBC44; /* jne: not equal / not zero */

loc_001EBC52: ;
    eax = MEM32(ecx + 0x18);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001EBC88(); return; } /* jne: not equal / not zero */

loc_001EBC59: ;
    eax = MEM32(ebp + -4);
    MEM32(edi + 0xC) = eax;
    SET_LO8(eax, LO8(ebx));
    goto loc_001EBC67;

loc_001EBC63: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EBC76; /* je: equal / zero */

loc_001EBC67: ;
    SET_LO8(eax, LO8(eax) >> 1);
    edx = ZX8(LO8(eax));
    edx = edx << 4;
    if (CMP_EQ(MEM32(edx + esi + 0x14), 0)) goto loc_001EBC63; /* je: equal / zero */

loc_001EBC76: ;
    eax = ZX8(LO8(eax));
    eax = eax << 4;
    eax = MEM32(eax + esi + 0x14);
    if (TEST_NZ(eax, eax)) { g_seh_ebp = ebp; sub_001EBC88(); return; } /* jne: not equal / not zero */

loc_001EBC84: ;
    edx = 0; /* xor self */
    g_seh_ebp = ebp; sub_001EBC8B(); return; /* tail jmp 0x001EBC8B */

}

/**
 * sub_001EBC88
 * Original: 0x001EBC88 - 0x001EBC8B (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBC88(void)
{

loc_001EBC88: ;
    edx = MEM32(eax + 0x14);

}

/**
 * sub_001EBC8B
 * Original: 0x001EBC8B - 0x001EBE1F (404 bytes, 141 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBC8B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBC8B: ;
    eax = MEM32(ebp + -4);
    if (TEST_NZ(eax, eax)) goto loc_001EBCA4; /* jne: not equal / not zero */

loc_001EBC92: ;
    eax = MEM32(ecx + 0x18);
    PUSH32(esp, MEM32(ebp + -8));
    ecx = esi;
    MEM32(edi + 8) = eax;
    PUSH32(esp, 0); sub_001EB9C4(); /* call 0x001EB9C4 */

loc_001EBCA2: ;
    goto loc_001EBCAD;

loc_001EBCA4: ;
    ecx = MEM32(ecx + 0x18);
    MEM32(eax + 0x18) = ecx;
    MEM32(eax + 0xC) = edx;

loc_001EBCAD: ;
    SET_LO16(eax, MEM16(ebp + -12));
    MEM16(edi + 2) = MEM16(edi + 2) - LO16(eax);
    if (TEST_NZ(LO8(ebx), LO8(ebx))) goto loc_001EBD80; /* jne: not equal / not zero */

loc_001EBCBD: ;
    SET_LO8(eax, 1);
    SET_LO8(ecx, LO8(eax));

loc_001EBCC1: ;
    if (CMP_A(LO8(ecx), LO8(eax))) goto loc_001EBCED; /* ja: above (unsigned >) */

loc_001EBCC5: ;
    edx = ZX8(LO8(ecx));
    edx = edx << 4;
    edi = edx + esi + 0x12;
    SET_LO8(edx, LO8(eax));
    SET_LO8(edx, LO8(edx) - LO8(ecx));
    SET_LO8(edx, LO8(edx) + 1);
    edx = ZX8(LO8(edx));
    MEM32(ebp + -4) = edx;

loc_001EBCDB: ;
    edx = MEM32(ebp + -16);
    SET_LO16(edx, MEM16(edx + 0x22));
    MEM16(edi) = MEM16(edi) - LO16(edx);
    edi = edi + 0x10;
    MEM32(ebp + -4) = MEM32(ebp + -4) - 1;
    if ((MEM32(ebp + -4) != 0)) goto loc_001EBCDB; /* jne: not equal / not zero */

loc_001EBCED: ;
    SET_LO8(eax, LO8(eax) << 1);
    SET_LO8(ecx, LO8(ecx) << 1);
    SET_LO8(eax, LO8(eax) + 1);
    if (CMP_BE(LO8(eax), 0x40)) goto loc_001EBCC1; /* jbe: below or equal (unsigned <=) */

loc_001EBCF7: ;
    if (CMP_BE(LO8(ebx), 1)) goto loc_001EBD6D; /* jbe: below or equal (unsigned <=) */

loc_001EBCFC: ;
    SET_LO8(edx, LO8(ebx));
    SET_LO8(edx, LO8(edx) ^ 1);
    ecx = ZX8(LO8(edx));
    ecx = ecx << 4;
    ecx = ecx + esi + 0xC;
    edi = ZX16(MEM16(ecx + 4));
    ecx = ZX16(MEM16(ecx + 2));
    edi = edi + ecx;
    ecx = ZX8(LO8(ebx));
    ecx = ecx << 4;
    MEM32(ebp + -4) = edi;
    ecx = ecx + esi + 0xC;
    edi = ZX16(MEM16(ecx + 4));
    ecx = ZX16(MEM16(ecx + 2));
    SET_LO8(eax, LO8(ebx));
    edi = edi + ecx;
    SET_LO8(eax, LO8(eax) >> 1);
    if (CMP_G(edi, MEM32(ebp + -4))) goto loc_001EBD47; /* jg: greater (signed >) */

loc_001EBD35: ;
    ecx = ZX8(LO8(eax));
    ecx = ecx << 4;
    ecx = ZX16(MEM16(ecx + esi + 0x10));
    if (CMP_EQ(MEM32(ebp + -4), ecx)) goto loc_001EBD6A; /* je: equal / zero */

loc_001EBD45: ;
    SET_LO8(ebx, LO8(edx));

loc_001EBD47: ;
    ecx = ZX8(LO8(ebx));
    ecx = ecx << 4;
    ecx = ecx + esi + 0xC;
    SET_LO16(edx, MEM16(ecx + 4));
    SET_LO16(edx, LO16(edx) + MEM16(ecx + 2));
    ecx = ZX8(LO8(eax));
    ecx = ecx << 4;
    /* cmp LO8(eax), 1 - flags set for next jcc */
    MEM16(ecx + esi + 0x10) = LO16(edx);
    SET_LO8(ebx, LO8(eax));
    if (CMP_A(LO8(eax), 1)) goto loc_001EBCFC; /* ja: above (unsigned >) */

loc_001EBD6A: ;
    /* cmp LO8(ebx), 1 - flags set for next jcc */

loc_001EBD6D: ;
    if (CMP_NE(LO8(ebx), 1)) goto loc_001EBD7B; /* jne: not equal / not zero */

loc_001EBD6F: ;
    SET_LO16(eax, MEM16(esi + 0x20));
    SET_LO16(eax, LO16(eax) + MEM16(esi + 0x1E));
    MEM16(esi + 0x10) = LO16(eax);

loc_001EBD7B: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

loc_001EBD80: ;
    SET_LO8(ecx, LO8(ebx));
    SET_LO8(eax, LO8(ebx));
    goto loc_001EBCED;

    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = MEM32(esi);
    MEM32(0xB22BF0) = MEM32(0xB22BF0) + 1;
    eax = MEM32(ecx + 0x10);
    edx = MEM32(ecx + 0xC);
    edx = edx & eax;
    PUSH32(esp, edi);
    if ((edx == 0)) goto loc_001EBE18; /* je: equal / zero */

loc_001EBDA1: ;
    edi = 0x80000000u;
    if (TEST_Z(edi, eax)) goto loc_001EBE18; /* je: equal / zero */

loc_001EBDAA: ;
    eax = 0; /* xor self */
    eax++;
    /* test LO8(eax), LO8(edx) - flags set for next jcc */
    MEM32(ecx + 0x14) = edi;
    if (TEST_Z(LO8(eax), LO8(edx))) goto loc_001EBDBA; /* je: equal / zero */

loc_001EBDB4: ;
    MEM32(ecx + 0xC) = eax;
    edx = edx & 0xFFFFFFFEu;

loc_001EBDBA: ;
    if (TEST_Z(LO8(edx), 0x20)) goto loc_001EBDEE; /* je: equal / zero */

loc_001EBDBF: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esi + 8);
    ebx = ZX16(MEM16(ebx + 0x80));
    edi = esi + 0x418;
    eax = MEM32(edi);
    ebx = ebx ^ eax;
    ebx = ebx & 0x8000;
    eax = eax - ebx;
    eax = eax + 0x10000;
    MEM32(edi) = eax;
    MEM32(ecx + 0xC) = 0x20;
    edx = edx & 0xFFFFFFDFu;
    POP32(esp, ebx);

loc_001EBDEE: ;
    if (TEST_Z(edx, edx)) goto loc_001EBE0B; /* je: equal / zero */

loc_001EBDF2: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    MEM32(esi + 0x438) = edx;
    PUSH32(esp, 0);
    esi = esi + 0x440;
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED260), _icall_esp); /* indirect call */
    }

loc_001EBE09: ;
    goto loc_001EBE14;

loc_001EBE0B: ;
    eax = MEM32(esi);
    MEM32(eax + 0x10) = 0x80000000u;

loc_001EBE14: ;
    SET_LO8(eax, 1);
    goto loc_001EBE1A;

loc_001EBE18: ;
    SET_LO8(eax, 0); /* xor self */

loc_001EBE1A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EBD89
 * Original: 0x001EBD89 - 0x001EBE1F (150 bytes, 51 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBD89(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EBD89: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    ecx = MEM32(esi);
    MEM32(0xB22BF0) = MEM32(0xB22BF0) + 1;
    eax = MEM32(ecx + 0x10);
    edx = MEM32(ecx + 0xC);
    edx = edx & eax;
    PUSH32(esp, edi);
    if ((edx == 0)) goto loc_001EBE18; /* je: equal / zero */

loc_001EBDA1: ;
    edi = 0x80000000u;
    if (TEST_Z(edi, eax)) goto loc_001EBE18; /* je: equal / zero */

loc_001EBDAA: ;
    eax = 0; /* xor self */
    eax++;
    /* test LO8(eax), LO8(edx) - flags set for next jcc */
    MEM32(ecx + 0x14) = edi;
    if (TEST_Z(LO8(eax), LO8(edx))) goto loc_001EBDBA; /* je: equal / zero */

loc_001EBDB4: ;
    MEM32(ecx + 0xC) = eax;
    edx = edx & 0xFFFFFFFEu;

loc_001EBDBA: ;
    if (TEST_Z(LO8(edx), 0x20)) goto loc_001EBDEE; /* je: equal / zero */

loc_001EBDBF: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esi + 8);
    ebx = ZX16(MEM16(ebx + 0x80));
    edi = esi + 0x418;
    eax = MEM32(edi);
    ebx = ebx ^ eax;
    ebx = ebx & 0x8000;
    eax = eax - ebx;
    eax = eax + 0x10000;
    MEM32(edi) = eax;
    MEM32(ecx + 0xC) = 0x20;
    edx = edx & 0xFFFFFFDFu;
    POP32(esp, ebx);

loc_001EBDEE: ;
    if (TEST_Z(edx, edx)) goto loc_001EBE0B; /* je: equal / zero */

loc_001EBDF2: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    MEM32(esi + 0x438) = edx;
    PUSH32(esp, 0);
    esi = esi + 0x440;
    PUSH32(esp, esi);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED260), _icall_esp); /* indirect call */
    }

loc_001EBE09: ;
    goto loc_001EBE14;

loc_001EBE0B: ;
    eax = MEM32(esi);
    MEM32(eax + 0x10) = 0x80000000u;

loc_001EBE14: ;
    SET_LO8(eax, 1);
    goto loc_001EBE1A;

loc_001EBE18: ;
    SET_LO8(eax, 0); /* xor self */

loc_001EBE1A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp += 12; return; /* ret 8 */

}

/**
 * sub_001EBE1F
 * Original: 0x001EBE1F - 0x001EBE43 (36 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBE1F(void)
{

loc_001EBE1F: ;
    eax = MEM32(ecx + 8);
    edx = MEM32(ecx + 0x418);
    ecx = ZX16(MEM16(eax + 0x80));
    eax = ecx;
    eax = eax ^ edx;
    ecx = ecx & 0x7FFF;
    eax = eax & 0x8000;
    ecx = ecx | edx;
    eax = eax + ecx;
    esp += 4; return; /* ret */

}

/**
 * sub_001EBE43
 * Original: 0x001EBE43 - 0x001EBEBF (124 bytes, 48 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBE43(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EBE43: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    esi = edx;
    MEM8(esi + 0x27) = MEM8(esi + 0x27) - 1;
    eax = MEM32(edi + 0x18);
    /* test eax, eax - flags set for next jcc */
    ebx = ecx;
    if (TEST_Z(eax, eax)) goto loc_001EBE66; /* je: equal / zero */

loc_001EBE58: ;
    ecx = ZX16(MEM16(edi + 0x20));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 1);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED25C), _icall_esp); /* indirect call */
    }

loc_001EBE66: ;
    if (TEST_Z(MEM8(edi + 0x22), 1)) goto loc_001EBEAF; /* je: equal / zero */

loc_001EBE6C: ;
    eax = MEM32(ebx + 0x42C);
    ecx = 0; /* xor self */
    if (TEST_Z(eax, eax)) goto loc_001EBEAF; /* je: equal / zero */

loc_001EBE78: ;
    if (CMP_EQ(edi, eax)) goto loc_001EBE85; /* je: equal / zero */

loc_001EBE7C: ;
    ecx = eax;
    eax = MEM32(eax + 0x24);
    if (TEST_NZ(eax, eax)) goto loc_001EBE78; /* jne: not equal / not zero */

loc_001EBE85: ;
    if (TEST_Z(eax, eax)) goto loc_001EBEAF; /* je: equal / zero */

loc_001EBE89: ;
    if (TEST_NZ(ecx, ecx)) goto loc_001EBE98; /* jne: not equal / not zero */

loc_001EBE8D: ;
    ecx = MEM32(eax + 0x24);
    MEM32(ebx + 0x42C) = ecx;
    goto loc_001EBE9E;

loc_001EBE98: ;
    edx = MEM32(eax + 0x24);
    MEM32(ecx + 0x24) = edx;

loc_001EBE9E: ;
    MEM32(eax + 0x24) = MEM32(eax + 0x24) & 0;
    MEM8(esi + 0x20) = MEM8(esi + 0x20) - 1;
    if ((MEM8(esi + 0x20) != 0)) goto loc_001EBEAF; /* jne: not equal / not zero */

loc_001EBEA7: ;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) & 0xDF;
    MEM8(esi + 1) = MEM8(esi + 1) & 0xBF;

loc_001EBEAF: ;
    MEM8(edi + 0x22) = MEM8(edi + 0x22) | 8;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EBEB9: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001EBEBF
 * Original: 0x001EBEBF - 0x001EBEF0 (49 bytes, 14 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBEBF(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBEBF: ;
    eax = ZX8(MEM8(edx + 0x11));
    eax = eax - 0;
    if ((eax == 0)) goto loc_001EBEE4; /* je: equal / zero */

loc_001EBEC8: ;
    eax--;
    eax--;
    if ((eax == 0)) goto loc_001EBED8; /* je: equal / zero */

loc_001EBECC: ;
    eax--;
    if ((eax != 0)) { g_seh_ebp = ebp; sub_001EBEF0(); return; } /* jne: not equal / not zero */

loc_001EBECF: ;
    MEM16(edx + 0x24) = MEM16(edx + 0x24) - 1;
    g_seh_ebp = ebp; sub_001ECE7D(); return; /* tail jmp 0x001ECE7D */

loc_001EBED8: ;
    MEM16(0xBF4F06) = MEM16(0xBF4F06) + 1;
    g_seh_ebp = ebp; sub_001ECED0(); return; /* tail jmp 0x001ECED0 */

loc_001EBEE4: ;
    MEM16(0xBF4F02) = MEM16(0xBF4F02) + 1;
    g_seh_ebp = ebp; sub_001ECF1D(); return; /* tail jmp 0x001ECF1D */

}

/**
 * sub_001EBEF0
 * Original: 0x001EBEF0 - 0x001EBEF1 (1 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBEF0(void)
{

loc_001EBEF0: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001EBEF1
 * Original: 0x001EBEF1 - 0x001EBF60 (111 bytes, 41 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBEF1(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EBEF1: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x10;
    eax = MEM32(edx);
    PUSH32(esp, ebx);
    ebx = MEM32(edx + 0x18);
    PUSH32(esp, esi);
    eax = eax >> 0x1C;
    /* cmp eax, 9 - flags set for next jcc */
    PUSH32(esp, edi);
    edi = MEM32(edx + 0x14);
    MEM32(ebp + -8) = ecx;
    MEM32(ebp + -16) = ebx;
    MEM8(ebp + -1) = 1;
    if (CMP_NE(eax, 9)) { g_seh_ebp = ebp; sub_001EBF60(); return; } /* jne: not equal / not zero */

loc_001EBF14: ;
    if (CMP_EQ(MEM8(ebx + 0x1D), 0)) { g_seh_ebp = ebp; sub_001EBF60(); return; } /* je: equal / zero */

loc_001EBF1A: ;
    eax = MEM32(edx + 4);
    if (TEST_Z(eax, eax)) goto loc_001EBF4F; /* je: equal / zero */

loc_001EBF21: ;
    ecx = MEM32(edx + 0xC);
    esi = 0xFFF;
    eax = eax & esi;
    ecx = ecx & esi;
    /* cmp ecx, eax - flags set for next jcc */
    MEM32(ebp + -12) = eax;
    if (CMP_L(ecx, eax)) goto loc_001EBF3F; /* jl: less (signed <) */

loc_001EBF34: ;
    eax = ZX8(MEM8(edx + 0x1D));
    eax = eax - ecx;
    eax = eax + MEM32(ebp + -12);
    goto loc_001EBF4C;

loc_001EBF3F: ;
    esi = ZX8(MEM8(edx + 0x1D));
    esi = esi - ecx;
    eax = esi + eax + -4096;

loc_001EBF4C: ;
    eax--;
    goto loc_001EBF53;

loc_001EBF4F: ;
    eax = ZX8(MEM8(edx + 0x1D));

loc_001EBF53: ;
    MEM32(ebx + 0x14) = MEM32(ebx + 0x14) + eax;
    MEM32(ebx + 4) = MEM32(ebx + 4) & 0;
    MEM8(ebp + -1) = MEM8(ebp + -1) & 0;
    g_seh_ebp = ebp; sub_001EBF79(); return; /* tail jmp 0x001EBF79 */

}

/**
 * sub_001EBF60
 * Original: 0x001EBF60 - 0x001EBF79 (25 bytes, 7 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBF60(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EBF60: ;
    if (CMP_NE(eax, 0xF)) goto loc_001EBF6C; /* jne: not equal / not zero */

loc_001EBF65: ;
    MEM32(ebx + 4) = 0xC000000Fu;

loc_001EBF6C: ;
    eax = MEM32(edx);
    eax = eax >> 0x1C;
    eax = eax | 0xC0000000u;
    MEM32(ebx + 4) = eax;

}

/**
 * sub_001EBF79
 * Original: 0x001EBF79 - 0x001EBFE5 (108 bytes, 39 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBF79(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EBF79: ;
    esi = MEM32(edi + 8);
    esi = esi & 0xFFFFFFF0u;

loc_001EBF7F: ;
    SET_LO8(ebx, MEM8(edx + 0x1C));
    PUSH32(esp, edx);
    SET_LO8(ebx, LO8(ebx) & 2);
    PUSH32(esp, 0); sub_001EB904(); /* call 0x001EB904 */

loc_001EBF8B: ;
    ecx = MEM32(ebp + -8);
    edx = edi;
    PUSH32(esp, 0); sub_001EBEBF(); /* call 0x001EBEBF */

loc_001EBF95: ;
    eax = MEM32(0xBF4EE0);
    edx = eax + esi;
    /* cmp MEM8(edx + 0x1E), 2 - flags set for next jcc */
    esi = MEM32(edx + 8);
    if (CMP_NE(MEM8(edx + 0x1E), 2)) goto loc_001EBFAC; /* jne: not equal / not zero */

loc_001EBFA6: ;
    if (CMP_EQ(MEM8(ebp + -1), 0)) goto loc_001EBFB0; /* je: equal / zero */

loc_001EBFAC: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_001EBF7F; /* je: equal / zero */

loc_001EBFB0: ;
    eax = MEM32(edx + 0x10);
    eax = eax ^ MEM32(edi + 8);
    eax = eax & 0xF;
    eax = eax ^ MEM32(edx + 0x10);
    /* test LO8(ebx), LO8(ebx) - flags set for next jcc */
    MEM32(edi + 8) = eax;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_001EBFD0; /* je: equal / zero */

loc_001EBFC3: ;
    PUSH32(esp, MEM32(ebp + -16));
    ecx = MEM32(ebp + -8);
    edx = edi;
    PUSH32(esp, 0); sub_001EBE43(); /* call 0x001EBE43 */

loc_001EBFD0: ;
    if (CMP_EQ(MEM8(edi + 0x11), 0)) goto loc_001EBFDC; /* je: equal / zero */

loc_001EBFD6: ;
    if (CMP_NE(MEM8(ebp + -1), 0)) goto loc_001EBFE0; /* jne: not equal / not zero */

loc_001EBFDC: ;
    MEM32(edi + 8) = MEM32(edi + 8) & 0xFFFFFFFEu;

loc_001EBFE0: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EBFE5
 * Original: 0x001EBFE5 - 0x001EC02C (71 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EBFE5(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EBFE5: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = edx;
    /* cmp MEM8(esi + 0x1E), 1 - flags set for next jcc */
    eax = MEM32(esi + 0x14);
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x18);
    MEM32(ebp + -4) = ecx;
    MEM32(ebp + -8) = eax;
    if (CMP_NE(MEM8(esi + 0x1E), 1)) goto loc_001EC01A; /* jne: not equal / not zero */

loc_001EC000: ;
    eax = MEM32(esi + 0xC);
    ecx = MEM32(0xBF4EE0);
    eax = eax + ecx + -7;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001EB904(); /* call 0x001EB904 */

loc_001EC013: ;
    MEM16(0xBF4F02) = MEM16(0xBF4F02) + 1;

loc_001EC01A: ;
    if (TEST_Z(MEM8(esi + 3), 0xF0)) { g_seh_ebp = ebp; sub_001EC02C(); return; } /* je: equal / zero */

loc_001EC020: ;
    ecx = MEM32(ebp + -4);
    edx = esi;
    PUSH32(esp, 0); sub_001EBEF1(); /* call 0x001EBEF1 */

loc_001EC02A: ;
    g_seh_ebp = ebp; sub_001EC08D(); return; /* tail jmp 0x001EC08D */

}

/**
 * sub_001EC02C
 * Original: 0x001EC02C - 0x001EC08D (97 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC02C(void)
{
    int _rccf = 0; /* DOA3: deferred condition evaluated at the compare */
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC02C: ;
    eax = MEM32(esi + 4);
    /* test eax, eax - flags set for next jcc */
    PUSH32(esp, ebx);
    if (TEST_Z(eax, eax)) goto loc_001EC05A; /* je: equal / zero */

loc_001EC034: ;
    ecx = MEM32(esi + 0xC);
    edx = 0xFFF;
    eax = eax & edx;
    ebx = eax;
    eax = ZX8(MEM8(esi + 0x1D));
    ecx = ecx & edx;
    eax = eax - ecx;
    if (CMP_L(ecx, ebx)) goto loc_001EC050; /* jl: less (signed <) */

loc_001EC04C: ;
    eax = eax + ebx;
    goto loc_001EC057;

loc_001EC050: ;
    eax = eax + ebx + -4096;

loc_001EC057: ;
    eax--;
    goto loc_001EC05E;

loc_001EC05A: ;
    eax = ZX8(MEM8(esi + 0x1D));

loc_001EC05E: ;
    MEM32(edi + 0x14) = MEM32(edi + 0x14) + eax;
    SET_LO8(ebx, MEM8(esi + 0x1C));
    PUSH32(esp, esi);
    SET_LO8(ebx, LO8(ebx) & 2);
    PUSH32(esp, 0); sub_001EB904(); /* call 0x001EB904 */

loc_001EC06D: ;
    edx = MEM32(ebp + -8);
    ecx = MEM32(ebp + -4);
    PUSH32(esp, 0); sub_001EBEBF(); /* call 0x001EBEBF */

loc_001EC078: ;
    /* test LO8(ebx), LO8(ebx) - flags set for next jcc */
    _rccf = (TEST_Z(LO8(ebx), LO8(ebx)));  /* DOA3: x86 latched these flags at the compare above and the branch below reads them, but an operand is overwritten in between -- evaluate the condition where the guest does. */
    POP32(esp, ebx);
    if (_rccf) { g_seh_ebp = ebp; sub_001EC08D(); return; } /* je: equal / zero */

loc_001EC07D: ;
    edx = MEM32(ebp + -8);
    ecx = MEM32(ebp + -4);
    MEM32(edi + 4) = MEM32(edi + 4) & 0;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001EBE43(); /* call 0x001EBE43 */

}

/**
 * sub_001EC08D
 * Original: 0x001EC08D - 0x001EC091 (4 bytes, 4 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC08D(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC08D: ;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC091
 * Original: 0x001EC091 - 0x001EC193 (258 bytes, 87 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC091(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC091: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x18;
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    edi = edx;
    ebx = ecx;
    edx = 0; /* xor self */
    /* cmp MEM32(ebx + 0x42C), edx - flags set for next jcc */
    MEM32(ebp + -20) = edi;
    MEM32(ebp + -8) = ebx;
    MEM32(ebp + -4) = edx;
    if (CMP_EQ(MEM32(ebx + 0x42C), edx)) goto loc_001EC182; /* je: equal / zero */

loc_001EC0B4: ;
    PUSH32(esp, esi);
    goto loc_001EC0BA;

loc_001EC0B7: ;
    edi = MEM32(ebp + -20);

loc_001EC0BA: ;
    ecx = MEM32(ebx + 0x42C);
    eax = MEM32(ecx + 0x24);
    MEM32(ebx + 0x42C) = eax;
    esi = MEM32(ecx + 0x10);
    if (CMP_AE(edi, MEM32(esi + 0x1C))) goto loc_001EC0DC; /* jae: above or equal (unsigned >=) */

loc_001EC0D1: ;
    MEM32(ecx + 0x24) = edx;
    MEM32(ebp + -4) = ecx;
    goto loc_001EC171;

loc_001EC0DC: ;
    SET_LO8(eax, MEM8(esi + 0x10));
    if (TEST_Z(LO8(eax), 0x40)) goto loc_001EC0EE; /* je: equal / zero */

loc_001EC0E3: ;
    edi++;
    SET_LO8(eax, LO8(eax) & 0xBF);
    MEM32(esi + 0x1C) = edi;
    MEM8(esi + 0x10) = LO8(eax);
    goto loc_001EC0D1;

loc_001EC0EE: ;
    eax = MEM32(esi + 8);
    edi = MEM32(0xBF4EE0);
    MEM32(ebp + -12) = MEM32(ebp + -12) & 0;
    MEM32(ebp + -24) = eax;
    eax = eax & 0xFFFFFFF0u;
    edx = edi + eax;
    /* cmp ecx, MEM32(edx + 0x18) - flags set for next jcc */
    MEM32(ebp + -16) = eax;
    if (CMP_EQ(ecx, MEM32(edx + 0x18))) goto loc_001EC124; /* je: equal / zero */

loc_001EC10C: ;
    ebx = MEM32(esi + 4);

loc_001EC10F: ;
    if (CMP_EQ(eax, ebx)) goto loc_001EC121; /* je: equal / zero */

loc_001EC113: ;
    MEM32(ebp + -12) = eax;
    eax = MEM32(edx + 8);
    edx = edi + eax;
    if (CMP_NE(ecx, MEM32(edx + 0x18))) goto loc_001EC10F; /* jne: not equal / not zero */

loc_001EC121: ;
    ebx = MEM32(ebp + -8);

loc_001EC124: ;
    eax = MEM32(edx + 8);
    eax = eax ^ MEM32(ebp + -24);
    ecx = ebx;
    eax = eax & 0xF;
    eax = eax ^ MEM32(edx + 8);
    MEM32(esi + 8) = eax;
    MEM8(edx + 3) = MEM8(edx + 3) | 0xF0;
    PUSH32(esp, 0); sub_001EBFE5(); /* call 0x001EBFE5 */

loc_001EC13E: ;
    eax = MEM32(ebp + -12);
    if (TEST_Z(eax, eax)) goto loc_001EC164; /* je: equal / zero */

loc_001EC145: ;
    ecx = MEM32(esi + 8);
    edx = MEM32(0xBF4EE0);
    ecx = ecx & 0xFFFFFFF0u;
    MEM32(edx + eax + 8) = ecx;
    eax = MEM32(esi + 8);
    eax = eax ^ MEM32(ebp + -16);
    eax = eax & 0xF;
    eax = eax ^ MEM32(ebp + -16);
    MEM32(esi + 8) = eax;

loc_001EC164: ;
    MEM8(esi + 0x20) = MEM8(esi + 0x20) - 1;
    if ((MEM8(esi + 0x20) != 0)) goto loc_001EC171; /* jne: not equal / not zero */

loc_001EC169: ;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) & 0xDF;
    MEM8(esi + 1) = MEM8(esi + 1) & 0xBF;

loc_001EC171: ;
    /* cmp MEM32(ebx + 0x42C), 0 - flags set for next jcc */
    edx = MEM32(ebp + -4);
    if (CMP_NE(MEM32(ebx + 0x42C), 0)) goto loc_001EC0B7; /* jne: not equal / not zero */

loc_001EC181: ;
    POP32(esp, esi);

loc_001EC182: ;
    eax = 0; /* xor self */
    /* test edx, edx - flags set for next jcc */
    POP32(esp, edi);
    MEM32(ebx + 0x42C) = edx;
    SET_LO8(eax, (TEST_NZ(edx, edx)) ? 1 : 0); /* setne */
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC193
 * Original: 0x001EC193 - 0x001EC1E9 (86 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC193(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EC193: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    esi = edx;
    edi = ecx;
    SET_LO8(ebx, 0); /* xor self */

loc_001EC19C: ;
    eax = MEM32(esi + 8);
    ecx = eax;
    ecx = ecx & 0xFFFFFFF0u;
    if ((ecx == 0)) goto loc_001EC1E5; /* je: equal / zero */

loc_001EC1A6: ;
    edx = MEM32(0xBF4EE0);
    edx = edx + ecx;
    if (CMP_EQ(ecx, MEM32(esi + 4))) goto loc_001EC1CF; /* je: equal / zero */

loc_001EC1B3: ;
    eax = MEM32(edx + 8);
    MEM8(edx + 3) = MEM8(edx + 3) | 0xF0;
    eax = eax ^ MEM32(esi + 8);
    ecx = edi;
    eax = eax & 0xF;
    eax = eax ^ MEM32(edx + 8);
    MEM32(esi + 8) = eax;
    PUSH32(esp, 0); sub_001EBFE5(); /* call 0x001EBFE5 */

loc_001EC1CD: ;
    goto loc_001EC1E1;

loc_001EC1CF: ;
    MEM32(esi + 4) = MEM32(esi + 4) & 0;
    eax = eax & 0xF;
    PUSH32(esp, edx);
    MEM32(esi + 8) = eax;
    PUSH32(esp, 0); sub_001EB904(); /* call 0x001EB904 */

loc_001EC1DF: ;
    SET_LO8(ebx, 1);

loc_001EC1E1: ;
    if (TEST_Z(LO8(ebx), LO8(ebx))) goto loc_001EC19C; /* je: equal / zero */

loc_001EC1E5: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EC1E9
 * Original: 0x001EC1E9 - 0x001EC270 (135 bytes, 50 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC1E9(void)
{
    int _rcc = 0; /* DOA3: deferred condition evaluated at the compare */
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC1E9: ;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    ebx = ecx;
    ebp = 0; /* xor self */
    /* cmp MEM32(ebx + 0x430), ebp - flags set for next jcc */
    MEM32(esp + 8) = edx;
    if (CMP_EQ(MEM32(ebx + 0x430), ebp)) goto loc_001EC25F; /* je: equal / zero */

loc_001EC1FC: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);

loc_001EC1FE: ;
    edi = MEM32(ebx + 0x430);
    eax = MEM32(edi + 0x24);
    MEM32(ebx + 0x430) = eax;
    esi = MEM32(edi + 0x10);
    if (CMP_AE(edx, MEM32(esi + 0x1C))) goto loc_001EC21C; /* jae: above or equal (unsigned >=) */

loc_001EC215: ;
    MEM32(edi + 0x14) = ebp;
    ebp = edi;
    goto loc_001EC254;

loc_001EC21C: ;
    SET_LO8(eax, MEM8(esi + 0x10));
    if (TEST_Z(LO8(eax), 0x40)) goto loc_001EC230; /* je: equal / zero */

loc_001EC223: ;
    ecx = edx + 1;
    SET_LO8(eax, LO8(eax) & 0xBF);
    MEM32(esi + 0x1C) = ecx;
    MEM8(esi + 0x10) = LO8(eax);
    goto loc_001EC215;

loc_001EC230: ;
    edx = esi;
    ecx = ebx;
    PUSH32(esp, 0); sub_001EC193(); /* call 0x001EC193 */

loc_001EC239: ;
    MEM8(esi + 0x20) = MEM8(esi + 0x20) - 1;
    if ((MEM8(esi + 0x20) != 0)) goto loc_001EC246; /* jne: not equal / not zero */

loc_001EC23E: ;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) & 0xDF;
    MEM8(esi + 1) = MEM8(esi + 1) & 0xBF;

loc_001EC246: ;
    MEM32(edi + 4) = MEM32(edi + 4) & 0;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC250: ;
    edx = MEM32(esp + 0x10);

loc_001EC254: ;
    if (CMP_NE(MEM32(ebx + 0x430), 0)) goto loc_001EC1FE; /* jne: not equal / not zero */

loc_001EC25D: ;
    POP32(esp, edi);
    POP32(esp, esi);

loc_001EC25F: ;
    eax = 0; /* xor self */
    MEM32(ebx + 0x430) = ebp;
    /* test ebp, ebp - flags set for next jcc */
    _rcc = (TEST_NZ(ebp, ebp));  /* DOA3: x86 latched these flags at the compare above and the branch below reads them, but an operand is overwritten in between -- evaluate the condition where the guest does. */
    POP32(esp, ebp);
    SET_LO8(eax, (_rcc) ? 1 : 0); /* setne */
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EC270
 * Original: 0x001EC270 - 0x001EC34A (218 bytes, 75 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC270(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC270: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0xC;
    PUSH32(esp, ebx);
    ebx = ecx;
    ecx = 0; /* xor self */
    /* cmp MEM32(ebx + 0x434), ecx - flags set for next jcc */
    MEM32(ebp + -8) = edx;
    MEM32(ebp + -4) = ecx;
    if (CMP_EQ(MEM32(ebx + 0x434), ecx)) goto loc_001EC33A; /* je: equal / zero */

loc_001EC28D: ;
    PUSH32(esp, esi);
    PUSH32(esp, edi);

loc_001EC28F: ;
    esi = MEM32(ebx + 0x434);
    eax = MEM32(esi + 0x14);
    MEM32(ebx + 0x434) = eax;
    edi = MEM32(esi + 0x10);
    eax = MEM32(ebp + -8);
    if (CMP_AE(eax, MEM32(edi + 0x1C))) goto loc_001EC2B1; /* jae: above or equal (unsigned >=) */

loc_001EC2A9: ;
    MEM32(esi + 0x14) = ecx;
    MEM32(ebp + -4) = esi;
    goto loc_001EC328;

loc_001EC2B1: ;
    SET_LO8(eax, MEM8(edi + 0x10));
    if (TEST_Z(LO8(eax), 0x40)) goto loc_001EC2BF; /* je: equal / zero */

loc_001EC2B8: ;
    SET_LO8(eax, LO8(eax) & 0xBF);
    MEM8(edi + 0x10) = LO8(eax);
    goto loc_001EC2A9;

loc_001EC2BF: ;
    /* cmp MEM8(esi + 1), 0x4A - flags set for next jcc */
    ecx = ebx;
    if (CMP_NE(MEM8(esi + 1), 0x4A)) goto loc_001EC2D0; /* jne: not equal / not zero */

loc_001EC2C7: ;
    edx = esi;
    PUSH32(esp, 0); sub_001EC65B(); /* call 0x001EC65B */

loc_001EC2CE: ;
    goto loc_001EC328;

loc_001EC2D0: ;
    edx = edi;
    PUSH32(esp, 0); sub_001EC193(); /* call 0x001EC193 */

loc_001EC2D7: ;
    edx = MEM32(esi + 0x18);
    if (TEST_Z(edx, edx)) goto loc_001EC310; /* je: equal / zero */

loc_001EC2DE: ;
    ecx = MEM32(edi);
    MEM32(ebp + -12) = ecx;
    ecx = ecx >> 7;
    eax = 0; /* xor self */
    ecx = ecx & 0xF;
    eax++;
    eax = eax << LO8(ecx);
    ecx = MEM32(ebp + -12);
    ecx = ecx & 0x1800;
    if (CMP_NE(ecx, 0x1000)) goto loc_001EC302; /* jne: not equal / not zero */

loc_001EC2FF: ;
    eax = eax << 0x10;

loc_001EC302: ;
    if (TEST_Z(MEM8(edi + 8), 2)) goto loc_001EC30C; /* je: equal / zero */

loc_001EC308: ;
    MEM32(edx) = MEM32(edx) | eax;
    goto loc_001EC310;

loc_001EC30C: ;
    eax = ~eax;
    MEM32(edx) = MEM32(edx) & eax;

loc_001EC310: ;
    eax = MEM32(0xBF4EE8);
    MEM32(edi + 0x18) = eax;
    MEM32(0xBF4EE8) = edi;
    MEM32(esi + 4) = MEM32(esi + 4) & 0;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC328: ;
    /* cmp MEM32(ebx + 0x434), 0 - flags set for next jcc */
    ecx = MEM32(ebp + -4);
    if (CMP_NE(MEM32(ebx + 0x434), 0)) goto loc_001EC28F; /* jne: not equal / not zero */

loc_001EC338: ;
    POP32(esp, edi);
    POP32(esp, esi);

loc_001EC33A: ;
    eax = 0; /* xor self */
    /* test ecx, ecx - flags set for next jcc */
    MEM32(ebx + 0x434) = ecx;
    SET_LO8(eax, (TEST_NZ(ecx, ecx)) ? 1 : 0); /* setne */
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC34A
 * Original: 0x001EC34A - 0x001EC458 (270 bytes, 94 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC34A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC34A: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = MEM32(ebp + 0xC);
    MEM8(ebp + 0xF) = MEM8(ebp + 0xF) & 0;
    ebx = MEM32(esi);
    eax = esi + 0x438;
    ecx = MEM32(eax);
    PUSH32(esp, edi);
    edi = 0; /* xor self */
    MEM32(eax) = MEM32(eax) & edi;
    /* test LO8(ecx), 2 - flags set for next jcc */
    MEM32(ebp + -4) = ecx;
    if (TEST_Z(LO8(ecx), 2)) goto loc_001EC3C6; /* je: equal / zero */

loc_001EC36F: ;
    ecx = MEM32(esi + 8);
    ecx = ecx + 0x84;
    eax = MEM32(ecx);
    eax = eax & 0xFFFFFFF0u;
    MEM32(ecx) = edi;
    if ((eax == 0)) goto loc_001EC3B2; /* je: equal / zero */

loc_001EC381: ;
    ecx = MEM32(0xBF4EE0);
    ecx = ecx + eax;
    eax = MEM32(ecx + 8);
    /* test eax, eax - flags set for next jcc */
    MEM32(ecx + 8) = edi;
    edi = ecx;
    if (TEST_NZ(eax, eax)) goto loc_001EC381; /* jne: not equal / not zero */

loc_001EC395: ;
    edx = edi;
    /* test MEM8(edx + 2), 1 - flags set for next jcc */
    edi = MEM32(edi + 8);
    ecx = esi;
    if (TEST_Z(MEM8(edx + 2), 1)) goto loc_001EC3A9; /* je: equal / zero */

loc_001EC3A2: ;
    PUSH32(esp, 0); sub_001EC9C4(); /* call 0x001EC9C4 */

loc_001EC3A7: ;
    goto loc_001EC3AE;

loc_001EC3A9: ;
    PUSH32(esp, 0); sub_001EBFE5(); /* call 0x001EBFE5 */

loc_001EC3AE: ;
    if (TEST_NZ(edi, edi)) goto loc_001EC395; /* jne: not equal / not zero */

loc_001EC3B2: ;
    MEM32(ebp + -4) = MEM32(ebp + -4) & 0xFFFFFFFDu;
    MEM32(ebx + 0xC) = 2;
    eax = MEM32(esi);
    MEM32(eax + 8) = 6;

loc_001EC3C6: ;
    /* test MEM8(ebp + -4), 4 - flags set for next jcc */
    PUSH32(esp, 4);
    POP32(esp, edi);
    if (TEST_Z(MEM8(ebp + -4), 4)) goto loc_001EC3D9; /* je: equal / zero */

loc_001EC3CF: ;
    MEM32(ebp + -4) = MEM32(ebp + -4) & 0xFFFFFFFBu;
    MEM32(ebx + 0xC) = edi;
    MEM32(ebx + 0x14) = edi;

loc_001EC3D9: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EC3E0: ;
    edx = eax;
    ecx = esi;
    MEM32(ebp + -8) = edx;
    PUSH32(esp, 0); sub_001EC091(); /* call 0x001EC091 */

loc_001EC3EC: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EC3F4; /* je: equal / zero */

loc_001EC3F0: ;
    MEM8(ebp + 0xF) = 1;

loc_001EC3F4: ;
    edx = MEM32(ebp + -8);
    ecx = esi;
    PUSH32(esp, 0); sub_001EC1E9(); /* call 0x001EC1E9 */

loc_001EC3FE: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EC406; /* je: equal / zero */

loc_001EC402: ;
    MEM8(ebp + 0xF) = 1;

loc_001EC406: ;
    edx = MEM32(ebp + -8);
    ecx = esi;
    PUSH32(esp, 0); sub_001EC270(); /* call 0x001EC270 */

loc_001EC410: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EC418; /* je: equal / zero */

loc_001EC414: ;
    MEM8(ebp + 0xF) = 1;

loc_001EC418: ;
    if (CMP_EQ(MEM8(ebp + 0xF), 0)) goto loc_001EC428; /* je: equal / zero */

loc_001EC41E: ;
    eax = MEM32(esi);
    MEM32(eax + 0xC) = edi;
    eax = MEM32(esi);
    MEM32(eax + 0x10) = edi;

loc_001EC428: ;
    if (TEST_Z(MEM8(ebp + -4), 0x40)) goto loc_001EC440; /* je: equal / zero */

loc_001EC42E: ;
    ecx = esi;
    PUSH32(esp, 0); sub_001EB845(); /* call 0x001EB845 */

loc_001EC435: ;
    MEM32(ebp + -4) = MEM32(ebp + -4) & 0xFFFFFFBFu;
    MEM32(ebx + 0xC) = 0x40;

loc_001EC440: ;
    eax = MEM32(ebp + -4);
    if (TEST_Z(eax, eax)) goto loc_001EC44A; /* je: equal / zero */

loc_001EC447: ;
    MEM32(ebx + 0xC) = eax;

loc_001EC44A: ;
    POP32(esp, edi);
    POP32(esp, esi);
    MEM32(ebx + 0x10) = 0x80000000u;
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 20; return; /* ret 16 */

}

/**
 * sub_001EC458
 * Original: 0x001EC458 - 0x001EC46A (18 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC458(void)
{
    int _flags = 0; /* fallback flag var */

loc_001EC458: ;
    eax = MEM32(0xBF4F08);
    if (TEST_Z(eax, eax)) goto loc_001EC469; /* je: equal / zero */

loc_001EC461: ;
    ecx = MEM32(eax);
    MEM32(0xBF4F08) = ecx;

loc_001EC469: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001EC46A
 * Original: 0x001EC46A - 0x001EC497 (45 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC46A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC46A: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x14;
    eax = MEM32(0xBF4F0C);
    PUSH32(esp, ebx);
    PUSH32(esp, edi);
    ebx = edx;
    MEM32(ebp + -20) = ecx;
    MEM32(ebp + -8) = eax;
    PUSH32(esp, 0); sub_001EC458(); /* call 0x001EC458 */

loc_001EC484: ;
    edi = eax;
    /* test edi, edi - flags set for next jcc */
    MEM32(ebp + -12) = edi;
    if (TEST_NZ(edi, edi)) { g_seh_ebp = ebp; sub_001EC497(); return; } /* jne: not equal / not zero */

loc_001EC48D: ;
    edi = 0x80000100u;
    g_seh_ebp = ebp; sub_001EC60E(); return; /* tail jmp 0x001EC60E */

}

/**
 * sub_001EC497
 * Original: 0x001EC497 - 0x001EC60E (375 bytes, 126 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC497(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC497: ;
    PUSH32(esp, esi);
    esi = MEM32(ebp + -8);
    esi = esi << 6;
    eax = 0; /* xor self */
    ecx = esi + 0x30;
    edx = ecx;
    ecx = ecx >> 2;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */
    ecx = edx;
    ecx = ecx & 3;
    memset((void*)XBOX_PTR(edi), (uint8_t)eax, ecx);
    edi += ecx; ecx = 0; /* rep stosb */
    eax = MEM32(ebp + -12);
    esi = esi + eax;
    MEM32(esi + 0x2C) = eax;
    eax = esi;
    eax = eax - MEM32(0xBF4EE0);
    MEM8(esi + 0x11) = 1;
    MEM32(esi + 0x14) = eax;
    eax = 0; /* xor self */
    MEM8(esi + 0x13) = 1;
    SET_LO16(eax, MEM16(ebx + 0x16));
    PUSH32(esp, 0);
    PUSH32(esp, 1);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001E7F8E(); /* call 0x001E7F8E */

loc_001EC4DC: ;
    edx = MEM32(ebp + -8);
    MEM16(esi + 0x22) = LO16(eax);
    MEM8(esi + 0x24) = LO8(edx);
    SET_LO8(eax, MEM8(ebx + 0x18));
    SET_LO8(eax, LO8(eax) & 1);
    MEM8(esi + 0x10) = LO8(eax);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 0x14));
    PUSH32(esp, 0);
    eax = eax ^ MEM32(esi);
    eax = eax & 0x7F;
    MEM32(esi) = MEM32(esi) ^ eax;
    eax = ZX8(MEM8(ebx + 0x15));
    ecx = MEM32(esi);
    eax = eax << 7;
    eax = eax ^ ecx;
    eax = eax & 0x780;
    eax = eax ^ ecx;
    MEM32(esi) = eax;
    /* test MEM8(ebx + 0x15), 0x80 - flags set for next jcc */
    POP32(esp, ecx);
    SET_LO8(ecx, (TEST_NZ(MEM8(ebx + 0x15), 0x80)) ? 1 : 0); /* setne */
    eax = eax & 0xFFFFC7FFu;
    ecx++;
    ecx = ecx & 3;
    ecx = ecx | 0x18;
    ecx = ecx << 0xB;
    ecx = ecx | eax;
    MEM32(esi) = ecx;
    eax = ZX16(MEM16(ebx + 0x16));
    eax = eax << 0x10;
    eax = eax ^ ecx;
    eax = eax & 0x7FF0000;
    eax = eax ^ ecx;
    ecx = MEM32(esi + 8);
    MEM32(esi) = eax;
    eax = MEM32(esi + 0x2C);
    eax = eax - MEM32(0xBF4EE0);
    ecx = ecx ^ eax;
    ecx = ecx & 0xF;
    ecx = ecx ^ eax;
    MEM32(esi + 8) = ecx;
    SET_LO8(ecx, 0); /* xor self */
    /* test edx, edx - flags set for next jcc */
    MEM32(esi + 4) = eax;
    MEM8(ebp + -1) = LO8(ecx);
    if (CMP_BE(edx & edx, 0)) goto loc_001EC5BC; /* jbe: below or equal (unsigned <=) */

loc_001EC55F: ;
    eax = 0; /* xor self */

loc_001EC561: ;
    edx = MEM32(esi + 0x2C);
    eax = eax << 6;
    edi = eax + edx;
    MEM32(ebp + -16) = edi;
    edi = edi - MEM32(0xBF4EE0);
    edx = MEM32(ebp + -16);
    edi = edi + 0x40;
    SET_LO8(ecx, LO8(ecx) - 1);
    MEM8(edx + 0x2D) = LO8(ecx);
    edx = MEM32(esi + 0x2C);
    SET_LO8(ecx, MEM8(ebp + -1));
    MEM8(eax + edx + 0x2C) = LO8(ecx);
    edx = MEM32(esi + 0x2C);
    MEM32(eax + edx + 0x20) = esi;
    edx = MEM32(esi + 0x2C);
    MEM32(eax + edx + 0x28) = MEM32(eax + edx + 0x28) & 0;
    edx = MEM32(esi + 0x2C);
    MEM32(eax + edx + 0x24) = MEM32(eax + edx + 0x24) & 0;
    edx = MEM32(esi + 0x2C);
    edx = edx + eax;
    MEM8(edx + 2) = MEM8(edx + 2) | 1;
    edx = MEM32(esi + 0x2C);
    SET_LO8(ecx, LO8(ecx) + 1);
    MEM32(eax + edx + 8) = edi;
    eax = ZX8(LO8(ecx));
    /* cmp eax, MEM32(ebp + -8) - flags set for next jcc */
    MEM8(ebp + -1) = LO8(ecx);
    if (CMP_B(eax, MEM32(ebp + -8))) goto loc_001EC561; /* jb: below (unsigned <) */

loc_001EC5BC: ;
    edx = MEM32(esi + 0x2C);
    eax = ZX8(LO8(ecx));
    eax = eax << 6;
    MEM32(eax + edx + -56) = MEM32(eax + edx + -56) & 0;
    eax = MEM32(esi + 0x2C);
    SET_LO8(ecx, LO8(ecx) - 1);
    MEM8(eax + 0x2D) = LO8(ecx);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EC5D8: ;
    ecx = MEM32(ebp + -20);
    edx = esi;
    MEM8(ebp + -1) = LO8(eax);
    PUSH32(esp, 0); sub_001EBA3B(); /* call 0x001EBA3B */

loc_001EC5E5: ;
    SET_LO8(ecx, MEM8(ebp + -1));
    edi = eax;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC5F0: ;
    if (TEST_S(edi, edi)) goto loc_001EC5F9; /* jl: less (signed <) */

loc_001EC5F4: ;
    MEM32(ebx + 0x10) = esi;
    goto loc_001EC60D;

loc_001EC5F9: ;
    MEM32(ebx + 0x10) = MEM32(ebx + 0x10) & 0;
    ecx = MEM32(0xBF4F08);
    eax = MEM32(ebp + -12);
    MEM32(eax) = ecx;
    MEM32(0xBF4F08) = eax;

loc_001EC60D: ;
    POP32(esp, esi);

}

/**
 * sub_001EC60E
 * Original: 0x001EC60E - 0x001EC617 (9 bytes, 6 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC60E(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC60E: ;
    MEM32(ebx + 4) = edi;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC617
 * Original: 0x001EC617 - 0x001EC65B (68 bytes, 27 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC617(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC617: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    esi = edx;
    ebp = MEM32(esi + 0x10);
    PUSH32(esp, edi);
    edi = ecx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EC628: ;
    edx = ebp;
    ecx = edi;
    SET_LO8(ebx, LO8(eax));
    PUSH32(esp, 0); sub_001EA857(); /* call 0x001EA857 */

loc_001EC633: ;
    edx = ebp;
    ecx = edi;
    PUSH32(esp, 0); sub_001EBC17(); /* call 0x001EBC17 */

loc_001EC63C: ;
    eax = edi + 0x434;
    ecx = MEM32(eax);
    MEM32(esi + 0x14) = ecx;
    SET_LO8(ecx, LO8(ebx));
    MEM32(eax) = esi;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC651: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebp);
    eax = 0x40000000;
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EC65B
 * Original: 0x001EC65B - 0x001EC6E4 (137 bytes, 52 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC65B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC65B: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    ebp = edx;
    PUSH32(esp, esi);
    esi = MEM32(ebp + 0x10);
    SET_LO8(eax, MEM8(esi + 0x25));
    ebx = ZX8(MEM8(esi + 0x26));
    ecx = ZX8(LO8(eax));
    ebx = ebx - ecx;
    ecx = ZX8(MEM8(esi + 0x24));
    ebx = ebx + ecx;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001EC6BD; /* je: equal / zero */

loc_001EC679: ;
    PUSH32(esp, edi);

loc_001EC67A: ;
    ecx = ZX8(MEM8(esi + 0x24));
    eax = ebx;
    edx = 0; /* xor self */
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)ecx);
      edx = (uint32_t)(_dividend % (uint32_t)ecx); }
    MEM8(esi + 0x25) = MEM8(esi + 0x25) - 1;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 1);
    ebx = edx;
    edi = ebx;
    edi = edi << 6;
    edi = edi + MEM32(esi + 0x2C);
    ebx++;
    PUSH32(esp, MEM32(edi + 4));
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED264), _icall_esp); /* indirect call */
    }

loc_001EC69D: ;
    eax = MEM32(edi + 0xC);
    ecx = MEM32(edi + 4);
    ecx = ecx ^ eax;
    if (TEST_Z(ecx, 0xFFFFF000u)) goto loc_001EC6B6; /* je: equal / zero */

loc_001EC6AD: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 1);
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED264), _icall_esp); /* indirect call */
    }

loc_001EC6B6: ;
    if (CMP_NE(MEM8(esi + 0x25), 0)) goto loc_001EC67A; /* jne: not equal / not zero */

loc_001EC6BC: ;
    POP32(esp, edi);

loc_001EC6BD: ;
    eax = ZX8(MEM8(esi + 0x24));
    MEM8(esi + 0x25) = MEM8(esi + 0x25) - 1;
    eax = eax << 6;
    esi = esi - eax;
    eax = MEM32(0xBF4F08);
    MEM32(esi) = eax;
    MEM32(0xBF4F08) = esi;
    MEM32(ebp + 4) = MEM32(ebp + 4) & 0;
    PUSH32(esp, ebp);
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC6E0: ;
    POP32(esp, esi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EC6E4
 * Original: 0x001EC6E4 - 0x001EC71B (55 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC6E4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC6E4: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x24;
    MEM32(ebp + -20) = MEM32(ebp + -20) & 0;
    PUSH32(esp, esi);
    esi = edx;
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x10);
    MEM32(ebp + -16) = esi;
    MEM32(ebp + -36) = ecx;
    MEM32(ebp + -32) = edi;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EC704: ;
    SET_LO8(ecx, MEM8(edi + 0x24));
    /* cmp LO8(ecx), MEM8(edi + 0x25) - flags set for next jcc */
    MEM8(ebp + -1) = LO8(eax);
    if (CMP_NE(LO8(ecx), MEM8(edi + 0x25))) { g_seh_ebp = ebp; sub_001EC71B(); return; } /* jne: not equal / not zero */

loc_001EC70F: ;
    MEM32(ebp + -20) = 0xC0000D00u;
    g_seh_ebp = ebp; sub_001EC830(); return; /* tail jmp 0x001EC830 */

}

/**
 * sub_001EC71B
 * Original: 0x001EC71B - 0x001EC830 (277 bytes, 101 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC71B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC71B: ;
    eax = ZX8(MEM8(edi + 0x26));
    PUSH32(esp, ebx);
    ebx = eax;
    ebx = ebx << 6;
    ebx = ebx + MEM32(edi + 0x2C);
    eax++;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    ecx = ZX8(LO8(ecx));
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    esi = MEM32(esi + 0x18);
    MEM32(ebp + -12) = MEM32(ebp + -12) & 0;
    MEM32(ebp + -28) = esi;
    MEM8(edi + 0x26) = LO8(edx);
    eax = MEM32(esi + 0x18);
    MEM32(ebx + 0x24) = eax;
    eax = MEM32(esi + 0x1C);
    MEM32(ebx + 0x28) = eax;
    eax = MEM32(ebp + -16);
    MEM32(ebx + 0x20) = edi;
    eax = ZX8(MEM8(eax + 0x14));
    eax = eax << 0x15;
    eax = eax ^ MEM32(ebx);
    eax = eax & 0xE00000;
    MEM32(ebx) = MEM32(ebx) ^ eax;
    ecx = MEM32(esi);
    eax = MEM32(ebx);
    ecx--;
    ecx = ecx << 0x18;
    ecx = ecx ^ eax;
    ecx = ecx & 0x7000000;
    ecx = ecx ^ eax;
    MEM32(ebx) = ecx;
    eax = MEM32(esi + 4);
    eax = eax & 0xFFF;
    /* cmp MEM32(esi), 0 - flags set for next jcc */
    MEM32(ebp + -24) = eax;
    if (CMP_BE(MEM32(esi), 0)) goto loc_001EC7AD; /* jbe: below or equal (unsigned <=) */

loc_001EC782: ;
    ecx = esi + 8;
    MEM32(ebp + -8) = ecx;
    ecx = ebx + 0x10;

loc_001EC78B: ;
    edx = eax;
    SET_LO16(edx, LO16(edx) | 0xE000);
    MEM16(ecx) = LO16(edx);
    edx = MEM32(ebp + -8);
    edx = ZX16(MEM16(edx));
    MEM32(ebp + -8) = MEM32(ebp + -8) + 2;
    eax = eax + edx;
    MEM32(ebp + -12) = MEM32(ebp + -12) + 1;
    edx = MEM32(ebp + -12);
    ecx++;
    ecx++;
    if (CMP_B(edx, MEM32(esi))) goto loc_001EC78B; /* jb: below (unsigned <) */

loc_001EC7AD: ;
    eax = eax - MEM32(ebp + -24);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, eax);
    PUSH32(esp, MEM32(esi + 4));
    MEM32(ebp + -24) = eax;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED25C), _icall_esp); /* indirect call */
    }

loc_001EC7BF: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, MEM32(esi + 4));
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED258), _icall_esp); /* indirect call */
    }

loc_001EC7C8: ;
    ecx = MEM32(ebp + -24);
    MEM32(ebx + 4) = eax;
    eax = MEM32(esi + 4);
    eax = eax + ecx + -1;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED258), _icall_esp); /* indirect call */
    }

loc_001EC7DC: ;
    MEM32(ebx + 0xC) = eax;
    if (TEST_Z(MEM8(edi + 0x10), 1)) goto loc_001EC7F5; /* je: equal / zero */

loc_001EC7E5: ;
    esi = ebx + 0x10;
    edi = ebx + 0x30;
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    esi = MEM32(ebp + -28);
    edi = MEM32(ebp + -32);

loc_001EC7F5: ;
    if (TEST_Z(MEM8(edi + 0x10), 2)) goto loc_001EC81B; /* je: equal / zero */

loc_001EC7FB: ;
    ecx = MEM32(ebp + -36);
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EC803: ;
    ecx = MEM32(edi + 0x28);
    eax++;
    edx = ecx;
    edx = edx - eax;
    if (CMP_LE(edx & edx, 0)) goto loc_001EC811; /* jle: less or equal (signed <=) */

loc_001EC80F: ;
    eax = ecx;

loc_001EC811: ;
    MEM16(ebx) = LO16(eax);
    ecx = MEM32(esi);
    ecx = ecx + eax;
    MEM32(edi + 0x28) = ecx;

loc_001EC81B: ;
    MEM8(edi + 0x25) = MEM8(edi + 0x25) + 1;
    SET_LO8(eax, MEM8(edi + 0x25));
    /* cmp LO8(eax), MEM8(edi + 0x24) - flags set for next jcc */
    esi = MEM32(ebp + -16);
    if (CMP_EQ(LO8(eax), MEM8(edi + 0x24))) goto loc_001EC82F; /* je: equal / zero */

loc_001EC829: ;
    eax = MEM32(ebx + 8);
    MEM32(edi + 4) = eax;

loc_001EC82F: ;
    POP32(esp, ebx);

}

/**
 * sub_001EC830
 * Original: 0x001EC830 - 0x001EC84B (27 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC830(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC830: ;
    SET_LO8(ecx, MEM8(ebp + -1));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC839: ;
    edi = MEM32(ebp + -20);
    PUSH32(esp, esi);
    MEM32(esi + 4) = edi;
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC845: ;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC84B
 * Original: 0x001EC84B - 0x001EC87E (51 bytes, 18 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC84B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC84B: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x18;
    MEM32(ebp + -16) = MEM32(ebp + -16) & 0;
    PUSH32(esp, ebx);
    ebx = MEM32(0x1ED1D4);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = edx;
    esi = MEM32(edi + 0x10);
    MEM32(ebp + -12) = edi;
    MEM32(ebp + -8) = ecx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(ebx, _icall_esp); /* indirect call */
    }

loc_001EC86B: ;
    /* test MEM8(esi + 0x10), 2 - flags set for next jcc */
    MEM8(ebp + -1) = LO8(eax);
    if (TEST_Z(MEM8(esi + 0x10), 2)) { g_seh_ebp = ebp; sub_001EC87E(); return; } /* je: equal / zero */

loc_001EC874: ;
    esi = 0xC0000E00u;
    g_seh_ebp = ebp; sub_001EC94A(); return; /* tail jmp 0x001EC94A */

}

/**
 * sub_001EC87E
 * Original: 0x001EC87E - 0x001EC94A (204 bytes, 67 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC87E(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC87E: ;
    ecx = MEM32(ebp + -8);
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EC886: ;
    SET_LO8(edx, MEM8(esi + 0x10));
    if (TEST_Z(LO8(edx), 4)) goto loc_001EC8C8; /* je: equal / zero */

loc_001EC88E: ;
    SET_LO8(edx, LO8(edx) & 0xFB);
    /* cmp MEM32(esi + 0x1C), eax - flags set for next jcc */
    MEM8(esi + 0x10) = LO8(edx);
    if (CMP_NE(MEM32(esi + 0x1C), eax)) goto loc_001EC8C0; /* jne: not equal / not zero */

loc_001EC899: ;
    SET_LO8(ecx, MEM8(ebp + -1));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC8A2: ;
    MEM32(ebp + -20) = MEM32(ebp + -20) | 0xFFFFFFFFu;
    eax = ebp + -24;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, eax);
    PUSH32(esp, 0);
    PUSH32(esp, 0);
    MEM32(ebp + -24) = 0xFFFFD8F0u;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1C8), _icall_esp); /* indirect call */
    }

loc_001EC8BB: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(ebx, _icall_esp); /* indirect call */
    }

loc_001EC8BD: ;
    MEM8(ebp + -1) = LO8(eax);

loc_001EC8C0: ;
    ecx = MEM32(ebp + -8);
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EC8C8: ;
    if (TEST_Z(MEM8(esi + 0x10), 1)) goto loc_001EC8DD; /* je: equal / zero */

loc_001EC8CE: ;
    SET_LO8(ecx, MEM8(esi + 0x24));
    if (CMP_EQ(LO8(ecx), MEM8(esi + 0x25))) goto loc_001EC8DD; /* je: equal / zero */

loc_001EC8D6: ;
    esi = 0xC0001000u;
    g_seh_ebp = ebp; sub_001EC94A(); return; /* tail jmp 0x001EC94A */

loc_001EC8DD: ;
    /* test MEM8(edi + 0x18), 1 - flags set for next jcc */
    ecx = eax + 1;
    if (TEST_NZ(MEM8(edi + 0x18), 1)) goto loc_001EC8F8; /* jne: not equal / not zero */

loc_001EC8E6: ;
    edx = MEM32(edi + 0x14);
    eax = edx;
    eax = eax - ecx;
    if (((int32_t)eax < 0)) { g_seh_ebp = ebp; sub_001EC963(); return; } /* js: sign (negative) */

loc_001EC8EF: ;
    if (CMP_G(eax, 0x400)) { g_seh_ebp = ebp; sub_001EC963(); return; } /* jg: greater (signed >) */

loc_001EC8F6: ;
    ecx = edx;

loc_001EC8F8: ;
    SET_LO8(edx, MEM8(esi + 0x24));
    SET_LO8(eax, LO8(edx));
    SET_LO8(eax, LO8(eax) - MEM8(esi + 0x25));
    edi = ZX8(LO8(edx));
    SET_LO8(eax, LO8(eax) + MEM8(esi + 0x26));
    eax = ZX8(LO8(eax));
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)edi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)edi)); }
    edi = MEM32(esi + 0x2C);

loc_001EC90F: ;
    edx = ZX8(LO8(edx));
    eax = edx;
    eax = eax << 6;
    MEM16(edi + eax) = LO16(ecx);
    edi = MEM32(esi + 0x2C);
    eax = ZX8(MEM8(edi + eax + 3));
    ebx = ZX8(MEM8(esi + 0x24));
    eax = eax & 7;
    ecx = ecx + eax + 1;
    eax = edx + 1;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ebx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ebx)); }
    if (CMP_NE(LO8(edx), MEM8(esi + 0x26))) goto loc_001EC90F; /* jne: not equal / not zero */

loc_001EC939: ;
    MEM8(esi + 1) = MEM8(esi + 1) & 0xBF;
    MEM8(esi + 0x10) = MEM8(esi + 0x10) | 2;
    edi = MEM32(ebp + -12);
    MEM32(esi + 0x28) = ecx;
    esi = MEM32(ebp + -16);

}

/**
 * sub_001EC94A
 * Original: 0x001EC94A - 0x001EC96A (32 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC94A(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC94A: ;
    SET_LO8(ecx, MEM8(ebp + -1));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC953: ;
    PUSH32(esp, edi);
    MEM32(edi + 4) = esi;
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC95C: ;
    POP32(esp, edi);
    eax = esi;
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001EC963
 * Original: 0x001EC963 - 0x001EC96A (7 bytes, 2 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC963(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC963: ;
    esi = 0xC0000B00u;
    g_seh_ebp = ebp; sub_001EC94A(); return; /* tail jmp 0x001EC94A */

}

/**
 * sub_001EC96A
 * Original: 0x001EC96A - 0x001EC9A4 (58 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC96A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC96A: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = edx;
    esi = MEM32(edi + 0x10);
    ebx = ecx;
    ebp = 0; /* xor self */
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001EC97E: ;
    /* test MEM8(esi + 0x10), 2 - flags set for next jcc */
    MEM8(esp + 0x13) = LO8(eax);
    if (TEST_Z(MEM8(esi + 0x10), 2)) { g_seh_ebp = ebp; sub_001EC9A4(); return; } /* je: equal / zero */

loc_001EC988: ;
    MEM8(esi + 1) = MEM8(esi + 1) | 0x40;
    ecx = ebx;
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001EC993: ;
    eax++;
    eax++;
    MEM32(esi + 0x1C) = eax;
    SET_LO8(eax, MEM8(esi + 0x10));
    SET_LO8(eax, LO8(eax) & 0xFD);
    SET_LO8(eax, LO8(eax) | 4);
    MEM8(esi + 0x10) = LO8(eax);
    g_seh_ebp = ebp; sub_001EC9A9(); return; /* tail jmp 0x001EC9A9 */

}

/**
 * sub_001EC9A4
 * Original: 0x001EC9A4 - 0x001EC9A9 (5 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC9A4(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC9A4: ;
    ebp = 0xC0000F00u;

}

/**
 * sub_001EC9A9
 * Original: 0x001EC9A9 - 0x001EC9C4 (27 bytes, 12 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC9A9(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC9A9: ;
    SET_LO8(ecx, MEM8(esp + 0x13));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001EC9B3: ;
    PUSH32(esp, edi);
    MEM32(edi + 4) = ebp;
    PUSH32(esp, 0); sub_001E7F7A(); /* call 0x001E7F7A */

loc_001EC9BC: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = ebp;
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_001EC9C4
 * Original: 0x001EC9C4 - 0x001ECA6B (167 bytes, 67 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC9C4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001EC9C4: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x2C;
    PUSH32(esp, ebx);
    ebx = edx;
    eax = MEM32(ebx);
    PUSH32(esp, esi);
    edx = MEM32(ebx + 0x20);
    MEM32(ebx + 8) = MEM32(ebx + 8) & 0;
    esi = eax;
    esi = esi >> 0x1C;
    MEM32(ebp + -44) = esi;
    eax = eax >> 0x18;
    eax = eax & 7;
    PUSH32(esp, edi);
    eax++;
    MEM32(ebp + -40) = eax;
    eax = MEM32(ebx + 0x28);
    esi = ebx + 0x10;
    MEM32(ebp + -8) = esi;
    edi = ebp + -36;
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(ebp + -16) = eax;
    eax = MEM32(ebx + 0x24);
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    edi = MEM32(edx + 0x2C);
    MEM32(ebp + -20) = eax;
    eax = ZX8(MEM8(ebx + 0x2D));
    esi = ebx;
    esi = esi - MEM32(0xBF4EE0);
    eax = eax << 6;
    MEM32(eax + edi + 8) = esi;
    /* test MEM8(edx + 0x10), 1 - flags set for next jcc */
    MEM32(ebp + -4) = edx;
    MEM32(ebp + -12) = esi;
    if (TEST_Z(MEM8(edx + 0x10), 1)) { g_seh_ebp = ebp; sub_001ECA6B(); return; } /* je: equal / zero */

loc_001ECA25: ;
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001ECA2A: ;
    ecx = MEM32(ebp + -4);
    esi = eax;
    eax = MEM32(ecx + 0x28);
    esi++;
    edx = eax;
    edx = edx - esi;
    if (((int32_t)edx < 0)) goto loc_001ECA3B; /* js: sign (negative) */

loc_001ECA39: ;
    esi = eax;

loc_001ECA3B: ;
    edi = MEM32(ebp + -8);
    MEM16(ebx) = LO16(esi);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 3));
    eax = eax & 7;
    eax = eax + esi + 1;
    MEM32(ecx + 0x28) = eax;
    esi = ebx + 0x30;
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    eax = ZX8(MEM8(ecx + 0x26));
    esi = ZX8(MEM8(ecx + 0x24));
    eax++;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    esi = MEM32(ebp + -12);
    MEM8(ecx + 0x26) = LO8(edx);
    g_seh_ebp = ebp; sub_001ECAA2(); return; /* tail jmp 0x001ECAA2 */

}

/**
 * sub_001EC9FC
 * Original: 0x001EC9FC - 0x001ECA6B (111 bytes, 42 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001EC9FC(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001EC9FC: ;
    eax = MEM32(ebx + 0x24);
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    edi = MEM32(edx + 0x2C);
    MEM32(ebp + -20) = eax;
    eax = ZX8(MEM8(ebx + 0x2D));
    esi = ebx;
    esi = esi - MEM32(0xBF4EE0);
    eax = eax << 6;
    MEM32(eax + edi + 8) = esi;
    /* test MEM8(edx + 0x10), 1 - flags set for next jcc */
    MEM32(ebp + -4) = edx;
    MEM32(ebp + -12) = esi;
    if (TEST_Z(MEM8(edx + 0x10), 1)) { g_seh_ebp = ebp; sub_001ECA6B(); return; } /* je: equal / zero */

loc_001ECA25: ;
    PUSH32(esp, 0); sub_001EBE1F(); /* call 0x001EBE1F */

loc_001ECA2A: ;
    ecx = MEM32(ebp + -4);
    esi = eax;
    eax = MEM32(ecx + 0x28);
    esi++;
    edx = eax;
    edx = edx - esi;
    if (((int32_t)edx < 0)) goto loc_001ECA3B; /* js: sign (negative) */

loc_001ECA39: ;
    esi = eax;

loc_001ECA3B: ;
    edi = MEM32(ebp + -8);
    MEM16(ebx) = LO16(esi);
    eax = 0; /* xor self */
    SET_LO8(eax, MEM8(ebx + 3));
    eax = eax & 7;
    eax = eax + esi + 1;
    MEM32(ecx + 0x28) = eax;
    esi = ebx + 0x30;
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    MEM32(edi) = MEM32(esi); esi += 4; edi += 4; /* movsd */
    eax = ZX8(MEM8(ecx + 0x26));
    esi = ZX8(MEM8(ecx + 0x24));
    eax++;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)esi));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)esi)); }
    esi = MEM32(ebp + -12);
    MEM8(ecx + 0x26) = LO8(edx);
    g_seh_ebp = ebp; sub_001ECAA2(); return; /* tail jmp 0x001ECAA2 */

}

/**
 * sub_001ECA6B
 * Original: 0x001ECA6B - 0x001ECAA2 (55 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECA6B(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECA6B: ;
    edi = MEM32(0x1ED264);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 1);
    PUSH32(esp, MEM32(ebx + 4));
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(edi, _icall_esp); /* indirect call */
    }

loc_001ECA78: ;
    eax = MEM32(ebx + 0xC);
    ecx = MEM32(ebx + 4);
    ecx = ecx ^ eax;
    if (TEST_Z(ecx, 0xFFFFF000u)) goto loc_001ECA8D; /* je: equal / zero */

loc_001ECA88: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 1);
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(edi, _icall_esp); /* indirect call */
    }

loc_001ECA8D: ;
    ecx = MEM32(ebp + -4);
    SET_LO8(eax, MEM8(ecx + 0x25));
    /* cmp LO8(eax), MEM8(ecx + 0x24) - flags set for next jcc */
    SET_LO8(edx, (CMP_EQ(LO8(eax), MEM8(ecx + 0x24))) ? 1 : 0); /* sete */
    SET_LO8(eax, LO8(eax) - 1);
    /* test LO8(edx), LO8(edx) - flags set for next jcc */
    MEM8(ecx + 0x25) = LO8(eax);
    if (TEST_Z(LO8(edx), LO8(edx))) { g_seh_ebp = ebp; sub_001ECAA5(); return; } /* je: equal / zero */

}

/**
 * sub_001ECAA2
 * Original: 0x001ECAA2 - 0x001ECAB4 (18 bytes, 10 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAA2(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECAA2: ;
    MEM32(ecx + 4) = esi;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, MEM32(ebp + -16));
    eax = ebp + -44;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(ebp + -20), _icall_esp); /* indirect call */
    }

loc_001ECAAF: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001ECAA5
 * Original: 0x001ECAA5 - 0x001ECAB4 (15 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAA5(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECAA5: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, MEM32(ebp + -16));
    eax = ebp + -44;
    PUSH32(esp, eax);
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(ebp + -20), _icall_esp); /* indirect call */
    }

loc_001ECAAF: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001ECAB4
 * Original: 0x001ECAB4 - 0x001ECAD4 (32 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAB4(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECAB4: ;
    eax = MEM32(0xBF4EEC);
    if (TEST_Z(eax, eax)) goto loc_001ECAC6; /* je: equal / zero */

loc_001ECABD: ;
    ecx = MEM32(eax + 0x14);
    MEM32(0xBF4EEC) = ecx;

loc_001ECAC6: ;
    SET_LO8(ecx, MEM8(esp + 4));
    MEM8(eax + 2) = MEM8(eax + 2) & 0xFE;
    MEM8(eax + 0x1F) = LO8(ecx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECAD4
 * Original: 0x001ECAD4 - 0x001ECAE6 (18 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAD4(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECAD4: ;
    SET_LO16(eax, MEM16(esp + 4));
    if (CMP_AE(MEM16(0xBF4F02), LO16(eax))) { g_seh_ebp = ebp; sub_001ECAE6(); return; } /* jae: above or equal (unsigned >=) */

loc_001ECAE2: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001ECAF0(); return; /* tail jmp 0x001ECAF0 */

}

/**
 * sub_001ECAE6
 * Original: 0x001ECAE6 - 0x001ECAF0 (10 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAE6(void)
{

loc_001ECAE6: ;
    MEM16(0xBF4F02) = MEM16(0xBF4F02) - LO16(eax);
    eax = 0; /* xor self */
    eax++;

}

/**
 * sub_001ECAF0
 * Original: 0x001ECAF0 - 0x001ECAF3 (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAF0(void)
{

loc_001ECAF0: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECAF3
 * Original: 0x001ECAF3 - 0x001ECB05 (18 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECAF3(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECAF3: ;
    SET_LO16(eax, MEM16(esp + 4));
    if (CMP_AE(MEM16(0xBF4F06), LO16(eax))) { g_seh_ebp = ebp; sub_001ECB05(); return; } /* jae: above or equal (unsigned >=) */

loc_001ECB01: ;
    eax = 0; /* xor self */
    g_seh_ebp = ebp; sub_001ECB0F(); return; /* tail jmp 0x001ECB0F */

}

/**
 * sub_001ECB05
 * Original: 0x001ECB05 - 0x001ECB0F (10 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECB05(void)
{

loc_001ECB05: ;
    MEM16(0xBF4F06) = MEM16(0xBF4F06) - LO16(eax);
    eax = 0; /* xor self */
    eax++;

}

/**
 * sub_001ECB0F
 * Original: 0x001ECB0F - 0x001ECB12 (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECB0F(void)
{

loc_001ECB0F: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECB12
 * Original: 0x001ECB12 - 0x001ECB45 (51 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECB12(void)
{
    int _rcc = 0; /* DOA3: deferred condition evaluated at the compare */
    int _flags = 0; /* fallback flag var */

loc_001ECB12: ;
    ecx = MEM32(ecx + 0x14);
    PUSH32(esp, esi);
    esi = edx;
    edx = 0; /* xor self */
    SET_LO16(edx, MEM16(esi + 2));
    eax = 0; /* xor self */
    edx = edx & 0x7FF;
    if (TEST_Z(ecx, ecx)) goto loc_001ECB3A; /* je: equal / zero */

loc_001ECB2A: ;
    PUSH32(esp, edi);
    edi = ZX16(LO16(edx));
    edx = 0; /* xor self */
    eax = ecx;
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)edi);
      edx = (uint32_t)(_dividend % (uint32_t)edi); }
    POP32(esp, edi);
    if (TEST_Z(edx, edx)) goto loc_001ECB3A; /* je: equal / zero */

loc_001ECB39: ;
    eax++;

loc_001ECB3A: ;
    /* cmp MEM8(esi + 0x11), 0 - flags set for next jcc */
    _rcc = (CMP_NE(MEM8(esi + 0x11), 0));  /* DOA3: x86 latched these flags at the compare above and the branch below reads them, but an operand is overwritten in between -- evaluate the condition where the guest does. */
    POP32(esp, esi);
    if (_rcc) goto loc_001ECB44; /* jne: not equal / not zero */

loc_001ECB41: ;
    eax = eax + 3;

loc_001ECB44: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001ECB45
 * Original: 0x001ECB45 - 0x001ECB7F (58 bytes, 25 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECB45(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECB45: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    esi = ecx;
    PUSH32(esp, MEM32(esi));
    edi = edx;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED258), _icall_esp); /* indirect call */
    }

loc_001ECB54: ;
    ecx = MEM32(esi);
    ecx = ecx & 0xFFF;
    edx = 0x1000;
    edx = edx - ecx;
    ecx = MEM32(esp + 0x10);
    MEM32(ecx) = edx;
    ebx = MEM32(edi);
    if (CMP_BE(edx, ebx)) goto loc_001ECB71; /* jbe: below or equal (unsigned <=) */

loc_001ECB6F: ;
    MEM32(ecx) = ebx;

loc_001ECB71: ;
    edx = MEM32(ecx);
    MEM32(edi) = MEM32(edi) - edx;
    ecx = MEM32(ecx);
    MEM32(esi) = MEM32(esi) + ecx;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECB7F
 * Original: 0x001ECB7F - 0x001ECBE5 (102 bytes, 35 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECB7F(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001ECB7F: ;
    PUSH32(esp, ebp);
    ebp = esp;
    esp = esp - 0x28;
    eax = 0; /* xor self */
    PUSH32(esp, ebx);
    ebx = edx;
    SET_LO16(eax, MEM16(ebx + 2));
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(ebp + 8);
    MEM32(ebp + -32) = ecx;
    SET_LO8(ecx, MEM8(ecx + 0x45C));
    MEM8(ebp + -24) = LO8(ecx);
    eax = eax & 0x7FF;
    MEM32(ebp + -40) = eax;
    eax = MEM32(edi + 0x14);
    MEM32(ebp + -16) = eax;
    eax = 0; /* xor self */
    MEM8(ebp + 0xB) = MEM8(ebp + 0xB) & LO8(eax);
    MEM8(ebx + 0x26) = MEM8(ebx + 0x26) - 1;
    MEM8(ebx + 0x27) = MEM8(ebx + 0x27) + 1;
    SET_LO16(ecx, MEM16(edi + 0x22));
    SET_LO16(ecx, LO16(ecx) & 0xFFFD);
    SET_LO16(ecx, LO16(ecx) | 4);
    MEM16(edi + 0x22) = LO16(ecx);
    esi = MEM32(ebx + 4);
    /* cmp esi, eax - flags set for next jcc */
    MEM32(ebp + -20) = eax;
    MEM32(ebp + -28) = eax;
    MEM32(ebp + -12) = eax;
    MEM32(ebp + -8) = eax;
    if (CMP_EQ(esi, eax)) { g_seh_ebp = ebp; sub_001ECBE5(); return; } /* je: equal / zero */

loc_001ECBDC: ;
    eax = MEM32(0xBF4EE0);
    esi = esi + eax;
    g_seh_ebp = ebp; sub_001ECBFE(); return; /* tail jmp 0x001ECBFE */

}

/**
 * sub_001ECBE5
 * Original: 0x001ECBE5 - 0x001ECBFE (25 bytes, 8 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECBE5(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECBE5: ;
    PUSH32(esp, MEM32(ebp + -24));
    PUSH32(esp, 0); sub_001ECAB4(); /* call 0x001ECAB4 */

loc_001ECBED: ;
    esi = eax;
    eax = MEM32(esi + 0x10);
    eax = eax ^ MEM32(ebx + 8);
    eax = eax & 0xF;
    eax = eax ^ MEM32(esi + 0x10);
    MEM32(ebx + 8) = eax;

}

/**
 * sub_001ECBFE
 * Original: 0x001ECBFE - 0x001ECE7D (639 bytes, 204 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECBFE(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECBFE: ;
    /* cmp MEM8(ebx + 0x11), 0 - flags set for next jcc */
    MEM32(ebp + -4) = esi;
    if (CMP_NE(MEM8(ebx + 0x11), 0)) goto loc_001ECC6D; /* jne: not equal / not zero */

loc_001ECC07: ;
    eax = 0; /* xor self */
    SET_LO8(eax, 0xFE);
    SET_LO8(eax, LO8(eax) - MEM8(ebp + -24));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001ECAB4(); /* call 0x001ECAB4 */

loc_001ECC14: ;
    ecx = MEM32(edi + 0x28);
    PUSH32(esp, MEM32(ebp + -24));
    MEM32(eax) = ecx;
    ecx = MEM32(edi + 0x2C);
    MEM32(ebp + -36) = eax;
    MEM32(eax + 4) = ecx;
    PUSH32(esp, 0); sub_001ECAB4(); /* call 0x001ECAB4 */

loc_001ECC2A: ;
    esi = eax;
    eax = MEM32(ebp + -4);
    ecx = MEM32(eax);
    ecx = ecx & 0x3FFFF;
    ecx = ecx | 0xE2E00000u;
    MEM32(eax) = ecx;
    ecx = MEM32(ebp + -36);
    edx = MEM32(ecx + 0x10);
    MEM32(eax + 4) = edx;
    edx = MEM32(esi + 0x10);
    MEM32(eax + 8) = edx;
    ecx = MEM32(ecx + 0x10);
    MEM8(eax + 0x1C) = MEM8(eax + 0x1C) & 0;
    ecx = ecx + 7;
    MEM8(eax + 0x1D) = MEM8(eax + 0x1D) & 0;
    MEM8(ebp + 0xB) = 2;
    MEM32(eax + 0xC) = ecx;
    MEM32(eax + 0x14) = ebx;
    MEM8(eax + 0x1E) = 1;
    MEM32(eax + 0x18) = edi;

loc_001ECC6D: ;
    if (CMP_EQ(MEM32(ebp + -16), 0)) goto loc_001ECC89; /* je: equal / zero */

loc_001ECC73: ;
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, MEM32(ebp + -16));
    PUSH32(esp, MEM32(edi + 0x18));
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED25C), _icall_esp); /* indirect call */
    }

loc_001ECC81: ;
    eax = MEM32(edi + 0x18);
    MEM32(ebp + -36) = eax;
    goto loc_001ECC8D;

loc_001ECC89: ;
    MEM8(edi + 0x1C) = 1;

loc_001ECC8D: ;
    if (CMP_EQ(MEM32(ebp + -16), 0)) goto loc_001ECDA8; /* je: equal / zero */

loc_001ECC97: ;
    eax = ebp + -20;
    PUSH32(esp, eax);
    edx = ebp + -16;
    ecx = ebp + -36;
    PUSH32(esp, 0); sub_001ECB45(); /* call 0x001ECB45 */

loc_001ECCA6: ;
    MEM32(ebp + -4) = eax;

loc_001ECCA9: ;
    edx = MEM32(ebp + -20);
    eax = MEM32(ebp + -12);
    ecx = MEM32(ebp + -40);
    eax = eax + edx;
    if (CMP_AE(eax, ecx)) goto loc_001ECCCA; /* jae: above or equal (unsigned >=) */

loc_001ECCB8: ;
    if (TEST_Z(edx, edx)) goto loc_001ECD82; /* je: equal / zero */

loc_001ECCC0: ;
    if (CMP_NE(MEM32(ebp + -16), 0)) goto loc_001ECD82; /* jne: not equal / not zero */

loc_001ECCCA: ;
    if (CMP_EQ(MEM32(ebp + -12), 0)) goto loc_001ECCF2; /* je: equal / zero */

loc_001ECCD0: ;
    ecx = ecx - MEM32(ebp + -12);
    eax = MEM32(ebp + -28);
    /* cmp edx, ecx - flags set for next jcc */
    MEM32(esi + 4) = eax;
    if (CMP_AE(edx, ecx)) goto loc_001ECCDF; /* jae: above or equal (unsigned >=) */

loc_001ECCDD: ;
    ecx = edx;

loc_001ECCDF: ;
    SET_LO8(eax, MEM8(ebp + -12));
    MEM32(ebp + -4) = MEM32(ebp + -4) + ecx;
    SET_LO8(eax, LO8(eax) + LO8(ecx));
    edx = edx - ecx;
    MEM32(ebp + -12) = MEM32(ebp + -12) & 0;
    MEM8(esi + 0x1D) = LO8(eax);
    goto loc_001ECD10;

loc_001ECCF2: ;
    /* cmp edx, ecx - flags set for next jcc */
    eax = MEM32(ebp + -4);
    MEM32(esi + 4) = eax;
    if (CMP_AE(edx, ecx)) goto loc_001ECD08; /* jae: above or equal (unsigned >=) */

loc_001ECCFC: ;
    MEM32(ebp + -4) = MEM32(ebp + -4) + edx;
    MEM32(ebp + -20) = MEM32(ebp + -20) & 0;
    MEM8(esi + 0x1D) = LO8(edx);
    goto loc_001ECD13;

loc_001ECD08: ;
    MEM32(ebp + -4) = MEM32(ebp + -4) + ecx;
    MEM8(esi + 0x1D) = LO8(ecx);
    edx = edx - ecx;

loc_001ECD10: ;
    MEM32(ebp + -20) = edx;

loc_001ECD13: ;
    eax = MEM32(ebp + -4);
    ecx = MEM32(esi);
    MEM8(ebp + 0xB) = MEM8(ebp + 0xB) ^ 1;
    MEM8(esi + 0x1C) = MEM8(esi + 0x1C) & 0;
    MEM8(esi + 0x1E) = MEM8(esi + 0x1E) & 0;
    eax--;
    MEM32(esi + 0xC) = eax;
    eax = ZX8(MEM8(ebp + 0xB));
    PUSH32(esp, MEM32(ebp + -24));
    ecx = ecx & 0xFFBFFFF;
    ecx = ecx | 0xE0000000u;
    eax = eax << 0x18;
    eax = eax ^ ecx;
    eax = eax & 0x3000000;
    eax = eax ^ ecx;
    MEM32(esi) = ecx;
    eax = eax | 0xE00000;
    ecx = 0; /* xor self */
    MEM32(esi) = eax;
    MEM32(esi + 0x14) = ebx;
    SET_LO8(ecx, MEM8(edi + 0x1C));
    eax = eax & 0xF3E7FFFFu;
    MEM32(esi + 0x18) = edi;
    MEM32(ebp + -8) = esi;
    ecx = ecx & 3;
    ecx = ecx << 0x13;
    ecx = ecx | eax;
    MEM32(esi) = ecx;
    PUSH32(esp, 0); sub_001ECAB4(); /* call 0x001ECAB4 */

loc_001ECD72: ;
    ecx = MEM32(ebp + -8);
    esi = eax;
    eax = MEM32(esi + 0x10);
    MEM32(ecx + 8) = eax;
    goto loc_001ECCA9;

loc_001ECD82: ;
    /* cmp MEM32(ebp + -16), 0 - flags set for next jcc */
    eax = MEM32(ebp + -4);
    MEM32(ebp + -28) = eax;
    MEM32(ebp + -12) = edx;
    if (CMP_NE(MEM32(ebp + -16), 0)) goto loc_001ECC97; /* jne: not equal / not zero */

loc_001ECD95: ;
    if (CMP_EQ(MEM32(ebp + -8), 0)) goto loc_001ECDA8; /* je: equal / zero */

loc_001ECD9B: ;
    if (CMP_EQ(MEM8(edi + 0x1D), 0)) goto loc_001ECDA8; /* je: equal / zero */

loc_001ECDA1: ;
    eax = MEM32(ebp + -8);
    MEM8(eax + 2) = MEM8(eax + 2) | 4;

loc_001ECDA8: ;
    if (CMP_NE(MEM8(ebx + 0x11), 0)) goto loc_001ECE18; /* jne: not equal / not zero */

loc_001ECDAE: ;
    MEM8(esi + 2) = MEM8(esi + 2) & 0xFB;
    ecx = MEM32(esi);
    eax = 0; /* xor self */
    /* cmp MEM8(edi + 0x1C), 2 - flags set for next jcc */
    PUSH32(esp, MEM32(ebp + -24));
    SET_LO8(eax, (CMP_NE(MEM8(edi + 0x1C), 2)) ? 1 : 0); /* setne */
    MEM32(ebp + -8) = esi;
    eax++;
    eax = eax << 0x13;
    eax = eax ^ ecx;
    eax = eax & 0x180000;
    eax = eax ^ ecx;
    ecx = 0; /* xor self */
    MEM32(esi) = eax;
    SET_LO8(ecx, MEM8(edi + 0x1E));
    MEM32(esi + 4) = MEM32(esi + 4) & 0;
    MEM32(esi + 0xC) = MEM32(esi + 0xC) & 0;
    MEM8(esi + 0x1D) = MEM8(esi + 0x1D) & 0;
    eax = eax & 0x1FFFFF;
    MEM32(esi + 0x14) = ebx;
    MEM8(esi + 0x1C) = 2;
    ecx = ecx & 7;
    ecx = ecx | 0xFFFFFF18u;
    ecx = ecx << 0x15;
    ecx = ecx | eax;
    MEM32(esi) = ecx;
    MEM8(esi + 0x1E) = 2;
    MEM32(esi + 0x18) = edi;
    PUSH32(esp, 0); sub_001ECAB4(); /* call 0x001ECAB4 */

loc_001ECE0B: ;
    ecx = MEM32(ebp + -8);
    esi = eax;
    eax = MEM32(esi + 0x10);
    MEM32(ecx + 8) = eax;
    goto loc_001ECE30;

loc_001ECE18: ;
    ecx = ZX8(MEM8(edi + 0x1E));
    eax = MEM32(ebp + -8);
    ecx = ecx << 0x15;
    ecx = ecx ^ MEM32(eax);
    MEM8(eax + 0x1C) = 2;
    ecx = ecx & 0xE00000;
    MEM32(eax) = MEM32(eax) ^ ecx;

loc_001ECE30: ;
    MEM8(esi + 0x1E) = 3;
    SET_LO16(eax, MEM16(edi + 0x14));
    MEM32(edi + 0x14) = MEM32(edi + 0x14) & 0;
    MEM16(edi + 0x20) = LO16(eax);
    /* cmp MEM8(ebx + 0x20), 0 - flags set for next jcc */
    eax = MEM32(esi + 0x10);
    MEM32(ebx + 4) = eax;
    if (CMP_NE(MEM8(ebx + 0x20), 0)) goto loc_001ECE50; /* jne: not equal / not zero */

loc_001ECE4C: ;
    MEM8(ebx + 1) = MEM8(ebx + 1) & 0xBF;

loc_001ECE50: ;
    SET_LO8(ebx, MEM8(ebx + 0x11));
    if (TEST_NZ(LO8(ebx), LO8(ebx))) goto loc_001ECE65; /* jne: not equal / not zero */

loc_001ECE57: ;
    eax = MEM32(ebp + -32);
    eax = MEM32(eax);
    MEM32(eax + 8) = 2;
    goto loc_001ECE76;

loc_001ECE65: ;
    if (CMP_NE(LO8(ebx), 2)) goto loc_001ECE76; /* jne: not equal / not zero */

loc_001ECE6A: ;
    eax = MEM32(ebp + -32);
    eax = MEM32(eax);
    MEM32(eax + 8) = 4;

loc_001ECE76: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECE7D
 * Original: 0x001ECE7D - 0x001ECED0 (83 bytes, 34 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECE7D(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001ECE7D: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = edx;
    /* cmp MEM32(esi + 0x28), 0 - flags set for next jcc */
    MEM32(ebp + -4) = ecx;
    if (CMP_EQ(MEM32(esi + 0x28), 0)) goto loc_001ECECD; /* je: equal / zero */

loc_001ECE8D: ;
    PUSH32(esp, ebx);

loc_001ECE8E: ;
    eax = MEM32(esi + 0x28);
    SET_LO16(edx, MEM16(esi + 0x24));
    ebx = ZX16(MEM16(eax + 0x20));
    ecx = ZX16(LO16(edx));
    ecx = ecx + ebx;
    if (CMP_G(ecx, 3)) goto loc_001ECECC; /* jg: greater (signed >) */

loc_001ECEA3: ;
    ecx = MEM32(eax + 0x24);
    /* test ecx, ecx - flags set for next jcc */
    MEM32(esi + 0x28) = ecx;
    if (TEST_NZ(ecx, ecx)) goto loc_001ECEB0; /* jne: not equal / not zero */

loc_001ECEAD: ;
    MEM32(esi + 0x2C) = MEM32(esi + 0x2C) & ecx;

loc_001ECEB0: ;
    SET_LO16(ecx, MEM16(eax + 0x20));
    SET_LO16(ecx, LO16(ecx) + LO16(edx));
    MEM16(esi + 0x24) = LO16(ecx);
    ecx = MEM32(ebp + -4);
    PUSH32(esp, eax);
    edx = esi;
    PUSH32(esp, 0); sub_001ECB7F(); /* call 0x001ECB7F */

loc_001ECEC6: ;
    if (CMP_NE(MEM32(esi + 0x28), 0)) goto loc_001ECE8E; /* jne: not equal / not zero */

loc_001ECECC: ;
    POP32(esp, ebx);

loc_001ECECD: ;
    POP32(esp, esi);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001ECED0
 * Original: 0x001ECED0 - 0x001ECF1D (77 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECED0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECED0: ;
    PUSH32(esp, esi);
    esi = ecx;
    if (CMP_EQ(MEM32(esi + 0x424), 0)) goto loc_001ECF1B; /* je: equal / zero */

loc_001ECEDC: ;
    PUSH32(esp, edi);

loc_001ECEDD: ;
    edi = MEM32(esi + 0x424);
    eax = 0; /* xor self */
    SET_LO16(eax, MEM16(edi + 0x20));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001ECAF3(); /* call 0x001ECAF3 */

loc_001ECEEF: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001ECF1A; /* je: equal / zero */

loc_001ECEF3: ;
    eax = MEM32(edi + 0x24);
    /* test eax, eax - flags set for next jcc */
    MEM32(esi + 0x424) = eax;
    if (TEST_NZ(eax, eax)) goto loc_001ECF06; /* jne: not equal / not zero */

loc_001ECF00: ;
    MEM32(esi + 0x428) = MEM32(esi + 0x428) & eax;

loc_001ECF06: ;
    edx = MEM32(edi + 0x10);
    PUSH32(esp, edi);
    ecx = esi;
    PUSH32(esp, 0); sub_001ECB7F(); /* call 0x001ECB7F */

loc_001ECF11: ;
    if (CMP_NE(MEM32(esi + 0x424), 0)) goto loc_001ECEDD; /* jne: not equal / not zero */

loc_001ECF1A: ;
    POP32(esp, edi);

loc_001ECF1B: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001ECF1D
 * Original: 0x001ECF1D - 0x001ECF6A (77 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECF1D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECF1D: ;
    PUSH32(esp, esi);
    esi = ecx;
    if (CMP_EQ(MEM32(esi + 0x41C), 0)) goto loc_001ECF68; /* je: equal / zero */

loc_001ECF29: ;
    PUSH32(esp, edi);

loc_001ECF2A: ;
    edi = MEM32(esi + 0x41C);
    eax = 0; /* xor self */
    SET_LO16(eax, MEM16(edi + 0x20));
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001ECAD4(); /* call 0x001ECAD4 */

loc_001ECF3C: ;
    if (TEST_Z(LO8(eax), LO8(eax))) goto loc_001ECF67; /* je: equal / zero */

loc_001ECF40: ;
    eax = MEM32(edi + 0x24);
    /* test eax, eax - flags set for next jcc */
    MEM32(esi + 0x41C) = eax;
    if (TEST_NZ(eax, eax)) goto loc_001ECF53; /* jne: not equal / not zero */

loc_001ECF4D: ;
    MEM32(esi + 0x420) = MEM32(esi + 0x420) & eax;

loc_001ECF53: ;
    edx = MEM32(edi + 0x10);
    PUSH32(esp, edi);
    ecx = esi;
    PUSH32(esp, 0); sub_001ECB7F(); /* call 0x001ECB7F */

loc_001ECF5E: ;
    if (CMP_NE(MEM32(esi + 0x41C), 0)) goto loc_001ECF2A; /* jne: not equal / not zero */

loc_001ECF67: ;
    POP32(esp, edi);

loc_001ECF68: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_001ECF6A
 * Original: 0x001ECF6A - 0x001ECF7C (18 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECF6A(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ECF6A: ;
    eax = MEM32(esp + 4);
    if (CMP_BE(MEM16(eax + 0x20), 3)) { g_seh_ebp = ebp; sub_001ECF7C(); return; } /* jbe: below or equal (unsigned <=) */

loc_001ECF75: ;
    eax = 0x80000500u;
    g_seh_ebp = ebp; sub_001ECF9A(); return; /* tail jmp 0x001ECF9A */

}

/**
 * sub_001ECF7C
 * Original: 0x001ECF7C - 0x001ECF9A (30 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECF7C(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECF7C: ;
    PUSH32(esp, esi);
    esi = MEM32(edx + 0x2C);
    if (TEST_Z(esi, esi)) goto loc_001ECF89; /* je: equal / zero */

loc_001ECF84: ;
    MEM32(esi + 0x24) = eax;
    goto loc_001ECF8C;

loc_001ECF89: ;
    MEM32(edx + 0x28) = eax;

loc_001ECF8C: ;
    MEM32(edx + 0x2C) = eax;
    PUSH32(esp, 0); sub_001ECE7D(); /* call 0x001ECE7D */

loc_001ECF94: ;
    eax = 0x40000000;
    POP32(esp, esi);

}

/**
 * sub_001ECF9A
 * Original: 0x001ECF9A - 0x001ECF9D (3 bytes, 1 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECF9A(void)
{

loc_001ECF9A: ;
    esp += 8; return; /* ret 4 */

}

/**
 * sub_001ECF9D
 * Original: 0x001ECF9D - 0x001ECFB0 (19 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECF9D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECF9D: ;
    SET_LO16(eax, MEM16(edx + 0x20));
    if (CMP_BE(LO16(eax), MEM16(0xBF4F04))) { sub_001ECFB0(); return; } /* jbe: below or equal (unsigned <=) */

loc_001ECFAA: ;
    eax = 0x80000500u;
    esp += 4; return; /* ret */

}

/**
 * sub_001ECFB0
 * Original: 0x001ECFB0 - 0x001ECFD9 (41 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECFB0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECFB0: ;
    eax = ecx + 0x424;
    if (CMP_EQ(MEM32(eax), 0)) goto loc_001ECFC6; /* je: equal / zero */

loc_001ECFBB: ;
    eax = MEM32(ecx + 0x428);
    MEM32(eax + 0x24) = edx;
    goto loc_001ECFC8;

loc_001ECFC6: ;
    MEM32(eax) = edx;

loc_001ECFC8: ;
    MEM32(ecx + 0x428) = edx;
    PUSH32(esp, 0); sub_001ECED0(); /* call 0x001ECED0 */

loc_001ECFD3: ;
    eax = 0x40000000;
    esp += 4; return; /* ret */

}

/**
 * sub_001ECFD9
 * Original: 0x001ECFD9 - 0x001ECFEC (19 bytes, 5 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECFD9(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECFD9: ;
    SET_LO16(eax, MEM16(edx + 0x20));
    if (CMP_BE(LO16(eax), MEM16(0xBF4F00))) { sub_001ECFEC(); return; } /* jbe: below or equal (unsigned <=) */

loc_001ECFE6: ;
    eax = 0x80000500u;
    esp += 4; return; /* ret */

}

/**
 * sub_001ECFEC
 * Original: 0x001ECFEC - 0x001ED015 (41 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ECFEC(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ECFEC: ;
    eax = ecx + 0x41C;
    if (CMP_EQ(MEM32(eax), 0)) goto loc_001ED002; /* je: equal / zero */

loc_001ECFF7: ;
    eax = MEM32(ecx + 0x420);
    MEM32(eax + 0x24) = edx;
    goto loc_001ED004;

loc_001ED002: ;
    MEM32(eax) = edx;

loc_001ED004: ;
    MEM32(ecx + 0x420) = edx;
    PUSH32(esp, 0); sub_001ECF1D(); /* call 0x001ECF1D */

loc_001ED00F: ;
    eax = 0x40000000;
    esp += 4; return; /* ret */

}

/**
 * sub_001ED015
 * Original: 0x001ED015 - 0x001ED074 (95 bytes, 37 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED015(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */

loc_001ED015: ;
    PUSH32(esp, ebp);
    ebp = esp;
    PUSH32(esp, ecx);
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    esi = edx;
    PUSH32(esp, edi);
    edi = MEM32(esi + 0x10);
    ebx = ecx;
    edx = edi;
    ecx = esi;
    PUSH32(esp, 0); sub_001ECB12(); /* call 0x001ECB12 */

loc_001ED02C: ;
    MEM16(esi + 0x20) = LO16(eax);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D4), _icall_esp); /* indirect call */
    }

loc_001ED036: ;
    MEM8(edi + 0x26) = MEM8(edi + 0x26) + 1;
    MEM32(esi + 0x24) = MEM32(esi + 0x24) & 0;
    MEM8(ebp + -1) = LO8(eax);
    MEM16(esi + 0x22) = 2;
    eax = ZX8(MEM8(edi + 0x11));
    eax = eax - 0;
    if ((eax == 0)) { g_seh_ebp = ebp; sub_001ED074(); return; } /* je: equal / zero */

loc_001ED04F: ;
    eax--;
    eax--;
    if ((eax == 0)) goto loc_001ED069; /* je: equal / zero */

loc_001ED053: ;
    eax--;
    if ((eax == 0)) goto loc_001ED05D; /* je: equal / zero */

loc_001ED056: ;
    ebx = 0x80000600u;
    g_seh_ebp = ebp; sub_001ED083(); return; /* tail jmp 0x001ED083 */

loc_001ED05D: ;
    PUSH32(esp, esi);
    edx = edi;
    ecx = ebx;
    PUSH32(esp, 0); sub_001ECF6A(); /* call 0x001ECF6A */

loc_001ED067: ;
    g_seh_ebp = ebp; sub_001ED07D(); return; /* tail jmp 0x001ED07D */

loc_001ED069: ;
    edx = esi;
    ecx = ebx;
    PUSH32(esp, 0); sub_001ECF9D(); /* call 0x001ECF9D */

loc_001ED072: ;
    g_seh_ebp = ebp; sub_001ED07D(); return; /* tail jmp 0x001ED07D */

}

/**
 * sub_001ED074
 * Original: 0x001ED074 - 0x001ED07D (9 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED074(void)
{

loc_001ED074: ;
    edx = esi;
    ecx = ebx;
    PUSH32(esp, 0); sub_001ECFD9(); /* call 0x001ECFD9 */

}

/**
 * sub_001ED07D
 * Original: 0x001ED07D - 0x001ED083 (6 bytes, 3 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED07D(void)
{
    int _flags = 0; /* fallback flag var */

loc_001ED07D: ;
    ebx = eax;
    if (CMP_GE(ebx & ebx, 0)) { sub_001ED08B(); return; } /* jge: greater or equal (signed >=) */

}

/**
 * sub_001ED083
 * Original: 0x001ED083 - 0x001ED09C (25 bytes, 11 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED083(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ED083: ;
    MEM16(esi + 0x22) = MEM16(esi + 0x22) & 0;
    MEM8(edi + 0x26) = MEM8(edi + 0x26) - 1;
    SET_LO8(ecx, MEM8(ebp + -1));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001ED094: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = ebx;
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001ED08B
 * Original: 0x001ED08B - 0x001ED09C (17 bytes, 9 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED08B(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ED08B: ;
    SET_LO8(ecx, MEM8(ebp + -1));
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0); RECOMP_ICALL_SAFE(MEM32(0x1ED1D0), _icall_esp); /* indirect call */
    }

loc_001ED094: ;
    POP32(esp, edi);
    POP32(esp, esi);
    eax = ebx;
    POP32(esp, ebx);
    esp = ebp;
    POP32(esp, ebp); /* leave */
    esp += 4; return; /* ret */

}

/**
 * sub_001ED09C
 * Original: 0x001ED09C - 0x001ED0DB (63 bytes, 36 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001ED09C(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001ED09C: ;
    POP32(esp, esp);
    esp++;
    if (_flags /* jbe: below or equal (unsigned <=) */) { g_seh_ebp = ebp; sub_001ED10A(); return; }

loc_001ED0A1: ;
    /* TODO: arpl word ptr [ebp + 0x5c], sp */
    ebp--;
    PUSH32(esp, ebp);
    POP32(esp, edi);
    MEM8(eax) = MEM8(eax) ^ LO8(eax);
    MEM8(eax) = MEM8(eax) + LO8(eax);
    MEM8(esp + eax * 2 + 0x65) = MEM8(esp + eax * 2 + 0x65) + LO8(ebx);
    if (_flags /* jbe: below or equal (unsigned <=) */) { g_seh_ebp = ebp; sub_001ED11A(); return; }

loc_001ED0B1: ;
    /* TODO: arpl word ptr [ebp + 0x5c], sp */
    ebp--;
    PUSH32(esp, ebp);
    POP32(esp, edi);
    eax = eax & 0x78;
    /* cmp MEM32(0x45304631), esi - flags set for next jcc */
    esi++;
    esi = esi ^ MEM32(eax);
    esp++;
    ebx++;
    SET_LO8(eax, LO8(eax) ^ 0x36);
    /* cmp MEM32(edi + 0x43), ebx - flags set for next jcc */
    edi--;
    PUSH32(esp, edx);
    PUSH32(esp, edx);
    PUSH32(esp, ebp);
    PUSH32(esp, eax);
    PUSH32(esp, esp);
    POP32(esp, edi);
    PUSH32(esp, ebx);
    ebp++;
    ebx++;
    PUSH32(esp, esp);
    edi--;
    PUSH32(esp, edx);

}
