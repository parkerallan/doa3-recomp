/**
 * DOA3 - guest functions reached only through function-pointer tables.
 *
 * Each of these was an unresolved icall at runtime: the direct-call scan never
 * promoted them (nothing `call`s them by address), so they had no entry in
 * functions.json, no generated body and no dispatch entry. Every call through
 * the table fell into the RECOMP_ICALL failure path, which pops the dummy
 * return address, sets eax = 0 and carries on -- silently skipping the work.
 *
 * That is benign for 0x0018DA90 (a bare `ret`), but the 0x001240D0-0x00124170
 * block is a table of x87 helpers that each return a float in ST(0); skipping
 * one leaves the caller popping a value that was never pushed.
 *
 * Extents were checked by walking each function's basic blocks to a real
 * terminator (see the seeding workflow in tools/recomp/seed_missing_functions.py);
 * every one ends on a `ret` or tail `jmp` with only nop padding as slack.
 *
 * Prototypes live here and in recomp_dispatch.c rather than recomp_funcs.h,
 * which every generated unit includes -- touching it forces a full rebuild.
 */

#define RECOMP_GENERATED_CODE
#include "recomp_funcs.h"
#include <stdio.h>
#include <math.h>

void sub_000458A0(void);
void sub_000E15E0(void);
void sub_001193E0(void);
void sub_001240D0(void);
void sub_001240E0(void);
void sub_00124100(void);
void sub_00124110(void);
void sub_00124130(void);
void sub_00124140(void);
void sub_00124160(void);
void sub_00124170(void);
void sub_001250A0(void);
void sub_00134CC0(void);
void sub_001359A0(void);
void sub_0018DA90(void);
void sub_001CDCA9(void);

void sub_000458A0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_000458A0: ;
    PUSH32(esp, esi);
    PUSH32(esp, 0); sub_00154670(); /* call 0x00154670 */

loc_000458A6: ;
    esi = MEM32(esp + 8);
    eax = esi + 0x4C90;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001544B0(); /* call 0x001544B0 */

loc_000458B6: ;
    ecx = MEM32(esi + 0x4CA0);
    ecx = ecx + 0x4000;
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_000458C8: ;
    esi = MEM32(esi + 0x4CC8);
    esi = (uint32_t)((int32_t)esi * (int32_t)0x2C);
    esi = esi + 0x2EB438;
    edx = MEM32(esi + 8);
    eax = MEM32(esi + 4);
    ecx = MEM32(esi);
    PUSH32(esp, edx);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_000458E7: ;
    edx = MEM32(esi + 0x10);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001557D0(); /* call 0x001557D0 */

loc_000458F0: ;
    eax = MEM32(esi + 0xC);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00155770(); /* call 0x00155770 */

loc_000458F9: ;
    PUSH32(esp, 0x3D9374BD);
    PUSH32(esp, 0x3D9374BD);
    PUSH32(esp, 0x3D9374BD);
    PUSH32(esp, 0); sub_001544D0(); /* call 0x001544D0 */

loc_0004590D: ;
    ecx = MEM32(0x480E00);
    esp = esp + 0x28;
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_0004591B: ;
    ecx = 0; /* xor self */
    PUSH32(esp, 0); sub_00154610(); /* call 0x00154610 */

loc_00045922: ;
    ecx = MEM32(esi + 0x1C);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00155830(); /* call 0x00155830 */

loc_0004592B: ;
    edx = MEM32(esi + 0x18);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001557D0(); /* call 0x001557D0 */

loc_00045934: ;
    eax = MEM32(esi + 0x14);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00155770(); /* call 0x00155770 */

loc_0004593D: ;
    ecx = MEM32(0x480E08);
    esp = esp + 0xC;
    PUSH32(esp, 0); sub_00157700(); /* call 0x00157700 */

loc_0004594B: ;
    ecx = 1;
    PUSH32(esp, 0); sub_00154640(); /* call 0x00154640 */

loc_00045955: ;
    ecx = MEM32(esi + 0x28);
    PUSH32(esp, ecx);
    PUSH32(esp, 0); sub_00155830(); /* call 0x00155830 */

loc_0004595E: ;
    edx = MEM32(esi + 0x24);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_001557D0(); /* call 0x001557D0 */

