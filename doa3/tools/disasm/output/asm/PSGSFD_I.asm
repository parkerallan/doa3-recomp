; ============================================================
; Section: PSGSFD_I
; VA: 0x001E4C40 - 0x001E4E30
; Size: 496 bytes (0.5 KB)
; Functions: 0
; Instructions: 177
; ============================================================

  0x001E4C40  51                      push     ecx                            
  0x001E4C41  53                      push     ebx                            
  0x001E4C42  55                      push     ebp                            
  0x001E4C43  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E4C47  56                      push     esi                            
  0x001E4C48  57                      push     edi                            
                                        ; XREF: 0x001E4DE6 (jump)
  0x001E4C49  8b7d00                  mov      edi, dword ptr [ebp]           
  0x001E4C4C  8b5508                  mov      edx, dword ptr [ebp + 8]       
  0x001E4C4F  8b5d04                  mov      ebx, dword ptr [ebp + 4]       
  0x001E4C52  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E4C55  8bcf                    mov      ecx, edi                       
  0x001E4C57  c1e909                  shr      ecx, 9                         
  0x001E4C5A  83fa09                  cmp      edx, 9                         
  0x001E4C5D  895c2418                mov      dword ptr [esp + 0x18], ebx    
  0x001E4C61  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E4C65  7e11                    jle      0x1e4c78                       
  0x001E4C67  b929000000              mov      ecx, 0x29                      
  0x001E4C6C  2bca                    sub      ecx, edx                       
  0x001E4C6E  8bf3                    mov      esi, ebx                       
  0x001E4C70  d3ee                    shr      esi, cl                        
  0x001E4C72  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E4C76  0bce                    or       ecx, esi                       
                                        ; XREF: 0x001E4C65 (cond_jump)
  0x001E4C78  85c9                    test     ecx, ecx                       
  0x001E4C7A  0f846b010000            je       0x1e4deb                       
  0x001E4C80  8b8d9c020000            mov      ecx, dword ptr [ebp + 0x29c]   
  0x001E4C86  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E4C8A  8d9b00000000            lea      ebx, [ebx]                     
                                        ; XREF: 0x001E4D15 (cond_jump), 0x001E4D27 (jump)
  0x001E4C90  8bf7                    mov      esi, edi                       
  0x001E4C92  c1ee14                  shr      esi, 0x14                      
  0x001E4C95  83fa14                  cmp      edx, 0x14                      
  0x001E4C98  7e0f                    jle      0x1e4ca9                       
  0x001E4C9A  b934000000              mov      ecx, 0x34                      
  0x001E4C9F  2bca                    sub      ecx, edx                       
  0x001E4CA1  d3eb                    shr      ebx, cl                        
  0x001E4CA3  0bf3                    or       esi, ebx                       
  0x001E4CA5  8b5c2418                mov      ebx, dword ptr [esp + 0x18]    
                                        ; XREF: 0x001E4C98 (cond_jump)
  0x001E4CA9  f7c600ffffff            test     esi, 0xffffff00                
  0x001E4CAF  7508                    jne      0x1e4cb9                       
  0x001E4CB1  8b0d44dfc000            mov      ecx, dword ptr [0xc0df44]      
  0x001E4CB7  eb09                    jmp      0x1e4cc2                       
                                        ; XREF: 0x001E4CAF (cond_jump)
  0x001E4CB9  8b0d20dcc000            mov      ecx, dword ptr [0xc0dc20]      
  0x001E4CBF  c1ee06                  shr      esi, 6                         
                                        ; XREF: 0x001E4CB7 (jump)
  0x001E4CC2  0fbf3471                movsx    esi, word ptr [ecx + esi*2]    
  0x001E4CC6  8bce                    mov      ecx, esi                       
  0x001E4CC8  83e10f                  and      ecx, 0xf                       
  0x001E4CCB  03d1                    add      edx, ecx                       
  0x001E4CCD  83fa20                  cmp      edx, 0x20                      
  0x001E4CD0  7c33                    jl       0x1e4d05                       
  0x001E4CD2  83ea20                  sub      edx, 0x20                      
  0x001E4CD5  8bfb                    mov      edi, ebx                       
  0x001E4CD7  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E4CDB  8bca                    mov      ecx, edx                       
  0x001E4CDD  d3e7                    shl      edi, cl                        
  0x001E4CDF  0fbe08                  movsx    ecx, byte ptr [eax]            
  0x001E4CE2  40                      inc      eax                            
  0x001E4CE3  c1e108                  shl      ecx, 8                         
  0x001E4CE6  0bcb                    or       ecx, ebx                       
  0x001E4CE8  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E4CEC  40                      inc      eax                            
  0x001E4CED  c1e108                  shl      ecx, 8                         
  0x001E4CF0  0bcb                    or       ecx, ebx                       
  0x001E4CF2  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E4CF6  40                      inc      eax                            
  0x001E4CF7  c1e108                  shl      ecx, 8                         
  0x001E4CFA  0bcb                    or       ecx, ebx                       
  0x001E4CFC  8bd9                    mov      ebx, ecx                       
  0x001E4CFE  895c2418                mov      dword ptr [esp + 0x18], ebx    
  0x001E4D02  40                      inc      eax                            
  0x001E4D03  eb02                    jmp      0x1e4d07                       
                                        ; XREF: 0x001E4CD0 (cond_jump)
  0x001E4D05  d3e7                    shl      edi, cl                        
                                        ; XREF: 0x001E4D03 (jump)
  0x001E4D07  8bce                    mov      ecx, esi                       
  0x001E4D09  c1e902                  shr      ecx, 2                         
  0x001E4D0C  0fb6c9                  movzx    ecx, cl                        
  0x001E4D0F  c1e902                  shr      ecx, 2                         
  0x001E4D12  83f922                  cmp      ecx, 0x22                      
  0x001E4D15  0f8475ffffff            je       0x1e4c90                       
  0x001E4D1B  83f923                  cmp      ecx, 0x23                      
  0x001E4D1E  750c                    jne      0x1e4d2c                       
  0x001E4D20  83859c02000021          add      dword ptr [ebp + 0x29c], 0x21  
  0x001E4D27  e964ffffff              jmp      0x1e4c90                       
                                        ; XREF: 0x001E4D1E (cond_jump)
  0x001E4D2C  83f924                  cmp      ecx, 0x24                      
  0x001E4D2F  0f84b6000000            je       0x1e4deb                       
  0x001E4D35  018d9c020000            add      dword ptr [ebp + 0x29c], ecx   
  0x001E4D3B  8b8d9c020000            mov      ecx, dword ptr [ebp + 0x29c]   
  0x001E4D41  c1ee0a                  shr      esi, 0xa                       
  0x001E4D44  89b5a4020000            mov      dword ptr [ebp + 0x2a4], esi   
  0x001E4D4A  3b8da0020000            cmp      ecx, dword ptr [ebp + 0x2a0]   
  0x001E4D50  0f8f95000000            jg       0x1e4deb                       
  0x001E4D56  2b4c2410                sub      ecx, dword ptr [esp + 0x10]    
  0x001E4D5A  83f9fe                  cmp      ecx, -2                        
  0x001E4D5D  0f8488000000            je       0x1e4deb                       
  0x001E4D63  f685a402000010          test     byte ptr [ebp + 0x2a4], 0x10   
  0x001E4D6A  745d                    je       0x1e4dc9                       
  0x001E4D6C  83fa1b                  cmp      edx, 0x1b                      
  0x001E4D6F  7c47                    jl       0x1e4db8                       
  0x001E4D71  83ea1b                  sub      edx, 0x1b                      
  0x001E4D74  7416                    je       0x1e4d8c                       
  0x001E4D76  b905000000              mov      ecx, 5                         
  0x001E4D7B  2bca                    sub      ecx, edx                       
  0x001E4D7D  8bf3                    mov      esi, ebx                       
  0x001E4D7F  d3ee                    shr      esi, cl                        
  0x001E4D81  8bca                    mov      ecx, edx                       
  0x001E4D83  0bf7                    or       esi, edi                       
  0x001E4D85  c1ee1b                  shr      esi, 0x1b                      
  0x001E4D88  d3e3                    shl      ebx, cl                        
  0x001E4D8A  eb05                    jmp      0x1e4d91                       
                                        ; XREF: 0x001E4D74 (cond_jump)
  0x001E4D8C  8bf7                    mov      esi, edi                       
  0x001E4D8E  c1ee1b                  shr      esi, 0x1b                      
                                        ; XREF: 0x001E4D8A (jump)
  0x001E4D91  0fbe08                  movsx    ecx, byte ptr [eax]            
  0x001E4D94  40                      inc      eax                            
  0x001E4D95  c1e108                  shl      ecx, 8                         
  0x001E4D98  8bfb                    mov      edi, ebx                       
  0x001E4D9A  0fb618                  movzx    ebx, byte ptr [eax]            
  0x001E4D9D  0bcb                    or       ecx, ebx                       
  0x001E4D9F  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E4DA3  40                      inc      eax                            
  0x001E4DA4  c1e108                  shl      ecx, 8                         
  0x001E4DA7  0bcb                    or       ecx, ebx                       
  0x001E4DA9  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E4DAD  40                      inc      eax                            
  0x001E4DAE  c1e108                  shl      ecx, 8                         
  0x001E4DB1  0bcb                    or       ecx, ebx                       
  0x001E4DB3  8bd9                    mov      ebx, ecx                       
  0x001E4DB5  40                      inc      eax                            
  0x001E4DB6  eb0b                    jmp      0x1e4dc3                       
                                        ; XREF: 0x001E4D6F (cond_jump)
  0x001E4DB8  8bf7                    mov      esi, edi                       
  0x001E4DBA  83c205                  add      edx, 5                         
  0x001E4DBD  c1ee1b                  shr      esi, 0x1b                      
  0x001E4DC0  c1e705                  shl      edi, 5                         
                                        ; XREF: 0x001E4DB6 (jump)
  0x001E4DC3  89b550020000            mov      dword ptr [ebp + 0x250], esi   
                                        ; XREF: 0x001E4D6A (cond_jump)
  0x001E4DC9  55                      push     ebp                            
  0x001E4DCA  897d00                  mov      dword ptr [ebp], edi           
  0x001E4DCD  895d04                  mov      dword ptr [ebp + 4], ebx       
  0x001E4DD0  895508                  mov      dword ptr [ebp + 8], edx       
  0x001E4DD3  89450c                  mov      dword ptr [ebp + 0xc], eax     
  0x001E4DD6  ff9534020000            call     dword ptr [ebp + 0x234]        
  0x001E4DDC  55                      push     ebp                            
  0x001E4DDD  ff953c020000            call     dword ptr [ebp + 0x23c]        
  0x001E4DE3  83c408                  add      esp, 8                         
  0x001E4DE6  e95efeffff              jmp      0x1e4c49                       
                                        ; XREF: 0x001E4C7A (cond_jump), 0x001E4D2F (cond_jump), 0x001E4D50 (cond_jump), 0x001E4D5D (cond_jump)
  0x001E4DEB  8b742424                mov      esi, dword ptr [esp + 0x24]    
  0x001E4DEF  8b3e                    mov      edi, dword ptr [esi]           
  0x001E4DF1  83c207                  add      edx, 7                         
  0x001E4DF4  c1fa03                  sar      edx, 3                         
  0x001E4DF7  8d4c02f8                lea      ecx, [edx + eax - 8]           
  0x001E4DFB  8b54241c                mov      edx, dword ptr [esp + 0x1c]    
  0x001E4DFF  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E4E01  8bc1                    mov      eax, ecx                       
  0x001E4E03  2bc3                    sub      eax, ebx                       
  0x001E4E05  03f8                    add      edi, eax                       
  0x001E4E07  893e                    mov      dword ptr [esi], edi           
  0x001E4E09  8b7c2420                mov      edi, dword ptr [esp + 0x20]    
  0x001E4E0D  8b2f                    mov      ebp, dword ptr [edi]           
  0x001E4E0F  56                      push     esi                            
  0x001E4E10  2be8                    sub      ebp, eax                       
  0x001E4E12  57                      push     edi                            
  0x001E4E13  892f                    mov      dword ptr [edi], ebp           
  0x001E4E15  52                      push     edx                            
  0x001E4E16  890a                    mov      dword ptr [edx], ecx           
  0x001E4E18  e8a3c3f9ff              call     0x1811c0                       ; -> sub_001811C0
  0x001E4E1D  83c40c                  add      esp, 0xc                       
  0x001E4E20  5f                      pop      edi                            
  0x001E4E21  5e                      pop      esi                            
  0x001E4E22  5d                      pop      ebp                            
  0x001E4E23  5b                      pop      ebx                            
  0x001E4E24  59                      pop      ecx                            
  0x001E4E25  c3                      ret                                     
  0x001E4E26  90                      nop                                     
  0x001E4E27  90                      nop                                     
  0x001E4E28  90                      nop                                     
  0x001E4E29  90                      nop                                     
  0x001E4E2A  90                      nop                                     
  0x001E4E2B  90                      nop                                     
  0x001E4E2C  90                      nop                                     
  0x001E4E2D  90                      nop                                     
  0x001E4E2E  90                      nop                                     
  0x001E4E2F  90                      nop                                     
