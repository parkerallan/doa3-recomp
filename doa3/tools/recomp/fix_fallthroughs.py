import re, glob, os
# addr -> emitted function name (prefer base name; gen may have _gen suffix)
addr2name = {}
for f in glob.glob('src/game/recomp/gen/*.c'):
    for line in open(f, encoding='utf-8', errors='ignore'):
        m = re.match(r'void (sub_([0-9A-Fa-f]{8}))(_gen)?\(void\)', line)
        if m:
            a=int(m.group(2),16)
            # base name (override or gen) is callable
            addr2name[a]=m.group(1)

LO, HI = 0x11000, 0x1B0DE0   # game .text only. NOTE: XDK libs also have ~225
# dropped fall-throughs but blanket-fixing them BREAKS boot (some XDK 'ends'
# are not real fall-throughs); apply targeted ones via KEEP_XDK below.
# KEEP_XDK: XDK-range functions PROVEN to need their fall-through restored:
#  0x1B4611 - D3D SetStateBlockFlags je-path (leaked 24B stack/call)
#  0x1C3FDD - D3DX draw helper 'hr=0' path (fell off the end: leaked ~0xA4/call,
#             swept esp through the whole address space)
KEEP_XDK = {0x1B4611, 0x1C3FDD}
# NOTE: 0x1C883B (DSOUND stream-service fragment) is NOT a real fall-through -
# restoring it caused infinite recursion (native stack overflow). Its -4
# esp/call is contained by an ESP_FIX wrapper in recomp_manual.c instead.
# The whole D3DX section (0x1C35C0-0x1C64A0) is fall-through-safe: its
# fragments are real split epilogues (Initialize leaked its 0xD8 frame per
# call via sub_001C3ED7's dropped fall-through). The boot-breaking false
# fall-throughs were in the D3D GPU-init code, which stays excluded.
D3DX_LO, D3DX_HI = 0x1C35C0, 0x1C64A0
# Was 0x1B0DE0 (.text only) - the XDK D3D/DSOUND libs had ~225 dropped
# fall-throughs too; one (sub_001B4611, in D3D SetStateBlock-flags) leaked
# 24 bytes of stack per call and made the D3DX state-block create loop run
# forever (131K 512-byte allocations -> OOM). 2026-07-02.
fixed = 0
for f in glob.glob('src/game/recomp/gen/*.c'):
    lines = open(f, encoding='utf-8', errors='ignore').read().split('\n')
    out=[]; cur=None; end=None; has_ebp=False; body=[]; start_idx=None
    pend=None
    i=0
    while i < len(lines):
        line=lines[i]
        mo=re.search(r'Original: 0x([0-9A-Fa-f]+) - 0x([0-9A-Fa-f]+)', line)
        if mo: pend=int(mo.group(2),16)
        m=re.match(r'void sub_([0-9A-Fa-f]{8})(_gen)?\(void\)', line)
        if m:
            cur=int(m.group(1),16); end=pend; has_ebp=False; body=[]
            out.append(line); i+=1
            continue
        if cur is not None:
            if 'uint32_t ebp;' in line: has_ebp=True
            if line=='}':
                # decide fall-through
                last=''
                for b in reversed(body):
                    s=b.strip()
                    if not s or s.startswith('/*') or s.endswith(': ;') or s in ('{','};') or s.startswith('#') or s.startswith('loc_') or s.startswith('uint') or s.startswith('int '):
                        continue
                    last=s; break
                term = ('return' in last) or last.startswith('goto ') or 'int3' in last or last.endswith('break;')
                if last and not term and end in addr2name and (LO<=cur<HI or cur in KEEP_XDK or D3DX_LO<=cur<D3DX_HI):
                    tgt=addr2name[end]
                    if has_ebp:
                        ins='    g_seh_ebp = ebp; %s(); return; /* DOA3: restored dropped fall-through to %s */' % (tgt,tgt)
                    else:
                        ins='    %s(); return; /* DOA3: restored dropped fall-through to %s */' % (tgt,tgt)
                    out.append(ins)
                    fixed+=1
                out.append(line); cur=None; i+=1; continue
            body.append(line)
        out.append(line); i+=1
    open(f,'w',encoding='utf-8').write('\n'.join(out))
print("CRI-range fall-throughs fixed:", fixed)