loc_00045967: ;
    eax = MEM32(esi + 0x20);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00155770(); /* call 0x00155770 */

loc_00045970: ;
    ecx = MEM32(0x480E04);
    esp = esp + 0xC;
    POP32(esp, esi);
    g_seh_ebp = ebp; sub_00157700(); return; /* tail jmp 0x00157700 */

    /* nop */

}


void sub_000E15E0(void)
{

loc_000E15E0: ;
    eax = ZX8(MEM8(0x48E611));
    eax = (uint32_t)((int32_t)eax * (int32_t)0x1900);
    ecx = MEM32(eax + 0x47BD60);
    PUSH32(esp, ecx);
    PUSH32(esp, 0);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E15FB: ;
    edx = ZX8(MEM8(0x48E611));
    edx = (uint32_t)((int32_t)edx * (int32_t)0x1900);
    eax = MEM32(edx + 0x47B9A0);
    PUSH32(esp, eax);
    PUSH32(esp, 1);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E1616: ;
    PUSH32(esp, 0);
    PUSH32(esp, 2);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E161F: ;
    PUSH32(esp, 0);
    PUSH32(esp, 3);
    PUSH32(esp, 0); sub_001B1CC0(); /* call 0x001B1CC0 */

loc_000E1628: ;
    esp += 4; return; /* ret */

}


void sub_001193E0(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001193E0: ;
    PUSH32(esp, 0); sub_00118FD0(); /* call 0x00118FD0 */

loc_001193E5: ;
    g_seh_ebp = ebp; sub_001175F0(); return; /* tail jmp 0x001175F0 */

    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */
    /* nop */

}


void sub_001240D0(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_001240D0: ;
    fp_push(MEMF(esp + 8)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(0x2078DC); /* fadd mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_001240E0(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_001240E0: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(esp + 8); /* fadd mem */
    fp_top() = fp_top() + (double)MEMF(0x2078E0); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x207858); /* fmul mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124100(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124100: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_top() = fp_top() + (double)MEMF(0x2078DC); /* fadd mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124110(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124110: ;
    fp_push(MEMF(esp + 4)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 8); /* fsub mem */
    fp_top() = fp_top() + (double)MEMF(0x2078E0); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x207858); /* fmul mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124130(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124130: ;
    fp_push(MEMF(0x2078DC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 8); /* fsub mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124140(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124140: ;
    fp_push(MEMF(0x2078E0)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 4); /* fsub mem */
    fp_top() = fp_top() - (double)MEMF(esp + 8); /* fsub mem */
    fp_top() = fp_top() * (double)MEMF(0x207858); /* fmul mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124160(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124160: ;
    fp_push(MEMF(0x2078DC)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 4); /* fsub mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_00124170(void)
{
    #define fp_push(v) (g_fp_stack[--g_fp_top & 7] = (v))
    #define fp_pop() (g_fp_top++)
    #define fp_popp() (fp_pop())
    #define fp_top() g_fp_stack[g_fp_top & 7]
    #define fp_st1() g_fp_stack[(g_fp_top + 1) & 7]

loc_00124170: ;
    fp_push(MEMF(0x2078E0)); /* fld float */
    fp_top() = fp_top() - (double)MEMF(esp + 4); /* fsub mem */
    fp_top() = fp_top() + (double)MEMF(esp + 8); /* fadd mem */
    fp_top() = fp_top() * (double)MEMF(0x207858); /* fmul mem */
    esp += 4; return; /* ret */

    #undef fp_push
    #undef fp_pop
    #undef fp_popp
    #undef fp_top
    #undef fp_st1
}


