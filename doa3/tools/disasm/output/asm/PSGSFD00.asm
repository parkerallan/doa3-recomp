; ============================================================
; Section: PSGSFD00
; VA: 0x001E1AA0 - 0x001E4C30
; Size: 12688 bytes (12.4 KB)
; Functions: 10
; Instructions: 4269
; ============================================================

  0x001E1AA0  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E1AA4  8b88f0010000            mov      ecx, dword ptr [eax + 0x1f0]   
  0x001E1AAA  8d9180010000            lea      edx, [ecx + 0x180]             
  0x001E1AB0  8990f0010000            mov      dword ptr [eax + 0x1f0], edx   
  0x001E1AB6  8b5038                  mov      edx, dword ptr [eax + 0x38]    
  0x001E1AB9  52                      push     edx                            
  0x001E1ABA  8d902c010000            lea      edx, [eax + 0x12c]             
  0x001E1AC0  52                      push     edx                            
  0x001E1AC1  51                      push     ecx                            
  0x001E1AC2  05e0020000              add      eax, 0x2e0                     
  0x001E1AC7  50                      push     eax                            
  0x001E1AC8  e833220000              call     0x1e3d00                       ; -> sub_001E3D00
  0x001E1ACD  83c410                  add      esp, 0x10                      
  0x001E1AD0  c3                      ret                                     
  0x001E1AD1  90                      nop                                     
  0x001E1AD2  90                      nop                                     
  0x001E1AD3  90                      nop                                     
  0x001E1AD4  90                      nop                                     
  0x001E1AD5  90                      nop                                     
  0x001E1AD6  90                      nop                                     
  0x001E1AD7  90                      nop                                     
  0x001E1AD8  90                      nop                                     
  0x001E1AD9  90                      nop                                     
  0x001E1ADA  90                      nop                                     
  0x001E1ADB  90                      nop                                     
  0x001E1ADC  90                      nop                                     
  0x001E1ADD  90                      nop                                     
  0x001E1ADE  90                      nop                                     
  0x001E1ADF  90                      nop                                     
  0x001E1AE0  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E1AE4  53                      push     ebx                            
  0x001E1AE5  8b98f0010000            mov      ebx, dword ptr [eax + 0x1f0]   
  0x001E1AEB  55                      push     ebp                            
  0x001E1AEC  56                      push     esi                            
  0x001E1AED  57                      push     edi                            
  0x001E1AEE  8d9380010000            lea      edx, [ebx + 0x180]             
  0x001E1AF4  8990f0010000            mov      dword ptr [eax + 0x1f0], edx   
  0x001E1AFA  8b909c020000            mov      edx, dword ptr [eax + 0x29c]   
  0x001E1B00  0fbeb450680c0000        movsx    esi, byte ptr [eax + edx*2 + 0xc68] 
  0x001E1B08  0fbebc50690c0000        movsx    edi, byte ptr [eax + edx*2 + 0xc69] 
  0x001E1B10  0fbfa8ee010000          movsx    ebp, word ptr [eax + 0x1ee]    
  0x001E1B17  8d9450680c0000          lea      edx, [eax + edx*2 + 0xc68]     
  0x001E1B1E  0fbf90ec010000          movsx    edx, word ptr [eax + 0x1ec]    
  0x001E1B25  c1e603                  shl      esi, 3                         
  0x001E1B28  0fafd6                  imul     edx, esi                       
  0x001E1B2B  03f6                    add      esi, esi                       
  0x001E1B2D  0faff5                  imul     esi, ebp                       
  0x001E1B30  c1e703                  shl      edi, 3                         
  0x001E1B33  03d7                    add      edx, edi                       
  0x001E1B35  8d88f8000000            lea      ecx, [eax + 0xf8]              
  0x001E1B3B  8d347e                  lea      esi, [esi + edi*2]             
  0x001E1B3E  8bb8e0010000            mov      edi, dword ptr [eax + 0x1e0]   
  0x001E1B44  03fa                    add      edi, edx                       
  0x001E1B46  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E1B49  8bb8e4010000            mov      edi, dword ptr [eax + 0x1e4]   
  0x001E1B4F  03fa                    add      edi, edx                       
  0x001E1B51  89790c                  mov      dword ptr [ecx + 0xc], edi     
  0x001E1B54  8b90e8010000            mov      edx, dword ptr [eax + 0x1e8]   
  0x001E1B5A  03d6                    add      edx, esi                       
  0x001E1B5C  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E1B5F  83c208                  add      edx, 8                         
  0x001E1B62  89511c                  mov      dword ptr [ecx + 0x1c], edx    
  0x001E1B65  8b5114                  mov      edx, dword ptr [ecx + 0x14]    
  0x001E1B68  8d14ea                  lea      edx, [edx + ebp*8]             
  0x001E1B6B  895124                  mov      dword ptr [ecx + 0x24], edx    
  0x001E1B6E  83c208                  add      edx, 8                         
  0x001E1B71  89512c                  mov      dword ptr [ecx + 0x2c], edx    
  0x001E1B74  8b5038                  mov      edx, dword ptr [eax + 0x38]    
  0x001E1B77  52                      push     edx                            
  0x001E1B78  51                      push     ecx                            
  0x001E1B79  05e0020000              add      eax, 0x2e0                     
  0x001E1B7E  53                      push     ebx                            
  0x001E1B7F  50                      push     eax                            
  0x001E1B80  e87b210000              call     0x1e3d00                       ; -> sub_001E3D00
  0x001E1B85  83c410                  add      esp, 0x10                      
  0x001E1B88  5f                      pop      edi                            
  0x001E1B89  5e                      pop      esi                            
  0x001E1B8A  5d                      pop      ebp                            
  0x001E1B8B  5b                      pop      ebx                            
  0x001E1B8C  c3                      ret                                     
  0x001E1B8D  90                      nop                                     
  0x001E1B8E  90                      nop                                     
  0x001E1B8F  90                      nop                                     

; ============================================================
; Function: sub_001E1B90
; Start: 0x001E1B90  End: 0x001E1D8C  Size: 508 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E1B90:
  0x001E1B90  83ec30                  sub      esp, 0x30                      
  0x001E1B93  8b442434                mov      eax, dword ptr [esp + 0x34]    
  0x001E1B97  8b4c2440                mov      ecx, dword ptr [esp + 0x40]    
  0x001E1B9B  53                      push     ebx                            
  0x001E1B9C  55                      push     ebp                            
  0x001E1B9D  0fbf690e                movsx    ebp, word ptr [ecx + 0xe]      
  0x001E1BA1  56                      push     esi                            
  0x001E1BA2  0fbf710c                movsx    esi, word ptr [ecx + 0xc]      
  0x001E1BA6  8b889c020000            mov      ecx, dword ptr [eax + 0x29c]   
  0x001E1BAC  8d8c48680c0000          lea      ecx, [eax + ecx*2 + 0xc68]     
  0x001E1BB3  8bde                    mov      ebx, esi                       
  0x001E1BB5  57                      push     edi                            
  0x001E1BB6  8bb874010000            mov      edi, dword ptr [eax + 0x174]   
  0x001E1BBC  0fbe01                  movsx    eax, byte ptr [ecx]            
  0x001E1BBF  0fbe4901                movsx    ecx, byte ptr [ecx + 1]        
  0x001E1BC3  c1e003                  shl      eax, 3                         
  0x001E1BC6  0fafd8                  imul     ebx, eax                       
  0x001E1BC9  03c0                    add      eax, eax                       
  0x001E1BCB  0fafc5                  imul     eax, ebp                       
  0x001E1BCE  89742410                mov      dword ptr [esp + 0x10], esi    
  0x001E1BD2  8b74244c                mov      esi, dword ptr [esp + 0x4c]    
  0x001E1BD6  c1e103                  shl      ecx, 3                         
  0x001E1BD9  03d9                    add      ebx, ecx                       
  0x001E1BDB  8d0c48                  lea      ecx, [eax + ecx*2]             
  0x001E1BDE  894e04                  mov      dword ptr [esi + 4], ecx       
  0x001E1BE1  891e                    mov      dword ptr [esi], ebx           
  0x001E1BE3  8b421c                  mov      eax, dword ptr [edx + 0x1c]    
  0x001E1BE6  8b5a18                  mov      ebx, dword ptr [edx + 0x18]    
  0x001E1BE9  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E1BED  99                      cdq                                     
  0x001E1BEE  2bc2                    sub      eax, edx                       
  0x001E1BF0  8bf0                    mov      esi, eax                       
  0x001E1BF2  d1fe                    sar      esi, 1                         
  0x001E1BF4  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E1BF8  8bce                    mov      ecx, esi                       
  0x001E1BFA  8bc3                    mov      eax, ebx                       
  0x001E1BFC  99                      cdq                                     
  0x001E1BFD  2bc2                    sub      eax, edx                       
  0x001E1BFF  d1f8                    sar      eax, 1                         
  0x001E1C01  8bd0                    mov      edx, eax                       
  0x001E1C03  83e001                  and      eax, 1                         
  0x001E1C06  89442428                mov      dword ptr [esp + 0x28], eax    
  0x001E1C0A  8b44244c                mov      eax, dword ptr [esp + 0x4c]    
  0x001E1C0E  d1f9                    sar      ecx, 1                         
  0x001E1C10  0faf4c2410              imul     ecx, dword ptr [esp + 0x10]    
  0x001E1C15  83e601                  and      esi, 1                         
  0x001E1C18  8974242c                mov      dword ptr [esp + 0x2c], esi    
  0x001E1C1C  0308                    add      ecx, dword ptr [eax]           
  0x001E1C1E  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E1C22  8bc6                    mov      eax, esi                       
  0x001E1C24  d1f8                    sar      eax, 1                         
  0x001E1C26  0fafc5                  imul     eax, ebp                       
  0x001E1C29  d1fa                    sar      edx, 1                         
  0x001E1C2B  03ca                    add      ecx, edx                       
  0x001E1C2D  83e601                  and      esi, 1                         
  0x001E1C30  8974243c                mov      dword ptr [esp + 0x3c], esi    
  0x001E1C34  03442418                add      eax, dword ptr [esp + 0x18]    
  0x001E1C38  8b742444                mov      esi, dword ptr [esp + 0x44]    
  0x001E1C3C  8bd3                    mov      edx, ebx                       
  0x001E1C3E  d1fa                    sar      edx, 1                         
  0x001E1C40  03c2                    add      eax, edx                       
  0x001E1C42  8b54242c                mov      edx, dword ptr [esp + 0x2c]    
  0x001E1C46  89442418                mov      dword ptr [esp + 0x18], eax    
  0x001E1C4A  8d047a                  lea      eax, [edx + edi*2]             
  0x001E1C4D  8b542428                mov      edx, dword ptr [esp + 0x28]    
  0x001E1C51  8d0442                  lea      eax, [edx + eax*2]             
  0x001E1C54  8b0485fc852100          mov      eax, dword ptr [eax*4 + 0x2185fc] 
  0x001E1C5B  8944244c                mov      dword ptr [esp + 0x4c], eax    
  0x001E1C5F  8b44243c                mov      eax, dword ptr [esp + 0x3c]    
  0x001E1C63  8d0478                  lea      eax, [eax + edi*2]             
  0x001E1C66  83e301                  and      ebx, 1                         
  0x001E1C69  8d0443                  lea      eax, [ebx + eax*2]             
  0x001E1C6C  8b0485fc852100          mov      eax, dword ptr [eax*4 + 0x2185fc] 
  0x001E1C73  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E1C77  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E1C7B  81c6c4000000            add      esi, 0xc4                      
  0x001E1C81  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001E1C84  8b442448                mov      eax, dword ptr [esp + 0x48]    
  0x001E1C88  894c241c                mov      dword ptr [esp + 0x1c], ecx    
  0x001E1C8C  895c2438                mov      dword ptr [esp + 0x38], ebx    
  0x001E1C90  894608                  mov      dword ptr [esi + 8], eax       
  0x001E1C93  8b442450                mov      eax, dword ptr [esp + 0x50]    
  0x001E1C97  8b00                    mov      eax, dword ptr [eax]           
  0x001E1C99  03c1                    add      eax, ecx                       
  0x001E1C9B  8bdf                    mov      ebx, edi                       
  0x001E1C9D  f7db                    neg      ebx                            
  0x001E1C9F  1bdb                    sbb      ebx, ebx                       
  0x001E1CA1  23da                    and      ebx, edx                       
  0x001E1CA3  8b542410                mov      edx, dword ptr [esp + 0x10]    
  0x001E1CA7  8d0c03                  lea      ecx, [ebx + eax]               
  0x001E1CAA  03ca                    add      ecx, edx                       
  0x001E1CAC  56                      push     esi                            
  0x001E1CAD  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1CB0  894e18                  mov      dword ptr [esi + 0x18], ecx    
  0x001E1CB3  ff542450                call     dword ptr [esp + 0x50]         
  0x001E1CB7  8b54244c                mov      edx, dword ptr [esp + 0x4c]    
  0x001E1CBB  8b442454                mov      eax, dword ptr [esp + 0x54]    
  0x001E1CBF  8b4c2414                mov      ecx, dword ptr [esp + 0x14]    
  0x001E1CC3  83c240                  add      edx, 0x40                      
  0x001E1CC6  895608                  mov      dword ptr [esi + 8], edx       
  0x001E1CC9  8b4004                  mov      eax, dword ptr [eax + 4]       
  0x001E1CCC  03442420                add      eax, dword ptr [esp + 0x20]    
  0x001E1CD0  03d8                    add      ebx, eax                       
  0x001E1CD2  03d9                    add      ebx, ecx                       
  0x001E1CD4  56                      push     esi                            
  0x001E1CD5  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1CD8  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001E1CDB  ff542454                call     dword ptr [esp + 0x54]         
  0x001E1CDF  8b5c2450                mov      ebx, dword ptr [esp + 0x50]    
  0x001E1CE3  8b542458                mov      edx, dword ptr [esp + 0x58]    
  0x001E1CE7  8d8b80000000            lea      ecx, [ebx + 0x80]              
  0x001E1CED  896e10                  mov      dword ptr [esi + 0x10], ebp    
  0x001E1CF0  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001E1CF3  8b4208                  mov      eax, dword ptr [edx + 8]       
  0x001E1CF6  03442420                add      eax, dword ptr [esp + 0x20]    
  0x001E1CFA  8b542440                mov      edx, dword ptr [esp + 0x40]    
  0x001E1CFE  f7df                    neg      edi                            
  0x001E1D00  1bff                    sbb      edi, edi                       
  0x001E1D02  23fa                    and      edi, edx                       
  0x001E1D04  03f8                    add      edi, eax                       
  0x001E1D06  03fd                    add      edi, ebp                       
  0x001E1D08  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001E1D0B  8b7c241c                mov      edi, dword ptr [esp + 0x1c]    
  0x001E1D0F  56                      push     esi                            
  0x001E1D10  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1D13  ffd7                    call     edi                            
  0x001E1D15  8b5614                  mov      edx, dword ptr [esi + 0x14]    
  0x001E1D18  8b4e18                  mov      ecx, dword ptr [esi + 0x18]    
  0x001E1D1B  8d83c0000000            lea      eax, [ebx + 0xc0]              
  0x001E1D21  894608                  mov      dword ptr [esi + 8], eax       
  0x001E1D24  b808000000              mov      eax, 8                         
  0x001E1D29  03d0                    add      edx, eax                       
  0x001E1D2B  03c8                    add      ecx, eax                       
  0x001E1D2D  56                      push     esi                            
  0x001E1D2E  895614                  mov      dword ptr [esi + 0x14], edx    
  0x001E1D31  894e18                  mov      dword ptr [esi + 0x18], ecx    
  0x001E1D34  ffd7                    call     edi                            
  0x001E1D36  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001E1D39  8d14edf8ffffff          lea      edx, [ebp*8 - 8]               
  0x001E1D40  03c2                    add      eax, edx                       
  0x001E1D42  8d8b00010000            lea      ecx, [ebx + 0x100]             
  0x001E1D48  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001E1D4B  8b4e18                  mov      ecx, dword ptr [esi + 0x18]    
  0x001E1D4E  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1D51  8d04edf8ffffff          lea      eax, [ebp*8 - 8]               
  0x001E1D58  03c8                    add      ecx, eax                       
  0x001E1D5A  56                      push     esi                            
  0x001E1D5B  894e18                  mov      dword ptr [esi + 0x18], ecx    
  0x001E1D5E  ffd7                    call     edi                            
  0x001E1D60  8b5618                  mov      edx, dword ptr [esi + 0x18]    
  0x001E1D63  81c340010000            add      ebx, 0x140                     
  0x001E1D69  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001E1D6C  8b5e14                  mov      ebx, dword ptr [esi + 0x14]    
  0x001E1D6F  b808000000              mov      eax, 8                         
  0x001E1D74  03d8                    add      ebx, eax                       
  0x001E1D76  03d0                    add      edx, eax                       
  0x001E1D78  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001E1D7B  895618                  mov      dword ptr [esi + 0x18], edx    
  0x001E1D7E  56                      push     esi                            
  0x001E1D7F  ffd7                    call     edi                            
  0x001E1D81  83c418                  add      esp, 0x18                      
  0x001E1D84  5f                      pop      edi                            
  0x001E1D85  5e                      pop      esi                            
  0x001E1D86  5d                      pop      ebp                            
  0x001E1D87  5b                      pop      ebx                            
  0x001E1D88  83c430                  add      esp, 0x30                      
  0x001E1D8B  c3                      ret                                     
