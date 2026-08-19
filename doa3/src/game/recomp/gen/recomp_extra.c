/**
 * DOA3 - Recompiled extras: CRI WX device (wxCi*) vtable functions.
 * These are data-referenced only (device ops table at 0x3BEF68) so the
 * function detector missed them. Emitted via tools.recomp -f after
 * seed_missing_functions (see NOTES.md). Re-create after a full regen
 * (or keep functions.json seeded and they land in the normal chunks).
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

/**
 * sub_00171A70
 * Original: 0x00171A70 - 0x00171AA0 (48 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171A70(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171A70: ;
    PUSH32(esp, esi);
    esi = 0xBFA920;

loc_00171A76: ;
    if (CMP_EQ(MEM8(esi), 0)) goto loc_00171A84; /* je: equal / zero */

loc_00171A7B: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_001719E0(); /* call 0x001719E0 */

loc_00171A81: ;
    esp = esp + 4;

loc_00171A84: ;
    esi = esi + 0x14C;
    if (CMP_L(esi, 0xBFDD00)) goto loc_00171A76; /* jl: less (signed <) */

loc_00171A92: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_001710F0
 * Original: 0x001710F0 - 0x00171110 (32 bytes, 17 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001710F0(void)
{

loc_001710F0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(esp + 8);
    MEM32(0xB25608) = eax;
    MEM32(0xB2560C) = ecx;
    esp += 4; return; /* ret */

}


/**
 * sub_00171710
 * Original: 0x00171710 - 0x00171780 (112 bytes, 43 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171710(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171710: ;
    esp = esp - 0x100;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x108);
    if (TEST_NZ(esi, esi)) goto loc_00171747; /* jne: not equal / not zero */

loc_00171722: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_0017173D; /* je: equal / zero */

loc_0017172B: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216B04);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0017173A: ;
    esp = esp + 0xC;

loc_0017173D: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp = esp + 0x100;
    esp += 4; return; /* ret */

loc_00171747: ;
    PUSH32(esp, 0xBFDD00);
    edx = esp + 8;
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00165244(); /* call 0x00165244 */

loc_00171756: ;
    PUSH32(esp, esi);
    eax = esp + 8;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001652E7(); /* call 0x001652E7 */

loc_00171761: ;
    ecx = esp + 4;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001716B0(); /* call 0x001716B0 */

loc_0017176B: ;
    esp = esp + 4;
    POP32(esp, esi);
    esp = esp + 0x100;
    esp += 4; return; /* ret */

}


/**
 * sub_00171AA0
 * Original: 0x00171AA0 - 0x00171B00 (96 bytes, 45 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171AA0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171AA0: ;
    PUSH32(esp, edi);
    edi = MEM32(esp + 8);
    if (TEST_Z(edi, edi)) goto loc_00171AF1; /* je: equal / zero */

loc_00171AA9: ;
    PUSH32(esp, edi);
    PUSH32(esp, 0); sub_00171930(); /* call 0x00171930 */

loc_00171AAF: ;
    eax = MEM32(edi + 0x124);
    esp = esp + 4;
    if (TEST_NZ(eax, eax)) goto loc_00171AE0; /* jne: not equal / not zero */

loc_00171ABC: ;
    PUSH32(esp, esi);
    esi = MEM32(edi + 0x128);
    if (TEST_Z(esi, esi)) goto loc_00171ADF; /* je: equal / zero */

loc_00171AC7: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00174070(); /* call 0x00174070 */

loc_00171ACD: ;
    PUSH32(esp, esi);
    ebx = eax;
    PUSH32(esp, 0); sub_00162CAA(); /* call 0x00162CAA */

loc_00171AD5: ;
    PUSH32(esp, ebx);
    PUSH32(esp, 0); sub_00174090(); /* call 0x00174090 */

loc_00171ADB: ;
    esp = esp + 4;
    POP32(esp, ebx);

loc_00171ADF: ;
    POP32(esp, esi);

loc_00171AE0: ;
    if (CMP_NE(MEM8(edi), 1)) goto loc_00171AF1; /* jne: not equal / not zero */

loc_00171AE5: ;
    ecx = 0x53;
    eax = 0; /* xor self */
    MEM8(edi) = 0;
    { uint32_t _i; for (_i = 0; _i < ecx; _i++) MEM32(edi + _i*4) = eax; }
    edi += ecx * 4; ecx = 0; /* rep stosd */