void sub_001250A0(void)
{
    int _flags = 0; /* fallback flag var */

loc_001250A0: ;
    SET_LO8(eax, MEM8(0x47E795));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_001250AE; /* jne: not equal / not zero */

loc_001250A9: ;
    PUSH32(esp, 0); sub_00124C50(); /* call 0x00124C50 */

loc_001250AE: ;
    eax = MEM32(0x8E9D14);
    if (TEST_NZ(eax, eax)) goto loc_001250E9; /* jne: not equal / not zero */

loc_001250B7: ;
    if (CMP_NE(MEM16(0x8E9F8C), 0x14)) goto loc_001250E9; /* jne: not equal / not zero */

loc_001250C1: ;
    SET_LO8(eax, MEM8(0x47E795));
    if (TEST_NZ(LO8(eax), LO8(eax))) goto loc_001250E9; /* jne: not equal / not zero */

loc_001250CA: ;
    eax = ZX8(MEM8(0x48E611));
    PUSH32(esp, esi);
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_00124C10(); /* call 0x00124C10 */

loc_001250D8: ;
    esp = esp + 4;
    esi = 0x8C;

loc_001250E0: ;
    PUSH32(esp, 0); sub_00124C50(); /* call 0x00124C50 */

loc_001250E5: ;
    esi--;
    if ((esi != 0)) goto loc_001250E0; /* jne: not equal / not zero */

loc_001250E8: ;
    POP32(esp, esi);

loc_001250E9: ;
    esp += 4; return; /* ret */

}


void sub_00134CC0(void)
{
    int _flags = 0; /* fallback flag var */

loc_00134CC0: ;
    PUSH32(esp, ebx);
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = 0x8FBC50;
    esi = 0x8FE6D4;
    ebx = 0xF;

loc_00134CD2: ;
    ecx = 0x8FA880;
    PUSH32(esp, 0); sub_00154680(); /* call 0x00154680 */

loc_00134CDC: ;
    eax = MEM32(esi + 4);
    ecx = MEM32(esi);
    edx = MEM32(esi + -4);
    PUSH32(esp, eax);
    PUSH32(esp, ecx);
    PUSH32(esp, edx);
    PUSH32(esp, 0); sub_00154420(); /* call 0x00154420 */

loc_00134CEC: ;
    eax = ZX16(MEM16(esi + 0x24));
    eax = eax + 0x8000;
    PUSH32(esp, eax);
    PUSH32(esp, 0); sub_001557A0(); /* call 0x001557A0 */

loc_00134CFB: ;
    esp = esp + 0x10;
    ecx = edi;
    PUSH32(esp, 0); sub_00154690(); /* call 0x00154690 */

loc_00134D05: ;
    edi = edi + 0x40;
    esi = esi + 0x30;
    ebx--;
    if ((ebx != 0)) goto loc_00134CD2; /* jne: not equal / not zero */

loc_00134D0E: ;
    ecx = MEM32(0x905A80);
    ecx = MEM32(ecx + 0xF8);
    PUSH32(esp, 0xF);
    edx = 0x8FBC50;
    PUSH32(esp, 0); sub_00156F10(); /* call 0x00156F10 */

loc_00134D26: ;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 4; return; /* ret */

}


void sub_001359A0(void)
{
    uint32_t ebp;
    int _flags = 0; /* fallback flag var */
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001359A0: ;
    if (CMP_EQ(MEM8(0x9064B1), 1)) goto loc_001359B3; /* je: equal / zero */

loc_001359A9: ;
    PUSH32(esp, 0); sub_001351B0(); /* call 0x001351B0 */

loc_001359AE: ;
    g_seh_ebp = ebp; sub_00134CC0(); return; /* tail jmp 0x00134CC0 */

loc_001359B3: ;
    esp += 4; return; /* ret */

}


void sub_0018DA90(void)
{

loc_0018DA90: ;
    esp += 4; return; /* ret */

}


void sub_001CDCA9(void)
{
    uint32_t ebp;
    ebp = g_seh_ebp; /* fpo_leaf: inherit caller's frame */

loc_001CDCA9: ;
    PUSH32(esp, ebx);
    ebx = MEM32(esp + 0xC);
    SET_LO16(eax, MEM16(ebx + 0x12));
    PUSH32(esp, esi);
    PUSH32(esp, edi);
    edi = MEM32(esp + 0x10);
    MEM16(edi + 0x12) = MEM16(edi + 0x12) + LO16(eax);
    esi = ecx;
    PUSH32(esp, ebx);
    ecx = esi + 4;
    PUSH32(esp, 0); sub_001CD9F9(); /* call 0x001CD9F9 */

loc_001CDCC7: ;
    PUSH32(esp, ebx);
    ecx = esi + 0x18;
    PUSH32(esp, 0); sub_001CDACB(); /* call 0x001CDACB */

loc_001CDCD0: ;
    eax = edi;
    POP32(esp, edi);
    POP32(esp, esi);
    POP32(esp, ebx);
    esp += 12; return; /* ret 8 */

}