; end of function
  0x001E1D8C  90                      nop                                     
  0x001E1D8D  90                      nop                                     
  0x001E1D8E  90                      nop                                     
  0x001E1D8F  90                      nop                                     
  0x001E1D90  83ec10                  sub      esp, 0x10                      
  0x001E1D93  53                      push     ebx                            
  0x001E1D94  8b5c2418                mov      ebx, dword ptr [esp + 0x18]    
  0x001E1D98  0fbf83de010000          movsx    eax, word ptr [ebx + 0x1de]    
  0x001E1D9F  0fbf8bdc010000          movsx    ecx, word ptr [ebx + 0x1dc]    
  0x001E1DA6  89442408                mov      dword ptr [esp + 8], eax       
  0x001E1DAA  8b44241c                mov      eax, dword ptr [esp + 0x1c]    
  0x001E1DAE  894c2404                mov      dword ptr [esp + 4], ecx       
  0x001E1DB2  8b8bf0010000            mov      ecx, dword ptr [ebx + 0x1f0]   
  0x001E1DB8  8d1440                  lea      edx, [eax + eax*2]             
  0x001E1DBB  c1e207                  shl      edx, 7                         
  0x001E1DBE  56                      push     esi                            
  0x001E1DBF  894c241c                mov      dword ptr [esp + 0x1c], ecx    
  0x001E1DC3  8d8c0a80feffff          lea      ecx, [edx + ecx - 0x180]       
  0x001E1DCA  48                      dec      eax                            
  0x001E1DCB  57                      push     edi                            
  0x001E1DCC  8dbb60060000            lea      edi, [ebx + 0x660]             
  0x001E1DD2  8db3c4000000            lea      esi, [ebx + 0xc4]              
  0x001E1DD8  898bf0010000            mov      dword ptr [ebx + 0x1f0], ecx   
  0x001E1DDE  89442424                mov      dword ptr [esp + 0x24], eax    
  0x001E1DE2  0f8422010000            je       0x1e1f0a                       
  0x001E1DE8  55                      push     ebp                            
  0x001E1DE9  8da42400000000          lea      esp, [esp]                     
                                        ; XREF: 0x001E1F03 (cond_jump)
  0x001E1DF0  8b939c020000            mov      edx, dword ptr [ebx + 0x29c]   
  0x001E1DF6  0fbfabde010000          movsx    ebp, word ptr [ebx + 0x1de]    
  0x001E1DFD  2bd0                    sub      edx, eax                       
  0x001E1DFF  0fbe8c53680c0000        movsx    ecx, byte ptr [ebx + edx*2 + 0xc68] 
  0x001E1E07  8d8453680c0000          lea      eax, [ebx + edx*2 + 0xc68]     
  0x001E1E0E  0fbe5001                movsx    edx, byte ptr [eax + 1]        
  0x001E1E12  0fbf83dc010000          movsx    eax, word ptr [ebx + 0x1dc]    
  0x001E1E19  c1e103                  shl      ecx, 3                         
  0x001E1E1C  0fafc1                  imul     eax, ecx                       
  0x001E1E1F  03c9                    add      ecx, ecx                       
  0x001E1E21  0fafcd                  imul     ecx, ebp                       
  0x001E1E24  c1e203                  shl      edx, 3                         
  0x001E1E27  03c2                    add      eax, edx                       
  0x001E1E29  8d1451                  lea      edx, [ecx + edx*2]             
  0x001E1E2C  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E1E30  8954241c                mov      dword ptr [esp + 0x1c], edx    
  0x001E1E34  8b542424                mov      edx, dword ptr [esp + 0x24]    
  0x001E1E38  894e0c                  mov      dword ptr [esi + 0xc], ecx     
  0x001E1E3B  895604                  mov      dword ptr [esi + 4], edx       
  0x001E1E3E  8b8bd0010000            mov      ecx, dword ptr [ebx + 0x1d0]   
  0x001E1E44  03c8                    add      ecx, eax                       
  0x001E1E46  57                      push     edi                            
  0x001E1E47  56                      push     esi                            
  0x001E1E48  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E1E4C  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001E1E4F  e8ec2c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1E54  894604                  mov      dword ptr [esi + 4], eax       
  0x001E1E57  8b93d4010000            mov      edx, dword ptr [ebx + 0x1d4]   
  0x001E1E5D  8b442420                mov      eax, dword ptr [esp + 0x20]    
  0x001E1E61  83c740                  add      edi, 0x40                      
  0x001E1E64  03d0                    add      edx, eax                       
  0x001E1E66  57                      push     edi                            
  0x001E1E67  56                      push     esi                            
  0x001E1E68  895614                  mov      dword ptr [esi + 0x14], edx    
  0x001E1E6B  e8d02c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1E70  8b6c2424                mov      ebp, dword ptr [esp + 0x24]    
  0x001E1E74  8b54242c                mov      edx, dword ptr [esp + 0x2c]    
  0x001E1E78  894604                  mov      dword ptr [esi + 4], eax       
  0x001E1E7B  896e0c                  mov      dword ptr [esi + 0xc], ebp     
  0x001E1E7E  8b83d8010000            mov      eax, dword ptr [ebx + 0x1d8]   
  0x001E1E84  83c740                  add      edi, 0x40                      
  0x001E1E87  03c2                    add      eax, edx                       
  0x001E1E89  57                      push     edi                            
  0x001E1E8A  56                      push     esi                            
  0x001E1E8B  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1E8E  e8ad2c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1E93  8b5614                  mov      edx, dword ptr [esi + 0x14]    
  0x001E1E96  83c740                  add      edi, 0x40                      
  0x001E1E99  83c208                  add      edx, 8                         
  0x001E1E9C  57                      push     edi                            
  0x001E1E9D  56                      push     esi                            
  0x001E1E9E  894604                  mov      dword ptr [esi + 4], eax       
  0x001E1EA1  895614                  mov      dword ptr [esi + 0x14], edx    
  0x001E1EA4  e8972c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1EA9  894604                  mov      dword ptr [esi + 4], eax       
  0x001E1EAC  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001E1EAF  83c740                  add      edi, 0x40                      
  0x001E1EB2  8d0cedf8ffffff          lea      ecx, [ebp*8 - 8]               
  0x001E1EB9  03c1                    add      eax, ecx                       
  0x001E1EBB  57                      push     edi                            
  0x001E1EBC  56                      push     esi                            
  0x001E1EBD  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1EC0  e87b2c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1EC5  894604                  mov      dword ptr [esi + 4], eax       
  0x001E1EC8  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001E1ECB  83c740                  add      edi, 0x40                      
  0x001E1ECE  83c008                  add      eax, 8                         
  0x001E1ED1  57                      push     edi                            
  0x001E1ED2  56                      push     esi                            
  0x001E1ED3  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E1ED6  e8652c0000              call     0x1e4b40                       ; -> sub_001E4B40
  0x001E1EDB  89442454                mov      dword ptr [esp + 0x54], eax    
  0x001E1EDF  8d83e0010000            lea      eax, [ebx + 0x1e0]             
  0x001E1EE5  50                      push     eax                            
  0x001E1EE6  8d54244c                lea      edx, [esp + 0x4c]              
  0x001E1EEA  52                      push     edx                            
  0x001E1EEB  8dbb60060000            lea      edi, [ebx + 0x660]             
  0x001E1EF1  57                      push     edi                            
  0x001E1EF2  e8d9280000              call     0x1e47d0                       ; -> sub_001E47D0
  0x001E1EF7  8b442464                mov      eax, dword ptr [esp + 0x64]    
  0x001E1EFB  83c43c                  add      esp, 0x3c                      
  0x001E1EFE  48                      dec      eax                            
  0x001E1EFF  89442428                mov      dword ptr [esp + 0x28], eax    
  0x001E1F03  0f85e7feffff            jne      0x1e1df0                       
  0x001E1F09  5d                      pop      ebp                            
                                        ; XREF: 0x001E1DE2 (cond_jump)
  0x001E1F0A  5f                      pop      edi                            
  0x001E1F0B  5e                      pop      esi                            
  0x001E1F0C  5b                      pop      ebx                            
  0x001E1F0D  83c410                  add      esp, 0x10                      
  0x001E1F10  c3                      ret                                     
  0x001E1F11  90                      nop                                     
  0x001E1F12  90                      nop                                     
  0x001E1F13  90                      nop                                     
  0x001E1F14  90                      nop                                     
  0x001E1F15  90                      nop                                     
  0x001E1F16  90                      nop                                     
  0x001E1F17  90                      nop                                     
  0x001E1F18  90                      nop                                     
  0x001E1F19  90                      nop                                     
  0x001E1F1A  90                      nop                                     
  0x001E1F1B  90                      nop                                     
  0x001E1F1C  90                      nop                                     
  0x001E1F1D  90                      nop                                     
  0x001E1F1E  90                      nop                                     
  0x001E1F1F  90                      nop                                     
  0x001E1F20  83ec08                  sub      esp, 8                         
  0x001E1F23  53                      push     ebx                            
  0x001E1F24  56                      push     esi                            
  0x001E1F25  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E1F29  8b8ef0000000            mov      ecx, dword ptr [esi + 0xf0]    
  0x001E1F2F  57                      push     edi                            
  0x001E1F30  8dbed0010000            lea      edi, [esi + 0x1d0]             
  0x001E1F36  57                      push     edi                            
  0x001E1F37  8d442410                lea      eax, [esp + 0x10]              
  0x001E1F3B  8d9ee8000000            lea      ebx, [esi + 0xe8]              
  0x001E1F41  50                      push     eax                            
  0x001E1F42  51                      push     ecx                            
  0x001E1F43  8d9654020000            lea      edx, [esi + 0x254]             
  0x001E1F49  56                      push     esi                            
  0x001E1F4A  e841fcffff              call     0x1e1b90                       ; -> sub_001E1B90
  0x001E1F4F  8b4720                  mov      eax, dword ptr [edi + 0x20]    
  0x001E1F52  8d9080010000            lea      edx, [eax + 0x180]             
  0x001E1F58  895720                  mov      dword ptr [edi + 0x20], edx    
  0x001E1F5B  8b8ea8020000            mov      ecx, dword ptr [esi + 0x2a8]   
  0x001E1F61  51                      push     ecx                            
  0x001E1F62  53                      push     ebx                            
  0x001E1F63  50                      push     eax                            
  0x001E1F64  e8171f0000              call     0x1e3e80                       ; -> sub_001E3E80
  0x001E1F69  8b4308                  mov      eax, dword ptr [ebx + 8]       
  0x001E1F6C  83c710                  add      edi, 0x10                      
  0x001E1F6F  57                      push     edi                            
  0x001E1F70  8d54242c                lea      edx, [esp + 0x2c]              
  0x001E1F74  52                      push     edx                            
  0x001E1F75  50                      push     eax                            
  0x001E1F76  e855280000              call     0x1e47d0                       ; -> sub_001E47D0
  0x001E1F7B  83c428                  add      esp, 0x28                      
  0x001E1F7E  5f                      pop      edi                            
  0x001E1F7F  5e                      pop      esi                            
  0x001E1F80  5b                      pop      ebx                            
  0x001E1F81  83c408                  add      esp, 8                         
  0x001E1F84  c3                      ret                                     
  0x001E1F85  90                      nop                                     
  0x001E1F86  90                      nop                                     
  0x001E1F87  90                      nop                                     
  0x001E1F88  90                      nop                                     
  0x001E1F89  90                      nop                                     
  0x001E1F8A  90                      nop                                     
  0x001E1F8B  90                      nop                                     
  0x001E1F8C  90                      nop                                     
  0x001E1F8D  90                      nop                                     
  0x001E1F8E  90                      nop                                     
  0x001E1F8F  90                      nop                                     
  0x001E1F90  83ec08                  sub      esp, 8                         
  0x001E1F93  53                      push     ebx                            
  0x001E1F94  56                      push     esi                            
  0x001E1F95  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E1F99  8b8ef0000000            mov      ecx, dword ptr [esi + 0xf0]    
  0x001E1F9F  57                      push     edi                            
  0x001E1FA0  8dbed0010000            lea      edi, [esi + 0x1d0]             
  0x001E1FA6  57                      push     edi                            
  0x001E1FA7  8d442410                lea      eax, [esp + 0x10]              
  0x001E1FAB  8d9ee8000000            lea      ebx, [esi + 0xe8]              
  0x001E1FB1  50                      push     eax                            
  0x001E1FB2  51                      push     ecx                            
  0x001E1FB3  8d9654020000            lea      edx, [esi + 0x254]             
  0x001E1FB9  56                      push     esi                            
  0x001E1FBA  e8d1fbffff              call     0x1e1b90                       ; -> sub_001E1B90
  0x001E1FBF  8b4720                  mov      eax, dword ptr [edi + 0x20]    
  0x001E1FC2  8d9080010000            lea      edx, [eax + 0x180]             
  0x001E1FC8  895720                  mov      dword ptr [edi + 0x20], edx    
  0x001E1FCB  8b8ea8020000            mov      ecx, dword ptr [esi + 0x2a8]   
  0x001E1FD1  51                      push     ecx                            
  0x001E1FD2  53                      push     ebx                            
  0x001E1FD3  50                      push     eax                            
  0x001E1FD4  e8a71e0000              call     0x1e3e80                       ; -> sub_001E3E80
  0x001E1FD9  83c41c                  add      esp, 0x1c                      
  0x001E1FDC  5f                      pop      edi                            
  0x001E1FDD  5e                      pop      esi                            
  0x001E1FDE  5b                      pop      ebx                            
  0x001E1FDF  83c408                  add      esp, 8                         
  0x001E1FE2  c3                      ret                                     
  0x001E1FE3  90                      nop                                     
  0x001E1FE4  90                      nop                                     
  0x001E1FE5  90                      nop                                     
  0x001E1FE6  90                      nop                                     
  0x001E1FE7  90                      nop                                     
  0x001E1FE8  90                      nop                                     
  0x001E1FE9  90                      nop                                     
  0x001E1FEA  90                      nop                                     
  0x001E1FEB  90                      nop                                     
  0x001E1FEC  90                      nop                                     
  0x001E1FED  90                      nop                                     
  0x001E1FEE  90                      nop                                     
  0x001E1FEF  90                      nop                                     
  0x001E1FF0  83ec08                  sub      esp, 8                         
  0x001E1FF3  56                      push     esi                            
  0x001E1FF4  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E1FF8  57                      push     edi                            
  0x001E1FF9  8d86e0010000            lea      eax, [esi + 0x1e0]             
  0x001E1FFF  50                      push     eax                            
  0x001E2000  8b86f0000000            mov      eax, dword ptr [esi + 0xf0]    
  0x001E2006  8d4c240c                lea      ecx, [esp + 0xc]               
  0x001E200A  8dbee8000000            lea      edi, [esi + 0xe8]              
  0x001E2010  51                      push     ecx                            
  0x001E2011  50                      push     eax                            
  0x001E2012  8d9678020000            lea      edx, [esi + 0x278]             
  0x001E2018  56                      push     esi                            
  0x001E2019  e872fbffff              call     0x1e1b90                       ; -> sub_001E1B90
  0x001E201E  8b86f0010000            mov      eax, dword ptr [esi + 0x1f0]   
  0x001E2024  8d8880010000            lea      ecx, [eax + 0x180]             
  0x001E202A  898ef0010000            mov      dword ptr [esi + 0x1f0], ecx   
  0x001E2030  8b96a8020000            mov      edx, dword ptr [esi + 0x2a8]   
  0x001E2036  52                      push     edx                            
  0x001E2037  57                      push     edi                            
  0x001E2038  50                      push     eax                            
  0x001E2039  e8421e0000              call     0x1e3e80                       ; -> sub_001E3E80
  0x001E203E  83c41c                  add      esp, 0x1c                      
  0x001E2041  5f                      pop      edi                            
  0x001E2042  5e                      pop      esi                            
  0x001E2043  83c408                  add      esp, 8                         
  0x001E2046  c3                      ret                                     
  0x001E2047  90                      nop                                     
  0x001E2048  90                      nop                                     
  0x001E2049  90                      nop                                     
  0x001E204A  90                      nop                                     
  0x001E204B  90                      nop                                     
  0x001E204C  90                      nop                                     
  0x001E204D  90                      nop                                     
  0x001E204E  90                      nop                                     
  0x001E204F  90                      nop                                     
  0x001E2050  83ec08                  sub      esp, 8                         
  0x001E2053  53                      push     ebx                            
  0x001E2054  56                      push     esi                            
  0x001E2055  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E2059  8b8ef0000000            mov      ecx, dword ptr [esi + 0xf0]    
  0x001E205F  57                      push     edi                            
  0x001E2060  8dbed0010000            lea      edi, [esi + 0x1d0]             
  0x001E2066  57                      push     edi                            
  0x001E2067  8d442410                lea      eax, [esp + 0x10]              
  0x001E206B  8d9ee8000000            lea      ebx, [esi + 0xe8]              
  0x001E2071  50                      push     eax                            
  0x001E2072  51                      push     ecx                            
  0x001E2073  8d9654020000            lea      edx, [esi + 0x254]             
  0x001E2079  56                      push     esi                            
  0x001E207A  e811fbffff              call     0x1e1b90                       ; -> sub_001E1B90
  0x001E207F  8d4710                  lea      eax, [edi + 0x10]              
  0x001E2082  50                      push     eax                            
  0x001E2083  8b430c                  mov      eax, dword ptr [ebx + 0xc]     
  0x001E2086  8d4c2420                lea      ecx, [esp + 0x20]              
  0x001E208A  51                      push     ecx                            
  0x001E208B  50                      push     eax                            
  0x001E208C  8d9678020000            lea      edx, [esi + 0x278]             
  0x001E2092  56                      push     esi                            
  0x001E2093  e8f8faffff              call     0x1e1b90                       ; -> sub_001E1B90
  0x001E2098  8b4720                  mov      eax, dword ptr [edi + 0x20]    
  0x001E209B  8d8880010000            lea      ecx, [eax + 0x180]             
  0x001E20A1  894f20                  mov      dword ptr [edi + 0x20], ecx    
  0x001E20A4  8b96a8020000            mov      edx, dword ptr [esi + 0x2a8]   
  0x001E20AA  52                      push     edx                            
  0x001E20AB  53                      push     ebx                            
  0x001E20AC  50                      push     eax                            
  0x001E20AD  e89e200000              call     0x1e4150                       ; -> sub_001E4150
  0x001E20B2  83c42c                  add      esp, 0x2c                      
  0x001E20B5  5f                      pop      edi                            
  0x001E20B6  5e                      pop      esi                            
  0x001E20B7  5b                      pop      ebx                            
  0x001E20B8  83c408                  add      esp, 8                         
  0x001E20BB  c3                      ret                                     
  0x001E20BC  90                      nop                                     
  0x001E20BD  90                      nop                                     
  0x001E20BE  90                      nop                                     
  0x001E20BF  90                      nop                                     
                                        ; XREF: 0x001E30E4 (jump)
  0x001E20C0  83ec08                  sub      esp, 8                         
  0x001E20C3  53                      push     ebx                            
  0x001E20C4  55                      push     ebp                            
  0x001E20C5  56                      push     esi                            
  0x001E20C6  8bf0                    mov      esi, eax                       
  0x001E20C8  8b02                    mov      eax, dword ptr [edx]           
  0x001E20CA  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E20CE  b806000000              mov      eax, 6                         
  0x001E20D3  57                      push     edi                            
  0x001E20D4  83c204                  add      edx, 4                         
  0x001E20D7  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E20DB  eb03                    jmp      0x1e20e0                       
  0x001E20DD  8d4900                  lea      ecx, [ecx]                     
                                        ; XREF: 0x001E20DB (jump), 0x001E2265 (cond_jump)
  0x001E20E0  3b442414                cmp      eax, dword ptr [esp + 0x14]    
  0x001E20E4  7503                    jne      0x1e20e9                       
  0x001E20E6  83ee10                  sub      esi, 0x10                      
                                        ; XREF: 0x001E20E4 (cond_jump)
  0x001E20E9  8b02                    mov      eax, dword ptr [edx]           
  0x001E20EB  8b7a04                  mov      edi, dword ptr [edx + 4]       
  0x001E20EE  83c204                  add      edx, 4                         
  0x001E20F1  83c204                  add      edx, 4                         
  0x001E20F4  bd02000000              mov      ebp, 2                         
  0x001E20F9  8da42400000000          lea      esp, [esp]                     
                                        ; XREF: 0x001E2254 (cond_jump)
  0x001E2100  0fbf19                  movsx    ebx, word ptr [ecx]            
  0x001E2103  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2106  8818                    mov      byte ptr [eax], bl             
  0x001E2108  0fbf5902                movsx    ebx, word ptr [ecx + 2]        
  0x001E210C  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E210F  885801                  mov      byte ptr [eax + 1], bl         
  0x001E2112  0fbf5904                movsx    ebx, word ptr [ecx + 4]        
  0x001E2116  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2119  885802                  mov      byte ptr [eax + 2], bl         
  0x001E211C  0fbf5906                movsx    ebx, word ptr [ecx + 6]        
  0x001E2120  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2123  885803                  mov      byte ptr [eax + 3], bl         
  0x001E2126  0fbf5908                movsx    ebx, word ptr [ecx + 8]        
  0x001E212A  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E212D  885804                  mov      byte ptr [eax + 4], bl         
  0x001E2130  0fbf590a                movsx    ebx, word ptr [ecx + 0xa]      
  0x001E2134  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2137  885805                  mov      byte ptr [eax + 5], bl         
  0x001E213A  0fbf590c                movsx    ebx, word ptr [ecx + 0xc]      
  0x001E213E  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2141  885806                  mov      byte ptr [eax + 6], bl         
  0x001E2144  0fbf590e                movsx    ebx, word ptr [ecx + 0xe]      
  0x001E2148  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E214B  885807                  mov      byte ptr [eax + 7], bl         
  0x001E214E  0fbf5910                movsx    ebx, word ptr [ecx + 0x10]     
  0x001E2152  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2155  881c38                  mov      byte ptr [eax + edi], bl       
  0x001E2158  0fbf5912                movsx    ebx, word ptr [ecx + 0x12]     
  0x001E215C  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E215F  885c3801                mov      byte ptr [eax + edi + 1], bl   
  0x001E2163  0fbf5914                movsx    ebx, word ptr [ecx + 0x14]     
  0x001E2167  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E216A  83c110                  add      ecx, 0x10                      
  0x001E216D  885c3802                mov      byte ptr [eax + edi + 2], bl   
  0x001E2171  0fbf5906                movsx    ebx, word ptr [ecx + 6]        
  0x001E2175  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2178  03c7                    add      eax, edi                       
  0x001E217A  885803                  mov      byte ptr [eax + 3], bl         
  0x001E217D  0fbf5908                movsx    ebx, word ptr [ecx + 8]        
  0x001E2181  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2184  885804                  mov      byte ptr [eax + 4], bl         
  0x001E2187  0fbf590a                movsx    ebx, word ptr [ecx + 0xa]      
  0x001E218B  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E218E  885805                  mov      byte ptr [eax + 5], bl         
  0x001E2191  0fbf590c                movsx    ebx, word ptr [ecx + 0xc]      
  0x001E2195  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2198  885806                  mov      byte ptr [eax + 6], bl         
  0x001E219B  0fbf590e                movsx    ebx, word ptr [ecx + 0xe]      
  0x001E219F  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21A2  885807                  mov      byte ptr [eax + 7], bl         
  0x001E21A5  0fbf5910                movsx    ebx, word ptr [ecx + 0x10]     
  0x001E21A9  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21AC  83c110                  add      ecx, 0x10                      
  0x001E21AF  881c38                  mov      byte ptr [eax + edi], bl       
  0x001E21B2  0fbf5902                movsx    ebx, word ptr [ecx + 2]        
  0x001E21B6  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21B9  03c7                    add      eax, edi                       
  0x001E21BB  885801                  mov      byte ptr [eax + 1], bl         
  0x001E21BE  0fbf5904                movsx    ebx, word ptr [ecx + 4]        
  0x001E21C2  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21C5  885802                  mov      byte ptr [eax + 2], bl         
  0x001E21C8  0fbf5906                movsx    ebx, word ptr [ecx + 6]        
  0x001E21CC  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21CF  885803                  mov      byte ptr [eax + 3], bl         
  0x001E21D2  0fbf5908                movsx    ebx, word ptr [ecx + 8]        
  0x001E21D6  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21D9  885804                  mov      byte ptr [eax + 4], bl         
  0x001E21DC  0fbf590a                movsx    ebx, word ptr [ecx + 0xa]      
  0x001E21E0  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21E3  885805                  mov      byte ptr [eax + 5], bl         
  0x001E21E6  0fbf590c                movsx    ebx, word ptr [ecx + 0xc]      
  0x001E21EA  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21ED  885806                  mov      byte ptr [eax + 6], bl         
  0x001E21F0  0fbf590e                movsx    ebx, word ptr [ecx + 0xe]      
  0x001E21F4  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E21F7  885807                  mov      byte ptr [eax + 7], bl         
  0x001E21FA  0fbf5910                movsx    ebx, word ptr [ecx + 0x10]     
  0x001E21FE  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2201  83c110                  add      ecx, 0x10                      
  0x001E2204  03c7                    add      eax, edi                       
  0x001E2206  8818                    mov      byte ptr [eax], bl             
  0x001E2208  0fbf5902                movsx    ebx, word ptr [ecx + 2]        
  0x001E220C  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E220F  885801                  mov      byte ptr [eax + 1], bl         
  0x001E2212  0fbf5904                movsx    ebx, word ptr [ecx + 4]        
  0x001E2216  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2219  885802                  mov      byte ptr [eax + 2], bl         
  0x001E221C  0fbf5906                movsx    ebx, word ptr [ecx + 6]        
  0x001E2220  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2223  885803                  mov      byte ptr [eax + 3], bl         
  0x001E2226  0fbf5908                movsx    ebx, word ptr [ecx + 8]        
  0x001E222A  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E222D  885804                  mov      byte ptr [eax + 4], bl         
  0x001E2230  0fbf590a                movsx    ebx, word ptr [ecx + 0xa]      
  0x001E2234  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2237  885805                  mov      byte ptr [eax + 5], bl         
  0x001E223A  0fbf590c                movsx    ebx, word ptr [ecx + 0xc]      
  0x001E223E  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E2241  885806                  mov      byte ptr [eax + 6], bl         
  0x001E2244  0fbf590e                movsx    ebx, word ptr [ecx + 0xe]      
  0x001E2248  8a1c33                  mov      bl, byte ptr [ebx + esi]       
  0x001E224B  885807                  mov      byte ptr [eax + 7], bl         
  0x001E224E  83c110                  add      ecx, 0x10                      
  0x001E2251  03c7                    add      eax, edi                       
  0x001E2253  4d                      dec      ebp                            
  0x001E2254  0f85a6feffff            jne      0x1e2100                       
  0x001E225A  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E225E  48                      dec      eax                            
  0x001E225F  85c0                    test     eax, eax                       
  0x001E2261  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E2265  0f8f75feffff            jg       0x1e20e0                       
  0x001E226B  5f                      pop      edi                            
  0x001E226C  5e                      pop      esi                            
  0x001E226D  5d                      pop      ebp                            
  0x001E226E  5b                      pop      ebx                            
  0x001E226F  83c408                  add      esp, 8                         
  0x001E2272  c3                      ret                                     
  0x001E2273  90                      nop                                     
  0x001E2274  90                      nop                                     
  0x001E2275  90                      nop                                     
  0x001E2276  90                      nop                                     
  0x001E2277  90                      nop                                     
  0x001E2278  90                      nop                                     
  0x001E2279  90                      nop                                     
  0x001E227A  90                      nop                                     
  0x001E227B  90                      nop                                     
  0x001E227C  90                      nop                                     
  0x001E227D  90                      nop                                     
  0x001E227E  90                      nop                                     
  0x001E227F  90                      nop                                     

; ============================================================
; Function: sub_001E2280
; Start: 0x001E2280  End: 0x001E2337  Size: 183 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E2280:
  0x001E2280  83ec10                  sub      esp, 0x10                      
  0x001E2283  53                      push     ebx                            
  0x001E2284  55                      push     ebp                            
  0x001E2285  56                      push     esi                            
  0x001E2286  8b7004                  mov      esi, dword ptr [eax + 4]       
  0x001E2289  8bd9                    mov      ebx, ecx                       
  0x001E228B  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001E228E  57                      push     edi                            
  0x001E228F  8b38                    mov      edi, dword ptr [eax]           
  0x001E2291  83c304                  add      ebx, 4                         
  0x001E2294  c744241806000000        mov      dword ptr [esp + 0x18], 6      
  0x001E229C  8d642400                lea      esp, [esp]                     
                                        ; XREF: 0x001E25CD (cond_jump)
  0x001E22A0  8b03                    mov      eax, dword ptr [ebx]           
  0x001E22A2  8b5304                  mov      edx, dword ptr [ebx + 4]       
  0x001E22A5  8b6c2424                mov      ebp, dword ptr [esp + 0x24]    
  0x001E22A9  83c304                  add      ebx, 4                         
  0x001E22AC  83c304                  add      ebx, 4                         
  0x001E22AF  85ed                    test     ebp, ebp                       
  0x001E22B1  89542410                mov      dword ptr [esp + 0x10], edx    
  0x001E22B5  895c241c                mov      dword ptr [esp + 0x1c], ebx    
  0x001E22B9  7c7c                    jl       0x1e2337                       
  0x001E22BB  8b29                    mov      ebp, dword ptr [ecx]           
  0x001E22BD  8928                    mov      dword ptr [eax], ebp           
  0x001E22BF  8b6904                  mov      ebp, dword ptr [ecx + 4]       
  0x001E22C2  896804                  mov      dword ptr [eax + 4], ebp       
  0x001E22C5  8b6908                  mov      ebp, dword ptr [ecx + 8]       
  0x001E22C8  892c10                  mov      dword ptr [eax + edx], ebp     
  0x001E22CB  8b690c                  mov      ebp, dword ptr [ecx + 0xc]     
  0x001E22CE  896c1004                mov      dword ptr [eax + edx + 4], ebp 
  0x001E22D2  8b6910                  mov      ebp, dword ptr [ecx + 0x10]    
  0x001E22D5  03c2                    add      eax, edx                       
  0x001E22D7  892c10                  mov      dword ptr [eax + edx], ebp     
  0x001E22DA  8b6914                  mov      ebp, dword ptr [ecx + 0x14]    
  0x001E22DD  896c1004                mov      dword ptr [eax + edx + 4], ebp 
  0x001E22E1  8b6918                  mov      ebp, dword ptr [ecx + 0x18]    
  0x001E22E4  03c2                    add      eax, edx                       
  0x001E22E6  892c10                  mov      dword ptr [eax + edx], ebp     
  0x001E22E9  8b691c                  mov      ebp, dword ptr [ecx + 0x1c]    
  0x001E22EC  896c1004                mov      dword ptr [eax + edx + 4], ebp 
  0x001E22F0  8b6920                  mov      ebp, dword ptr [ecx + 0x20]    
  0x001E22F3  03c2                    add      eax, edx                       
  0x001E22F5  892c10                  mov      dword ptr [eax + edx], ebp     
  0x001E22F8  8b6924                  mov      ebp, dword ptr [ecx + 0x24]    
  0x001E22FB  896c1004                mov      dword ptr [eax + edx + 4], ebp 
  0x001E22FF  8b6928                  mov      ebp, dword ptr [ecx + 0x28]    
  0x001E2302  03c2                    add      eax, edx                       
  0x001E2304  892c10                  mov      dword ptr [eax + edx], ebp     
  0x001E2307  8b692c                  mov      ebp, dword ptr [ecx + 0x2c]    
  0x001E230A  03c2                    add      eax, edx                       
  0x001E230C  896804                  mov      dword ptr [eax + 4], ebp       
  0x001E230F  8b6930                  mov      ebp, dword ptr [ecx + 0x30]    
  0x001E2312  03c2                    add      eax, edx                       
  0x001E2314  8928                    mov      dword ptr [eax], ebp           
  0x001E2316  8b6934                  mov      ebp, dword ptr [ecx + 0x34]    
  0x001E2319  896804                  mov      dword ptr [eax + 4], ebp       
  0x001E231C  8b6938                  mov      ebp, dword ptr [ecx + 0x38]    
  0x001E231F  892c02                  mov      dword ptr [edx + eax], ebp     
  0x001E2322  8b693c                  mov      ebp, dword ptr [ecx + 0x3c]    
  0x001E2325  81c680000000            add      esi, 0x80                      
  0x001E232B  896c0204                mov      dword ptr [edx + eax + 4], ebp 
  0x001E232F  83c140                  add      ecx, 0x40                      
  0x001E2332  e983020000              jmp      0x1e25ba                       
; end of function
                                        ; XREF: 0x001E22B9 (cond_jump)
  0x001E2337  c744241402000000        mov      dword ptr [esp + 0x14], 2      
  0x001E233F  90                      nop                                     
                                        ; XREF: 0x001E25B0 (cond_jump)
  0x001E2340  0fb611                  movzx    edx, byte ptr [ecx]            
  0x001E2343  0fbf1e                  movsx    ebx, word ptr [esi]            
  0x001E2346  8bef                    mov      ebp, edi                       
  0x001E2348  03ea                    add      ebp, edx                       
  0x001E234A  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E234D  8810                    mov      byte ptr [eax], dl             
  0x001E234F  0fb65101                movzx    edx, byte ptr [ecx + 1]        
  0x001E2353  0fbf5e02                movsx    ebx, word ptr [esi + 2]        
  0x001E2357  8bef                    mov      ebp, edi                       
  0x001E2359  03ea                    add      ebp, edx                       
  0x001E235B  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E235E  885001                  mov      byte ptr [eax + 1], dl         
  0x001E2361  0fb65102                movzx    edx, byte ptr [ecx + 2]        
  0x001E2365  0fbf5e04                movsx    ebx, word ptr [esi + 4]        
  0x001E2369  8bef                    mov      ebp, edi                       
  0x001E236B  03ea                    add      ebp, edx                       
  0x001E236D  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2370  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2373  0fb65103                movzx    edx, byte ptr [ecx + 3]        
  0x001E2377  0fbf5e06                movsx    ebx, word ptr [esi + 6]        
  0x001E237B  8bef                    mov      ebp, edi                       
  0x001E237D  03ea                    add      ebp, edx                       
  0x001E237F  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2382  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2385  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E2389  0fbf5e08                movsx    ebx, word ptr [esi + 8]        
  0x001E238D  8bef                    mov      ebp, edi                       
  0x001E238F  03ea                    add      ebp, edx                       
  0x001E2391  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2394  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2397  0fb65105                movzx    edx, byte ptr [ecx + 5]        
  0x001E239B  0fbf5e0a                movsx    ebx, word ptr [esi + 0xa]      
  0x001E239F  8bef                    mov      ebp, edi                       
  0x001E23A1  03ea                    add      ebp, edx                       
  0x001E23A3  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E23A6  885005                  mov      byte ptr [eax + 5], dl         
  0x001E23A9  0fb65106                movzx    edx, byte ptr [ecx + 6]        
  0x001E23AD  0fbf5e0c                movsx    ebx, word ptr [esi + 0xc]      
  0x001E23B1  8bef                    mov      ebp, edi                       
  0x001E23B3  03ea                    add      ebp, edx                       
  0x001E23B5  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E23B8  885006                  mov      byte ptr [eax + 6], dl         
  0x001E23BB  0fb65107                movzx    edx, byte ptr [ecx + 7]        
  0x001E23BF  0fbf5e0e                movsx    ebx, word ptr [esi + 0xe]      
  0x001E23C3  8bef                    mov      ebp, edi                       
  0x001E23C5  03ea                    add      ebp, edx                       
  0x001E23C7  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E23CA  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E23CE  885007                  mov      byte ptr [eax + 7], dl         
  0x001E23D1  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E23D5  03c3                    add      eax, ebx                       
  0x001E23D7  0fbf5e10                movsx    ebx, word ptr [esi + 0x10]     
  0x001E23DB  83c108                  add      ecx, 8                         
  0x001E23DE  83c610                  add      esi, 0x10                      
  0x001E23E1  8bef                    mov      ebp, edi                       
  0x001E23E3  03ea                    add      ebp, edx                       
  0x001E23E5  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E23E8  8810                    mov      byte ptr [eax], dl             
  0x001E23EA  0fb65101                movzx    edx, byte ptr [ecx + 1]        
  0x001E23EE  0fbf5e02                movsx    ebx, word ptr [esi + 2]        
  0x001E23F2  8bef                    mov      ebp, edi                       
  0x001E23F4  03ea                    add      ebp, edx                       
  0x001E23F6  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E23F9  885001                  mov      byte ptr [eax + 1], dl         
  0x001E23FC  0fb65102                movzx    edx, byte ptr [ecx + 2]        
  0x001E2400  0fbf5e04                movsx    ebx, word ptr [esi + 4]        
  0x001E2404  8bef                    mov      ebp, edi                       
  0x001E2406  03ea                    add      ebp, edx                       
  0x001E2408  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E240B  885002                  mov      byte ptr [eax + 2], dl         
  0x001E240E  0fb65103                movzx    edx, byte ptr [ecx + 3]        
  0x001E2412  0fbf5e06                movsx    ebx, word ptr [esi + 6]        
  0x001E2416  8bef                    mov      ebp, edi                       
  0x001E2418  03ea                    add      ebp, edx                       
  0x001E241A  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E241D  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2420  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E2424  0fbf5e08                movsx    ebx, word ptr [esi + 8]        
  0x001E2428  8bef                    mov      ebp, edi                       
  0x001E242A  03ea                    add      ebp, edx                       
  0x001E242C  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E242F  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2432  0fb65105                movzx    edx, byte ptr [ecx + 5]        
  0x001E2436  0fbf5e0a                movsx    ebx, word ptr [esi + 0xa]      
  0x001E243A  8bef                    mov      ebp, edi                       
  0x001E243C  03ea                    add      ebp, edx                       
  0x001E243E  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2441  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2444  0fb65106                movzx    edx, byte ptr [ecx + 6]        
  0x001E2448  0fbf5e0c                movsx    ebx, word ptr [esi + 0xc]      
  0x001E244C  8bef                    mov      ebp, edi                       
  0x001E244E  03ea                    add      ebp, edx                       
  0x001E2450  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2453  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2456  0fb65107                movzx    edx, byte ptr [ecx + 7]        
  0x001E245A  0fbf5e0e                movsx    ebx, word ptr [esi + 0xe]      
  0x001E245E  83c108                  add      ecx, 8                         
  0x001E2461  83c610                  add      esi, 0x10                      
  0x001E2464  8bef                    mov      ebp, edi                       
  0x001E2466  03ea                    add      ebp, edx                       
  0x001E2468  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E246B  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E246F  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2472  0fb611                  movzx    edx, byte ptr [ecx]            
  0x001E2475  03c3                    add      eax, ebx                       
  0x001E2477  0fbf1e                  movsx    ebx, word ptr [esi]            
  0x001E247A  8bef                    mov      ebp, edi                       
  0x001E247C  03ea                    add      ebp, edx                       
  0x001E247E  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2481  8810                    mov      byte ptr [eax], dl             
  0x001E2483  0fb65101                movzx    edx, byte ptr [ecx + 1]        
  0x001E2487  0fbf5e02                movsx    ebx, word ptr [esi + 2]        
  0x001E248B  8bef                    mov      ebp, edi                       
  0x001E248D  03ea                    add      ebp, edx                       
  0x001E248F  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2492  885001                  mov      byte ptr [eax + 1], dl         
  0x001E2495  0fb65102                movzx    edx, byte ptr [ecx + 2]        
  0x001E2499  0fbf5e04                movsx    ebx, word ptr [esi + 4]        
  0x001E249D  8bef                    mov      ebp, edi                       
  0x001E249F  03ea                    add      ebp, edx                       
  0x001E24A1  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24A4  885002                  mov      byte ptr [eax + 2], dl         
  0x001E24A7  0fb65103                movzx    edx, byte ptr [ecx + 3]        
  0x001E24AB  0fbf5e06                movsx    ebx, word ptr [esi + 6]        
  0x001E24AF  8bef                    mov      ebp, edi                       
  0x001E24B1  03ea                    add      ebp, edx                       
  0x001E24B3  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24B6  885003                  mov      byte ptr [eax + 3], dl         
  0x001E24B9  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E24BD  0fbf5e08                movsx    ebx, word ptr [esi + 8]        
  0x001E24C1  8bef                    mov      ebp, edi                       
  0x001E24C3  03ea                    add      ebp, edx                       
  0x001E24C5  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24C8  885004                  mov      byte ptr [eax + 4], dl         
  0x001E24CB  0fb65105                movzx    edx, byte ptr [ecx + 5]        
  0x001E24CF  0fbf5e0a                movsx    ebx, word ptr [esi + 0xa]      
  0x001E24D3  8bef                    mov      ebp, edi                       
  0x001E24D5  03ea                    add      ebp, edx                       
  0x001E24D7  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24DA  885005                  mov      byte ptr [eax + 5], dl         
  0x001E24DD  0fb65106                movzx    edx, byte ptr [ecx + 6]        
  0x001E24E1  0fbf5e0c                movsx    ebx, word ptr [esi + 0xc]      
  0x001E24E5  8bef                    mov      ebp, edi                       
  0x001E24E7  03ea                    add      ebp, edx                       
  0x001E24E9  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24EC  885006                  mov      byte ptr [eax + 6], dl         
  0x001E24EF  0fb65107                movzx    edx, byte ptr [ecx + 7]        
  0x001E24F3  0fbf5e0e                movsx    ebx, word ptr [esi + 0xe]      
  0x001E24F7  8bef                    mov      ebp, edi                       
  0x001E24F9  03ea                    add      ebp, edx                       
  0x001E24FB  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E24FE  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E2502  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2505  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E2509  83c108                  add      ecx, 8                         
  0x001E250C  83c610                  add      esi, 0x10                      
  0x001E250F  03c3                    add      eax, ebx                       
  0x001E2511  0fbf1e                  movsx    ebx, word ptr [esi]            
  0x001E2514  8bef                    mov      ebp, edi                       
  0x001E2516  03ea                    add      ebp, edx                       
  0x001E2518  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E251B  8810                    mov      byte ptr [eax], dl             
  0x001E251D  0fb65101                movzx    edx, byte ptr [ecx + 1]        
  0x001E2521  0fbf5e02                movsx    ebx, word ptr [esi + 2]        
  0x001E2525  8bef                    mov      ebp, edi                       
  0x001E2527  03ea                    add      ebp, edx                       
  0x001E2529  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E252C  885001                  mov      byte ptr [eax + 1], dl         
  0x001E252F  0fb65102                movzx    edx, byte ptr [ecx + 2]        
  0x001E2533  0fbf5e04                movsx    ebx, word ptr [esi + 4]        
  0x001E2537  8bef                    mov      ebp, edi                       
  0x001E2539  03ea                    add      ebp, edx                       
  0x001E253B  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E253E  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2541  0fb65103                movzx    edx, byte ptr [ecx + 3]        
  0x001E2545  0fbf5e06                movsx    ebx, word ptr [esi + 6]        
  0x001E2549  8bef                    mov      ebp, edi                       
  0x001E254B  03ea                    add      ebp, edx                       
  0x001E254D  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2550  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2553  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E2557  0fbf5e08                movsx    ebx, word ptr [esi + 8]        
  0x001E255B  8bef                    mov      ebp, edi                       
  0x001E255D  03ea                    add      ebp, edx                       
  0x001E255F  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2562  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2565  0fb65105                movzx    edx, byte ptr [ecx + 5]        
  0x001E2569  0fbf5e0a                movsx    ebx, word ptr [esi + 0xa]      
  0x001E256D  8bef                    mov      ebp, edi                       
  0x001E256F  03ea                    add      ebp, edx                       
  0x001E2571  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2574  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2577  0fb65106                movzx    edx, byte ptr [ecx + 6]        
  0x001E257B  0fbf5e0c                movsx    ebx, word ptr [esi + 0xc]      
  0x001E257F  8bef                    mov      ebp, edi                       
  0x001E2581  03ea                    add      ebp, edx                       
  0x001E2583  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2586  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2589  0fb65107                movzx    edx, byte ptr [ecx + 7]        
  0x001E258D  0fbf5e0e                movsx    ebx, word ptr [esi + 0xe]      
  0x001E2591  8bef                    mov      ebp, edi                       
  0x001E2593  03ea                    add      ebp, edx                       
  0x001E2595  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2598  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E259C  885007                  mov      byte ptr [eax + 7], dl         
  0x001E259F  8b542414                mov      edx, dword ptr [esp + 0x14]    
  0x001E25A3  83c108                  add      ecx, 8                         
  0x001E25A6  83c610                  add      esi, 0x10                      
  0x001E25A9  03c3                    add      eax, ebx                       
  0x001E25AB  4a                      dec      edx                            
  0x001E25AC  89542414                mov      dword ptr [esp + 0x14], edx    
  0x001E25B0  0f858afdffff            jne      0x1e2340                       
  0x001E25B6  8b5c241c                mov      ebx, dword ptr [esp + 0x1c]    
                                        ; XREF: 0x001E2332 (jump)
  0x001E25BA  8b542424                mov      edx, dword ptr [esp + 0x24]    
  0x001E25BE  8b442418                mov      eax, dword ptr [esp + 0x18]    
  0x001E25C2  d1e2                    shl      edx, 1                         
  0x001E25C4  48                      dec      eax                            
  0x001E25C5  89542424                mov      dword ptr [esp + 0x24], edx    
  0x001E25C9  89442418                mov      dword ptr [esp + 0x18], eax    
  0x001E25CD  0f85cdfcffff            jne      0x1e22a0                       
  0x001E25D3  5f                      pop      edi                            
  0x001E25D4  5e                      pop      esi                            
  0x001E25D5  5d                      pop      ebp                            
  0x001E25D6  5b                      pop      ebx                            
  0x001E25D7  83c410                  add      esp, 0x10                      
  0x001E25DA  c3                      ret                                     
  0x001E25DB  90                      nop                                     
  0x001E25DC  90                      nop                                     
  0x001E25DD  90                      nop                                     
  0x001E25DE  90                      nop                                     
  0x001E25DF  90                      nop                                     

