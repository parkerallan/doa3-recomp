/**
 * DOA3 - Recompiled extras #3: CRI ADX sound-device methods (function table at
 * 0x3BF050 plus the voice-open at 0x172260). The detector had merged all of
 * them into one oversized sub_00172250, so every function-pointer call to them
 * was unresolved and returned 0: Sofdec failed its sound open (0xFF000136) and
 * the intro movie never started once DirectSound initialisation succeeded.
 * Seeded by hand and emitted with tools.recomp -f. Registered in g_manual_funcs.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <math.h>

void sub_00172260(void);
void sub_00172330(void);
void sub_00172360(void);
void sub_00172410(void);
void sub_00172470(void);
void sub_001724F0(void);
void sub_00172520(void);
void sub_00172580(void);
void sub_001725B0(void);
void sub_001725E0(void);
void sub_00172610(void);
void sub_00172640(void);
void sub_00172680(void);
void sub_001726B0(void);
void sub_001726D0(void);

/**
 * sub_00172260
 * Original: 0x00172260 - 0x00172330 (208 bytes, 78 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172260_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172260: ;
    esp = esp - 0x14;
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x20);
    if (CMP_L(edi, 1)) goto loc_00172311; /* jl: less (signed <) */

loc_00172272: ;
    if (CMP_G(edi, 2)) goto loc_00172311; /* jg: greater (signed >) */

loc_0017227B: ;
    PUSH32(esp, 0); sub_00172100(); /* call 0x00172100 */

loc_00172280: ;
    esi = eax;
    if (TEST_NZ(esi, esi)) goto loc_0017229B; /* jne: not equal / not zero */

loc_00172286: ;
    PUSH32(esp, 0x216E30);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_00172290: ;
    esp = esp + 4;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_0017229B: ;
    eax = edi;
    eax = eax << 0xF;
    PUSH32(esp, eax);
    PUSH32(esp, edi);
    MEM32(esi) = 0x3BF050;
    PUSH32(esp, 0); sub_00172180(); /* call 0x00172180 */

loc_001722AD: ;
    esp = esp + 8;
    if (TEST_NZ(eax, eax)) goto loc_001722BD; /* jne: not equal / not zero */

