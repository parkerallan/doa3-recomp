; ============================================================
; Section: PSGSFD_B
; VA: 0x001E4E40 - 0x001E5500
; Size: 1728 bytes (1.7 KB)
; Functions: 3
; Instructions: 594
; ============================================================


; ============================================================
; Function: sub_001E4E40
; Start: 0x001E4E40  End: 0x001E4E53  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E4E40:
  0x001E4E40  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E4E44  33c9                    xor      ecx, ecx                       
  0x001E4E46  894810                  mov      dword ptr [eax + 0x10], ecx    
  0x001E4E49  894814                  mov      dword ptr [eax + 0x14], ecx    
  0x001E4E4C  894818                  mov      dword ptr [eax + 0x18], ecx    
  0x001E4E4F  89481c                  mov      dword ptr [eax + 0x1c], ecx    
  0x001E4E52  c3                      ret                                     
; end of function
  0x001E4E53  90                      nop                                     
  0x001E4E54  90                      nop                                     
  0x001E4E55  90                      nop                                     
  0x001E4E56  90                      nop                                     
  0x001E4E57  90                      nop                                     
  0x001E4E58  90                      nop                                     
  0x001E4E59  90                      nop                                     
  0x001E4E5A  90                      nop                                     
  0x001E4E5B  90                      nop                                     
  0x001E4E5C  90                      nop                                     
  0x001E4E5D  90                      nop                                     
  0x001E4E5E  90                      nop                                     
  0x001E4E5F  90                      nop                                     

; ============================================================
; Function: sub_001E4E60
; Start: 0x001E4E60  End: 0x001E4E7C  Size: 28 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E4E60:
  0x001E4E60  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E4E64  b900040000              mov      ecx, 0x400                     
  0x001E4E69  8988ac020000            mov      dword ptr [eax + 0x2ac], ecx   
  0x001E4E6F  8988b4020000            mov      dword ptr [eax + 0x2b4], ecx   
  0x001E4E75  8988b0020000            mov      dword ptr [eax + 0x2b0], ecx   
  0x001E4E7B  c3                      ret                                     
; end of function
  0x001E4E7C  90                      nop                                     
  0x001E4E7D  90                      nop                                     
  0x001E4E7E  90                      nop                                     
  0x001E4E7F  90                      nop                                     

; ============================================================
; Function: sub_001E4E80
; Start: 0x001E4E80  End: 0x001E4EC9  Size: 73 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E4E80:
  0x001E4E80  83ec08                  sub      esp, 8                         
  0x001E4E83  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E4E87  8b500c                  mov      edx, dword ptr [eax + 0xc]     
  0x001E4E8A  53                      push     ebx                            
  0x001E4E8B  55                      push     ebp                            
  0x001E4E8C  8b6804                  mov      ebp, dword ptr [eax + 4]       
  0x001E4E8F  56                      push     esi                            
  0x001E4E90  8b7008                  mov      esi, dword ptr [eax + 8]       
  0x001E4E93  57                      push     edi                            
  0x001E4E94  8b38                    mov      edi, dword ptr [eax]           
  0x001E4E96  8bdf                    mov      ebx, edi                       
  0x001E4E98  c1eb15                  shr      ebx, 0x15                      
  0x001E4E9B  83fe15                  cmp      esi, 0x15                      
  0x001E4E9E  c744241400000000        mov      dword ptr [esp + 0x14], 0      
  0x001E4EA6  7e11                    jle      0x1e4eb9                       
  0x001E4EA8  b935000000              mov      ecx, 0x35                      
  0x001E4EAD  2bce                    sub      ecx, esi                       
  0x001E4EAF  8bc5                    mov      eax, ebp                       
  0x001E4EB1  d3e8                    shr      eax, cl                        
  0x001E4EB3  0bd8                    or       ebx, eax                       
  0x001E4EB5  8b44241c                mov      eax, dword ptr [esp + 0x1c]    
                                        ; XREF: 0x001E4EA6 (cond_jump)
  0x001E4EB9  f7c380ffffff            test     ebx, 0xffffff80                
  0x001E4EBF  7508                    jne      0x1e4ec9                       
  0x001E4EC1  8b0d48dfc000            mov      ecx, dword ptr [0xc0df48]      
  0x001E4EC7  eb09                    jmp      0x1e4ed2                       