; ============================================================
; Function: sub_001E25E0
; Start: 0x001E25E0  End: 0x001E2884  Size: 676 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E25E0:
  0x001E25E0  83ec14                  sub      esp, 0x14                      
  0x001E25E3  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001E25E6  53                      push     ebx                            
  0x001E25E7  55                      push     ebp                            
  0x001E25E8  56                      push     esi                            
  0x001E25E9  8b700c                  mov      esi, dword ptr [eax + 0xc]     
  0x001E25EC  57                      push     edi                            
  0x001E25ED  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E25F0  8b00                    mov      eax, dword ptr [eax]           
  0x001E25F2  83c204                  add      edx, 4                         
  0x001E25F5  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E25F9  c744242006000000        mov      dword ptr [esp + 0x20], 6      
                                        ; XREF: 0x001E2CA9 (cond_jump)
  0x001E2601  8b02                    mov      eax, dword ptr [edx]           
  0x001E2603  8b6a04                  mov      ebp, dword ptr [edx + 4]       
  0x001E2606  83c204                  add      edx, 4                         
  0x001E2609  83c204                  add      edx, 4                         
  0x001E260C  8954241c                mov      dword ptr [esp + 0x1c], edx    
  0x001E2610  8b542428                mov      edx, dword ptr [esp + 0x28]    
  0x001E2614  85d2                    test     edx, edx                       
  0x001E2616  bb02000000              mov      ebx, 2                         
  0x001E261B  896c2414                mov      dword ptr [esp + 0x14], ebp    
  0x001E261F  0f8c5f020000            jl       0x1e2884                       
  0x001E2625  81c780000000            add      edi, 0x80                      
  0x001E262B  895c2414                mov      dword ptr [esp + 0x14], ebx    
  0x001E262F  90                      nop                                     
                                        ; XREF: 0x001E2879 (cond_jump)
  0x001E2630  0fb619                  movzx    ebx, byte ptr [ecx]            
  0x001E2633  0fb616                  movzx    edx, byte ptr [esi]            
  0x001E2636  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E263A  d1fa                    sar      edx, 1                         
  0x001E263C  8810                    mov      byte ptr [eax], dl             
  0x001E263E  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E2642  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E2646  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E264A  d1fa                    sar      edx, 1                         
  0x001E264C  885001                  mov      byte ptr [eax + 1], dl         
  0x001E264F  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E2653  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E2657  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E265B  d1fa                    sar      edx, 1                         
  0x001E265D  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2660  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E2664  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E2668  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E266C  d1fa                    sar      edx, 1                         
  0x001E266E  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2671  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2675  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E2679  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E267D  d1fa                    sar      edx, 1                         
  0x001E267F  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2682  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2686  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E268A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E268E  d1fa                    sar      edx, 1                         
  0x001E2690  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2693  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2697  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E269B  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E269F  d1fa                    sar      edx, 1                         
  0x001E26A1  885006                  mov      byte ptr [eax + 6], dl         
  0x001E26A4  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E26A8  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E26AC  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E26B0  d1fa                    sar      edx, 1                         
  0x001E26B2  885007                  mov      byte ptr [eax + 7], dl         
  0x001E26B5  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E26B9  0fb65608                movzx    edx, byte ptr [esi + 8]        
  0x001E26BD  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E26C1  d1fa                    sar      edx, 1                         
  0x001E26C3  881428                  mov      byte ptr [eax + ebp], dl       
  0x001E26C6  0fb65909                movzx    ebx, byte ptr [ecx + 9]        
  0x001E26CA  0fb65609                movzx    edx, byte ptr [esi + 9]        
  0x001E26CE  83c108                  add      ecx, 8                         
  0x001E26D1  83c608                  add      esi, 8                         
  0x001E26D4  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E26D8  d1fa                    sar      edx, 1                         
  0x001E26DA  88542801                mov      byte ptr [eax + ebp + 1], dl   
  0x001E26DE  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E26E2  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E26E6  03c5                    add      eax, ebp                       
  0x001E26E8  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E26EC  d1fa                    sar      edx, 1                         
  0x001E26EE  885002                  mov      byte ptr [eax + 2], dl         
  0x001E26F1  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E26F5  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E26F9  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E26FD  d1fa                    sar      edx, 1                         
  0x001E26FF  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2702  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2706  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E270A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E270E  d1fa                    sar      edx, 1                         
  0x001E2710  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2713  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2717  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E271B  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E271F  d1fa                    sar      edx, 1                         
  0x001E2721  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2724  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2728  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E272C  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2730  d1fa                    sar      edx, 1                         
  0x001E2732  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2735  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E2739  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E273D  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2741  d1fa                    sar      edx, 1                         
  0x001E2743  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2746  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E274A  0fb65608                movzx    edx, byte ptr [esi + 8]        
  0x001E274E  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2752  d1fa                    sar      edx, 1                         
  0x001E2754  881428                  mov      byte ptr [eax + ebp], dl       
  0x001E2757  0fb65909                movzx    ebx, byte ptr [ecx + 9]        
  0x001E275B  0fb65609                movzx    edx, byte ptr [esi + 9]        
  0x001E275F  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2763  d1fa                    sar      edx, 1                         
  0x001E2765  88542801                mov      byte ptr [eax + ebp + 1], dl   
  0x001E2769  0fb6590a                movzx    ebx, byte ptr [ecx + 0xa]      
  0x001E276D  0fb6560a                movzx    edx, byte ptr [esi + 0xa]      
  0x001E2771  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2775  83c108                  add      ecx, 8                         
  0x001E2778  83c608                  add      esi, 8                         
  0x001E277B  d1fa                    sar      edx, 1                         
  0x001E277D  88542802                mov      byte ptr [eax + ebp + 2], dl   
  0x001E2781  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E2785  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E2789  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E278D  03c5                    add      eax, ebp                       
  0x001E278F  d1fa                    sar      edx, 1                         
  0x001E2791  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2794  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2798  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E279C  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27A0  d1fa                    sar      edx, 1                         
  0x001E27A2  885004                  mov      byte ptr [eax + 4], dl         
  0x001E27A5  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E27A9  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E27AD  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27B1  d1fa                    sar      edx, 1                         
  0x001E27B3  885005                  mov      byte ptr [eax + 5], dl         
  0x001E27B6  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E27BA  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E27BE  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27C2  d1fa                    sar      edx, 1                         
  0x001E27C4  885006                  mov      byte ptr [eax + 6], dl         
  0x001E27C7  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E27CB  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E27CF  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27D3  d1fa                    sar      edx, 1                         
  0x001E27D5  885007                  mov      byte ptr [eax + 7], dl         
  0x001E27D8  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E27DC  0fb65608                movzx    edx, byte ptr [esi + 8]        
  0x001E27E0  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27E4  d1fa                    sar      edx, 1                         
  0x001E27E6  881428                  mov      byte ptr [eax + ebp], dl       
  0x001E27E9  0fb65909                movzx    ebx, byte ptr [ecx + 9]        
  0x001E27ED  0fb65609                movzx    edx, byte ptr [esi + 9]        
  0x001E27F1  83c108                  add      ecx, 8                         
  0x001E27F4  83c608                  add      esi, 8                         
  0x001E27F7  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E27FB  03c5                    add      eax, ebp                       
  0x001E27FD  d1fa                    sar      edx, 1                         
  0x001E27FF  885001                  mov      byte ptr [eax + 1], dl         
  0x001E2802  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E2806  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E280A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E280E  d1fa                    sar      edx, 1                         
  0x001E2810  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2813  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E2817  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E281B  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E281F  d1fa                    sar      edx, 1                         
  0x001E2821  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2824  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2828  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E282C  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2830  d1fa                    sar      edx, 1                         
  0x001E2832  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2835  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2839  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E283D  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2841  d1fa                    sar      edx, 1                         
  0x001E2843  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2846  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E284A  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E284E  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2852  d1fa                    sar      edx, 1                         
  0x001E2854  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2857  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E285B  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E285F  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2863  d1fa                    sar      edx, 1                         
  0x001E2865  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2868  8b542414                mov      edx, dword ptr [esp + 0x14]    
  0x001E286C  83c108                  add      ecx, 8                         
  0x001E286F  83c608                  add      esi, 8                         
  0x001E2872  03c5                    add      eax, ebp                       
  0x001E2874  4a                      dec      edx                            
  0x001E2875  89542414                mov      dword ptr [esp + 0x14], edx    
  0x001E2879  0f85b1fdffff            jne      0x1e2630                       
  0x001E287F  e90e040000              jmp      0x1e2c92                       
; end of function
                                        ; XREF: 0x001E261F (cond_jump)
  0x001E2884  895c2418                mov      dword ptr [esp + 0x18], ebx    
  0x001E2888  eb06                    jmp      0x1e2890                       
  0x001E288A  8d9b00000000            lea      ebx, [ebx]                     
                                        ; XREF: 0x001E2888 (jump), 0x001E2C8C (cond_jump)
  0x001E2890  0fb619                  movzx    ebx, byte ptr [ecx]            
  0x001E2893  0fb616                  movzx    edx, byte ptr [esi]            
  0x001E2896  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E289A  0fbf1f                  movsx    ebx, word ptr [edi]            
  0x001E289D  d1fa                    sar      edx, 1                         
  0x001E289F  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E28A3  03ea                    add      ebp, edx                       
  0x001E28A5  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E28A8  8810                    mov      byte ptr [eax], dl             
  0x001E28AA  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E28AE  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E28B2  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E28B6  0fbf5f02                movsx    ebx, word ptr [edi + 2]        
  0x001E28BA  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E28BE  d1fa                    sar      edx, 1                         
  0x001E28C0  03ea                    add      ebp, edx                       
  0x001E28C2  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E28C5  885001                  mov      byte ptr [eax + 1], dl         
  0x001E28C8  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E28CC  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E28D0  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E28D4  0fbf5f04                movsx    ebx, word ptr [edi + 4]        
  0x001E28D8  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E28DC  d1fa                    sar      edx, 1                         
  0x001E28DE  03ea                    add      ebp, edx                       
  0x001E28E0  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E28E3  885002                  mov      byte ptr [eax + 2], dl         
  0x001E28E6  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E28EA  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E28EE  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E28F2  0fbf5f06                movsx    ebx, word ptr [edi + 6]        
  0x001E28F6  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E28FA  d1fa                    sar      edx, 1                         
  0x001E28FC  03ea                    add      ebp, edx                       
  0x001E28FE  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2901  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2904  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2908  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E290C  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2910  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2914  0fbf5f08                movsx    ebx, word ptr [edi + 8]        
  0x001E2918  d1fa                    sar      edx, 1                         
  0x001E291A  03ea                    add      ebp, edx                       
  0x001E291C  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E291F  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2923  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2926  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E292A  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E292E  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2932  0fbf5f0a                movsx    ebx, word ptr [edi + 0xa]      
  0x001E2936  d1fa                    sar      edx, 1                         
  0x001E2938  03ea                    add      ebp, edx                       
  0x001E293A  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E293D  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2941  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2944  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2948  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E294C  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2950  0fbf5f0c                movsx    ebx, word ptr [edi + 0xc]      
  0x001E2954  d1fa                    sar      edx, 1                         
  0x001E2956  03ea                    add      ebp, edx                       
  0x001E2958  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E295B  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E295F  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2962  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E2966  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E296A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E296E  0fbf5f0e                movsx    ebx, word ptr [edi + 0xe]      
  0x001E2972  d1fa                    sar      edx, 1                         
  0x001E2974  03ea                    add      ebp, edx                       
  0x001E2976  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2979  885007                  mov      byte ptr [eax + 7], dl         
  0x001E297C  8b542414                mov      edx, dword ptr [esp + 0x14]    
  0x001E2980  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E2984  83c108                  add      ecx, 8                         
  0x001E2987  83c608                  add      esi, 8                         
  0x001E298A  03c2                    add      eax, edx                       
  0x001E298C  0fb616                  movzx    edx, byte ptr [esi]            
  0x001E298F  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2993  83c710                  add      edi, 0x10                      
  0x001E2996  d1fa                    sar      edx, 1                         
  0x001E2998  0fbf1f                  movsx    ebx, word ptr [edi]            
  0x001E299B  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E299F  03ea                    add      ebp, edx                       
  0x001E29A1  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E29A4  8810                    mov      byte ptr [eax], dl             
  0x001E29A6  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E29AA  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E29AE  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E29B2  0fbf5f02                movsx    ebx, word ptr [edi + 2]        
  0x001E29B6  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E29BA  d1fa                    sar      edx, 1                         
  0x001E29BC  03ea                    add      ebp, edx                       
  0x001E29BE  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E29C1  885001                  mov      byte ptr [eax + 1], dl         
  0x001E29C4  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E29C8  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E29CC  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E29D0  0fbf5f04                movsx    ebx, word ptr [edi + 4]        
  0x001E29D4  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E29D8  d1fa                    sar      edx, 1                         
  0x001E29DA  03ea                    add      ebp, edx                       
  0x001E29DC  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E29DF  885002                  mov      byte ptr [eax + 2], dl         
  0x001E29E2  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E29E6  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E29EA  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E29EE  0fbf5f06                movsx    ebx, word ptr [edi + 6]        
  0x001E29F2  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E29F6  d1fa                    sar      edx, 1                         
  0x001E29F8  03ea                    add      ebp, edx                       
  0x001E29FA  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E29FD  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2A00  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2A04  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E2A08  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2A0C  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2A10  0fbf5f08                movsx    ebx, word ptr [edi + 8]        
  0x001E2A14  d1fa                    sar      edx, 1                         
  0x001E2A16  03ea                    add      ebp, edx                       
  0x001E2A18  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2A1B  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2A1E  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2A22  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E2A26  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2A2A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2A2E  0fbf5f0a                movsx    ebx, word ptr [edi + 0xa]      
  0x001E2A32  d1fa                    sar      edx, 1                         
  0x001E2A34  03ea                    add      ebp, edx                       
  0x001E2A36  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2A39  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2A3D  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2A40  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2A44  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E2A48  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2A4C  0fbf5f0c                movsx    ebx, word ptr [edi + 0xc]      
  0x001E2A50  d1fa                    sar      edx, 1                         
  0x001E2A52  03ea                    add      ebp, edx                       
  0x001E2A54  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2A57  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2A5B  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2A5E  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E2A62  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E2A66  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2A6A  0fbf5f0e                movsx    ebx, word ptr [edi + 0xe]      
  0x001E2A6E  d1fa                    sar      edx, 1                         
  0x001E2A70  03ea                    add      ebp, edx                       
  0x001E2A72  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2A75  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2A79  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2A7C  8b542414                mov      edx, dword ptr [esp + 0x14]    
  0x001E2A80  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E2A84  03c2                    add      eax, edx                       
  0x001E2A86  0fb65608                movzx    edx, byte ptr [esi + 8]        
  0x001E2A8A  83c108                  add      ecx, 8                         
  0x001E2A8D  83c608                  add      esi, 8                         
  0x001E2A90  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2A94  0fbf5f10                movsx    ebx, word ptr [edi + 0x10]     
  0x001E2A98  83c710                  add      edi, 0x10                      
  0x001E2A9B  d1fa                    sar      edx, 1                         
  0x001E2A9D  03ea                    add      ebp, edx                       
  0x001E2A9F  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2AA2  8810                    mov      byte ptr [eax], dl             
  0x001E2AA4  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E2AA8  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E2AAC  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2AB0  0fbf5f02                movsx    ebx, word ptr [edi + 2]        
  0x001E2AB4  d1fa                    sar      edx, 1                         
  0x001E2AB6  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2ABA  03ea                    add      ebp, edx                       
  0x001E2ABC  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2ABF  885001                  mov      byte ptr [eax + 1], dl         
  0x001E2AC2  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E2AC6  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E2ACA  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2ACE  0fbf5f04                movsx    ebx, word ptr [edi + 4]        
  0x001E2AD2  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2AD6  d1fa                    sar      edx, 1                         
  0x001E2AD8  03ea                    add      ebp, edx                       
  0x001E2ADA  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2ADD  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2AE0  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E2AE4  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E2AE8  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2AEC  0fbf5f06                movsx    ebx, word ptr [edi + 6]        
  0x001E2AF0  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2AF4  d1fa                    sar      edx, 1                         
  0x001E2AF6  03ea                    add      ebp, edx                       
  0x001E2AF8  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2AFB  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2AFE  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2B02  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E2B06  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2B0A  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2B0E  0fbf5f08                movsx    ebx, word ptr [edi + 8]        
  0x001E2B12  d1fa                    sar      edx, 1                         
  0x001E2B14  03ea                    add      ebp, edx                       
  0x001E2B16  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2B19  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2B1C  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2B20  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E2B24  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2B28  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2B2C  0fbf5f0a                movsx    ebx, word ptr [edi + 0xa]      
  0x001E2B30  d1fa                    sar      edx, 1                         
  0x001E2B32  03ea                    add      ebp, edx                       
  0x001E2B34  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2B37  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2B3B  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2B3E  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2B42  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E2B46  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2B4A  0fbf5f0c                movsx    ebx, word ptr [edi + 0xc]      
  0x001E2B4E  d1fa                    sar      edx, 1                         
  0x001E2B50  03ea                    add      ebp, edx                       
  0x001E2B52  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2B55  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2B59  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2B5C  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E2B60  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E2B64  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2B68  0fbf5f0e                movsx    ebx, word ptr [edi + 0xe]      
  0x001E2B6C  d1fa                    sar      edx, 1                         
  0x001E2B6E  03ea                    add      ebp, edx                       
  0x001E2B70  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2B73  8b6c2414                mov      ebp, dword ptr [esp + 0x14]    
  0x001E2B77  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2B7A  0fb65908                movzx    ebx, byte ptr [ecx + 8]        
  0x001E2B7E  0fb65608                movzx    edx, byte ptr [esi + 8]        
  0x001E2B82  83c108                  add      ecx, 8                         
  0x001E2B85  83c608                  add      esi, 8                         
  0x001E2B88  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2B8C  0fbf5f10                movsx    ebx, word ptr [edi + 0x10]     
  0x001E2B90  83c710                  add      edi, 0x10                      
  0x001E2B93  03c5                    add      eax, ebp                       
  0x001E2B95  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2B99  d1fa                    sar      edx, 1                         
  0x001E2B9B  03ea                    add      ebp, edx                       
  0x001E2B9D  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2BA0  8810                    mov      byte ptr [eax], dl             
  0x001E2BA2  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E2BA6  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E2BAA  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2BAE  0fbf5f02                movsx    ebx, word ptr [edi + 2]        
  0x001E2BB2  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2BB6  d1fa                    sar      edx, 1                         
  0x001E2BB8  03ea                    add      ebp, edx                       
  0x001E2BBA  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2BBD  885001                  mov      byte ptr [eax + 1], dl         
  0x001E2BC0  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E2BC4  0fb65602                movzx    edx, byte ptr [esi + 2]        
  0x001E2BC8  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2BCC  0fbf5f04                movsx    ebx, word ptr [edi + 4]        
  0x001E2BD0  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2BD4  d1fa                    sar      edx, 1                         
  0x001E2BD6  03ea                    add      ebp, edx                       
  0x001E2BD8  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2BDB  885002                  mov      byte ptr [eax + 2], dl         
  0x001E2BDE  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E2BE2  0fb65603                movzx    edx, byte ptr [esi + 3]        
  0x001E2BE6  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2BEA  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2BEE  0fbf5f06                movsx    ebx, word ptr [edi + 6]        
  0x001E2BF2  d1fa                    sar      edx, 1                         
  0x001E2BF4  03ea                    add      ebp, edx                       
  0x001E2BF6  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2BF9  885003                  mov      byte ptr [eax + 3], dl         
  0x001E2BFC  0fb65904                movzx    ebx, byte ptr [ecx + 4]        
  0x001E2C00  0fb65604                movzx    edx, byte ptr [esi + 4]        
  0x001E2C04  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2C08  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2C0C  0fbf5f08                movsx    ebx, word ptr [edi + 8]        
  0x001E2C10  d1fa                    sar      edx, 1                         
  0x001E2C12  03ea                    add      ebp, edx                       
  0x001E2C14  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2C17  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2C1B  885004                  mov      byte ptr [eax + 4], dl         
  0x001E2C1E  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E2C22  0fb65605                movzx    edx, byte ptr [esi + 5]        
  0x001E2C26  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2C2A  0fbf5f0a                movsx    ebx, word ptr [edi + 0xa]      
  0x001E2C2E  d1fa                    sar      edx, 1                         
  0x001E2C30  03ea                    add      ebp, edx                       
  0x001E2C32  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2C35  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2C39  885005                  mov      byte ptr [eax + 5], dl         
  0x001E2C3C  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E2C40  0fb65606                movzx    edx, byte ptr [esi + 6]        
  0x001E2C44  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2C48  0fbf5f0c                movsx    ebx, word ptr [edi + 0xc]      
  0x001E2C4C  d1fa                    sar      edx, 1                         
  0x001E2C4E  03ea                    add      ebp, edx                       
  0x001E2C50  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2C53  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001E2C57  885006                  mov      byte ptr [eax + 6], dl         
  0x001E2C5A  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E2C5E  0fb65607                movzx    edx, byte ptr [esi + 7]        
  0x001E2C62  8d541a01                lea      edx, [edx + ebx + 1]           
  0x001E2C66  0fbf5f0e                movsx    ebx, word ptr [edi + 0xe]      
  0x001E2C6A  d1fa                    sar      edx, 1                         
  0x001E2C6C  03ea                    add      ebp, edx                       
  0x001E2C6E  8a142b                  mov      dl, byte ptr [ebx + ebp]       
  0x001E2C71  8b5c2414                mov      ebx, dword ptr [esp + 0x14]    
  0x001E2C75  885007                  mov      byte ptr [eax + 7], dl         
  0x001E2C78  8b542418                mov      edx, dword ptr [esp + 0x18]    
  0x001E2C7C  83c108                  add      ecx, 8                         
  0x001E2C7F  83c608                  add      esi, 8                         
  0x001E2C82  83c710                  add      edi, 0x10                      
  0x001E2C85  03c3                    add      eax, ebx                       
  0x001E2C87  4a                      dec      edx                            
  0x001E2C88  89542418                mov      dword ptr [esp + 0x18], edx    
  0x001E2C8C  0f85fefbffff            jne      0x1e2890                       
                                        ; XREF: 0x001E287F (jump)
  0x001E2C92  8b5c2428                mov      ebx, dword ptr [esp + 0x28]    
  0x001E2C96  8b442420                mov      eax, dword ptr [esp + 0x20]    
  0x001E2C9A  8b54241c                mov      edx, dword ptr [esp + 0x1c]    
  0x001E2C9E  d1e3                    shl      ebx, 1                         
  0x001E2CA0  48                      dec      eax                            
  0x001E2CA1  895c2428                mov      dword ptr [esp + 0x28], ebx    
  0x001E2CA5  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E2CA9  0f8552f9ffff            jne      0x1e2601                       
  0x001E2CAF  5f                      pop      edi                            
  0x001E2CB0  5e                      pop      esi                            
  0x001E2CB1  5d                      pop      ebp                            
  0x001E2CB2  5b                      pop      ebx                            
  0x001E2CB3  83c414                  add      esp, 0x14                      
  0x001E2CB6  c3                      ret                                     
  0x001E2CB7  90                      nop                                     
  0x001E2CB8  90                      nop                                     
  0x001E2CB9  90                      nop                                     
  0x001E2CBA  90                      nop                                     
  0x001E2CBB  90                      nop                                     
  0x001E2CBC  90                      nop                                     
  0x001E2CBD  90                      nop                                     
  0x001E2CBE  90                      nop                                     
  0x001E2CBF  90                      nop                                     