loc_001722B4: ;
    POP32(esp, edi);
    MEM32(esi + 4) = eax;
    POP32(esp, esi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_001722BD: ;
    ecx = esp + 8;
    PUSH32(esp, ecx);
    PUSH32(esp, edi);
    MEM32(esi + 8) = eax;
    PUSH32(esp, 0); sub_00172130(); /* call 0x00172130 */

loc_001722CB: ;
    eax = MEM32(esp + 0x10);
    ecx = MEM32(esp + 0x14);
    edx = esi + 0xC;
    MEM32(edx) = eax;
    eax = MEM32(esp + 0x18);
    MEM32(edx + 4) = ecx;
    ecx = MEM32(esp + 0x1C);
    MEM32(edx + 8) = eax;
    SET_LO16(eax, MEM16(esp + 0x20));
    esp = esp + 8;
    MEM32(edx + 0xC) = ecx;
    MEM32(esi + 0x28) = edi;
    MEM32(esi + 0x24) = edi;
    MEM16(edx + 0x10) = LO16(eax);
    POP32(esp, edi);
    MEM32(esi + 0x2C) = 0;
    MEM32(esi + 4) = 1;
    eax = esi;
    POP32(esp, esi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

loc_00172311: ;
    PUSH32(esp, 0x216DFC);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017231B: ;
    esp = esp + 4;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp = esp + 0x14;
    esp += 4; return; /* ret */

}

/**
 * sub_00172330
 * Original: 0x00172330 - 0x00172360 (48 bytes, 21 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172330_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172330: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 4);
    if (TEST_Z(eax, eax)) goto loc_00172357; /* je: equal / zero */

loc_0017233C: ;
    eax = MEM32(esi + 8);
    if (TEST_Z(eax, eax)) goto loc_00172350; /* je: equal / zero */

loc_00172343: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C6B7C(); /* call 0x001C6B7C */

loc_00172349: ;
    MEM32(esi + 8) = 0;

loc_00172350: ;
    MEM32(esi + 4) = 0;

loc_00172357: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00172360
 * Original: 0x00172360 - 0x00172410 (176 bytes, 69 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172360_gen(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00172360: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 4);
    if (TEST_Z(eax, eax)) goto loc_001723FF; /* je: equal / zero */

loc_00172370: ;
    eax = MEM32(esi + 8);
    if (TEST_NZ(eax, eax)) goto loc_00172385; /* jne: not equal / not zero */

loc_00172377: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216F1C;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_00172385: ;
    ecx = MEM32(esi + 0x10);
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C7AFB(); /* call 0x001C7AFB */

loc_0017238F: ;
    if (TEST_NZ(eax, eax)) goto loc_001723F1; /* jne: not equal / not zero */

loc_00172393: ;
    eax = ZX16(MEM16(esi + 0x1A));
    eax = (uint32_t)((int32_t)eax * (int32_t)MEM32(esi + 0x2C));
    PUSH32(esp, edi);
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    edx = edx & 7;
    eax = eax + edx;
    PUSH32(esp, 1);
    edi = eax;
    eax = MEM32(esi + 8);
    PUSH32(esp, 0);
    edi = (uint32_t)((int32_t)edi >> 3);
    PUSH32(esp, 0);
    edi = edi + 0x3F;
    PUSH32(esp, eax);
    edi = edi & 0xFFFFFFC0u;
    MEM32(esi + 0x2C) = 0;
    PUSH32(esp, 0); sub_001C7B33(); /* call 0x001C7B33 */

loc_001723C3: ;
    if (TEST_Z(eax, eax)) goto loc_001723D4; /* je: equal / zero */

loc_001723C7: ;
    PUSH32(esp, 0x216EE4);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_001723D1: ;
    esp = esp + 4;

loc_001723D4: ;
    ecx = MEM32(esi + 8);
    PUSH32(esp, edi);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001C75C1(); /* call 0x001C75C1 */

loc_001723DE: ;
    /* test eax, eax - flags set for next jcc */
    POP32(esp, edi);
    if (TEST_Z(eax, eax)) goto loc_001723FF; /* je: equal / zero */

loc_001723E3: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216EA8;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_001723F1: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216E68;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_001723FF: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00172410
 * Original: 0x00172410 - 0x00172470 (96 bytes, 38 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172410_gen(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_00172410: ;
    PUSH32(esp, esi);
    esi = MEM32(esp + 8);
    eax = MEM32(esi + 4);
    if (TEST_Z(eax, eax)) goto loc_00172465; /* je: equal / zero */

loc_0017241C: ;
    eax = MEM32(esi + 8);
    if (TEST_NZ(eax, eax)) goto loc_00172431; /* jne: not equal / not zero */

loc_00172423: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216F1C;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_00172431: ;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C7B57(); /* call 0x001C7B57 */

loc_00172437: ;
    if (TEST_NZ(eax, eax)) goto loc_00172457; /* jne: not equal / not zero */

loc_0017243B: ;
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C75C1(); /* call 0x001C75C1 */

loc_00172445: ;
    if (TEST_Z(eax, eax)) goto loc_00172465; /* je: equal / zero */

loc_00172449: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216EA8;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_00172457: ;
    POP32(esp, esi);
    MEM32(esp + 4) = 0x216F40;
    g_seh_ebp = ebp; sub_00173DD0(); return; /* tail jmp 0x00173DD0 */

loc_00172465: ;
    POP32(esp, esi);
    esp += 4; return; /* ret */

}

/**
 * sub_00172470
 * Original: 0x00172470 - 0x001724F0 (128 bytes, 52 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172470_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172470: ;
    esp = esp - 0xC;
    PUSH32(esp, esi);
    esi = MEM32(esp + 0x14);
    PUSH32(esp, 0);
    eax = esp + 8;
    PUSH32(esp, eax);
    ecx = esp + 0x10;
    PUSH32(esp, ecx);
    ecx = MEM32(esi + 8);
    edx = esp + 0x18;
    PUSH32(esp, edx);
    eax = esp + 0x24;
    PUSH32(esp, eax);
    PUSH32(esp, 4);
    PUSH32(esp, 0);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001C75DD(); /* call 0x001C75DD */

loc_0017249B: ;
    if (TEST_Z(eax, eax)) goto loc_001724B3; /* je: equal / zero */

loc_0017249F: ;
    PUSH32(esp, 0x216F78);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_001724A9: ;
    esp = esp + 4;
    eax = 0; /* xor self */
    POP32(esp, esi);
    esp = esp + 0xC;
    esp += 4; return; /* ret */

loc_001724B3: ;
    edx = MEM32(esp + 4);
    eax = MEM32(esp + 8);
    ecx = MEM32(esp + 0xC);
    PUSH32(esp, edx);
    edx = MEM32(esp + 0x18);
    PUSH32(esp, eax);
    eax = MEM32(esi + 8);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C6B77(); /* call 0x001C6B77 */

loc_001724D0: ;
    ecx = MEM32(esp + 0x14);
    MEM32(esi + 0x20) = ecx;
    ecx = ZX16(MEM16(esi + 0x1A));
    eax = 0x8000;
    edx = ((int32_t)eax < 0) ? 0xFFFFFFFF : 0; /* cdq */
    { int64_t _dividend = ((int64_t)(int32_t)edx << 32) | eax;
      eax = (uint32_t)((int32_t)(_dividend / (int32_t)ecx));
      edx = (uint32_t)((int32_t)(_dividend % (int32_t)ecx)); }
    POP32(esp, esi);
    eax = eax << 3;
    esp = esp + 0xC;
    esp += 4; return; /* ret */

}

/**
 * sub_001724F0
 * Original: 0x001724F0 - 0x00172520 (48 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001724F0_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_001724F0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_00172517; /* je: equal / zero */

loc_001724FB: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_00172510; /* jne: not equal / not zero */

loc_00172502: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017250C: ;
    esp = esp + 4;
    esp += 4; return; /* ret */

loc_00172510: ;
    ecx = MEM32(esp + 8);
    MEM32(eax + 0x28) = ecx;

loc_00172517: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00172520
 * Original: 0x00172520 - 0x00172580 (96 bytes, 46 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172520_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172520: ;
    PUSH32(esp, ecx);
    PUSH32(esp, esi);
    esi = MEM32(esp + 0xC);
    eax = MEM32(esi + 4);
    PUSH32(esp, edi);
    edi = 0; /* xor self */
    if (TEST_Z(eax, eax)) goto loc_00172544; /* je: equal / zero */

loc_00172530: ;
    eax = MEM32(esi + 8);
    if (TEST_NZ(eax, eax)) goto loc_0017254A; /* jne: not equal / not zero */

loc_00172537: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_00172541: ;
    esp = esp + 4;

loc_00172544: ;
    POP32(esp, edi);
    eax = 0; /* xor self */
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

loc_0017254A: ;
    ecx = esp + 8;
    PUSH32(esp, ecx);
    edx = esp + 0x14;
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C75A1(); /* call 0x001C75A1 */

loc_0017255A: ;
    if (TEST_NZ(eax, eax)) goto loc_00172574; /* jne: not equal / not zero */

loc_0017255E: ;
    ecx = ZX16(MEM16(esi + 0x1A));
    eax = MEM32(esp + 0x10);
    edx = 0; /* xor self */
    ecx = ecx >> 3;
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)ecx);
      edx = (uint32_t)(_dividend % (uint32_t)ecx); }
    edx = 0; /* xor self */
    { uint64_t _dividend = ((uint64_t)edx << 32) | eax;
      eax = (uint32_t)(_dividend / (uint32_t)MEM32(esi + 0x24));
      edx = (uint32_t)(_dividend % (uint32_t)MEM32(esi + 0x24)); }
    edi = eax;