; end of function
                                        ; XREF: 0x001E4EBF (cond_jump)
  0x001E4EC9  8b0d2cd4c000            mov      ecx, dword ptr [0xc0d42c]      
  0x001E4ECF  c1eb06                  shr      ebx, 6                         
                                        ; XREF: 0x001E4EC7 (jump)
  0x001E4ED2  0fbf0c59                movsx    ecx, word ptr [ecx + ebx*2]    
  0x001E4ED6  0fbed9                  movsx    ebx, cl                        
  0x001E4ED9  83fb7f                  cmp      ebx, 0x7f                      
  0x001E4EDC  895c241c                mov      dword ptr [esp + 0x1c], ebx    
  0x001E4EE0  750d                    jne      0x1e4eef                       
  0x001E4EE2  c7442414ffffffff        mov      dword ptr [esp + 0x14], 0xffffffff 
  0x001E4EEA  e92d010000              jmp      0x1e501c                       
                                        ; XREF: 0x001E4EE0 (cond_jump)
  0x001E4EEF  c1e908                  shr      ecx, 8                         
  0x001E4EF2  0fb6c9                  movzx    ecx, cl                        
  0x001E4EF5  03f1                    add      esi, ecx                       
  0x001E4EF7  83fe20                  cmp      esi, 0x20                      
  0x001E4EFA  7c2f                    jl       0x1e4f2b                       
  0x001E4EFC  83ee20                  sub      esi, 0x20                      
  0x001E4EFF  8bfd                    mov      edi, ebp                       
  0x001E4F01  0fb66a01                movzx    ebp, byte ptr [edx + 1]        
  0x001E4F05  8bce                    mov      ecx, esi                       
  0x001E4F07  d3e7                    shl      edi, cl                        
  0x001E4F09  0fbe0a                  movsx    ecx, byte ptr [edx]            
  0x001E4F0C  42                      inc      edx                            
  0x001E4F0D  c1e108                  shl      ecx, 8                         
  0x001E4F10  0bcd                    or       ecx, ebp                       
  0x001E4F12  0fb66a01                movzx    ebp, byte ptr [edx + 1]        
  0x001E4F16  42                      inc      edx                            
  0x001E4F17  c1e108                  shl      ecx, 8                         
  0x001E4F1A  0bcd                    or       ecx, ebp                       
  0x001E4F1C  0fb66a01                movzx    ebp, byte ptr [edx + 1]        
  0x001E4F20  42                      inc      edx                            
  0x001E4F21  c1e108                  shl      ecx, 8                         
  0x001E4F24  0bcd                    or       ecx, ebp                       
  0x001E4F26  8be9                    mov      ebp, ecx                       
  0x001E4F28  42                      inc      edx                            
  0x001E4F29  eb02                    jmp      0x1e4f2d                       
                                        ; XREF: 0x001E4EFA (cond_jump)
  0x001E4F2B  d3e7                    shl      edi, cl                        
                                        ; XREF: 0x001E4F29 (jump)
  0x001E4F2D  85db                    test     ebx, ebx                       
  0x001E4F2F  7511                    jne      0x1e4f42                       
  0x001E4F31  8b4c2428                mov      ecx, dword ptr [esp + 0x28]    
  0x001E4F35  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E4F37  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
  0x001E4F3B  8919                    mov      dword ptr [ecx], ebx           
  0x001E4F3D  e9cf000000              jmp      0x1e5011                       
                                        ; XREF: 0x001E4F2F (cond_jump)
  0x001E4F42  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4F46  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E4F49  85db                    test     ebx, ebx                       
  0x001E4F4B  0f8494000000            je       0x1e4fe5                       
  0x001E4F51  b920000000              mov      ecx, 0x20                      
  0x001E4F56  2bcb                    sub      ecx, ebx                       
  0x001E4F58  3bf1                    cmp      esi, ecx                       
  0x001E4F5A  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E4F5E  7c49                    jl       0x1e4fa9                       
  0x001E4F60  8d741ee0                lea      esi, [esi + ebx - 0x20]        
  0x001E4F64  85f6                    test     esi, esi                       
  0x001E4F66  7416                    je       0x1e4f7e                       
  0x001E4F68  8bcb                    mov      ecx, ebx                       
  0x001E4F6A  2bce                    sub      ecx, esi                       
  0x001E4F6C  8bdd                    mov      ebx, ebp                       
  0x001E4F6E  d3eb                    shr      ebx, cl                        
  0x001E4F70  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E4F74  0bdf                    or       ebx, edi                       
  0x001E4F76  d3eb                    shr      ebx, cl                        
  0x001E4F78  8bce                    mov      ecx, esi                       
  0x001E4F7A  d3e5                    shl      ebp, cl                        
  0x001E4F7C  eb04                    jmp      0x1e4f82                       
                                        ; XREF: 0x001E4F66 (cond_jump)
  0x001E4F7E  8bdf                    mov      ebx, edi                       
  0x001E4F80  d3eb                    shr      ebx, cl                        
                                        ; XREF: 0x001E4F7C (jump)
  0x001E4F82  0fbe0a                  movsx    ecx, byte ptr [edx]            
  0x001E4F85  42                      inc      edx                            
  0x001E4F86  c1e108                  shl      ecx, 8                         
  0x001E4F89  8bfd                    mov      edi, ebp                       
  0x001E4F8B  0fb62a                  movzx    ebp, byte ptr [edx]            
  0x001E4F8E  0bcd                    or       ecx, ebp                       
  0x001E4F90  0fb66a01                movzx    ebp, byte ptr [edx + 1]        
  0x001E4F94  42                      inc      edx                            
  0x001E4F95  c1e108                  shl      ecx, 8                         
  0x001E4F98  0bcd                    or       ecx, ebp                       
  0x001E4F9A  0fb66a01                movzx    ebp, byte ptr [edx + 1]        
  0x001E4F9E  42                      inc      edx                            
  0x001E4F9F  c1e108                  shl      ecx, 8                         
  0x001E4FA2  0bcd                    or       ecx, ebp                       
  0x001E4FA4  8be9                    mov      ebp, ecx                       
  0x001E4FA6  42                      inc      edx                            
  0x001E4FA7  eb0f                    jmp      0x1e4fb8                       
                                        ; XREF: 0x001E4F5E (cond_jump)
  0x001E4FA9  03f3                    add      esi, ebx                       
  0x001E4FAB  8bdf                    mov      ebx, edi                       
  0x001E4FAD  d3eb                    shr      ebx, cl                        
  0x001E4FAF  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4FB3  8b4904                  mov      ecx, dword ptr [ecx + 4]       
  0x001E4FB6  d3e7                    shl      edi, cl                        
                                        ; XREF: 0x001E4FA7 (jump)
  0x001E4FB8  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4FBC  8b490c                  mov      ecx, dword ptr [ecx + 0xc]     
  0x001E4FBF  2bcb                    sub      ecx, ebx                       
  0x001E4FC1  8b5c241c                mov      ebx, dword ptr [esp + 0x1c]    
  0x001E4FC5  49                      dec      ecx                            
  0x001E4FC6  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E4FCA  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4FCE  8b4904                  mov      ecx, dword ptr [ecx + 4]       
  0x001E4FD1  d3e3                    shl      ebx, cl                        
  0x001E4FD3  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E4FD7  85db                    test     ebx, ebx                       
  0x001E4FD9  7e04                    jle      0x1e4fdf                       
  0x001E4FDB  2bd9                    sub      ebx, ecx                       
  0x001E4FDD  eb02                    jmp      0x1e4fe1                       
                                        ; XREF: 0x001E4FD9 (cond_jump)
  0x001E4FDF  03d9                    add      ebx, ecx                       
                                        ; XREF: 0x001E4FDD (jump)
  0x001E4FE1  895c241c                mov      dword ptr [esp + 0x1c], ebx    
                                        ; XREF: 0x001E4F4B (cond_jump)
  0x001E4FE5  8b4c2428                mov      ecx, dword ptr [esp + 0x28]    
  0x001E4FE9  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E4FEB  035c241c                add      ebx, dword ptr [esp + 0x1c]    
  0x001E4FEF  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4FF3  8b4908                  mov      ecx, dword ptr [ecx + 8]       
  0x001E4FF6  d3e3                    shl      ebx, cl                        
  0x001E4FF8  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4FFC  8b4908                  mov      ecx, dword ptr [ecx + 8]       
  0x001E4FFF  d3fb                    sar      ebx, cl                        
  0x001E5001  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
  0x001E5005  8919                    mov      dword ptr [ecx], ebx           
  0x001E5007  8b4c2428                mov      ecx, dword ptr [esp + 0x28]    
  0x001E500B  8919                    mov      dword ptr [ecx], ebx           
  0x001E500D  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
                                        ; XREF: 0x001E4F3D (jump)
  0x001E5011  8b5c2420                mov      ebx, dword ptr [esp + 0x20]    
  0x001E5015  833b00                  cmp      dword ptr [ebx], 0             
  0x001E5018  7402                    je       0x1e501c                       
  0x001E501A  d121                    shl      dword ptr [ecx], 1             
                                        ; XREF: 0x001E4EEA (jump), 0x001E5018 (cond_jump)
  0x001E501C  8938                    mov      dword ptr [eax], edi           
  0x001E501E  5f                      pop      edi                            
  0x001E501F  897008                  mov      dword ptr [eax + 8], esi       
  0x001E5022  5e                      pop      esi                            
  0x001E5023  896804                  mov      dword ptr [eax + 4], ebp       
  0x001E5026  5d                      pop      ebp                            
  0x001E5027  89500c                  mov      dword ptr [eax + 0xc], edx     
  0x001E502A  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E502E  5b                      pop      ebx                            
  0x001E502F  83c408                  add      esp, 8                         
  0x001E5032  c3                      ret                                     
  0x001E5033  90                      nop                                     
  0x001E5034  90                      nop                                     
  0x001E5035  90                      nop                                     
  0x001E5036  90                      nop                                     
  0x001E5037  90                      nop                                     
  0x001E5038  90                      nop                                     
  0x001E5039  90                      nop                                     
  0x001E503A  90                      nop                                     
  0x001E503B  90                      nop                                     
  0x001E503C  90                      nop                                     
  0x001E503D  90                      nop                                     
  0x001E503E  90                      nop                                     
  0x001E503F  90                      nop                                     
  0x001E5040  83ec0c                  sub      esp, 0xc                       
  0x001E5043  53                      push     ebx                            
  0x001E5044  55                      push     ebp                            
  0x001E5045  56                      push     esi                            
  0x001E5046  8b74241c                mov      esi, dword ptr [esp + 0x1c]    
  0x001E504A  8b5604                  mov      edx, dword ptr [esi + 4]       
  0x001E504D  57                      push     edi                            
  0x001E504E  c744241401000000        mov      dword ptr [esp + 0x14], 1      
  0x001E5056  89542420                mov      dword ptr [esp + 0x20], edx    
                                        ; XREF: 0x001E5457 (jump), 0x001E54B5 (jump)
  0x001E505A  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E505C  8b6e08                  mov      ebp, dword ptr [esi + 8]       
  0x001E505F  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E5062  8bc3                    mov      eax, ebx                       
  0x001E5064  c1e809                  shr      eax, 9                         
  0x001E5067  83fd09                  cmp      ebp, 9                         
  0x001E506A  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E506E  7e13                    jle      0x1e5083                       
  0x001E5070  b929000000              mov      ecx, 0x29                      
  0x001E5075  2bcd                    sub      ecx, ebp                       
  0x001E5077  8bc2                    mov      eax, edx                       
  0x001E5079  d3e8                    shr      eax, cl                        
  0x001E507B  8bc8                    mov      ecx, eax                       
  0x001E507D  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E5081  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E506E (cond_jump)
  0x001E5083  85c0                    test     eax, eax                       
  0x001E5085  0f842f040000            je       0x1e54ba                       
  0x001E508B  8b869c020000            mov      eax, dword ptr [esi + 0x29c]   
  0x001E5091  89442418                mov      dword ptr [esp + 0x18], eax    
                                        ; XREF: 0x001E5129 (cond_jump), 0x001E513B (jump)
  0x001E5095  8bc3                    mov      eax, ebx                       
  0x001E5097  c1e815                  shr      eax, 0x15                      
  0x001E509A  83fd15                  cmp      ebp, 0x15                      
  0x001E509D  7e0f                    jle      0x1e50ae                       
  0x001E509F  b935000000              mov      ecx, 0x35                      
  0x001E50A4  2bcd                    sub      ecx, ebp                       
  0x001E50A6  d3ea                    shr      edx, cl                        
  0x001E50A8  0bc2                    or       eax, edx                       
  0x001E50AA  8b542420                mov      edx, dword ptr [esp + 0x20]    
                                        ; XREF: 0x001E509D (cond_jump)
  0x001E50AE  a980ffffff              test     eax, 0xffffff80                
  0x001E50B3  7510                    jne      0x1e50c5                       
  0x001E50B5  8b0d60dac000            mov      ecx, dword ptr [0xc0da60]      
  0x001E50BB  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E50BF  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E50C3  eb11                    jmp      0x1e50d6                       
                                        ; XREF: 0x001E50B3 (cond_jump)
  0x001E50C5  8b0d44d8c000            mov      ecx, dword ptr [0xc0d844]      
  0x001E50CB  c1e806                  shr      eax, 6                         
  0x001E50CE  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E50D2  89442410                mov      dword ptr [esp + 0x10], eax    
                                        ; XREF: 0x001E50C3 (jump)
  0x001E50D6  8bc8                    mov      ecx, eax                       
  0x001E50D8  83e10f                  and      ecx, 0xf                       
  0x001E50DB  03e9                    add      ebp, ecx                       
  0x001E50DD  83fd20                  cmp      ebp, 0x20                      
  0x001E50E0  7c37                    jl       0x1e5119                       
  0x001E50E2  0fbe07                  movsx    eax, byte ptr [edi]            
  0x001E50E5  83ed20                  sub      ebp, 0x20                      
  0x001E50E8  8bda                    mov      ebx, edx                       
  0x001E50EA  8bcd                    mov      ecx, ebp                       
  0x001E50EC  d3e3                    shl      ebx, cl                        
  0x001E50EE  0fb64f01                movzx    ecx, byte ptr [edi + 1]        
  0x001E50F2  c1e008                  shl      eax, 8                         
  0x001E50F5  47                      inc      edi                            
  0x001E50F6  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E50FA  0bc1                    or       eax, ecx                       
  0x001E50FC  47                      inc      edi                            
  0x001E50FD  0fb64f01                movzx    ecx, byte ptr [edi + 1]        
  0x001E5101  c1e008                  shl      eax, 8                         
  0x001E5104  0bc2                    or       eax, edx                       
  0x001E5106  47                      inc      edi                            
  0x001E5107  c1e008                  shl      eax, 8                         
  0x001E510A  0bc1                    or       eax, ecx                       
  0x001E510C  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E5110  8bd0                    mov      edx, eax                       
  0x001E5112  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E5116  47                      inc      edi                            
  0x001E5117  eb02                    jmp      0x1e511b                       
                                        ; XREF: 0x001E50E0 (cond_jump)
  0x001E5119  d3e3                    shl      ebx, cl                        
                                        ; XREF: 0x001E5117 (jump)
  0x001E511B  8bc8                    mov      ecx, eax                       
  0x001E511D  c1e902                  shr      ecx, 2                         
  0x001E5120  0fb6c9                  movzx    ecx, cl                        
  0x001E5123  c1e902                  shr      ecx, 2                         
  0x001E5126  83f922                  cmp      ecx, 0x22                      
  0x001E5129  0f8466ffffff            je       0x1e5095                       
  0x001E512F  83f923                  cmp      ecx, 0x23                      
  0x001E5132  750c                    jne      0x1e5140                       
  0x001E5134  83869c02000021          add      dword ptr [esi + 0x29c], 0x21  
  0x001E513B  e955ffffff              jmp      0x1e5095                       
                                        ; XREF: 0x001E5132 (cond_jump)
  0x001E5140  83f924                  cmp      ecx, 0x24                      
  0x001E5143  0f8471030000            je       0x1e54ba                       
  0x001E5149  018e9c020000            add      dword ptr [esi + 0x29c], ecx   
  0x001E514F  8b8e9c020000            mov      ecx, dword ptr [esi + 0x29c]   
  0x001E5155  c1e80a                  shr      eax, 0xa                       
  0x001E5158  8986a4020000            mov      dword ptr [esi + 0x2a4], eax   
  0x001E515E  3b8ea0020000            cmp      ecx, dword ptr [esi + 0x2a0]   
  0x001E5164  0f8f50030000            jg       0x1e54ba                       
  0x001E516A  2b4c2418                sub      ecx, dword ptr [esp + 0x18]    
  0x001E516E  83f9fe                  cmp      ecx, -2                        
  0x001E5171  0f8443030000            je       0x1e54ba                       
  0x001E5177  8b442414                mov      eax, dword ptr [esp + 0x14]    
  0x001E517B  85c0                    test     eax, eax                       
  0x001E517D  752b                    jne      0x1e51aa                       
  0x001E517F  83f901                  cmp      ecx, 1                         
  0x001E5182  7626                    jbe      0x1e51aa                       
  0x001E5184  51                      push     ecx                            
  0x001E5185  56                      push     esi                            
  0x001E5186  ff9630020000            call     dword ptr [esi + 0x230]        
  0x001E518C  8b542428                mov      edx, dword ptr [esp + 0x28]    
  0x001E5190  b800040000              mov      eax, 0x400                     
  0x001E5195  83c408                  add      esp, 8                         
  0x001E5198  8986ac020000            mov      dword ptr [esi + 0x2ac], eax   
  0x001E519E  8986b4020000            mov      dword ptr [esi + 0x2b4], eax   
  0x001E51A4  8986b0020000            mov      dword ptr [esi + 0x2b0], eax   
                                        ; XREF: 0x001E517D (cond_jump), 0x001E5182 (cond_jump)
  0x001E51AA  f686a402000020          test     byte ptr [esi + 0x2a4], 0x20   
  0x001E51B1  7575                    jne      0x1e5228                       
  0x001E51B3  8bc3                    mov      eax, ebx                       
  0x001E51B5  c1e81a                  shr      eax, 0x1a                      
  0x001E51B8  83fd1a                  cmp      ebp, 0x1a                      
  0x001E51BB  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E51BF  7e13                    jle      0x1e51d4                       
  0x001E51C1  b93a000000              mov      ecx, 0x3a                      
  0x001E51C6  2bcd                    sub      ecx, ebp                       
  0x001E51C8  8bc2                    mov      eax, edx                       
  0x001E51CA  d3e8                    shr      eax, cl                        
  0x001E51CC  8bc8                    mov      ecx, eax                       
  0x001E51CE  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E51D2  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E51BF (cond_jump)
  0x001E51D4  8b0d00dec000            mov      ecx, dword ptr [0xc0de00]      
  0x001E51DA  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E51DE  8bc8                    mov      ecx, eax                       
  0x001E51E0  c1e908                  shr      ecx, 8                         
  0x001E51E3  898ea4020000            mov      dword ptr [esi + 0x2a4], ecx   
  0x001E51E9  0fb6c8                  movzx    ecx, al                        
  0x001E51EC  03e9                    add      ebp, ecx                       
  0x001E51EE  83fd20                  cmp      ebp, 0x20                      
  0x001E51F1  7c33                    jl       0x1e5226                       
  0x001E51F3  0fbe07                  movsx    eax, byte ptr [edi]            
  0x001E51F6  83ed20                  sub      ebp, 0x20                      
  0x001E51F9  8bda                    mov      ebx, edx                       
  0x001E51FB  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E51FF  8bcd                    mov      ecx, ebp                       
  0x001E5201  d3e3                    shl      ebx, cl                        
  0x001E5203  47                      inc      edi                            
  0x001E5204  0fb64f01                movzx    ecx, byte ptr [edi + 1]        
  0x001E5208  c1e008                  shl      eax, 8                         
  0x001E520B  0bc2                    or       eax, edx                       
  0x001E520D  47                      inc      edi                            
  0x001E520E  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E5212  c1e008                  shl      eax, 8                         
  0x001E5215  0bc1                    or       eax, ecx                       
  0x001E5217  47                      inc      edi                            
  0x001E5218  c1e008                  shl      eax, 8                         
  0x001E521B  0bc2                    or       eax, edx                       
  0x001E521D  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E5221  47                      inc      edi                            
  0x001E5222  8bd0                    mov      edx, eax                       
  0x001E5224  eb02                    jmp      0x1e5228                       
                                        ; XREF: 0x001E51F1 (cond_jump)
  0x001E5226  d3e3                    shl      ebx, cl                        
                                        ; XREF: 0x001E51B1 (cond_jump), 0x001E5224 (jump)
  0x001E5228  f686a402000010          test     byte ptr [esi + 0x2a4], 0x10   
  0x001E522F  7461                    je       0x1e5292                       
  0x001E5231  83fd1b                  cmp      ebp, 0x1b                      
  0x001E5234  7c4b                    jl       0x1e5281                       
  0x001E5236  83ed1b                  sub      ebp, 0x1b                      
  0x001E5239  7416                    je       0x1e5251                       
  0x001E523B  b905000000              mov      ecx, 5                         
  0x001E5240  2bcd                    sub      ecx, ebp                       
  0x001E5242  8bc2                    mov      eax, edx                       
  0x001E5244  d3e8                    shr      eax, cl                        
  0x001E5246  8bcd                    mov      ecx, ebp                       
  0x001E5248  0bc3                    or       eax, ebx                       
  0x001E524A  c1e81b                  shr      eax, 0x1b                      
  0x001E524D  d3e2                    shl      edx, cl                        
  0x001E524F  eb05                    jmp      0x1e5256                       
                                        ; XREF: 0x001E5239 (cond_jump)
  0x001E5251  8bc3                    mov      eax, ebx                       
  0x001E5253  c1e81b                  shr      eax, 0x1b                      
                                        ; XREF: 0x001E524F (jump)
  0x001E5256  0fbe0f                  movsx    ecx, byte ptr [edi]            
  0x001E5259  47                      inc      edi                            
  0x001E525A  c1e108                  shl      ecx, 8                         
  0x001E525D  8bda                    mov      ebx, edx                       
  0x001E525F  0fb617                  movzx    edx, byte ptr [edi]            
  0x001E5262  0bca                    or       ecx, edx                       
  0x001E5264  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E5268  47                      inc      edi                            
  0x001E5269  c1e108                  shl      ecx, 8                         
  0x001E526C  0bca                    or       ecx, edx                       
  0x001E526E  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E5272  47                      inc      edi                            
  0x001E5273  c1e108                  shl      ecx, 8                         
  0x001E5276  0bca                    or       ecx, edx                       
  0x001E5278  894c2420                mov      dword ptr [esp + 0x20], ecx    
  0x001E527C  47                      inc      edi                            
  0x001E527D  8bd1                    mov      edx, ecx                       
  0x001E527F  eb0b                    jmp      0x1e528c                       
                                        ; XREF: 0x001E5234 (cond_jump)
  0x001E5281  8bc3                    mov      eax, ebx                       
  0x001E5283  83c505                  add      ebp, 5                         
  0x001E5286  c1e81b                  shr      eax, 0x1b                      
  0x001E5289  c1e305                  shl      ebx, 5                         
                                        ; XREF: 0x001E527F (jump)
  0x001E528C  898650020000            mov      dword ptr [esi + 0x250], eax   
                                        ; XREF: 0x001E522F (cond_jump)
  0x001E5292  f686a402000008          test     byte ptr [esi + 0x2a4], 8      
  0x001E5299  7461                    je       0x1e52fc                       
  0x001E529B  8d8664020000            lea      eax, [esi + 0x264]             
  0x001E52A1  50                      push     eax                            
  0x001E52A2  8d8e6c020000            lea      ecx, [esi + 0x26c]             
  0x001E52A8  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001E52AB  51                      push     ecx                            
  0x001E52AC  8dbe54020000            lea      edi, [esi + 0x254]             
  0x001E52B2  57                      push     edi                            
  0x001E52B3  56                      push     esi                            
  0x001E52B4  891e                    mov      dword ptr [esi], ebx           
  0x001E52B6  895604                  mov      dword ptr [esi + 4], edx       
  0x001E52B9  896e08                  mov      dword ptr [esi + 8], ebp       
  0x001E52BC  e8bffbffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E52C1  8d9668020000            lea      edx, [esi + 0x268]             
  0x001E52C7  52                      push     edx                            
  0x001E52C8  8944242c                mov      dword ptr [esp + 0x2c], eax    
  0x001E52CC  8d8670020000            lea      eax, [esi + 0x270]             
  0x001E52D2  50                      push     eax                            
  0x001E52D3  57                      push     edi                            
  0x001E52D4  56                      push     esi                            
  0x001E52D5  e8a6fbffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E52DA  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E52DD  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E52DF  8b6e08                  mov      ebp, dword ptr [esi + 8]       
  0x001E52E2  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E52E5  894c2440                mov      dword ptr [esp + 0x40], ecx    
  0x001E52E9  8b4c2438                mov      ecx, dword ptr [esp + 0x38]    
  0x001E52ED  83c420                  add      esp, 0x20                      
  0x001E52F0  0bc1                    or       eax, ecx                       
  0x001E52F2  0f85c2010000            jne      0x1e54ba                       
  0x001E52F8  8b542420                mov      edx, dword ptr [esp + 0x20]    
                                        ; XREF: 0x001E5299 (cond_jump)
  0x001E52FC  f686a402000004          test     byte ptr [esi + 0x2a4], 4      
  0x001E5303  7461                    je       0x1e5366                       
  0x001E5305  895604                  mov      dword ptr [esi + 4], edx       
  0x001E5308  8d9688020000            lea      edx, [esi + 0x288]             
  0x001E530E  52                      push     edx                            
  0x001E530F  8d8690020000            lea      eax, [esi + 0x290]             
  0x001E5315  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001E5318  50                      push     eax                            
  0x001E5319  8dbe78020000            lea      edi, [esi + 0x278]             
  0x001E531F  57                      push     edi                            
  0x001E5320  56                      push     esi                            
  0x001E5321  891e                    mov      dword ptr [esi], ebx           
  0x001E5323  896e08                  mov      dword ptr [esi + 8], ebp       
  0x001E5326  e855fbffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E532B  8d8e8c020000            lea      ecx, [esi + 0x28c]             
  0x001E5331  51                      push     ecx                            
  0x001E5332  8d9694020000            lea      edx, [esi + 0x294]             
  0x001E5338  52                      push     edx                            
  0x001E5339  57                      push     edi                            
  0x001E533A  56                      push     esi                            
  0x001E533B  89442438                mov      dword ptr [esp + 0x38], eax    
  0x001E533F  e83cfbffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E5344  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E5347  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E5349  8b6e08                  mov      ebp, dword ptr [esi + 8]       
  0x001E534C  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E534F  894c2440                mov      dword ptr [esp + 0x40], ecx    
  0x001E5353  8b4c2438                mov      ecx, dword ptr [esp + 0x38]    
  0x001E5357  83c420                  add      esp, 0x20                      
  0x001E535A  0bc1                    or       eax, ecx                       
  0x001E535C  0f8558010000            jne      0x1e54ba                       
  0x001E5362  8b542420                mov      edx, dword ptr [esp + 0x20]    
                                        ; XREF: 0x001E5303 (cond_jump)
  0x001E5366  f686a402000002          test     byte ptr [esi + 0x2a4], 2      
  0x001E536D  747a                    je       0x1e53e9                       
  0x001E536F  8bc3                    mov      eax, ebx                       
  0x001E5371  c1e817                  shr      eax, 0x17                      
  0x001E5374  83fd17                  cmp      ebp, 0x17                      
  0x001E5377  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E537B  7e13                    jle      0x1e5390                       
  0x001E537D  b937000000              mov      ecx, 0x37                      
  0x001E5382  2bcd                    sub      ecx, ebp                       
  0x001E5384  8bc2                    mov      eax, edx                       
  0x001E5386  d3e8                    shr      eax, cl                        
  0x001E5388  8bc8                    mov      ecx, eax                       
  0x001E538A  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E538E  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E537B (cond_jump)
  0x001E5390  8b0d64dec000            mov      ecx, dword ptr [0xc0de64]      
  0x001E5396  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E539A  8bc8                    mov      ecx, eax                       
  0x001E539C  83e1f0                  and      ecx, 0xfffffff0                
  0x001E539F  c1e110                  shl      ecx, 0x10                      
  0x001E53A2  898ea8020000            mov      dword ptr [esi + 0x2a8], ecx   
  0x001E53A8  0fb6c8                  movzx    ecx, al                        
  0x001E53AB  03e9                    add      ebp, ecx                       
  0x001E53AD  83fd20                  cmp      ebp, 0x20                      
  0x001E53B0  7c33                    jl       0x1e53e5                       
  0x001E53B2  0fbe07                  movsx    eax, byte ptr [edi]            
  0x001E53B5  83ed20                  sub      ebp, 0x20                      
  0x001E53B8  8bda                    mov      ebx, edx                       
  0x001E53BA  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E53BE  8bcd                    mov      ecx, ebp                       
  0x001E53C0  d3e3                    shl      ebx, cl                        
  0x001E53C2  47                      inc      edi                            
  0x001E53C3  0fb64f01                movzx    ecx, byte ptr [edi + 1]        
  0x001E53C7  c1e008                  shl      eax, 8                         
  0x001E53CA  0bc2                    or       eax, edx                       
  0x001E53CC  47                      inc      edi                            
  0x001E53CD  0fb65701                movzx    edx, byte ptr [edi + 1]        
  0x001E53D1  c1e008                  shl      eax, 8                         
  0x001E53D4  0bc1                    or       eax, ecx                       
  0x001E53D6  47                      inc      edi                            
  0x001E53D7  c1e008                  shl      eax, 8                         
  0x001E53DA  0bc2                    or       eax, edx                       
  0x001E53DC  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E53E0  47                      inc      edi                            
  0x001E53E1  8bd0                    mov      edx, eax                       
  0x001E53E3  eb0e                    jmp      0x1e53f3                       
                                        ; XREF: 0x001E53B0 (cond_jump)
  0x001E53E5  d3e3                    shl      ebx, cl                        
  0x001E53E7  eb0a                    jmp      0x1e53f3                       
                                        ; XREF: 0x001E536D (cond_jump)
  0x001E53E9  c786a802000000000000    mov      dword ptr [esi + 0x2a8], 0     
                                        ; XREF: 0x001E53E3 (jump), 0x001E53E7 (jump)
  0x001E53F3  f686a402000001          test     byte ptr [esi + 0x2a4], 1      
  0x001E53FA  891e                    mov      dword ptr [esi], ebx           
  0x001E53FC  895604                  mov      dword ptr [esi + 4], edx       
  0x001E53FF  896e08                  mov      dword ptr [esi + 8], ebp       
  0x001E5402  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001E5405  7455                    je       0x1e545c                       
  0x001E5407  56                      push     esi                            
  0x001E5408  ff9634020000            call     dword ptr [esi + 0x234]        
  0x001E540E  56                      push     esi                            
  0x001E540F  ff963c020000            call     dword ptr [esi + 0x23c]        
  0x001E5415  83c408                  add      esp, 8                         
  0x001E5418  33c0                    xor      eax, eax                       
  0x001E541A  898664020000            mov      dword ptr [esi + 0x264], eax   
  0x001E5420  898668020000            mov      dword ptr [esi + 0x268], eax   
  0x001E5426  89866c020000            mov      dword ptr [esi + 0x26c], eax   
  0x001E542C  898670020000            mov      dword ptr [esi + 0x270], eax   
  0x001E5432  898688020000            mov      dword ptr [esi + 0x288], eax   
  0x001E5438  89868c020000            mov      dword ptr [esi + 0x28c], eax   
  0x001E543E  898690020000            mov      dword ptr [esi + 0x290], eax   
  0x001E5444  898694020000            mov      dword ptr [esi + 0x294], eax   
  0x001E544A  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E544D  894c2420                mov      dword ptr [esp + 0x20], ecx    
  0x001E5451  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E5455  8bd1                    mov      edx, ecx                       
  0x001E5457  e9fefbffff              jmp      0x1e505a                       
                                        ; XREF: 0x001E5405 (cond_jump)
  0x001E545C  8b86a8020000            mov      eax, dword ptr [esi + 0x2a8]   
  0x001E5462  85c0                    test     eax, eax                       
  0x001E5464  740a                    je       0x1e5470                       
  0x001E5466  56                      push     esi                            
  0x001E5467  ff9638020000            call     dword ptr [esi + 0x238]        
  0x001E546D  83c404                  add      esp, 4                         
                                        ; XREF: 0x001E5464 (cond_jump)
  0x001E5470  8b86a4020000            mov      eax, dword ptr [esi + 0x2a4]   
  0x001E5476  c1f802                  sar      eax, 2                         
  0x001E5479  83e003                  and      eax, 3                         
  0x001E547C  8b848640020000          mov      eax, dword ptr [esi + eax*4 + 0x240] 
  0x001E5483  56                      push     esi                            
  0x001E5484  898640020000            mov      dword ptr [esi + 0x240], eax   
  0x001E548A  ffd0                    call     eax                            
  0x001E548C  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E548F  b800040000              mov      eax, 0x400                     
  0x001E5494  83c404                  add      esp, 4                         
  0x001E5497  8986ac020000            mov      dword ptr [esi + 0x2ac], eax   
  0x001E549D  8986b4020000            mov      dword ptr [esi + 0x2b4], eax   
  0x001E54A3  8986b0020000            mov      dword ptr [esi + 0x2b0], eax   
  0x001E54A9  33c0                    xor      eax, eax                       
  0x001E54AB  894c2420                mov      dword ptr [esp + 0x20], ecx    
  0x001E54AF  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E54B3  8bd1                    mov      edx, ecx                       
  0x001E54B5  e9a0fbffff              jmp      0x1e505a                       
                                        ; XREF: 0x001E5085 (cond_jump), 0x001E5143 (cond_jump), 0x001E5164 (cond_jump), 0x001E5171 (cond_jump), 0x001E52F2 (cond_jump), ... (+1 more)
  0x001E54BA  8b542424                mov      edx, dword ptr [esp + 0x24]    
  0x001E54BE  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E54C0  8b74242c                mov      esi, dword ptr [esp + 0x2c]    
  0x001E54C4  83c507                  add      ebp, 7                         
  0x001E54C7  c1fd03                  sar      ebp, 3                         
  0x001E54CA  8d4c2ff8                lea      ecx, [edi + ebp - 8]           
  0x001E54CE  8b3e                    mov      edi, dword ptr [esi]           
  0x001E54D0  8bc1                    mov      eax, ecx                       
  0x001E54D2  2bc3                    sub      eax, ebx                       
  0x001E54D4  03f8                    add      edi, eax                       
  0x001E54D6  893e                    mov      dword ptr [esi], edi           
  0x001E54D8  8b7c2428                mov      edi, dword ptr [esp + 0x28]    
  0x001E54DC  8b2f                    mov      ebp, dword ptr [edi]           
  0x001E54DE  56                      push     esi                            
  0x001E54DF  2be8                    sub      ebp, eax                       
  0x001E54E1  57                      push     edi                            
  0x001E54E2  892f                    mov      dword ptr [edi], ebp           
  0x001E54E4  52                      push     edx                            
  0x001E54E5  890a                    mov      dword ptr [edx], ecx           
  0x001E54E7  e8d4bcf9ff              call     0x1811c0                       ; -> sub_001811C0
  0x001E54EC  83c40c                  add      esp, 0xc                       
  0x001E54EF  5f                      pop      edi                            
  0x001E54F0  5e                      pop      esi                            
  0x001E54F1  5d                      pop      ebp                            
  0x001E54F2  5b                      pop      ebx                            
  0x001E54F3  83c40c                  add      esp, 0xc                       
  0x001E54F6  c3                      ret                                     
  0x001E54F7  90                      nop                                     
  0x001E54F8  90                      nop                                     
  0x001E54F9  90                      nop                                     
  0x001E54FA  90                      nop                                     
  0x001E54FB  90                      nop                                     
  0x001E54FC  90                      nop                                     
  0x001E54FD  90                      nop                                     
  0x001E54FE  90                      nop                                     
  0x001E54FF  90                      nop                                     