; ============================================================
; Function: sub_001E2CC0
; Start: 0x001E2CC0  End: 0x001E3001  Size: 833 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E2CC0:
  0x001E2CC0  53                      push     ebx                            
  0x001E2CC1  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E2CC5  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E2CC7  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E2CC9  03cb                    add      ecx, ebx                       
  0x001E2CCB  56                      push     esi                            
  0x001E2CCC  8bf0                    mov      esi, eax                       
  0x001E2CCE  0fbf460c                movsx    eax, word ptr [esi + 0xc]      
  0x001E2CD2  99                      cdq                                     
  0x001E2CD3  83e207                  and      edx, 7                         
  0x001E2CD6  03c2                    add      eax, edx                       
  0x001E2CD8  8b16                    mov      edx, dword ptr [esi]           
  0x001E2CDA  03d3                    add      edx, ebx                       
  0x001E2CDC  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E2CDE  891a                    mov      dword ptr [edx], ebx           
  0x001E2CE0  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E2CE3  895a04                  mov      dword ptr [edx + 4], ebx       
  0x001E2CE6  c1f803                  sar      eax, 3                         
  0x001E2CE9  c1e003                  shl      eax, 3                         
  0x001E2CEC  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2CEF  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2CF2  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2CF6  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2CFA  03c8                    add      ecx, eax                       
  0x001E2CFC  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2CFF  03d0                    add      edx, eax                       
  0x001E2D01  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2D04  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2D08  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2D0C  03c8                    add      ecx, eax                       
  0x001E2D0E  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D11  03d0                    add      edx, eax                       
  0x001E2D13  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2D16  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2D1A  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2D1E  03c8                    add      ecx, eax                       
  0x001E2D20  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D23  03d0                    add      edx, eax                       
  0x001E2D25  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2D28  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2D2C  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2D30  03c8                    add      ecx, eax                       
  0x001E2D32  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D35  03d0                    add      edx, eax                       
  0x001E2D37  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2D3A  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2D3E  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2D42  03c8                    add      ecx, eax                       
  0x001E2D44  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D47  03d0                    add      edx, eax                       
  0x001E2D49  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2D4C  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2D50  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2D54  03d0                    add      edx, eax                       
  0x001E2D56  03c8                    add      ecx, eax                       
  0x001E2D58  8b1c08                  mov      ebx, dword ptr [eax + ecx]     
  0x001E2D5B  891c10                  mov      dword ptr [eax + edx], ebx     
  0x001E2D5E  8b4c0804                mov      ecx, dword ptr [eax + ecx + 4] 
  0x001E2D62  894c1004                mov      dword ptr [eax + edx + 4], ecx 
  0x001E2D66  8b4f04                  mov      ecx, dword ptr [edi + 4]       
  0x001E2D69  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001E2D6D  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E2D6F  8b5604                  mov      edx, dword ptr [esi + 4]       
  0x001E2D72  03d3                    add      edx, ebx                       
  0x001E2D74  03cb                    add      ecx, ebx                       
  0x001E2D76  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E2D78  891a                    mov      dword ptr [edx], ebx           
  0x001E2D7A  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E2D7D  895a04                  mov      dword ptr [edx + 4], ebx       
  0x001E2D80  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D83  03c8                    add      ecx, eax                       
  0x001E2D85  03d0                    add      edx, eax                       
  0x001E2D87  891a                    mov      dword ptr [edx], ebx           
  0x001E2D89  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E2D8C  895a04                  mov      dword ptr [edx + 4], ebx       
  0x001E2D8F  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2D92  03d0                    add      edx, eax                       
  0x001E2D94  03c8                    add      ecx, eax                       
  0x001E2D96  891a                    mov      dword ptr [edx], ebx           
  0x001E2D98  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E2D9B  895a04                  mov      dword ptr [edx + 4], ebx       
  0x001E2D9E  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2DA1  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2DA4  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2DA8  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2DAC  03d0                    add      edx, eax                       
  0x001E2DAE  03c8                    add      ecx, eax                       
  0x001E2DB0  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2DB3  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2DB6  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2DBA  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2DBE  03d0                    add      edx, eax                       
  0x001E2DC0  03c8                    add      ecx, eax                       
  0x001E2DC2  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2DC5  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2DC8  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2DCC  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2DD0  03d0                    add      edx, eax                       
  0x001E2DD2  03c8                    add      ecx, eax                       
  0x001E2DD4  8b1c01                  mov      ebx, dword ptr [ecx + eax]     
  0x001E2DD7  891c02                  mov      dword ptr [edx + eax], ebx     
  0x001E2DDA  8b5c0104                mov      ebx, dword ptr [ecx + eax + 4] 
  0x001E2DDE  895c0204                mov      dword ptr [edx + eax + 4], ebx 
  0x001E2DE2  03d0                    add      edx, eax                       
  0x001E2DE4  03c8                    add      ecx, eax                       
  0x001E2DE6  8b1c08                  mov      ebx, dword ptr [eax + ecx]     
  0x001E2DE9  891c10                  mov      dword ptr [eax + edx], ebx     
  0x001E2DEC  8b4c0804                mov      ecx, dword ptr [eax + ecx + 4] 
  0x001E2DF0  894c1004                mov      dword ptr [eax + edx + 4], ecx 
  0x001E2DF4  0fbf460e                movsx    eax, word ptr [esi + 0xe]      
  0x001E2DF8  8b4f08                  mov      ecx, dword ptr [edi + 8]       
  0x001E2DFB  99                      cdq                                     
  0x001E2DFC  83e207                  and      edx, 7                         
  0x001E2DFF  03c2                    add      eax, edx                       
  0x001E2E01  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001E2E05  8b5a04                  mov      ebx, dword ptr [edx + 4]       
  0x001E2E08  8b5608                  mov      edx, dword ptr [esi + 8]       
  0x001E2E0B  8b3419                  mov      esi, dword ptr [ecx + ebx]     
  0x001E2E0E  89341a                  mov      dword ptr [edx + ebx], esi     
  0x001E2E11  8b741904                mov      esi, dword ptr [ecx + ebx + 4] 
  0x001E2E15  89741a04                mov      dword ptr [edx + ebx + 4], esi 
  0x001E2E19  8b741908                mov      esi, dword ptr [ecx + ebx + 8] 
  0x001E2E1D  89741a08                mov      dword ptr [edx + ebx + 8], esi 
  0x001E2E21  8b74190c                mov      esi, dword ptr [ecx + ebx + 0xc] 
  0x001E2E25  89741a0c                mov      dword ptr [edx + ebx + 0xc], esi 
  0x001E2E29  03cb                    add      ecx, ebx                       
  0x001E2E2B  03d3                    add      edx, ebx                       
  0x001E2E2D  c1f803                  sar      eax, 3                         
  0x001E2E30  c1e003                  shl      eax, 3                         
  0x001E2E33  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2E36  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2E39  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2E3D  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2E41  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2E45  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2E49  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2E4D  03c8                    add      ecx, eax                       
  0x001E2E4F  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2E53  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2E56  03d0                    add      edx, eax                       
  0x001E2E58  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2E5B  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2E5F  03c8                    add      ecx, eax                       
  0x001E2E61  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2E65  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2E68  03d0                    add      edx, eax                       
  0x001E2E6A  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2E6D  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2E70  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2E73  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2E76  03c8                    add      ecx, eax                       
  0x001E2E78  03d0                    add      edx, eax                       
  0x001E2E7A  8932                    mov      dword ptr [edx], esi           
  0x001E2E7C  8b7104                  mov      esi, dword ptr [ecx + 4]       
  0x001E2E7F  897204                  mov      dword ptr [edx + 4], esi       
  0x001E2E82  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2E85  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2E88  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2E8B  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2E8E  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2E91  03d0                    add      edx, eax                       
  0x001E2E93  03c8                    add      ecx, eax                       
  0x001E2E95  8932                    mov      dword ptr [edx], esi           
  0x001E2E97  8b7104                  mov      esi, dword ptr [ecx + 4]       
  0x001E2E9A  897204                  mov      dword ptr [edx + 4], esi       
  0x001E2E9D  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2EA0  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2EA3  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2EA6  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2EA9  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2EAC  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2EAF  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2EB3  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2EB7  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2EBB  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2EBF  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2EC3  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2EC7  03c8                    add      ecx, eax                       
  0x001E2EC9  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2ECC  03d0                    add      edx, eax                       
  0x001E2ECE  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2ED1  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2ED5  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2ED9  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2EDD  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2EE1  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2EE5  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2EE9  03c8                    add      ecx, eax                       
  0x001E2EEB  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2EEE  03d0                    add      edx, eax                       
  0x001E2EF0  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2EF3  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2EF7  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2EFB  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2EFF  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2F03  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2F07  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2F0B  03c8                    add      ecx, eax                       
  0x001E2F0D  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2F10  03d0                    add      edx, eax                       
  0x001E2F12  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2F15  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2F19  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2F1D  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2F21  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2F25  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2F29  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2F2D  03c8                    add      ecx, eax                       
  0x001E2F2F  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2F32  03d0                    add      edx, eax                       
  0x001E2F34  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2F37  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2F3B  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2F3F  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2F43  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2F47  8b74010c                mov      esi, dword ptr [ecx + eax + 0xc] 
  0x001E2F4B  8974020c                mov      dword ptr [edx + eax + 0xc], esi 
  0x001E2F4F  03c8                    add      ecx, eax                       
  0x001E2F51  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2F54  03d0                    add      edx, eax                       
  0x001E2F56  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2F59  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2F5D  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2F61  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2F65  03c8                    add      ecx, eax                       
  0x001E2F67  03d0                    add      edx, eax                       
  0x001E2F69  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2F6C  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2F6F  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2F72  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2F75  03c8                    add      ecx, eax                       
  0x001E2F77  03d0                    add      edx, eax                       
  0x001E2F79  8932                    mov      dword ptr [edx], esi           
  0x001E2F7B  8b7104                  mov      esi, dword ptr [ecx + 4]       
  0x001E2F7E  897204                  mov      dword ptr [edx + 4], esi       
  0x001E2F81  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2F84  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2F87  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2F8A  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2F8D  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2F90  03d0                    add      edx, eax                       
  0x001E2F92  03c8                    add      ecx, eax                       
  0x001E2F94  8932                    mov      dword ptr [edx], esi           
  0x001E2F96  8b7104                  mov      esi, dword ptr [ecx + 4]       
  0x001E2F99  897204                  mov      dword ptr [edx + 4], esi       
  0x001E2F9C  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2F9F  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2FA2  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2FA5  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2FA8  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2FAB  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2FAE  8b740104                mov      esi, dword ptr [ecx + eax + 4] 
  0x001E2FB2  89740204                mov      dword ptr [edx + eax + 4], esi 
  0x001E2FB6  8b740108                mov      esi, dword ptr [ecx + eax + 8] 
  0x001E2FBA  03c8                    add      ecx, eax                       
  0x001E2FBC  89740208                mov      dword ptr [edx + eax + 8], esi 
  0x001E2FC0  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2FC3  03d0                    add      edx, eax                       
  0x001E2FC5  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2FC8  8b3401                  mov      esi, dword ptr [ecx + eax]     
  0x001E2FCB  03c8                    add      ecx, eax                       
  0x001E2FCD  893402                  mov      dword ptr [edx + eax], esi     
  0x001E2FD0  8b7104                  mov      esi, dword ptr [ecx + 4]       
  0x001E2FD3  03d0                    add      edx, eax                       
  0x001E2FD5  897204                  mov      dword ptr [edx + 4], esi       
  0x001E2FD8  8b7108                  mov      esi, dword ptr [ecx + 8]       
  0x001E2FDB  897208                  mov      dword ptr [edx + 8], esi       
  0x001E2FDE  8b710c                  mov      esi, dword ptr [ecx + 0xc]     
  0x001E2FE1  89720c                  mov      dword ptr [edx + 0xc], esi     
  0x001E2FE4  03d0                    add      edx, eax                       
  0x001E2FE6  03c8                    add      ecx, eax                       
  0x001E2FE8  8b01                    mov      eax, dword ptr [ecx]           
  0x001E2FEA  8902                    mov      dword ptr [edx], eax           
  0x001E2FEC  8b4104                  mov      eax, dword ptr [ecx + 4]       
  0x001E2FEF  894204                  mov      dword ptr [edx + 4], eax       
  0x001E2FF2  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001E2FF5  894208                  mov      dword ptr [edx + 8], eax       
  0x001E2FF8  8b490c                  mov      ecx, dword ptr [ecx + 0xc]     
  0x001E2FFB  5e                      pop      esi                            
  0x001E2FFC  894a0c                  mov      dword ptr [edx + 0xc], ecx     
  0x001E2FFF  5b                      pop      ebx                            
  0x001E3000  c3                      ret                                     
; end of function
  0x001E3001  90                      nop                                     
  0x001E3002  90                      nop                                     
  0x001E3003  90                      nop                                     
  0x001E3004  90                      nop                                     
  0x001E3005  90                      nop                                     
  0x001E3006  90                      nop                                     
  0x001E3007  90                      nop                                     
  0x001E3008  90                      nop                                     
  0x001E3009  90                      nop                                     
  0x001E300A  90                      nop                                     
  0x001E300B  90                      nop                                     
  0x001E300C  90                      nop                                     
  0x001E300D  90                      nop                                     
  0x001E300E  90                      nop                                     
  0x001E300F  90                      nop                                     
  0x001E3010  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E3014  53                      push     ebx                            
  0x001E3015  55                      push     ebp                            
  0x001E3016  56                      push     esi                            
  0x001E3017  57                      push     edi                            
  0x001E3018  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001E301C  8b9f9c020000            mov      ebx, dword ptr [edi + 0x29c]   
  0x001E3022  8baf40020000            mov      ebp, dword ptr [edi + 0x240]   
  0x001E3028  8bf3                    mov      esi, ebx                       
  0x001E302A  2bf2                    sub      esi, edx                       
  0x001E302C  46                      inc      esi                            
  0x001E302D  3bf3                    cmp      esi, ebx                       
  0x001E302F  c787a802000000000000    mov      dword ptr [edi + 0x2a8], 0     
  0x001E3039  7d16                    jge      0x1e3051                       
  0x001E303B  eb03                    jmp      0x1e3040                       
  0x001E303D  8d4900                  lea      ecx, [ecx]                     
                                        ; XREF: 0x001E303B (jump), 0x001E304F (cond_jump)
  0x001E3040  57                      push     edi                            
  0x001E3041  89b79c020000            mov      dword ptr [edi + 0x29c], esi   
  0x001E3047  ffd5                    call     ebp                            
  0x001E3049  83c404                  add      esp, 4                         
  0x001E304C  46                      inc      esi                            
  0x001E304D  3bf3                    cmp      esi, ebx                       
  0x001E304F  7cef                    jl       0x1e3040                       
                                        ; XREF: 0x001E3039 (cond_jump)
  0x001E3051  899f9c020000            mov      dword ptr [edi + 0x29c], ebx   
  0x001E3057  5f                      pop      edi                            
  0x001E3058  5e                      pop      esi                            
  0x001E3059  5d                      pop      ebp                            
  0x001E305A  5b                      pop      ebx                            
  0x001E305B  c3                      ret                                     
  0x001E305C  90                      nop                                     
  0x001E305D  90                      nop                                     
  0x001E305E  90                      nop                                     
  0x001E305F  90                      nop                                     
  0x001E3060  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E3064  8b889c020000            mov      ecx, dword ptr [eax + 0x29c]   
  0x001E306A  8d8c48680c0000          lea      ecx, [eax + ecx*2 + 0xc68]     
  0x001E3071  53                      push     ebx                            
  0x001E3072  0fbf980e020000          movsx    ebx, word ptr [eax + 0x20e]    
  0x001E3079  56                      push     esi                            
  0x001E307A  0fbe31                  movsx    esi, byte ptr [ecx]            
  0x001E307D  57                      push     edi                            
  0x001E307E  0fbe7901                movsx    edi, byte ptr [ecx + 1]        
  0x001E3082  0fbf880c020000          movsx    ecx, word ptr [eax + 0x20c]    
  0x001E3089  c1e603                  shl      esi, 3                         
  0x001E308C  0fafce                  imul     ecx, esi                       
  0x001E308F  03f6                    add      esi, esi                       
  0x001E3091  0faff3                  imul     esi, ebx                       
  0x001E3094  c1e703                  shl      edi, 3                         
  0x001E3097  03cf                    add      ecx, edi                       
  0x001E3099  8d347e                  lea      esi, [esi + edi*2]             
  0x001E309C  8bb800020000            mov      edi, dword ptr [eax + 0x200]   
  0x001E30A2  03f9                    add      edi, ecx                       
  0x001E30A4  8d90f8000000            lea      edx, [eax + 0xf8]              
  0x001E30AA  897a04                  mov      dword ptr [edx + 4], edi       
  0x001E30AD  8bb804020000            mov      edi, dword ptr [eax + 0x204]   
  0x001E30B3  03f9                    add      edi, ecx                       
  0x001E30B5  897a0c                  mov      dword ptr [edx + 0xc], edi     
  0x001E30B8  8b8808020000            mov      ecx, dword ptr [eax + 0x208]   
  0x001E30BE  03ce                    add      ecx, esi                       
  0x001E30C0  894a14                  mov      dword ptr [edx + 0x14], ecx    
  0x001E30C3  83c108                  add      ecx, 8                         
  0x001E30C6  894a1c                  mov      dword ptr [edx + 0x1c], ecx    
  0x001E30C9  8b4a14                  mov      ecx, dword ptr [edx + 0x14]    
  0x001E30CC  8d0cd9                  lea      ecx, [ecx + ebx*8]             
  0x001E30CF  894a24                  mov      dword ptr [edx + 0x24], ecx    
  0x001E30D2  83c108                  add      ecx, 8                         
  0x001E30D5  5f                      pop      edi                            
  0x001E30D6  894a2c                  mov      dword ptr [edx + 0x2c], ecx    
  0x001E30D9  5e                      pop      esi                            
  0x001E30DA  8d88e0020000            lea      ecx, [eax + 0x2e0]             
  0x001E30E0  8b4038                  mov      eax, dword ptr [eax + 0x38]    
  0x001E30E3  5b                      pop      ebx                            
  0x001E30E4  e9d7efffff              jmp      0x1e20c0                       
  0x001E30E9  90                      nop                                     
  0x001E30EA  90                      nop                                     
  0x001E30EB  90                      nop                                     
  0x001E30EC  90                      nop                                     
  0x001E30ED  90                      nop                                     
  0x001E30EE  90                      nop                                     
  0x001E30EF  90                      nop                                     

; ============================================================
; Function: sub_001E30F0
; Start: 0x001E30F0  End: 0x001E32C9  Size: 473 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E30F0:
  0x001E30F0  83ec14                  sub      esp, 0x14                      
  0x001E30F3  53                      push     ebx                            
  0x001E30F4  55                      push     ebp                            
  0x001E30F5  56                      push     esi                            
  0x001E30F6  57                      push     edi                            
  0x001E30F7  8bf8                    mov      edi, eax                       
  0x001E30F9  8b442428                mov      eax, dword ptr [esp + 0x28]    
  0x001E30FD  8b8874010000            mov      ecx, dword ptr [eax + 0x174]   
  0x001E3103  8b909c020000            mov      edx, dword ptr [eax + 0x29c]   
  0x001E3109  8d9450680c0000          lea      edx, [eax + edx*2 + 0xc68]     
  0x001E3110  0fbe02                  movsx    eax, byte ptr [edx]            
  0x001E3113  0fbe5201                movsx    edx, byte ptr [edx + 1]        
  0x001E3117  8b742430                mov      esi, dword ptr [esp + 0x30]    
  0x001E311B  c1e003                  shl      eax, 3                         
  0x001E311E  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E3122  8b4c2434                mov      ecx, dword ptr [esp + 0x34]    
  0x001E3126  0fbf690e                movsx    ebp, word ptr [ecx + 0xe]      
  0x001E312A  0fbf490c                movsx    ecx, word ptr [ecx + 0xc]      
  0x001E312E  c1e203                  shl      edx, 3                         
  0x001E3131  8bd9                    mov      ebx, ecx                       
  0x001E3133  0fafd8                  imul     ebx, eax                       
  0x001E3136  03c0                    add      eax, eax                       
  0x001E3138  0fafc5                  imul     eax, ebp                       
  0x001E313B  03da                    add      ebx, edx                       
  0x001E313D  8d1450                  lea      edx, [eax + edx*2]             
  0x001E3140  895604                  mov      dword ptr [esi + 4], edx       
  0x001E3143  891e                    mov      dword ptr [esi], ebx           
  0x001E3145  8b5f1c                  mov      ebx, dword ptr [edi + 0x1c]    
  0x001E3148  8b4718                  mov      eax, dword ptr [edi + 0x18]    
  0x001E314B  8bfb                    mov      edi, ebx                       
  0x001E314D  d1ff                    sar      edi, 1                         
  0x001E314F  0faffd                  imul     edi, ebp                       
  0x001E3152  8bf0                    mov      esi, eax                       
  0x001E3154  03d7                    add      edx, edi                       
  0x001E3156  d1fe                    sar      esi, 1                         
  0x001E3158  03f2                    add      esi, edx                       
  0x001E315A  8b542410                mov      edx, dword ptr [esp + 0x10]    
  0x001E315E  8974241c                mov      dword ptr [esp + 0x1c], esi    
  0x001E3162  8bf8                    mov      edi, eax                       
  0x001E3164  03d2                    add      edx, edx                       
  0x001E3166  8bf3                    mov      esi, ebx                       
  0x001E3168  83e601                  and      esi, 1                         
  0x001E316B  03f2                    add      esi, edx                       
  0x001E316D  83e701                  and      edi, 1                         
  0x001E3170  8d1477                  lea      edx, [edi + esi*2]             
  0x001E3173  8b149510882100          mov      edx, dword ptr [edx*4 + 0x218810] 
  0x001E317A  89542420                mov      dword ptr [esp + 0x20], edx    
  0x001E317E  99                      cdq                                     
  0x001E317F  2bc2                    sub      eax, edx                       
  0x001E3181  8bf0                    mov      esi, eax                       
  0x001E3183  8bc3                    mov      eax, ebx                       
  0x001E3185  99                      cdq                                     
  0x001E3186  2bc2                    sub      eax, edx                       
  0x001E3188  d1f8                    sar      eax, 1                         
  0x001E318A  8bd8                    mov      ebx, eax                       
  0x001E318C  d1fb                    sar      ebx, 1                         
  0x001E318E  0fafd9                  imul     ebx, ecx                       
  0x001E3191  d1fe                    sar      esi, 1                         
  0x001E3193  8bd6                    mov      edx, esi                       
  0x001E3195  d1fa                    sar      edx, 1                         
  0x001E3197  03da                    add      ebx, edx                       
  0x001E3199  8b542430                mov      edx, dword ptr [esp + 0x30]    
  0x001E319D  031a                    add      ebx, dword ptr [edx]           
  0x001E319F  83e601                  and      esi, 1                         
  0x001E31A2  8bd6                    mov      edx, esi                       
  0x001E31A4  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E31A8  83e001                  and      eax, 1                         
  0x001E31AB  03f6                    add      esi, esi                       
  0x001E31AD  03c6                    add      eax, esi                       
  0x001E31AF  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E31B3  8d0442                  lea      eax, [edx + eax*2]             
  0x001E31B6  8b048510882100          mov      eax, dword ptr [eax*4 + 0x218810] 
  0x001E31BD  23d6                    and      edx, esi                       
  0x001E31BF  8b742428                mov      esi, dword ptr [esp + 0x28]    
  0x001E31C3  89442430                mov      dword ptr [esp + 0x30], eax    
  0x001E31C7  8b44242c                mov      eax, dword ptr [esp + 0x2c]    
  0x001E31CB  81c6c4000000            add      esi, 0xc4                      
  0x001E31D1  894608                  mov      dword ptr [esi + 8], eax       
  0x001E31D4  8b442434                mov      eax, dword ptr [esp + 0x34]    
  0x001E31D8  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E31DC  89542414                mov      dword ptr [esp + 0x14], edx    
  0x001E31E0  894e10                  mov      dword ptr [esi + 0x10], ecx    
  0x001E31E3  8b00                    mov      eax, dword ptr [eax]           
  0x001E31E5  03c3                    add      eax, ebx                       
  0x001E31E7  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E31EA  03c2                    add      eax, edx                       
  0x001E31EC  03c1                    add      eax, ecx                       
  0x001E31EE  56                      push     esi                            
  0x001E31EF  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E31F2  ff542434                call     dword ptr [esp + 0x34]         
  0x001E31F6  8b4c2430                mov      ecx, dword ptr [esp + 0x30]    
  0x001E31FA  8b542438                mov      edx, dword ptr [esp + 0x38]    
  0x001E31FE  83c140                  add      ecx, 0x40                      
  0x001E3201  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001E3204  8b4204                  mov      eax, dword ptr [edx + 4]       
  0x001E3207  8b4c2418                mov      ecx, dword ptr [esp + 0x18]    
  0x001E320B  03c3                    add      eax, ebx                       
  0x001E320D  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E3210  03c1                    add      eax, ecx                       
  0x001E3212  0344241c                add      eax, dword ptr [esp + 0x1c]    
  0x001E3216  56                      push     esi                            
  0x001E3217  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E321A  ff542438                call     dword ptr [esp + 0x38]         
  0x001E321E  8b5c2434                mov      ebx, dword ptr [esp + 0x34]    
  0x001E3222  8b44243c                mov      eax, dword ptr [esp + 0x3c]    
  0x001E3226  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
  0x001E322A  8d9380000000            lea      edx, [ebx + 0x80]              
  0x001E3230  895608                  mov      dword ptr [esi + 8], edx       
  0x001E3233  8b542418                mov      edx, dword ptr [esp + 0x18]    
  0x001E3237  896e10                  mov      dword ptr [esi + 0x10], ebp    
  0x001E323A  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001E323D  23fa                    and      edi, edx                       
  0x001E323F  03c1                    add      eax, ecx                       
  0x001E3241  03f8                    add      edi, eax                       
  0x001E3243  03fd                    add      edi, ebp                       
  0x001E3245  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001E3248  8b7c2428                mov      edi, dword ptr [esp + 0x28]    
  0x001E324C  56                      push     esi                            
  0x001E324D  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E3250  ffd7                    call     edi                            
  0x001E3252  8b5614                  mov      edx, dword ptr [esi + 0x14]    
  0x001E3255  8d8bc0000000            lea      ecx, [ebx + 0xc0]              
  0x001E325B  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001E325E  8b4e18                  mov      ecx, dword ptr [esi + 0x18]    
  0x001E3261  b808000000              mov      eax, 8                         
  0x001E3266  03d0                    add      edx, eax                       
  0x001E3268  03c8                    add      ecx, eax                       
  0x001E326A  56                      push     esi                            
  0x001E326B  895614                  mov      dword ptr [esi + 0x14], edx    
  0x001E326E  894e18                  mov      dword ptr [esi + 0x18], ecx    
  0x001E3271  ffd7                    call     edi                            
  0x001E3273  8b4e14                  mov      ecx, dword ptr [esi + 0x14]    
  0x001E3276  8d04edf8ffffff          lea      eax, [ebp*8 - 8]               
  0x001E327D  03c8                    add      ecx, eax                       
  0x001E327F  8d9300010000            lea      edx, [ebx + 0x100]             
  0x001E3285  895608                  mov      dword ptr [esi + 8], edx       
  0x001E3288  8b5618                  mov      edx, dword ptr [esi + 0x18]    
  0x001E328B  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001E328E  8d0cedf8ffffff          lea      ecx, [ebp*8 - 8]               
  0x001E3295  03d1                    add      edx, ecx                       
  0x001E3297  56                      push     esi                            
  0x001E3298  895618                  mov      dword ptr [esi + 0x18], edx    
  0x001E329B  ffd7                    call     edi                            
  0x001E329D  8b5618                  mov      edx, dword ptr [esi + 0x18]    
  0x001E32A0  81c340010000            add      ebx, 0x140                     
  0x001E32A6  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001E32A9  8b5e14                  mov      ebx, dword ptr [esi + 0x14]    
  0x001E32AC  b808000000              mov      eax, 8                         
  0x001E32B1  03d8                    add      ebx, eax                       
  0x001E32B3  03d0                    add      edx, eax                       
  0x001E32B5  56                      push     esi                            
  0x001E32B6  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001E32B9  895618                  mov      dword ptr [esi + 0x18], edx    
  0x001E32BC  ffd7                    call     edi                            
  0x001E32BE  83c418                  add      esp, 0x18                      
  0x001E32C1  5f                      pop      edi                            
  0x001E32C2  5e                      pop      esi                            
  0x001E32C3  5d                      pop      ebp                            
  0x001E32C4  5b                      pop      ebx                            
  0x001E32C5  83c414                  add      esp, 0x14                      
  0x001E32C8  c3                      ret                                     