loc_00172574: ;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ecx);
    esp += 4; return; /* ret */

}

/**
 * sub_00172580
 * Original: 0x00172580 - 0x001725B0 (48 bytes, 22 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172580_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172580: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_001725A7; /* je: equal / zero */

loc_0017258B: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_001725A0; /* jne: not equal / not zero */

loc_00172592: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017259C: ;
    esp = esp + 4;
    esp += 4; return; /* ret */

loc_001725A0: ;
    ecx = MEM32(esp + 8);
    MEM32(eax + 0x10) = ecx;

loc_001725A7: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001725B0
 * Original: 0x001725B0 - 0x001725E0 (48 bytes, 24 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001725B0_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_001725B0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_001725CF; /* je: equal / zero */

loc_001725BB: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_001725D2; /* jne: not equal / not zero */

loc_001725C2: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_001725CC: ;
    esp = esp + 4;

loc_001725CF: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_001725D2: ;
    eax = MEM32(eax + 0x10);
    esp += 4; return; /* ret */

}

/**
 * sub_001725E0
 * Original: 0x001725E0 - 0x00172610 (48 bytes, 20 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001725E0_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_001725E0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_00172609; /* je: equal / zero */

loc_001725EB: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_00172600; /* jne: not equal / not zero */

loc_001725F2: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_001725FC: ;
    esp = esp + 4;
    esp += 4; return; /* ret */