loc_00171AF1: ;
    POP32(esp, edi);
    esp += 4; return; /* ret */

}


/**
 * sub_00171150
 * Original: 0x00171150 - 0x001711E0 (144 bytes, 63 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171150(void)
{
    int _flags = 0; /* fallback flag var */

loc_00171150: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00171178; /* jne: not equal / not zero */

loc_00171159: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171174; /* je: equal / zero */

loc_00171162: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171171: ;
    esp = esp + 0xC;

loc_00171174: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171178: ;
    PUSH32(esp, 0); sub_00173E10(); /* call 0x00173E10 */

loc_0017117D: ;
    eax = MEM32(esp + 0x10);
    if (TEST_NZ(eax, eax)) goto loc_0017118E; /* jne: not equal / not zero */

loc_00171185: ;
    edx = MEM32(esp + 0xC);
    MEM32(esi + 0x18) = edx;
    goto loc_001711AD;

loc_0017118E: ;
    if (CMP_NE(eax, 2)) goto loc_0017119C; /* jne: not equal / not zero */

loc_00171193: ;
    eax = MEM32(esi + 0x14);
    ecx = MEM32(esp + 0xC);
    goto loc_001711A8;

loc_0017119C: ;
    if (CMP_NE(eax, 1)) goto loc_001711AD; /* jne: not equal / not zero */

loc_001711A1: ;
    ecx = MEM32(esp + 0xC);
    eax = MEM32(esi + 0x18);

loc_001711A8: ;
    eax = eax + ecx;
    MEM32(esi + 0x18) = eax;

loc_001711AD: ;
    eax = MEM32(esi + 0x18);
    ecx = MEM32(esi + 0x14);
    if (CMP_L(eax, ecx)) goto loc_001711B9; /* jl: less (signed <) */

loc_001711B7: ;
    eax = ecx;

loc_001711B9: ;
    edx = 0; /* xor self */
    /* test eax, eax - flags set for next jcc */
    SET_LO8(edx, (CMP_LE(eax & eax, 0)) ? 1 : 0); /* setle */
    MEM32(esi + 0x18) = eax;
    edx--;
    eax = eax & edx;
    MEM32(esi + 0x18) = eax;
    PUSH32(esp, 0); sub_00173E20(); /* call 0x00173E20 */

loc_001711CE: ;
    eax = MEM32(esi + 0x18);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


/**
 * sub_001711E0
 * Original: 0x001711E0 - 0x00171210 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001711E0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001711E0: ;
    eax = MEM32(esp + 4);
    if (TEST_NZ(eax, eax)) goto loc_00171207; /* jne: not equal / not zero */

loc_001711E8: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171204; /* je: equal / zero */

loc_001711F1: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, 0);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171201: ;
    esp = esp + 0xC;

loc_00171204: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00171207: ;
    eax = MEM32(eax + 0x18);
    esp += 4; return; /* ret */

}


/**
 * sub_00171210
 * Original: 0x00171210 - 0x001713A0 (400 bytes, 163 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00171210(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00171210: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    if (TEST_NZ(esi, esi)) goto loc_00171238; /* jne: not equal / not zero */

loc_00171219: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_00171234; /* je: equal / zero */

loc_00171222: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x216944);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171231: ;
    esp = esp + 0xC;

loc_00171234: ;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171238: ;
    PUSH32(esp, ebx);
    PUSH32(esp, ebp);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x18);
    if (CMP_GE(edi & edi, 0)) goto loc_00171265; /* jge: greater or equal (signed >=) */

loc_00171243: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_0017125E; /* je: equal / zero */