; end of function
  0x001E32C9  90                      nop                                     
  0x001E32CA  90                      nop                                     
  0x001E32CB  90                      nop                                     
  0x001E32CC  90                      nop                                     
  0x001E32CD  90                      nop                                     
  0x001E32CE  90                      nop                                     
  0x001E32CF  90                      nop                                     
  0x001E32D0  83ec08                  sub      esp, 8                         
  0x001E32D3  53                      push     ebx                            
  0x001E32D4  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E32D8  55                      push     ebp                            
  0x001E32D9  56                      push     esi                            
  0x001E32DA  8b74241c                mov      esi, dword ptr [esp + 0x1c]    
  0x001E32DE  4e                      dec      esi                            
  0x001E32DF  57                      push     edi                            
  0x001E32E0  8dbbd0010000            lea      edi, [ebx + 0x1d0]             
  0x001E32E6  8d6f10                  lea      ebp, [edi + 0x10]              
  0x001E32E9  7450                    je       0x1e333b                       
  0x001E32EB  eb03                    jmp      0x1e32f0                       
  0x001E32ED  8d4900                  lea      ecx, [ecx]                     
                                        ; XREF: 0x001E32EB (jump), 0x001E3339 (cond_jump)
  0x001E32F0  8b839c020000            mov      eax, dword ptr [ebx + 0x29c]   
  0x001E32F6  0fbf570c                movsx    edx, word ptr [edi + 0xc]      
  0x001E32FA  2bc6                    sub      eax, esi                       
  0x001E32FC  8d8c43680c0000          lea      ecx, [ebx + eax*2 + 0xc68]     
  0x001E3303  0fbe01                  movsx    eax, byte ptr [ecx]            
  0x001E3306  0fbe4901                movsx    ecx, byte ptr [ecx + 1]        
  0x001E330A  c1e003                  shl      eax, 3                         
  0x001E330D  0fafd0                  imul     edx, eax                       
  0x001E3310  c1e103                  shl      ecx, 3                         
  0x001E3313  03d1                    add      edx, ecx                       
  0x001E3315  89542410                mov      dword ptr [esp + 0x10], edx    
  0x001E3319  0fbf570e                movsx    edx, word ptr [edi + 0xe]      
  0x001E331D  03c0                    add      eax, eax                       
  0x001E331F  0fafc2                  imul     eax, edx                       
  0x001E3322  8d0448                  lea      eax, [eax + ecx*2]             
  0x001E3325  8d4c2410                lea      ecx, [esp + 0x10]              
  0x001E3329  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E332D  51                      push     ecx                            
  0x001E332E  8bc5                    mov      eax, ebp                       
  0x001E3330  e88bf9ffff              call     0x1e2cc0                       ; -> sub_001E2CC0
  0x001E3335  83c404                  add      esp, 4                         
  0x001E3338  4e                      dec      esi                            
  0x001E3339  75b5                    jne      0x1e32f0                       
                                        ; XREF: 0x001E32E9 (cond_jump)
  0x001E333B  5f                      pop      edi                            
  0x001E333C  5e                      pop      esi                            
  0x001E333D  5d                      pop      ebp                            
  0x001E333E  5b                      pop      ebx                            
  0x001E333F  83c408                  add      esp, 8                         
  0x001E3342  c3                      ret                                     
  0x001E3343  90                      nop                                     
  0x001E3344  90                      nop                                     
  0x001E3345  90                      nop                                     
  0x001E3346  90                      nop                                     
  0x001E3347  90                      nop                                     
  0x001E3348  90                      nop                                     
  0x001E3349  90                      nop                                     
  0x001E334A  90                      nop                                     
  0x001E334B  90                      nop                                     
  0x001E334C  90                      nop                                     
  0x001E334D  90                      nop                                     
  0x001E334E  90                      nop                                     
  0x001E334F  90                      nop                                     
  0x001E3350  83ec08                  sub      esp, 8                         
  0x001E3353  56                      push     esi                            
  0x001E3354  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E3358  57                      push     edi                            
  0x001E3359  8d8ed0010000            lea      ecx, [esi + 0x1d0]             
  0x001E335F  51                      push     ecx                            
  0x001E3360  8b8ef0000000            mov      ecx, dword ptr [esi + 0xf0]    
  0x001E3366  8d54240c                lea      edx, [esp + 0xc]               
  0x001E336A  8dbee8000000            lea      edi, [esi + 0xe8]              
  0x001E3370  52                      push     edx                            
  0x001E3371  51                      push     ecx                            
  0x001E3372  8d8654020000            lea      eax, [esi + 0x254]             
  0x001E3378  56                      push     esi                            
  0x001E3379  e872fdffff              call     0x1e30f0                       ; -> sub_001E30F0
  0x001E337E  8b9600020000            mov      edx, dword ptr [esi + 0x200]   
  0x001E3384  8b442418                mov      eax, dword ptr [esp + 0x18]    
  0x001E3388  03d0                    add      edx, eax                       
  0x001E338A  8d8ef8000000            lea      ecx, [esi + 0xf8]              
  0x001E3390  895104                  mov      dword ptr [ecx + 4], edx       
  0x001E3393  8b9604020000            mov      edx, dword ptr [esi + 0x204]   
  0x001E3399  03d0                    add      edx, eax                       
  0x001E339B  89510c                  mov      dword ptr [ecx + 0xc], edx     
  0x001E339E  8b8608020000            mov      eax, dword ptr [esi + 0x208]   
  0x001E33A4  8b54241c                mov      edx, dword ptr [esp + 0x1c]    
  0x001E33A8  03c2                    add      eax, edx                       
  0x001E33AA  894114                  mov      dword ptr [ecx + 0x14], eax    
  0x001E33AD  8b5114                  mov      edx, dword ptr [ecx + 0x14]    
  0x001E33B0  83c008                  add      eax, 8                         
  0x001E33B3  89411c                  mov      dword ptr [ecx + 0x1c], eax    
  0x001E33B6  0fbf860e020000          movsx    eax, word ptr [esi + 0x20e]    
  0x001E33BD  8d04c2                  lea      eax, [edx + eax*8]             
  0x001E33C0  894124                  mov      dword ptr [ecx + 0x24], eax    
  0x001E33C3  83c008                  add      eax, 8                         
  0x001E33C6  89412c                  mov      dword ptr [ecx + 0x2c], eax    
  0x001E33C9  8b86a8020000            mov      eax, dword ptr [esi + 0x2a8]   
  0x001E33CF  50                      push     eax                            
  0x001E33D0  8bc7                    mov      eax, edi                       
  0x001E33D2  e8a9eeffff              call     0x1e2280                       ; -> sub_001E2280
  0x001E33D7  83c414                  add      esp, 0x14                      
  0x001E33DA  5f                      pop      edi                            
  0x001E33DB  5e                      pop      esi                            
  0x001E33DC  83c408                  add      esp, 8                         
  0x001E33DF  c3                      ret                                     
  0x001E33E0  83ec08                  sub      esp, 8                         
  0x001E33E3  56                      push     esi                            
  0x001E33E4  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E33E8  57                      push     edi                            
  0x001E33E9  8d8ee0010000            lea      ecx, [esi + 0x1e0]             
  0x001E33EF  51                      push     ecx                            
  0x001E33F0  8b8ef0000000            mov      ecx, dword ptr [esi + 0xf0]    
  0x001E33F6  8d54240c                lea      edx, [esp + 0xc]               
  0x001E33FA  8dbee8000000            lea      edi, [esi + 0xe8]              
  0x001E3400  52                      push     edx                            
  0x001E3401  51                      push     ecx                            
  0x001E3402  8d8678020000            lea      eax, [esi + 0x278]             
  0x001E3408  56                      push     esi                            
  0x001E3409  e8e2fcffff              call     0x1e30f0                       ; -> sub_001E30F0
  0x001E340E  8b9600020000            mov      edx, dword ptr [esi + 0x200]   
  0x001E3414  8b442418                mov      eax, dword ptr [esp + 0x18]    
  0x001E3418  03d0                    add      edx, eax                       
  0x001E341A  8d8ef8000000            lea      ecx, [esi + 0xf8]              
  0x001E3420  895104                  mov      dword ptr [ecx + 4], edx       
  0x001E3423  8b9604020000            mov      edx, dword ptr [esi + 0x204]   
  0x001E3429  03d0                    add      edx, eax                       
  0x001E342B  89510c                  mov      dword ptr [ecx + 0xc], edx     
  0x001E342E  8b8608020000            mov      eax, dword ptr [esi + 0x208]   
  0x001E3434  8b54241c                mov      edx, dword ptr [esp + 0x1c]    
  0x001E3438  03c2                    add      eax, edx                       
  0x001E343A  894114                  mov      dword ptr [ecx + 0x14], eax    
  0x001E343D  8b5114                  mov      edx, dword ptr [ecx + 0x14]    
  0x001E3440  83c008                  add      eax, 8                         
  0x001E3443  89411c                  mov      dword ptr [ecx + 0x1c], eax    
  0x001E3446  0fbf860e020000          movsx    eax, word ptr [esi + 0x20e]    
  0x001E344D  8d04c2                  lea      eax, [edx + eax*8]             
  0x001E3450  894124                  mov      dword ptr [ecx + 0x24], eax    
  0x001E3453  83c008                  add      eax, 8                         
  0x001E3456  89412c                  mov      dword ptr [ecx + 0x2c], eax    
  0x001E3459  8b86a8020000            mov      eax, dword ptr [esi + 0x2a8]   
  0x001E345F  50                      push     eax                            
  0x001E3460  8bc7                    mov      eax, edi                       
  0x001E3462  e819eeffff              call     0x1e2280                       ; -> sub_001E2280
  0x001E3467  83c414                  add      esp, 0x14                      
  0x001E346A  5f                      pop      edi                            
  0x001E346B  5e                      pop      esi                            
  0x001E346C  83c408                  add      esp, 8                         
  0x001E346F  c3                      ret                                     
  0x001E3470  83ec08                  sub      esp, 8                         
  0x001E3473  53                      push     ebx                            
  0x001E3474  56                      push     esi                            
  0x001E3475  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E3479  8b96f0000000            mov      edx, dword ptr [esi + 0xf0]    
  0x001E347F  57                      push     edi                            
  0x001E3480  8d9ed0010000            lea      ebx, [esi + 0x1d0]             
  0x001E3486  53                      push     ebx                            
  0x001E3487  8d4c2410                lea      ecx, [esp + 0x10]              
  0x001E348B  8dbee8000000            lea      edi, [esi + 0xe8]              
  0x001E3491  51                      push     ecx                            
  0x001E3492  52                      push     edx                            
  0x001E3493  8d8654020000            lea      eax, [esi + 0x254]             
  0x001E3499  56                      push     esi                            
  0x001E349A  e851fcffff              call     0x1e30f0                       ; -> sub_001E30F0
  0x001E349F  8b570c                  mov      edx, dword ptr [edi + 0xc]     
  0x001E34A2  83c310                  add      ebx, 0x10                      
  0x001E34A5  53                      push     ebx                            
  0x001E34A6  8d4c2420                lea      ecx, [esp + 0x20]              
  0x001E34AA  51                      push     ecx                            
  0x001E34AB  52                      push     edx                            
  0x001E34AC  8d8678020000            lea      eax, [esi + 0x278]             
  0x001E34B2  56                      push     esi                            
  0x001E34B3  e838fcffff              call     0x1e30f0                       ; -> sub_001E30F0
  0x001E34B8  8b8e00020000            mov      ecx, dword ptr [esi + 0x200]   
  0x001E34BE  8b44242c                mov      eax, dword ptr [esp + 0x2c]    
  0x001E34C2  03c8                    add      ecx, eax                       
  0x001E34C4  8d96f8000000            lea      edx, [esi + 0xf8]              
  0x001E34CA  894a04                  mov      dword ptr [edx + 4], ecx       
  0x001E34CD  8b8e04020000            mov      ecx, dword ptr [esi + 0x204]   
  0x001E34D3  03c8                    add      ecx, eax                       
  0x001E34D5  894a0c                  mov      dword ptr [edx + 0xc], ecx     
  0x001E34D8  8b8608020000            mov      eax, dword ptr [esi + 0x208]   
  0x001E34DE  8b4c2430                mov      ecx, dword ptr [esp + 0x30]    
  0x001E34E2  03c1                    add      eax, ecx                       
  0x001E34E4  894214                  mov      dword ptr [edx + 0x14], eax    
  0x001E34E7  8b4a14                  mov      ecx, dword ptr [edx + 0x14]    
  0x001E34EA  83c008                  add      eax, 8                         
  0x001E34ED  89421c                  mov      dword ptr [edx + 0x1c], eax    
  0x001E34F0  0fbf860e020000          movsx    eax, word ptr [esi + 0x20e]    
  0x001E34F7  8d04c1                  lea      eax, [ecx + eax*8]             
  0x001E34FA  894224                  mov      dword ptr [edx + 0x24], eax    
  0x001E34FD  83c008                  add      eax, 8                         
  0x001E3500  89422c                  mov      dword ptr [edx + 0x2c], eax    
  0x001E3503  8b86a8020000            mov      eax, dword ptr [esi + 0x2a8]   
  0x001E3509  50                      push     eax                            
  0x001E350A  8bc7                    mov      eax, edi                       
  0x001E350C  e8cff0ffff              call     0x1e25e0                       ; -> sub_001E25E0
  0x001E3511  83c424                  add      esp, 0x24                      
  0x001E3514  5f                      pop      edi                            
  0x001E3515  5e                      pop      esi                            
  0x001E3516  5b                      pop      ebx                            
  0x001E3517  83c408                  add      esp, 8                         
  0x001E351A  c3                      ret                                     
  0x001E351B  90                      nop                                     
  0x001E351C  90                      nop                                     
  0x001E351D  90                      nop                                     
  0x001E351E  90                      nop                                     
  0x001E351F  90                      nop                                     
  0x001E3520  83ec24                  sub      esp, 0x24                      
  0x001E3523  53                      push     ebx                            
  0x001E3524  8b5c242c                mov      ebx, dword ptr [esp + 0x2c]    
  0x001E3528  55                      push     ebp                            
  0x001E3529  56                      push     esi                            
  0x001E352A  57                      push     edi                            
  0x001E352B  33c0                    xor      eax, eax                       
  0x001E352D  8d733c                  lea      esi, [ebx + 0x3c]              
  0x001E3530  8dabe0020000            lea      ebp, [ebx + 0x2e0]             
  0x001E3536  b9c0000000              mov      ecx, 0xc0                      
  0x001E353B  8bfd                    mov      edi, ebp                       
  0x001E353D  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E353F  8b8350020000            mov      eax, dword ptr [ebx + 0x250]   
  0x001E3545  8d8be0050000            lea      ecx, [ebx + 0x5e0]             
  0x001E354B  894624                  mov      dword ptr [esi + 0x24], eax    
  0x001E354E  894e20                  mov      dword ptr [esi + 0x20], ecx    
  0x001E3551  c7463000000000          mov      dword ptr [esi + 0x30], 0      
  0x001E3558  8b1580dbc000            mov      edx, dword ptr [0xc0db80]      
  0x001E355E  8d83ac020000            lea      eax, [ebx + 0x2ac]             
  0x001E3564  56                      push     esi                            
  0x001E3565  8dbbe0030000            lea      edi, [ebx + 0x3e0]             
  0x001E356B  53                      push     ebx                            
  0x001E356C  89562c                  mov      dword ptr [esi + 0x2c], edx    
  0x001E356F  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E3572  897e1c                  mov      dword ptr [esi + 0x1c], edi    
  0x001E3575  e80640faff              call     0x187580                       ; -> sub_00187580
  0x001E357A  8944242c                mov      dword ptr [esp + 0x2c], eax    
  0x001E357E  8d8360040000            lea      eax, [ebx + 0x460]             
  0x001E3584  56                      push     esi                            
  0x001E3585  53                      push     ebx                            
  0x001E3586  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E358A  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001E358D  e8ee3ffaff              call     0x187580                       ; -> sub_00187580
  0x001E3592  89442438                mov      dword ptr [esp + 0x38], eax    
  0x001E3596  8d83e0040000            lea      eax, [ebx + 0x4e0]             
  0x001E359C  56                      push     esi                            
  0x001E359D  53                      push     ebx                            
  0x001E359E  8944242c                mov      dword ptr [esp + 0x2c], eax    
  0x001E35A2  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001E35A5  e8d63ffaff              call     0x187580                       ; -> sub_00187580
  0x001E35AA  89442444                mov      dword ptr [esp + 0x44], eax    
  0x001E35AE  8d8360050000            lea      eax, [ebx + 0x560]             
  0x001E35B4  56                      push     esi                            
  0x001E35B5  53                      push     ebx                            
  0x001E35B6  89442438                mov      dword ptr [esp + 0x38], eax    
  0x001E35BA  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001E35BD  e8be3ffaff              call     0x187580                       ; -> sub_00187580
  0x001E35C2  8b0d40dfc000            mov      ecx, dword ptr [0xc0df40]      
  0x001E35C8  8d93b0020000            lea      edx, [ebx + 0x2b0]             
  0x001E35CE  56                      push     esi                            
  0x001E35CF  53                      push     ebx                            
  0x001E35D0  89442458                mov      dword ptr [esp + 0x58], eax    
  0x001E35D4  894e2c                  mov      dword ptr [esi + 0x2c], ecx    
  0x001E35D7  895628                  mov      dword ptr [esi + 0x28], edx    
  0x001E35DA  896e1c                  mov      dword ptr [esi + 0x1c], ebp    
  0x001E35DD  e89e3ffaff              call     0x187580                       ; -> sub_00187580
  0x001E35E2  89442444                mov      dword ptr [esp + 0x44], eax    
  0x001E35E6  8d83b4020000            lea      eax, [ebx + 0x2b4]             
  0x001E35EC  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E35EF  8d8360030000            lea      eax, [ebx + 0x360]             
  0x001E35F5  56                      push     esi                            
  0x001E35F6  53                      push     ebx                            
  0x001E35F7  89442468                mov      dword ptr [esp + 0x68], eax    
  0x001E35FB  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001E35FE  e87d3ffaff              call     0x187580                       ; -> sub_00187580
  0x001E3603  8b4c244c                mov      ecx, dword ptr [esp + 0x4c]    
  0x001E3607  51                      push     ecx                            
  0x001E3608  55                      push     ebp                            
  0x001E3609  8bf0                    mov      esi, eax                       
  0x001E360B  e8f036faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3610  8b542470                mov      edx, dword ptr [esp + 0x70]    
  0x001E3614  56                      push     esi                            
  0x001E3615  52                      push     edx                            
  0x001E3616  e8e536faff              call     0x186d00                       ; -> sub_00186D00
  0x001E361B  8b442464                mov      eax, dword ptr [esp + 0x64]    
  0x001E361F  83c440                  add      esp, 0x40                      
  0x001E3622  50                      push     eax                            
  0x001E3623  57                      push     edi                            
  0x001E3624  e8d736faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3629  8b4c2430                mov      ecx, dword ptr [esp + 0x30]    
  0x001E362D  8b542418                mov      edx, dword ptr [esp + 0x18]    
  0x001E3631  51                      push     ecx                            
  0x001E3632  52                      push     edx                            
  0x001E3633  e8c836faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3638  8b44243c                mov      eax, dword ptr [esp + 0x3c]    
  0x001E363C  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
  0x001E3640  50                      push     eax                            
  0x001E3641  51                      push     ecx                            
  0x001E3642  e8b936faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3647  8b542448                mov      edx, dword ptr [esp + 0x48]    
  0x001E364B  8b442430                mov      eax, dword ptr [esp + 0x30]    
  0x001E364F  52                      push     edx                            
  0x001E3650  50                      push     eax                            
  0x001E3651  e8aa36faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3656  83c420                  add      esp, 0x20                      
  0x001E3659  5f                      pop      edi                            
  0x001E365A  5e                      pop      esi                            
  0x001E365B  5d                      pop      ebp                            
  0x001E365C  33c0                    xor      eax, eax                       
  0x001E365E  5b                      pop      ebx                            
  0x001E365F  83c424                  add      esp, 0x24                      
  0x001E3662  c3                      ret                                     
  0x001E3663  90                      nop                                     
  0x001E3664  90                      nop                                     
  0x001E3665  90                      nop                                     
  0x001E3666  90                      nop                                     
  0x001E3667  90                      nop                                     
  0x001E3668  90                      nop                                     
  0x001E3669  90                      nop                                     
  0x001E366A  90                      nop                                     
  0x001E366B  90                      nop                                     
  0x001E366C  90                      nop                                     
  0x001E366D  90                      nop                                     
  0x001E366E  90                      nop                                     
  0x001E366F  90                      nop                                     
  0x001E3670  83ec20                  sub      esp, 0x20                      
  0x001E3673  53                      push     ebx                            
  0x001E3674  55                      push     ebp                            
  0x001E3675  56                      push     esi                            
  0x001E3676  8b742430                mov      esi, dword ptr [esp + 0x30]    
  0x001E367A  8b8650020000            mov      eax, dword ptr [esi + 0x250]   
  0x001E3680  57                      push     edi                            
  0x001E3681  8d7e3c                  lea      edi, [esi + 0x3c]              
  0x001E3684  8d8e20060000            lea      ecx, [esi + 0x620]             
  0x001E368A  894724                  mov      dword ptr [edi + 0x24], eax    
  0x001E368D  894f20                  mov      dword ptr [edi + 0x20], ecx    
  0x001E3690  c7473001000000          mov      dword ptr [edi + 0x30], 1      
  0x001E3697  8baea8020000            mov      ebp, dword ptr [esi + 0x2a8]   
  0x001E369D  c1e502                  shl      ebp, 2                         
  0x001E36A0  8d86b8020000            lea      eax, [esi + 0x2b8]             
  0x001E36A6  896c2434                mov      dword ptr [esp + 0x34], ebp    
  0x001E36AA  33db                    xor      ebx, ebx                       
  0x001E36AC  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E36B0  89442410                mov      dword ptr [esp + 0x10], eax    
                                        ; XREF: 0x001E36EC (cond_jump)
  0x001E36B4  8b442434                mov      eax, dword ptr [esp + 0x34]    
  0x001E36B8  85c0                    test     eax, eax                       
  0x001E36BA  7d17                    jge      0x1e36d3                       
  0x001E36BC  8b542410                mov      edx, dword ptr [esp + 0x10]    
  0x001E36C0  8b02                    mov      eax, dword ptr [edx]           
  0x001E36C2  57                      push     edi                            
  0x001E36C3  56                      push     esi                            
  0x001E36C4  89471c                  mov      dword ptr [edi + 0x1c], eax    
  0x001E36C7  e82472faff              call     0x18a8f0                       ; -> sub_0018A8F0
  0x001E36CC  83c408                  add      esp, 8                         
  0x001E36CF  89449c18                mov      dword ptr [esp + ebx*4 + 0x18], eax 
                                        ; XREF: 0x001E36BA (cond_jump)
  0x001E36D3  8b442434                mov      eax, dword ptr [esp + 0x34]    
  0x001E36D7  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E36DB  d1e0                    shl      eax, 1                         
  0x001E36DD  43                      inc      ebx                            
  0x001E36DE  83c104                  add      ecx, 4                         
  0x001E36E1  83fb06                  cmp      ebx, 6                         
  0x001E36E4  89442434                mov      dword ptr [esp + 0x34], eax    
  0x001E36E8  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E36EC  7cc6                    jl       0x1e36b4                       
  0x001E36EE  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001E36F2  33f6                    xor      esi, esi                       
                                        ; XREF: 0x001E3711 (cond_jump)
  0x001E36F4  85ed                    test     ebp, ebp                       
  0x001E36F6  7d10                    jge      0x1e3708                       
  0x001E36F8  8b4cb418                mov      ecx, dword ptr [esp + esi*4 + 0x18] 
  0x001E36FC  8b17                    mov      edx, dword ptr [edi]           
  0x001E36FE  51                      push     ecx                            
  0x001E36FF  52                      push     edx                            
  0x001E3700  e8fb35faff              call     0x186d00                       ; -> sub_00186D00
  0x001E3705  83c408                  add      esp, 8                         
                                        ; XREF: 0x001E36F6 (cond_jump)
  0x001E3708  d1e5                    shl      ebp, 1                         
  0x001E370A  46                      inc      esi                            
  0x001E370B  83c704                  add      edi, 4                         
  0x001E370E  83fe06                  cmp      esi, 6                         
  0x001E3711  7ce1                    jl       0x1e36f4                       
  0x001E3713  5f                      pop      edi                            
  0x001E3714  5e                      pop      esi                            
  0x001E3715  5d                      pop      ebp                            
  0x001E3716  33c0                    xor      eax, eax                       
  0x001E3718  5b                      pop      ebx                            
  0x001E3719  83c420                  add      esp, 0x20                      
  0x001E371C  c3                      ret                                     
  0x001E371D  90                      nop                                     
  0x001E371E  90                      nop                                     
  0x001E371F  90                      nop                                     
  0x001E3720  8b542404                mov      edx, dword ptr [esp + 4]       
  0x001E3724  8b4214                  mov      eax, dword ptr [edx + 0x14]    
  0x001E3727  8b4a18                  mov      ecx, dword ptr [edx + 0x18]    
  0x001E372A  53                      push     ebx                            
  0x001E372B  55                      push     ebp                            
  0x001E372C  56                      push     esi                            
  0x001E372D  8b7208                  mov      esi, dword ptr [edx + 8]       
  0x001E3730  57                      push     edi                            
  0x001E3731  8b7a10                  mov      edi, dword ptr [edx + 0x10]    
  0x001E3734  bd02000000              mov      ebp, 2                         
  0x001E3739  8da42400000000          lea      esp, [esp]                     
                                        ; XREF: 0x001E3B12 (cond_jump)
  0x001E3740  0fb618                  movzx    ebx, byte ptr [eax]            
  0x001E3743  0fb611                  movzx    edx, byte ptr [ecx]            
  0x001E3746  03d3                    add      edx, ebx                       
  0x001E3748  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E374C  03d3                    add      edx, ebx                       
  0x001E374E  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3752  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3756  c1fa02                  sar      edx, 2                         
  0x001E3759  8816                    mov      byte ptr [esi], dl             
  0x001E375B  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E375F  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3763  03d3                    add      edx, ebx                       
  0x001E3765  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E3769  03d3                    add      edx, ebx                       
  0x001E376B  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E376F  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3773  c1fa02                  sar      edx, 2                         
  0x001E3776  885601                  mov      byte ptr [esi + 1], dl         
  0x001E3779  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E377D  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3781  03d3                    add      edx, ebx                       
  0x001E3783  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E3787  03d3                    add      edx, ebx                       
  0x001E3789  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E378D  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3791  c1fa02                  sar      edx, 2                         
  0x001E3794  885602                  mov      byte ptr [esi + 2], dl         
  0x001E3797  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E379B  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E379F  03d3                    add      edx, ebx                       
  0x001E37A1  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E37A5  03d3                    add      edx, ebx                       
  0x001E37A7  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E37AB  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E37AF  c1fa02                  sar      edx, 2                         
  0x001E37B2  885603                  mov      byte ptr [esi + 3], dl         
  0x001E37B5  0fb65805                movzx    ebx, byte ptr [eax + 5]        
  0x001E37B9  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E37BD  03d3                    add      edx, ebx                       
  0x001E37BF  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E37C3  03d3                    add      edx, ebx                       
  0x001E37C5  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E37C9  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E37CD  c1fa02                  sar      edx, 2                         
  0x001E37D0  885604                  mov      byte ptr [esi + 4], dl         
  0x001E37D3  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E37D7  0fb65005                movzx    edx, byte ptr [eax + 5]        
  0x001E37DB  03d3                    add      edx, ebx                       
  0x001E37DD  0fb65806                movzx    ebx, byte ptr [eax + 6]        
  0x001E37E1  03d3                    add      edx, ebx                       
  0x001E37E3  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E37E7  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E37EB  c1fa02                  sar      edx, 2                         
  0x001E37EE  885605                  mov      byte ptr [esi + 5], dl         
  0x001E37F1  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E37F5  0fb65006                movzx    edx, byte ptr [eax + 6]        
  0x001E37F9  03d3                    add      edx, ebx                       
  0x001E37FB  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E37FF  03d3                    add      edx, ebx                       
  0x001E3801  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3805  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3809  c1fa02                  sar      edx, 2                         
  0x001E380C  885606                  mov      byte ptr [esi + 6], dl         
  0x001E380F  0fb65808                movzx    ebx, byte ptr [eax + 8]        
  0x001E3813  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E3817  03d3                    add      edx, ebx                       
  0x001E3819  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E381D  03d3                    add      edx, ebx                       
  0x001E381F  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3823  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3827  c1fa02                  sar      edx, 2                         
  0x001E382A  885607                  mov      byte ptr [esi + 7], dl         
  0x001E382D  0fb61c38                movzx    ebx, byte ptr [eax + edi]      
  0x001E3831  0fb61439                movzx    edx, byte ptr [ecx + edi]      
  0x001E3835  03c7                    add      eax, edi                       
  0x001E3837  03cf                    add      ecx, edi                       
  0x001E3839  03d3                    add      edx, ebx                       
  0x001E383B  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E383F  03d3                    add      edx, ebx                       
  0x001E3841  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3845  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3849  c1fa02                  sar      edx, 2                         
  0x001E384C  885608                  mov      byte ptr [esi + 8], dl         
  0x001E384F  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3853  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3857  03d3                    add      edx, ebx                       
  0x001E3859  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E385D  03d3                    add      edx, ebx                       
  0x001E385F  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3863  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3867  c1fa02                  sar      edx, 2                         
  0x001E386A  885609                  mov      byte ptr [esi + 9], dl         
  0x001E386D  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3871  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3875  03d3                    add      edx, ebx                       
  0x001E3877  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E387B  03d3                    add      edx, ebx                       
  0x001E387D  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E3881  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3885  c1fa02                  sar      edx, 2                         
  0x001E3888  88560a                  mov      byte ptr [esi + 0xa], dl       
  0x001E388B  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E388F  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E3893  03d3                    add      edx, ebx                       
  0x001E3895  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E3899  03d3                    add      edx, ebx                       
  0x001E389B  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E389F  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E38A3  c1fa02                  sar      edx, 2                         
  0x001E38A6  88560b                  mov      byte ptr [esi + 0xb], dl       
  0x001E38A9  0fb65805                movzx    ebx, byte ptr [eax + 5]        
  0x001E38AD  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E38B1  03d3                    add      edx, ebx                       
  0x001E38B3  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E38B7  03d3                    add      edx, ebx                       
  0x001E38B9  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E38BD  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E38C1  c1fa02                  sar      edx, 2                         
  0x001E38C4  88560c                  mov      byte ptr [esi + 0xc], dl       
  0x001E38C7  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E38CB  0fb65005                movzx    edx, byte ptr [eax + 5]        
  0x001E38CF  03d3                    add      edx, ebx                       
  0x001E38D1  0fb65806                movzx    ebx, byte ptr [eax + 6]        
  0x001E38D5  03d3                    add      edx, ebx                       
  0x001E38D7  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E38DB  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E38DF  c1fa02                  sar      edx, 2                         
  0x001E38E2  88560d                  mov      byte ptr [esi + 0xd], dl       
  0x001E38E5  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E38E9  0fb65006                movzx    edx, byte ptr [eax + 6]        
  0x001E38ED  03d3                    add      edx, ebx                       
  0x001E38EF  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E38F3  03d3                    add      edx, ebx                       
  0x001E38F5  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E38F9  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E38FD  c1fa02                  sar      edx, 2                         
  0x001E3900  88560e                  mov      byte ptr [esi + 0xe], dl       
  0x001E3903  0fb65808                movzx    ebx, byte ptr [eax + 8]        
  0x001E3907  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E390B  03d3                    add      edx, ebx                       
  0x001E390D  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E3911  03d3                    add      edx, ebx                       
  0x001E3913  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3917  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E391B  c1fa02                  sar      edx, 2                         
  0x001E391E  88560f                  mov      byte ptr [esi + 0xf], dl       
  0x001E3921  0fb61c38                movzx    ebx, byte ptr [eax + edi]      
  0x001E3925  0fb61439                movzx    edx, byte ptr [ecx + edi]      
  0x001E3929  03cf                    add      ecx, edi                       
  0x001E392B  03c7                    add      eax, edi                       
  0x001E392D  03d3                    add      edx, ebx                       
  0x001E392F  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E3933  03d3                    add      edx, ebx                       
  0x001E3935  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3939  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E393D  c1fa02                  sar      edx, 2                         
  0x001E3940  885610                  mov      byte ptr [esi + 0x10], dl      
  0x001E3943  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3947  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E394B  03d3                    add      edx, ebx                       
  0x001E394D  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E3951  03d3                    add      edx, ebx                       
  0x001E3953  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3957  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E395B  c1fa02                  sar      edx, 2                         
  0x001E395E  885611                  mov      byte ptr [esi + 0x11], dl      
  0x001E3961  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3965  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3969  03d3                    add      edx, ebx                       
  0x001E396B  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E396F  03d3                    add      edx, ebx                       
  0x001E3971  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E3975  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3979  c1fa02                  sar      edx, 2                         
  0x001E397C  885612                  mov      byte ptr [esi + 0x12], dl      
  0x001E397F  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E3983  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E3987  03d3                    add      edx, ebx                       
  0x001E3989  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E398D  03d3                    add      edx, ebx                       
  0x001E398F  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E3993  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3997  c1fa02                  sar      edx, 2                         
  0x001E399A  885613                  mov      byte ptr [esi + 0x13], dl      
  0x001E399D  0fb65805                movzx    ebx, byte ptr [eax + 5]        
  0x001E39A1  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E39A5  03d3                    add      edx, ebx                       
  0x001E39A7  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E39AB  03d3                    add      edx, ebx                       
  0x001E39AD  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E39B1  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E39B5  c1fa02                  sar      edx, 2                         
  0x001E39B8  885614                  mov      byte ptr [esi + 0x14], dl      
  0x001E39BB  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E39BF  0fb65005                movzx    edx, byte ptr [eax + 5]        
  0x001E39C3  03d3                    add      edx, ebx                       
  0x001E39C5  0fb65806                movzx    ebx, byte ptr [eax + 6]        
  0x001E39C9  03d3                    add      edx, ebx                       
  0x001E39CB  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E39CF  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E39D3  c1fa02                  sar      edx, 2                         
  0x001E39D6  885615                  mov      byte ptr [esi + 0x15], dl      
  0x001E39D9  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E39DD  0fb65006                movzx    edx, byte ptr [eax + 6]        
  0x001E39E1  03d3                    add      edx, ebx                       
  0x001E39E3  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E39E7  03d3                    add      edx, ebx                       
  0x001E39E9  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E39ED  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E39F1  c1fa02                  sar      edx, 2                         
  0x001E39F4  885616                  mov      byte ptr [esi + 0x16], dl      
  0x001E39F7  0fb65808                movzx    ebx, byte ptr [eax + 8]        
  0x001E39FB  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E39FF  03d3                    add      edx, ebx                       
  0x001E3A01  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E3A05  03d3                    add      edx, ebx                       
  0x001E3A07  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3A0B  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3A0F  c1fa02                  sar      edx, 2                         
  0x001E3A12  885617                  mov      byte ptr [esi + 0x17], dl      
  0x001E3A15  0fb61c38                movzx    ebx, byte ptr [eax + edi]      
  0x001E3A19  0fb61439                movzx    edx, byte ptr [ecx + edi]      
  0x001E3A1D  03d3                    add      edx, ebx                       
  0x001E3A1F  0fb65c3901              movzx    ebx, byte ptr [ecx + edi + 1]  
  0x001E3A24  03c7                    add      eax, edi                       
  0x001E3A26  03cf                    add      ecx, edi                       
  0x001E3A28  03d3                    add      edx, ebx                       
  0x001E3A2A  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3A2E  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3A32  c1fa02                  sar      edx, 2                         
  0x001E3A35  885618                  mov      byte ptr [esi + 0x18], dl      
  0x001E3A38  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3A3C  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3A40  03d3                    add      edx, ebx                       
  0x001E3A42  0fb65901                movzx    ebx, byte ptr [ecx + 1]        
  0x001E3A46  03d3                    add      edx, ebx                       
  0x001E3A48  0fb65801                movzx    ebx, byte ptr [eax + 1]        
  0x001E3A4C  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3A50  c1fa02                  sar      edx, 2                         
  0x001E3A53  885619                  mov      byte ptr [esi + 0x19], dl      
  0x001E3A56  0fb65002                movzx    edx, byte ptr [eax + 2]        
  0x001E3A5A  0fb65902                movzx    ebx, byte ptr [ecx + 2]        
  0x001E3A5E  03d3                    add      edx, ebx                       
  0x001E3A60  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E3A64  03d3                    add      edx, ebx                       
  0x001E3A66  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E3A6A  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3A6E  c1fa02                  sar      edx, 2                         
  0x001E3A71  88561a                  mov      byte ptr [esi + 0x1a], dl      
  0x001E3A74  0fb65803                movzx    ebx, byte ptr [eax + 3]        
  0x001E3A78  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E3A7C  03d3                    add      edx, ebx                       
  0x001E3A7E  0fb65903                movzx    ebx, byte ptr [ecx + 3]        
  0x001E3A82  03d3                    add      edx, ebx                       
  0x001E3A84  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E3A88  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3A8C  c1fa02                  sar      edx, 2                         
  0x001E3A8F  88561b                  mov      byte ptr [esi + 0x1b], dl      
  0x001E3A92  0fb65805                movzx    ebx, byte ptr [eax + 5]        
  0x001E3A96  0fb65104                movzx    edx, byte ptr [ecx + 4]        
  0x001E3A9A  03d3                    add      edx, ebx                       
  0x001E3A9C  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E3AA0  03d3                    add      edx, ebx                       
  0x001E3AA2  0fb65804                movzx    ebx, byte ptr [eax + 4]        
  0x001E3AA6  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3AAA  c1fa02                  sar      edx, 2                         
  0x001E3AAD  88561c                  mov      byte ptr [esi + 0x1c], dl      
  0x001E3AB0  0fb65905                movzx    ebx, byte ptr [ecx + 5]        
  0x001E3AB4  0fb65005                movzx    edx, byte ptr [eax + 5]        
  0x001E3AB8  03d3                    add      edx, ebx                       
  0x001E3ABA  0fb65806                movzx    ebx, byte ptr [eax + 6]        
  0x001E3ABE  03d3                    add      edx, ebx                       
  0x001E3AC0  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E3AC4  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3AC8  c1fa02                  sar      edx, 2                         
  0x001E3ACB  88561d                  mov      byte ptr [esi + 0x1d], dl      
  0x001E3ACE  0fb65906                movzx    ebx, byte ptr [ecx + 6]        
  0x001E3AD2  0fb65006                movzx    edx, byte ptr [eax + 6]        
  0x001E3AD6  03d3                    add      edx, ebx                       
  0x001E3AD8  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E3ADC  03d3                    add      edx, ebx                       
  0x001E3ADE  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3AE2  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3AE6  c1fa02                  sar      edx, 2                         
  0x001E3AE9  88561e                  mov      byte ptr [esi + 0x1e], dl      
  0x001E3AEC  0fb65808                movzx    ebx, byte ptr [eax + 8]        
  0x001E3AF0  0fb65108                movzx    edx, byte ptr [ecx + 8]        
  0x001E3AF4  03d3                    add      edx, ebx                       
  0x001E3AF6  0fb65807                movzx    ebx, byte ptr [eax + 7]        
  0x001E3AFA  03d3                    add      edx, ebx                       
  0x001E3AFC  0fb65907                movzx    ebx, byte ptr [ecx + 7]        
  0x001E3B00  8d541a02                lea      edx, [edx + ebx + 2]           
  0x001E3B04  c1fa02                  sar      edx, 2                         
  0x001E3B07  88561f                  mov      byte ptr [esi + 0x1f], dl      
  0x001E3B0A  03c7                    add      eax, edi                       
  0x001E3B0C  03cf                    add      ecx, edi                       
  0x001E3B0E  83c620                  add      esi, 0x20                      
  0x001E3B11  4d                      dec      ebp                            
  0x001E3B12  0f8528fcffff            jne      0x1e3740                       
  0x001E3B18  5f                      pop      edi                            
  0x001E3B19  5e                      pop      esi                            
  0x001E3B1A  5d                      pop      ebp                            
  0x001E3B1B  5b                      pop      ebx                            
  0x001E3B1C  c3                      ret                                     
  0x001E3B1D  90                      nop                                     
  0x001E3B1E  90                      nop                                     
  0x001E3B1F  90                      nop                                     
  0x001E3B20  83ec0c                  sub      esp, 0xc                       
  0x001E3B23  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E3B27  8b4810                  mov      ecx, dword ptr [eax + 0x10]    
  0x001E3B2A  8b5014                  mov      edx, dword ptr [eax + 0x14]    
  0x001E3B2D  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E3B31  8b4818                  mov      ecx, dword ptr [eax + 0x18]    
  0x001E3B34  89542408                mov      dword ptr [esp + 8], edx       
  0x001E3B38  8b5008                  mov      edx, dword ptr [eax + 8]       
  0x001E3B3B  53                      push     ebx                            
  0x001E3B3C  894c2408                mov      dword ptr [esp + 8], ecx       
  0x001E3B40  89542404                mov      dword ptr [esp + 4], edx       
  0x001E3B44  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E3B48  8b5c2408                mov      ebx, dword ptr [esp + 8]       
  0x001E3B4C  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E3B50  8b542414                mov      edx, dword ptr [esp + 0x14]    
  0x001E3B54  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B57  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B5A  0f7f01                  movq     qword ptr [ecx], mm0           
  0x001E3B5D  03c2                    add      eax, edx                       
  0x001E3B5F  03da                    add      ebx, edx                       
  0x001E3B61  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B64  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B67  0f7f4108                movq     qword ptr [ecx + 8], mm0       
  0x001E3B6B  03c2                    add      eax, edx                       
  0x001E3B6D  03da                    add      ebx, edx                       
  0x001E3B6F  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B72  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B75  0f7f4110                movq     qword ptr [ecx + 0x10], mm0    
  0x001E3B79  03c2                    add      eax, edx                       
  0x001E3B7B  03da                    add      ebx, edx                       
  0x001E3B7D  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B80  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B83  0f7f4118                movq     qword ptr [ecx + 0x18], mm0    
  0x001E3B87  03c2                    add      eax, edx                       
  0x001E3B89  03da                    add      ebx, edx                       
  0x001E3B8B  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B8E  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B91  0f7f4120                movq     qword ptr [ecx + 0x20], mm0    
  0x001E3B95  03c2                    add      eax, edx                       
  0x001E3B97  03da                    add      ebx, edx                       
  0x001E3B99  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3B9C  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3B9F  0f7f4128                movq     qword ptr [ecx + 0x28], mm0    
  0x001E3BA3  03c2                    add      eax, edx                       
  0x001E3BA5  03da                    add      ebx, edx                       
  0x001E3BA7  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3BAA  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3BAD  0f7f4130                movq     qword ptr [ecx + 0x30], mm0    
  0x001E3BB1  03c2                    add      eax, edx                       
  0x001E3BB3  03da                    add      ebx, edx                       
  0x001E3BB5  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3BB8  0fe003                  pavgb    mm0, qword ptr [ebx]           
  0x001E3BBB  0f7f4138                movq     qword ptr [ecx + 0x38], mm0    
  0x001E3BBF  0f77                    emms                                    
  0x001E3BC1  5b                      pop      ebx                            
  0x001E3BC2  83c40c                  add      esp, 0xc                       
  0x001E3BC5  c3                      ret                                     
  0x001E3BC6  90                      nop                                     
  0x001E3BC7  90                      nop                                     
  0x001E3BC8  90                      nop                                     
  0x001E3BC9  90                      nop                                     
  0x001E3BCA  90                      nop                                     
  0x001E3BCB  90                      nop                                     
  0x001E3BCC  90                      nop                                     
  0x001E3BCD  90                      nop                                     
  0x001E3BCE  90                      nop                                     
  0x001E3BCF  90                      nop                                     
  0x001E3BD0  83ec08                  sub      esp, 8                         
  0x001E3BD3  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E3BD7  8b4810                  mov      ecx, dword ptr [eax + 0x10]    
  0x001E3BDA  8b5014                  mov      edx, dword ptr [eax + 0x14]    
  0x001E3BDD  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001E3BE0  894c240c                mov      dword ptr [esp + 0xc], ecx     
  0x001E3BE4  89542404                mov      dword ptr [esp + 4], edx       
  0x001E3BE8  89442400                mov      dword ptr [esp], eax           
  0x001E3BEC  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E3BF0  8b4c2400                mov      ecx, dword ptr [esp]           
  0x001E3BF4  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001E3BF8  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3BFB  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3BFF  0f7f01                  movq     qword ptr [ecx], mm0           
  0x001E3C02  03c2                    add      eax, edx                       
  0x001E3C04  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C07  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C0B  0f7f4108                movq     qword ptr [ecx + 8], mm0       
  0x001E3C0F  03c2                    add      eax, edx                       
  0x001E3C11  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C14  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C18  0f7f4110                movq     qword ptr [ecx + 0x10], mm0    
  0x001E3C1C  03c2                    add      eax, edx                       
  0x001E3C1E  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C21  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C25  0f7f4118                movq     qword ptr [ecx + 0x18], mm0    
  0x001E3C29  03c2                    add      eax, edx                       
  0x001E3C2B  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C2E  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C32  0f7f4120                movq     qword ptr [ecx + 0x20], mm0    
  0x001E3C36  03c2                    add      eax, edx                       
  0x001E3C38  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C3B  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C3F  0f7f4128                movq     qword ptr [ecx + 0x28], mm0    
  0x001E3C43  03c2                    add      eax, edx                       
  0x001E3C45  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C48  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C4C  0f7f4130                movq     qword ptr [ecx + 0x30], mm0    
  0x001E3C50  03c2                    add      eax, edx                       
  0x001E3C52  0f6f00                  movq     mm0, qword ptr [eax]           
  0x001E3C55  0fe04001                pavgb    mm0, qword ptr [eax + 1]       
  0x001E3C59  0f7f4138                movq     qword ptr [ecx + 0x38], mm0    
  0x001E3C5D  0f77                    emms                                    
  0x001E3C5F  83c408                  add      esp, 8                         
  0x001E3C62  c3                      ret                                     
  0x001E3C63  90                      nop                                     
  0x001E3C64  90                      nop                                     
  0x001E3C65  90                      nop                                     
  0x001E3C66  90                      nop                                     
  0x001E3C67  90                      nop                                     
  0x001E3C68  90                      nop                                     
  0x001E3C69  90                      nop                                     
  0x001E3C6A  90                      nop                                     
  0x001E3C6B  90                      nop                                     
  0x001E3C6C  90                      nop                                     
  0x001E3C6D  90                      nop                                     
  0x001E3C6E  90                      nop                                     
  0x001E3C6F  90                      nop                                     
  0x001E3C70  83ec08                  sub      esp, 8                         
  0x001E3C73  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E3C77  8b4814                  mov      ecx, dword ptr [eax + 0x14]    
  0x001E3C7A  8b5008                  mov      edx, dword ptr [eax + 8]       
  0x001E3C7D  8b4010                  mov      eax, dword ptr [eax + 0x10]    
  0x001E3C80  56                      push     esi                            
  0x001E3C81  57                      push     edi                            
  0x001E3C82  894c240c                mov      dword ptr [esp + 0xc], ecx     
  0x001E3C86  89542414                mov      dword ptr [esp + 0x14], edx    
  0x001E3C8A  89442408                mov      dword ptr [esp + 8], eax       
  0x001E3C8E  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E3C92  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E3C96  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001E3C9A  0f6f06                  movq     mm0, qword ptr [esi]           
  0x001E3C9D  0f7f07                  movq     qword ptr [edi], mm0           
  0x001E3CA0  03f0                    add      esi, eax                       
  0x001E3CA2  83c708                  add      edi, 8                         
  0x001E3CA5  0f6f0e                  movq     mm1, qword ptr [esi]           
  0x001E3CA8  0f7f0f                  movq     qword ptr [edi], mm1           
  0x001E3CAB  03f0                    add      esi, eax                       
  0x001E3CAD  83c708                  add      edi, 8                         
  0x001E3CB0  0f6f16                  movq     mm2, qword ptr [esi]           
  0x001E3CB3  0f7f17                  movq     qword ptr [edi], mm2           
  0x001E3CB6  03f0                    add      esi, eax                       
  0x001E3CB8  83c708                  add      edi, 8                         
  0x001E3CBB  0f6f1e                  movq     mm3, qword ptr [esi]           
  0x001E3CBE  0f7f1f                  movq     qword ptr [edi], mm3           
  0x001E3CC1  03f0                    add      esi, eax                       
  0x001E3CC3  83c708                  add      edi, 8                         
  0x001E3CC6  0f6f26                  movq     mm4, qword ptr [esi]           
  0x001E3CC9  0f7f27                  movq     qword ptr [edi], mm4           
  0x001E3CCC  03f0                    add      esi, eax                       
  0x001E3CCE  83c708                  add      edi, 8                         
  0x001E3CD1  0f6f2e                  movq     mm5, qword ptr [esi]           
  0x001E3CD4  0f7f2f                  movq     qword ptr [edi], mm5           
  0x001E3CD7  03f0                    add      esi, eax                       
  0x001E3CD9  83c708                  add      edi, 8                         
  0x001E3CDC  0f6f36                  movq     mm6, qword ptr [esi]           
  0x001E3CDF  0f7f37                  movq     qword ptr [edi], mm6           
  0x001E3CE2  03f0                    add      esi, eax                       
  0x001E3CE4  83c708                  add      edi, 8                         
  0x001E3CE7  0f6f3e                  movq     mm7, qword ptr [esi]           
  0x001E3CEA  0f7f3f                  movq     qword ptr [edi], mm7           
  0x001E3CED  0f77                    emms                                    
  0x001E3CEF  5f                      pop      edi                            
  0x001E3CF0  5e                      pop      esi                            
  0x001E3CF1  83c408                  add      esp, 8                         
  0x001E3CF4  c3                      ret                                     
  0x001E3CF5  90                      nop                                     
  0x001E3CF6  90                      nop                                     
  0x001E3CF7  90                      nop                                     
  0x001E3CF8  90                      nop                                     
  0x001E3CF9  90                      nop                                     
  0x001E3CFA  90                      nop                                     
  0x001E3CFB  90                      nop                                     
  0x001E3CFC  90                      nop                                     
  0x001E3CFD  90                      nop                                     
  0x001E3CFE  90                      nop                                     
  0x001E3CFF  90                      nop                                     