loc_00172600: ;
    SET_LO16(ecx, MEM16(esp + 8));
    MEM16(eax + 0x1A) = LO16(ecx);

loc_00172609: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00172610
 * Original: 0x00172610 - 0x00172640 (48 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172610_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172610: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_0017262F; /* je: equal / zero */

loc_0017261B: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_00172632; /* jne: not equal / not zero */

loc_00172622: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017262C: ;
    esp = esp + 4;

loc_0017262F: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

loc_00172632: ;
    eax = ZX16(MEM16(eax + 0x1A));
    esp += 4; return; /* ret */

}

/**
 * sub_00172640
 * Original: 0x00172640 - 0x00172680 (64 bytes, 23 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172640_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172640: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_0017267F; /* je: equal / zero */

loc_0017264B: ;
    eax = MEM32(eax + 8);
    if (TEST_NZ(eax, eax)) goto loc_00172660; /* jne: not equal / not zero */

loc_00172652: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017265C: ;
    esp = esp + 4;
    esp += 4; return; /* ret */

loc_00172660: ;
    ecx = MEM32(esp + 8);
    ecx = ecx + ecx * 4;
    ecx = ecx << 1;
    PUSH32(esp, ecx);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001C7477(); /* call 0x001C7477 */

loc_00172670: ;
    if (TEST_Z(eax, eax)) goto loc_0017267F; /* je: equal / zero */

loc_00172674: ;
    PUSH32(esp, 0x216FA4);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017267E: ;
    POP32(esp, ecx);

loc_0017267F: ;
    esp += 4; return; /* ret */

}

/**
 * sub_00172680
 * Original: 0x00172680 - 0x001726B0 (48 bytes, 26 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_00172680_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_00172680: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_0017269F; /* je: equal / zero */

loc_0017268B: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_0017269F; /* jne: not equal / not zero */

loc_00172692: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_0017269C: ;
    esp = esp + 4;

loc_0017269F: ;
    eax = 0; /* xor self */
    esp += 4; return; /* ret */

}

/**
 * sub_001726B0
 * Original: 0x001726B0 - 0x001726D0 (32 bytes, 13 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001726B0_gen(void)
{
    int _flags = 0; /* fallback flag var */

loc_001726B0: ;
    eax = MEM32(esp + 4);
    ecx = MEM32(eax + 4);
    if (TEST_Z(ecx, ecx)) goto loc_001726CD; /* je: equal / zero */

loc_001726BB: ;
    ecx = MEM32(eax + 8);
    if (TEST_NZ(ecx, ecx)) goto loc_001726CD; /* jne: not equal / not zero */

loc_001726C2: ;
    PUSH32(esp, 0x216F1C);
    PUSH32(esp, 0); sub_00173DD0(); /* call 0x00173DD0 */

loc_001726CC: ;
    POP32(esp, ecx);

loc_001726CD: ;
    esp += 4; return; /* ret */

}

/**
 * sub_001726D0
 * Original: 0x001726D0 - 0x001726F0 (32 bytes, 16 insns)
 * CC: cdecl, 0 params, returns int_or_void
 * Frame: fpo_leaf
 */
void sub_001726D0_gen(void)
{

loc_001726D0: ;
    eax = MEM32(esp + 0xC);
    ecx = MEM32(esp + 0x10);
    MEM32(eax) = 0;
    MEM32(ecx) = 0;
    esp += 4; return; /* ret */

}