loc_0017124C: ;
    edx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x2169E0);
    PUSH32(esp, edx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_0017125B: ;
    esp = esp + 0xC;

loc_0017125E: ;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171265: ;
    ebx = MEM32(esp + 0x1C);
    if (TEST_NZ(ebx, ebx)) goto loc_0017128F; /* jne: not equal / not zero */

loc_0017126D: ;
    eax = MEM32(0xB25608);
    if (TEST_Z(eax, eax)) goto loc_0017125E; /* je: equal / zero */

loc_00171276: ;
    ecx = MEM32(0xB2560C);
    { uint32_t _icall_esp = g_esp;
    PUSH32(esp, esi);
    PUSH32(esp, 0x2169BC);
    PUSH32(esp, ecx);
    { uint32_t _icall_t = eax; PUSH32(esp, 0); RECOMP_ICALL_SAFE(_icall_t, _icall_esp); } /* indirect call */
    }

loc_00171285: ;
    esp = esp + 0xC;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017128F: ;
    if (TEST_NZ(edi, edi)) goto loc_0017129E; /* jne: not equal / not zero */

loc_00171293: ;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    MEM8(esi + 1) = 1;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017129E: ;
    PUSH32(esp, 0); sub_00173E10(); /* call 0x00173E10 */

loc_001712A3: ;
    PUSH32(esp, 0); sub_001710C0(); /* call 0x001710C0 */

loc_001712A8: ;
    if (CMP_EQ(eax, 1)) goto loc_001712EE; /* je: equal / zero */

loc_001712AD: ;
    edx = MEM32(esi + 0x18);
    eax = MEM32(esi + 0x14);
    eax = eax - edx;
    /* cmp edi, eax - flags set for next jcc */
    MEM32(esi + 0x1C) = 0;
    MEM32(esi + 4) = ebx;
    if (CMP_GE(edi, eax)) goto loc_001712C5; /* jge: greater or equal (signed >=) */

loc_001712C3: ;
    eax = edi;

loc_001712C5: ;
    /* cmp eax, 0x200 - flags set for next jcc */
    MEM32(esi + 0x20) = eax;
    ecx = eax;
    if (CMP_L(eax, 0x200)) goto loc_001712D6; /* jl: less (signed <) */

loc_001712D1: ;
    ecx = 0x200;

loc_001712D6: ;
    eax = MEM32(esi + 0xC);
    edi = eax;
    eax = (uint32_t)((int32_t)eax * (int32_t)ecx);
    ebp = eax;
    edi = (uint32_t)((int32_t)edi * (int32_t)edx);
    /* test ebp, ebp - flags set for next jcc */
    MEM32(esi + 0x20) = ecx;
    if (TEST_NZ(ebp, ebp)) goto loc_001712FA; /* jne: not equal / not zero */

loc_001712EA: ;
    MEM8(esi + 1) = 1;

loc_001712EE: ;
    PUSH32(esp, 0); sub_00173E20(); /* call 0x00173E20 */

loc_001712F3: ;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_001712FA: ;
    MEM32(esi + 0x140) = edi;
    MEM32(esi + 0x144) = ebp;
    MEM8(esi + 1) = 2;
    MEM32(esi + 0x148) = 1;
    PUSH32(esp, 0); sub_00173E20(); /* call 0x00173E20 */

loc_00171319: ;
    eax = MEM32(0xB25604);
    if (TEST_NZ(eax, eax)) goto loc_00171393; /* jne: not equal / not zero */

loc_00171322: ;
    edx = ebp;
    edx = edx & 0x800007FFu;
    if (((int32_t)edx >= 0)) goto loc_00171334; /* jns: not sign (positive) */

loc_0017132C: ;
    edx--;
    edx = edx | 0xFFFFF800u;
    edx++;

loc_00171334: ;
    if ((edx != 0)) goto loc_0017137D; /* jne: not equal / not zero */

loc_00171336: ;
    if (TEST_S(ebp, ebp)) goto loc_0017137D; /* jl: less (signed <) */

loc_0017133A: ;
    edi = edi & 0x800007FFu;
    if (((int32_t)edi >= 0)) goto loc_0017134A; /* jns: not sign (positive) */

loc_00171342: ;
    edi--;
    edi = edi | 0xFFFFF800u;
    edi++;

loc_0017134A: ;
    if ((edi == 0)) goto loc_00171362; /* je: equal / zero */

loc_0017134C: ;
    PUSH32(esp, 0x21699C);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00171060(); /* call 0x00171060 */

loc_00171358: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171362: ;
    if (TEST_Z(LO8(ebx), 3)) goto loc_00171393; /* je: equal / zero */

loc_00171367: ;
    PUSH32(esp, 0x216978);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00171060(); /* call 0x00171060 */

loc_00171373: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_0017137D: ;
    PUSH32(esp, 0x21695C);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_00171060(); /* call 0x00171060 */

loc_00171389: ;
    esp = esp + 8;
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp += 4; return; /* ret */

loc_00171393: ;
    eax = MEM32(esi + 0x20);
    POP32(esp, edi);
    POP32(esp, ebp);
    POP32(esp, ebx);
    POP32(esp, esi);
    esp += 4; return; /* ret */

}