; ============================================================
; Function: sub_001E3D00
; Start: 0x001E3D00  End: 0x001E3D2C  Size: 44 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E3D00:
  0x001E3D00  55                      push     ebp                            
  0x001E3D01  8bec                    mov      ebp, esp                       
  0x001E3D03  83e4f8                  and      esp, 0xfffffff8                
  0x001E3D06  83ec1c                  sub      esp, 0x1c                      
  0x001E3D09  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E3D0C  8b08                    mov      ecx, dword ptr [eax]           
  0x001E3D0E  8b5514                  mov      edx, dword ptr [ebp + 0x14]    
  0x001E3D11  53                      push     ebx                            
  0x001E3D12  56                      push     esi                            
  0x001E3D13  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E3D17  b906000000              mov      ecx, 6                         
  0x001E3D1C  57                      push     edi                            
  0x001E3D1D  8b7d0c                  mov      edi, dword ptr [ebp + 0xc]     
  0x001E3D20  8d7004                  lea      esi, [eax + 4]                 
  0x001E3D23  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E3D26  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E3D2A  eb04                    jmp      0x1e3d30                       
; end of function
                                        ; XREF: 0x001E3E6D (cond_jump)
  0x001E3D2C  8b742420                mov      esi, dword ptr [esp + 0x20]    
                                        ; XREF: 0x001E3D2A (jump)
  0x001E3D30  3b4c241c                cmp      ecx, dword ptr [esp + 0x1c]    
  0x001E3D34  7503                    jne      0x1e3d39                       
  0x001E3D36  83ea10                  sub      edx, 0x10                      
                                        ; XREF: 0x001E3D34 (cond_jump)
  0x001E3D39  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E3D3B  8b5e04                  mov      ebx, dword ptr [esi + 4]       
  0x001E3D3E  0f1809                  prefetcht0 byte ptr [ecx]                 
  0x001E3D41  83c604                  add      esi, 4                         
  0x001E3D44  83c604                  add      esi, 4                         
  0x001E3D47  89742420                mov      dword ptr [esp + 0x20], esi    
  0x001E3D4B  895c2414                mov      dword ptr [esp + 0x14], ebx    
  0x001E3D4F  8bf1                    mov      esi, ecx                       
  0x001E3D51  c744241008000000        mov      dword ptr [esp + 0x10], 8      
  0x001E3D59  8da42400000000          lea      esp, [esp]                     
                                        ; XREF: 0x001E3DE1 (cond_jump)
  0x001E3D60  8b5c2414                mov      ebx, dword ptr [esp + 0x14]    
  0x001E3D64  0f180c0b                prefetcht0 byte ptr [ebx + ecx]           
  0x001E3D68  03d9                    add      ebx, ecx                       
  0x001E3D6A  895c2424                mov      dword ptr [esp + 0x24], ebx    
  0x001E3D6E  0fbf18                  movsx    ebx, word ptr [eax]            
  0x001E3D71  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3D74  8819                    mov      byte ptr [ecx], bl             
  0x001E3D76  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3D7A  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3D7D  83c002                  add      eax, 2                         
  0x001E3D80  885901                  mov      byte ptr [ecx + 1], bl         
  0x001E3D83  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3D87  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3D8A  83c002                  add      eax, 2                         
  0x001E3D8D  885902                  mov      byte ptr [ecx + 2], bl         
  0x001E3D90  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3D94  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3D97  83c002                  add      eax, 2                         
  0x001E3D9A  885903                  mov      byte ptr [ecx + 3], bl         
  0x001E3D9D  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3DA1  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3DA4  83c002                  add      eax, 2                         
  0x001E3DA7  885904                  mov      byte ptr [ecx + 4], bl         
  0x001E3DAA  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3DAE  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3DB1  83c002                  add      eax, 2                         
  0x001E3DB4  885905                  mov      byte ptr [ecx + 5], bl         
  0x001E3DB7  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3DBB  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3DBE  83c002                  add      eax, 2                         
  0x001E3DC1  885906                  mov      byte ptr [ecx + 6], bl         
  0x001E3DC4  0fbf5802                movsx    ebx, word ptr [eax + 2]        
  0x001E3DC8  8a1c13                  mov      bl, byte ptr [ebx + edx]       
  0x001E3DCB  83c002                  add      eax, 2                         
  0x001E3DCE  885907                  mov      byte ptr [ecx + 7], bl         
  0x001E3DD1  8b5c2410                mov      ebx, dword ptr [esp + 0x10]    
  0x001E3DD5  8b4c2424                mov      ecx, dword ptr [esp + 0x24]    
  0x001E3DD9  83c002                  add      eax, 2                         
  0x001E3DDC  4b                      dec      ebx                            
  0x001E3DDD  895c2410                mov      dword ptr [esp + 0x10], ebx    
  0x001E3DE1  0f8579ffffff            jne      0x1e3d60                       
  0x001E3DE7  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E3DE9  890f                    mov      dword ptr [edi], ecx           
  0x001E3DEB  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E3DEE  894f04                  mov      dword ptr [edi + 4], ecx       
  0x001E3DF1  8b4c2414                mov      ecx, dword ptr [esp + 0x14]    
  0x001E3DF5  c1e903                  shr      ecx, 3                         
  0x001E3DF8  c1e103                  shl      ecx, 3                         
  0x001E3DFB  8b1c0e                  mov      ebx, dword ptr [esi + ecx]     
  0x001E3DFE  895f08                  mov      dword ptr [edi + 8], ebx       
  0x001E3E01  8b5c0e04                mov      ebx, dword ptr [esi + ecx + 4] 
  0x001E3E05  895f0c                  mov      dword ptr [edi + 0xc], ebx     
  0x001E3E08  03f1                    add      esi, ecx                       
  0x001E3E0A  8b1c0e                  mov      ebx, dword ptr [esi + ecx]     
  0x001E3E0D  895f10                  mov      dword ptr [edi + 0x10], ebx    
  0x001E3E10  8b5c0e04                mov      ebx, dword ptr [esi + ecx + 4] 
  0x001E3E14  895f14                  mov      dword ptr [edi + 0x14], ebx    
  0x001E3E17  03f1                    add      esi, ecx                       
  0x001E3E19  8b1c0e                  mov      ebx, dword ptr [esi + ecx]     
  0x001E3E1C  895f18                  mov      dword ptr [edi + 0x18], ebx    
  0x001E3E1F  8b5c0e04                mov      ebx, dword ptr [esi + ecx + 4] 
  0x001E3E23  895f1c                  mov      dword ptr [edi + 0x1c], ebx    
  0x001E3E26  03f1                    add      esi, ecx                       
  0x001E3E28  8b1c0e                  mov      ebx, dword ptr [esi + ecx]     
  0x001E3E2B  83c720                  add      edi, 0x20                      
  0x001E3E2E  03f1                    add      esi, ecx                       
  0x001E3E30  891f                    mov      dword ptr [edi], ebx           
  0x001E3E32  8b5e04                  mov      ebx, dword ptr [esi + 4]       
  0x001E3E35  03f1                    add      esi, ecx                       
  0x001E3E37  895f04                  mov      dword ptr [edi + 4], ebx       
  0x001E3E3A  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E3E3C  895f08                  mov      dword ptr [edi + 8], ebx       
  0x001E3E3F  8b5e04                  mov      ebx, dword ptr [esi + 4]       
  0x001E3E42  03f1                    add      esi, ecx                       
  0x001E3E44  895f0c                  mov      dword ptr [edi + 0xc], ebx     
  0x001E3E47  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E3E49  895f10                  mov      dword ptr [edi + 0x10], ebx    
  0x001E3E4C  8b5e04                  mov      ebx, dword ptr [esi + 4]       
  0x001E3E4F  895f14                  mov      dword ptr [edi + 0x14], ebx    
  0x001E3E52  8b1c31                  mov      ebx, dword ptr [ecx + esi]     
  0x001E3E55  895f18                  mov      dword ptr [edi + 0x18], ebx    
  0x001E3E58  8b4c3104                mov      ecx, dword ptr [ecx + esi + 4] 
  0x001E3E5C  894f1c                  mov      dword ptr [edi + 0x1c], ecx    
  0x001E3E5F  8b4c2418                mov      ecx, dword ptr [esp + 0x18]    
  0x001E3E63  83c720                  add      edi, 0x20                      
  0x001E3E66  49                      dec      ecx                            
  0x001E3E67  85c9                    test     ecx, ecx                       
  0x001E3E69  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E3E6D  0f8fb9feffff            jg       0x1e3d2c                       
  0x001E3E73  5f                      pop      edi                            
  0x001E3E74  5e                      pop      esi                            
  0x001E3E75  5b                      pop      ebx                            
  0x001E3E76  8be5                    mov      esp, ebp                       
  0x001E3E78  5d                      pop      ebp                            
  0x001E3E79  c3                      ret                                     
  0x001E3E7A  90                      nop                                     
  0x001E3E7B  90                      nop                                     
  0x001E3E7C  90                      nop                                     
  0x001E3E7D  90                      nop                                     
  0x001E3E7E  90                      nop                                     
  0x001E3E7F  90                      nop                                     

; ============================================================
; Function: sub_001E3E80
; Start: 0x001E3E80  End: 0x001E3EB3  Size: 51 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E3E80:
  0x001E3E80  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E3E84  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E3E88  8b5104                  mov      edx, dword ptr [ecx + 4]       
  0x001E3E8B  53                      push     ebx                            
  0x001E3E8C  55                      push     ebp                            
  0x001E3E8D  8b29                    mov      ebp, dword ptr [ecx]           
  0x001E3E8F  56                      push     esi                            
  0x001E3E90  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E3E94  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001E3E97  57                      push     edi                            
  0x001E3E98  c744241806000000        mov      dword ptr [esp + 0x18], 6      
                                        ; XREF: 0x001E4138 (cond_jump)
  0x001E3EA0  8b4c241c                mov      ecx, dword ptr [esp + 0x1c]    
  0x001E3EA4  85c9                    test     ecx, ecx                       
  0x001E3EA6  7c0b                    jl       0x1e3eb3                       
  0x001E3EA8  81c280000000            add      edx, 0x80                      
  0x001E3EAE  e95f020000              jmp      0x1e4112                       
; end of function
                                        ; XREF: 0x001E3EA6 (cond_jump)
  0x001E3EB3  be02000000              mov      esi, 2                         
                                        ; XREF: 0x001E4109 (cond_jump)
  0x001E3EB8  0fbf3a                  movsx    edi, word ptr [edx]            
  0x001E3EBB  0fb608                  movzx    ecx, byte ptr [eax]            
  0x001E3EBE  8bdd                    mov      ebx, ebp                       
  0x001E3EC0  03d9                    add      ebx, ecx                       
  0x001E3EC2  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3EC5  0fb67801                movzx    edi, byte ptr [eax + 1]        
  0x001E3EC9  8808                    mov      byte ptr [eax], cl             
  0x001E3ECB  0fbf4a02                movsx    ecx, word ptr [edx + 2]        
  0x001E3ECF  8bdd                    mov      ebx, ebp                       
  0x001E3ED1  03d9                    add      ebx, ecx                       
  0x001E3ED3  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3ED6  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E3EDA  884801                  mov      byte ptr [eax + 1], cl         
  0x001E3EDD  0fbf4a04                movsx    ecx, word ptr [edx + 4]        
  0x001E3EE1  8bdd                    mov      ebx, ebp                       
  0x001E3EE3  03d9                    add      ebx, ecx                       
  0x001E3EE5  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3EE8  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E3EEC  884802                  mov      byte ptr [eax + 2], cl         
  0x001E3EEF  0fbf4a06                movsx    ecx, word ptr [edx + 6]        
  0x001E3EF3  8bdd                    mov      ebx, ebp                       
  0x001E3EF5  03d9                    add      ebx, ecx                       
  0x001E3EF7  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3EFA  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E3EFE  884803                  mov      byte ptr [eax + 3], cl         
  0x001E3F01  0fbf4a08                movsx    ecx, word ptr [edx + 8]        
  0x001E3F05  8bdd                    mov      ebx, ebp                       
  0x001E3F07  03d9                    add      ebx, ecx                       
  0x001E3F09  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F0C  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E3F10  884804                  mov      byte ptr [eax + 4], cl         
  0x001E3F13  0fbf4a0a                movsx    ecx, word ptr [edx + 0xa]      
  0x001E3F17  8bdd                    mov      ebx, ebp                       
  0x001E3F19  03d9                    add      ebx, ecx                       
  0x001E3F1B  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F1E  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E3F22  884805                  mov      byte ptr [eax + 5], cl         
  0x001E3F25  0fbf4a0c                movsx    ecx, word ptr [edx + 0xc]      
  0x001E3F29  8bdd                    mov      ebx, ebp                       
  0x001E3F2B  03d9                    add      ebx, ecx                       
  0x001E3F2D  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F30  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E3F34  884806                  mov      byte ptr [eax + 6], cl         
  0x001E3F37  0fbf4a0e                movsx    ecx, word ptr [edx + 0xe]      
  0x001E3F3B  83c008                  add      eax, 8                         
  0x001E3F3E  8bdd                    mov      ebx, ebp                       
  0x001E3F40  03d9                    add      ebx, ecx                       
  0x001E3F42  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F45  8848ff                  mov      byte ptr [eax - 1], cl         
  0x001E3F48  0fbf7a10                movsx    edi, word ptr [edx + 0x10]     
  0x001E3F4C  0fb608                  movzx    ecx, byte ptr [eax]            
  0x001E3F4F  83c210                  add      edx, 0x10                      
  0x001E3F52  8bdd                    mov      ebx, ebp                       
  0x001E3F54  03d9                    add      ebx, ecx                       
  0x001E3F56  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F59  0fb67801                movzx    edi, byte ptr [eax + 1]        
  0x001E3F5D  8808                    mov      byte ptr [eax], cl             
  0x001E3F5F  0fbf4a02                movsx    ecx, word ptr [edx + 2]        
  0x001E3F63  8bdd                    mov      ebx, ebp                       
  0x001E3F65  03d9                    add      ebx, ecx                       
  0x001E3F67  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F6A  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E3F6E  884801                  mov      byte ptr [eax + 1], cl         
  0x001E3F71  0fbf4a04                movsx    ecx, word ptr [edx + 4]        
  0x001E3F75  8bdd                    mov      ebx, ebp                       
  0x001E3F77  03d9                    add      ebx, ecx                       
  0x001E3F79  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F7C  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E3F80  884802                  mov      byte ptr [eax + 2], cl         
  0x001E3F83  0fbf4a06                movsx    ecx, word ptr [edx + 6]        
  0x001E3F87  8bdd                    mov      ebx, ebp                       
  0x001E3F89  03d9                    add      ebx, ecx                       
  0x001E3F8B  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3F8E  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E3F92  884803                  mov      byte ptr [eax + 3], cl         
  0x001E3F95  0fbf4a08                movsx    ecx, word ptr [edx + 8]        
  0x001E3F99  8bdd                    mov      ebx, ebp                       
  0x001E3F9B  03d9                    add      ebx, ecx                       
  0x001E3F9D  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FA0  884804                  mov      byte ptr [eax + 4], cl         
  0x001E3FA3  0fbf4a0a                movsx    ecx, word ptr [edx + 0xa]      
  0x001E3FA7  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E3FAB  8bdd                    mov      ebx, ebp                       
  0x001E3FAD  03d9                    add      ebx, ecx                       
  0x001E3FAF  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FB2  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E3FB6  884805                  mov      byte ptr [eax + 5], cl         
  0x001E3FB9  0fbf4a0c                movsx    ecx, word ptr [edx + 0xc]      
  0x001E3FBD  83c008                  add      eax, 8                         
  0x001E3FC0  8bdd                    mov      ebx, ebp                       
  0x001E3FC2  03d9                    add      ebx, ecx                       
  0x001E3FC4  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FC7  0fb678ff                movzx    edi, byte ptr [eax - 1]        
  0x001E3FCB  8848fe                  mov      byte ptr [eax - 2], cl         
  0x001E3FCE  0fbf4a0e                movsx    ecx, word ptr [edx + 0xe]      
  0x001E3FD2  8bdd                    mov      ebx, ebp                       
  0x001E3FD4  03d9                    add      ebx, ecx                       
  0x001E3FD6  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FD9  8848ff                  mov      byte ptr [eax - 1], cl         
  0x001E3FDC  0fbf7a10                movsx    edi, word ptr [edx + 0x10]     
  0x001E3FE0  0fb608                  movzx    ecx, byte ptr [eax]            
  0x001E3FE3  83c210                  add      edx, 0x10                      
  0x001E3FE6  8bdd                    mov      ebx, ebp                       
  0x001E3FE8  03d9                    add      ebx, ecx                       
  0x001E3FEA  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FED  0fb67801                movzx    edi, byte ptr [eax + 1]        
  0x001E3FF1  8808                    mov      byte ptr [eax], cl             
  0x001E3FF3  0fbf4a02                movsx    ecx, word ptr [edx + 2]        
  0x001E3FF7  8bdd                    mov      ebx, ebp                       
  0x001E3FF9  03d9                    add      ebx, ecx                       
  0x001E3FFB  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E3FFE  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E4002  884801                  mov      byte ptr [eax + 1], cl         
  0x001E4005  0fbf4a04                movsx    ecx, word ptr [edx + 4]        
  0x001E4009  8bdd                    mov      ebx, ebp                       
  0x001E400B  03d9                    add      ebx, ecx                       
  0x001E400D  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4010  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E4014  884802                  mov      byte ptr [eax + 2], cl         
  0x001E4017  0fbf4a06                movsx    ecx, word ptr [edx + 6]        
  0x001E401B  8bdd                    mov      ebx, ebp                       
  0x001E401D  03d9                    add      ebx, ecx                       
  0x001E401F  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4022  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E4026  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4029  0fbf4a08                movsx    ecx, word ptr [edx + 8]        
  0x001E402D  8bdd                    mov      ebx, ebp                       
  0x001E402F  03d9                    add      ebx, ecx                       
  0x001E4031  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4034  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E4038  884804                  mov      byte ptr [eax + 4], cl         
  0x001E403B  0fbf4a0a                movsx    ecx, word ptr [edx + 0xa]      
  0x001E403F  8bdd                    mov      ebx, ebp                       
  0x001E4041  03d9                    add      ebx, ecx                       
  0x001E4043  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4046  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E404A  884805                  mov      byte ptr [eax + 5], cl         
  0x001E404D  0fbf4a0c                movsx    ecx, word ptr [edx + 0xc]      
  0x001E4051  8bdd                    mov      ebx, ebp                       
  0x001E4053  03d9                    add      ebx, ecx                       
  0x001E4055  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4058  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E405C  884806                  mov      byte ptr [eax + 6], cl         
  0x001E405F  0fbf4a0e                movsx    ecx, word ptr [edx + 0xe]      
  0x001E4063  8bdd                    mov      ebx, ebp                       
  0x001E4065  03d9                    add      ebx, ecx                       
  0x001E4067  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E406A  884807                  mov      byte ptr [eax + 7], cl         
  0x001E406D  0fb64808                movzx    ecx, byte ptr [eax + 8]        
  0x001E4071  0fbf7a10                movsx    edi, word ptr [edx + 0x10]     
  0x001E4075  83c008                  add      eax, 8                         
  0x001E4078  83c210                  add      edx, 0x10                      
  0x001E407B  8bdd                    mov      ebx, ebp                       
  0x001E407D  03d9                    add      ebx, ecx                       
  0x001E407F  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4082  0fb67801                movzx    edi, byte ptr [eax + 1]        
  0x001E4086  8808                    mov      byte ptr [eax], cl             
  0x001E4088  0fbf4a02                movsx    ecx, word ptr [edx + 2]        
  0x001E408C  8bdd                    mov      ebx, ebp                       
  0x001E408E  03d9                    add      ebx, ecx                       
  0x001E4090  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E4093  884801                  mov      byte ptr [eax + 1], cl         
  0x001E4096  0fbf4a04                movsx    ecx, word ptr [edx + 4]        
  0x001E409A  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E409E  8bdd                    mov      ebx, ebp                       
  0x001E40A0  03d9                    add      ebx, ecx                       
  0x001E40A2  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40A5  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E40A9  884802                  mov      byte ptr [eax + 2], cl         
  0x001E40AC  0fbf4a06                movsx    ecx, word ptr [edx + 6]        
  0x001E40B0  8bdd                    mov      ebx, ebp                       
  0x001E40B2  03d9                    add      ebx, ecx                       
  0x001E40B4  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40B7  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E40BB  884803                  mov      byte ptr [eax + 3], cl         
  0x001E40BE  0fbf4a08                movsx    ecx, word ptr [edx + 8]        
  0x001E40C2  8bdd                    mov      ebx, ebp                       
  0x001E40C4  03d9                    add      ebx, ecx                       
  0x001E40C6  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40C9  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E40CD  884804                  mov      byte ptr [eax + 4], cl         
  0x001E40D0  0fbf4a0a                movsx    ecx, word ptr [edx + 0xa]      
  0x001E40D4  8bdd                    mov      ebx, ebp                       
  0x001E40D6  03d9                    add      ebx, ecx                       
  0x001E40D8  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40DB  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E40DF  884805                  mov      byte ptr [eax + 5], cl         
  0x001E40E2  0fbf4a0c                movsx    ecx, word ptr [edx + 0xc]      
  0x001E40E6  8bdd                    mov      ebx, ebp                       
  0x001E40E8  03d9                    add      ebx, ecx                       
  0x001E40EA  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40ED  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E40F1  884806                  mov      byte ptr [eax + 6], cl         
  0x001E40F4  0fbf4a0e                movsx    ecx, word ptr [edx + 0xe]      
  0x001E40F8  8bdd                    mov      ebx, ebp                       
  0x001E40FA  03d9                    add      ebx, ecx                       
  0x001E40FC  8a0c1f                  mov      cl, byte ptr [edi + ebx]       
  0x001E40FF  884807                  mov      byte ptr [eax + 7], cl         
  0x001E4102  83c008                  add      eax, 8                         
  0x001E4105  83c210                  add      edx, 0x10                      
  0x001E4108  4e                      dec      esi                            
  0x001E4109  0f85a9fdffff            jne      0x1e3eb8                       
  0x001E410F  83e840                  sub      eax, 0x40                      
                                        ; XREF: 0x001E3EAE (jump)
  0x001E4112  d164241c                shl      dword ptr [esp + 0x1c], 1      
  0x001E4116  8b5c2414                mov      ebx, dword ptr [esp + 0x14]    
  0x001E411A  8bf0                    mov      esi, eax                       
  0x001E411C  8bfb                    mov      edi, ebx                       
  0x001E411E  b910000000              mov      ecx, 0x10                      
  0x001E4123  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E4125  8b4c2418                mov      ecx, dword ptr [esp + 0x18]    
  0x001E4129  83c340                  add      ebx, 0x40                      
  0x001E412C  83c040                  add      eax, 0x40                      
  0x001E412F  49                      dec      ecx                            
  0x001E4130  895c2414                mov      dword ptr [esp + 0x14], ebx    
  0x001E4134  894c2418                mov      dword ptr [esp + 0x18], ecx    
  0x001E4138  0f8562fdffff            jne      0x1e3ea0                       
  0x001E413E  5f                      pop      edi                            
  0x001E413F  5e                      pop      esi                            
  0x001E4140  5d                      pop      ebp                            
  0x001E4141  5b                      pop      ebx                            
  0x001E4142  c3                      ret                                     
  0x001E4143  90                      nop                                     
  0x001E4144  90                      nop                                     
  0x001E4145  90                      nop                                     
  0x001E4146  90                      nop                                     
  0x001E4147  90                      nop                                     
  0x001E4148  90                      nop                                     
  0x001E4149  90                      nop                                     
  0x001E414A  90                      nop                                     
  0x001E414B  90                      nop                                     
  0x001E414C  90                      nop                                     
  0x001E414D  90                      nop                                     
  0x001E414E  90                      nop                                     
  0x001E414F  90                      nop                                     

; ============================================================
; Function: sub_001E4150
; Start: 0x001E4150  End: 0x001E43CF  Size: 639 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E4150:
  0x001E4150  51                      push     ecx                            
  0x001E4151  8b4c240c                mov      ecx, dword ptr [esp + 0xc]     
  0x001E4155  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E4159  8b510c                  mov      edx, dword ptr [ecx + 0xc]     
  0x001E415C  53                      push     ebx                            
  0x001E415D  8b19                    mov      ebx, dword ptr [ecx]           
  0x001E415F  55                      push     ebp                            
  0x001E4160  8b6904                  mov      ebp, dword ptr [ecx + 4]       
  0x001E4163  56                      push     esi                            
  0x001E4164  89442414                mov      dword ptr [esp + 0x14], eax    
  0x001E4168  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001E416B  57                      push     edi                            
  0x001E416C  c744241006000000        mov      dword ptr [esp + 0x10], 6      
                                        ; XREF: 0x001E47BE (cond_jump)
  0x001E4174  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4178  85c9                    test     ecx, ecx                       
  0x001E417A  0f8c4f020000            jl       0x1e43cf                       
  0x001E4180  81c580000000            add      ebp, 0x80                      
  0x001E4186  be02000000              mov      esi, 2                         
  0x001E418B  eb03                    jmp      0x1e4190                       
  0x001E418D  8d4900                  lea      ecx, [ecx]                     
                                        ; XREF: 0x001E418B (jump), 0x001E43C4 (cond_jump)
  0x001E4190  0fb60a                  movzx    ecx, byte ptr [edx]            
  0x001E4193  0fb638                  movzx    edi, byte ptr [eax]            
  0x001E4196  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E419A  d1f9                    sar      ecx, 1                         
  0x001E419C  8808                    mov      byte ptr [eax], cl             
  0x001E419E  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E41A2  0fb67801                movzx    edi, byte ptr [eax + 1]        
  0x001E41A6  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41AA  d1f9                    sar      ecx, 1                         
  0x001E41AC  884801                  mov      byte ptr [eax + 1], cl         
  0x001E41AF  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E41B3  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E41B7  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41BB  d1f9                    sar      ecx, 1                         
  0x001E41BD  884802                  mov      byte ptr [eax + 2], cl         
  0x001E41C0  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E41C4  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E41C8  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41CC  d1f9                    sar      ecx, 1                         
  0x001E41CE  884803                  mov      byte ptr [eax + 3], cl         
  0x001E41D1  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E41D5  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E41D9  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41DD  d1f9                    sar      ecx, 1                         
  0x001E41DF  884804                  mov      byte ptr [eax + 4], cl         
  0x001E41E2  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E41E6  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E41EA  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41EE  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E41F2  d1f9                    sar      ecx, 1                         
  0x001E41F4  884805                  mov      byte ptr [eax + 5], cl         
  0x001E41F7  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E41FB  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E41FF  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E4203  d1f9                    sar      ecx, 1                         
  0x001E4205  884806                  mov      byte ptr [eax + 6], cl         
  0x001E4208  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E420C  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4210  0fb67808                movzx    edi, byte ptr [eax + 8]        
  0x001E4214  d1f9                    sar      ecx, 1                         
  0x001E4216  884807                  mov      byte ptr [eax + 7], cl         
  0x001E4219  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E421D  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4221  0fb67809                movzx    edi, byte ptr [eax + 9]        
  0x001E4225  83c008                  add      eax, 8                         
  0x001E4228  d1f9                    sar      ecx, 1                         
  0x001E422A  8808                    mov      byte ptr [eax], cl             
  0x001E422C  0fb64a09                movzx    ecx, byte ptr [edx + 9]        
  0x001E4230  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4234  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E4238  83c208                  add      edx, 8                         
  0x001E423B  d1f9                    sar      ecx, 1                         
  0x001E423D  884801                  mov      byte ptr [eax + 1], cl         
  0x001E4240  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E4244  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4248  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E424C  d1f9                    sar      ecx, 1                         
  0x001E424E  884802                  mov      byte ptr [eax + 2], cl         
  0x001E4251  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E4255  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4259  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E425D  d1f9                    sar      ecx, 1                         
  0x001E425F  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4262  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E4266  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E426A  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E426E  d1f9                    sar      ecx, 1                         
  0x001E4270  884804                  mov      byte ptr [eax + 4], cl         
  0x001E4273  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4277  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E427B  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E427F  d1f9                    sar      ecx, 1                         
  0x001E4281  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4284  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E4288  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E428C  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E4290  d1f9                    sar      ecx, 1                         
  0x001E4292  884806                  mov      byte ptr [eax + 6], cl         
  0x001E4295  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E4299  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E429D  d1f9                    sar      ecx, 1                         
  0x001E429F  884807                  mov      byte ptr [eax + 7], cl         
  0x001E42A2  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E42A6  0fb67808                movzx    edi, byte ptr [eax + 8]        
  0x001E42AA  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E42AE  d1f9                    sar      ecx, 1                         
  0x001E42B0  884808                  mov      byte ptr [eax + 8], cl         
  0x001E42B3  0fb64a09                movzx    ecx, byte ptr [edx + 9]        
  0x001E42B7  0fb67809                movzx    edi, byte ptr [eax + 9]        
  0x001E42BB  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E42BF  d1f9                    sar      ecx, 1                         
  0x001E42C1  884809                  mov      byte ptr [eax + 9], cl         
  0x001E42C4  0fb64a0a                movzx    ecx, byte ptr [edx + 0xa]      
  0x001E42C8  83c008                  add      eax, 8                         
  0x001E42CB  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E42CF  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E42D3  d1f9                    sar      ecx, 1                         
  0x001E42D5  884802                  mov      byte ptr [eax + 2], cl         
  0x001E42D8  0fb64a0b                movzx    ecx, byte ptr [edx + 0xb]      
  0x001E42DC  83c208                  add      edx, 8                         
  0x001E42DF  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E42E3  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E42E7  d1f9                    sar      ecx, 1                         
  0x001E42E9  884803                  mov      byte ptr [eax + 3], cl         
  0x001E42EC  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E42F0  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E42F4  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E42F8  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E42FC  d1f9                    sar      ecx, 1                         
  0x001E42FE  884804                  mov      byte ptr [eax + 4], cl         
  0x001E4301  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4305  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4309  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E430D  d1f9                    sar      ecx, 1                         
  0x001E430F  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4312  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E4316  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E431A  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E431E  d1f9                    sar      ecx, 1                         
  0x001E4320  884806                  mov      byte ptr [eax + 6], cl         
  0x001E4323  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E4327  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E432B  0fb67808                movzx    edi, byte ptr [eax + 8]        
  0x001E432F  d1f9                    sar      ecx, 1                         
  0x001E4331  884807                  mov      byte ptr [eax + 7], cl         
  0x001E4334  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E4338  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E433C  0fb67809                movzx    edi, byte ptr [eax + 9]        
  0x001E4340  83c008                  add      eax, 8                         
  0x001E4343  d1f9                    sar      ecx, 1                         
  0x001E4345  83c208                  add      edx, 8                         
  0x001E4348  8808                    mov      byte ptr [eax], cl             
  0x001E434A  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E434E  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4352  0fb67802                movzx    edi, byte ptr [eax + 2]        
  0x001E4356  d1f9                    sar      ecx, 1                         
  0x001E4358  884801                  mov      byte ptr [eax + 1], cl         
  0x001E435B  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E435F  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4363  0fb67803                movzx    edi, byte ptr [eax + 3]        
  0x001E4367  d1f9                    sar      ecx, 1                         
  0x001E4369  884802                  mov      byte ptr [eax + 2], cl         
  0x001E436C  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E4370  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4374  0fb67804                movzx    edi, byte ptr [eax + 4]        
  0x001E4378  d1f9                    sar      ecx, 1                         
  0x001E437A  884803                  mov      byte ptr [eax + 3], cl         
  0x001E437D  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E4381  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4385  0fb67805                movzx    edi, byte ptr [eax + 5]        
  0x001E4389  d1f9                    sar      ecx, 1                         
  0x001E438B  884804                  mov      byte ptr [eax + 4], cl         
  0x001E438E  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4392  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E4396  0fb67806                movzx    edi, byte ptr [eax + 6]        
  0x001E439A  d1f9                    sar      ecx, 1                         
  0x001E439C  884805                  mov      byte ptr [eax + 5], cl         
  0x001E439F  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E43A3  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E43A7  d1f9                    sar      ecx, 1                         
  0x001E43A9  884806                  mov      byte ptr [eax + 6], cl         
  0x001E43AC  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E43B0  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001E43B4  8d4c3901                lea      ecx, [ecx + edi + 1]           
  0x001E43B8  d1f9                    sar      ecx, 1                         
  0x001E43BA  884807                  mov      byte ptr [eax + 7], cl         
  0x001E43BD  83c008                  add      eax, 8                         
  0x001E43C0  83c208                  add      edx, 8                         
  0x001E43C3  4e                      dec      esi                            
  0x001E43C4  0f85c6fdffff            jne      0x1e4190                       
  0x001E43CA  e9be030000              jmp      0x1e478d                       
; end of function
                                        ; XREF: 0x001E417A (cond_jump)
  0x001E43CF  c744241c02000000        mov      dword ptr [esp + 0x1c], 2      
  0x001E43D7  eb07                    jmp      0x1e43e0                       
  0x001E43D9  8da42400000000          lea      esp, [esp]                     
                                        ; XREF: 0x001E43D7 (jump), 0x001E4787 (cond_jump)
  0x001E43E0  0fb60a                  movzx    ecx, byte ptr [edx]            
  0x001E43E3  0fb630                  movzx    esi, byte ptr [eax]            
  0x001E43E6  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E43EA  0fbf7500                movsx    esi, word ptr [ebp]            
  0x001E43EE  d1f9                    sar      ecx, 1                         
  0x001E43F0  8bfb                    mov      edi, ebx                       
  0x001E43F2  03f9                    add      edi, ecx                       
  0x001E43F4  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E43F7  8808                    mov      byte ptr [eax], cl             
  0x001E43F9  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E43FD  0fb67001                movzx    esi, byte ptr [eax + 1]        
  0x001E4401  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4405  0fbf7502                movsx    esi, word ptr [ebp + 2]        
  0x001E4409  d1f9                    sar      ecx, 1                         
  0x001E440B  8bfb                    mov      edi, ebx                       
  0x001E440D  03f9                    add      edi, ecx                       
  0x001E440F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4412  884801                  mov      byte ptr [eax + 1], cl         
  0x001E4415  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E4419  0fb67002                movzx    esi, byte ptr [eax + 2]        
  0x001E441D  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4421  0fbf7504                movsx    esi, word ptr [ebp + 4]        
  0x001E4425  d1f9                    sar      ecx, 1                         
  0x001E4427  8bfb                    mov      edi, ebx                       
  0x001E4429  03f9                    add      edi, ecx                       
  0x001E442B  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E442E  0fb67003                movzx    esi, byte ptr [eax + 3]        
  0x001E4432  884802                  mov      byte ptr [eax + 2], cl         
  0x001E4435  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E4439  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E443D  0fbf7506                movsx    esi, word ptr [ebp + 6]        
  0x001E4441  d1f9                    sar      ecx, 1                         
  0x001E4443  8bfb                    mov      edi, ebx                       
  0x001E4445  03f9                    add      edi, ecx                       
  0x001E4447  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E444A  0fb67004                movzx    esi, byte ptr [eax + 4]        
  0x001E444E  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4451  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E4455  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4459  0fbf7508                movsx    esi, word ptr [ebp + 8]        
  0x001E445D  d1f9                    sar      ecx, 1                         
  0x001E445F  8bfb                    mov      edi, ebx                       
  0x001E4461  03f9                    add      edi, ecx                       
  0x001E4463  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4466  0fb67005                movzx    esi, byte ptr [eax + 5]        
  0x001E446A  884804                  mov      byte ptr [eax + 4], cl         
  0x001E446D  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4471  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4475  0fbf750a                movsx    esi, word ptr [ebp + 0xa]      
  0x001E4479  d1f9                    sar      ecx, 1                         
  0x001E447B  8bfb                    mov      edi, ebx                       
  0x001E447D  03f9                    add      edi, ecx                       
  0x001E447F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4482  0fb67006                movzx    esi, byte ptr [eax + 6]        
  0x001E4486  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4489  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E448D  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4491  0fbf750c                movsx    esi, word ptr [ebp + 0xc]      
  0x001E4495  d1f9                    sar      ecx, 1                         
  0x001E4497  8bfb                    mov      edi, ebx                       
  0x001E4499  03f9                    add      edi, ecx                       
  0x001E449B  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E449E  0fb67007                movzx    esi, byte ptr [eax + 7]        
  0x001E44A2  884806                  mov      byte ptr [eax + 6], cl         
  0x001E44A5  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E44A9  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E44AD  0fbf750e                movsx    esi, word ptr [ebp + 0xe]      
  0x001E44B1  d1f9                    sar      ecx, 1                         
  0x001E44B3  8bfb                    mov      edi, ebx                       
  0x001E44B5  03f9                    add      edi, ecx                       
  0x001E44B7  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E44BA  0fb67008                movzx    esi, byte ptr [eax + 8]        
  0x001E44BE  884807                  mov      byte ptr [eax + 7], cl         
  0x001E44C1  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E44C5  83c008                  add      eax, 8                         
  0x001E44C8  83c208                  add      edx, 8                         
  0x001E44CB  83c510                  add      ebp, 0x10                      
  0x001E44CE  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E44D2  0fbf7500                movsx    esi, word ptr [ebp]            
  0x001E44D6  d1f9                    sar      ecx, 1                         
  0x001E44D8  8bfb                    mov      edi, ebx                       
  0x001E44DA  03f9                    add      edi, ecx                       
  0x001E44DC  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E44DF  8808                    mov      byte ptr [eax], cl             
  0x001E44E1  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E44E5  0fb67001                movzx    esi, byte ptr [eax + 1]        
  0x001E44E9  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E44ED  0fbf7502                movsx    esi, word ptr [ebp + 2]        
  0x001E44F1  d1f9                    sar      ecx, 1                         
  0x001E44F3  8bfb                    mov      edi, ebx                       
  0x001E44F5  03f9                    add      edi, ecx                       
  0x001E44F7  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E44FA  884801                  mov      byte ptr [eax + 1], cl         
  0x001E44FD  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E4501  0fb67002                movzx    esi, byte ptr [eax + 2]        
  0x001E4505  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4509  0fbf7504                movsx    esi, word ptr [ebp + 4]        
  0x001E450D  d1f9                    sar      ecx, 1                         
  0x001E450F  8bfb                    mov      edi, ebx                       
  0x001E4511  03f9                    add      edi, ecx                       
  0x001E4513  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4516  0fb67003                movzx    esi, byte ptr [eax + 3]        
  0x001E451A  884802                  mov      byte ptr [eax + 2], cl         
  0x001E451D  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E4521  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4525  0fbf7506                movsx    esi, word ptr [ebp + 6]        
  0x001E4529  d1f9                    sar      ecx, 1                         
  0x001E452B  8bfb                    mov      edi, ebx                       
  0x001E452D  03f9                    add      edi, ecx                       
  0x001E452F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4532  0fb67004                movzx    esi, byte ptr [eax + 4]        
  0x001E4536  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4539  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E453D  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4541  0fbf7508                movsx    esi, word ptr [ebp + 8]        
  0x001E4545  d1f9                    sar      ecx, 1                         
  0x001E4547  8bfb                    mov      edi, ebx                       
  0x001E4549  03f9                    add      edi, ecx                       
  0x001E454B  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E454E  0fb67005                movzx    esi, byte ptr [eax + 5]        
  0x001E4552  884804                  mov      byte ptr [eax + 4], cl         
  0x001E4555  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4559  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E455D  0fbf750a                movsx    esi, word ptr [ebp + 0xa]      
  0x001E4561  d1f9                    sar      ecx, 1                         
  0x001E4563  8bfb                    mov      edi, ebx                       
  0x001E4565  03f9                    add      edi, ecx                       
  0x001E4567  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E456A  0fb67006                movzx    esi, byte ptr [eax + 6]        
  0x001E456E  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4571  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E4575  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4579  0fbf750c                movsx    esi, word ptr [ebp + 0xc]      
  0x001E457D  d1f9                    sar      ecx, 1                         
  0x001E457F  8bfb                    mov      edi, ebx                       
  0x001E4581  03f9                    add      edi, ecx                       
  0x001E4583  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4586  0fb67007                movzx    esi, byte ptr [eax + 7]        
  0x001E458A  884806                  mov      byte ptr [eax + 6], cl         
  0x001E458D  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E4591  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4595  0fbf750e                movsx    esi, word ptr [ebp + 0xe]      
  0x001E4599  d1f9                    sar      ecx, 1                         
  0x001E459B  8bfb                    mov      edi, ebx                       
  0x001E459D  03f9                    add      edi, ecx                       
  0x001E459F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E45A2  0fb67008                movzx    esi, byte ptr [eax + 8]        
  0x001E45A6  884807                  mov      byte ptr [eax + 7], cl         
  0x001E45A9  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E45AD  83c008                  add      eax, 8                         
  0x001E45B0  83c208                  add      edx, 8                         
  0x001E45B3  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E45B7  0fbf7510                movsx    esi, word ptr [ebp + 0x10]     
  0x001E45BB  83c510                  add      ebp, 0x10                      
  0x001E45BE  d1f9                    sar      ecx, 1                         
  0x001E45C0  8bfb                    mov      edi, ebx                       
  0x001E45C2  03f9                    add      edi, ecx                       
  0x001E45C4  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E45C7  0fb67001                movzx    esi, byte ptr [eax + 1]        
  0x001E45CB  8808                    mov      byte ptr [eax], cl             
  0x001E45CD  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E45D1  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E45D5  0fbf7502                movsx    esi, word ptr [ebp + 2]        
  0x001E45D9  d1f9                    sar      ecx, 1                         
  0x001E45DB  8bfb                    mov      edi, ebx                       
  0x001E45DD  03f9                    add      edi, ecx                       
  0x001E45DF  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E45E2  884801                  mov      byte ptr [eax + 1], cl         
  0x001E45E5  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E45E9  0fb67002                movzx    esi, byte ptr [eax + 2]        
  0x001E45ED  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E45F1  0fbf7504                movsx    esi, word ptr [ebp + 4]        
  0x001E45F5  d1f9                    sar      ecx, 1                         
  0x001E45F7  8bfb                    mov      edi, ebx                       
  0x001E45F9  03f9                    add      edi, ecx                       
  0x001E45FB  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E45FE  884802                  mov      byte ptr [eax + 2], cl         
  0x001E4601  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E4605  0fb67003                movzx    esi, byte ptr [eax + 3]        
  0x001E4609  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E460D  0fbf7506                movsx    esi, word ptr [ebp + 6]        
  0x001E4611  d1f9                    sar      ecx, 1                         
  0x001E4613  8bfb                    mov      edi, ebx                       
  0x001E4615  03f9                    add      edi, ecx                       
  0x001E4617  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E461A  0fb67004                movzx    esi, byte ptr [eax + 4]        
  0x001E461E  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4621  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E4625  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4629  0fbf7508                movsx    esi, word ptr [ebp + 8]        
  0x001E462D  d1f9                    sar      ecx, 1                         
  0x001E462F  8bfb                    mov      edi, ebx                       
  0x001E4631  03f9                    add      edi, ecx                       
  0x001E4633  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4636  0fb67005                movzx    esi, byte ptr [eax + 5]        
  0x001E463A  884804                  mov      byte ptr [eax + 4], cl         
  0x001E463D  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4641  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4645  0fbf750a                movsx    esi, word ptr [ebp + 0xa]      
  0x001E4649  d1f9                    sar      ecx, 1                         
  0x001E464B  8bfb                    mov      edi, ebx                       
  0x001E464D  03f9                    add      edi, ecx                       
  0x001E464F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4652  0fb67006                movzx    esi, byte ptr [eax + 6]        
  0x001E4656  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4659  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E465D  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4661  0fbf750c                movsx    esi, word ptr [ebp + 0xc]      
  0x001E4665  d1f9                    sar      ecx, 1                         
  0x001E4667  8bfb                    mov      edi, ebx                       
  0x001E4669  03f9                    add      edi, ecx                       
  0x001E466B  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E466E  0fb67007                movzx    esi, byte ptr [eax + 7]        
  0x001E4672  884806                  mov      byte ptr [eax + 6], cl         
  0x001E4675  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E4679  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E467D  0fbf750e                movsx    esi, word ptr [ebp + 0xe]      
  0x001E4681  d1f9                    sar      ecx, 1                         
  0x001E4683  8bfb                    mov      edi, ebx                       
  0x001E4685  03f9                    add      edi, ecx                       
  0x001E4687  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E468A  0fb67008                movzx    esi, byte ptr [eax + 8]        
  0x001E468E  884807                  mov      byte ptr [eax + 7], cl         
  0x001E4691  0fb64a08                movzx    ecx, byte ptr [edx + 8]        
  0x001E4695  83c008                  add      eax, 8                         
  0x001E4698  83c208                  add      edx, 8                         
  0x001E469B  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E469F  0fbf7510                movsx    esi, word ptr [ebp + 0x10]     
  0x001E46A3  d1f9                    sar      ecx, 1                         
  0x001E46A5  83c510                  add      ebp, 0x10                      
  0x001E46A8  8bfb                    mov      edi, ebx                       
  0x001E46AA  03f9                    add      edi, ecx                       
  0x001E46AC  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E46AF  0fb67001                movzx    esi, byte ptr [eax + 1]        
  0x001E46B3  8808                    mov      byte ptr [eax], cl             
  0x001E46B5  0fb64a01                movzx    ecx, byte ptr [edx + 1]        
  0x001E46B9  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E46BD  0fbf7502                movsx    esi, word ptr [ebp + 2]        
  0x001E46C1  d1f9                    sar      ecx, 1                         
  0x001E46C3  8bfb                    mov      edi, ebx                       
  0x001E46C5  03f9                    add      edi, ecx                       
  0x001E46C7  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E46CA  884801                  mov      byte ptr [eax + 1], cl         
  0x001E46CD  0fb64a02                movzx    ecx, byte ptr [edx + 2]        
  0x001E46D1  0fb67002                movzx    esi, byte ptr [eax + 2]        
  0x001E46D5  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E46D9  0fbf7504                movsx    esi, word ptr [ebp + 4]        
  0x001E46DD  d1f9                    sar      ecx, 1                         
  0x001E46DF  8bfb                    mov      edi, ebx                       
  0x001E46E1  03f9                    add      edi, ecx                       
  0x001E46E3  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E46E6  0fb67003                movzx    esi, byte ptr [eax + 3]        
  0x001E46EA  884802                  mov      byte ptr [eax + 2], cl         
  0x001E46ED  0fb64a03                movzx    ecx, byte ptr [edx + 3]        
  0x001E46F1  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E46F5  0fbf7506                movsx    esi, word ptr [ebp + 6]        
  0x001E46F9  d1f9                    sar      ecx, 1                         
  0x001E46FB  8bfb                    mov      edi, ebx                       
  0x001E46FD  03f9                    add      edi, ecx                       
  0x001E46FF  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4702  0fb67004                movzx    esi, byte ptr [eax + 4]        
  0x001E4706  884803                  mov      byte ptr [eax + 3], cl         
  0x001E4709  0fb64a04                movzx    ecx, byte ptr [edx + 4]        
  0x001E470D  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4711  0fbf7508                movsx    esi, word ptr [ebp + 8]        
  0x001E4715  d1f9                    sar      ecx, 1                         
  0x001E4717  8bfb                    mov      edi, ebx                       
  0x001E4719  03f9                    add      edi, ecx                       
  0x001E471B  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E471E  0fb67005                movzx    esi, byte ptr [eax + 5]        
  0x001E4722  884804                  mov      byte ptr [eax + 4], cl         
  0x001E4725  0fb64a05                movzx    ecx, byte ptr [edx + 5]        
  0x001E4729  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E472D  0fbf750a                movsx    esi, word ptr [ebp + 0xa]      
  0x001E4731  d1f9                    sar      ecx, 1                         
  0x001E4733  8bfb                    mov      edi, ebx                       
  0x001E4735  03f9                    add      edi, ecx                       
  0x001E4737  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E473A  0fb67006                movzx    esi, byte ptr [eax + 6]        
  0x001E473E  884805                  mov      byte ptr [eax + 5], cl         
  0x001E4741  0fb64a06                movzx    ecx, byte ptr [edx + 6]        
  0x001E4745  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4749  0fbf750c                movsx    esi, word ptr [ebp + 0xc]      
  0x001E474D  d1f9                    sar      ecx, 1                         
  0x001E474F  8bfb                    mov      edi, ebx                       
  0x001E4751  03f9                    add      edi, ecx                       
  0x001E4753  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4756  0fb67007                movzx    esi, byte ptr [eax + 7]        
  0x001E475A  884806                  mov      byte ptr [eax + 6], cl         
  0x001E475D  0fb64a07                movzx    ecx, byte ptr [edx + 7]        
  0x001E4761  8d4c3101                lea      ecx, [ecx + esi + 1]           
  0x001E4765  0fbf750e                movsx    esi, word ptr [ebp + 0xe]      
  0x001E4769  d1f9                    sar      ecx, 1                         
  0x001E476B  8bfb                    mov      edi, ebx                       
  0x001E476D  03f9                    add      edi, ecx                       
  0x001E476F  8a0c3e                  mov      cl, byte ptr [esi + edi]       
  0x001E4772  884807                  mov      byte ptr [eax + 7], cl         
  0x001E4775  8b4c241c                mov      ecx, dword ptr [esp + 0x1c]    
  0x001E4779  83c008                  add      eax, 8                         
  0x001E477C  83c208                  add      edx, 8                         
  0x001E477F  83c510                  add      ebp, 0x10                      
  0x001E4782  49                      dec      ecx                            
  0x001E4783  894c241c                mov      dword ptr [esp + 0x1c], ecx    
  0x001E4787  0f8553fcffff            jne      0x1e43e0                       
                                        ; XREF: 0x001E43CA (jump)
  0x001E478D  8b4c2420                mov      ecx, dword ptr [esp + 0x20]    
  0x001E4791  8b7c2418                mov      edi, dword ptr [esp + 0x18]    
  0x001E4795  d1e1                    shl      ecx, 1                         
  0x001E4797  83e840                  sub      eax, 0x40                      
  0x001E479A  894c2420                mov      dword ptr [esp + 0x20], ecx    
  0x001E479E  8bf0                    mov      esi, eax                       
  0x001E47A0  b910000000              mov      ecx, 0x10                      
  0x001E47A5  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E47A7  8b7c2418                mov      edi, dword ptr [esp + 0x18]    
  0x001E47AB  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001E47AF  83c740                  add      edi, 0x40                      
  0x001E47B2  83c040                  add      eax, 0x40                      
  0x001E47B5  49                      dec      ecx                            
  0x001E47B6  897c2418                mov      dword ptr [esp + 0x18], edi    
  0x001E47BA  894c2410                mov      dword ptr [esp + 0x10], ecx    
  0x001E47BE  0f85b0f9ffff            jne      0x1e4174                       
  0x001E47C4  5f                      pop      edi                            
  0x001E47C5  5e                      pop      esi                            
  0x001E47C6  5d                      pop      ebp                            
  0x001E47C7  5b                      pop      ebx                            
  0x001E47C8  59                      pop      ecx                            
  0x001E47C9  c3                      ret                                     
  0x001E47CA  90                      nop                                     
  0x001E47CB  90                      nop                                     
  0x001E47CC  90                      nop                                     
  0x001E47CD  90                      nop                                     
  0x001E47CE  90                      nop                                     
  0x001E47CF  90                      nop                                     

; ============================================================
; Function: sub_001E47D0
; Start: 0x001E47D0  End: 0x001E4B37  Size: 871 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E47D0:
  0x001E47D0  53                      push     ebx                            
  0x001E47D1  8b5c240c                mov      ebx, dword ptr [esp + 0xc]     
  0x001E47D5  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E47D7  56                      push     esi                            
  0x001E47D8  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E47DC  8b06                    mov      eax, dword ptr [esi]           
  0x001E47DE  0fbf560c                movsx    edx, word ptr [esi + 0xc]      
  0x001E47E2  03c8                    add      ecx, eax                       
  0x001E47E4  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E47E8  57                      push     edi                            
  0x001E47E9  8b38                    mov      edi, dword ptr [eax]           
  0x001E47EB  8939                    mov      dword ptr [ecx], edi           
  0x001E47ED  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E47F0  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E47F3  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E47F6  83c008                  add      eax, 8                         
  0x001E47F9  83c008                  add      eax, 8                         
  0x001E47FC  c1ea03                  shr      edx, 3                         
  0x001E47FF  c1e203                  shl      edx, 3                         
  0x001E4802  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4805  8b78fc                  mov      edi, dword ptr [eax - 4]       
  0x001E4808  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E480C  8b38                    mov      edi, dword ptr [eax]           
  0x001E480E  03ca                    add      ecx, edx                       
  0x001E4810  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4813  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E4816  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E481A  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E481D  03ca                    add      ecx, edx                       
  0x001E481F  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4822  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E4825  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E4829  83c008                  add      eax, 8                         
  0x001E482C  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E482F  03ca                    add      ecx, edx                       
  0x001E4831  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4834  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E4837  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E483B  83c008                  add      eax, 8                         
  0x001E483E  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E4841  03ca                    add      ecx, edx                       
  0x001E4843  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4846  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E4849  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E484D  83c008                  add      eax, 8                         
  0x001E4850  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E4853  03ca                    add      ecx, edx                       
  0x001E4855  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4858  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E485B  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E485F  83c008                  add      eax, 8                         
  0x001E4862  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E4865  03ca                    add      ecx, edx                       
  0x001E4867  893c0a                  mov      dword ptr [edx + ecx], edi     
  0x001E486A  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E486D  897c0a04                mov      dword ptr [edx + ecx + 4], edi 
  0x001E4871  8b3b                    mov      edi, dword ptr [ebx]           
  0x001E4873  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E4876  83c008                  add      eax, 8                         
  0x001E4879  03cf                    add      ecx, edi                       
  0x001E487B  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E487E  8939                    mov      dword ptr [ecx], edi           
  0x001E4880  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E4883  83c008                  add      eax, 8                         
  0x001E4886  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E4889  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E488C  83c008                  add      eax, 8                         
  0x001E488F  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E4892  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E4895  03ca                    add      ecx, edx                       
  0x001E4897  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E489A  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E489D  83c008                  add      eax, 8                         
  0x001E48A0  03ca                    add      ecx, edx                       
  0x001E48A2  8939                    mov      dword ptr [ecx], edi           
  0x001E48A4  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E48A7  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E48AA  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E48AD  83c008                  add      eax, 8                         
  0x001E48B0  03ca                    add      ecx, edx                       
  0x001E48B2  8939                    mov      dword ptr [ecx], edi           
  0x001E48B4  8b7804                  mov      edi, dword ptr [eax + 4]       
  0x001E48B7  897904                  mov      dword ptr [ecx + 4], edi       
  0x001E48BA  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E48BD  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E48C0  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E48C3  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E48C7  03ca                    add      ecx, edx                       
  0x001E48C9  83c008                  add      eax, 8                         
  0x001E48CC  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E48CF  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E48D2  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E48D5  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E48D9  03ca                    add      ecx, edx                       
  0x001E48DB  83c008                  add      eax, 8                         
  0x001E48DE  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E48E1  893c11                  mov      dword ptr [ecx + edx], edi     
  0x001E48E4  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E48E7  897c1104                mov      dword ptr [ecx + edx + 4], edi 
  0x001E48EB  03ca                    add      ecx, edx                       
  0x001E48ED  83c008                  add      eax, 8                         
  0x001E48F0  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E48F3  893c0a                  mov      dword ptr [edx + ecx], edi     
  0x001E48F6  8b780c                  mov      edi, dword ptr [eax + 0xc]     
  0x001E48F9  897c0a04                mov      dword ptr [edx + ecx + 4], edi 
  0x001E48FD  8b4b04                  mov      ecx, dword ptr [ebx + 4]       
  0x001E4900  8b5608                  mov      edx, dword ptr [esi + 8]       
  0x001E4903  0fbf7e0e                movsx    edi, word ptr [esi + 0xe]      
  0x001E4907  83c008                  add      eax, 8                         
  0x001E490A  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E490D  891c11                  mov      dword ptr [ecx + edx], ebx     
  0x001E4910  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4913  895c1104                mov      dword ptr [ecx + edx + 4], ebx 
  0x001E4917  03ca                    add      ecx, edx                       
  0x001E4919  83c008                  add      eax, 8                         
  0x001E491C  8b5840                  mov      ebx, dword ptr [eax + 0x40]    
  0x001E491F  895908                  mov      dword ptr [ecx + 8], ebx       
  0x001E4922  8b5844                  mov      ebx, dword ptr [eax + 0x44]    
  0x001E4925  89590c                  mov      dword ptr [ecx + 0xc], ebx     
  0x001E4928  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E492B  8d5040                  lea      edx, [eax + 0x40]              
  0x001E492E  8d7108                  lea      esi, [ecx + 8]                 
  0x001E4931  83c008                  add      eax, 8                         
  0x001E4934  c1ef03                  shr      edi, 3                         
  0x001E4937  c1e703                  shl      edi, 3                         
  0x001E493A  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E493D  8b5804                  mov      ebx, dword ptr [eax + 4]       
  0x001E4940  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4944  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4947  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E494A  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E494D  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4951  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4954  03cf                    add      ecx, edi                       
  0x001E4956  83c208                  add      edx, 8                         
  0x001E4959  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E495C  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E495F  03f7                    add      esi, edi                       
  0x001E4961  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4965  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4968  83c008                  add      eax, 8                         
  0x001E496B  03cf                    add      ecx, edi                       
  0x001E496D  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4970  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4973  83c208                  add      edx, 8                         
  0x001E4976  03f7                    add      esi, edi                       
  0x001E4978  895e04                  mov      dword ptr [esi + 4], ebx       
  0x001E497B  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E497E  83c008                  add      eax, 8                         
  0x001E4981  03cf                    add      ecx, edi                       
  0x001E4983  8919                    mov      dword ptr [ecx], ebx           
  0x001E4985  8b5804                  mov      ebx, dword ptr [eax + 4]       
  0x001E4988  895904                  mov      dword ptr [ecx + 4], ebx       
  0x001E498B  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E498E  83c208                  add      edx, 8                         
  0x001E4991  03f7                    add      esi, edi                       
  0x001E4993  891e                    mov      dword ptr [esi], ebx           
  0x001E4995  8b5a04                  mov      ebx, dword ptr [edx + 4]       
  0x001E4998  83c008                  add      eax, 8                         
  0x001E499B  03cf                    add      ecx, edi                       
  0x001E499D  895e04                  mov      dword ptr [esi + 4], ebx       
  0x001E49A0  83c208                  add      edx, 8                         
  0x001E49A3  8b18                    mov      ebx, dword ptr [eax]           
  0x001E49A5  8919                    mov      dword ptr [ecx], ebx           
  0x001E49A7  8b5804                  mov      ebx, dword ptr [eax + 4]       
  0x001E49AA  895904                  mov      dword ptr [ecx + 4], ebx       
  0x001E49AD  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E49AF  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E49B2  8b5a04                  mov      ebx, dword ptr [edx + 4]       
  0x001E49B5  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E49B9  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E49BC  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E49BF  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E49C2  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E49C6  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E49C9  03f7                    add      esi, edi                       
  0x001E49CB  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E49CE  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E49D1  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E49D5  83c008                  add      eax, 8                         
  0x001E49D8  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E49DB  03cf                    add      ecx, edi                       
  0x001E49DD  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E49E0  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E49E3  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E49E7  83c208                  add      edx, 8                         
  0x001E49EA  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E49ED  03f7                    add      esi, edi                       
  0x001E49EF  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E49F2  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E49F5  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E49F9  83c008                  add      eax, 8                         
  0x001E49FC  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E49FF  03cf                    add      ecx, edi                       
  0x001E4A01  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4A04  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4A07  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4A0B  83c208                  add      edx, 8                         
  0x001E4A0E  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4A11  03f7                    add      esi, edi                       
  0x001E4A13  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4A16  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4A19  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4A1D  83c008                  add      eax, 8                         
  0x001E4A20  8b5848                  mov      ebx, dword ptr [eax + 0x48]    
  0x001E4A23  03cf                    add      ecx, edi                       
  0x001E4A25  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4A28  8b584c                  mov      ebx, dword ptr [eax + 0x4c]    
  0x001E4A2B  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4A2F  83c208                  add      edx, 8                         
  0x001E4A32  8b5a48                  mov      ebx, dword ptr [edx + 0x48]    
  0x001E4A35  03f7                    add      esi, edi                       
  0x001E4A37  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4A3A  8b5a4c                  mov      ebx, dword ptr [edx + 0x4c]    
  0x001E4A3D  83c048                  add      eax, 0x48                      
  0x001E4A40  03cf                    add      ecx, edi                       
  0x001E4A42  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4A46  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4A49  83c248                  add      edx, 0x48                      
  0x001E4A4C  03f7                    add      esi, edi                       
  0x001E4A4E  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4A51  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4A54  83c008                  add      eax, 8                         
  0x001E4A57  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4A5B  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4A5E  03cf                    add      ecx, edi                       
  0x001E4A60  83c208                  add      edx, 8                         
  0x001E4A63  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4A66  8b5a04                  mov      ebx, dword ptr [edx + 4]       
  0x001E4A69  03f7                    add      esi, edi                       
  0x001E4A6B  895e04                  mov      dword ptr [esi + 4], ebx       
  0x001E4A6E  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4A71  83c008                  add      eax, 8                         
  0x001E4A74  03cf                    add      ecx, edi                       
  0x001E4A76  8919                    mov      dword ptr [ecx], ebx           
  0x001E4A78  8b5804                  mov      ebx, dword ptr [eax + 4]       
  0x001E4A7B  83c208                  add      edx, 8                         
  0x001E4A7E  895904                  mov      dword ptr [ecx + 4], ebx       
  0x001E4A81  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E4A83  03f7                    add      esi, edi                       
  0x001E4A85  83c008                  add      eax, 8                         
  0x001E4A88  03cf                    add      ecx, edi                       
  0x001E4A8A  891e                    mov      dword ptr [esi], ebx           
  0x001E4A8C  8b5a04                  mov      ebx, dword ptr [edx + 4]       
  0x001E4A8F  895e04                  mov      dword ptr [esi + 4], ebx       
  0x001E4A92  8b18                    mov      ebx, dword ptr [eax]           
  0x001E4A94  8919                    mov      dword ptr [ecx], ebx           
  0x001E4A96  8b5804                  mov      ebx, dword ptr [eax + 4]       
  0x001E4A99  895904                  mov      dword ptr [ecx + 4], ebx       
  0x001E4A9C  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4A9F  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4AA2  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4AA5  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4AA9  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4AAC  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4AAF  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4AB2  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4AB6  83c208                  add      edx, 8                         
  0x001E4AB9  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4ABC  03f7                    add      esi, edi                       
  0x001E4ABE  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4AC1  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4AC4  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4AC8  83c008                  add      eax, 8                         
  0x001E4ACB  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4ACE  03cf                    add      ecx, edi                       
  0x001E4AD0  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4AD3  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4AD6  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4ADA  83c208                  add      edx, 8                         
  0x001E4ADD  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4AE0  03f7                    add      esi, edi                       
  0x001E4AE2  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4AE5  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4AE8  895c3e04                mov      dword ptr [esi + edi + 4], ebx 
  0x001E4AEC  83c008                  add      eax, 8                         
  0x001E4AEF  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4AF2  03cf                    add      ecx, edi                       
  0x001E4AF4  83c208                  add      edx, 8                         
  0x001E4AF7  891c39                  mov      dword ptr [ecx + edi], ebx     
  0x001E4AFA  8b580c                  mov      ebx, dword ptr [eax + 0xc]     
  0x001E4AFD  03f7                    add      esi, edi                       
  0x001E4AFF  895c3904                mov      dword ptr [ecx + edi + 4], ebx 
  0x001E4B03  8b5a08                  mov      ebx, dword ptr [edx + 8]       
  0x001E4B06  83c008                  add      eax, 8                         
  0x001E4B09  03cf                    add      ecx, edi                       
  0x001E4B0B  891c3e                  mov      dword ptr [esi + edi], ebx     
  0x001E4B0E  8b5a0c                  mov      ebx, dword ptr [edx + 0xc]     
  0x001E4B11  83c208                  add      edx, 8                         
  0x001E4B14  03f7                    add      esi, edi                       
  0x001E4B16  895e04                  mov      dword ptr [esi + 4], ebx       
  0x001E4B19  8b5808                  mov      ebx, dword ptr [eax + 8]       
  0x001E4B1C  891c0f                  mov      dword ptr [edi + ecx], ebx     
  0x001E4B1F  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001E4B22  89440f04                mov      dword ptr [edi + ecx + 4], eax 
  0x001E4B26  8b4a08                  mov      ecx, dword ptr [edx + 8]       
  0x001E4B29  890c37                  mov      dword ptr [edi + esi], ecx     
  0x001E4B2C  8b520c                  mov      edx, dword ptr [edx + 0xc]     
  0x001E4B2F  89543704                mov      dword ptr [edi + esi + 4], edx 
  0x001E4B33  5f                      pop      edi                            
  0x001E4B34  5e                      pop      esi                            
  0x001E4B35  5b                      pop      ebx                            
  0x001E4B36  c3                      ret                                     
; end of function
  0x001E4B37  90                      nop                                     
  0x001E4B38  90                      nop                                     
  0x001E4B39  90                      nop                                     
  0x001E4B3A  90                      nop                                     
  0x001E4B3B  90                      nop                                     
  0x001E4B3C  90                      nop                                     
  0x001E4B3D  90                      nop                                     
  0x001E4B3E  90                      nop                                     
  0x001E4B3F  90                      nop                                     

; ============================================================
; Function: sub_001E4B40
; Start: 0x001E4B40  End: 0x001E4C2E  Size: 238 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E4B40:
  0x001E4B40  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E4B44  56                      push     esi                            
  0x001E4B45  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001E4B49  8b4e14                  mov      ecx, dword ptr [esi + 0x14]    
  0x001E4B4C  8b560c                  mov      edx, dword ptr [esi + 0xc]     
  0x001E4B4F  c1ea03                  shr      edx, 3                         
  0x001E4B52  c1e203                  shl      edx, 3                         
  0x001E4B55  57                      push     edi                            
  0x001E4B56  8b39                    mov      edi, dword ptr [ecx]           
  0x001E4B58  8938                    mov      dword ptr [eax], edi           
  0x001E4B5A  8b7904                  mov      edi, dword ptr [ecx + 4]       
  0x001E4B5D  897804                  mov      dword ptr [eax + 4], edi       
  0x001E4B60  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4B63  897808                  mov      dword ptr [eax + 8], edi       
  0x001E4B66  8b7c1104                mov      edi, dword ptr [ecx + edx + 4] 
  0x001E4B6A  03ca                    add      ecx, edx                       
  0x001E4B6C  89780c                  mov      dword ptr [eax + 0xc], edi     
  0x001E4B6F  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4B72  897810                  mov      dword ptr [eax + 0x10], edi    
  0x001E4B75  8b7c1104                mov      edi, dword ptr [ecx + edx + 4] 
  0x001E4B79  03ca                    add      ecx, edx                       
  0x001E4B7B  897814                  mov      dword ptr [eax + 0x14], edi    
  0x001E4B7E  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4B81  897818                  mov      dword ptr [eax + 0x18], edi    
  0x001E4B84  8b7c1104                mov      edi, dword ptr [ecx + edx + 4] 
  0x001E4B88  03ca                    add      ecx, edx                       
  0x001E4B8A  89781c                  mov      dword ptr [eax + 0x1c], edi    
  0x001E4B8D  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4B90  897820                  mov      dword ptr [eax + 0x20], edi    
  0x001E4B93  8b7c1104                mov      edi, dword ptr [ecx + edx + 4] 
  0x001E4B97  03ca                    add      ecx, edx                       
  0x001E4B99  897824                  mov      dword ptr [eax + 0x24], edi    
  0x001E4B9C  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4B9F  03ca                    add      ecx, edx                       
  0x001E4BA1  897828                  mov      dword ptr [eax + 0x28], edi    
  0x001E4BA4  8b7904                  mov      edi, dword ptr [ecx + 4]       
  0x001E4BA7  89782c                  mov      dword ptr [eax + 0x2c], edi    
  0x001E4BAA  8b3c11                  mov      edi, dword ptr [ecx + edx]     
  0x001E4BAD  03ca                    add      ecx, edx                       
  0x001E4BAF  897830                  mov      dword ptr [eax + 0x30], edi    
  0x001E4BB2  8b7904                  mov      edi, dword ptr [ecx + 4]       
  0x001E4BB5  897834                  mov      dword ptr [eax + 0x34], edi    
  0x001E4BB8  8b3c0a                  mov      edi, dword ptr [edx + ecx]     
  0x001E4BBB  897838                  mov      dword ptr [eax + 0x38], edi    
  0x001E4BBE  8b4c0a04                mov      ecx, dword ptr [edx + ecx + 4] 
  0x001E4BC2  8b10                    mov      edx, dword ptr [eax]           
  0x001E4BC4  89483c                  mov      dword ptr [eax + 0x3c], ecx    
  0x001E4BC7  8b4e04                  mov      ecx, dword ptr [esi + 4]       
  0x001E4BCA  8911                    mov      dword ptr [ecx], edx           
  0x001E4BCC  8b5004                  mov      edx, dword ptr [eax + 4]       
  0x001E4BCF  895104                  mov      dword ptr [ecx + 4], edx       
  0x001E4BD2  8b5008                  mov      edx, dword ptr [eax + 8]       
  0x001E4BD5  895108                  mov      dword ptr [ecx + 8], edx       
  0x001E4BD8  8b500c                  mov      edx, dword ptr [eax + 0xc]     
  0x001E4BDB  89510c                  mov      dword ptr [ecx + 0xc], edx     
  0x001E4BDE  8b5010                  mov      edx, dword ptr [eax + 0x10]    
  0x001E4BE1  895110                  mov      dword ptr [ecx + 0x10], edx    
  0x001E4BE4  8b5014                  mov      edx, dword ptr [eax + 0x14]    
  0x001E4BE7  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E4BEA  8b5018                  mov      edx, dword ptr [eax + 0x18]    
  0x001E4BED  895118                  mov      dword ptr [ecx + 0x18], edx    
  0x001E4BF0  8b501c                  mov      edx, dword ptr [eax + 0x1c]    
  0x001E4BF3  89511c                  mov      dword ptr [ecx + 0x1c], edx    
  0x001E4BF6  8b5020                  mov      edx, dword ptr [eax + 0x20]    
  0x001E4BF9  83c120                  add      ecx, 0x20                      
  0x001E4BFC  8911                    mov      dword ptr [ecx], edx           
  0x001E4BFE  8b5024                  mov      edx, dword ptr [eax + 0x24]    
  0x001E4C01  895104                  mov      dword ptr [ecx + 4], edx       
  0x001E4C04  8b5028                  mov      edx, dword ptr [eax + 0x28]    
  0x001E4C07  895108                  mov      dword ptr [ecx + 8], edx       
  0x001E4C0A  8b502c                  mov      edx, dword ptr [eax + 0x2c]    
  0x001E4C0D  89510c                  mov      dword ptr [ecx + 0xc], edx     
  0x001E4C10  8b5030                  mov      edx, dword ptr [eax + 0x30]    
  0x001E4C13  895110                  mov      dword ptr [ecx + 0x10], edx    
  0x001E4C16  8b5034                  mov      edx, dword ptr [eax + 0x34]    
  0x001E4C19  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E4C1C  8b5038                  mov      edx, dword ptr [eax + 0x38]    
  0x001E4C1F  895118                  mov      dword ptr [ecx + 0x18], edx    
  0x001E4C22  8b403c                  mov      eax, dword ptr [eax + 0x3c]    
  0x001E4C25  89411c                  mov      dword ptr [ecx + 0x1c], eax    
  0x001E4C28  8d4120                  lea      eax, [ecx + 0x20]              
  0x001E4C2B  5f                      pop      edi                            
  0x001E4C2C  5e                      pop      esi                            
  0x001E4C2D  c3                      ret                                     
; end of function
  0x001E4C2E  90                      nop                                     
  0x001E4C2F  90                      nop                                     
