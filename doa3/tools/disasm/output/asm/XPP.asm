; ============================================================
; Section: XPP
; VA: 0x001E5940 - 0x001ED0DC
; Size: 30620 bytes (29.9 KB)
; Functions: 181
; Instructions: 10165
; ============================================================

  0x001E5940  0000                    add      byte ptr [eax], al             
  0x001E5942  0000                    add      byte ptr [eax], al             
  0x001E5944  f4                      hlt                                     
  0x001E5945  5a                      pop      edx                            
  0x001E5946  1e                      push     ds                             
  0x001E5947  007059                  add      byte ptr [eax + 0x59], dh      
  0x001E594A  1e                      push     ds                             
  0x001E594B  0010                    add      byte ptr [eax], dl             
  0x001E594D  5a                      pop      edx                            
  0x001E594E  1e                      push     ds                             
  0x001E594F  0028                    add      byte ptr [eax], ch             
  0x001E5951  5a                      pop      edx                            
  0x001E5952  1e                      push     ds                             
  0x001E5953  0000                    add      byte ptr [eax], al             
  0x001E5955  0000                    add      byte ptr [eax], al             
  0x001E5957  0000                    add      byte ptr [eax], al             
  0x001E5959  0000                    add      byte ptr [eax], al             
  0x001E595B  0000                    add      byte ptr [eax], al             
  0x001E595D  0000                    add      byte ptr [eax], al             
  0x001E595F  0000                    add      byte ptr [eax], al             
  0x001E5961  0000                    add      byte ptr [eax], al             
  0x001E5963  0000                    add      byte ptr [eax], al             
  0x001E5965  0000                    add      byte ptr [eax], al             
  0x001E5967  0000                    add      byte ptr [eax], al             
  0x001E5969  0000                    add      byte ptr [eax], al             
  0x001E596B  006059                  add      byte ptr [eax + 0x59], ah      
  0x001E596E  1e                      push     ds                             
  0x001E596F  008208ffff0c            add      byte ptr [edx + 0xcffff08], al 
  0x001E5975  5b                      pop      ebx                            
  0x001E5976  1e                      push     ds                             
  0x001E5977  002a                    add      byte ptr [edx], ch             
  0x001E5979  6a1e                    push     0x1e                           
  0x001E597B  00ac6b1e000100          add      byte ptr [ebx + ebp*2 + 0x1001e], ch 
  0x001E5982  0000                    add      byte ptr [eax], al             
  0x001E5984  6c                      insb     byte ptr es:[edi], dx          
  0x001E5985  59                      pop      ecx                            
  0x001E5986  1e                      push     ds                             
  0x001E5987  0002                    add      byte ptr [edx], al             
                                        ; XREF: 0x001E5C04 (data_read)
  0x001E5989  0000                    add      byte ptr [eax], al             
  0x001E598B  0102                    add      dword ptr [edx], eax           
  0x001E598D  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001E5C0C (data_read)
  0x001E598F  2000                    and      byte ptr [eax], al             
  0x001E5991  0000                    add      byte ptr [eax], al             
  0x001E5993  0000                    add      byte ptr [eax], al             
  0x001E5995  0000                    add      byte ptr [eax], al             
  0x001E5997  0029                    add      byte ptr [ecx], ch             
  0x001E5999  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E599B  0000                    add      byte ptr [eax], al             
  0x001E599D  0000                    add      byte ptr [eax], al             
  0x001E599F  0000                    add      byte ptr [eax], al             
  0x001E59A1  0000                    add      byte ptr [eax], al             
  0x001E59A3  0000                    add      byte ptr [eax], al             
  0x001E59A5  0000                    add      byte ptr [eax], al             
  0x001E59A7  0000                    add      byte ptr [eax], al             
  0x001E59A9  0000                    add      byte ptr [eax], al             
  0x001E59AB  002c80                  add      byte ptr [eax + eax*4], ch     
  0x001E59AE  1e                      push     ds                             
  0x001E59AF  002c80                  add      byte ptr [eax + eax*4], ch     
  0x001E59B2  1e                      push     ds                             
  0x001E59B3  0000                    add      byte ptr [eax], al             
  0x001E59B5  0000                    add      byte ptr [eax], al             
  0x001E59B7  0000                    add      byte ptr [eax], al             
  0x001E59B9  0000                    add      byte ptr [eax], al             
  0x001E59BB  0000                    add      byte ptr [eax], al             
  0x001E59BD  0000                    add      byte ptr [eax], al             
  0x001E59BF  0000                    add      byte ptr [eax], al             
  0x001E59C1  0000                    add      byte ptr [eax], al             
  0x001E59C3  0000                    add      byte ptr [eax], al             
  0x001E59C5  0000                    add      byte ptr [eax], al             
  0x001E59C7  0000                    add      byte ptr [eax], al             
  0x001E59C9  0000                    add      byte ptr [eax], al             
  0x001E59CB  002c80                  add      byte ptr [eax + eax*4], ch     
  0x001E59CE  1e                      push     ds                             
  0x001E59CF  002c80                  add      byte ptr [eax + eax*4], ch     
  0x001E59D2  1e                      push     ds                             
  0x001E59D3  0000                    add      byte ptr [eax], al             
  0x001E59D5  0000                    add      byte ptr [eax], al             
  0x001E59D7  0000                    add      byte ptr [eax], al             
  0x001E59D9  0000                    add      byte ptr [eax], al             
  0x001E59DB  0000                    add      byte ptr [eax], al             
  0x001E59DD  0000                    add      byte ptr [eax], al             
  0x001E59DF  0000                    add      byte ptr [eax], al             
  0x001E59E1  0000                    add      byte ptr [eax], al             
  0x001E59E3  0000                    add      byte ptr [eax], al             
  0x001E59E5  0000                    add      byte ptr [eax], al             
  0x001E59E7  0000                    add      byte ptr [eax], al             
  0x001E59E9  0000                    add      byte ptr [eax], al             
  0x001E59EB  0000                    add      byte ptr [eax], al             
  0x001E59ED  0000                    add      byte ptr [eax], al             
  0x001E59EF  0000                    add      byte ptr [eax], al             
  0x001E59F1  0000                    add      byte ptr [eax], al             
  0x001E59F3  0000                    add      byte ptr [eax], al             
  0x001E59F5  0000                    add      byte ptr [eax], al             
  0x001E59F7  0000                    add      byte ptr [eax], al             
  0x001E59F9  0000                    add      byte ptr [eax], al             
  0x001E59FB  0000                    add      byte ptr [eax], al             
  0x001E59FD  0000                    add      byte ptr [eax], al             
  0x001E59FF  0000                    add      byte ptr [eax], al             
  0x001E5A01  0000                    add      byte ptr [eax], al             
  0x001E5A03  00e0                    add      al, ah                         
  0x001E5A05  59                      pop      ecx                            
  0x001E5A06  1e                      push     ds                             
  0x001E5A07  00ec                    add      ah, ch                         
  0x001E5A09  59                      pop      ecx                            
  0x001E5A0A  1e                      push     ds                             
  0x001E5A0B  00f8                    add      al, bh                         
  0x001E5A0D  59                      pop      ecx                            
  0x001E5A0E  1e                      push     ds                             
  0x001E5A0F  008203ffff23            add      byte ptr [edx + 0x23ffff03], al 
  0x001E5A15  5c                      pop      esp                            
  0x001E5A16  1e                      push     ds                             
  0x001E5A17  007b7d                  add      byte ptr [ebx + 0x7d], bh      
  0x001E5A1A  1e                      push     ds                             
  0x001E5A1B  0029                    add      byte ptr [ecx], ch             
  0x001E5A1D  771e                    ja       0x1e5a3d                       
  0x001E5A1F  0003                    add      byte ptr [ebx], al             
  0x001E5A21  0000                    add      byte ptr [eax], al             
  0x001E5A23  00045a                  add      byte ptr [edx + ebx*2], al     
  0x001E5A26  1e                      push     ds                             
  0x001E5A27  008258ffff23            add      byte ptr [edx + 0x23ffff58], al 
  0x001E5A2D  5c                      pop      esp                            
  0x001E5A2E  1e                      push     ds                             
  0x001E5A2F  007b7d                  add      byte ptr [ebx + 0x7d], bh      
  0x001E5A32  1e                      push     ds                             
  0x001E5A33  0029                    add      byte ptr [ecx], ch             
  0x001E5A35  771e                    ja       0x1e5a55                       
  0x001E5A37  0003                    add      byte ptr [ebx], al             
  0x001E5A39  0000                    add      byte ptr [eax], al             
  0x001E5A3B  00045a                  add      byte ptr [edx + ebx*2], al     
  0x001E5A3E  1e                      push     ds                             
  0x001E5A3F  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001E5D2F (data_read)
  0x001E5A41  0000                    add      byte ptr [eax], al             
  0x001E5A43  0100                    add      dword ptr [eax], eax           
  0x001E5A45  020a                    add      cl, byte ptr [edx]             
  0x001E5A47  0000                    add      byte ptr [eax], al             
  0x001E5A49  0000                    add      byte ptr [eax], al             
  0x001E5A4B  0000                    add      byte ptr [eax], al             
  0x001E5A4D  0000                    add      byte ptr [eax], al             
  0x001E5A4F  0000                    add      byte ptr [eax], al             
  0x001E5A51  0000                    add      byte ptr [eax], al             
  0x001E5A53  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001E5A35 (cond_jump)
  0x001E5A55  0000                    add      byte ptr [eax], al             
  0x001E5A57  0000                    add      byte ptr [eax], al             
  0x001E5A59  0000                    add      byte ptr [eax], al             
  0x001E5A5B  0000                    add      byte ptr [eax], al             
  0x001E5A5D  0000                    add      byte ptr [eax], al             
  0x001E5A5F  0000                    add      byte ptr [eax], al             
  0x001E5A61  0000                    add      byte ptr [eax], al             
  0x001E5A63  0012                    add      byte ptr [edx], dl             
  0x001E5A65  50                      push     eax                            
  0x001E5A66  5a                      pop      edx                            
  0x001E5A67  1e                      push     ds                             
  0x001E5A68  0000                    add      byte ptr [eax], al             
  0x001E5A6A  0000                    add      byte ptr [eax], al             
  0x001E5A6C  0000                    add      byte ptr [eax], al             
  0x001E5A6E  0000                    add      byte ptr [eax], al             
  0x001E5A70  046c                    add      al, 0x6c                       
  0x001E5A72  5a                      pop      edx                            
  0x001E5A73  1e                      push     ds                             
  0x001E5A74  0000                    add      byte ptr [eax], al             
  0x001E5A76  0000                    add      byte ptr [eax], al             
  0x001E5A78  0108                    add      dword ptr [eax], ecx           
  0x001E5A7A  0000                    add      byte ptr [eax], al             
  0x001E5A7C  0000                    add      byte ptr [eax], al             
  0x001E5A7E  0000                    add      byte ptr [eax], al             
  0x001E5A80  0000                    add      byte ptr [eax], al             
  0x001E5A82  0000                    add      byte ptr [eax], al             
  0x001E5A84  087c5a1e                or       byte ptr [edx + ebx*2 + 0x1e], bh 
  0x001E5A88  0000                    add      byte ptr [eax], al             
  0x001E5A8A  0000                    add      byte ptr [eax], al             
  0x001E5A8C  01895a1e0000            add      dword ptr [ecx + 0x1e5a], ecx  
  0x001E5A92  0000                    add      byte ptr [eax], al             
  0x001E5A94  0110                    add      dword ptr [eax], edx           
  0x001E5A96  0000                    add      byte ptr [eax], al             
  0x001E5A98  0000                    add      byte ptr [eax], al             
  0x001E5A9A  0000                    add      byte ptr [eax], al             
  0x001E5A9C  0498                    add      al, 0x98                       
  0x001E5A9E  5a                      pop      edx                            
  0x001E5A9F  1e                      push     ds                             
  0x001E5AA0  0000                    add      byte ptr [eax], al             
  0x001E5AA2  0000                    add      byte ptr [eax], al             
  0x001E5AA4  0110                    add      dword ptr [eax], edx           
  0x001E5AA6  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001E5C67 (data_read), 0x001E5CA4 (data_read)
  0x001E5AA8  0401                    add      al, 1                          
  0x001E5AAA  0000                    add      byte ptr [eax], al             
  0x001E5AAC  645a                    pop      edx                            
  0x001E5AAE  1e                      push     ds                             
  0x001E5AAF  00705a                  add      byte ptr [eax + 0x5a], dh      
  0x001E5AB2  1e                      push     ds                             
  0x001E5AB3  00785a                  add      byte ptr [eax + 0x5a], bh      
  0x001E5AB6  1e                      push     ds                             
  0x001E5AB7  0096741e0000            add      byte ptr [esi + 0x1e74], dl    
  0x001E5ABD  0000                    add      byte ptr [eax], al             
  0x001E5ABF  0001                    add      byte ptr [ecx], al             
  0x001E5AC1  0100                    add      dword ptr [eax], eax           
  0x001E5AC3  00845a1e008c5a          add      byte ptr [edx + ebx*2 + 0x5a8c001e], al 
  0x001E5ACA  1e                      push     ds                             
  0x001E5ACB  00945a1e00fb74          add      byte ptr [edx + ebx*2 + 0x74fb001e], dl 
  0x001E5AD2  1e                      push     ds                             
  0x001E5AD3  0003                    add      byte ptr [ebx], al             
  0x001E5AD5  0000                    add      byte ptr [eax], al             
  0x001E5AD7  0001                    add      byte ptr [ecx], al             
  0x001E5AD9  0100                    add      dword ptr [eax], eax           
  0x001E5ADB  009c5a1e000000          add      byte ptr [edx + ebx*2 + 0x1e], bl 
  0x001E5AE2  0000                    add      byte ptr [eax], al             
  0x001E5AE4  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x001E5AE5  5a                      pop      edx                            
  0x001E5AE6  1e                      push     ds                             
  0x001E5AE7  00d7                    add      bh, dl                         
  0x001E5AE9  741e                    je       0x1e5b09                       
  0x001E5AEB  0000                    add      byte ptr [eax], al             
  0x001E5AED  0000                    add      byte ptr [eax], al             
  0x001E5AEF  0000                    add      byte ptr [eax], al             
  0x001E5AF1  0000                    add      byte ptr [eax], al             
  0x001E5AF3  0081090000d2            add      byte ptr [ecx - 0x2dfffff7], al 
  0x001E5AF9  631e                    arpl     word ptr [esi], bx             
  0x001E5AFB  003b                    add      byte ptr [ebx], bh             
  0x001E5AFD  b61e                    mov      dh, 0x1e                       
  0x001E5AFF  00a2b01e0001            add      byte ptr [edx + 0x1001eb0], ah 
  0x001E5B05  0000                    add      byte ptr [eax], al             
  0x001E5B07  00f0                    add      al, dh                         
                                        ; XREF: 0x001E5AE9 (cond_jump)
  0x001E5B09  5a                      pop      edx                            
  0x001E5B0A  1e                      push     ds                             
  0x001E5B0B  00558b                  add      byte ptr [ebp - 0x75], dl      
  0x001E5B0E  ec                      in       al, dx                         
  0x001E5B0F  83ec10                  sub      esp, 0x10                      
  0x001E5B12  56                      push     esi                            
  0x001E5B13  57                      push     edi                            
  0x001E5B14  33c0                    xor      eax, eax                       
  0x001E5B16  b9040c0000              mov      ecx, 0xc04                     
  0x001E5B1B  bf18f8b100              mov      edi, 0xb1f818                  
  0x001E5B20  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E5B22  b81cf8b100              mov      eax, 0xb1f81c                  
  0x001E5B27  6a60                    push     0x60                           
  0x001E5B29  a320f8b100              mov      dword ptr [0xb1f820], eax      
  0x001E5B2E  a31cf8b100              mov      dword ptr [0xb1f81c], eax      
  0x001E5B33  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E5B39  8bf8                    mov      edi, eax                       
  0x001E5B3B  6a18                    push     0x18                           
  0x001E5B3D  59                      pop      ecx                            
  0x001E5B3E  33c0                    xor      eax, eax                       
  0x001E5B40  893d2428b200            mov      dword ptr [0xb22824], edi      
  0x001E5B46  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E5B48  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E5B4B  e83a030000              call     0x1e5e8a                       ; -> sub_001E5E8A
  0x001E5B50  85c0                    test     eax, eax                       
  0x001E5B52  7409                    je       0x1e5b5d                       
  0x001E5B54  c745f808000000          mov      dword ptr [ebp - 8], 8         
  0x001E5B5B  eb1a                    jmp      0x1e5b77                       
                                        ; XREF: 0x001E5B52 (cond_jump)
  0x001E5B5D  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E5B60  6860591e00              push     0x1e5960                       
  0x001E5B65  e8e9020000              call     0x1e5e53                       ; -> sub_001E5E53
  0x001E5B6A  6a08                    push     8                              
  0x001E5B6C  59                      pop      ecx                            
  0x001E5B6D  3bc1                    cmp      eax, ecx                       
  0x001E5B6F  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E5B72  7603                    jbe      0x1e5b77                       
  0x001E5B74  894df8                  mov      dword ptr [ebp - 8], ecx       
                                        ; XREF: 0x001E5B5B (jump), 0x001E5B72 (cond_jump)
  0x001E5B77  689cd01e00              push     0x1ed09c                       
  0x001E5B7C  8d45f0                  lea      eax, [ebp - 0x10]              
  0x001E5B7F  50                      push     eax                            
  0x001E5B80  ff151cd11e00            call     dword ptr [0x1ed11c]           ; -> xbox_RtlInitAnsiString
  0x001E5B86  33f6                    xor      esi, esi                       
  0x001E5B88  3975f8                  cmp      dword ptr [ebp - 8], esi       
  0x001E5B8B  7670                    jbe      0x1e5bfd                       
                                        ; XREF: 0x001E5BFB (cond_jump)
  0x001E5B8D  83fe09                  cmp      esi, 9                         
  0x001E5B90  8d4641                  lea      eax, [esi + 0x41]              
  0x001E5B93  7703                    ja       0x1e5b98                       
  0x001E5B95  8d4630                  lea      eax, [esi + 0x30]              
                                        ; XREF: 0x001E5B93 (cond_jump)
  0x001E5B98  8b4df4                  mov      ecx, dword ptr [ebp - 0xc]     
  0x001E5B9B  88410b                  mov      byte ptr [ecx + 0xb], al       
  0x001E5B9E  8d45fc                  lea      eax, [ebp - 4]                 
  0x001E5BA1  50                      push     eax                            
  0x001E5BA2  6a00                    push     0                              
  0x001E5BA4  6a3a                    push     0x3a                           
  0x001E5BA6  8d45f0                  lea      eax, [ebp - 0x10]              
  0x001E5BA9  50                      push     eax                            
  0x001E5BAA  6870010000              push     0x170                          
  0x001E5BAF  6898591e00              push     0x1e5998                       
  0x001E5BB4  ff15d8d11e00            call     dword ptr [0x1ed1d8]           ; -> xbox_IoCompletionObjectType
  0x001E5BBA  85c0                    test     eax, eax                       
  0x001E5BBC  7c3f                    jl       0x1e5bfd                       
  0x001E5BBE  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E5BC1  8b5018                  mov      edx, dword ptr [eax + 0x18]    
  0x001E5BC4  33c0                    xor      eax, eax                       
  0x001E5BC6  6a5c                    push     0x5c                           
  0x001E5BC8  59                      pop      ecx                            
  0x001E5BC9  8bfa                    mov      edi, edx                       
  0x001E5BCB  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E5BCD  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E5BD0  8902                    mov      dword ptr [edx], eax           
  0x001E5BD2  897204                  mov      dword ptr [edx + 4], esi       
  0x001E5BD5  c7420c04000000          mov      dword ptr [edx + 0xc], 4       
  0x001E5BDC  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E5BDF  c6401e01                mov      byte ptr [eax + 0x1e], 1       
  0x001E5BE3  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E5BE6  83481404                or       dword ptr [eax + 0x14], 4      
  0x001E5BEA  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E5BED  836014ef                and      dword ptr [eax + 0x14], 0xffffffef 
  0x001E5BF1  52                      push     edx                            
  0x001E5BF2  e80b0e0000              call     0x1e6a02                       ; -> sub_001E6A02
  0x001E5BF7  46                      inc      esi                            
  0x001E5BF8  3b75f8                  cmp      esi, dword ptr [ebp - 8]       
  0x001E5BFB  7290                    jb       0x1e5b8d                       
                                        ; XREF: 0x001E5B8B (cond_jump), 0x001E5BBC (cond_jump)
  0x001E5BFD  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E5C00  83f801                  cmp      eax, 1                         
  0x001E5C03  5f                      pop      edi                            
  0x001E5C04  a289591e00              mov      byte ptr [0x1e5989], al        
  0x001E5C09  5e                      pop      esi                            
  0x001E5C0A  7606                    jbe      0x1e5c12                       
  0x001E5C0C  d0258f591e00            shl      byte ptr [0x1e598f], 1         
                                        ; XREF: 0x001E5C0A (cond_jump)
  0x001E5C12  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E5C15  6888591e00              push     0x1e5988                       
  0x001E5C1A  e877020000              call     0x1e5e96                       ; -> sub_001E5E96
  0x001E5C1F  c9                      leave                                   
  0x001E5C20  c20400                  ret      4                              
  0x001E5C23  833d4c5a1e0000          cmp      dword ptr [0x1e5a4c], 0        
  0x001E5C2A  0f8519010000            jne      0x1e5d49                       
  0x001E5C30  53                      push     ebx                            
  0x001E5C31  56                      push     esi                            
  0x001E5C32  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E5C36  8bce                    mov      ecx, esi                       
  0x001E5C38  c7054c5a1e0001000000    mov      dword ptr [0x1e5a4c], 1        
  0x001E5C42  66c7052828b2000400      mov      word ptr [0xb22828], 4         
  0x001E5C4B  e83a020000              call     0x1e5e8a                       ; -> sub_001E5E8A
  0x001E5C50  85c0                    test     eax, eax                       
  0x001E5C52  7540                    jne      0x1e5c94                       
  0x001E5C54  68e0591e00              push     0x1e59e0                       
  0x001E5C59  8bce                    mov      ecx, esi                       
  0x001E5C5B  e8f3010000              call     0x1e5e53                       ; -> sub_001E5E53
  0x001E5C60  68ec591e00              push     0x1e59ec                       
  0x001E5C65  8bce                    mov      ecx, esi                       
  0x001E5C67  a2a85a1e00              mov      byte ptr [0x1e5aa8], al        
  0x001E5C6C  0fb6d8                  movzx    ebx, al                        
  0x001E5C6F  e8df010000              call     0x1e5e53                       ; -> sub_001E5E53
  0x001E5C74  a2c05a1e00              mov      byte ptr [0x1e5ac0], al        
  0x001E5C79  0fb6c0                  movzx    eax, al                        
  0x001E5C7C  68f8591e00              push     0x1e59f8                       
  0x001E5C81  8bce                    mov      ecx, esi                       
  0x001E5C83  03d8                    add      ebx, eax                       
  0x001E5C85  e8c9010000              call     0x1e5e53                       ; -> sub_001E5E53
  0x001E5C8A  a2d85a1e00              mov      byte ptr [0x1e5ad8], al        
  0x001E5C8F  0fb6c0                  movzx    eax, al                        
  0x001E5C92  eb17                    jmp      0x1e5cab                       
                                        ; XREF: 0x001E5C52 (cond_jump)
  0x001E5C94  0fb605c05a1e00          movzx    eax, byte ptr [0x1e5ac0]       
  0x001E5C9B  0fb61dd85a1e00          movzx    ebx, byte ptr [0x1e5ad8]       
  0x001E5CA2  03d8                    add      ebx, eax                       
  0x001E5CA4  0fb605a85a1e00          movzx    eax, byte ptr [0x1e5aa8]       
                                        ; XREF: 0x001E5C92 (jump)
  0x001E5CAB  03d8                    add      ebx, eax                       
  0x001E5CAD  0fb7052828b200          movzx    eax, word ptr [0xb22828]       
  0x001E5CB4  3bd8                    cmp      ebx, eax                       
  0x001E5CB6  7602                    jbe      0x1e5cba                       
  0x001E5CB8  8bd8                    mov      ebx, eax                       
                                        ; XREF: 0x001E5CB6 (cond_jump)
  0x001E5CBA  8bcb                    mov      ecx, ebx                       
  0x001E5CBC  69c9a8000000            imul     ecx, ecx, 0xa8                 
  0x001E5CC2  8d04c0                  lea      eax, [eax + eax*8]             
  0x001E5CC5  8d0441                  lea      eax, [ecx + eax*2]             
  0x001E5CC8  50                      push     eax                            
  0x001E5CC9  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E5CCF  33c9                    xor      ecx, ecx                       
  0x001E5CD1  85db                    test     ebx, ebx                       
  0x001E5CD3  890d3028b200            mov      dword ptr [0xb22830], ecx      
  0x001E5CD9  7618                    jbe      0x1e5cf3                       
  0x001E5CDB  8bd3                    mov      edx, ebx                       
                                        ; XREF: 0x001E5CEB (cond_jump)
  0x001E5CDD  8988a4000000            mov      dword ptr [eax + 0xa4], ecx    
  0x001E5CE3  8bc8                    mov      ecx, eax                       
  0x001E5CE5  05a8000000              add      eax, 0xa8                      
  0x001E5CEA  4a                      dec      edx                            
  0x001E5CEB  75f0                    jne      0x1e5cdd                       
  0x001E5CED  890d3028b200            mov      dword ptr [0xb22830], ecx      
                                        ; XREF: 0x001E5CD9 (cond_jump)
  0x001E5CF3  6683252a28b20000        and      word ptr [0xb2282a], 0         
  0x001E5CFB  33d2                    xor      edx, edx                       
  0x001E5CFD  6639152828b200          cmp      word ptr [0xb22828], dx        
  0x001E5D04  a32c28b200              mov      dword ptr [0xb2282c], eax      
  0x001E5D09  761d                    jbe      0x1e5d28                       
  0x001E5D0B  33c9                    xor      ecx, ecx                       
                                        ; XREF: 0x001E5D26 (cond_jump)
  0x001E5D0D  a12c28b200              mov      eax, dword ptr [0xb2282c]      
  0x001E5D12  8d440104                lea      eax, [ecx + eax + 4]           
  0x001E5D16  8020fe                  and      byte ptr [eax], 0xfe           
  0x001E5D19  0fb7052828b200          movzx    eax, word ptr [0xb22828]       
  0x001E5D20  42                      inc      edx                            
  0x001E5D21  83c112                  add      ecx, 0x12                      
  0x001E5D24  3bd0                    cmp      edx, eax                       
  0x001E5D26  72e5                    jb       0x1e5d0d                       
                                        ; XREF: 0x001E5D09 (cond_jump)
  0x001E5D28  68405a1e00              push     0x1e5a40                       
  0x001E5D2D  8bce                    mov      ecx, esi                       
  0x001E5D2F  881d415a1e00            mov      byte ptr [0x1e5a41], bl        
  0x001E5D35  e85c010000              call     0x1e5e96                       ; -> sub_001E5E96
  0x001E5D3A  6a00                    push     0                              
  0x001E5D3C  688028b200              push     0xb22880                       
  0x001E5D41  ff15e8d11e00            call     dword ptr [0x1ed1e8]           ; -> xbox_KeInitializeTimerEx
  0x001E5D47  5e                      pop      esi                            
  0x001E5D48  5b                      pop      ebx                            
                                        ; XREF: 0x001E5C2A (cond_jump)
  0x001E5D49  c20400                  ret      4                              
                                        ; XREF: 0x001E6953 (jump)
  0x001E5D4C  53                      push     ebx                            
  0x001E5D4D  56                      push     esi                            
  0x001E5D4E  57                      push     edi                            
  0x001E5D4F  68b4000000              push     0xb4                           
  0x001E5D54  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E5D5A  85c0                    test     eax, eax                       
  0x001E5D5C  7413                    je       0x1e5d71                       
  0x001E5D5E  ff742414                push     dword ptr [esp + 0x14]         
  0x001E5D62  8bc8                    mov      ecx, eax                       
  0x001E5D64  ff742414                push     dword ptr [esp + 0x14]         
  0x001E5D68  e863210000              call     0x1e7ed0                       ; -> sub_001E7ED0
  0x001E5D6D  8bf0                    mov      esi, eax                       
  0x001E5D6F  eb02                    jmp      0x1e5d73                       
                                        ; XREF: 0x001E5D5C (cond_jump)
  0x001E5D71  33f6                    xor      esi, esi                       
                                        ; XREF: 0x001E5D6F (jump)
  0x001E5D73  b844591e00              mov      eax, 0x1e5944                  
  0x001E5D78  bf54591e00              mov      edi, 0x1e5954                  
  0x001E5D7D  3bc7                    cmp      eax, edi                       
  0x001E5D7F  8bd8                    mov      ebx, eax                       
  0x001E5D81  7311                    jae      0x1e5d94                       
                                        ; XREF: 0x001E5D92 (cond_jump)
  0x001E5D83  8b03                    mov      eax, dword ptr [ebx]           
  0x001E5D85  85c0                    test     eax, eax                       
  0x001E5D87  7404                    je       0x1e5d8d                       
  0x001E5D89  56                      push     esi                            
  0x001E5D8A  ff5004                  call     dword ptr [eax + 4]            
                                        ; XREF: 0x001E5D87 (cond_jump)
  0x001E5D8D  83c304                  add      ebx, 4                         
  0x001E5D90  3bdf                    cmp      ebx, edi                       
  0x001E5D92  72ef                    jb       0x1e5d83                       
                                        ; XREF: 0x001E5D81 (cond_jump)
  0x001E5D94  8bce                    mov      ecx, esi                       
  0x001E5D96  e8fd020000              call     0x1e6098                       ; -> sub_001E6098
  0x001E5D9B  8d86a4000000            lea      eax, [esi + 0xa4]              
  0x001E5DA1  50                      push     eax                            
  0x001E5DA2  e8b3040000              call     0x1e625a                       ; -> sub_001E625A
  0x001E5DA7  0fb686a1000000          movzx    eax, byte ptr [esi + 0xa1]     
  0x001E5DAE  50                      push     eax                            
  0x001E5DAF  0fb686a0000000          movzx    eax, byte ptr [esi + 0xa0]     
  0x001E5DB6  50                      push     eax                            
  0x001E5DB7  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E5DBC  e8fa030000              call     0x1e61bb                       ; -> sub_001E61BB
  0x001E5DC1  56                      push     esi                            
  0x001E5DC2  ff1510d21e00            call     dword ptr [0x1ed210]           ; -> xbox_ExEventObjectType
  0x001E5DC8  8025cc28b20000          and      byte ptr [0xb228cc], 0         
  0x001E5DCF  e892040000              call     0x1e6266                       ; -> sub_001E6266
  0x001E5DD4  5f                      pop      edi                            
  0x001E5DD5  5e                      pop      esi                            
  0x001E5DD6  5b                      pop      ebx                            
  0x001E5DD7  c20800                  ret      8                              

; ============================================================
; Function: sub_001E5DDA
; Start: 0x001E5DDA  End: 0x001E5E53  Size: 121 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E62A8, sub_001E7F2A
; Called by: sub_001E6266
; ============================================================
sub_001E5DDA:
  0x001E5DDA  56                      push     esi                            
  0x001E5DDB  57                      push     edi                            
  0x001E5DDC  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E5DE0  83c718                  add      edi, 0x18                      
  0x001E5DE3  57                      push     edi                            
  0x001E5DE4  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E5DEA  8bf0                    mov      esi, eax                       
  0x001E5DEC  85f6                    test     esi, esi                       
  0x001E5DEE  745e                    je       0x1e5e4e                       
  0x001E5DF0  8bcf                    mov      ecx, edi                       
  0x001E5DF2  8bd1                    mov      edx, ecx                       
  0x001E5DF4  c1e902                  shr      ecx, 2                         
  0x001E5DF7  33c0                    xor      eax, eax                       
  0x001E5DF9  8bfe                    mov      edi, esi                       
  0x001E5DFB  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E5DFD  8bca                    mov      ecx, edx                       
  0x001E5DFF  83e103                  and      ecx, 3                         
  0x001E5E02  f3aa                    rep stosb byte ptr es:[edi], al          
  0x001E5E04  fe05cc28b200            inc      byte ptr [0xb228cc]            
  0x001E5E0A  0fb605cc28b200          movzx    eax, byte ptr [0xb228cc]       
  0x001E5E11  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E5E16  8906                    mov      dword ptr [esi], eax           
  0x001E5E18  e80d210000              call     0x1e7f2a                       ; -> sub_001E7F2A
  0x001E5E1D  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E5E21  8d4e04                  lea      ecx, [esi + 4]                 
  0x001E5E24  8901                    mov      dword ptr [ecx], eax           
  0x001E5E26  802000                  and      byte ptr [eax], 0              
  0x001E5E29  8b01                    mov      eax, dword ptr [ecx]           
  0x001E5E2B  c6400280                mov      byte ptr [eax + 2], 0x80       
  0x001E5E2F  8b01                    mov      eax, dword ptr [ecx]           
  0x001E5E31  c6400180                mov      byte ptr [eax + 1], 0x80       
  0x001E5E35  8b01                    mov      eax, dword ptr [ecx]           
  0x001E5E37  c6400380                mov      byte ptr [eax + 3], 0x80       
  0x001E5E3B  8b01                    mov      eax, dword ptr [ecx]           
  0x001E5E3D  89700c                  mov      dword ptr [eax + 0xc], esi     
  0x001E5E40  33c0                    xor      eax, eax                       
  0x001E5E42  8a06                    mov      al, byte ptr [esi]             
  0x001E5E44  83c618                  add      esi, 0x18                      
  0x001E5E47  50                      push     eax                            
  0x001E5E48  56                      push     esi                            
  0x001E5E49  e85a040000              call     0x1e62a8                       ; -> sub_001E62A8
                                        ; XREF: 0x001E5DEE (cond_jump)
  0x001E5E4E  5f                      pop      edi                            
  0x001E5E4F  5e                      pop      esi                            
  0x001E5E50  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E5E53
; Start: 0x001E5E53  End: 0x001E5E84  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E5E53:
  0x001E5E53  8b919c000000            mov      edx, dword ptr [ecx + 0x9c]    
  0x001E5E59  33c0                    xor      eax, eax                       
  0x001E5E5B  85d2                    test     edx, edx                       
  0x001E5E5D  7422                    je       0x1e5e81                       
  0x001E5E5F  8b8998000000            mov      ecx, dword ptr [ecx + 0x98]    
  0x001E5E65  85c9                    test     ecx, ecx                       
  0x001E5E67  56                      push     esi                            
  0x001E5E68  57                      push     edi                            
  0x001E5E69  7612                    jbe      0x1e5e7d                       
  0x001E5E6B  8bf2                    mov      esi, edx                       
                                        ; XREF: 0x001E5E7B (cond_jump)
  0x001E5E6D  8b3e                    mov      edi, dword ptr [esi]           
  0x001E5E6F  3b7c240c                cmp      edi, dword ptr [esp + 0xc]     
  0x001E5E73  740f                    je       0x1e5e84                       
  0x001E5E75  40                      inc      eax                            
  0x001E5E76  83c608                  add      esi, 8                         
  0x001E5E79  3bc1                    cmp      eax, ecx                       
  0x001E5E7B  72f0                    jb       0x1e5e6d                       
                                        ; XREF: 0x001E5E69 (cond_jump)
  0x001E5E7D  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E5E88 (jump)
  0x001E5E7F  5f                      pop      edi                            
  0x001E5E80  5e                      pop      esi                            
                                        ; XREF: 0x001E5E5D (cond_jump)
  0x001E5E81  c20400                  ret      4                              
; end of function
                                        ; XREF: 0x001E5E73 (cond_jump)
  0x001E5E84  8b44c204                mov      eax, dword ptr [edx + eax*8 + 4] 
  0x001E5E88  ebf5                    jmp      0x1e5e7f                       

; ============================================================
; Function: sub_001E5E8A
; Start: 0x001E5E8A  End: 0x001E5E96  Size: 12 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E5E8A:
  0x001E5E8A  33c0                    xor      eax, eax                       
  0x001E5E8C  39819c000000            cmp      dword ptr [ecx + 0x9c], eax    
  0x001E5E92  0f94c0                  sete     al                             
  0x001E5E95  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E5E96
; Start: 0x001E5E96  End: 0x001E6098  Size: 514 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E5E96
; Called by: sub_001E5E96
; ============================================================
sub_001E5E96:
  0x001E5E96  55                      push     ebp                            
  0x001E5E97  8bec                    mov      ebp, esp                       
  0x001E5E99  83ec0c                  sub      esp, 0xc                       
  0x001E5E9C  53                      push     ebx                            
  0x001E5E9D  56                      push     esi                            
  0x001E5E9E  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E5EA1  0fb64601                movzx    eax, byte ptr [esi + 1]        
  0x001E5EA5  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E5EA8  0fb606                  movzx    eax, byte ptr [esi]            
  0x001E5EAB  83e800                  sub      eax, 0                         
  0x001E5EAE  8bd1                    mov      edx, ecx                       
  0x001E5EB0  57                      push     edi                            
  0x001E5EB1  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001E5EB4  7440                    je       0x1e5ef6                       
  0x001E5EB6  48                      dec      eax                            
  0x001E5EB7  7438                    je       0x1e5ef1                       
  0x001E5EB9  48                      dec      eax                            
  0x001E5EBA  753e                    jne      0x1e5efa                       
  0x001E5EBC  8a4602                  mov      al, byte ptr [esi + 2]         
  0x001E5EBF  3a4234                  cmp      al, byte ptr [edx + 0x34]      
  0x001E5EC2  8d5a64                  lea      ebx, [edx + 0x64]              
  0x001E5EC5  7603                    jbe      0x1e5eca                       
  0x001E5EC7  884234                  mov      byte ptr [edx + 0x34], al      
                                        ; XREF: 0x001E5EC5 (cond_jump)
  0x001E5ECA  8a4601                  mov      al, byte ptr [esi + 1]         
  0x001E5ECD  3c04                    cmp      al, 4                          
  0x001E5ECF  762c                    jbe      0x1e5efd                       
  0x001E5ED1  2c04                    sub      al, 4                          
  0x001E5ED3  56                      push     esi                            
  0x001E5ED4  8bca                    mov      ecx, edx                       
  0x001E5ED6  884601                  mov      byte ptr [esi + 1], al         
  0x001E5ED9  c60601                  mov      byte ptr [esi], 1              
  0x001E5EDC  e8b5ffffff              call     0x1e5e96                       ; -> sub_001E5E96
  0x001E5EE1  80460104                add      byte ptr [esi + 1], 4          
  0x001E5EE5  836df804                sub      dword ptr [ebp - 8], 4         
  0x001E5EE9  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001E5EEC  c60602                  mov      byte ptr [esi], 2              
  0x001E5EEF  eb0c                    jmp      0x1e5efd                       
                                        ; XREF: 0x001E5EB7 (cond_jump)
  0x001E5EF1  8d5a32                  lea      ebx, [edx + 0x32]              
  0x001E5EF4  eb07                    jmp      0x1e5efd                       
                                        ; XREF: 0x001E5EB4 (cond_jump)
  0x001E5EF6  8bda                    mov      ebx, edx                       
  0x001E5EF8  eb03                    jmp      0x1e5efd                       
                                        ; XREF: 0x001E5EBA (cond_jump)
  0x001E5EFA  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
                                        ; XREF: 0x001E5ECF (cond_jump), 0x001E5EEF (jump), 0x001E5EF4 (jump), 0x001E5EF8 (jump)
  0x001E5EFD  8a4602                  mov      al, byte ptr [esi + 2]         
  0x001E5F00  3a4302                  cmp      al, byte ptr [ebx + 2]         
  0x001E5F03  7603                    jbe      0x1e5f08                       
  0x001E5F05  884302                  mov      byte ptr [ebx + 2], al         
                                        ; XREF: 0x001E5F03 (cond_jump)
  0x001E5F08  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E5F0B  83650800                and      dword ptr [ebp + 8], 0         
  0x001E5F0F  85c0                    test     eax, eax                       
  0x001E5F11  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E5F14  7449                    je       0x1e5f5f                       
  0x001E5F16  8d7b03                  lea      edi, [ebx + 3]                 
                                        ; XREF: 0x001E5F5D (cond_jump)
  0x001E5F19  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5F1D  7340                    jae      0x1e5f5f                       
  0x001E5F1F  8a07                    mov      al, byte ptr [edi]             
  0x001E5F21  3a4603                  cmp      al, byte ptr [esi + 3]         
  0x001E5F24  7608                    jbe      0x1e5f2e                       
  0x001E5F26  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5F29  83c70a                  add      edi, 0xa                       
  0x001E5F2C  eb2b                    jmp      0x1e5f59                       
                                        ; XREF: 0x001E5F24 (cond_jump)
  0x001E5F2E  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5F32  7317                    jae      0x1e5f4b                       
  0x001E5F34  6a04                    push     4                              
  0x001E5F36  58                      pop      eax                            
  0x001E5F37  2b4508                  sub      eax, dword ptr [ebp + 8]       
  0x001E5F3A  8d4b2b                  lea      ecx, [ebx + 0x2b]              
                                        ; XREF: 0x001E5F46 (cond_jump)
  0x001E5F3D  8a51f6                  mov      dl, byte ptr [ecx - 0xa]       
  0x001E5F40  8811                    mov      byte ptr [ecx], dl             
  0x001E5F42  83e90a                  sub      ecx, 0xa                       
  0x001E5F45  48                      dec      eax                            
  0x001E5F46  75f5                    jne      0x1e5f3d                       
  0x001E5F48  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
                                        ; XREF: 0x001E5F32 (cond_jump)
  0x001E5F4B  8a4603                  mov      al, byte ptr [esi + 3]         
  0x001E5F4E  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5F51  8807                    mov      byte ptr [edi], al             
  0x001E5F53  83c70a                  add      edi, 0xa                       
  0x001E5F56  ff4dfc                  dec      dword ptr [ebp - 4]            
                                        ; XREF: 0x001E5F2C (jump)
  0x001E5F59  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E5F5D  75ba                    jne      0x1e5f19                       
                                        ; XREF: 0x001E5F14 (cond_jump), 0x001E5F1D (cond_jump)
  0x001E5F5F  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E5F62  83650800                and      dword ptr [ebp + 8], 0         
  0x001E5F66  85c0                    test     eax, eax                       
  0x001E5F68  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E5F6B  7449                    je       0x1e5fb6                       
  0x001E5F6D  8d7b04                  lea      edi, [ebx + 4]                 
                                        ; XREF: 0x001E5FB4 (cond_jump)
  0x001E5F70  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5F74  7340                    jae      0x1e5fb6                       
  0x001E5F76  8a07                    mov      al, byte ptr [edi]             
  0x001E5F78  3a4604                  cmp      al, byte ptr [esi + 4]         
  0x001E5F7B  7608                    jbe      0x1e5f85                       
  0x001E5F7D  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5F80  83c70a                  add      edi, 0xa                       
  0x001E5F83  eb2b                    jmp      0x1e5fb0                       
                                        ; XREF: 0x001E5F7B (cond_jump)
  0x001E5F85  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5F89  7317                    jae      0x1e5fa2                       
  0x001E5F8B  6a04                    push     4                              
  0x001E5F8D  58                      pop      eax                            
  0x001E5F8E  2b4508                  sub      eax, dword ptr [ebp + 8]       
  0x001E5F91  8d4b2c                  lea      ecx, [ebx + 0x2c]              
                                        ; XREF: 0x001E5F9D (cond_jump)
  0x001E5F94  8a51f6                  mov      dl, byte ptr [ecx - 0xa]       
  0x001E5F97  8811                    mov      byte ptr [ecx], dl             
  0x001E5F99  83e90a                  sub      ecx, 0xa                       
  0x001E5F9C  48                      dec      eax                            
  0x001E5F9D  75f5                    jne      0x1e5f94                       
  0x001E5F9F  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
                                        ; XREF: 0x001E5F89 (cond_jump)
  0x001E5FA2  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E5FA5  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5FA8  8807                    mov      byte ptr [edi], al             
  0x001E5FAA  83c70a                  add      edi, 0xa                       
  0x001E5FAD  ff4dfc                  dec      dword ptr [ebp - 4]            
                                        ; XREF: 0x001E5F83 (jump)
  0x001E5FB0  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E5FB4  75ba                    jne      0x1e5f70                       
                                        ; XREF: 0x001E5F6B (cond_jump), 0x001E5F74 (cond_jump)
  0x001E5FB6  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E5FB9  83650800                and      dword ptr [ebp + 8], 0         
  0x001E5FBD  85c0                    test     eax, eax                       
  0x001E5FBF  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E5FC2  7449                    je       0x1e600d                       
  0x001E5FC4  8d7b05                  lea      edi, [ebx + 5]                 
                                        ; XREF: 0x001E600B (cond_jump)
  0x001E5FC7  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5FCB  7340                    jae      0x1e600d                       
  0x001E5FCD  8a07                    mov      al, byte ptr [edi]             
  0x001E5FCF  3a4605                  cmp      al, byte ptr [esi + 5]         
  0x001E5FD2  7608                    jbe      0x1e5fdc                       
  0x001E5FD4  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5FD7  83c70a                  add      edi, 0xa                       
  0x001E5FDA  eb2b                    jmp      0x1e6007                       
                                        ; XREF: 0x001E5FD2 (cond_jump)
  0x001E5FDC  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E5FE0  7317                    jae      0x1e5ff9                       
  0x001E5FE2  6a04                    push     4                              
  0x001E5FE4  58                      pop      eax                            
  0x001E5FE5  2b4508                  sub      eax, dword ptr [ebp + 8]       
  0x001E5FE8  8d4b2d                  lea      ecx, [ebx + 0x2d]              
                                        ; XREF: 0x001E5FF4 (cond_jump)
  0x001E5FEB  8a51f6                  mov      dl, byte ptr [ecx - 0xa]       
  0x001E5FEE  8811                    mov      byte ptr [ecx], dl             
  0x001E5FF0  83e90a                  sub      ecx, 0xa                       
  0x001E5FF3  48                      dec      eax                            
  0x001E5FF4  75f5                    jne      0x1e5feb                       
  0x001E5FF6  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
                                        ; XREF: 0x001E5FE0 (cond_jump)
  0x001E5FF9  8a4605                  mov      al, byte ptr [esi + 5]         
  0x001E5FFC  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E5FFF  8807                    mov      byte ptr [edi], al             
  0x001E6001  83c70a                  add      edi, 0xa                       
  0x001E6004  ff4dfc                  dec      dword ptr [ebp - 4]            
                                        ; XREF: 0x001E5FDA (jump)
  0x001E6007  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E600B  75ba                    jne      0x1e5fc7                       
                                        ; XREF: 0x001E5FC2 (cond_jump), 0x001E5FCB (cond_jump)
  0x001E600D  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E6010  83650800                and      dword ptr [ebp + 8], 0         
  0x001E6014  85c0                    test     eax, eax                       
  0x001E6016  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E6019  7449                    je       0x1e6064                       
  0x001E601B  8d7b08                  lea      edi, [ebx + 8]                 
                                        ; XREF: 0x001E6062 (cond_jump)
  0x001E601E  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E6022  7340                    jae      0x1e6064                       
  0x001E6024  8a07                    mov      al, byte ptr [edi]             
  0x001E6026  3a4608                  cmp      al, byte ptr [esi + 8]         
  0x001E6029  7608                    jbe      0x1e6033                       
  0x001E602B  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E602E  83c70a                  add      edi, 0xa                       
  0x001E6031  eb2b                    jmp      0x1e605e                       
                                        ; XREF: 0x001E6029 (cond_jump)
  0x001E6033  837d0804                cmp      dword ptr [ebp + 8], 4         
  0x001E6037  7317                    jae      0x1e6050                       
  0x001E6039  6a04                    push     4                              
  0x001E603B  58                      pop      eax                            
  0x001E603C  2b4508                  sub      eax, dword ptr [ebp + 8]       
  0x001E603F  8d4b30                  lea      ecx, [ebx + 0x30]              
                                        ; XREF: 0x001E604B (cond_jump)
  0x001E6042  8a51f6                  mov      dl, byte ptr [ecx - 0xa]       
  0x001E6045  8811                    mov      byte ptr [ecx], dl             
  0x001E6047  83e90a                  sub      ecx, 0xa                       
  0x001E604A  48                      dec      eax                            
  0x001E604B  75f5                    jne      0x1e6042                       
  0x001E604D  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
                                        ; XREF: 0x001E6037 (cond_jump)
  0x001E6050  8a4608                  mov      al, byte ptr [esi + 8]         
  0x001E6053  ff4508                  inc      dword ptr [ebp + 8]            
  0x001E6056  8807                    mov      byte ptr [edi], al             
  0x001E6058  83c70a                  add      edi, 0xa                       
  0x001E605B  ff4dfc                  dec      dword ptr [ebp - 4]            
                                        ; XREF: 0x001E6031 (jump)
  0x001E605E  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E6062  75ba                    jne      0x1e601e                       
                                        ; XREF: 0x001E6019 (cond_jump), 0x001E6022 (cond_jump)
  0x001E6064  8a4603                  mov      al, byte ptr [esi + 3]         
  0x001E6067  8d8ab0000000            lea      ecx, [edx + 0xb0]              
  0x001E606D  3a01                    cmp      al, byte ptr [ecx]             
  0x001E606F  7602                    jbe      0x1e6073                       
  0x001E6071  8801                    mov      byte ptr [ecx], al             
                                        ; XREF: 0x001E606F (cond_jump)
  0x001E6073  8a4607                  mov      al, byte ptr [esi + 7]         
  0x001E6076  8d8ab1000000            lea      ecx, [edx + 0xb1]              
  0x001E607C  3a01                    cmp      al, byte ptr [ecx]             
  0x001E607E  7602                    jbe      0x1e6082                       
  0x001E6080  8801                    mov      byte ptr [ecx], al             
                                        ; XREF: 0x001E607E (cond_jump)
  0x001E6082  8a4609                  mov      al, byte ptr [esi + 9]         
  0x001E6085  5f                      pop      edi                            
  0x001E6086  8d8ab2000000            lea      ecx, [edx + 0xb2]              
  0x001E608C  3a01                    cmp      al, byte ptr [ecx]             
  0x001E608E  5e                      pop      esi                            
  0x001E608F  5b                      pop      ebx                            
  0x001E6090  7602                    jbe      0x1e6094                       
  0x001E6092  8801                    mov      byte ptr [ecx], al             
                                        ; XREF: 0x001E6090 (cond_jump)
  0x001E6094  c9                      leave                                   
  0x001E6095  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E6098
; Start: 0x001E6098  End: 0x001E61BB  Size: 291 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E6098:
  0x001E6098  55                      push     ebp                            
  0x001E6099  8bec                    mov      ebp, esp                       
  0x001E609B  83ec0c                  sub      esp, 0xc                       
  0x001E609E  8a4102                  mov      al, byte ptr [ecx + 2]         
  0x001E60A1  8a5134                  mov      dl, byte ptr [ecx + 0x34]      
  0x001E60A4  02d0                    add      dl, al                         
  0x001E60A6  025166                  add      dl, byte ptr [ecx + 0x66]      
  0x001E60A9  53                      push     ebx                            
  0x001E60AA  c0e202                  shl      dl, 2                          
  0x001E60AD  80c213                  add      dl, 0x13                       
  0x001E60B0  56                      push     esi                            
  0x001E60B1  33f6                    xor      esi, esi                       
  0x001E60B3  8891a0000000            mov      byte ptr [ecx + 0xa0], dl      
  0x001E60B9  3a81a1000000            cmp      al, byte ptr [ecx + 0xa1]      
  0x001E60BF  57                      push     edi                            
  0x001E60C0  8975fc                  mov      dword ptr [ebp - 4], esi       
  0x001E60C3  8975f8                  mov      dword ptr [ebp - 8], esi       
  0x001E60C6  7606                    jbe      0x1e60ce                       
  0x001E60C8  8881a1000000            mov      byte ptr [ecx + 0xa1], al      
                                        ; XREF: 0x001E60C6 (cond_jump)
  0x001E60CE  8a4166                  mov      al, byte ptr [ecx + 0x66]      
  0x001E60D1  3a81a1000000            cmp      al, byte ptr [ecx + 0xa1]      
  0x001E60D7  7606                    jbe      0x1e60df                       
  0x001E60D9  8881a1000000            mov      byte ptr [ecx + 0xa1], al      
                                        ; XREF: 0x001E60D7 (cond_jump)
  0x001E60DF  8a4134                  mov      al, byte ptr [ecx + 0x34]      
  0x001E60E2  3a81a1000000            cmp      al, byte ptr [ecx + 0xa1]      
  0x001E60E8  7606                    jbe      0x1e60f0                       
  0x001E60EA  8881a1000000            mov      byte ptr [ecx + 0xa1], al      
                                        ; XREF: 0x001E60E8 (cond_jump)
  0x001E60F0  8a81a1000000            mov      al, byte ptr [ecx + 0xa1]      
  0x001E60F6  0081a0000000            add      byte ptr [ecx + 0xa0], al      
  0x001E60FC  8d4137                  lea      eax, [ecx + 0x37]              
  0x001E60FF  c745f404000000          mov      dword ptr [ebp - 0xc], 4       
                                        ; XREF: 0x001E6172 (cond_jump)
  0x001E6106  0fb67832                movzx    edi, byte ptr [eax + 0x32]     
  0x001E610A  0fb650ce                movzx    edx, byte ptr [eax - 0x32]     
  0x001E610E  03d7                    add      edx, edi                       
  0x001E6110  0fb638                  movzx    edi, byte ptr [eax]            
  0x001E6113  03fe                    add      edi, esi                       
  0x001E6115  8d3417                  lea      esi, [edi + edx]               
  0x001E6118  0fb67830                movzx    edi, byte ptr [eax + 0x30]     
  0x001E611C  0fb650cc                movzx    edx, byte ptr [eax - 0x34]     
  0x001E6120  03d7                    add      edx, edi                       
  0x001E6122  0fb678fe                movzx    edi, byte ptr [eax - 2]        
  0x001E6126  037dfc                  add      edi, dword ptr [ebp - 4]       
  0x001E6129  83c00a                  add      eax, 0xa                       
  0x001E612C  03fa                    add      edi, edx                       
  0x001E612E  0fb650c3                movzx    edx, byte ptr [eax - 0x3d]     
  0x001E6132  897dfc                  mov      dword ptr [ebp - 4], edi       
  0x001E6135  0fb67827                movzx    edi, byte ptr [eax + 0x27]     
  0x001E6139  03d7                    add      edx, edi                       
  0x001E613B  0fb678f5                movzx    edi, byte ptr [eax - 0xb]      
  0x001E613F  037df8                  add      edi, dword ptr [ebp - 8]       
  0x001E6142  03fa                    add      edi, edx                       
  0x001E6144  0fb650c7                movzx    edx, byte ptr [eax - 0x39]     
  0x001E6148  0191a8000000            add      dword ptr [ecx + 0xa8], edx    
  0x001E614E  0fb6582b                movzx    ebx, byte ptr [eax + 0x2b]     
  0x001E6152  8b91a8000000            mov      edx, dword ptr [ecx + 0xa8]    
  0x001E6158  03d3                    add      edx, ebx                       
  0x001E615A  8991a8000000            mov      dword ptr [ecx + 0xa8], edx    
  0x001E6160  0fb658f9                movzx    ebx, byte ptr [eax - 7]        
  0x001E6164  03da                    add      ebx, edx                       
  0x001E6166  ff4df4                  dec      dword ptr [ebp - 0xc]          
  0x001E6169  897df8                  mov      dword ptr [ebp - 8], edi       
  0x001E616C  8999a8000000            mov      dword ptr [ecx + 0xa8], ebx    
  0x001E6172  7592                    jne      0x1e6106                       
  0x001E6174  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E6177  83c605                  add      esi, 5                         
  0x001E617A  83c006                  add      eax, 6                         
  0x001E617D  80b9b00000000d          cmp      byte ptr [ecx + 0xb0], 0xd     
  0x001E6184  7307                    jae      0x1e618d                       
  0x001E6186  c681b00000000d          mov      byte ptr [ecx + 0xb0], 0xd     
                                        ; XREF: 0x001E6184 (cond_jump)
  0x001E618D  0fb691b1000000          movzx    edx, byte ptr [ecx + 0xb1]     
  0x001E6194  03c7                    add      eax, edi                       
  0x001E6196  8d3c70                  lea      edi, [eax + esi*2]             
  0x001E6199  8bde                    mov      ebx, esi                       
  0x001E619B  03df                    add      ebx, edi                       
  0x001E619D  0fb6b9b0000000          movzx    edi, byte ptr [ecx + 0xb0]     
  0x001E61A4  03da                    add      ebx, edx                       
  0x001E61A6  03fb                    add      edi, ebx                       
  0x001E61A8  89b9ac000000            mov      dword ptr [ecx + 0xac], edi    
  0x001E61AE  5f                      pop      edi                            
  0x001E61AF  03c6                    add      eax, esi                       
  0x001E61B1  5e                      pop      esi                            
  0x001E61B2  8981a4000000            mov      dword ptr [ecx + 0xa4], eax    
  0x001E61B8  5b                      pop      ebx                            
  0x001E61B9  c9                      leave                                   
  0x001E61BA  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E61BB
; Start: 0x001E61BB  End: 0x001E6202  Size: 71 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_00021AF0
; ============================================================
sub_001E61BB:
  0x001E61BB  55                      push     ebp                            
  0x001E61BC  8bec                    mov      ebp, esp                       
  0x001E61BE  8a4508                  mov      al, byte ptr [ebp + 8]         
  0x001E61C1  53                      push     ebx                            
  0x001E61C2  56                      push     esi                            
  0x001E61C3  8bf1                    mov      esi, ecx                       
  0x001E61C5  57                      push     edi                            
  0x001E61C6  0fb6f8                  movzx    edi, al                        
  0x001E61C9  88467a                  mov      byte ptr [esi + 0x7a], al      
  0x001E61CC  33db                    xor      ebx, ebx                       
  0x001E61CE  8bc7                    mov      eax, edi                       
  0x001E61D0  c1e005                  shl      eax, 5                         
  0x001E61D3  50                      push     eax                            
  0x001E61D4  881e                    mov      byte ptr [esi], bl             
  0x001E61D6  885e79                  mov      byte ptr [esi + 0x79], bl      
  0x001E61D9  895e7c                  mov      dword ptr [esi + 0x7c], ebx    
  0x001E61DC  899e80000000            mov      dword ptr [esi + 0x80], ebx    
  0x001E61E2  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E61E8  3bc3                    cmp      eax, ebx                       
  0x001E61EA  894508                  mov      dword ptr [ebp + 8], eax       
  0x001E61ED  7413                    je       0x1e6202                       
  0x001E61EF  689a8b1e00              push     0x1e8b9a                       
  0x001E61F4  57                      push     edi                            
  0x001E61F5  6a20                    push     0x20                           
  0x001E61F7  50                      push     eax                            
  0x001E61F8  e8f3b8e3ff              call     0x21af0                        ; -> sub_00021AF0
  0x001E61FD  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E6200  eb02                    jmp      0x1e6204                       
; end of function
                                        ; XREF: 0x001E61ED (cond_jump)
  0x001E6202  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E6200 (jump)
  0x001E6204  0fb64e7a                movzx    ecx, byte ptr [esi + 0x7a]     
  0x001E6208  8986e0000000            mov      dword ptr [esi + 0xe0], eax    
  0x001E620E  8a450c                  mov      al, byte ptr [ebp + 0xc]       
  0x001E6211  88467b                  mov      byte ptr [esi + 0x7b], al      
  0x001E6214  32c0                    xor      al, al                         
  0x001E6216  49                      dec      ecx                            
  0x001E6217  85c9                    test     ecx, ecx                       
  0x001E6219  7e1d                    jle      0x1e6238                       
  0x001E621B  33c9                    xor      ecx, ecx                       
                                        ; XREF: 0x001E6236 (cond_jump)
  0x001E621D  8b96e0000000            mov      edx, dword ptr [esi + 0xe0]    
  0x001E6223  fec0                    inc      al                             
  0x001E6225  c1e105                  shl      ecx, 5                         
  0x001E6228  88441101                mov      byte ptr [ecx + edx + 1], al   
  0x001E622C  0fb6567a                movzx    edx, byte ptr [esi + 0x7a]     
  0x001E6230  0fbec8                  movsx    ecx, al                        
  0x001E6233  4a                      dec      edx                            
  0x001E6234  3bca                    cmp      ecx, edx                       
  0x001E6236  7ce5                    jl       0x1e621d                       
                                        ; XREF: 0x001E6219 (cond_jump)
  0x001E6238  53                      push     ebx                            
  0x001E6239  68a7981e00              push     0x1e98a7                       
  0x001E623E  8d4634                  lea      eax, [esi + 0x34]              
  0x001E6241  50                      push     eax                            
  0x001E6242  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001E6248  53                      push     ebx                            
  0x001E6249  83c650                  add      esi, 0x50                      
  0x001E624C  56                      push     esi                            
  0x001E624D  ff15e8d11e00            call     dword ptr [0x1ed1e8]           ; -> xbox_KeInitializeTimerEx
  0x001E6253  5f                      pop      edi                            
  0x001E6254  5e                      pop      esi                            
  0x001E6255  5b                      pop      ebx                            
  0x001E6256  5d                      pop      ebp                            
  0x001E6257  c20800                  ret      8                              

; ============================================================
; Function: sub_001E625A
; Start: 0x001E625A  End: 0x001E6266  Size: 12 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E64A3
; ============================================================
sub_001E625A:
  0x001E625A  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E625E  e840020000              call     0x1e64a3                       ; -> sub_001E64A3
  0x001E6263  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E6266
; Start: 0x001E6266  End: 0x001E62A8  Size: 66 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E5DDA
; ============================================================
sub_001E6266:
  0x001E6266  55                      push     ebp                            
  0x001E6267  8bec                    mov      ebp, esp                       
  0x001E6269  83ec28                  sub      esp, 0x28                      
  0x001E626C  a12cd21e00              mov      eax, dword ptr [0x1ed22c]      
  0x001E6271  807805a1                cmp      byte ptr [eax + 5], 0xa1       
  0x001E6275  742f                    je       0x1e62a6                       
  0x001E6277  8d45fc                  lea      eax, [ebp - 4]                 
  0x001E627A  50                      push     eax                            
  0x001E627B  6a01                    push     1                              
  0x001E627D  c645e803                mov      byte ptr [ebp - 0x18], 3       
  0x001E6281  c745f000100000          mov      dword ptr [ebp - 0x10], 0x1000 
  0x001E6288  c745ec0000d0fe          mov      dword ptr [ebp - 0x14], 0xfed00000 
  0x001E628F  ff1540d21e00            call     dword ptr [0x1ed240]           ; -> xbox_HalGetInterruptVector
  0x001E6295  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E6298  68d0040000              push     0x4d0                          
  0x001E629D  8d45d8                  lea      eax, [ebp - 0x28]              
  0x001E62A0  50                      push     eax                            
  0x001E62A1  e834fbffff              call     0x1e5dda                       ; -> sub_001E5DDA
                                        ; XREF: 0x001E6275 (cond_jump)
  0x001E62A6  c9                      leave                                   
  0x001E62A7  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E62A8
; Start: 0x001E62A8  End: 0x001E63D2  Size: 298 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E63F3, sub_001E6668, sub_001E66C9, sub_001E66D4
; Called by: sub_001E5DDA
; ============================================================
sub_001E62A8:
  0x001E62A8  55                      push     ebp                            
  0x001E62A9  8bec                    mov      ebp, esp                       
  0x001E62AB  fe4d0c                  dec      byte ptr [ebp + 0xc]           
  0x001E62AE  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E62B1  53                      push     ebx                            
  0x001E62B2  0fb65d0c                movzx    ebx, byte ptr [ebp + 0xc]      
  0x001E62B6  56                      push     esi                            
  0x001E62B7  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E62BA  899e5c040000            mov      dword ptr [esi + 0x45c], ebx   
  0x001E62C0  8b4818                  mov      ecx, dword ptr [eax + 0x18]    
  0x001E62C3  57                      push     edi                            
  0x001E62C4  894e04                  mov      dword ptr [esi + 4], ecx       
  0x001E62C7  8b4014                  mov      eax, dword ptr [eax + 0x14]    
  0x001E62CA  56                      push     esi                            
  0x001E62CB  8906                    mov      dword ptr [esi], eax           
  0x001E62CD  e8f7030000              call     0x1e66c9                       ; -> sub_001E66C9
  0x001E62D2  56                      push     esi                            
  0x001E62D3  e8fc030000              call     0x1e66d4                       ; -> sub_001E66D4
  0x001E62D8  8b3e                    mov      edi, dword ptr [esi]           
  0x001E62DA  56                      push     esi                            
  0x001E62DB  684ac31e00              push     0x1ec34a                       
  0x001E62E0  8d8640040000            lea      eax, [esi + 0x440]             
  0x001E62E6  c7474800120000          mov      dword ptr [edi + 0x48], 0x1200 
  0x001E62ED  c7474c00000000          mov      dword ptr [edi + 0x4c], 0      
  0x001E62F4  c7475000000080          mov      dword ptr [edi + 0x50], 0x80000000 
  0x001E62FB  50                      push     eax                            
  0x001E62FC  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001E6302  8b049de44ebf00          mov      eax, dword ptr [ebx*4 + 0xbf4ee4] 
  0x001E6309  894608                  mov      dword ptr [esi + 8], eax       
  0x001E630C  8b4708                  mov      eax, dword ptr [edi + 8]       
  0x001E630F  894508                  mov      dword ptr [ebp + 8], eax       
  0x001E6312  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E6318  88450f                  mov      byte ptr [ebp + 0xf], al       
  0x001E631B  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E631E  83c801                  or       eax, 1                         
  0x001E6321  894708                  mov      dword ptr [edi + 8], eax       
  0x001E6324  6a0a                    push     0xa                            
  0x001E6326  ff1554d21e00            call     dword ptr [0x1ed254]           ; -> xbox_KeStallExecutionProcessor
  0x001E632C  8bce                    mov      ecx, esi                       
  0x001E632E  e835030000              call     0x1e6668                       ; -> sub_001E6668
  0x001E6333  c74704be000000          mov      dword ptr [edi + 4], 0xbe      
  0x001E633A  8b4734                  mov      eax, dword ptr [edi + 0x34]    
  0x001E633D  25dfee78a7              and      eax, 0xa778eedf                
  0x001E6342  0ddf2e7827              or       eax, 0x27782edf                
  0x001E6347  8bc8                    mov      ecx, eax                       
  0x001E6349  f7d1                    not      ecx                            
  0x001E634B  33c8                    xor      ecx, eax                       
  0x001E634D  81e1ffffff7f            and      ecx, 0x7fffffff                
  0x001E6353  f7d0                    not      eax                            
  0x001E6355  33c8                    xor      ecx, eax                       
  0x001E6357  894f34                  mov      dword ptr [edi + 0x34], ecx    
  0x001E635A  8a4d0f                  mov      cl, byte ptr [ebp + 0xf]       
  0x001E635D  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6363  6bdb70                  imul     ebx, ebx, 0x70                 
  0x001E6366  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E6369  33c9                    xor      ecx, ecx                       
  0x001E636B  8a4824                  mov      cl, byte ptr [eax + 0x24]      
  0x001E636E  6a01                    push     1                              
  0x001E6370  6a00                    push     0                              
  0x001E6372  8d9b204fbf00            lea      ebx, [ebx + 0xbf4f20]          
  0x001E6378  51                      push     ecx                            
  0x001E6379  ff701c                  push     dword ptr [eax + 0x1c]         
  0x001E637C  56                      push     esi                            
  0x001E637D  6889bd1e00              push     0x1ebd89                       
  0x001E6382  53                      push     ebx                            
  0x001E6383  ff1550d21e00            call     dword ptr [0x1ed250]           ; -> xbox_KeInitializeInterrupt
  0x001E6389  53                      push     ebx                            
  0x001E638A  ff154cd21e00            call     dword ptr [0x1ed24c]           ; -> xbox_KeBugCheckEx
  0x001E6390  33d2                    xor      edx, edx                       
  0x001E6392  42                      inc      edx                            
  0x001E6393  8d8ec0040000            lea      ecx, [esi + 0x4c0]             
  0x001E6399  8d86c8040000            lea      eax, [esi + 0x4c8]             
  0x001E639F  52                      push     edx                            
  0x001E63A0  51                      push     ecx                            
  0x001E63A1  c7019ea81e00            mov      dword ptr [ecx], 0x1ea89e      
  0x001E63A7  8996c4040000            mov      dword ptr [esi + 0x4c4], edx   
  0x001E63AD  8986cc040000            mov      dword ptr [esi + 0x4cc], eax   
  0x001E63B3  8900                    mov      dword ptr [eax], eax           
  0x001E63B5  ff1548d21e00            call     dword ptr [0x1ed248]           ; -> xbox_HalReadWritePCISpace
  0x001E63BB  8bce                    mov      ecx, esi                       
  0x001E63BD  c7471033000080          mov      dword ptr [edi + 0x10], 0x80000033 
  0x001E63C4  e82a000000              call     0x1e63f3                       ; -> sub_001E63F3
  0x001E63C9  33c0                    xor      eax, eax                       
  0x001E63CB  5f                      pop      edi                            
  0x001E63CC  5e                      pop      esi                            
  0x001E63CD  5b                      pop      ebx                            
  0x001E63CE  5d                      pop      ebp                            
  0x001E63CF  c20c00                  ret      0xc                            
; end of function
  0x001E63D2  6683256a2ab20000        and      word ptr [0xb22a6a], 0         
  0x001E63DA  6a00                    push     0                              
  0x001E63DC  68202ab200              push     0xb22a20                       
  0x001E63E1  66c705682ab2000600      mov      word ptr [0xb22a68], 6         
  0x001E63EA  ff15e8d11e00            call     dword ptr [0x1ed1e8]           ; -> xbox_KeInitializeTimerEx
  0x001E63F0  c20400                  ret      4                              

; ============================================================
; Function: sub_001E63F3
; Start: 0x001E63F3  End: 0x001E64A3  Size: 176 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB721
; Called by: sub_001E62A8
; ============================================================
sub_001E63F3:
  0x001E63F3  55                      push     ebp                            
  0x001E63F4  8bec                    mov      ebp, esp                       
  0x001E63F6  51                      push     ecx                            
  0x001E63F7  51                      push     ecx                            
  0x001E63F8  53                      push     ebx                            
  0x001E63F9  56                      push     esi                            
  0x001E63FA  57                      push     edi                            
  0x001E63FB  8bf1                    mov      esi, ecx                       
  0x001E63FD  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E63FF  6a00                    push     0                              
  0x001E6401  8d8678040000            lea      eax, [esi + 0x478]             
  0x001E6407  50                      push     eax                            
  0x001E6408  ff15e8d11e00            call     dword ptr [0x1ed1e8]           ; -> xbox_KeInitializeTimerEx
  0x001E640E  56                      push     esi                            
  0x001E640F  681ab81e00              push     0x1eb81a                       
  0x001E6414  8d86a0040000            lea      eax, [esi + 0x4a0]             
  0x001E641A  50                      push     eax                            
  0x001E641B  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001E6421  c6866004000004          mov      byte ptr [esi + 0x460], 4      
  0x001E6428  8b4350                  mov      eax, dword ptr [ebx + 0x50]    
  0x001E642B  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E642E  668365f800              and      word ptr [ebp - 8], 0          
  0x001E6433  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E6436  33c9                    xor      ecx, ecx                       
  0x001E6438  894350                  mov      dword ptr [ebx + 0x50], eax    
  0x001E643B  33c0                    xor      eax, eax                       
  0x001E643D  33d2                    xor      edx, edx                       
  0x001E643F  8d7dfc                  lea      edi, [ebp - 4]                 
  0x001E6442  41                      inc      ecx                            
  0x001E6443  389660040000            cmp      byte ptr [esi + 0x460], dl     
  0x001E6449  ab                      stosd    dword ptr es:[edi], eax        
  0x001E644A  7631                    jbe      0x1e647d                       
  0x001E644C  8d4354                  lea      eax, [ebx + 0x54]              
                                        ; XREF: 0x001E647B (cond_jump)
  0x001E644F  8b38                    mov      edi, dword ptr [eax]           
  0x001E6451  897df8                  mov      dword ptr [ebp - 8], edi       
  0x001E6454  f645f801                test     byte ptr [ebp - 8], 1          
  0x001E6458  7408                    je       0x1e6462                       
  0x001E645A  66094dfe                or       word ptr [ebp - 2], cx         
  0x001E645E  66094dfc                or       word ptr [ebp - 4], cx         
                                        ; XREF: 0x001E6458 (cond_jump)
  0x001E6462  668365f800              and      word ptr [ebp - 8], 0          
  0x001E6467  8b7df8                  mov      edi, dword ptr [ebp - 8]       
  0x001E646A  8938                    mov      dword ptr [eax], edi           
  0x001E646C  0fb6be60040000          movzx    edi, byte ptr [esi + 0x460]    
  0x001E6473  42                      inc      edx                            
  0x001E6474  83c004                  add      eax, 4                         
  0x001E6477  d1e1                    shl      ecx, 1                         
  0x001E6479  3bd7                    cmp      edx, edi                       
  0x001E647B  72d2                    jb       0x1e644f                       
                                        ; XREF: 0x001E644A (cond_jump)
  0x001E647D  c7431040000000          mov      dword ptr [ebx + 0x10], 0x40   
  0x001E6484  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E648A  8d55fc                  lea      edx, [ebp - 4]                 
  0x001E648D  8bce                    mov      ecx, esi                       
  0x001E648F  8ad8                    mov      bl, al                         
  0x001E6491  e88b520000              call     0x1eb721                       ; -> sub_001EB721
  0x001E6496  8acb                    mov      cl, bl                         
  0x001E6498  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E649E  5f                      pop      edi                            
  0x001E649F  5e                      pop      esi                            
  0x001E64A0  5b                      pop      ebx                            
  0x001E64A1  c9                      leave                                   
  0x001E64A2  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E64A3
; Start: 0x001E64A3  End: 0x001E6668  Size: 453 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB904
; Called by: sub_001E625A
; ============================================================
sub_001E64A3:
  0x001E64A3  55                      push     ebp                            
  0x001E64A4  8bec                    mov      ebp, esp                       
  0x001E64A6  83ec0c                  sub      esp, 0xc                       
  0x001E64A9  53                      push     ebx                            
  0x001E64AA  8bd9                    mov      ebx, ecx                       
  0x001E64AC  0fb64b0e                movzx    ecx, byte ptr [ebx + 0xe]      
  0x001E64B0  8b4304                  mov      eax, dword ptr [ebx + 4]       
  0x001E64B3  c1e106                  shl      ecx, 6                         
  0x001E64B6  83c130                  add      ecx, 0x30                      
  0x001E64B9  3903                    cmp      dword ptr [ebx], eax           
  0x001E64BB  56                      push     esi                            
  0x001E64BC  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001E64BF  7302                    jae      0x1e64c3                       
  0x001E64C1  8903                    mov      dword ptr [ebx], eax           
                                        ; XREF: 0x001E64BF (cond_jump)
  0x001E64C3  0fafc1                  imul     eax, ecx                       
  0x001E64C6  8b4b08                  mov      ecx, dword ptr [ebx + 8]       
  0x001E64C9  83c108                  add      ecx, 8                         
  0x001E64CC  c1e105                  shl      ecx, 5                         
  0x001E64CF  03c1                    add      eax, ecx                       
  0x001E64D1  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E64D3  8d0c49                  lea      ecx, [ecx + ecx*2]             
  0x001E64D6  c1e104                  shl      ecx, 4                         
  0x001E64D9  03c1                    add      eax, ecx                       
  0x001E64DB  8bc8                    mov      ecx, eax                       
  0x001E64DD  8d81ff0f0000            lea      eax, [ecx + 0xfff]             
  0x001E64E3  c1e80c                  shr      eax, 0xc                       
  0x001E64E6  8bd0                    mov      edx, eax                       
  0x001E64E8  c1e204                  shl      edx, 4                         
  0x001E64EB  03d1                    add      edx, ecx                       
  0x001E64ED  8bc8                    mov      ecx, eax                       
  0x001E64EF  c1e10c                  shl      ecx, 0xc                       
  0x001E64F2  3bca                    cmp      ecx, edx                       
  0x001E64F4  7301                    jae      0x1e64f7                       
  0x001E64F6  40                      inc      eax                            
                                        ; XREF: 0x001E64F4 (cond_jump)
  0x001E64F7  57                      push     edi                            
  0x001E64F8  c1e00c                  shl      eax, 0xc                       
  0x001E64FB  8bf8                    mov      edi, eax                       
  0x001E64FD  57                      push     edi                            
  0x001E64FE  897dfc                  mov      dword ptr [ebp - 4], edi       
  0x001E6501  ff152cd11e00            call     dword ptr [0x1ed12c]           ; -> xbox_MmAllocateContiguousMemory
  0x001E6507  6a00                    push     0                              
  0x001E6509  8bf0                    mov      esi, eax                       
  0x001E650B  57                      push     edi                            
  0x001E650C  56                      push     esi                            
  0x001E650D  ff155cd21e00            call     dword ptr [0x1ed25c]           ; -> xbox_MmLockUnlockBufferPages
  0x001E6513  56                      push     esi                            
  0x001E6514  ff1558d21e00            call     dword ptr [0x1ed258]           ; -> xbox_MmGetPhysicalAddress
  0x001E651A  8bce                    mov      ecx, esi                       
  0x001E651C  2bc8                    sub      ecx, eax                       
  0x001E651E  890de04ebf00            mov      dword ptr [0xbf4ee0], ecx      
  0x001E6524  8bcf                    mov      ecx, edi                       
  0x001E6526  8bd1                    mov      edx, ecx                       
  0x001E6528  c1e902                  shr      ecx, 2                         
  0x001E652B  33c0                    xor      eax, eax                       
  0x001E652D  8bfe                    mov      edi, esi                       
  0x001E652F  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E6531  8bca                    mov      ecx, edx                       
  0x001E6533  83e103                  and      ecx, 3                         
  0x001E6536  f3aa                    rep stosb byte ptr es:[edi], al          
  0x001E6538  8bc2                    mov      eax, edx                       
  0x001E653A  33d2                    xor      edx, edx                       
  0x001E653C  8935e44ebf00            mov      dword ptr [0xbf4ee4], esi      
  0x001E6542  8915e84ebf00            mov      dword ptr [0xbf4ee8], edx      
  0x001E6548  0fb67b0e                movzx    edi, byte ptr [ebx + 0xe]      
  0x001E654C  8d0c06                  lea      ecx, [esi + eax]               
  0x001E654F  81c600010000            add      esi, 0x100                     
  0x001E6555  33c0                    xor      eax, eax                       
  0x001E6557  893d0c4fbf00            mov      dword ptr [0xbf4f0c], edi      
  0x001E655D  8915084fbf00            mov      dword ptr [0xbf4f08], edx      
  0x001E6563  395304                  cmp      dword ptr [ebx + 4], edx       
  0x001E6566  894df4                  mov      dword ptr [ebp - 0xc], ecx     
  0x001E6569  763e                    jbe      0x1e65a9                       
                                        ; XREF: 0x001E6592 (cond_jump)
  0x001E656B  8b3d084fbf00            mov      edi, dword ptr [0xbf4f08]      
  0x001E6571  893e                    mov      dword ptr [esi], edi           
  0x001E6573  8b3de84ebf00            mov      edi, dword ptr [0xbf4ee8]      
  0x001E6579  8935084fbf00            mov      dword ptr [0xbf4f08], esi      
  0x001E657F  0375f8                  add      esi, dword ptr [ebp - 8]       
  0x001E6582  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001E6585  8935e84ebf00            mov      dword ptr [0xbf4ee8], esi      
  0x001E658B  83c630                  add      esi, 0x30                      
  0x001E658E  40                      inc      eax                            
  0x001E658F  3b4304                  cmp      eax, dword ptr [ebx + 4]       
  0x001E6592  72d7                    jb       0x1e656b                       
  0x001E6594  eb13                    jmp      0x1e65a9                       
                                        ; XREF: 0x001E65AB (cond_jump)
  0x001E6596  8b3de84ebf00            mov      edi, dword ptr [0xbf4ee8]      
  0x001E659C  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001E659F  8935e84ebf00            mov      dword ptr [0xbf4ee8], esi      
  0x001E65A5  83c630                  add      esi, 0x30                      
  0x001E65A8  40                      inc      eax                            
                                        ; XREF: 0x001E6569 (cond_jump), 0x001E6594 (jump)
  0x001E65A9  3b03                    cmp      eax, dword ptr [ebx]           
  0x001E65AB  72e9                    jb       0x1e6596                       
  0x001E65AD  8d7e20                  lea      edi, [esi + 0x20]              
  0x001E65B0  3bf9                    cmp      edi, ecx                       
  0x001E65B2  8955fc                  mov      dword ptr [ebp - 4], edx       
  0x001E65B5  8915ec4ebf00            mov      dword ptr [0xbf4eec], edx      
  0x001E65BB  8935f04ebf00            mov      dword ptr [0xbf4ef0], esi      
  0x001E65C1  7724                    ja       0x1e65e7                       
                                        ; XREF: 0x001E65E3 (cond_jump)
  0x001E65C3  8bc6                    mov      eax, esi                       
  0x001E65C5  2b05e04ebf00            sub      eax, dword ptr [0xbf4ee0]      
  0x001E65CB  56                      push     esi                            
  0x001E65CC  8975f8                  mov      dword ptr [ebp - 8], esi       
  0x001E65CF  8947f0                  mov      dword ptr [edi - 0x10], eax    
  0x001E65D2  e82d530000              call     0x1eb904                       ; -> sub_001EB904
  0x001E65D7  83c620                  add      esi, 0x20                      
  0x001E65DA  83c720                  add      edi, 0x20                      
  0x001E65DD  ff45fc                  inc      dword ptr [ebp - 4]            
  0x001E65E0  3b7df4                  cmp      edi, dword ptr [ebp - 0xc]     
  0x001E65E3  76de                    jbe      0x1e65c3                       
  0x001E65E5  33d2                    xor      edx, edx                       
                                        ; XREF: 0x001E65C1 (cond_jump)
  0x001E65E7  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E65EA  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001E65ED  a3f44ebf00              mov      dword ptr [0xbf4ef4], eax      
  0x001E65F2  8915f84ebf00            mov      dword ptr [0xbf4ef8], edx      
  0x001E65F8  c705fc4ebf00e8030000    mov      dword ptr [0xbf4efc], 0x3e8    
  0x001E6602  660fb6430c              movzx    ax, byte ptr [ebx + 0xc]       
  0x001E6607  66a3004fbf00            mov      word ptr [0xbf4f00], ax        
  0x001E660D  660fb6430d              movzx    ax, byte ptr [ebx + 0xd]       
  0x001E6612  66a3044fbf00            mov      word ptr [0xbf4f04], ax        
  0x001E6618  3b4b08                  cmp      ecx, dword ptr [ebx + 8]       
  0x001E661B  5f                      pop      edi                            
  0x001E661C  7632                    jbe      0x1e6650                       
  0x001E661E  2a4b08                  sub      cl, byte ptr [ebx + 8]         
  0x001E6621  663bc2                  cmp      ax, dx                         
  0x001E6624  7413                    je       0x1e6639                       
  0x001E6626  8ad1                    mov      dl, cl                         
  0x001E6628  d0ea                    shr      dl, 1                          
  0x001E662A  660fb6f2                movzx    si, dl                         
  0x001E662E  6603c6                  add      ax, si                         
  0x001E6631  66a3044fbf00            mov      word ptr [0xbf4f04], ax        
  0x001E6637  2aca                    sub      cl, dl                         
                                        ; XREF: 0x001E6624 (cond_jump)
  0x001E6639  660fb6c1                movzx    ax, cl                         
  0x001E663D  660105004fbf00          add      word ptr [0xbf4f00], ax        
  0x001E6644  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E6647  894308                  mov      dword ptr [ebx + 8], eax       
  0x001E664A  66a1044fbf00            mov      ax, word ptr [0xbf4f04]        
                                        ; XREF: 0x001E661C (cond_jump)
  0x001E6650  668b0d004fbf00          mov      cx, word ptr [0xbf4f00]        
  0x001E6657  5e                      pop      esi                            
  0x001E6658  66890d024fbf00          mov      word ptr [0xbf4f02], cx        
  0x001E665F  66a3064fbf00            mov      word ptr [0xbf4f06], ax        
  0x001E6665  5b                      pop      ebx                            
  0x001E6666  c9                      leave                                   
  0x001E6667  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E6668
; Start: 0x001E6668  End: 0x001E66C9  Size: 97 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F8E
; Called by: sub_001E62A8
; ============================================================
sub_001E6668:
  0x001E6668  56                      push     esi                            
  0x001E6669  8bf1                    mov      esi, ecx                       
  0x001E666B  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001E666E  2b05e04ebf00            sub      eax, dword ptr [0xbf4ee0]      
  0x001E6674  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6676  894118                  mov      dword ptr [ecx + 0x18], eax    
  0x001E6679  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E667B  33c0                    xor      eax, eax                       
  0x001E667D  89411c                  mov      dword ptr [ecx + 0x1c], eax    
  0x001E6680  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6682  894120                  mov      dword ptr [ecx + 0x20], eax    
  0x001E6685  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6687  894124                  mov      dword ptr [ecx + 0x24], eax    
  0x001E668A  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E668C  894128                  mov      dword ptr [ecx + 0x28], eax    
  0x001E668F  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6691  89412c                  mov      dword ptr [ecx + 0x2c], eax    
  0x001E6694  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6696  894130                  mov      dword ptr [ecx + 0x30], eax    
  0x001E6699  6a01                    push     1                              
  0x001E669B  66c786160400007827      mov      word ptr [esi + 0x416], 0x2778 
  0x001E66A4  8b06                    mov      eax, dword ptr [esi]           
  0x001E66A6  6a03                    push     3                              
  0x001E66A8  c740402f2a0000          mov      dword ptr [eax + 0x40], 0x2a2f 
  0x001E66AF  6a08                    push     8                              
  0x001E66B1  66c786140400007423      mov      word ptr [esi + 0x414], 0x2374 
  0x001E66BA  e8cf180000              call     0x1e7f8e                       ; -> sub_001E7F8E
  0x001E66BF  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E66C1  0fb7c0                  movzx    eax, ax                        
  0x001E66C4  894144                  mov      dword ptr [ecx + 0x44], eax    
  0x001E66C7  5e                      pop      esi                            
  0x001E66C8  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E66C9
; Start: 0x001E66C9  End: 0x001E66D4  Size: 11 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E62A8
; ============================================================
sub_001E66C9:
  0x001E66C9  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E66CD  8b00                    mov      eax, dword ptr [eax]           
  0x001E66CF  8b00                    mov      eax, dword ptr [eax]           
  0x001E66D1  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E66D4
; Start: 0x001E66D4  End: 0x001E66FD  Size: 41 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001E62A8
; ============================================================
sub_001E66D4:
  0x001E66D4  55                      push     ebp                            
  0x001E66D5  8bec                    mov      ebp, esp                       
  0x001E66D7  51                      push     ecx                            
  0x001E66D8  51                      push     ecx                            
  0x001E66D9  8b5508                  mov      edx, dword ptr [ebp + 8]       
  0x001E66DC  8b02                    mov      eax, dword ptr [edx]           
  0x001E66DE  8b4804                  mov      ecx, dword ptr [eax + 4]       
  0x001E66E1  56                      push     esi                            
  0x001E66E2  be00010000              mov      esi, 0x100                     
  0x001E66E7  85ce                    test     esi, ecx                       
  0x001E66E9  7412                    je       0x1e66fd                       
  0x001E66EB  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001E66EE  83c908                  or       ecx, 8                         
  0x001E66F1  894808                  mov      dword ptr [eax + 8], ecx       
  0x001E66F4  8b12                    mov      edx, dword ptr [edx]           
                                        ; XREF: 0x001E66F9 (cond_jump)
  0x001E66F6  857204                  test     dword ptr [edx + 4], esi       
  0x001E66F9  75fb                    jne      0x1e66f6                       
  0x001E66FB  eb34                    jmp      0x1e6731                       
; end of function
                                        ; XREF: 0x001E66E9 (cond_jump)
  0x001E66FD  8bd1                    mov      edx, ecx                       
  0x001E66FF  c1ea06                  shr      edx, 6                         
  0x001E6702  83e203                  and      edx, 3                         
  0x001E6705  742a                    je       0x1e6731                       
  0x001E6707  83fa02                  cmp      edx, 2                         
  0x001E670A  7425                    je       0x1e6731                       
  0x001E670C  81e17fffffff            and      ecx, 0xffffff7f                
  0x001E6712  83c940                  or       ecx, 0x40                      
  0x001E6715  894804                  mov      dword ptr [eax + 4], ecx       
  0x001E6718  834dfcff                or       dword ptr [ebp - 4], 0xffffffff 
  0x001E671C  8d45f8                  lea      eax, [ebp - 8]                 
  0x001E671F  50                      push     eax                            
  0x001E6720  6a00                    push     0                              
  0x001E6722  6a00                    push     0                              
  0x001E6724  c745f8c0f2fcff          mov      dword ptr [ebp - 8], 0xfffcf2c0 
  0x001E672B  ff15c8d11e00            call     dword ptr [0x1ed1c8]           ; -> xbox_KeCancelTimer
                                        ; XREF: 0x001E66FB (jump), 0x001E6705 (cond_jump), 0x001E670A (cond_jump)
  0x001E6731  5e                      pop      esi                            
  0x001E6732  c9                      leave                                   
  0x001E6733  c20400                  ret      4                              

; ============================================================
; Function: sub_001E6736
; Start: 0x001E6736  End: 0x001E6774  Size: 62 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E6736:
  0x001E6736  55                      push     ebp                            
  0x001E6737  8bec                    mov      ebp, esp                       
  0x001E6739  81eca0000000            sub      esp, 0xa0                      
  0x001E673F  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E6742  85c0                    test     eax, eax                       
  0x001E6744  7403                    je       0x1e6749                       
  0x001E6746  802000                  and      byte ptr [eax], 0              
                                        ; XREF: 0x001E6744 (cond_jump)
  0x001E6749  53                      push     ebx                            
  0x001E674A  8a5d08                  mov      bl, byte ptr [ebp + 8]         
  0x001E674D  80c323                  add      bl, 0x23                       
  0x001E6750  d0e3                    shl      bl, 1                          
  0x001E6752  025d0c                  add      bl, byte ptr [ebp + 0xc]       
  0x001E6755  56                      push     esi                            
  0x001E6756  57                      push     edi                            
  0x001E6757  0fbef3                  movsx    esi, bl                        
  0x001E675A  33ff                    xor      edi, edi                       
  0x001E675C  47                      inc      edi                            
  0x001E675D  8d4eba                  lea      ecx, [esi - 0x46]              
  0x001E6760  d3e7                    shl      edi, cl                        
  0x001E6762  853d14f8b100            test     dword ptr [0xb1f814], edi      
  0x001E6768  740a                    je       0x1e6774                       
  0x001E676A  6a55                    push     0x55                           
  0x001E676C  8818                    mov      byte ptr [eax], bl             
  0x001E676E  58                      pop      eax                            
  0x001E676F  e9ca000000              jmp      0x1e683e                       
; end of function
                                        ; XREF: 0x001E6768 (cond_jump)
  0x001E6774  668365f800              and      word ptr [ebp - 8], 0          
  0x001E6779  8d8560ffffff            lea      eax, [ebp - 0xa0]              
  0x001E677F  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E6782  8d45f8                  lea      eax, [ebp - 8]                 
  0x001E6785  50                      push     eax                            
  0x001E6786  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E6789  66c745fa3f00            mov      word ptr [ebp - 6], 0x3f       
  0x001E678F  ff7508                  push     dword ptr [ebp + 8]            
  0x001E6792  e8b7040000              call     0x1e6c4e                       ; -> sub_001E6C4E
  0x001E6797  85c0                    test     eax, eax                       
  0x001E6799  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E679C  0f8c93000000            jl       0x1e6835                       
  0x001E67A2  56                      push     esi                            
  0x001E67A3  8d45a0                  lea      eax, [ebp - 0x60]              
  0x001E67A6  68d0552100              push     0x2155d0                       
  0x001E67AB  50                      push     eax                            
  0x001E67AC  e82573faff              call     0x18dad6                       ; -> sub_0018DAD6
  0x001E67B1  83c40c                  add      esp, 0xc                       
  0x001E67B4  8d45a0                  lea      eax, [ebp - 0x60]              
  0x001E67B7  50                      push     eax                            
  0x001E67B8  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E67BB  50                      push     eax                            
  0x001E67BC  ff151cd11e00            call     dword ptr [0x1ed11c]           ; -> xbox_RtlInitAnsiString
  0x001E67C2  a118010100              mov      eax, dword ptr [0x10118]       
  0x001E67C7  ff7008                  push     dword ptr [eax + 8]            
  0x001E67CA  8d45e0                  lea      eax, [ebp - 0x20]              
  0x001E67CD  68c8552100              push     0x2155c8                       
  0x001E67D2  50                      push     eax                            
  0x001E67D3  e8fe72faff              call     0x18dad6                       ; -> sub_0018DAD6
  0x001E67D8  0fb745f8                movzx    eax, word ptr [ebp - 8]        
  0x001E67DC  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001E67DF  83c40c                  add      esp, 0xc                       
  0x001E67E2  c604085c                mov      byte ptr [eax + ecx], 0x5c     
  0x001E67E6  66ff45f8                inc      word ptr [ebp - 8]             
  0x001E67EA  a118010100              mov      eax, dword ptr [0x10118]       
  0x001E67EF  6a00                    push     0                              
  0x001E67F1  83c00c                  add      eax, 0xc                       
  0x001E67F4  50                      push     eax                            
  0x001E67F5  6a01                    push     1                              
  0x001E67F7  8d45e0                  lea      eax, [ebp - 0x20]              
  0x001E67FA  50                      push     eax                            
  0x001E67FB  8d45f8                  lea      eax, [ebp - 8]                 
  0x001E67FE  50                      push     eax                            
  0x001E67FF  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E6802  50                      push     eax                            
  0x001E6803  e86512f8ff              call     0x167a6d                       ; -> sub_00167A6D
  0x001E6808  85c0                    test     eax, eax                       
  0x001E680A  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E680D  7c11                    jl       0x1e6820                       
  0x001E680F  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E6812  85c0                    test     eax, eax                       
  0x001E6814  7402                    je       0x1e6818                       
  0x001E6816  8818                    mov      byte ptr [eax], bl             
                                        ; XREF: 0x001E6814 (cond_jump)
  0x001E6818  093d14f8b100            or       dword ptr [0xb1f814], edi      
  0x001E681E  eb15                    jmp      0x1e6835                       
                                        ; XREF: 0x001E680D (cond_jump)
  0x001E6820  8d45f8                  lea      eax, [ebp - 8]                 
  0x001E6823  50                      push     eax                            
  0x001E6824  ff15ccd11e00            call     dword ptr [0x1ed1cc]           ; -> xbox_KdDebuggerNotPresent
  0x001E682A  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E682D  ff7508                  push     dword ptr [ebp + 8]            
  0x001E6830  e8ac030000              call     0x1e6be1                       ; -> sub_001E6BE1
                                        ; XREF: 0x001E679C (cond_jump), 0x001E681E (jump)
  0x001E6835  ff75f4                  push     dword ptr [ebp - 0xc]          
  0x001E6838  ff1538d11e00            call     dword ptr [0x1ed138]           ; -> xbox_RtlNtStatusToDosError
                                        ; XREF: 0x001E676F (jump)
  0x001E683E  5f                      pop      edi                            
  0x001E683F  5e                      pop      esi                            
  0x001E6840  5b                      pop      ebx                            
  0x001E6841  c9                      leave                                   
  0x001E6842  c20c00                  ret      0xc                            

; ============================================================
; Function: sub_001E6845
; Start: 0x001E6845  End: 0x001E6872  Size: 45 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E6845:
  0x001E6845  55                      push     ebp                            
  0x001E6846  8bec                    mov      ebp, esp                       
  0x001E6848  83ec60                  sub      esp, 0x60                      
  0x001E684B  8a4508                  mov      al, byte ptr [ebp + 8]         
  0x001E684E  0423                    add      al, 0x23                       
  0x001E6850  56                      push     esi                            
  0x001E6851  d0e0                    shl      al, 1                          
  0x001E6853  02450c                  add      al, byte ptr [ebp + 0xc]       
  0x001E6856  57                      push     edi                            
  0x001E6857  0fbef8                  movsx    edi, al                        
  0x001E685A  33f6                    xor      esi, esi                       
  0x001E685C  46                      inc      esi                            
  0x001E685D  8d4fba                  lea      ecx, [edi - 0x46]              
  0x001E6860  d3e6                    shl      esi, cl                        
  0x001E6862  853514f8b100            test     dword ptr [0xb1f814], esi      
  0x001E6868  7508                    jne      0x1e6872                       
  0x001E686A  6a0f                    push     0xf                            
  0x001E686C  58                      pop      eax                            
  0x001E686D  e9b9000000              jmp      0x1e692b                       
; end of function
                                        ; XREF: 0x001E6868 (cond_jump)
  0x001E6872  380510f8b100            cmp      byte ptr [0xb1f810], al        
  0x001E6878  7507                    jne      0x1e6881                       
  0x001E687A  6a58                    push     0x58                           
  0x001E687C  e8a9d2f7ff              call     0x163b2a                       ; -> sub_00163B2A
                                        ; XREF: 0x001E6878 (cond_jump)
  0x001E6881  53                      push     ebx                            
  0x001E6882  57                      push     edi                            
  0x001E6883  8d45a0                  lea      eax, [ebp - 0x60]              
  0x001E6886  68d0552100              push     0x2155d0                       
  0x001E688B  50                      push     eax                            
  0x001E688C  e84572faff              call     0x18dad6                       ; -> sub_0018DAD6
  0x001E6891  83c40c                  add      esp, 0xc                       
  0x001E6894  8d45a0                  lea      eax, [ebp - 0x60]              
  0x001E6897  50                      push     eax                            
  0x001E6898  8d45f4                  lea      eax, [ebp - 0xc]               
  0x001E689B  50                      push     eax                            
  0x001E689C  ff151cd11e00            call     dword ptr [0x1ed11c]           ; -> xbox_RtlInitAnsiString
  0x001E68A2  6a20                    push     0x20                           
  0x001E68A4  6a01                    push     1                              
  0x001E68A6  33ff                    xor      edi, edi                       
  0x001E68A8  57                      push     edi                            
  0x001E68A9  6880000000              push     0x80                           
  0x001E68AE  8d45f4                  lea      eax, [ebp - 0xc]               
  0x001E68B1  8945e4                  mov      dword ptr [ebp - 0x1c], eax    
  0x001E68B4  57                      push     edi                            
  0x001E68B5  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E68B8  50                      push     eax                            
  0x001E68B9  8d45e0                  lea      eax, [ebp - 0x20]              
  0x001E68BC  50                      push     eax                            
  0x001E68BD  6800001000              push     0x100000                       
  0x001E68C2  8d45fc                  lea      eax, [ebp - 4]                 
  0x001E68C5  50                      push     eax                            
  0x001E68C6  897de0                  mov      dword ptr [ebp - 0x20], edi    
  0x001E68C9  c745e840000000          mov      dword ptr [ebp - 0x18], 0x40   
  0x001E68D0  ff1518d11e00            call     dword ptr [0x1ed118]           ; -> xbox_NtCreateFile
  0x001E68D6  8bd8                    mov      ebx, eax                       
  0x001E68D8  3bdf                    cmp      ebx, edi                       
  0x001E68DA  7c47                    jl       0x1e6923                       
  0x001E68DC  57                      push     edi                            
  0x001E68DD  57                      push     edi                            
  0x001E68DE  57                      push     edi                            
  0x001E68DF  57                      push     edi                            
  0x001E68E0  6820000900              push     0x90020                        
  0x001E68E5  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E68E8  50                      push     eax                            
  0x001E68E9  57                      push     edi                            
  0x001E68EA  57                      push     edi                            
  0x001E68EB  57                      push     edi                            
  0x001E68EC  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E68EF  ff1510d11e00            call     dword ptr [0x1ed110]           ; -> xbox_NtFsControlFile
  0x001E68F5  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E68F8  8bd8                    mov      ebx, eax                       
  0x001E68FA  ff15ecd01e00            call     dword ptr [0x1ed0ec]           ; -> xbox_NtClose
  0x001E6900  3bdf                    cmp      ebx, edi                       
  0x001E6902  7c1f                    jl       0x1e6923                       
  0x001E6904  8d45f4                  lea      eax, [ebp - 0xc]               
  0x001E6907  50                      push     eax                            
  0x001E6908  ff1550d11e00            call     dword ptr [0x1ed150]           ; -> xbox_IoDeleteDevice
  0x001E690E  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E6911  8bd8                    mov      ebx, eax                       
  0x001E6913  ff7508                  push     dword ptr [ebp + 8]            
  0x001E6916  e8c6020000              call     0x1e6be1                       ; -> sub_001E6BE1
  0x001E691B  f7d6                    not      esi                            
  0x001E691D  213514f8b100            and      dword ptr [0xb1f814], esi      
                                        ; XREF: 0x001E68DA (cond_jump), 0x001E6902 (cond_jump)
  0x001E6923  53                      push     ebx                            
  0x001E6924  ff1538d11e00            call     dword ptr [0x1ed138]           ; -> xbox_RtlNtStatusToDosError
  0x001E692A  5b                      pop      ebx                            
                                        ; XREF: 0x001E686D (jump)
  0x001E692B  5f                      pop      edi                            
  0x001E692C  5e                      pop      esi                            
  0x001E692D  c9                      leave                                   
  0x001E692E  c20800                  ret      8                              

; ============================================================
; Function: sub_001E6931
; Start: 0x001E6931  End: 0x001E694C  Size: 27 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8E69
; ============================================================
sub_001E6931:
  0x001E6931  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E6935  33c0                    xor      eax, eax                       
  0x001E6937  40                      inc      eax                            
  0x001E6938  d3e0                    shl      eax, cl                        
  0x001E693A  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E693E  094104                  or       dword ptr [ecx + 4], eax       
  0x001E6941  807c240c00              cmp      byte ptr [esp + 0xc], 0        
  0x001E6946  7404                    je       0x1e694c                       
  0x001E6948  0901                    or       dword ptr [ecx], eax           
  0x001E694A  eb04                    jmp      0x1e6950                       
; end of function
                                        ; XREF: 0x001E6946 (cond_jump)
  0x001E694C  f7d0                    not      eax                            
  0x001E694E  2101                    and      dword ptr [ecx], eax           
                                        ; XREF: 0x001E694A (jump)
  0x001E6950  c20c00                  ret      0xc                            

; ============================================================
; Function: sub_001E6953
; Start: 0x001E6953  End: 0x001E6958  Size: 5 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_000A0680
; ============================================================
sub_001E6953:
  0x001E6953  e9f4f3ffff              jmp      0x1e5d4c                       
; end of function

; ============================================================
; Function: sub_001E6958
; Start: 0x001E6958  End: 0x001E697A  Size: 34 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_0009DC00, sub_0009EA60
; ============================================================
sub_001E6958:
  0x001E6958  56                      push     esi                            
  0x001E6959  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E695F  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E6963  8b32                    mov      esi, dword ptr [edx]           
  0x001E6965  83620400                and      dword ptr [edx + 4], 0         
  0x001E6969  8ac8                    mov      cl, al                         
  0x001E696B  897208                  mov      dword ptr [edx + 8], esi       
  0x001E696E  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6974  8bc6                    mov      eax, esi                       
  0x001E6976  5e                      pop      esi                            
  0x001E6977  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E697A
; Start: 0x001E697A  End: 0x001E6994  Size: 26 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_0009DC40, sub_0009EAF0
; ============================================================
sub_001E697A:
  0x001E697A  55                      push     ebp                            
  0x001E697B  8bec                    mov      ebp, esp                       
  0x001E697D  56                      push     esi                            
  0x001E697E  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E6981  33c0                    xor      eax, eax                       
  0x001E6983  394604                  cmp      dword ptr [esi + 4], eax       
  0x001E6986  750c                    jne      0x1e6994                       
  0x001E6988  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001E698B  8901                    mov      dword ptr [ecx], eax           
  0x001E698D  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001E6990  8901                    mov      dword ptr [ecx], eax           
  0x001E6992  eb4e                    jmp      0x1e69e2                       
; end of function
                                        ; XREF: 0x001E6986 (cond_jump)
  0x001E6994  53                      push     ebx                            
  0x001E6995  57                      push     edi                            
  0x001E6996  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E699C  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001E699F  8b5d0c                  mov      ebx, dword ptr [ebp + 0xc]     
  0x001E69A2  f7d1                    not      ecx                            
  0x001E69A4  230e                    and      ecx, dword ptr [esi]           
  0x001E69A6  890b                    mov      dword ptr [ebx], ecx           
  0x001E69A8  8b16                    mov      edx, dword ptr [esi]           
  0x001E69AA  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001E69AD  f7d2                    not      edx                            
  0x001E69AF  235608                  and      edx, dword ptr [esi + 8]       
  0x001E69B2  8911                    mov      dword ptr [ecx], edx           
  0x001E69B4  8b7e04                  mov      edi, dword ptr [esi + 4]       
  0x001E69B7  237e08                  and      edi, dword ptr [esi + 8]       
  0x001E69BA  233e                    and      edi, dword ptr [esi]           
  0x001E69BC  0bd7                    or       edx, edi                       
  0x001E69BE  8911                    mov      dword ptr [ecx], edx           
  0x001E69C0  093b                    or       dword ptr [ebx], edi           
  0x001E69C2  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E69C4  83660400                and      dword ptr [esi + 4], 0         
  0x001E69C8  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001E69CB  8ac8                    mov      cl, al                         
  0x001E69CD  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E69D3  8b03                    mov      eax, dword ptr [ebx]           
  0x001E69D5  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001E69D8  0b01                    or       eax, dword ptr [ecx]           
  0x001E69DA  5f                      pop      edi                            
  0x001E69DB  f7d8                    neg      eax                            
  0x001E69DD  1bc0                    sbb      eax, eax                       
  0x001E69DF  f7d8                    neg      eax                            
  0x001E69E1  5b                      pop      ebx                            
                                        ; XREF: 0x001E6992 (jump)
  0x001E69E2  5e                      pop      esi                            
  0x001E69E3  5d                      pop      ebp                            
  0x001E69E4  c20c00                  ret      0xc                            

; ============================================================
; Function: sub_001E69E7
; Start: 0x001E69E7  End: 0x001E6A02  Size: 27 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E6C4E
; ============================================================
sub_001E69E7:
  0x001E69E7  a118f8b100              mov      eax, dword ptr [0xb1f818]      
  0x001E69EC  85c0                    test     eax, eax                       
  0x001E69EE  7411                    je       0x1e6a01                       
  0x001E69F0  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001E69F3  890d18f8b100            mov      dword ptr [0xb1f818], ecx      
  0x001E69F9  83600c00                and      dword ptr [eax + 0xc], 0       
  0x001E69FD  83600800                and      dword ptr [eax + 8], 0         
                                        ; XREF: 0x001E69EE (cond_jump)
  0x001E6A01  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E6A02
; Start: 0x001E6A02  End: 0x001E6A2A  Size: 40 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E6A02:
  0x001E6A02  8b542404                mov      edx, dword ptr [esp + 4]       
  0x001E6A06  57                      push     edi                            
  0x001E6A07  6a58                    push     0x58                           
  0x001E6A09  59                      pop      ecx                            
  0x001E6A0A  33c0                    xor      eax, eax                       
  0x001E6A0C  8d7a10                  lea      edi, [edx + 0x10]              
  0x001E6A0F  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E6A11  c7420c04000000          mov      dword ptr [edx + 0xc], 4       
  0x001E6A18  a118f8b100              mov      eax, dword ptr [0xb1f818]      
  0x001E6A1D  894208                  mov      dword ptr [edx + 8], eax       
  0x001E6A20  891518f8b100            mov      dword ptr [0xb1f818], edx      
  0x001E6A26  5f                      pop      edi                            
  0x001E6A27  c20400                  ret      4                              
; end of function
  0x001E6A2A  53                      push     ebx                            
  0x001E6A2B  56                      push     esi                            
  0x001E6A2C  57                      push     edi                            
  0x001E6A2D  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E6A31  8bcf                    mov      ecx, edi                       
  0x001E6A33  e84b300000              call     0x1e9a83                       ; -> sub_001E9A83
  0x001E6A38  33db                    xor      ebx, ebx                       
  0x001E6A3A  33c9                    xor      ecx, ecx                       
  0x001E6A3C  83f810                  cmp      eax, 0x10                      
  0x001E6A3F  7204                    jb       0x1e6a45                       
  0x001E6A41  83e810                  sub      eax, 0x10                      
  0x001E6A44  41                      inc      ecx                            
                                        ; XREF: 0x001E6A3F (cond_jump)
  0x001E6A45  8d0441                  lea      eax, [ecx + eax*2]             
  0x001E6A48  8b0d2428b200            mov      ecx, dword ptr [0xb22824]      
  0x001E6A4E  53                      push     ebx                            
  0x001E6A4F  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6A52  6a01                    push     1                              
  0x001E6A54  8d3481                  lea      esi, [ecx + eax*4]             
  0x001E6A57  6a02                    push     2                              
  0x001E6A59  8bcf                    mov      ecx, edi                       
  0x001E6A5B  e8ad2f0000              call     0x1e9a0d                       ; -> sub_001E9A0D
  0x001E6A60  3bc3                    cmp      eax, ebx                       
  0x001E6A62  744a                    je       0x1e6aae                       
  0x001E6A64  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001E6A67  884e05                  mov      byte ptr [esi + 5], cl         
  0x001E6A6A  6683780440              cmp      word ptr [eax + 4], 0x40       
  0x001E6A6F  8bcf                    mov      ecx, edi                       
  0x001E6A71  753d                    jne      0x1e6ab0                       
  0x001E6A73  53                      push     ebx                            
  0x001E6A74  53                      push     ebx                            
  0x001E6A75  6a02                    push     2                              
  0x001E6A77  e8912f0000              call     0x1e9a0d                       ; -> sub_001E9A0D
  0x001E6A7C  3bc3                    cmp      eax, ebx                       
  0x001E6A7E  742e                    je       0x1e6aae                       
  0x001E6A80  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001E6A83  884e06                  mov      byte ptr [esi + 6], cl         
  0x001E6A86  6683780440              cmp      word ptr [eax + 4], 0x40       
  0x001E6A8B  8bcf                    mov      ecx, edi                       
  0x001E6A8D  7521                    jne      0x1e6ab0                       
  0x001E6A8F  56                      push     esi                            
  0x001E6A90  e87d2e0000              call     0x1e9912                       ; -> sub_001E9912
  0x001E6A95  8bcf                    mov      ecx, edi                       
  0x001E6A97  893e                    mov      dword ptr [esi], edi           
  0x001E6A99  e8812e0000              call     0x1e991f                       ; -> sub_001E991F
  0x001E6A9E  53                      push     ebx                            
  0x001E6A9F  8bcf                    mov      ecx, edi                       
  0x001E6AA1  884604                  mov      byte ptr [esi + 4], al         
  0x001E6AA4  e87a2e0000              call     0x1e9923                       ; -> sub_001E9923
  0x001E6AA9  53                      push     ebx                            
  0x001E6AAA  8bcf                    mov      ecx, edi                       
  0x001E6AAC  eb07                    jmp      0x1e6ab5                       
                                        ; XREF: 0x001E6A62 (cond_jump), 0x001E6A7E (cond_jump)
  0x001E6AAE  8bcf                    mov      ecx, edi                       
                                        ; XREF: 0x001E6A71 (cond_jump), 0x001E6A8D (cond_jump)
  0x001E6AB0  6800040080              push     0x80000400                     
                                        ; XREF: 0x001E6AAC (jump)
  0x001E6AB5  e86d270000              call     0x1e9227                       ; -> sub_001E9227
  0x001E6ABA  5f                      pop      edi                            
  0x001E6ABB  5e                      pop      esi                            
  0x001E6ABC  5b                      pop      ebx                            
  0x001E6ABD  c20400                  ret      4                              

; ============================================================
; Function: sub_001E6AC0
; Start: 0x001E6AC0  End: 0x001E6AEE  Size: 46 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E6B92
; ============================================================
sub_001E6AC0:
  0x001E6AC0  56                      push     esi                            
  0x001E6AC1  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E6AC5  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E6AC8  a900000400              test     eax, 0x40000                   
  0x001E6ACD  57                      push     edi                            
  0x001E6ACE  8b7e08                  mov      edi, dword ptr [esi + 8]       
  0x001E6AD1  741b                    je       0x1e6aee                       
  0x001E6AD3  8b5624                  mov      edx, dword ptr [esi + 0x24]    
  0x001E6AD6  83662400                and      dword ptr [esi + 0x24], 0      
  0x001E6ADA  c6861101000043          mov      byte ptr [esi + 0x111], 0x43   
  0x001E6AE1  899620010000            mov      dword ptr [esi + 0x120], edx   
  0x001E6AE7  25fffffbff              and      eax, 0xfffbffff                
  0x001E6AEC  eb35                    jmp      0x1e6b23                       
; end of function
                                        ; XREF: 0x001E6AD1 (cond_jump)
  0x001E6AEE  a900000200              test     eax, 0x20000                   
  0x001E6AF3  741b                    je       0x1e6b10                       
  0x001E6AF5  8b5620                  mov      edx, dword ptr [esi + 0x20]    
  0x001E6AF8  83662000                and      dword ptr [esi + 0x20], 0      
  0x001E6AFC  c6861101000043          mov      byte ptr [esi + 0x111], 0x43   
  0x001E6B03  899620010000            mov      dword ptr [esi + 0x120], edx   
  0x001E6B09  25fffffdff              and      eax, 0xfffdffff                
  0x001E6B0E  eb13                    jmp      0x1e6b23                       
                                        ; XREF: 0x001E6AF3 (cond_jump)
  0x001E6B10  a900000100              test     eax, 0x10000                   
  0x001E6B15  7432                    je       0x1e6b49                       
  0x001E6B17  c68611010000c3          mov      byte ptr [esi + 0x111], 0xc3   
  0x001E6B1E  25fffffeff              and      eax, 0xfffeffff                
                                        ; XREF: 0x001E6AEC (jump), 0x001E6B0E (jump)
  0x001E6B23  8d8e10010000            lea      ecx, [esi + 0x110]             
  0x001E6B29  c6011c                  mov      byte ptr [ecx], 0x1c           
  0x001E6B2C  c78618010000c06a1e00    mov      dword ptr [esi + 0x118], 0x1e6ac0 
  0x001E6B36  89b61c010000            mov      dword ptr [esi + 0x11c], esi   
  0x001E6B3C  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E6B3F  51                      push     ecx                            
  0x001E6B40  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E6B42  e86e310000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E6B47  eb44                    jmp      0x1e6b8d                       
                                        ; XREF: 0x001E6B15 (cond_jump)
  0x001E6B49  25fffff7ff              and      eax, 0xfff7ffff                
  0x001E6B4E  53                      push     ebx                            
  0x001E6B4F  33db                    xor      ebx, ebx                       
  0x001E6B51  a801                    test     al, 1                          
  0x001E6B53  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E6B56  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001E6B59  7416                    je       0x1e6b71                       
  0x001E6B5B  53                      push     ebx                            
  0x001E6B5C  53                      push     ebx                            
  0x001E6B5D  8d862c010000            lea      eax, [esi + 0x12c]             
  0x001E6B63  50                      push     eax                            
  0x001E6B64  895f08                  mov      dword ptr [edi + 8], ebx       
  0x001E6B67  ff15e0d11e00            call     dword ptr [0x1ed1e0]           ; -> xbox_KeSetEvent
  0x001E6B6D  83660cfe                and      dword ptr [esi + 0xc], 0xfffffffe 
                                        ; XREF: 0x001E6B59 (cond_jump)
  0x001E6B71  f6460c02                test     byte ptr [esi + 0xc], 2        
  0x001E6B75  7415                    je       0x1e6b8c                       
  0x001E6B77  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E6B79  e8eb220000              call     0x1e8e69                       ; -> sub_001E8E69
  0x001E6B7E  891f                    mov      dword ptr [edi], ebx           
  0x001E6B80  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E6B83  83e0fd                  and      eax, 0xfffffffd                
  0x001E6B86  83c804                  or       eax, 4                         
  0x001E6B89  89460c                  mov      dword ptr [esi + 0xc], eax     
                                        ; XREF: 0x001E6B75 (cond_jump)
  0x001E6B8C  5b                      pop      ebx                            
                                        ; XREF: 0x001E6B47 (jump)
  0x001E6B8D  5f                      pop      edi                            
  0x001E6B8E  5e                      pop      esi                            
  0x001E6B8F  c20800                  ret      8                              

; ============================================================
; Function: sub_001E6B92
; Start: 0x001E6B92  End: 0x001E6BAC  Size: 26 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E6AC0
; Called by: sub_001E6BE1
; ============================================================
sub_001E6B92:
  0x001E6B92  8b410c                  mov      eax, dword ptr [ecx + 0xc]     
  0x001E6B95  ba00000800              mov      edx, 0x80000                   
  0x001E6B9A  85c2                    test     edx, eax                       
  0x001E6B9C  750d                    jne      0x1e6bab                       
  0x001E6B9E  51                      push     ecx                            
  0x001E6B9F  0bc2                    or       eax, edx                       
  0x001E6BA1  6a00                    push     0                              
  0x001E6BA3  89410c                  mov      dword ptr [ecx + 0xc], eax     
  0x001E6BA6  e815ffffff              call     0x1e6ac0                       ; -> sub_001E6AC0
                                        ; XREF: 0x001E6B9C (cond_jump)
  0x001E6BAB  c3                      ret                                     
; end of function
  0x001E6BAC  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E6BB0  56                      push     esi                            
  0x001E6BB1  e8582d0000              call     0x1e990e                       ; -> sub_001E990E
  0x001E6BB6  8bf0                    mov      esi, eax                       
  0x001E6BB8  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001E6BBB  85c9                    test     ecx, ecx                       
  0x001E6BBD  7414                    je       0x1e6bd3                       
  0x001E6BBF  8b410c                  mov      eax, dword ptr [ecx + 0xc]     
  0x001E6BC2  a804                    test     al, 4                          
  0x001E6BC4  750d                    jne      0x1e6bd3                       
  0x001E6BC6  83c802                  or       eax, 2                         
  0x001E6BC9  89410c                  mov      dword ptr [ecx + 0xc], eax     
  0x001E6BCC  e8c1ffffff              call     0x1e6b92                       ; -> sub_001E6B92
  0x001E6BD1  eb0a                    jmp      0x1e6bdd                       
                                        ; XREF: 0x001E6BBD (cond_jump), 0x001E6BC4 (cond_jump)
  0x001E6BD3  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6BD5  e88f220000              call     0x1e8e69                       ; -> sub_001E8E69
  0x001E6BDA  832600                  and      dword ptr [esi], 0             
                                        ; XREF: 0x001E6BD1 (jump)
  0x001E6BDD  5e                      pop      esi                            
  0x001E6BDE  c20400                  ret      4                              

; ============================================================
; Function: sub_001E6BE1
; Start: 0x001E6BE1  End: 0x001E6C38  Size: 87 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E6B92
; ============================================================
sub_001E6BE1:
  0x001E6BE1  55                      push     ebp                            
  0x001E6BE2  8bec                    mov      ebp, esp                       
  0x001E6BE4  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E6BE7  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E6BEA  53                      push     ebx                            
  0x001E6BEB  8d0448                  lea      eax, [eax + ecx*2]             
  0x001E6BEE  8b0d2428b200            mov      ecx, dword ptr [0xb22824]      
  0x001E6BF4  56                      push     esi                            
  0x001E6BF5  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6BF8  57                      push     edi                            
  0x001E6BF9  8d3c81                  lea      edi, [ecx + eax*4]             
  0x001E6BFC  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E6C02  8b7708                  mov      esi, dword ptr [edi + 8]       
  0x001E6C05  33db                    xor      ebx, ebx                       
  0x001E6C07  395e08                  cmp      dword ptr [esi + 8], ebx       
  0x001E6C0A  8ac8                    mov      cl, al                         
  0x001E6C0C  884d0f                  mov      byte ptr [ebp + 0xf], cl       
  0x001E6C0F  7427                    je       0x1e6c38                       
  0x001E6C11  834e0c01                or       dword ptr [esi + 0xc], 1       
  0x001E6C15  8bce                    mov      ecx, esi                       
  0x001E6C17  e876ffffff              call     0x1e6b92                       ; -> sub_001E6B92
  0x001E6C1C  8a4d0f                  mov      cl, byte ptr [ebp + 0xf]       
  0x001E6C1F  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6C25  53                      push     ebx                            
  0x001E6C26  53                      push     ebx                            
  0x001E6C27  53                      push     ebx                            
  0x001E6C28  53                      push     ebx                            
  0x001E6C29  8d862c010000            lea      eax, [esi + 0x12c]             
  0x001E6C2F  50                      push     eax                            
  0x001E6C30  ff15e4d11e00            call     dword ptr [0x1ed1e4]           ; -> xbox_KeWaitForSingleObject
  0x001E6C36  eb09                    jmp      0x1e6c41                       
; end of function
                                        ; XREF: 0x001E6C0F (cond_jump)
  0x001E6C38  895f08                  mov      dword ptr [edi + 8], ebx       
  0x001E6C3B  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
                                        ; XREF: 0x001E6C36 (jump)
  0x001E6C41  56                      push     esi                            
  0x001E6C42  e8bbfdffff              call     0x1e6a02                       ; -> sub_001E6A02
  0x001E6C47  5f                      pop      edi                            
  0x001E6C48  5e                      pop      esi                            
  0x001E6C49  5b                      pop      ebx                            
  0x001E6C4A  5d                      pop      ebp                            
  0x001E6C4B  c20800                  ret      8                              

; ============================================================
; Function: sub_001E6C4E
; Start: 0x001E6C4E  End: 0x001E6C8B  Size: 61 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E69E7
; ============================================================
sub_001E6C4E:
  0x001E6C4E  55                      push     ebp                            
  0x001E6C4F  8bec                    mov      ebp, esp                       
  0x001E6C51  51                      push     ecx                            
  0x001E6C52  51                      push     ecx                            
  0x001E6C53  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E6C56  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E6C59  53                      push     ebx                            
  0x001E6C5A  8d0448                  lea      eax, [eax + ecx*2]             
  0x001E6C5D  8b0d2428b200            mov      ecx, dword ptr [0xb22824]      
  0x001E6C63  56                      push     esi                            
  0x001E6C64  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6C67  57                      push     edi                            
  0x001E6C68  33db                    xor      ebx, ebx                       
  0x001E6C6A  895df8                  mov      dword ptr [ebp - 8], ebx       
  0x001E6C6D  8d3c81                  lea      edi, [ecx + eax*4]             
  0x001E6C70  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E6C76  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E6C79  e869fdffff              call     0x1e69e7                       ; -> sub_001E69E7
  0x001E6C7E  8bf0                    mov      esi, eax                       
  0x001E6C80  3bf3                    cmp      esi, ebx                       
  0x001E6C82  7507                    jne      0x1e6c8b                       
  0x001E6C84  be170000c0              mov      esi, 0xc0000017                
  0x001E6C89  eb0f                    jmp      0x1e6c9a                       
; end of function
                                        ; XREF: 0x001E6C82 (cond_jump)
  0x001E6C8B  391f                    cmp      dword ptr [edi], ebx           
  0x001E6C8D  56                      push     esi                            
  0x001E6C8E  751a                    jne      0x1e6caa                       
  0x001E6C90  e86dfdffff              call     0x1e6a02                       ; -> sub_001E6A02
  0x001E6C95  be9d0000c0              mov      esi, 0xc000009d                
                                        ; XREF: 0x001E6C89 (jump)
  0x001E6C9A  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E6C9D  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6CA3  8bc6                    mov      eax, esi                       
  0x001E6CA5  e951010000              jmp      0x1e6dfb                       
                                        ; XREF: 0x001E6C8E (cond_jump)
  0x001E6CAA  682f9e1e00              push     0x1e9e2f                       
  0x001E6CAF  8d8698000000            lea      eax, [esi + 0x98]              
  0x001E6CB5  897708                  mov      dword ptr [edi + 8], esi       
  0x001E6CB8  50                      push     eax                            
  0x001E6CB9  897e08                  mov      dword ptr [esi + 8], edi       
  0x001E6CBC  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001E6CC2  53                      push     ebx                            
  0x001E6CC3  8d4670                  lea      eax, [esi + 0x70]              
  0x001E6CC6  50                      push     eax                            
  0x001E6CC7  ff15e8d11e00            call     dword ptr [0x1ed1e8]           ; -> xbox_KeInitializeTimerEx
  0x001E6CCD  80a62c01000000          and      byte ptr [esi + 0x12c], 0      
  0x001E6CD4  83a6c000000000          and      dword ptr [esi + 0xc0], 0      
  0x001E6CDB  899e30010000            mov      dword ptr [esi + 0x130], ebx   
  0x001E6CE1  8d8634010000            lea      eax, [esi + 0x134]             
  0x001E6CE7  8d9eb8000000            lea      ebx, [esi + 0xb8]              
  0x001E6CED  c6862e01000004          mov      byte ptr [esi + 0x12e], 4      
  0x001E6CF4  898638010000            mov      dword ptr [esi + 0x138], eax   
  0x001E6CFA  8900                    mov      dword ptr [eax], eax           
  0x001E6CFC  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E6CFF  c686b900000082          mov      byte ptr [esi + 0xb9], 0x82    
  0x001E6D06  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E6D08  53                      push     ebx                            
  0x001E6D09  e8a72f0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E6D0E  85c0                    test     eax, eax                       
  0x001E6D10  0f8c9a000000            jl       0x1e6db0                       
  0x001E6D16  804e0e01                or       byte ptr [esi + 0xe], 1        
  0x001E6D1A  83a6c000000000          and      dword ptr [esi + 0xc0], 0      
  0x001E6D21  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E6D24  c686b900000002          mov      byte ptr [esi + 0xb9], 2       
  0x001E6D2B  8a4705                  mov      al, byte ptr [edi + 5]         
  0x001E6D2E  80a6cf00000000          and      byte ptr [esi + 0xcf], 0       
  0x001E6D35  8886cd000000            mov      byte ptr [esi + 0xcd], al      
  0x001E6D3B  c686ce00000002          mov      byte ptr [esi + 0xce], 2       
  0x001E6D42  66c786d40000004000      mov      word ptr [esi + 0xd4], 0x40    
  0x001E6D4B  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E6D4D  53                      push     ebx                            
  0x001E6D4E  e8622f0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E6D53  85c0                    test     eax, eax                       
  0x001E6D55  7c59                    jl       0x1e6db0                       
  0x001E6D57  8b86c8000000            mov      eax, dword ptr [esi + 0xc8]    
  0x001E6D5D  804e0e02                or       byte ptr [esi + 0xe], 2        
  0x001E6D61  83a6c000000000          and      dword ptr [esi + 0xc0], 0      
  0x001E6D68  894620                  mov      dword ptr [esi + 0x20], eax    
  0x001E6D6B  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E6D6E  c686b900000002          mov      byte ptr [esi + 0xb9], 2       
  0x001E6D75  8a4706                  mov      al, byte ptr [edi + 6]         
  0x001E6D78  80a6cf00000000          and      byte ptr [esi + 0xcf], 0       
  0x001E6D7F  8886cd000000            mov      byte ptr [esi + 0xcd], al      
  0x001E6D85  c686ce00000002          mov      byte ptr [esi + 0xce], 2       
  0x001E6D8C  66c786d40000004000      mov      word ptr [esi + 0xd4], 0x40    
  0x001E6D95  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E6D97  53                      push     ebx                            
  0x001E6D98  e8182f0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E6D9D  85c0                    test     eax, eax                       
  0x001E6D9F  7c0f                    jl       0x1e6db0                       
  0x001E6DA1  8b86c8000000            mov      eax, dword ptr [esi + 0xc8]    
  0x001E6DA7  804e0e04                or       byte ptr [esi + 0xe], 4        
  0x001E6DAB  894624                  mov      dword ptr [esi + 0x24], eax    
  0x001E6DAE  eb09                    jmp      0x1e6db9                       
                                        ; XREF: 0x001E6D10 (cond_jump), 0x001E6D55 (cond_jump), 0x001E6D9F (cond_jump)
  0x001E6DB0  50                      push     eax                            
  0x001E6DB1  e8e52b0000              call     0x1e999b                       ; -> sub_001E999B
  0x001E6DB6  8945f8                  mov      dword ptr [ebp - 8], eax       
                                        ; XREF: 0x001E6DAE (jump)
  0x001E6DB9  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E6DBC  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6DC2  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001E6DC5  b8000000c0              mov      eax, 0xc0000000                
  0x001E6DCA  23c8                    and      ecx, eax                       
  0x001E6DCC  3bc8                    cmp      ecx, eax                       
  0x001E6DCE  750d                    jne      0x1e6ddd                       
  0x001E6DD0  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E6DD3  ff7508                  push     dword ptr [ebp + 8]            
  0x001E6DD6  e806feffff              call     0x1e6be1                       ; -> sub_001E6BE1
  0x001E6DDB  eb1b                    jmp      0x1e6df8                       
                                        ; XREF: 0x001E6DCE (cond_jump)
  0x001E6DDD  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001E6DE0  66c7000c00              mov      word ptr [eax], 0xc            
  0x001E6DE5  ff7604                  push     dword ptr [esi + 4]            
  0x001E6DE8  68acd01e00              push     0x1ed0ac                       
  0x001E6DED  ff7004                  push     dword ptr [eax + 4]            
  0x001E6DF0  e8e16cfaff              call     0x18dad6                       ; -> sub_0018DAD6
  0x001E6DF5  83c40c                  add      esp, 0xc                       
                                        ; XREF: 0x001E6DDB (jump)
  0x001E6DF8  8b45f8                  mov      eax, dword ptr [ebp - 8]       
                                        ; XREF: 0x001E6CA5 (jump)
  0x001E6DFB  5f                      pop      edi                            
  0x001E6DFC  5e                      pop      esi                            
  0x001E6DFD  5b                      pop      ebx                            
  0x001E6DFE  c9                      leave                                   
  0x001E6DFF  c20c00                  ret      0xc                            
  0x001E6E02  a1f0d11e00              mov      eax, dword ptr [0x1ed1f0]      
  0x001E6E07  a3a4591e00              mov      dword ptr [0x1e59a4], eax      
  0x001E6E0C  a3a8591e00              mov      dword ptr [0x1e59a8], eax      
  0x001E6E11  a3b4591e00              mov      dword ptr [0x1e59b4], eax      
  0x001E6E16  a3b8591e00              mov      dword ptr [0x1e59b8], eax      
  0x001E6E1B  a3bc591e00              mov      dword ptr [0x1e59bc], eax      
  0x001E6E20  a3c0591e00              mov      dword ptr [0x1e59c0], eax      
  0x001E6E25  a3c4591e00              mov      dword ptr [0x1e59c4], eax      
  0x001E6E2A  a3c8591e00              mov      dword ptr [0x1e59c8], eax      
  0x001E6E2F  a3d4591e00              mov      dword ptr [0x1e59d4], eax      
  0x001E6E34  a3d8591e00              mov      dword ptr [0x1e59d8], eax      
  0x001E6E39  c3                      ret                                     

; ============================================================
; Function: sub_001E6E3A
; Start: 0x001E6E3A  End: 0x001E6E4F  Size: 21 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_0009EA60, sub_0009EAF0
; ============================================================
sub_001E6E3A:
  0x001E6E3A  55                      push     ebp                            
  0x001E6E3B  8bec                    mov      ebp, esp                       
  0x001E6E3D  51                      push     ecx                            
  0x001E6E3E  8365fc00                and      dword ptr [ebp - 4], 0         
  0x001E6E42  817d08e0591e00          cmp      dword ptr [ebp + 8], 0x1e59e0  
  0x001E6E49  7504                    jne      0x1e6e4f                       
  0x001E6E4B  32c9                    xor      cl, cl                         
  0x001E6E4D  eb18                    jmp      0x1e6e67                       
; end of function
                                        ; XREF: 0x001E6E49 (cond_jump)
  0x001E6E4F  817d08ec591e00          cmp      dword ptr [ebp + 8], 0x1e59ec  
  0x001E6E56  7504                    jne      0x1e6e5c                       
  0x001E6E58  b101                    mov      cl, 1                          
  0x001E6E5A  eb0b                    jmp      0x1e6e67                       
                                        ; XREF: 0x001E6E56 (cond_jump)
  0x001E6E5C  817d08f8591e00          cmp      dword ptr [ebp + 8], 0x1e59f8  
  0x001E6E63  753d                    jne      0x1e6ea2                       
  0x001E6E65  b102                    mov      cl, 2                          
                                        ; XREF: 0x001E6E4D (jump), 0x001E6E5A (jump)
  0x001E6E67  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001E6E6A  85c0                    test     eax, eax                       
  0x001E6E6C  750d                    jne      0x1e6e7b                       
  0x001E6E6E  0fb6c1                  movzx    eax, cl                        
  0x001E6E71  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6E74  8b04c5b45a1e00          mov      eax, dword ptr [eax*8 + 0x1e5ab4] 
                                        ; XREF: 0x001E6E6C (cond_jump)
  0x001E6E7B  837d1001                cmp      dword ptr [ebp + 0x10], 1      
  0x001E6E7F  8b550c                  mov      edx, dword ptr [ebp + 0xc]     
  0x001E6E82  7503                    jne      0x1e6e87                       
  0x001E6E84  83c210                  add      edx, 0x10                      
                                        ; XREF: 0x001E6E82 (cond_jump)
  0x001E6E87  50                      push     eax                            
  0x001E6E88  8d45fc                  lea      eax, [ebp - 4]                 
  0x001E6E8B  50                      push     eax                            
  0x001E6E8C  e85f0b0000              call     0x1e79f0                       ; -> sub_001E79F0
  0x001E6E91  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E6E95  7506                    jne      0x1e6e9d                       
  0x001E6E97  50                      push     eax                            
  0x001E6E98  e8efe1f7ff              call     0x16508c                       ; -> sub_0016508C
                                        ; XREF: 0x001E6E95 (cond_jump)
  0x001E6E9D  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E6EA0  eb09                    jmp      0x1e6eab                       
                                        ; XREF: 0x001E6E63 (cond_jump)
  0x001E6EA2  6a57                    push     0x57                           
  0x001E6EA4  e8e3e1f7ff              call     0x16508c                       ; -> sub_0016508C
  0x001E6EA9  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E6EA0 (jump)
  0x001E6EAB  c9                      leave                                   
  0x001E6EAC  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001E6EAF
; Start: 0x001E6EAF  End: 0x001E6EBB  Size: 12 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7768
; Called by: sub_0009EAF0
; ============================================================
sub_001E6EAF:
  0x001E6EAF  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E6EB3  e8b0080000              call     0x1e7768                       ; -> sub_001E7768
  0x001E6EB8  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E6EBB
; Start: 0x001E6EBB  End: 0x001E70AD  Size: 498 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E992D, sub_001E9CB5
; Called by: sub_0009EA60, sub_0009EAF0
; ============================================================
sub_001E6EBB:
  0x001E6EBB  55                      push     ebp                            
  0x001E6EBC  8bec                    mov      ebp, esp                       
  0x001E6EBE  83ec48                  sub      esp, 0x48                      
  0x001E6EC1  53                      push     ebx                            
  0x001E6EC2  56                      push     esi                            
  0x001E6EC3  33db                    xor      ebx, ebx                       
  0x001E6EC5  57                      push     edi                            
  0x001E6EC6  895df8                  mov      dword ptr [ebp - 8], ebx       
  0x001E6EC9  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E6ECF  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E6ED2  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E6ED5  8b30                    mov      esi, dword ptr [eax]           
  0x001E6ED7  3bf3                    cmp      esi, ebx                       
  0x001E6ED9  0f84ad010000            je       0x1e708c                       
  0x001E6EDF  f6460402                test     byte ptr [esi + 4], 2          
  0x001E6EE3  0f85a3010000            jne      0x1e708c                       
  0x001E6EE9  8b550c                  mov      edx, dword ptr [ebp + 0xc]     
  0x001E6EEC  33c0                    xor      eax, eax                       
  0x001E6EEE  6a06                    push     6                              
  0x001E6EF0  59                      pop      ecx                            
  0x001E6EF1  8bfa                    mov      edi, edx                       
  0x001E6EF3  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E6EF5  aa                      stosb    byte ptr es:[edi], al          
  0x001E6EF6  8a460b                  mov      al, byte ptr [esi + 0xb]       
  0x001E6EF9  8802                    mov      byte ptr [edx], al             
  0x001E6EFB  0fb6460a                movzx    eax, byte ptr [esi + 0xa]      
  0x001E6EFF  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6F02  c1e003                  shl      eax, 3                         
  0x001E6F05  f680bc5a1e0001          test     byte ptr [eax + 0x1e5abc], 1   
  0x001E6F0C  740c                    je       0x1e6f1a                       
  0x001E6F0E  c745f805000000          mov      dword ptr [ebp - 8], 5         
  0x001E6F15  e979010000              jmp      0x1e7093                       
                                        ; XREF: 0x001E6F0C (cond_jump)
  0x001E6F1A  8b80b05a1e00            mov      eax, dword ptr [eax + 0x1e5ab0] 
  0x001E6F20  0fb600                  movzx    eax, byte ptr [eax]            
  0x001E6F23  8d4df0                  lea      ecx, [ebp - 0x10]              
  0x001E6F26  894df4                  mov      dword ptr [ebp - 0xc], ecx     
  0x001E6F29  8d4df0                  lea      ecx, [ebp - 0x10]              
  0x001E6F2C  894df0                  mov      dword ptr [ebp - 0x10], ecx    
  0x001E6F2F  8d4de8                  lea      ecx, [ebp - 0x18]              
  0x001E6F32  894dc4                  mov      dword ptr [ebp - 0x3c], ecx    
  0x001E6F35  8d4802                  lea      ecx, [eax + 2]                 
  0x001E6F38  83c213                  add      edx, 0x13                      
  0x001E6F3B  885de8                  mov      byte ptr [ebp - 0x18], bl      
  0x001E6F3E  c645ea04                mov      byte ptr [ebp - 0x16], 4       
  0x001E6F42  895dec                  mov      dword ptr [ebp - 0x14], ebx    
  0x001E6F45  c645b830                mov      byte ptr [ebp - 0x48], 0x30    
  0x001E6F49  c645b940                mov      byte ptr [ebp - 0x47], 0x40    
  0x001E6F4D  c745c0b1751e00          mov      dword ptr [ebp - 0x40], 0x1e75b1 
  0x001E6F54  895dc8                  mov      dword ptr [ebp - 0x38], ebx    
  0x001E6F57  8955d0                  mov      dword ptr [ebp - 0x30], edx    
  0x001E6F5A  894dcc                  mov      dword ptr [ebp - 0x34], ecx    
  0x001E6F5D  c645d402                mov      byte ptr [ebp - 0x2c], 2       
  0x001E6F61  c645d501                mov      byte ptr [ebp - 0x2b], 1       
  0x001E6F65  885dd6                  mov      byte ptr [ebp - 0x2a], bl      
  0x001E6F68  c645e0c1                mov      byte ptr [ebp - 0x20], 0xc1    
  0x001E6F6C  c645e101                mov      byte ptr [ebp - 0x1f], 1       
  0x001E6F70  66c745e20002            mov      word ptr [ebp - 0x1e], 0x200   
  0x001E6F76  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E6F7B  83c002                  add      eax, 2                         
  0x001E6F7E  668945e6                mov      word ptr [ebp - 0x1a], ax      
  0x001E6F82  8d45b8                  lea      eax, [ebp - 0x48]              
  0x001E6F85  66894de4                mov      word ptr [ebp - 0x1c], cx      
  0x001E6F89  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E6F8B  50                      push     eax                            
  0x001E6F8C  e8242d0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E6F91  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E6F94  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E6F9A  8b3de4d11e00            mov      edi, dword ptr [0x1ed1e4]      
  0x001E6FA0  53                      push     ebx                            
  0x001E6FA1  53                      push     ebx                            
  0x001E6FA2  53                      push     ebx                            
  0x001E6FA3  53                      push     ebx                            
  0x001E6FA4  8d45e8                  lea      eax, [ebp - 0x18]              
  0x001E6FA7  50                      push     eax                            
  0x001E6FA8  ffd7                    call     edi                            
  0x001E6FAA  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E6FB0  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E6FB3  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E6FB6  3918                    cmp      dword ptr [eax], ebx           
  0x001E6FB8  0f84ce000000            je       0x1e708c                       
  0x001E6FBE  f6460402                test     byte ptr [esi + 4], 2          
  0x001E6FC2  0f85c4000000            jne      0x1e708c                       
  0x001E6FC8  395dbc                  cmp      dword ptr [ebp - 0x44], ebx    
  0x001E6FCB  0f8cae000000            jl       0x1e707f                       
  0x001E6FD1  0fb6460a                movzx    eax, byte ptr [esi + 0xa]      
  0x001E6FD5  8d0440                  lea      eax, [eax + eax*2]             
  0x001E6FD8  8b04c5ac5a1e00          mov      eax, dword ptr [eax*8 + 0x1e5aac] 
  0x001E6FDF  0fb600                  movzx    eax, byte ptr [eax]            
  0x001E6FE2  8d4de8                  lea      ecx, [ebp - 0x18]              
  0x001E6FE5  894dc4                  mov      dword ptr [ebp - 0x3c], ecx    
  0x001E6FE8  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001E6FEB  41                      inc      ecx                            
  0x001E6FEC  894dd0                  mov      dword ptr [ebp - 0x30], ecx    
  0x001E6FEF  8d4802                  lea      ecx, [eax + 2]                 
  0x001E6FF2  83c002                  add      eax, 2                         
  0x001E6FF5  c645b830                mov      byte ptr [ebp - 0x48], 0x30    
  0x001E6FF9  c645b940                mov      byte ptr [ebp - 0x47], 0x40    
  0x001E6FFD  c745c0b1751e00          mov      dword ptr [ebp - 0x40], 0x1e75b1 
  0x001E7004  895dc8                  mov      dword ptr [ebp - 0x38], ebx    
  0x001E7007  894dcc                  mov      dword ptr [ebp - 0x34], ecx    
  0x001E700A  c645d402                mov      byte ptr [ebp - 0x2c], 2       
  0x001E700E  c645d501                mov      byte ptr [ebp - 0x2b], 1       
  0x001E7012  885dd6                  mov      byte ptr [ebp - 0x2a], bl      
  0x001E7015  c645e0c1                mov      byte ptr [ebp - 0x20], 0xc1    
  0x001E7019  c645e101                mov      byte ptr [ebp - 0x1f], 1       
  0x001E701D  66c745e20001            mov      word ptr [ebp - 0x1e], 0x100   
  0x001E7023  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E7028  668945e6                mov      word ptr [ebp - 0x1a], ax      
  0x001E702C  8d45f0                  lea      eax, [ebp - 0x10]              
  0x001E702F  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E7032  8d45f0                  lea      eax, [ebp - 0x10]              
  0x001E7035  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001E7038  8d45b8                  lea      eax, [ebp - 0x48]              
  0x001E703B  66894de4                mov      word ptr [ebp - 0x1c], cx      
  0x001E703F  885de8                  mov      byte ptr [ebp - 0x18], bl      
  0x001E7042  c645ea04                mov      byte ptr [ebp - 0x16], 4       
  0x001E7046  895dec                  mov      dword ptr [ebp - 0x14], ebx    
  0x001E7049  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E704B  50                      push     eax                            
  0x001E704C  e8642c0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7051  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E7054  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E705A  53                      push     ebx                            
  0x001E705B  53                      push     ebx                            
  0x001E705C  53                      push     ebx                            
  0x001E705D  53                      push     ebx                            
  0x001E705E  8d45e8                  lea      eax, [ebp - 0x18]              
  0x001E7061  50                      push     eax                            
  0x001E7062  ffd7                    call     edi                            
  0x001E7064  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E706A  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E706D  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E7070  3918                    cmp      dword ptr [eax], ebx           
  0x001E7072  7418                    je       0x1e708c                       
  0x001E7074  f6460402                test     byte ptr [esi + 4], 2          
  0x001E7078  7512                    jne      0x1e708c                       
  0x001E707A  395dbc                  cmp      dword ptr [ebp - 0x44], ebx    
  0x001E707D  7d14                    jge      0x1e7093                       
                                        ; XREF: 0x001E6FCB (cond_jump)
  0x001E707F  ff75bc                  push     dword ptr [ebp - 0x44]         
  0x001E7082  e8a6280000              call     0x1e992d                       ; -> sub_001E992D
  0x001E7087  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E708A  eb07                    jmp      0x1e7093                       
                                        ; XREF: 0x001E6ED9 (cond_jump), 0x001E6EE3 (cond_jump), 0x001E6FB8 (cond_jump), 0x001E6FC2 (cond_jump), 0x001E7072 (cond_jump), ... (+1 more)
  0x001E708C  c745f88f040000          mov      dword ptr [ebp - 8], 0x48f     
                                        ; XREF: 0x001E6F15 (jump), 0x001E707D (cond_jump), 0x001E708A (jump)
  0x001E7093  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E7096  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E7099  66895801                mov      word ptr [eax + 1], bx         
  0x001E709D  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E70A3  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E70A6  5f                      pop      edi                            
  0x001E70A7  5e                      pop      esi                            
  0x001E70A8  5b                      pop      ebx                            
  0x001E70A9  c9                      leave                                   
  0x001E70AA  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E70AD
; Start: 0x001E70AD  End: 0x001E70C9  Size: 28 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_0009EAF0
; ============================================================
sub_001E70AD:
  0x001E70AD  53                      push     ebx                            
  0x001E70AE  56                      push     esi                            
  0x001E70AF  33db                    xor      ebx, ebx                       
  0x001E70B1  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E70B7  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001E70BB  80baa300000001          cmp      byte ptr [edx + 0xa3], 1       
  0x001E70C2  7505                    jne      0x1e70c9                       
  0x001E70C4  6a57                    push     0x57                           
  0x001E70C6  5e                      pop      esi                            
  0x001E70C7  eb46                    jmp      0x1e710f                       
; end of function
                                        ; XREF: 0x001E70C2 (cond_jump)
  0x001E70C9  8b0a                    mov      ecx, dword ptr [edx]           
  0x001E70CB  85c9                    test     ecx, ecx                       
  0x001E70CD  7406                    je       0x1e70d5                       
  0x001E70CF  f6410402                test     byte ptr [ecx + 4], 2          
  0x001E70D3  7405                    je       0x1e70da                       
                                        ; XREF: 0x001E70CD (cond_jump)
  0x001E70D5  bb8f040000              mov      ebx, 0x48f                     
                                        ; XREF: 0x001E70D3 (cond_jump)
  0x001E70DA  8b4a08                  mov      ecx, dword ptr [edx + 8]       
  0x001E70DD  57                      push     edi                            
  0x001E70DE  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001E70E2  890f                    mov      dword ptr [edi], ecx           
  0x001E70E4  0fb68aa3000000          movzx    ecx, byte ptr [edx + 0xa3]     
  0x001E70EB  8d0c49                  lea      ecx, [ecx + ecx*2]             
  0x001E70EE  8b0ccdac5a1e00          mov      ecx, dword ptr [ecx*8 + 0x1e5aac] 
  0x001E70F5  0fb609                  movzx    ecx, byte ptr [ecx]            
  0x001E70F8  8d7214                  lea      esi, [edx + 0x14]              
  0x001E70FB  8bd1                    mov      edx, ecx                       
  0x001E70FD  83c704                  add      edi, 4                         
  0x001E7100  c1e902                  shr      ecx, 2                         
  0x001E7103  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E7105  8bca                    mov      ecx, edx                       
  0x001E7107  83e103                  and      ecx, 3                         
  0x001E710A  f3a4                    rep movsb byte ptr es:[edi], byte ptr [esi] 
  0x001E710C  8bf3                    mov      esi, ebx                       
  0x001E710E  5f                      pop      edi                            
                                        ; XREF: 0x001E70C7 (jump)
  0x001E710F  8ac8                    mov      cl, al                         
  0x001E7111  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E7117  8bc6                    mov      eax, esi                       
  0x001E7119  5e                      pop      esi                            
  0x001E711A  5b                      pop      ebx                            
  0x001E711B  c20800                  ret      8                              

; ============================================================
; Function: sub_001E711E
; Start: 0x001E711E  End: 0x001E7132  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E711E:
  0x001E711E  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E7122  8d81a3000000            lea      eax, [ecx + 0xa3]              
  0x001E7128  803801                  cmp      byte ptr [eax], 1              
  0x001E712B  7505                    jne      0x1e7132                       
  0x001E712D  6a57                    push     0x57                           
  0x001E712F  58                      pop      eax                            
  0x001E7130  eb21                    jmp      0x1e7153                       
; end of function
                                        ; XREF: 0x001E712B (cond_jump)
  0x001E7132  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E7136  80624000                and      byte ptr [edx + 0x40], 0       
  0x001E713A  0fb600                  movzx    eax, byte ptr [eax]            
  0x001E713D  8d0440                  lea      eax, [eax + eax*2]             
  0x001E7140  8b04c5b05a1e00          mov      eax, dword ptr [eax*8 + 0x1e5ab0] 
  0x001E7147  8a00                    mov      al, byte ptr [eax]             
  0x001E7149  0402                    add      al, 2                          
  0x001E714B  884241                  mov      byte ptr [edx + 0x41], al      
  0x001E714E  e8ba060000              call     0x1e780d                       ; -> sub_001E780D
                                        ; XREF: 0x001E7130 (jump)
  0x001E7153  c20800                  ret      8                              

; ============================================================
; Function: sub_001E7156
; Start: 0x001E7156  End: 0x001E7171  Size: 27 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E7C3E
; ============================================================
sub_001E7156:
  0x001E7156  68a828b200              push     0xb228a8                       
  0x001E715B  83c9ff                  or       ecx, 0xffffffff                
  0x001E715E  51                      push     ecx                            
  0x001E715F  b8800f05fd              mov      eax, 0xfd050f80                
  0x001E7164  50                      push     eax                            
  0x001E7165  688028b200              push     0xb22880                       
  0x001E716A  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001E7170  c3                      ret                                     
; end of function
  0x001E7171  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E7175  684828b200              push     0xb22848                       
  0x001E717A  e87c270000              call     0x1e98fb                       ; -> sub_001E98FB
  0x001E717F  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001E7182
; Start: 0x001E7182  End: 0x001E71A5  Size: 35 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8E69, sub_001E9912
; ============================================================
sub_001E7182:
  0x001E7182  56                      push     esi                            
  0x001E7183  8bf1                    mov      esi, ecx                       
  0x001E7185  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7187  6a00                    push     0                              
  0x001E7189  e884270000              call     0x1e9912                       ; -> sub_001E9912
  0x001E718E  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7190  e8d41c0000              call     0x1e8e69                       ; -> sub_001E8E69
  0x001E7195  832600                  and      dword ptr [esi], 0             
  0x001E7198  806604fe                and      byte ptr [esi + 4], 0xfe       
  0x001E719C  66ff0d2a28b200          dec      word ptr [0xb2282a]            
  0x001E71A3  5e                      pop      esi                            
  0x001E71A4  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E71A5
; Start: 0x001E71A5  End: 0x001E7213  Size: 110 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E9A83
; Called by: sub_001E79F0
; ============================================================
sub_001E71A5:
  0x001E71A5  51                      push     ecx                            
  0x001E71A6  53                      push     ebx                            
  0x001E71A7  55                      push     ebp                            
  0x001E71A8  57                      push     edi                            
  0x001E71A9  33db                    xor      ebx, ebx                       
  0x001E71AB  33ff                    xor      edi, edi                       
  0x001E71AD  66391d2828b200          cmp      word ptr [0xb22828], bx        
  0x001E71B4  8bea                    mov      ebp, edx                       
  0x001E71B6  884c240c                mov      byte ptr [esp + 0xc], cl       
  0x001E71BA  7650                    jbe      0x1e720c                       
  0x001E71BC  56                      push     esi                            
                                        ; XREF: 0x001E7209 (cond_jump)
  0x001E71BD  0fb6c3                  movzx    eax, bl                        
  0x001E71C0  8d34c0                  lea      esi, [eax + eax*8]             
  0x001E71C3  a12c28b200              mov      eax, dword ptr [0xb2282c]      
  0x001E71C8  d1e6                    shl      esi, 1                         
  0x001E71CA  03c6                    add      eax, esi                       
  0x001E71CC  f6400401                test     byte ptr [eax + 4], 1          
  0x001E71D0  742a                    je       0x1e71fc                       
  0x001E71D2  8b08                    mov      ecx, dword ptr [eax]           
  0x001E71D4  e8aa280000              call     0x1e9a83                       ; -> sub_001E9A83
  0x001E71D9  3bc5                    cmp      eax, ebp                       
  0x001E71DB  751f                    jne      0x1e71fc                       
  0x001E71DD  a12c28b200              mov      eax, dword ptr [0xb2282c]      
  0x001E71E2  8a4c2410                mov      cl, byte ptr [esp + 0x10]      
  0x001E71E6  03c6                    add      eax, esi                       
  0x001E71E8  38480a                  cmp      byte ptr [eax + 0xa], cl       
  0x001E71EB  750f                    jne      0x1e71fc                       
  0x001E71ED  8a4804                  mov      cl, byte ptr [eax + 4]         
  0x001E71F0  f6c108                  test     cl, 8                          
  0x001E71F3  7407                    je       0x1e71fc                       
  0x001E71F5  f6c102                  test     cl, 2                          
  0x001E71F8  7502                    jne      0x1e71fc                       
  0x001E71FA  8bf8                    mov      edi, eax                       
                                        ; XREF: 0x001E71D0 (cond_jump), 0x001E71DB (cond_jump), 0x001E71EB (cond_jump), 0x001E71F3 (cond_jump), 0x001E71F8 (cond_jump)
  0x001E71FC  fec3                    inc      bl                             
  0x001E71FE  660fb6c3                movzx    ax, bl                         
  0x001E7202  663b052828b200          cmp      ax, word ptr [0xb22828]        
  0x001E7209  72b2                    jb       0x1e71bd                       
  0x001E720B  5e                      pop      esi                            
                                        ; XREF: 0x001E71BA (cond_jump)
  0x001E720C  8bc7                    mov      eax, edi                       
  0x001E720E  5f                      pop      edi                            
  0x001E720F  5d                      pop      ebp                            
  0x001E7210  5b                      pop      ebx                            
  0x001E7211  59                      pop      ecx                            
  0x001E7212  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E7213
; Start: 0x001E7213  End: 0x001E72BE  Size: 171 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E9CB5
; ============================================================
sub_001E7213:
  0x001E7213  55                      push     ebp                            
  0x001E7214  8bec                    mov      ebp, esp                       
  0x001E7216  51                      push     ecx                            
  0x001E7217  53                      push     ebx                            
  0x001E7218  56                      push     esi                            
  0x001E7219  8bf1                    mov      esi, ecx                       
  0x001E721B  83665a00                and      dword ptr [esi + 0x5a], 0      
  0x001E721F  57                      push     edi                            
  0x001E7220  8b3e                    mov      edi, dword ptr [esi]           
  0x001E7222  8d5e52                  lea      ebx, [esi + 0x52]              
  0x001E7225  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E7228  c6465382                mov      byte ptr [esi + 0x53], 0x82    
  0x001E722C  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E722E  53                      push     ebx                            
  0x001E722F  8955fc                  mov      dword ptr [ebp - 4], edx       
  0x001E7232  e87e2a0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7237  85c0                    test     eax, eax                       
  0x001E7239  7c7e                    jl       0x1e72b9                       
  0x001E723B  808ea200000002          or       byte ptr [esi + 0xa2], 2       
  0x001E7242  83665a00                and      dword ptr [esi + 0x5a], 0      
  0x001E7246  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E7249  c6465302                mov      byte ptr [esi + 0x53], 2       
  0x001E724D  8a4708                  mov      al, byte ptr [edi + 8]         
  0x001E7250  884667                  mov      byte ptr [esi + 0x67], al      
  0x001E7253  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E7256  c6466803                mov      byte ptr [esi + 0x68], 3       
  0x001E725A  8a4001                  mov      al, byte ptr [eax + 1]         
  0x001E725D  884669                  mov      byte ptr [esi + 0x69], al      
  0x001E7260  66c7466e2000            mov      word ptr [esi + 0x6e], 0x20    
  0x001E7266  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E7268  53                      push     ebx                            
  0x001E7269  e8472a0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E726E  85c0                    test     eax, eax                       
  0x001E7270  7c47                    jl       0x1e72b9                       
  0x001E7272  8b4e62                  mov      ecx, dword ptr [esi + 0x62]    
  0x001E7275  894e0c                  mov      dword ptr [esi + 0xc], ecx     
  0x001E7278  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001E727B  f60102                  test     byte ptr [ecx], 2              
  0x001E727E  7439                    je       0x1e72b9                       
  0x001E7280  807f0900                cmp      byte ptr [edi + 9], 0          
  0x001E7284  7433                    je       0x1e72b9                       
  0x001E7286  83665a00                and      dword ptr [esi + 0x5a], 0      
  0x001E728A  c60320                  mov      byte ptr [ebx], 0x20           
  0x001E728D  c6465302                mov      byte ptr [esi + 0x53], 2       
  0x001E7291  8a4709                  mov      al, byte ptr [edi + 9]         
  0x001E7294  884667                  mov      byte ptr [esi + 0x67], al      
  0x001E7297  c6466803                mov      byte ptr [esi + 0x68], 3       
  0x001E729B  8a4102                  mov      al, byte ptr [ecx + 2]         
  0x001E729E  884669                  mov      byte ptr [esi + 0x69], al      
  0x001E72A1  66c7466e2000            mov      word ptr [esi + 0x6e], 0x20    
  0x001E72A7  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E72A9  53                      push     ebx                            
  0x001E72AA  e8062a0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E72AF  85c0                    test     eax, eax                       
  0x001E72B1  7c06                    jl       0x1e72b9                       
  0x001E72B3  8b4e62                  mov      ecx, dword ptr [esi + 0x62]    
  0x001E72B6  894e10                  mov      dword ptr [esi + 0x10], ecx    
                                        ; XREF: 0x001E7239 (cond_jump), 0x001E7270 (cond_jump), 0x001E727E (cond_jump), 0x001E7284 (cond_jump), 0x001E72B1 (cond_jump)
  0x001E72B9  5f                      pop      edi                            
  0x001E72BA  5e                      pop      esi                            
  0x001E72BB  5b                      pop      ebx                            
  0x001E72BC  c9                      leave                                   
  0x001E72BD  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E72BE
; Start: 0x001E72BE  End: 0x001E72EF  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E75FC
; ============================================================
sub_001E72BE:
  0x001E72BE  56                      push     esi                            
  0x001E72BF  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E72C3  f686a200000002          test     byte ptr [esi + 0xa2], 2       
  0x001E72CA  8b06                    mov      eax, dword ptr [esi]           
  0x001E72CC  8b08                    mov      ecx, dword ptr [eax]           
  0x001E72CE  57                      push     edi                            
  0x001E72CF  741e                    je       0x1e72ef                       
  0x001E72D1  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E72D5  c6001c                  mov      byte ptr [eax], 0x1c           
  0x001E72D8  c64001c3                mov      byte ptr [eax + 1], 0xc3       
  0x001E72DC  c74008be721e00          mov      dword ptr [eax + 8], 0x1e72be  
  0x001E72E3  89700c                  mov      dword ptr [eax + 0xc], esi     
  0x001E72E6  80a6a2000000fd          and      byte ptr [esi + 0xa2], 0xfd    
  0x001E72ED  eb4a                    jmp      0x1e7339                       
; end of function
                                        ; XREF: 0x001E72CF (cond_jump)
  0x001E72EF  33ff                    xor      edi, edi                       
  0x001E72F1  397e0c                  cmp      dword ptr [esi + 0xc], edi     
  0x001E72F4  7420                    je       0x1e7316                       
  0x001E72F6  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E72FA  c6001c                  mov      byte ptr [eax], 0x1c           
  0x001E72FD  c6400143                mov      byte ptr [eax + 1], 0x43       
  0x001E7301  c74008be721e00          mov      dword ptr [eax + 8], 0x1e72be  
  0x001E7308  89700c                  mov      dword ptr [eax + 0xc], esi     
  0x001E730B  8b560c                  mov      edx, dword ptr [esi + 0xc]     
  0x001E730E  895010                  mov      dword ptr [eax + 0x10], edx    
  0x001E7311  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001E7314  eb23                    jmp      0x1e7339                       
                                        ; XREF: 0x001E72F4 (cond_jump)
  0x001E7316  397e10                  cmp      dword ptr [esi + 0x10], edi    
  0x001E7319  7426                    je       0x1e7341                       
  0x001E731B  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E731F  c6001c                  mov      byte ptr [eax], 0x1c           
  0x001E7322  c6400143                mov      byte ptr [eax + 1], 0x43       
  0x001E7326  c74008be721e00          mov      dword ptr [eax + 8], 0x1e72be  
  0x001E732D  89700c                  mov      dword ptr [eax + 0xc], esi     
  0x001E7330  8b5610                  mov      edx, dword ptr [esi + 0x10]    
  0x001E7333  895010                  mov      dword ptr [eax + 0x10], edx    
  0x001E7336  897e10                  mov      dword ptr [esi + 0x10], edi    
                                        ; XREF: 0x001E72ED (jump), 0x001E7314 (jump)
  0x001E7339  50                      push     eax                            
  0x001E733A  e876290000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E733F  eb29                    jmp      0x1e736a                       
                                        ; XREF: 0x001E7319 (cond_jump)
  0x001E7341  89780e                  mov      dword ptr [eax + 0xe], edi     
  0x001E7344  893e                    mov      dword ptr [esi], edi           
  0x001E7346  f6400402                test     byte ptr [eax + 4], 2          
  0x001E734A  7407                    je       0x1e7353                       
  0x001E734C  8bc8                    mov      ecx, eax                       
  0x001E734E  e82ffeffff              call     0x1e7182                       ; -> sub_001E7182
                                        ; XREF: 0x001E734A (cond_jump)
  0x001E7353  f686a200000001          test     byte ptr [esi + 0xa2], 1       
  0x001E735A  740e                    je       0x1e736a                       
  0x001E735C  57                      push     edi                            
  0x001E735D  57                      push     edi                            
  0x001E735E  ffb69e000000            push     dword ptr [esi + 0x9e]         
  0x001E7364  ff15e0d11e00            call     dword ptr [0x1ed1e0]           ; -> xbox_KeSetEvent
                                        ; XREF: 0x001E733F (jump), 0x001E735A (cond_jump)
  0x001E736A  5f                      pop      edi                            
  0x001E736B  5e                      pop      esi                            
  0x001E736C  c20800                  ret      8                              
  0x001E736F  53                      push     ebx                            
  0x001E7370  57                      push     edi                            
  0x001E7371  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E7375  f687a200000001          test     byte ptr [edi + 0xa2], 1       
  0x001E737C  8b1f                    mov      ebx, dword ptr [edi]           
  0x001E737E  0f8583000000            jne      0x1e7407                       
  0x001E7384  f6430402                test     byte ptr [ebx + 4], 2          
  0x001E7388  757d                    jne      0x1e7407                       
  0x001E738A  56                      push     esi                            
  0x001E738B  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E738F  33c0                    xor      eax, eax                       
  0x001E7391  394604                  cmp      dword ptr [esi + 4], eax       
  0x001E7394  7c29                    jl       0x1e73bf                       
  0x001E7396  0fb6430a                movzx    eax, byte ptr [ebx + 0xa]      
  0x001E739A  8d0440                  lea      eax, [eax + eax*2]             
  0x001E739D  8bcf                    mov      ecx, edi                       
  0x001E739F  ff14c5b85a1e00          call     dword ptr [eax*8 + 0x1e5ab8]   
  0x001E73A6  ff4708                  inc      dword ptr [edi + 8]            
  0x001E73A9  83670400                and      dword ptr [edi + 4], 0         
  0x001E73AD  0fb6430c                movzx    eax, byte ptr [ebx + 0xc]      
  0x001E73B1  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E73B4  f687a200000008          test     byte ptr [edi + 0xa2], 8       
  0x001E73BB  7449                    je       0x1e7406                       
  0x001E73BD  eb3f                    jmp      0x1e73fe                       
                                        ; XREF: 0x001E7394 (cond_jump)
  0x001E73BF  80661c00                and      byte ptr [esi + 0x1c], 0       
  0x001E73C3  80661d00                and      byte ptr [esi + 0x1d], 0       
  0x001E73C7  80661e00                and      byte ptr [esi + 0x1e], 0       
  0x001E73CB  c60630                  mov      byte ptr [esi], 0x30           
  0x001E73CE  c6460140                mov      byte ptr [esi + 1], 0x40       
  0x001E73D2  c746080c741e00          mov      dword ptr [esi + 8], 0x1e740c  
  0x001E73D9  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001E73DC  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001E73DF  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E73E2  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001E73E5  c6462802                mov      byte ptr [esi + 0x28], 2       
  0x001E73E9  c6462901                mov      byte ptr [esi + 0x29], 1       
  0x001E73ED  6689462a                mov      word ptr [esi + 0x2a], ax      
  0x001E73F1  660fb64b08              movzx    cx, byte ptr [ebx + 8]         
  0x001E73F6  66894e2c                mov      word ptr [esi + 0x2c], cx      
  0x001E73FA  6689462e                mov      word ptr [esi + 0x2e], ax      
                                        ; XREF: 0x001E73BD (jump)
  0x001E73FE  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E7400  56                      push     esi                            
  0x001E7401  e8af280000              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001E73BB (cond_jump)
  0x001E7406  5e                      pop      esi                            
                                        ; XREF: 0x001E737E (cond_jump), 0x001E7388 (cond_jump)
  0x001E7407  5f                      pop      edi                            
  0x001E7408  5b                      pop      ebx                            
  0x001E7409  c20800                  ret      8                              
  0x001E740C  53                      push     ebx                            
  0x001E740D  56                      push     esi                            
  0x001E740E  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E7412  8b1e                    mov      ebx, dword ptr [esi]           
  0x001E7414  f6430402                test     byte ptr [ebx + 4], 2          
  0x001E7418  7577                    jne      0x1e7491                       
  0x001E741A  f686a200000001          test     byte ptr [esi + 0xa2], 1       
  0x001E7421  756e                    jne      0x1e7491                       
  0x001E7423  57                      push     edi                            
  0x001E7424  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E7428  837f0400                cmp      dword ptr [edi + 4], 0         
  0x001E742C  7c5b                    jl       0x1e7489                       
  0x001E742E  83670800                and      dword ptr [edi + 8], 0         
  0x001E7432  c60718                  mov      byte ptr [edi], 0x18           
  0x001E7435  c6470105                mov      byte ptr [edi + 1], 5          
  0x001E7439  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E743C  894710                  mov      dword ptr [edi + 0x10], eax    
  0x001E743F  c7471404000000          mov      dword ptr [edi + 0x14], 4      
  0x001E7446  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E7448  57                      push     edi                            
  0x001E7449  e867280000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E744E  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E7451  894662                  mov      dword ptr [esi + 0x62], eax    
  0x001E7454  8d4632                  lea      eax, [esi + 0x32]              
  0x001E7457  c6465228                mov      byte ptr [esi + 0x52], 0x28    
  0x001E745B  c6465341                mov      byte ptr [esi + 0x53], 0x41    
  0x001E745F  c7465a6f731e00          mov      dword ptr [esi + 0x5a], 0x1e736f 
  0x001E7466  89765e                  mov      dword ptr [esi + 0x5e], esi    
  0x001E7469  89466a                  mov      dword ptr [esi + 0x6a], eax    
  0x001E746C  0fb6430c                movzx    eax, byte ptr [ebx + 0xc]      
  0x001E7470  80667000                and      byte ptr [esi + 0x70], 0       
  0x001E7474  894666                  mov      dword ptr [esi + 0x66], eax    
  0x001E7477  c6466e02                mov      byte ptr [esi + 0x6e], 2       
  0x001E747B  c6466f01                mov      byte ptr [esi + 0x6f], 1       
  0x001E747F  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E7481  57                      push     edi                            
  0x001E7482  e82e280000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7487  eb07                    jmp      0x1e7490                       
                                        ; XREF: 0x001E742C (cond_jump)
  0x001E7489  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001E748B  e8b91b0000              call     0x1e9049                       ; -> sub_001E9049
                                        ; XREF: 0x001E7487 (jump)
  0x001E7490  5f                      pop      edi                            
                                        ; XREF: 0x001E7418 (cond_jump), 0x001E7421 (cond_jump)
  0x001E7491  5e                      pop      esi                            
  0x001E7492  5b                      pop      ebx                            
  0x001E7493  c20800                  ret      8                              
  0x001E7496  8bc1                    mov      eax, ecx                       
  0x001E7498  8b4866                  mov      ecx, dword ptr [eax + 0x66]    
  0x001E749B  83f902                  cmp      ecx, 2                         
  0x001E749E  8d5014                  lea      edx, [eax + 0x14]              
  0x001E74A1  722e                    jb       0x1e74d1                       
  0x001E74A3  83c1fe                  add      ecx, -2                        
  0x001E74A6  56                      push     esi                            
  0x001E74A7  57                      push     edi                            
  0x001E74A8  8d7034                  lea      esi, [eax + 0x34]              
  0x001E74AB  8bc1                    mov      eax, ecx                       
  0x001E74AD  c1e902                  shr      ecx, 2                         
  0x001E74B0  8bfa                    mov      edi, edx                       
  0x001E74B2  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E74B4  8bc8                    mov      ecx, eax                       
  0x001E74B6  83e103                  and      ecx, 3                         
  0x001E74B9  f3a4                    rep movsb byte ptr es:[edi], byte ptr [esi] 
  0x001E74BB  f6023f                  test     byte ptr [edx], 0x3f           
  0x001E74BE  5f                      pop      edi                            
  0x001E74BF  5e                      pop      esi                            
  0x001E74C0  7510                    jne      0x1e74d2                       
  0x001E74C2  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E74CF (cond_jump)
  0x001E74C4  807c020200              cmp      byte ptr [edx + eax + 2], 0    
  0x001E74C9  7507                    jne      0x1e74d2                       
  0x001E74CB  40                      inc      eax                            
  0x001E74CC  83f807                  cmp      eax, 7                         
  0x001E74CF  7ef3                    jle      0x1e74c4                       
                                        ; XREF: 0x001E74A1 (cond_jump)
  0x001E74D1  c3                      ret                                     
                                        ; XREF: 0x001E74C0 (cond_jump), 0x001E74C9 (cond_jump)
  0x001E74D2  e94b0ef8ff              jmp      0x168322                       ; -> sub_00168322
  0x001E74D7  8bc1                    mov      eax, ecx                       
  0x001E74D9  8b4866                  mov      ecx, dword ptr [eax + 0x66]    
  0x001E74DC  49                      dec      ecx                            
  0x001E74DD  56                      push     esi                            
  0x001E74DE  49                      dec      ecx                            
  0x001E74DF  57                      push     edi                            
  0x001E74E0  8d7034                  lea      esi, [eax + 0x34]              
  0x001E74E3  8d7814                  lea      edi, [eax + 0x14]              
  0x001E74E6  8bc1                    mov      eax, ecx                       
  0x001E74E8  c1e902                  shr      ecx, 2                         
  0x001E74EB  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E74ED  8bc8                    mov      ecx, eax                       
  0x001E74EF  83e103                  and      ecx, 3                         
  0x001E74F2  f3a4                    rep movsb byte ptr es:[edi], byte ptr [esi] 
  0x001E74F4  5f                      pop      edi                            
  0x001E74F5  5e                      pop      esi                            
  0x001E74F6  e9270ef8ff              jmp      0x168322                       ; -> sub_00168322
  0x001E74FB  8b5132                  mov      edx, dword ptr [ecx + 0x32]    
  0x001E74FE  8d4114                  lea      eax, [ecx + 0x14]              
  0x001E7501  8910                    mov      dword ptr [eax], edx           
  0x001E7503  8b5136                  mov      edx, dword ptr [ecx + 0x36]    
  0x001E7506  895004                  mov      dword ptr [eax + 4], edx       
  0x001E7509  8b15dc591e00            mov      edx, dword ptr [0x1e59dc]      
  0x001E750F  85d2                    test     edx, edx                       
  0x001E7511  740a                    je       0x1e751d                       
  0x001E7513  50                      push     eax                            
  0x001E7514  51                      push     ecx                            
  0x001E7515  ff520c                  call     dword ptr [edx + 0xc]          
  0x001E7518  e9050ef8ff              jmp      0x168322                       ; -> sub_00168322
                                        ; XREF: 0x001E7511 (cond_jump)
  0x001E751D  c3                      ret                                     

; ============================================================
; Function: sub_001E751E
; Start: 0x001E751E  End: 0x001E7548  Size: 42 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E992D
; ============================================================
sub_001E751E:
  0x001E751E  56                      push     esi                            
  0x001E751F  57                      push     edi                            
  0x001E7520  ff7104                  push     dword ptr [ecx + 4]            
  0x001E7523  8bf2                    mov      esi, edx                       
  0x001E7525  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E7528  e800240000              call     0x1e992d                       ; -> sub_001E992D
  0x001E752D  85ff                    test     edi, edi                       
  0x001E752F  8906                    mov      dword ptr [esi], eax           
  0x001E7531  7415                    je       0x1e7548                       
  0x001E7533  6a00                    push     0                              
  0x001E7535  6a00                    push     0                              
  0x001E7537  57                      push     edi                            
  0x001E7538  ff15e0d11e00            call     dword ptr [0x1ed1e0]           ; -> xbox_KeSetEvent
  0x001E753E  8bcf                    mov      ecx, edi                       
  0x001E7540  5f                      pop      edi                            
  0x001E7541  5e                      pop      esi                            
  0x001E7542  ff2590d11e00            jmp      dword ptr [0x1ed190]           
; end of function
                                        ; XREF: 0x001E7531 (cond_jump)
  0x001E7548  5f                      pop      edi                            
  0x001E7549  5e                      pop      esi                            
  0x001E754A  c3                      ret                                     
  0x001E754B  56                      push     esi                            
  0x001E754C  57                      push     edi                            
  0x001E754D  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E7551  8b4708                  mov      eax, dword ptr [edi + 8]       
  0x001E7554  f680a200000001          test     byte ptr [eax + 0xa2], 1       
  0x001E755B  8b08                    mov      ecx, dword ptr [eax]           
  0x001E755D  7539                    jne      0x1e7598                       
  0x001E755F  f6410402                test     byte ptr [ecx + 4], 2          
  0x001E7563  7533                    jne      0x1e7598                       
  0x001E7565  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E7569  837e0400                cmp      dword ptr [esi + 4], 0         
  0x001E756D  7c20                    jl       0x1e758f                       
  0x001E756F  83660800                and      dword ptr [esi + 8], 0         
  0x001E7573  c60618                  mov      byte ptr [esi], 0x18           
  0x001E7576  c6460105                mov      byte ptr [esi + 1], 5          
  0x001E757A  8b4010                  mov      eax, dword ptr [eax + 0x10]    
  0x001E757D  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001E7580  c7461404000000          mov      dword ptr [esi + 0x14], 4      
  0x001E7587  8b09                    mov      ecx, dword ptr [ecx]           
  0x001E7589  56                      push     esi                            
  0x001E758A  e826270000              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001E756D (cond_jump)
  0x001E758F  c74604040000c0          mov      dword ptr [esi + 4], 0xc0000004 
  0x001E7596  eb0b                    jmp      0x1e75a3                       
                                        ; XREF: 0x001E755D (cond_jump), 0x001E7563 (cond_jump)
  0x001E7598  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E759C  c7460400070080          mov      dword ptr [esi + 4], 0x80000700 
                                        ; XREF: 0x001E7596 (jump)
  0x001E75A3  8bd7                    mov      edx, edi                       
  0x001E75A5  8bce                    mov      ecx, esi                       
  0x001E75A7  e872ffffff              call     0x1e751e                       ; -> sub_001E751E
  0x001E75AC  5f                      pop      edi                            
  0x001E75AD  5e                      pop      esi                            
  0x001E75AE  c20800                  ret      8                              
  0x001E75B1  6a00                    push     0                              
  0x001E75B3  6a00                    push     0                              
  0x001E75B5  ff742410                push     dword ptr [esp + 0x10]         
  0x001E75B9  ff15e0d11e00            call     dword ptr [0x1ed1e0]           ; -> xbox_KeSetEvent
  0x001E75BF  c20800                  ret      8                              
  0x001E75C2  56                      push     esi                            
  0x001E75C3  688028b200              push     0xb22880                       
  0x001E75C8  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E75CE  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E75D2  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E75D4  80660b00                and      byte ptr [esi + 0xb], 0        
  0x001E75D8  6a01                    push     1                              
  0x001E75DA  c6460a01                mov      byte ptr [esi + 0xa], 1        
  0x001E75DE  c6460c08                mov      byte ptr [esi + 0xc], 8        
  0x001E75E2  c6460d01                mov      byte ptr [esi + 0xd], 1        
  0x001E75E6  e838230000              call     0x1e9923                       ; -> sub_001E9923
  0x001E75EB  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E75ED  6a00                    push     0                              
  0x001E75EF  e8331c0000              call     0x1e9227                       ; -> sub_001E9227
  0x001E75F4  804e0408                or       byte ptr [esi + 4], 8          
  0x001E75F8  5e                      pop      esi                            
  0x001E75F9  c20800                  ret      8                              

; ============================================================
; Function: sub_001E75FC
; Start: 0x001E75FC  End: 0x001E761A  Size: 30 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E72BE
; Called by: sub_001E7768
; ============================================================
sub_001E75FC:
  0x001E75FC  8d91a2000000            lea      edx, [ecx + 0xa2]              
  0x001E7602  8a02                    mov      al, byte ptr [edx]             
  0x001E7604  a804                    test     al, 4                          
  0x001E7606  7511                    jne      0x1e7619                       
  0x001E7608  51                      push     ecx                            
  0x001E7609  81c182000000            add      ecx, 0x82                      
  0x001E760F  0c04                    or       al, 4                          
  0x001E7611  51                      push     ecx                            
  0x001E7612  8802                    mov      byte ptr [edx], al             
  0x001E7614  e8a5fcffff              call     0x1e72be                       ; -> sub_001E72BE
                                        ; XREF: 0x001E7606 (cond_jump)
  0x001E7619  c3                      ret                                     
; end of function
  0x001E761A  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E761E  8b4a08                  mov      ecx, dword ptr [edx + 8]       
  0x001E7621  8b01                    mov      eax, dword ptr [ecx]           
  0x001E7623  f681a200000001          test     byte ptr [ecx + 0xa2], 1       
  0x001E762A  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E762E  7506                    jne      0x1e7636                       
  0x001E7630  f6400402                test     byte ptr [eax + 4], 2          
  0x001E7634  7407                    je       0x1e763d                       
                                        ; XREF: 0x001E762E (cond_jump)
  0x001E7636  c7410400070080          mov      dword ptr [ecx + 4], 0x80000700 
                                        ; XREF: 0x001E7634 (cond_jump)
  0x001E763D  817904040000c0          cmp      dword ptr [ecx + 4], 0xc0000004 
  0x001E7644  7550                    jne      0x1e7696                       
  0x001E7646  80790141                cmp      byte ptr [ecx + 1], 0x41       
  0x001E764A  754a                    jne      0x1e7696                       
  0x001E764C  89510c                  mov      dword ptr [ecx + 0xc], edx     
  0x001E764F  33d2                    xor      edx, edx                       
  0x001E7651  56                      push     esi                            
  0x001E7652  c60130                  mov      byte ptr [ecx], 0x30           
  0x001E7655  c6410140                mov      byte ptr [ecx + 1], 0x40       
  0x001E7659  c741084b751e00          mov      dword ptr [ecx + 8], 0x1e754b  
  0x001E7660  895110                  mov      dword ptr [ecx + 0x10], edx    
  0x001E7663  895118                  mov      dword ptr [ecx + 0x18], edx    
  0x001E7666  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E7669  88511c                  mov      byte ptr [ecx + 0x1c], dl      
  0x001E766C  88511d                  mov      byte ptr [ecx + 0x1d], dl      
  0x001E766F  88511e                  mov      byte ptr [ecx + 0x1e], dl      
  0x001E7672  c6412802                mov      byte ptr [ecx + 0x28], 2       
  0x001E7676  c6412901                mov      byte ptr [ecx + 0x29], 1       
  0x001E767A  6689512a                mov      word ptr [ecx + 0x2a], dx      
  0x001E767E  660fb67009              movzx    si, byte ptr [eax + 9]         
  0x001E7683  6689712c                mov      word ptr [ecx + 0x2c], si      
  0x001E7687  6689512e                mov      word ptr [ecx + 0x2e], dx      
  0x001E768B  51                      push     ecx                            
  0x001E768C  8b08                    mov      ecx, dword ptr [eax]           
  0x001E768E  e822260000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7693  5e                      pop      esi                            
  0x001E7694  eb05                    jmp      0x1e769b                       
                                        ; XREF: 0x001E7644 (cond_jump), 0x001E764A (cond_jump)
  0x001E7696  e883feffff              call     0x1e751e                       ; -> sub_001E751E
                                        ; XREF: 0x001E7694 (jump)
  0x001E769B  c20800                  ret      8                              
  0x001E769E  56                      push     esi                            
  0x001E769F  688028b200              push     0xb22880                       
  0x001E76A4  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E76AA  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E76AE  33c0                    xor      eax, eax                       
  0x001E76B0  c6054828b20030          mov      byte ptr [0xb22848], 0x30      
  0x001E76B7  c6054928b20040          mov      byte ptr [0xb22849], 0x40      
  0x001E76BE  c7055028b200c2751e00    mov      dword ptr [0xb22850], 0x1e75c2 
  0x001E76C8  89355428b200            mov      dword ptr [0xb22854], esi      
  0x001E76CE  a35828b200              mov      dword ptr [0xb22858], eax      
  0x001E76D3  a36028b200              mov      dword ptr [0xb22860], eax      
  0x001E76D8  a35c28b200              mov      dword ptr [0xb2285c], eax      
  0x001E76DD  a26428b200              mov      byte ptr [0xb22864], al        
  0x001E76E2  c6056528b20001          mov      byte ptr [0xb22865], 1         
  0x001E76E9  a26628b200              mov      byte ptr [0xb22866], al        
  0x001E76EE  c6057028b20021          mov      byte ptr [0xb22870], 0x21      
  0x001E76F5  c6057128b2000a          mov      byte ptr [0xb22871], 0xa       
  0x001E76FC  66a37228b200            mov      word ptr [0xb22872], ax        
  0x001E7702  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E7707  66890d7428b200          mov      word ptr [0xb22874], cx        
  0x001E770E  66a37628b200            mov      word ptr [0xb22876], ax        
  0x001E7714  e83dfaffff              call     0x1e7156                       ; -> sub_001E7156
  0x001E7719  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E771B  684828b200              push     0xb22848                       
  0x001E7720  e890250000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7725  5e                      pop      esi                            
  0x001E7726  c20800                  ret      8                              
  0x001E7729  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E772D  56                      push     esi                            
  0x001E772E  e8db210000              call     0x1e990e                       ; -> sub_001E990E
  0x001E7733  8bf0                    mov      esi, eax                       
  0x001E7735  8b4e0e                  mov      ecx, dword ptr [esi + 0xe]     
  0x001E7738  804e0402                or       byte ptr [esi + 4], 2          
  0x001E773C  85c9                    test     ecx, ecx                       
  0x001E773E  741d                    je       0x1e775d                       
  0x001E7740  807e0a01                cmp      byte ptr [esi + 0xa], 1        
  0x001E7744  750d                    jne      0x1e7753                       
  0x001E7746  a1dc591e00              mov      eax, dword ptr [0x1e59dc]      
  0x001E774B  85c0                    test     eax, eax                       
  0x001E774D  7404                    je       0x1e7753                       
  0x001E774F  51                      push     ecx                            
  0x001E7750  ff5008                  call     dword ptr [eax + 8]            
                                        ; XREF: 0x001E7744 (cond_jump), 0x001E774D (cond_jump)
  0x001E7753  8b4e0e                  mov      ecx, dword ptr [esi + 0xe]     
  0x001E7756  e8a1feffff              call     0x1e75fc                       ; -> sub_001E75FC
  0x001E775B  eb07                    jmp      0x1e7764                       
                                        ; XREF: 0x001E773E (cond_jump)
  0x001E775D  8bce                    mov      ecx, esi                       
  0x001E775F  e81efaffff              call     0x1e7182                       ; -> sub_001E7182
                                        ; XREF: 0x001E775B (jump)
  0x001E7764  5e                      pop      esi                            
  0x001E7765  c20400                  ret      4                              

; ============================================================
; Function: sub_001E7768
; Start: 0x001E7768  End: 0x001E77DF  Size: 119 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E75FC
; Called by: sub_001E6EAF
; ============================================================
sub_001E7768:
  0x001E7768  55                      push     ebp                            
  0x001E7769  8bec                    mov      ebp, esp                       
  0x001E776B  83ec14                  sub      esp, 0x14                      
  0x001E776E  53                      push     ebx                            
  0x001E776F  56                      push     esi                            
  0x001E7770  8bf1                    mov      esi, ecx                       
  0x001E7772  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E7778  33db                    xor      ebx, ebx                       
  0x001E777A  391e                    cmp      dword ptr [esi], ebx           
  0x001E777C  8ac8                    mov      cl, al                         
  0x001E777E  884dff                  mov      byte ptr [ebp - 1], cl         
  0x001E7781  745c                    je       0x1e77df                       
  0x001E7783  80bea300000001          cmp      byte ptr [esi + 0xa3], 1       
  0x001E778A  750d                    jne      0x1e7799                       
  0x001E778C  a1dc591e00              mov      eax, dword ptr [0x1e59dc]      
  0x001E7791  3bc3                    cmp      eax, ebx                       
  0x001E7793  7404                    je       0x1e7799                       
  0x001E7795  56                      push     esi                            
  0x001E7796  ff5004                  call     dword ptr [eax + 4]            
                                        ; XREF: 0x001E778A (cond_jump), 0x001E7793 (cond_jump)
  0x001E7799  808ea200000001          or       byte ptr [esi + 0xa2], 1       
  0x001E77A0  8d45f4                  lea      eax, [ebp - 0xc]               
  0x001E77A3  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E77A6  8d45f4                  lea      eax, [ebp - 0xc]               
  0x001E77A9  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E77AC  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E77AF  8bce                    mov      ecx, esi                       
  0x001E77B1  885dec                  mov      byte ptr [ebp - 0x14], bl      
  0x001E77B4  c645ee04                mov      byte ptr [ebp - 0x12], 4       
  0x001E77B8  895df0                  mov      dword ptr [ebp - 0x10], ebx    
  0x001E77BB  89869e000000            mov      dword ptr [esi + 0x9e], eax    
  0x001E77C1  e836feffff              call     0x1e75fc                       ; -> sub_001E75FC
  0x001E77C6  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E77C9  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E77CF  53                      push     ebx                            
  0x001E77D0  53                      push     ebx                            
  0x001E77D1  53                      push     ebx                            
  0x001E77D2  53                      push     ebx                            
  0x001E77D3  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E77D6  50                      push     eax                            
  0x001E77D7  ff15e4d11e00            call     dword ptr [0x1ed1e4]           ; -> xbox_KeWaitForSingleObject
  0x001E77DD  eb06                    jmp      0x1e77e5                       
; end of function
                                        ; XREF: 0x001E7781 (cond_jump)
  0x001E77DF  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
                                        ; XREF: 0x001E77DD (jump)
  0x001E77E5  0fb686a3000000          movzx    eax, byte ptr [esi + 0xa3]     
  0x001E77EC  8d0440                  lea      eax, [eax + eax*2]             
  0x001E77EF  8d04c5a85a1e00          lea      eax, [eax*8 + 0x1e5aa8]        
  0x001E77F6  fe00                    inc      byte ptr [eax]                 
  0x001E77F8  a13028b200              mov      eax, dword ptr [0xb22830]      
  0x001E77FD  8986a4000000            mov      dword ptr [esi + 0xa4], eax    
  0x001E7803  89353028b200            mov      dword ptr [0xb22830], esi      
  0x001E7809  5e                      pop      esi                            
  0x001E780A  5b                      pop      ebx                            
  0x001E780B  c9                      leave                                   
  0x001E780C  c3                      ret                                     

; ============================================================
; Function: sub_001E780D
; Start: 0x001E780D  End: 0x001E7923  Size: 278 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E992D, sub_001E9CB5
; ============================================================
sub_001E780D:
  0x001E780D  55                      push     ebp                            
  0x001E780E  8bec                    mov      ebp, esp                       
  0x001E7810  51                      push     ecx                            
  0x001E7811  53                      push     ebx                            
  0x001E7812  56                      push     esi                            
  0x001E7813  8bd9                    mov      ebx, ecx                       
  0x001E7815  57                      push     edi                            
  0x001E7816  8b3b                    mov      edi, dword ptr [ebx]           
  0x001E7818  8bf2                    mov      esi, edx                       
  0x001E781A  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E7820  85ff                    test     edi, edi                       
  0x001E7822  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E7825  0f84f8000000            je       0x1e7923                       
  0x001E782B  f6470402                test     byte ptr [edi + 4], 2          
  0x001E782F  0f85ee000000            jne      0x1e7923                       
  0x001E7835  807f0d00                cmp      byte ptr [edi + 0xd], 0        
  0x001E7839  750b                    jne      0x1e7846                       
  0x001E783B  c70632000000            mov      dword ptr [esi], 0x32          
  0x001E7841  e9e3000000              jmp      0x1e7929                       
                                        ; XREF: 0x001E7839 (cond_jump)
  0x001E7846  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001E7849  85c0                    test     eax, eax                       
  0x001E784B  7419                    je       0x1e7866                       
  0x001E784D  8d4e0c                  lea      ecx, [esi + 0xc]               
  0x001E7850  51                      push     ecx                            
  0x001E7851  ff35bcd11e00            push     dword ptr [0x1ed1bc]           
  0x001E7857  50                      push     eax                            
  0x001E7858  ff1598d11e00            call     dword ptr [0x1ed198]           ; -> xbox_ObReferenceObjectByHandle
  0x001E785E  85c0                    test     eax, eax                       
  0x001E7860  7d08                    jge      0x1e786a                       
  0x001E7862  83660400                and      dword ptr [esi + 4], 0         
                                        ; XREF: 0x001E784B (cond_jump)
  0x001E7866  83660c00                and      dword ptr [esi + 0xc], 0       
                                        ; XREF: 0x001E7860 (cond_jump)
  0x001E786A  8a470d                  mov      al, byte ptr [edi + 0xd]       
  0x001E786D  3a4641                  cmp      al, byte ptr [esi + 0x41]      
  0x001E7870  7303                    jae      0x1e7875                       
  0x001E7872  884641                  mov      byte ptr [esi + 0x41], al      
                                        ; XREF: 0x001E7870 (cond_jump)
  0x001E7875  0fb6470a                movzx    eax, byte ptr [edi + 0xa]      
  0x001E7879  8d0440                  lea      eax, [eax + eax*2]             
  0x001E787C  f604c5bc5a1e0002        test     byte ptr [eax*8 + 0x1e5abc], 2 
  0x001E7884  8d4e42                  lea      ecx, [esi + 0x42]              
  0x001E7887  7503                    jne      0x1e788c                       
  0x001E7889  8d4e40                  lea      ecx, [esi + 0x40]              
                                        ; XREF: 0x001E7887 (cond_jump)
  0x001E788C  837b1000                cmp      dword ptr [ebx + 0x10], 0      
  0x001E7890  8d4610                  lea      eax, [esi + 0x10]              
  0x001E7893  89761c                  mov      dword ptr [esi + 0x1c], esi    
  0x001E7896  c746181a761e00          mov      dword ptr [esi + 0x18], 0x1e761a 
  0x001E789D  7425                    je       0x1e78c4                       
  0x001E789F  c60028                  mov      byte ptr [eax], 0x28           
  0x001E78A2  c6461141                mov      byte ptr [esi + 0x11], 0x41    
  0x001E78A6  8b5310                  mov      edx, dword ptr [ebx + 0x10]    
  0x001E78A9  80662d00                and      byte ptr [esi + 0x2d], 0       
  0x001E78AD  80662e00                and      byte ptr [esi + 0x2e], 0       
  0x001E78B1  894e28                  mov      dword ptr [esi + 0x28], ecx    
  0x001E78B4  0fb64e41                movzx    ecx, byte ptr [esi + 0x41]     
  0x001E78B8  895620                  mov      dword ptr [esi + 0x20], edx    
  0x001E78BB  894e24                  mov      dword ptr [esi + 0x24], ecx    
  0x001E78BE  c6462c01                mov      byte ptr [esi + 0x2c], 1       
  0x001E78C2  eb4a                    jmp      0x1e790e                       
                                        ; XREF: 0x001E789D (cond_jump)
  0x001E78C4  83662000                and      dword ptr [esi + 0x20], 0      
  0x001E78C8  80662d00                and      byte ptr [esi + 0x2d], 0       
  0x001E78CC  80662e00                and      byte ptr [esi + 0x2e], 0       
  0x001E78D0  894e28                  mov      dword ptr [esi + 0x28], ecx    
  0x001E78D3  8a4e41                  mov      cl, byte ptr [esi + 0x41]      
  0x001E78D6  0fb6d1                  movzx    edx, cl                        
  0x001E78D9  895624                  mov      dword ptr [esi + 0x24], edx    
  0x001E78DC  660fb65640              movzx    dx, byte ptr [esi + 0x40]      
  0x001E78E1  6681ca0002              or       dx, 0x200                      
  0x001E78E6  c60030                  mov      byte ptr [eax], 0x30           
  0x001E78E9  c6461140                mov      byte ptr [esi + 0x11], 0x40    
  0x001E78ED  c6462c01                mov      byte ptr [esi + 0x2c], 1       
  0x001E78F1  c6463821                mov      byte ptr [esi + 0x38], 0x21    
  0x001E78F5  c6463909                mov      byte ptr [esi + 0x39], 9       
  0x001E78F9  6689563a                mov      word ptr [esi + 0x3a], dx      
  0x001E78FD  660fb65705              movzx    dx, byte ptr [edi + 5]         
  0x001E7902  660fb6c9                movzx    cx, cl                         
  0x001E7906  6689563c                mov      word ptr [esi + 0x3c], dx      
  0x001E790A  66894e3e                mov      word ptr [esi + 0x3e], cx      
                                        ; XREF: 0x001E78C2 (jump)
  0x001E790E  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001E7911  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E7913  50                      push     eax                            
  0x001E7914  e89c230000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7919  50                      push     eax                            
  0x001E791A  e80e200000              call     0x1e992d                       ; -> sub_001E992D
  0x001E791F  8906                    mov      dword ptr [esi], eax           
  0x001E7921  eb06                    jmp      0x1e7929                       
; end of function
                                        ; XREF: 0x001E7825 (cond_jump), 0x001E782F (cond_jump)
  0x001E7923  c7068f040000            mov      dword ptr [esi], 0x48f         
                                        ; XREF: 0x001E7841 (jump), 0x001E7921 (jump)
  0x001E7929  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001E792C  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E7932  8b06                    mov      eax, dword ptr [esi]           
  0x001E7934  5f                      pop      edi                            
  0x001E7935  5e                      pop      esi                            
  0x001E7936  5b                      pop      ebx                            
  0x001E7937  c9                      leave                                   
  0x001E7938  c3                      ret                                     
  0x001E7939  53                      push     ebx                            
  0x001E793A  56                      push     esi                            
  0x001E793B  688028b200              push     0xb22880                       
  0x001E7940  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E7946  66813d3c28b2005e04      cmp      word ptr [0xb2283c], 0x45e     
  0x001E794F  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E7953  7573                    jne      0x1e79c8                       
  0x001E7955  66833d3e28b2001d        cmp      word ptr [0xb2283e], 0x1d      
  0x001E795D  7569                    jne      0x1e79c8                       
  0x001E795F  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7961  e8a1200000              call     0x1e9a07                       ; -> sub_001E9A07
  0x001E7966  80780503                cmp      byte ptr [eax + 5], 3          
  0x001E796A  755c                    jne      0x1e79c8                       
  0x001E796C  80780701                cmp      byte ptr [eax + 7], 1          
  0x001E7970  7556                    jne      0x1e79c8                       
  0x001E7972  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E7976  33db                    xor      ebx, ebx                       
  0x001E7978  c60030                  mov      byte ptr [eax], 0x30           
  0x001E797B  c6400140                mov      byte ptr [eax + 1], 0x40       
  0x001E797F  c740089e761e00          mov      dword ptr [eax + 8], 0x1e769e  
  0x001E7986  89700c                  mov      dword ptr [eax + 0xc], esi     
  0x001E7989  895810                  mov      dword ptr [eax + 0x10], ebx    
  0x001E798C  895818                  mov      dword ptr [eax + 0x18], ebx    
  0x001E798F  895814                  mov      dword ptr [eax + 0x14], ebx    
  0x001E7992  88581c                  mov      byte ptr [eax + 0x1c], bl      
  0x001E7995  c6401d01                mov      byte ptr [eax + 0x1d], 1       
  0x001E7999  88581e                  mov      byte ptr [eax + 0x1e], bl      
  0x001E799C  c6402821                mov      byte ptr [eax + 0x28], 0x21    
  0x001E79A0  c640290b                mov      byte ptr [eax + 0x29], 0xb     
  0x001E79A4  6689582a                mov      word ptr [eax + 0x2a], bx      
  0x001E79A8  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E79AD  6689482c                mov      word ptr [eax + 0x2c], cx      
  0x001E79B1  6689582e                mov      word ptr [eax + 0x2e], bx      
  0x001E79B5  e89cf7ffff              call     0x1e7156                       ; -> sub_001E7156
  0x001E79BA  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E79BC  684828b200              push     0xb22848                       
  0x001E79C1  e8ef220000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E79C6  eb23                    jmp      0x1e79eb                       
                                        ; XREF: 0x001E7953 (cond_jump), 0x001E795D (cond_jump), 0x001E796A (cond_jump), 0x001E7970 (cond_jump)
  0x001E79C8  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E79CA  33db                    xor      ebx, ebx                       
  0x001E79CC  53                      push     ebx                            
  0x001E79CD  e8401f0000              call     0x1e9912                       ; -> sub_001E9912
  0x001E79D2  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E79D4  6800040080              push     0x80000400                     
  0x001E79D9  e849180000              call     0x1e9227                       ; -> sub_001E9227
  0x001E79DE  806604fe                and      byte ptr [esi + 4], 0xfe       
  0x001E79E2  891e                    mov      dword ptr [esi], ebx           
  0x001E79E4  66ff0d2a28b200          dec      word ptr [0xb2282a]            
                                        ; XREF: 0x001E79C6 (jump)
  0x001E79EB  5e                      pop      esi                            
  0x001E79EC  5b                      pop      ebx                            
  0x001E79ED  c20800                  ret      8                              

; ============================================================
; Function: sub_001E79F0
; Start: 0x001E79F0  End: 0x001E7A32  Size: 66 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E71A5
; ============================================================
sub_001E79F0:
  0x001E79F0  55                      push     ebp                            
  0x001E79F1  8bec                    mov      ebp, esp                       
  0x001E79F3  83ec28                  sub      esp, 0x28                      
  0x001E79F6  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E79F9  56                      push     esi                            
  0x001E79FA  57                      push     edi                            
  0x001E79FB  33ff                    xor      edi, edi                       
  0x001E79FD  8bf2                    mov      esi, edx                       
  0x001E79FF  884dfc                  mov      byte ptr [ebp - 4], cl         
  0x001E7A02  897df4                  mov      dword ptr [ebp - 0xc], edi     
  0x001E7A05  897df0                  mov      dword ptr [ebp - 0x10], edi    
  0x001E7A08  8938                    mov      dword ptr [eax], edi           
  0x001E7A0A  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E7A10  8a4dfc                  mov      cl, byte ptr [ebp - 4]         
  0x001E7A13  8bd6                    mov      edx, esi                       
  0x001E7A15  8845fb                  mov      byte ptr [ebp - 5], al         
  0x001E7A18  e888f7ffff              call     0x1e71a5                       ; -> sub_001E71A5
  0x001E7A1D  8bf0                    mov      esi, eax                       
  0x001E7A1F  3bf7                    cmp      esi, edi                       
  0x001E7A21  8975ec                  mov      dword ptr [ebp - 0x14], esi    
  0x001E7A24  750c                    jne      0x1e7a32                       
  0x001E7A26  c745f48f040000          mov      dword ptr [ebp - 0xc], 0x48f   
  0x001E7A2D  e9ec010000              jmp      0x1e7c1e                       
; end of function
                                        ; XREF: 0x001E7A24 (cond_jump)
  0x001E7A32  397e0e                  cmp      dword ptr [esi + 0xe], edi     
  0x001E7A35  740c                    je       0x1e7a43                       
  0x001E7A37  c745f420000000          mov      dword ptr [ebp - 0xc], 0x20    
  0x001E7A3E  e9db010000              jmp      0x1e7c1e                       
                                        ; XREF: 0x001E7A35 (cond_jump)
  0x001E7A43  0fb645fc                movzx    eax, byte ptr [ebp - 4]        
  0x001E7A47  8d0c40                  lea      ecx, [eax + eax*2]             
  0x001E7A4A  8d0ccda85a1e00          lea      ecx, [ecx*8 + 0x1e5aa8]        
  0x001E7A51  8a01                    mov      al, byte ptr [ecx]             
  0x001E7A53  84c0                    test     al, al                         
  0x001E7A55  750c                    jne      0x1e7a63                       
  0x001E7A57  c745f40e000000          mov      dword ptr [ebp - 0xc], 0xe     
  0x001E7A5E  e9bb010000              jmp      0x1e7c1e                       
                                        ; XREF: 0x001E7A55 (cond_jump)
  0x001E7A63  8b550c                  mov      edx, dword ptr [ebp + 0xc]     
  0x001E7A66  fec8                    dec      al                             
  0x001E7A68  8801                    mov      byte ptr [ecx], al             
  0x001E7A6A  53                      push     ebx                            
  0x001E7A6B  8b1d3028b200            mov      ebx, dword ptr [0xb22830]      
  0x001E7A71  8b83a4000000            mov      eax, dword ptr [ebx + 0xa4]    
  0x001E7A77  a33028b200              mov      dword ptr [0xb22830], eax      
  0x001E7A7C  33c0                    xor      eax, eax                       
  0x001E7A7E  6a2a                    push     0x2a                           
  0x001E7A80  59                      pop      ecx                            
  0x001E7A81  8bfb                    mov      edi, ebx                       
  0x001E7A83  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E7A85  8a45fc                  mov      al, byte ptr [ebp - 4]         
  0x001E7A88  8883a3000000            mov      byte ptr [ebx + 0xa3], al      
  0x001E7A8E  8933                    mov      dword ptr [ebx], esi           
  0x001E7A90  8a02                    mov      al, byte ptr [edx]             
  0x001E7A92  c0e003                  shl      al, 3                          
  0x001E7A95  3283a2000000            xor      al, byte ptr [ebx + 0xa2]      
  0x001E7A9B  8bcb                    mov      ecx, ebx                       
  0x001E7A9D  2408                    and      al, 8                          
  0x001E7A9F  3083a2000000            xor      byte ptr [ebx + 0xa2], al      
  0x001E7AA5  895de8                  mov      dword ptr [ebp - 0x18], ebx    
  0x001E7AA8  895e0e                  mov      dword ptr [esi + 0xe], ebx     
  0x001E7AAB  c745f001000000          mov      dword ptr [ebp - 0x10], 1      
  0x001E7AB2  e85cf7ffff              call     0x1e7213                       ; -> sub_001E7213
  0x001E7AB7  85c0                    test     eax, eax                       
  0x001E7AB9  0f8c55010000            jl       0x1e7c14                       
  0x001E7ABF  0fb6460a                movzx    eax, byte ptr [esi + 0xa]      
  0x001E7AC3  8d0440                  lea      eax, [eax + eax*2]             
  0x001E7AC6  8b04c5ac5a1e00          mov      eax, dword ptr [eax*8 + 0x1e5aac] 
  0x001E7ACD  0fb608                  movzx    ecx, byte ptr [eax]            
  0x001E7AD0  8b7001                  mov      esi, dword ptr [eax + 1]       
  0x001E7AD3  8bc1                    mov      eax, ecx                       
  0x001E7AD5  c1e902                  shr      ecx, 2                         
  0x001E7AD8  8d5334                  lea      edx, [ebx + 0x34]              
  0x001E7ADB  8bfa                    mov      edi, edx                       
  0x001E7ADD  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E7ADF  8bc8                    mov      ecx, eax                       
  0x001E7AE1  83e103                  and      ecx, 3                         
  0x001E7AE4  f3a4                    rep movsb byte ptr es:[edi], byte ptr [esi] 
  0x001E7AE6  6a07                    push     7                              
  0x001E7AE8  59                      pop      ecx                            
  0x001E7AE9  8365dc00                and      dword ptr [ebp - 0x24], 0      
  0x001E7AED  8bf2                    mov      esi, edx                       
  0x001E7AEF  8d7b14                  lea      edi, [ebx + 0x14]              
  0x001E7AF2  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E7AF4  66a5                    movsw    word ptr es:[edi], word ptr [esi] 
  0x001E7AF6  8b75ec                  mov      esi, dword ptr [ebp - 0x14]    
  0x001E7AF9  8d45e0                  lea      eax, [ebp - 0x20]              
  0x001E7AFC  8945e4                  mov      dword ptr [ebp - 0x1c], eax    
  0x001E7AFF  8d45e0                  lea      eax, [ebp - 0x20]              
  0x001E7B02  8945e0                  mov      dword ptr [ebp - 0x20], eax    
  0x001E7B05  0fb6460c                movzx    eax, byte ptr [esi + 0xc]      
  0x001E7B09  83636200                and      dword ptr [ebx + 0x62], 0      
  0x001E7B0D  80637000                and      byte ptr [ebx + 0x70], 0       
  0x001E7B11  8d4dd8                  lea      ecx, [ebp - 0x28]              
  0x001E7B14  894b5e                  mov      dword ptr [ebx + 0x5e], ecx    
  0x001E7B17  8d4b32                  lea      ecx, [ebx + 0x32]              
  0x001E7B1A  8d7b52                  lea      edi, [ebx + 0x52]              
  0x001E7B1D  c60730                  mov      byte ptr [edi], 0x30           
  0x001E7B20  c6435340                mov      byte ptr [ebx + 0x53], 0x40    
  0x001E7B24  c7435ab1751e00          mov      dword ptr [ebx + 0x5a], 0x1e75b1 
  0x001E7B2B  894b6a                  mov      dword ptr [ebx + 0x6a], ecx    
  0x001E7B2E  894366                  mov      dword ptr [ebx + 0x66], eax    
  0x001E7B31  c6436e02                mov      byte ptr [ebx + 0x6e], 2       
  0x001E7B35  c6436f01                mov      byte ptr [ebx + 0x6f], 1       
  0x001E7B39  c6437aa1                mov      byte ptr [ebx + 0x7a], 0xa1    
  0x001E7B3D  c6437b01                mov      byte ptr [ebx + 0x7b], 1       
  0x001E7B41  66c7437c0001            mov      word ptr [ebx + 0x7c], 0x100   
  0x001E7B47  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E7B4C  66894b7e                mov      word ptr [ebx + 0x7e], cx      
  0x001E7B50  66898380000000          mov      word ptr [ebx + 0x80], ax      
  0x001E7B57  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7B59  57                      push     edi                            
  0x001E7B5A  c645d801                mov      byte ptr [ebp - 0x28], 1       
  0x001E7B5E  c645da04                mov      byte ptr [ebp - 0x26], 4       
  0x001E7B62  e84e210000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7B67  8a4dfb                  mov      cl, byte ptr [ebp - 5]         
  0x001E7B6A  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E7B70  33c0                    xor      eax, eax                       
  0x001E7B72  50                      push     eax                            
  0x001E7B73  50                      push     eax                            
  0x001E7B74  50                      push     eax                            
  0x001E7B75  50                      push     eax                            
  0x001E7B76  8d45d8                  lea      eax, [ebp - 0x28]              
  0x001E7B79  50                      push     eax                            
  0x001E7B7A  ff15e4d11e00            call     dword ptr [0x1ed1e4]           ; -> xbox_KeWaitForSingleObject
  0x001E7B80  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E7B86  833b00                  cmp      dword ptr [ebx], 0             
  0x001E7B89  8845fb                  mov      byte ptr [ebp - 5], al         
  0x001E7B8C  747d                    je       0x1e7c0b                       
  0x001E7B8E  f6460402                test     byte ptr [esi + 4], 2          
  0x001E7B92  7577                    jne      0x1e7c0b                       
  0x001E7B94  837b5600                cmp      dword ptr [ebx + 0x56], 0      
  0x001E7B98  7c10                    jl       0x1e7baa                       
  0x001E7B9A  0fb6460a                movzx    eax, byte ptr [esi + 0xa]      
  0x001E7B9E  8d0440                  lea      eax, [eax + eax*2]             
  0x001E7BA1  8bcb                    mov      ecx, ebx                       
  0x001E7BA3  ff14c5b85a1e00          call     dword ptr [eax*8 + 0x1e5ab8]   
                                        ; XREF: 0x001E7B98 (cond_jump)
  0x001E7BAA  80bba300000001          cmp      byte ptr [ebx + 0xa3], 1       
  0x001E7BB1  750c                    jne      0x1e7bbf                       
  0x001E7BB3  a1dc591e00              mov      eax, dword ptr [0x1e59dc]      
  0x001E7BB8  85c0                    test     eax, eax                       
  0x001E7BBA  7403                    je       0x1e7bbf                       
  0x001E7BBC  53                      push     ebx                            
  0x001E7BBD  ff10                    call     dword ptr [eax]                
                                        ; XREF: 0x001E7BB1 (cond_jump), 0x001E7BBA (cond_jump)
  0x001E7BBF  8b430c                  mov      eax, dword ptr [ebx + 0xc]     
  0x001E7BC2  894362                  mov      dword ptr [ebx + 0x62], eax    
  0x001E7BC5  8d4332                  lea      eax, [ebx + 0x32]              
  0x001E7BC8  c60728                  mov      byte ptr [edi], 0x28           
  0x001E7BCB  c6435341                mov      byte ptr [ebx + 0x53], 0x41    
  0x001E7BCF  c7435a6f731e00          mov      dword ptr [ebx + 0x5a], 0x1e736f 
  0x001E7BD6  895b5e                  mov      dword ptr [ebx + 0x5e], ebx    
  0x001E7BD9  89436a                  mov      dword ptr [ebx + 0x6a], eax    
  0x001E7BDC  0fb6460c                movzx    eax, byte ptr [esi + 0xc]      
  0x001E7BE0  80637000                and      byte ptr [ebx + 0x70], 0       
  0x001E7BE4  f683a200000008          test     byte ptr [ebx + 0xa2], 8       
  0x001E7BEB  894366                  mov      dword ptr [ebx + 0x66], eax    
  0x001E7BEE  c6436e02                mov      byte ptr [ebx + 0x6e], 2       
  0x001E7BF2  c6436f01                mov      byte ptr [ebx + 0x6f], 1       
  0x001E7BF6  7408                    je       0x1e7c00                       
  0x001E7BF8  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7BFA  57                      push     edi                            
  0x001E7BFB  e8b5200000              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001E7BF6 (cond_jump)
  0x001E7C00  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E7C03  8365f000                and      dword ptr [ebp - 0x10], 0      
  0x001E7C07  8918                    mov      dword ptr [eax], ebx           
  0x001E7C09  eb12                    jmp      0x1e7c1d                       
                                        ; XREF: 0x001E7B8C (cond_jump), 0x001E7B92 (cond_jump)
  0x001E7C0B  c745f48f040000          mov      dword ptr [ebp - 0xc], 0x48f   
  0x001E7C12  eb09                    jmp      0x1e7c1d                       
                                        ; XREF: 0x001E7AB9 (cond_jump)
  0x001E7C14  50                      push     eax                            
  0x001E7C15  e8131d0000              call     0x1e992d                       ; -> sub_001E992D
  0x001E7C1A  8945f4                  mov      dword ptr [ebp - 0xc], eax     
                                        ; XREF: 0x001E7C09 (jump), 0x001E7C12 (jump)
  0x001E7C1D  5b                      pop      ebx                            
                                        ; XREF: 0x001E7A2D (jump), 0x001E7A3E (jump), 0x001E7A5E (jump)
  0x001E7C1E  8a4dfb                  mov      cl, byte ptr [ebp - 5]         
  0x001E7C21  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E7C27  837df000                cmp      dword ptr [ebp - 0x10], 0      
  0x001E7C2B  5f                      pop      edi                            
  0x001E7C2C  5e                      pop      esi                            
  0x001E7C2D  7408                    je       0x1e7c37                       
  0x001E7C2F  8b4de8                  mov      ecx, dword ptr [ebp - 0x18]    
  0x001E7C32  e831fbffff              call     0x1e7768                       ; -> sub_001E7768
                                        ; XREF: 0x001E7C2D (cond_jump)
  0x001E7C37  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001E7C3A  c9                      leave                                   
  0x001E7C3B  c20800                  ret      8                              

; ============================================================
; Function: sub_001E7C3E
; Start: 0x001E7C3E  End: 0x001E7CC8  Size: 138 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7156, sub_001E9CB5
; ============================================================
sub_001E7C3E:
  0x001E7C3E  56                      push     esi                            
  0x001E7C3F  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E7C43  33c9                    xor      ecx, ecx                       
  0x001E7C45  6a12                    push     0x12                           
  0x001E7C47  58                      pop      eax                            
  0x001E7C48  c6054828b20030          mov      byte ptr [0xb22848], 0x30      
  0x001E7C4F  c6054928b20040          mov      byte ptr [0xb22849], 0x40      
  0x001E7C56  c7055028b20039791e00    mov      dword ptr [0xb22850], 0x1e7939 
  0x001E7C60  89355428b200            mov      dword ptr [0xb22854], esi      
  0x001E7C66  890d5828b200            mov      dword ptr [0xb22858], ecx      
  0x001E7C6C  c7056028b2003428b200    mov      dword ptr [0xb22860], 0xb22834 
  0x001E7C76  a35c28b200              mov      dword ptr [0xb2285c], eax      
  0x001E7C7B  c6056428b20002          mov      byte ptr [0xb22864], 2         
  0x001E7C82  c6056528b20001          mov      byte ptr [0xb22865], 1         
  0x001E7C89  880d6628b200            mov      byte ptr [0xb22866], cl        
  0x001E7C8F  c6057028b20080          mov      byte ptr [0xb22870], 0x80      
  0x001E7C96  c6057128b20006          mov      byte ptr [0xb22871], 6         
  0x001E7C9D  66c7057228b2000001      mov      word ptr [0xb22872], 0x100     
  0x001E7CA6  66890d7428b200          mov      word ptr [0xb22874], cx        
  0x001E7CAD  66a37628b200            mov      word ptr [0xb22876], ax        
  0x001E7CB3  e89ef4ffff              call     0x1e7156                       ; -> sub_001E7156
  0x001E7CB8  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7CBA  684828b200              push     0xb22848                       
  0x001E7CBF  e8f11f0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7CC4  5e                      pop      esi                            
  0x001E7CC5  c20800                  ret      8                              
; end of function
  0x001E7CC8  53                      push     ebx                            
  0x001E7CC9  688028b200              push     0xb22880                       
  0x001E7CCE  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E7CD4  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E7CD8  33db                    xor      ebx, ebx                       
  0x001E7CDA  395804                  cmp      dword ptr [eax + 4], ebx       
  0x001E7CDD  7d0f                    jge      0x1e7cee                       
  0x001E7CDF  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E7CE3  50                      push     eax                            
  0x001E7CE4  e855ffffff              call     0x1e7c3e                       ; -> sub_001E7C3E
  0x001E7CE9  e989000000              jmp      0x1e7d77                       
                                        ; XREF: 0x001E7CDD (cond_jump)
  0x001E7CEE  a03828b200              mov      al, byte ptr [0xb22838]        
  0x001E7CF3  fec8                    dec      al                             
  0x001E7CF5  56                      push     esi                            
  0x001E7CF6  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E7CFA  88460a                  mov      byte ptr [esi + 0xa], al       
  0x001E7CFD  a03928b200              mov      al, byte ptr [0xb22839]        
  0x001E7D02  8a4e0a                  mov      cl, byte ptr [esi + 0xa]       
  0x001E7D05  80f903                  cmp      cl, 3                          
  0x001E7D08  88460b                  mov      byte ptr [esi + 0xb], al       
  0x001E7D0B  a03a28b200              mov      al, byte ptr [0xb2283a]        
  0x001E7D10  88460c                  mov      byte ptr [esi + 0xc], al       
  0x001E7D13  a03b28b200              mov      al, byte ptr [0xb2283b]        
  0x001E7D18  88460d                  mov      byte ptr [esi + 0xd], al       
  0x001E7D1B  7338                    jae      0x1e7d55                       
  0x001E7D1D  a03a28b200              mov      al, byte ptr [0xb2283a]        
  0x001E7D22  3c02                    cmp      al, 2                          
  0x001E7D24  722f                    jb       0x1e7d55                       
  0x001E7D26  3c20                    cmp      al, 0x20                       
  0x001E7D28  772b                    ja       0x1e7d55                       
  0x001E7D2A  8a460c                  mov      al, byte ptr [esi + 0xc]       
  0x001E7D2D  3a4606                  cmp      al, byte ptr [esi + 6]         
  0x001E7D30  7723                    ja       0x1e7d55                       
  0x001E7D32  385e09                  cmp      byte ptr [esi + 9], bl         
  0x001E7D35  7408                    je       0x1e7d3f                       
  0x001E7D37  8a460d                  mov      al, byte ptr [esi + 0xd]       
  0x001E7D3A  3a4607                  cmp      al, byte ptr [esi + 7]         
  0x001E7D3D  7716                    ja       0x1e7d55                       
                                        ; XREF: 0x001E7D35 (cond_jump)
  0x001E7D3F  51                      push     ecx                            
  0x001E7D40  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7D42  e8dc1b0000              call     0x1e9923                       ; -> sub_001E9923
  0x001E7D47  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7D49  53                      push     ebx                            
  0x001E7D4A  e8d8140000              call     0x1e9227                       ; -> sub_001E9227
  0x001E7D4F  804e0408                or       byte ptr [esi + 4], 8          
  0x001E7D53  eb21                    jmp      0x1e7d76                       
                                        ; XREF: 0x001E7D1B (cond_jump), 0x001E7D24 (cond_jump), 0x001E7D28 (cond_jump), 0x001E7D30 (cond_jump), 0x001E7D3D (cond_jump)
  0x001E7D55  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7D57  53                      push     ebx                            
  0x001E7D58  e8b51b0000              call     0x1e9912                       ; -> sub_001E9912
  0x001E7D5D  8b0e                    mov      ecx, dword ptr [esi]           
  0x001E7D5F  6800040080              push     0x80000400                     
  0x001E7D64  e8be140000              call     0x1e9227                       ; -> sub_001E9227
  0x001E7D69  806604fe                and      byte ptr [esi + 4], 0xfe       
  0x001E7D6D  891e                    mov      dword ptr [esi], ebx           
  0x001E7D6F  66ff0d2a28b200          dec      word ptr [0xb2282a]            
                                        ; XREF: 0x001E7D53 (jump)
  0x001E7D76  5e                      pop      esi                            
                                        ; XREF: 0x001E7CE9 (jump)
  0x001E7D77  5b                      pop      ebx                            
  0x001E7D78  c20800                  ret      8                              
  0x001E7D7B  66a12a28b200            mov      ax, word ptr [0xb2282a]        
  0x001E7D81  53                      push     ebx                            
  0x001E7D82  33db                    xor      ebx, ebx                       
  0x001E7D84  32c9                    xor      cl, cl                         
  0x001E7D86  663b052828b200          cmp      ax, word ptr [0xb22828]        
  0x001E7D8D  0f832b010000            jae      0x1e7ebe                       
  0x001E7D93  a12c28b200              mov      eax, dword ptr [0xb2282c]      
  0x001E7D98  f6400401                test     byte ptr [eax + 4], 1          
  0x001E7D9C  740f                    je       0x1e7dad                       
                                        ; XREF: 0x001E7DAB (cond_jump)
  0x001E7D9E  fec1                    inc      cl                             
  0x001E7DA0  0fb6d1                  movzx    edx, cl                        
  0x001E7DA3  8d14d2                  lea      edx, [edx + edx*8]             
  0x001E7DA6  f644500401              test     byte ptr [eax + edx*2 + 4], 1  
  0x001E7DAB  75f1                    jne      0x1e7d9e                       
                                        ; XREF: 0x001E7D9C (cond_jump)
  0x001E7DAD  66ff052a28b200          inc      word ptr [0xb2282a]            
  0x001E7DB4  880d7828b200            mov      byte ptr [0xb22878], cl        
  0x001E7DBA  0fb6c9                  movzx    ecx, cl                        
  0x001E7DBD  56                      push     esi                            
  0x001E7DBE  8d0cc9                  lea      ecx, [ecx + ecx*8]             
  0x001E7DC1  57                      push     edi                            
  0x001E7DC2  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001E7DC6  8d3448                  lea      esi, [eax + ecx*2]             
  0x001E7DC9  56                      push     esi                            
  0x001E7DCA  8bcf                    mov      ecx, edi                       
  0x001E7DCC  e8411b0000              call     0x1e9912                       ; -> sub_001E9912
  0x001E7DD1  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E7DD4  24f1                    and      al, 0xf1                       
  0x001E7DD6  0c01                    or       al, 1                          
  0x001E7DD8  8bcf                    mov      ecx, edi                       
  0x001E7DDA  893e                    mov      dword ptr [esi], edi           
  0x001E7DDC  884604                  mov      byte ptr [esi + 4], al         
  0x001E7DDF  e83b1b0000              call     0x1e991f                       ; -> sub_001E991F
  0x001E7DE4  53                      push     ebx                            
  0x001E7DE5  6a01                    push     1                              
  0x001E7DE7  6a03                    push     3                              
  0x001E7DE9  8bcf                    mov      ecx, edi                       
  0x001E7DEB  884605                  mov      byte ptr [esi + 5], al         
  0x001E7DEE  895e0e                  mov      dword ptr [esi + 0xe], ebx     
  0x001E7DF1  e8171c0000              call     0x1e9a0d                       ; -> sub_001E9A0D
  0x001E7DF6  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001E7DF9  53                      push     ebx                            
  0x001E7DFA  884e08                  mov      byte ptr [esi + 8], cl         
  0x001E7DFD  8a4004                  mov      al, byte ptr [eax + 4]         
  0x001E7E00  53                      push     ebx                            
  0x001E7E01  6a03                    push     3                              
  0x001E7E03  8bcf                    mov      ecx, edi                       
  0x001E7E05  884606                  mov      byte ptr [esi + 6], al         
  0x001E7E08  e8001c0000              call     0x1e9a0d                       ; -> sub_001E9A0D
  0x001E7E0D  3bc3                    cmp      eax, ebx                       
  0x001E7E0F  740e                    je       0x1e7e1f                       
  0x001E7E11  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001E7E14  884e09                  mov      byte ptr [esi + 9], cl         
  0x001E7E17  8a4004                  mov      al, byte ptr [eax + 4]         
  0x001E7E1A  884607                  mov      byte ptr [esi + 7], al         
  0x001E7E1D  eb06                    jmp      0x1e7e25                       
                                        ; XREF: 0x001E7E0F (cond_jump)
  0x001E7E1F  885e09                  mov      byte ptr [esi + 9], bl         
  0x001E7E22  885e07                  mov      byte ptr [esi + 7], bl         
                                        ; XREF: 0x001E7E1D (jump)
  0x001E7E25  6a10                    push     0x10                           
  0x001E7E27  58                      pop      eax                            
  0x001E7E28  57                      push     edi                            
  0x001E7E29  c6054828b20030          mov      byte ptr [0xb22848], 0x30      
  0x001E7E30  c6054928b20040          mov      byte ptr [0xb22849], 0x40      
  0x001E7E37  c7055028b200c87c1e00    mov      dword ptr [0xb22850], 0x1e7cc8 
  0x001E7E41  89355428b200            mov      dword ptr [0xb22854], esi      
  0x001E7E47  891d5828b200            mov      dword ptr [0xb22858], ebx      
  0x001E7E4D  c7056028b2003428b200    mov      dword ptr [0xb22860], 0xb22834 
  0x001E7E57  a35c28b200              mov      dword ptr [0xb2285c], eax      
  0x001E7E5C  c6056428b20002          mov      byte ptr [0xb22864], 2         
  0x001E7E63  c6056528b20001          mov      byte ptr [0xb22865], 1         
  0x001E7E6A  881d6628b200            mov      byte ptr [0xb22866], bl        
  0x001E7E70  c6057028b200c1          mov      byte ptr [0xb22870], 0xc1      
  0x001E7E77  c6057128b20006          mov      byte ptr [0xb22871], 6         
  0x001E7E7E  66c7057228b2000042      mov      word ptr [0xb22872], 0x4200    
  0x001E7E87  660fb64e05              movzx    cx, byte ptr [esi + 5]         
  0x001E7E8C  6871711e00              push     0x1e7171                       
  0x001E7E91  68a828b200              push     0xb228a8                       
  0x001E7E96  66890d7428b200          mov      word ptr [0xb22874], cx        
  0x001E7E9D  66a37628b200            mov      word ptr [0xb22876], ax        
  0x001E7EA3  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001E7EA9  e8a8f2ffff              call     0x1e7156                       ; -> sub_001E7156
  0x001E7EAE  684828b200              push     0xb22848                       
  0x001E7EB3  8bcf                    mov      ecx, edi                       
  0x001E7EB5  e8fb1d0000              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E7EBA  5f                      pop      edi                            
  0x001E7EBB  5e                      pop      esi                            
  0x001E7EBC  eb0e                    jmp      0x1e7ecc                       
                                        ; XREF: 0x001E7D8D (cond_jump)
  0x001E7EBE  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E7EC2  6800010080              push     0x80000100                     
  0x001E7EC7  e85b130000              call     0x1e9227                       ; -> sub_001E9227
                                        ; XREF: 0x001E7EBC (jump)
  0x001E7ECC  5b                      pop      ebx                            
  0x001E7ECD  c20400                  ret      4                              

; ============================================================
; Function: sub_001E7ED0
; Start: 0x001E7ED0  End: 0x001E7F2A  Size: 90 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E7ED0:
  0x001E7ED0  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E7ED4  57                      push     edi                            
  0x001E7ED5  8bd1                    mov      edx, ecx                       
  0x001E7ED7  80a2a000000000          and      byte ptr [edx + 0xa0], 0       
  0x001E7EDE  80a2a100000000          and      byte ptr [edx + 0xa1], 0       
  0x001E7EE5  898298000000            mov      dword ptr [edx + 0x98], eax    
  0x001E7EEB  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E7EEF  89829c000000            mov      dword ptr [edx + 0x9c], eax    
  0x001E7EF5  33c0                    xor      eax, eax                       
  0x001E7EF7  6a0c                    push     0xc                            
  0x001E7EF9  59                      pop      ecx                            
  0x001E7EFA  8bfa                    mov      edi, edx                       
  0x001E7EFC  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E7EFE  66ab                    stosw    word ptr es:[edi], ax          
  0x001E7F00  33c0                    xor      eax, eax                       
  0x001E7F02  6a0c                    push     0xc                            
  0x001E7F04  59                      pop      ecx                            
  0x001E7F05  8d7a32                  lea      edi, [edx + 0x32]              
  0x001E7F08  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E7F0A  66ab                    stosw    word ptr es:[edi], ax          
  0x001E7F0C  33c0                    xor      eax, eax                       
  0x001E7F0E  6a0c                    push     0xc                            
  0x001E7F10  59                      pop      ecx                            
  0x001E7F11  8d7a64                  lea      edi, [edx + 0x64]              
  0x001E7F14  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E7F16  66ab                    stosw    word ptr es:[edi], ax          
  0x001E7F18  33c0                    xor      eax, eax                       
  0x001E7F1A  8dbaa4000000            lea      edi, [edx + 0xa4]              
  0x001E7F20  ab                      stosd    dword ptr es:[edi], eax        
  0x001E7F21  ab                      stosd    dword ptr es:[edi], eax        
  0x001E7F22  ab                      stosd    dword ptr es:[edi], eax        
  0x001E7F23  ab                      stosd    dword ptr es:[edi], eax        
  0x001E7F24  8bc2                    mov      eax, edx                       
  0x001E7F26  5f                      pop      edi                            
  0x001E7F27  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E7F2A
; Start: 0x001E7F2A  End: 0x001E7F7A  Size: 80 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E5DDA, sub_001E8C23, sub_001E9469
; ============================================================
sub_001E7F2A:
  0x001E7F2A  0fb65179                movzx    edx, byte ptr [ecx + 0x79]     
  0x001E7F2E  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F34  c1e205                  shl      edx, 5                         
  0x001E7F37  56                      push     esi                            
  0x001E7F38  8d741001                lea      esi, [eax + edx + 1]           
  0x001E7F3C  8a06                    mov      al, byte ptr [esi]             
  0x001E7F3E  884179                  mov      byte ptr [ecx + 0x79], al      
  0x001E7F41  c60680                  mov      byte ptr [esi], 0x80           
  0x001E7F44  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F4A  c644100280              mov      byte ptr [eax + edx + 2], 0x80 
  0x001E7F4F  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F55  c644100380              mov      byte ptr [eax + edx + 3], 0x80 
  0x001E7F5A  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F60  8364101c00              and      dword ptr [eax + edx + 0x1c], 0 
  0x001E7F65  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F6B  804c1007ff              or       byte ptr [eax + edx + 7], 0xff 
  0x001E7F70  8b81e0000000            mov      eax, dword ptr [ecx + 0xe0]    
  0x001E7F76  03c2                    add      eax, edx                       
  0x001E7F78  5e                      pop      esi                            
  0x001E7F79  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E7F7A
; Start: 0x001E7F7A  End: 0x001E7F8E  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E9A87, sub_001EA7E1, sub_001EBE43, sub_001EC1E9, sub_001EC270, sub_001EC65B
; ============================================================
sub_001E7F7A:
  0x001E7F7A  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E7F7E  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001E7F81  85c9                    test     ecx, ecx                       
  0x001E7F83  7406                    je       0x1e7f8b                       
  0x001E7F85  ff700c                  push     dword ptr [eax + 0xc]          
  0x001E7F88  50                      push     eax                            
  0x001E7F89  ffd1                    call     ecx                            
                                        ; XREF: 0x001E7F83 (cond_jump)
  0x001E7F8B  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E7F8E
; Start: 0x001E7F8E  End: 0x001E7FD7  Size: 73 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001E6668
; ============================================================
sub_001E7F8E:
  0x001E7F8E  55                      push     ebp                            
  0x001E7F8F  8bec                    mov      ebp, esp                       
  0x001E7F91  83ec10                  sub      esp, 0x10                      
  0x001E7F94  0fb6450c                movzx    eax, byte ptr [ebp + 0xc]      
  0x001E7F98  8365f000                and      dword ptr [ebp - 0x10], 0      
  0x001E7F9C  8365f800                and      dword ptr [ebp - 8], 0         
  0x001E7FA0  c745f409000000          mov      dword ptr [ebp - 0xc], 9       
  0x001E7FA7  c745fc0d000000          mov      dword ptr [ebp - 4], 0xd       
  0x001E7FAE  8b4c85f0                mov      ecx, dword ptr [ebp + eax*4 - 0x10] 
  0x001E7FB2  0fb74508                movzx    eax, word ptr [ebp + 8]        
  0x001E7FB6  03c1                    add      eax, ecx                       
  0x001E7FB8  6bc038                  imul     eax, eax, 0x38                 
  0x001E7FBB  56                      push     esi                            
  0x001E7FBC  6a06                    push     6                              
  0x001E7FBE  33d2                    xor      edx, edx                       
  0x001E7FC0  5e                      pop      esi                            
  0x001E7FC1  f7f6                    div      esi                            
  0x001E7FC3  85c9                    test     ecx, ecx                       
  0x001E7FC5  5e                      pop      esi                            
  0x001E7FC6  7502                    jne      0x1e7fca                       
  0x001E7FC8  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E7FC6 (cond_jump)
  0x001E7FCA  807d1000                cmp      byte ptr [ebp + 0x10], 0       
  0x001E7FCE  7403                    je       0x1e7fd3                       
  0x001E7FD0  c1e003                  shl      eax, 3                         
                                        ; XREF: 0x001E7FCE (cond_jump)
  0x001E7FD3  c9                      leave                                   
  0x001E7FD4  c20c00                  ret      0xc                            
; end of function

; ============================================================
; Function: sub_001E7FD7
; Start: 0x001E7FD7  End: 0x001E8008  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E935A
; ============================================================
sub_001E7FD7:
  0x001E7FD7  56                      push     esi                            
  0x001E7FD8  b844591e00              mov      eax, 0x1e5944                  
  0x001E7FDD  be54591e00              mov      esi, 0x1e5954                  
  0x001E7FE2  3bc6                    cmp      eax, esi                       
  0x001E7FE4  8bc8                    mov      ecx, eax                       
  0x001E7FE6  731a                    jae      0x1e8002                       
  0x001E7FE8  8b542408                mov      edx, dword ptr [esp + 8]       
                                        ; XREF: 0x001E8000 (cond_jump)
  0x001E7FEC  8b01                    mov      eax, dword ptr [ecx]           
  0x001E7FEE  85c0                    test     eax, eax                       
  0x001E7FF0  7409                    je       0x1e7ffb                       
  0x001E7FF2  3a7001                  cmp      dh, byte ptr [eax + 1]         
  0x001E7FF5  7504                    jne      0x1e7ffb                       
  0x001E7FF7  3a10                    cmp      dl, byte ptr [eax]             
  0x001E7FF9  740d                    je       0x1e8008                       
                                        ; XREF: 0x001E7FF0 (cond_jump), 0x001E7FF5 (cond_jump)
  0x001E7FFB  83c104                  add      ecx, 4                         
  0x001E7FFE  3bce                    cmp      ecx, esi                       
  0x001E8000  72ea                    jb       0x1e7fec                       
                                        ; XREF: 0x001E7FE6 (cond_jump)
  0x001E8002  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E800A (jump)
  0x001E8004  5e                      pop      esi                            
  0x001E8005  c20400                  ret      4                              
; end of function
                                        ; XREF: 0x001E7FF9 (cond_jump)
  0x001E8008  8b01                    mov      eax, dword ptr [ecx]           
  0x001E800A  ebf8                    jmp      0x1e8004                       

; ============================================================
; Function: sub_001E800C
; Start: 0x001E800C  End: 0x001E802C  Size: 32 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001E831F, sub_001E846E
; ============================================================
sub_001E800C:
  0x001E800C  55                      push     ebp                            
  0x001E800D  8bec                    mov      ebp, esp                       
  0x001E800F  51                      push     ecx                            
  0x001E8010  8a450b                  mov      al, byte ptr [ebp + 0xb]       
  0x001E8013  8845fc                  mov      byte ptr [ebp - 4], al         
  0x001E8016  8a450a                  mov      al, byte ptr [ebp + 0xa]       
  0x001E8019  8845fd                  mov      byte ptr [ebp - 3], al         
  0x001E801C  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E801F  8865fe                  mov      byte ptr [ebp - 2], ah         
  0x001E8022  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E8025  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E8028  c9                      leave                                   
  0x001E8029  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E802C
; Start: 0x001E802C  End: 0x001E8063  Size: 55 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E802C:
  0x001E802C  55                      push     ebp                            
  0x001E802D  8bec                    mov      ebp, esp                       
  0x001E802F  53                      push     ebx                            
  0x001E8030  56                      push     esi                            
  0x001E8031  57                      push     edi                            
  0x001E8032  8b7d08                  mov      edi, dword ptr [ebp + 8]       
  0x001E8035  8b7718                  mov      esi, dword ptr [edi + 0x18]    
  0x001E8038  bb03010000              mov      ebx, 0x103                     
  0x001E803D  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001E8043  f6460c06                test     byte ptr [esi + 0xc], 6        
  0x001E8047  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001E804A  88450b                  mov      byte ptr [ebp + 0xb], al       
  0x001E804D  7414                    je       0x1e8063                       
  0x001E804F  b89d0000c0              mov      eax, 0xc000009d                
  0x001E8054  32d2                    xor      dl, dl                         
  0x001E8056  8bd8                    mov      ebx, eax                       
  0x001E8058  894110                  mov      dword ptr [ecx + 0x10], eax    
  0x001E805B  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8061  eb11                    jmp      0x1e8074                       
; end of function
                                        ; XREF: 0x001E804D (cond_jump)
  0x001E8063  8b415c                  mov      eax, dword ptr [ecx + 0x5c]    
  0x001E8066  80480301                or       byte ptr [eax + 3], 1          
  0x001E806A  6a00                    push     0                              
  0x001E806C  51                      push     ecx                            
  0x001E806D  57                      push     edi                            
  0x001E806E  ff1514d21e00            call     dword ptr [0x1ed214]           ; -> xbox_IoStartNextPacket
                                        ; XREF: 0x001E8061 (jump)
  0x001E8074  8a4d0b                  mov      cl, byte ptr [ebp + 0xb]       
  0x001E8077  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001E807D  5f                      pop      edi                            
  0x001E807E  5e                      pop      esi                            
  0x001E807F  8bc3                    mov      eax, ebx                       
  0x001E8081  5b                      pop      ebx                            
  0x001E8082  5d                      pop      ebp                            
  0x001E8083  c20800                  ret      8                              

; ============================================================
; Function: sub_001E8086
; Start: 0x001E8086  End: 0x001E80A9  Size: 35 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E83A0
; ============================================================
sub_001E8086:
  0x001E8086  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E808A  56                      push     esi                            
  0x001E808B  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001E808F  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E8092  894110                  mov      dword ptr [ecx + 0x10], eax    
  0x001E8095  b9000000c0              mov      ecx, 0xc0000000                
  0x001E809A  23c1                    and      eax, ecx                       
  0x001E809C  3bc1                    cmp      eax, ecx                       
  0x001E809E  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001E80A1  7506                    jne      0x1e80a9                       
  0x001E80A3  83601400                and      dword ptr [eax + 0x14], 0      
  0x001E80A7  eb06                    jmp      0x1e80af                       
; end of function
                                        ; XREF: 0x001E80A1 (cond_jump)
  0x001E80A9  8b4e2c                  mov      ecx, dword ptr [esi + 0x2c]    
  0x001E80AC  894814                  mov      dword ptr [eax + 0x14], ecx    
                                        ; XREF: 0x001E80A7 (jump)
  0x001E80AF  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E80B2  32d2                    xor      dl, dl                         
  0x001E80B4  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E80BA  ff36                    push     dword ptr [esi]                
  0x001E80BC  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E80C2  5e                      pop      esi                            
  0x001E80C3  c20800                  ret      8                              

; ============================================================
; Function: sub_001E80C6
; Start: 0x001E80C6  End: 0x001E80E2  Size: 28 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E846E
; ============================================================
sub_001E80C6:
  0x001E80C6  a11cf8b100              mov      eax, dword ptr [0xb1f81c]      
  0x001E80CB  3d1cf8b100              cmp      eax, 0xb1f81c                  
  0x001E80D0  740f                    je       0x1e80e1                       
  0x001E80D2  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001E80D5  8b4014                  mov      eax, dword ptr [eax + 0x14]    
  0x001E80D8  8b4018                  mov      eax, dword ptr [eax + 0x18]    
  0x001E80DB  6a00                    push     0                              
  0x001E80DD  50                      push     eax                            
  0x001E80DE  ff5030                  call     dword ptr [eax + 0x30]         
                                        ; XREF: 0x001E80D0 (cond_jump)
  0x001E80E1  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E80E2
; Start: 0x001E80E2  End: 0x001E8109  Size: 39 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E846E
; ============================================================
sub_001E80E2:
  0x001E80E2  8bc1                    mov      eax, ecx                       
  0x001E80E4  33d2                    xor      edx, edx                       
  0x001E80E6  395004                  cmp      dword ptr [eax + 4], edx       
  0x001E80E9  761d                    jbe      0x1e8108                       
  0x001E80EB  56                      push     esi                            
  0x001E80EC  57                      push     edi                            
                                        ; XREF: 0x001E8104 (cond_jump)
  0x001E80ED  8b38                    mov      edi, dword ptr [eax]           
  0x001E80EF  03fa                    add      edi, edx                       
  0x001E80F1  6a08                    push     8                              
  0x001E80F3  59                      pop      ecx                            
  0x001E80F4  bebcd01e00              mov      esi, 0x1ed0bc                  
  0x001E80F9  81c200100000            add      edx, 0x1000                    
  0x001E80FF  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E8101  3b5004                  cmp      edx, dword ptr [eax + 4]       
  0x001E8104  72e7                    jb       0x1e80ed                       
  0x001E8106  5f                      pop      edi                            
  0x001E8107  5e                      pop      esi                            
                                        ; XREF: 0x001E80E9 (cond_jump)
  0x001E8108  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E8109
; Start: 0x001E8109  End: 0x001E811E  Size: 21 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E8109:
  0x001E8109  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E810D  83f801                  cmp      eax, 1                         
  0x001E8110  760c                    jbe      0x1e811e                       
  0x001E8112  8d48ff                  lea      ecx, [eax - 1]                 
  0x001E8115  85c8                    test     eax, ecx                       
  0x001E8117  7505                    jne      0x1e811e                       
  0x001E8119  33c0                    xor      eax, eax                       
  0x001E811B  40                      inc      eax                            
  0x001E811C  eb02                    jmp      0x1e8120                       
; end of function
                                        ; XREF: 0x001E8110 (cond_jump), 0x001E8117 (cond_jump)
  0x001E811E  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E811C (jump)
  0x001E8120  c20400                  ret      4                              

; ============================================================
; Function: sub_001E8123
; Start: 0x001E8123  End: 0x001E8139  Size: 22 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E8123:
  0x001E8123  33c9                    xor      ecx, ecx                       
  0x001E8125  32c0                    xor      al, al                         
  0x001E8127  41                      inc      ecx                            
                                        ; XREF: 0x001E8134 (cond_jump)
  0x001E8128  854c2404                test     dword ptr [esp + 4], ecx       
  0x001E812C  7508                    jne      0x1e8136                       
  0x001E812E  fec0                    inc      al                             
  0x001E8130  d1e1                    shl      ecx, 1                         
  0x001E8132  3c20                    cmp      al, 0x20                       
  0x001E8134  72f2                    jb       0x1e8128                       
                                        ; XREF: 0x001E812C (cond_jump)
  0x001E8136  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E8139
; Start: 0x001E8139  End: 0x001E8176  Size: 61 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E8139:
  0x001E8139  55                      push     ebp                            
  0x001E813A  8bec                    mov      ebp, esp                       
  0x001E813C  83ec14                  sub      esp, 0x14                      
  0x001E813F  8b550c                  mov      edx, dword ptr [ebp + 0xc]     
  0x001E8142  53                      push     ebx                            
  0x001E8143  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001E8146  8b4b10                  mov      ecx, dword ptr [ebx + 0x10]    
  0x001E8149  8b415c                  mov      eax, dword ptr [ecx + 0x5c]    
  0x001E814C  56                      push     esi                            
  0x001E814D  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001E8150  b8000000c0              mov      eax, 0xc0000000                
  0x001E8155  8bf2                    mov      esi, edx                       
  0x001E8157  57                      push     edi                            
  0x001E8158  8b7b28                  mov      edi, dword ptr [ebx + 0x28]    
  0x001E815B  23f0                    and      esi, eax                       
  0x001E815D  3bf0                    cmp      esi, eax                       
  0x001E815F  897df8                  mov      dword ptr [ebp - 8], edi       
  0x001E8162  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001E8165  750f                    jne      0x1e8176                       
  0x001E8167  83611400                and      dword ptr [ecx + 0x14], 0      
  0x001E816B  8b4310                  mov      eax, dword ptr [ebx + 0x10]    
  0x001E816E  895010                  mov      dword ptr [eax + 0x10], edx    
  0x001E8171  e975010000              jmp      0x1e82eb                       
; end of function
                                        ; XREF: 0x001E8165 (cond_jump)
  0x001E8176  668b4706                mov      ax, word ptr [edi + 6]         
  0x001E817A  ff37                    push     dword ptr [edi]                
  0x001E817C  88650a                  mov      byte ptr [ebp + 0xa], ah       
  0x001E817F  88450b                  mov      byte ptr [ebp + 0xb], al       
  0x001E8182  668b4704                mov      ax, word ptr [edi + 4]         
  0x001E8186  0fb74d0a                movzx    ecx, word ptr [ebp + 0xa]      
  0x001E818A  88650e                  mov      byte ptr [ebp + 0xe], ah       
  0x001E818D  88450f                  mov      byte ptr [ebp + 0xf], al       
  0x001E8190  0fb7750e                movzx    esi, word ptr [ebp + 0xe]      
  0x001E8194  0faff1                  imul     esi, ecx                       
  0x001E8197  e870feffff              call     0x1e800c                       ; -> sub_001E800C
  0x001E819C  0fb74d0a                movzx    ecx, word ptr [ebp + 0xa]      
  0x001E81A0  40                      inc      eax                            
  0x001E81A1  89450c                  mov      dword ptr [ebp + 0xc], eax     
  0x001E81A4  f7e1                    mul      ecx                            
  0x001E81A6  85f6                    test     esi, esi                       
  0x001E81A8  8945ec                  mov      dword ptr [ebp - 0x14], eax    
  0x001E81AB  8955f0                  mov      dword ptr [ebp - 0x10], edx    
  0x001E81AE  7505                    jne      0x1e81b5                       
  0x001E81B0  be00200000              mov      esi, 0x2000                    
                                        ; XREF: 0x001E81AE (cond_jump)
  0x001E81B5  51                      push     ecx                            
  0x001E81B6  e84effffff              call     0x1e8109                       ; -> sub_001E8109
  0x001E81BB  85c0                    test     eax, eax                       
  0x001E81BD  0f8449010000            je       0x1e830c                       
  0x001E81C3  0fb7550a                movzx    edx, word ptr [ebp + 0xa]      
  0x001E81C7  81fa00100000            cmp      edx, 0x1000                    
  0x001E81CD  0f8739010000            ja       0x1e830c                       
  0x001E81D3  81fe00400000            cmp      esi, 0x4000                    
  0x001E81D9  0f872d010000            ja       0x1e830c                       
  0x001E81DF  66f7c6ff0f              test     si, 0xfff                      
  0x001E81E4  0f8522010000            jne      0x1e830c                       
  0x001E81EA  33c9                    xor      ecx, ecx                       
  0x001E81EC  394d0c                  cmp      dword ptr [ebp + 0xc], ecx     
  0x001E81EF  0f8417010000            je       0x1e830c                       
  0x001E81F5  8b45f0                  mov      eax, dword ptr [ebp - 0x10]    
  0x001E81F8  3bc1                    cmp      eax, ecx                       
  0x001E81FA  0f820c010000            jb       0x1e830c                       
  0x001E8200  7709                    ja       0x1e820b                       
  0x001E8202  3975ec                  cmp      dword ptr [ebp - 0x14], esi    
  0x001E8205  0f8201010000            jb       0x1e830c                       
                                        ; XREF: 0x001E8200 (cond_jump)
  0x001E820B  83f801                  cmp      eax, 1                         
  0x001E820E  0f87f8000000            ja       0x1e830c                       
  0x001E8214  720a                    jb       0x1e8220                       
  0x001E8216  837dec00                cmp      dword ptr [ebp - 0x14], 0      
  0x001E821A  0f87ec000000            ja       0x1e830c                       
                                        ; XREF: 0x001E8214 (cond_jump)
  0x001E8220  8b4dec                  mov      ecx, dword ptr [ebp - 0x14]    
  0x001E8223  52                      push     edx                            
  0x001E8224  898b60010000            mov      dword ptr [ebx + 0x160], ecx   
  0x001E822A  898364010000            mov      dword ptr [ebx + 0x164], eax   
  0x001E8230  89b368010000            mov      dword ptr [ebx + 0x168], esi   
  0x001E8236  e8e8feffff              call     0x1e8123                       ; -> sub_001E8123
  0x001E823B  0fb6c0                  movzx    eax, al                        
  0x001E823E  898358010000            mov      dword ptr [ebx + 0x158], eax   
  0x001E8244  33c0                    xor      eax, eax                       
  0x001E8246  50                      push     eax                            
  0x001E8247  56                      push     esi                            
  0x001E8248  ff75f0                  push     dword ptr [ebp - 0x10]         
  0x001E824B  c783480100000c000000    mov      dword ptr [ebx + 0x148], 0xc   
  0x001E8255  ff75ec                  push     dword ptr [ebp - 0x14]         
  0x001E8258  8dbb40010000            lea      edi, [ebx + 0x140]             
  0x001E825E  e82d75faff              call     0x18f790                       ; -> sub_0018F790
  0x001E8263  8907                    mov      dword ptr [edi], eax           
  0x001E8265  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001E8268  c1ee0c                  shr      esi, 0xc                       
  0x001E826B  895704                  mov      dword ptr [edi + 4], edx       
  0x001E826E  c7834c01000001000000    mov      dword ptr [ebx + 0x14c], 1     
  0x001E8278  89b350010000            mov      dword ptr [ebx + 0x150], esi   
  0x001E827E  c7835401000000100000    mov      dword ptr [ebx + 0x154], 0x1000 
  0x001E8288  8b4010                  mov      eax, dword ptr [eax + 0x10]    
  0x001E828B  3d00000700              cmp      eax, 0x70000                   
  0x001E8290  7438                    je       0x1e82ca                       
  0x001E8292  3d04400700              cmp      eax, 0x74004                   
  0x001E8297  754f                    jne      0x1e82e8                       
  0x001E8299  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E829C  8b5030                  mov      edx, dword ptr [eax + 0x30]    
  0x001E829F  33c0                    xor      eax, eax                       
  0x001E82A1  6a08                    push     8                              
  0x001E82A3  59                      pop      ecx                            
  0x001E82A4  8bfa                    mov      edi, edx                       
  0x001E82A6  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E82A8  8b8360010000            mov      eax, dword ptr [ebx + 0x160]   
  0x001E82AE  894208                  mov      dword ptr [edx + 8], eax       
  0x001E82B1  8b8364010000            mov      eax, dword ptr [ebx + 0x164]   
  0x001E82B7  89420c                  mov      dword ptr [edx + 0xc], eax     
  0x001E82BA  c6421a01                mov      byte ptr [edx + 0x1a], 1       
  0x001E82BE  8b4310                  mov      eax, dword ptr [ebx + 0x10]    
  0x001E82C1  c7401420000000          mov      dword ptr [eax + 0x14], 0x20   
  0x001E82C8  eb17                    jmp      0x1e82e1                       
                                        ; XREF: 0x001E8290 (cond_jump)
  0x001E82CA  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E82CD  6a06                    push     6                              
  0x001E82CF  8bf7                    mov      esi, edi                       
  0x001E82D1  8b7830                  mov      edi, dword ptr [eax + 0x30]    
  0x001E82D4  59                      pop      ecx                            
  0x001E82D5  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E82D7  8b4310                  mov      eax, dword ptr [ebx + 0x10]    
  0x001E82DA  c7401418000000          mov      dword ptr [eax + 0x14], 0x18   
                                        ; XREF: 0x001E82C8 (jump)
  0x001E82E1  8b4310                  mov      eax, dword ptr [ebx + 0x10]    
  0x001E82E4  83601000                and      dword ptr [eax + 0x10], 0      
                                        ; XREF: 0x001E8297 (cond_jump)
  0x001E82E8  8b7df8                  mov      edi, dword ptr [ebp - 8]       
                                        ; XREF: 0x001E8171 (jump), 0x001E831D (jump)
  0x001E82EB  57                      push     edi                            
  0x001E82EC  ff1510d21e00            call     dword ptr [0x1ed210]           ; -> xbox_ExEventObjectType
  0x001E82F2  8b4b10                  mov      ecx, dword ptr [ebx + 0x10]    
  0x001E82F5  32d2                    xor      dl, dl                         
  0x001E82F7  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E82FD  ff33                    push     dword ptr [ebx]                
  0x001E82FF  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E8305  5f                      pop      edi                            
  0x001E8306  5e                      pop      esi                            
  0x001E8307  5b                      pop      ebx                            
  0x001E8308  c9                      leave                                   
  0x001E8309  c20800                  ret      8                              
                                        ; XREF: 0x001E81BD (cond_jump), 0x001E81CD (cond_jump), 0x001E81D9 (cond_jump), 0x001E81E4 (cond_jump), 0x001E81EF (cond_jump), ... (+4 more)
  0x001E830C  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E830F  83601400                and      dword ptr [eax + 0x14], 0      
  0x001E8313  8b4310                  mov      eax, dword ptr [ebx + 0x10]    
  0x001E8316  c740104f0100c0          mov      dword ptr [eax + 0x10], 0xc000014f 
  0x001E831D  ebcc                    jmp      0x1e82eb                       

; ============================================================
; Function: sub_001E831F
; Start: 0x001E831F  End: 0x001E83A0  Size: 129 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_0018F800, sub_001E800C, sub_001EA551
; Called by: sub_001E88C9
; ============================================================
sub_001E831F:
  0x001E831F  55                      push     ebp                            
  0x001E8320  8bec                    mov      ebp, esp                       
  0x001E8322  51                      push     ecx                            
  0x001E8323  8b425c                  mov      eax, dword ptr [edx + 0x5c]    
  0x001E8326  53                      push     ebx                            
  0x001E8327  56                      push     esi                            
  0x001E8328  8bf1                    mov      esi, ecx                       
  0x001E832A  57                      push     edi                            
  0x001E832B  8b7808                  mov      edi, dword ptr [eax + 8]       
  0x001E832E  c6464f2f                mov      byte ptr [esi + 0x4f], 0x2f    
  0x001E8332  8b8e58010000            mov      ecx, dword ptr [esi + 0x158]   
  0x001E8338  8b07                    mov      eax, dword ptr [edi]           
  0x001E833A  8b5704                  mov      edx, dword ptr [edi + 4]       
  0x001E833D  e8be74faff              call     0x18f800                       ; -> sub_0018F800
  0x001E8342  8b8e58010000            mov      ecx, dword ptr [esi + 0x158]   
  0x001E8348  8b5f08                  mov      ebx, dword ptr [edi + 8]       
  0x001E834B  8bd0                    mov      edx, eax                       
  0x001E834D  33c0                    xor      eax, eax                       
  0x001E834F  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E8352  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E8355  c7463086801e00          mov      dword ptr [esi + 0x30], 0x1e8086 
  0x001E835C  d3eb                    shr      ebx, cl                        
  0x001E835E  668b4f0a                mov      cx, word ptr [edi + 0xa]       
  0x001E8362  666bc964                imul     cx, cx, 0x64                   
  0x001E8366  66894e34                mov      word ptr [esi + 0x34], cx      
  0x001E836A  8d4e4f                  lea      ecx, [esi + 0x4f]              
  0x001E836D  884637                  mov      byte ptr [esi + 0x37], al      
  0x001E8370  c6463602                mov      byte ptr [esi + 0x36], 2       
  0x001E8374  8bf9                    mov      edi, ecx                       
  0x001E8376  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8377  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8378  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8379  ab                      stosd    dword ptr es:[edi], eax        
  0x001E837A  52                      push     edx                            
  0x001E837B  c6012f                  mov      byte ptr [ecx], 0x2f           
  0x001E837E  e889fcffff              call     0x1e800c                       ; -> sub_001E800C
  0x001E8383  894651                  mov      dword ptr [esi + 0x51], eax    
  0x001E8386  887dfc                  mov      byte ptr [ebp - 4], bh         
  0x001E8389  885dfd                  mov      byte ptr [ebp - 3], bl         
  0x001E838C  668b45fc                mov      ax, word ptr [ebp - 4]         
  0x001E8390  8bce                    mov      ecx, esi                       
  0x001E8392  66894656                mov      word ptr [esi + 0x56], ax      
  0x001E8396  e8b6210000              call     0x1ea551                       ; -> sub_001EA551
  0x001E839B  5f                      pop      edi                            
  0x001E839C  5e                      pop      esi                            
  0x001E839D  5b                      pop      ebx                            
  0x001E839E  c9                      leave                                   
  0x001E839F  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E83A0
; Start: 0x001E83A0  End: 0x001E846E  Size: 206 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8086
; ============================================================
sub_001E83A0:
  0x001E83A0  55                      push     ebp                            
  0x001E83A1  8bec                    mov      ebp, esp                       
  0x001E83A3  83ec0c                  sub      esp, 0xc                       
  0x001E83A6  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E83A9  8b482c                  mov      ecx, dword ptr [eax + 0x2c]    
  0x001E83AC  57                      push     edi                            
  0x001E83AD  8b7828                  mov      edi, dword ptr [eax + 0x28]    
  0x001E83B0  03cf                    add      ecx, edi                       
  0x001E83B2  3bf9                    cmp      edi, ecx                       
  0x001E83B4  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001E83B7  0f83a3000000            jae      0x1e8460                       
  0x001E83BD  8bd7                    mov      edx, edi                       
  0x001E83BF  81eabcd01e00            sub      edx, 0x1ed0bc                  
  0x001E83C5  53                      push     ebx                            
  0x001E83C6  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001E83C9  56                      push     esi                            
                                        ; XREF: 0x001E8455 (cond_jump)
  0x001E83CA  33c0                    xor      eax, eax                       
  0x001E83CC  813f39353146            cmp      dword ptr [edi], 0x46313539    
  0x001E83D2  7570                    jne      0x1e8444                       
                                        ; XREF: 0x001E83EB (cond_jump)
  0x001E83D4  40                      inc      eax                            
  0x001E83D5  83f808                  cmp      eax, 8                         
  0x001E83D8  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E83DB  7412                    je       0x1e83ef                       
  0x001E83DD  8bb482bcd01e00          mov      esi, dword ptr [edx + eax*4 + 0x1ed0bc] 
  0x001E83E4  3b3485bcd01e00          cmp      esi, dword ptr [eax*4 + 0x1ed0bc] 
  0x001E83EB  74e7                    je       0x1e83d4                       
  0x001E83ED  eb55                    jmp      0x1e8444                       
                                        ; XREF: 0x001E83DB (cond_jump)
  0x001E83EF  57                      push     edi                            
  0x001E83F0  ff1570d11e00            call     dword ptr [0x1ed170]           ; -> xbox_MmQueryAddressProtect
  0x001E83F6  83ceff                  or       esi, 0xffffffff                
  0x001E83F9  837d0c00                cmp      dword ptr [ebp + 0xc], 0       
  0x001E83FD  8bd8                    mov      ebx, eax                       
  0x001E83FF  7c07                    jl       0x1e8408                       
  0x001E8401  c7450c3e0000c0          mov      dword ptr [ebp + 0xc], 0xc000003e 
                                        ; XREF: 0x001E83FF (cond_jump)
  0x001E8408  8bc3                    mov      eax, ebx                       
  0x001E840A  83e006                  and      eax, 6                         
  0x001E840D  3c02                    cmp      al, 2                          
  0x001E840F  7512                    jne      0x1e8423                       
  0x001E8411  8bf3                    mov      esi, ebx                       
  0x001E8413  83e6fd                  and      esi, 0xfffffffd                
  0x001E8416  83ce04                  or       esi, 4                         
  0x001E8419  56                      push     esi                            
  0x001E841A  6a20                    push     0x20                           
  0x001E841C  57                      push     edi                            
  0x001E841D  ff156cd11e00            call     dword ptr [0x1ed16c]           ; -> xbox_MmSetAddressProtect
                                        ; XREF: 0x001E840F (cond_jump), 0x001E8430 (cond_jump)
  0x001E8423  ff4dfc                  dec      dword ptr [ebp - 4]            
  0x001E8426  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E8429  c704874641494c          mov      dword ptr [edi + eax*4], 0x4c494146 
  0x001E8430  75f1                    jne      0x1e8423                       
  0x001E8432  83feff                  cmp      esi, -1                        
  0x001E8435  740a                    je       0x1e8441                       
  0x001E8437  53                      push     ebx                            
  0x001E8438  6a20                    push     0x20                           
  0x001E843A  57                      push     edi                            
  0x001E843B  ff156cd11e00            call     dword ptr [0x1ed16c]           ; -> xbox_MmSetAddressProtect
                                        ; XREF: 0x001E8435 (cond_jump)
  0x001E8441  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
                                        ; XREF: 0x001E83D2 (cond_jump), 0x001E83ED (jump)
  0x001E8444  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001E8447  b800100000              mov      eax, 0x1000                    
  0x001E844C  03f8                    add      edi, eax                       
  0x001E844E  03d0                    add      edx, eax                       
  0x001E8450  3bf9                    cmp      edi, ecx                       
  0x001E8452  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001E8455  0f826fffffff            jb       0x1e83ca                       
  0x001E845B  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E845E  5e                      pop      esi                            
  0x001E845F  5b                      pop      ebx                            
                                        ; XREF: 0x001E83B7 (cond_jump)
  0x001E8460  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E8463  50                      push     eax                            
  0x001E8464  e81dfcffff              call     0x1e8086                       ; -> sub_001E8086
  0x001E8469  5f                      pop      edi                            
  0x001E846A  c9                      leave                                   
  0x001E846B  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E846E
; Start: 0x001E846E  End: 0x001E8654  Size: 486 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E800C, sub_001E80C6, sub_001E80E2, sub_001EA551
; ============================================================
sub_001E846E:
  0x001E846E  55                      push     ebp                            
  0x001E846F  8bec                    mov      ebp, esp                       
  0x001E8471  53                      push     ebx                            
  0x001E8472  56                      push     esi                            
  0x001E8473  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E8476  8b5e0c                  mov      ebx, dword ptr [esi + 0xc]     
  0x001E8479  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E847C  81e3000000f0            and      ebx, 0xf0000000                
  0x001E8482  837d0c00                cmp      dword ptr [ebp + 0xc], 0       
  0x001E8486  57                      push     edi                            
  0x001E8487  8b795c                  mov      edi, dword ptr [ecx + 0x5c]    
  0x001E848A  894d08                  mov      dword ptr [ebp + 8], ecx       
  0x001E848D  0f8cb1000000            jl       0x1e8544                       
  0x001E8493  81c300000010            add      ebx, 0x10000000                
  0x001E8499  81fb00000020            cmp      ebx, 0x20000000                
  0x001E849F  750b                    jne      0x1e84ac                       
  0x001E84A1  f6460f02                test     byte ptr [esi + 0xf], 2        
  0x001E84A5  7518                    jne      0x1e84bf                       
  0x001E84A7  bb00000040              mov      ebx, 0x40000000                
                                        ; XREF: 0x001E849F (cond_jump)
  0x001E84AC  81fb00000040            cmp      ebx, 0x40000000                
  0x001E84B2  750b                    jne      0x1e84bf                       
  0x001E84B4  f6460f04                test     byte ptr [esi + 0xf], 4        
  0x001E84B8  7505                    jne      0x1e84bf                       
                                        ; XREF: 0x001E8552 (cond_jump), 0x001E855F (cond_jump)
  0x001E84BA  bb00000060              mov      ebx, 0x60000000                
                                        ; XREF: 0x001E84A5 (cond_jump), 0x001E84B2 (cond_jump), 0x001E84B8 (cond_jump), 0x001E857A (jump)
  0x001E84BF  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E84C2  baffffff0f              mov      edx, 0xfffffff                 
  0x001E84C7  23c2                    and      eax, edx                       
  0x001E84C9  0bc3                    or       eax, ebx                       
  0x001E84CB  81fb00000020            cmp      ebx, 0x20000000                
  0x001E84D1  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E84D4  0f8423010000            je       0x1e85fd                       
  0x001E84DA  81fb00000030            cmp      ebx, 0x30000000                
  0x001E84E0  0f84eb000000            je       0x1e85d1                       
  0x001E84E6  81fb00000040            cmp      ebx, 0x40000000                
  0x001E84EC  0f84bf000000            je       0x1e85b1                       
  0x001E84F2  81fb00000050            cmp      ebx, 0x50000000                
  0x001E84F8  0f8481000000            je       0x1e857f                       
  0x001E84FE  81fb00000060            cmp      ebx, 0x60000000                
  0x001E8504  0f8543010000            jne      0x1e864d                       
  0x001E850A  23c2                    and      eax, edx                       
  0x001E850C  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E850F  a11cf8b100              mov      eax, dword ptr [0xb1f81c]      
  0x001E8514  8b10                    mov      edx, dword ptr [eax]           
  0x001E8516  8b4004                  mov      eax, dword ptr [eax + 4]       
  0x001E8519  8910                    mov      dword ptr [eax], edx           
  0x001E851B  894204                  mov      dword ptr [edx + 4], eax       
  0x001E851E  8b4704                  mov      eax, dword ptr [edi + 4]       
  0x001E8521  894114                  mov      dword ptr [ecx + 0x14], eax    
  0x001E8524  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E8527  32d2                    xor      dl, dl                         
  0x001E8529  894110                  mov      dword ptr [ecx + 0x10], eax    
  0x001E852C  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8532  e88ffbffff              call     0x1e80c6                       ; -> sub_001E80C6
  0x001E8537  ff36                    push     dword ptr [esi]                
  0x001E8539  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E853F  e909010000              jmp      0x1e864d                       
                                        ; XREF: 0x001E848D (cond_jump)
  0x001E8544  81fb00000020            cmp      ebx, 0x20000000                
  0x001E854A  740c                    je       0x1e8558                       
  0x001E854C  81fb00000040            cmp      ebx, 0x40000000                
  0x001E8552  0f8562ffffff            jne      0x1e84ba                       
                                        ; XREF: 0x001E854A (cond_jump)
  0x001E8558  817d0c3e0000c0          cmp      dword ptr [ebp + 0xc], 0xc000003e 
  0x001E855F  0f8555ffffff            jne      0x1e84ba                       
  0x001E8565  8d4e28                  lea      ecx, [esi + 0x28]              
  0x001E8568  e875fbffff              call     0x1e80e2                       ; -> sub_001E80E2
  0x001E856D  83650c00                and      dword ptr [ebp + 0xc], 0       
  0x001E8571  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E8574  81c300000010            add      ebx, 0x10000000                
  0x001E857A  e940ffffff              jmp      0x1e84bf                       
                                        ; XREF: 0x001E84F8 (cond_jump)
  0x001E857F  83663800                and      dword ptr [esi + 0x38], 0      
  0x001E8583  c6463706                mov      byte ptr [esi + 0x37], 6       
  0x001E8587  8b461c                  mov      eax, dword ptr [esi + 0x1c]    
  0x001E858A  89463c                  mov      dword ptr [esi + 0x3c], eax    
  0x001E858D  c6464f2a                mov      byte ptr [esi + 0x4f], 0x2a    
  0x001E8591  8b4708                  mov      eax, dword ptr [edi + 8]       
  0x001E8594  2b461c                  sub      eax, dword ptr [esi + 0x1c]    
  0x001E8597  034704                  add      eax, dword ptr [edi + 4]       
  0x001E859A  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E859D  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E85A3  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E85A6  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E85A9  2b461c                  sub      eax, dword ptr [esi + 0x1c]    
                                        ; XREF: 0x001E85CF (jump)
  0x001E85AC  034704                  add      eax, dword ptr [edi + 4]       
  0x001E85AF  eb6d                    jmp      0x1e861e                       
                                        ; XREF: 0x001E84EC (cond_jump)
  0x001E85B1  c7462824f8b100          mov      dword ptr [esi + 0x28], 0xb1f824 
  0x001E85B8  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E85BE  2b461c                  sub      eax, dword ptr [esi + 0x1c]    
  0x001E85C1  c6463701                mov      byte ptr [esi + 0x37], 1       
  0x001E85C5  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E85C8  c6464f28                mov      byte ptr [esi + 0x4f], 0x28    
  0x001E85CC  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E85CF  ebdb                    jmp      0x1e85ac                       
                                        ; XREF: 0x001E84E0 (cond_jump)
  0x001E85D1  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001E85D4  894638                  mov      dword ptr [esi + 0x38], eax    
  0x001E85D7  c6463706                mov      byte ptr [esi + 0x37], 6       
  0x001E85DB  8d8668010000            lea      eax, [esi + 0x168]             
  0x001E85E1  8b08                    mov      ecx, dword ptr [eax]           
  0x001E85E3  894e3c                  mov      dword ptr [esi + 0x3c], ecx    
  0x001E85E6  8b4f08                  mov      ecx, dword ptr [edi + 8]       
  0x001E85E9  894e28                  mov      dword ptr [esi + 0x28], ecx    
  0x001E85EC  8b00                    mov      eax, dword ptr [eax]           
  0x001E85EE  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E85F1  c6464f2a                mov      byte ptr [esi + 0x4f], 0x2a    
  0x001E85F5  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E85F8  2b4638                  sub      eax, dword ptr [esi + 0x38]    
  0x001E85FB  eb21                    jmp      0x1e861e                       
                                        ; XREF: 0x001E84D4 (cond_jump)
  0x001E85FD  c7462824f8b100          mov      dword ptr [esi + 0x28], 0xb1f824 
  0x001E8604  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E860A  2b4618                  sub      eax, dword ptr [esi + 0x18]    
  0x001E860D  c6463701                mov      byte ptr [esi + 0x37], 1       
  0x001E8611  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E8614  c6464f28                mov      byte ptr [esi + 0x4f], 0x28    
  0x001E8618  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E861B  2b462c                  sub      eax, dword ptr [esi + 0x2c]    
                                        ; XREF: 0x001E85AF (jump), 0x001E85FB (jump)
  0x001E861E  8dbe58010000            lea      edi, [esi + 0x158]             
  0x001E8624  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E8626  d3e8                    shr      eax, cl                        
  0x001E8628  50                      push     eax                            
  0x001E8629  e8def9ffff              call     0x1e800c                       ; -> sub_001E800C
  0x001E862E  894651                  mov      dword ptr [esi + 0x51], eax    
  0x001E8631  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E8633  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001E8636  d3e8                    shr      eax, cl                        
  0x001E8638  8bce                    mov      ecx, esi                       
  0x001E863A  88650e                  mov      byte ptr [ebp + 0xe], ah       
  0x001E863D  88450f                  mov      byte ptr [ebp + 0xf], al       
  0x001E8640  668b450e                mov      ax, word ptr [ebp + 0xe]       
  0x001E8644  66894656                mov      word ptr [esi + 0x56], ax      
  0x001E8648  e8041f0000              call     0x1ea551                       ; -> sub_001EA551
                                        ; XREF: 0x001E8504 (cond_jump), 0x001E853F (jump)
  0x001E864D  5f                      pop      edi                            
  0x001E864E  5e                      pop      esi                            
  0x001E864F  5b                      pop      ebx                            
  0x001E8650  5d                      pop      ebp                            
  0x001E8651  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E8654
; Start: 0x001E8654  End: 0x001E867D  Size: 41 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E8654:
  0x001E8654  55                      push     ebp                            
  0x001E8655  8bec                    mov      ebp, esp                       
  0x001E8657  53                      push     ebx                            
  0x001E8658  56                      push     esi                            
  0x001E8659  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E865C  8b5e10                  mov      ebx, dword ptr [esi + 0x10]    
  0x001E865F  8b535c                  mov      edx, dword ptr [ebx + 0x5c]    
  0x001E8662  57                      push     edi                            
  0x001E8663  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E8666  81e7000000f0            and      edi, 0xf0000000                
  0x001E866C  837d0c00                cmp      dword ptr [ebp + 0xc], 0       
  0x001E8670  895508                  mov      dword ptr [ebp + 8], edx       
  0x001E8673  7c08                    jl       0x1e867d                       
  0x001E8675  81c700000010            add      edi, 0x10000000                
  0x001E867B  eb35                    jmp      0x1e86b2                       
; end of function
                                        ; XREF: 0x001E8673 (cond_jump)
  0x001E867D  81ff00000020            cmp      edi, 0x20000000                
  0x001E8683  7408                    je       0x1e868d                       
  0x001E8685  81ff00000030            cmp      edi, 0x30000000                
  0x001E868B  7520                    jne      0x1e86ad                       
                                        ; XREF: 0x001E8683 (cond_jump)
  0x001E868D  817d0c3e0000c0          cmp      dword ptr [ebp + 0xc], 0xc000003e 
  0x001E8694  7517                    jne      0x1e86ad                       
  0x001E8696  8d4e28                  lea      ecx, [esi + 0x28]              
  0x001E8699  e844faffff              call     0x1e80e2                       ; -> sub_001E80E2
  0x001E869E  83650c00                and      dword ptr [ebp + 0xc], 0       
  0x001E86A2  8b5508                  mov      edx, dword ptr [ebp + 8]       
  0x001E86A5  81c700000010            add      edi, 0x10000000                
  0x001E86AB  eb05                    jmp      0x1e86b2                       
                                        ; XREF: 0x001E868B (cond_jump), 0x001E8694 (cond_jump)
  0x001E86AD  bf00000050              mov      edi, 0x50000000                
                                        ; XREF: 0x001E867B (jump), 0x001E86AB (jump)
  0x001E86B2  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E86B5  b9ffffff0f              mov      ecx, 0xfffffff                 
  0x001E86BA  23c1                    and      eax, ecx                       
  0x001E86BC  0bc7                    or       eax, edi                       
  0x001E86BE  81ff00000020            cmp      edi, 0x20000000                
  0x001E86C4  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E86C7  0f84ac000000            je       0x1e8779                       
  0x001E86CD  81ff00000030            cmp      edi, 0x30000000                
  0x001E86D3  0f8487000000            je       0x1e8760                       
  0x001E86D9  81ff00000040            cmp      edi, 0x40000000                
  0x001E86DF  7448                    je       0x1e8729                       
  0x001E86E1  81ff00000050            cmp      edi, 0x50000000                
  0x001E86E7  0f85db000000            jne      0x1e87c8                       
  0x001E86ED  23c1                    and      eax, ecx                       
  0x001E86EF  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E86F2  a11cf8b100              mov      eax, dword ptr [0xb1f81c]      
  0x001E86F7  8b08                    mov      ecx, dword ptr [eax]           
  0x001E86F9  8b4004                  mov      eax, dword ptr [eax + 4]       
  0x001E86FC  8908                    mov      dword ptr [eax], ecx           
  0x001E86FE  894104                  mov      dword ptr [ecx + 4], eax       
  0x001E8701  8b4204                  mov      eax, dword ptr [edx + 4]       
  0x001E8704  894314                  mov      dword ptr [ebx + 0x14], eax    
  0x001E8707  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E870A  32d2                    xor      dl, dl                         
  0x001E870C  8bcb                    mov      ecx, ebx                       
  0x001E870E  894310                  mov      dword ptr [ebx + 0x10], eax    
  0x001E8711  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8717  e8aaf9ffff              call     0x1e80c6                       ; -> sub_001E80C6
  0x001E871C  ff36                    push     dword ptr [esi]                
  0x001E871E  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E8724  e99f000000              jmp      0x1e87c8                       
                                        ; XREF: 0x001E86DF (cond_jump)
  0x001E8729  c6464f2a                mov      byte ptr [esi + 0x4f], 0x2a    
  0x001E872D  c6463706                mov      byte ptr [esi + 0x37], 6       
  0x001E8731  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E8737  2b4618                  sub      eax, dword ptr [esi + 0x18]    
  0x001E873A  894638                  mov      dword ptr [esi + 0x38], eax    
  0x001E873D  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E8743  2b461c                  sub      eax, dword ptr [esi + 0x1c]    
  0x001E8746  89463c                  mov      dword ptr [esi + 0x3c], eax    
  0x001E8749  8b4208                  mov      eax, dword ptr [edx + 8]       
  0x001E874C  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E874F  8b8668010000            mov      eax, dword ptr [esi + 0x168]   
  0x001E8755  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E8758  8b420c                  mov      eax, dword ptr [edx + 0xc]     
  0x001E875B  2b4638                  sub      eax, dword ptr [esi + 0x38]    
  0x001E875E  eb39                    jmp      0x1e8799                       
                                        ; XREF: 0x001E86D3 (cond_jump)
  0x001E8760  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001E8763  0524f8b100              add      eax, 0xb1f824                  
  0x001E8768  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E876B  8b461c                  mov      eax, dword ptr [esi + 0x1c]    
  0x001E876E  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001E8771  8b420c                  mov      eax, dword ptr [edx + 0xc]     
  0x001E8774  034204                  add      eax, dword ptr [edx + 4]       
  0x001E8777  eb20                    jmp      0x1e8799                       
                                        ; XREF: 0x001E86C7 (cond_jump)
  0x001E8779  c6463701                mov      byte ptr [esi + 0x37], 1       
  0x001E877D  c6464f28                mov      byte ptr [esi + 0x4f], 0x28    
  0x001E8781  c7462824f8b100          mov      dword ptr [esi + 0x28], 0xb1f824 
  0x001E8788  8b8e68010000            mov      ecx, dword ptr [esi + 0x168]   
  0x001E878E  2b4e18                  sub      ecx, dword ptr [esi + 0x18]    
  0x001E8791  894e2c                  mov      dword ptr [esi + 0x2c], ecx    
  0x001E8794  8b420c                  mov      eax, dword ptr [edx + 0xc]     
  0x001E8797  2bc1                    sub      eax, ecx                       
                                        ; XREF: 0x001E875E (jump), 0x001E8777 (jump)
  0x001E8799  8dbe58010000            lea      edi, [esi + 0x158]             
  0x001E879F  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E87A1  d3e8                    shr      eax, cl                        
  0x001E87A3  50                      push     eax                            
  0x001E87A4  e863f8ffff              call     0x1e800c                       ; -> sub_001E800C
  0x001E87A9  894651                  mov      dword ptr [esi + 0x51], eax    
  0x001E87AC  8b0f                    mov      ecx, dword ptr [edi]           
  0x001E87AE  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001E87B1  d3e8                    shr      eax, cl                        
  0x001E87B3  8bce                    mov      ecx, esi                       
  0x001E87B5  88650e                  mov      byte ptr [ebp + 0xe], ah       
  0x001E87B8  88450f                  mov      byte ptr [ebp + 0xf], al       
  0x001E87BB  668b450e                mov      ax, word ptr [ebp + 0xe]       
  0x001E87BF  66894656                mov      word ptr [esi + 0x56], ax      
  0x001E87C3  e8891d0000              call     0x1ea551                       ; -> sub_001EA551
                                        ; XREF: 0x001E86E7 (cond_jump), 0x001E8724 (jump)
  0x001E87C8  5f                      pop      edi                            
  0x001E87C9  5e                      pop      esi                            
  0x001E87CA  5b                      pop      ebx                            
  0x001E87CB  5d                      pop      ebp                            
  0x001E87CC  c20800                  ret      8                              

; ============================================================
; Function: sub_001E87CF
; Start: 0x001E87CF  End: 0x001E87EF  Size: 32 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E88C9
; ============================================================
sub_001E87CF:
  0x001E87CF  56                      push     esi                            
  0x001E87D0  57                      push     edi                            
  0x001E87D1  6a08                    push     8                              
  0x001E87D3  5f                      pop      edi                            
  0x001E87D4  57                      push     edi                            
  0x001E87D5  8bf1                    mov      esi, ecx                       
  0x001E87D7  ff15dcd11e00            call     dword ptr [0x1ed1dc]           ; -> xbox_DbgPrint
  0x001E87DD  85c0                    test     eax, eax                       
  0x001E87DF  750e                    jne      0x1e87ef                       
  0x001E87E1  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001E87E4  83601400                and      dword ptr [eax + 0x14], 0      
  0x001E87E8  b89a0000c0              mov      eax, 0xc000009a                
  0x001E87ED  eb35                    jmp      0x1e8824                       
; end of function
                                        ; XREF: 0x001E87DF (cond_jump)
  0x001E87EF  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E87F2  897e2c                  mov      dword ptr [esi + 0x2c], edi    
  0x001E87F5  8d4e4f                  lea      ecx, [esi + 0x4f]              
  0x001E87F8  c7463039811e00          mov      dword ptr [esi + 0x30], 0x1e8139 
  0x001E87FF  66c746340a00            mov      word ptr [esi + 0x34], 0xa     
  0x001E8805  c6463602                mov      byte ptr [esi + 0x36], 2       
  0x001E8809  c6463701                mov      byte ptr [esi + 0x37], 1       
  0x001E880D  33c0                    xor      eax, eax                       
  0x001E880F  8bf9                    mov      edi, ecx                       
  0x001E8811  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8812  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8813  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8814  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8815  c60125                  mov      byte ptr [ecx], 0x25           
  0x001E8818  8bce                    mov      ecx, esi                       
  0x001E881A  e8321d0000              call     0x1ea551                       ; -> sub_001EA551
  0x001E881F  b803010000              mov      eax, 0x103                     
                                        ; XREF: 0x001E87ED (jump)
  0x001E8824  5f                      pop      edi                            
  0x001E8825  5e                      pop      esi                            
  0x001E8826  c3                      ret                                     

; ============================================================
; Function: sub_001E8827
; Start: 0x001E8827  End: 0x001E885E  Size: 55 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E8827:
  0x001E8827  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E882B  56                      push     esi                            
  0x001E882C  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001E8830  80660f0f                and      byte ptr [esi + 0xf], 0xf      
  0x001E8834  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E8837  57                      push     edi                            
  0x001E8838  b8000000c0              mov      eax, 0xc0000000                
  0x001E883D  8bfa                    mov      edi, edx                       
  0x001E883F  23f8                    and      edi, eax                       
  0x001E8841  3bf8                    cmp      edi, eax                       
  0x001E8843  7519                    jne      0x1e885e                       
  0x001E8845  83611400                and      dword ptr [ecx + 0x14], 0      
  0x001E8849  895110                  mov      dword ptr [ecx + 0x10], edx    
  0x001E884C  32d2                    xor      dl, dl                         
  0x001E884E  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8854  ff36                    push     dword ptr [esi]                
  0x001E8856  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E885C  eb66                    jmp      0x1e88c4                       
; end of function
                                        ; XREF: 0x001E8843 (cond_jump)
  0x001E885E  33c0                    xor      eax, eax                       
  0x001E8860  8d7e4f                  lea      edi, [esi + 0x4f]              
  0x001E8863  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8864  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8865  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8866  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8867  66c746340800            mov      word ptr [esi + 0x34], 8       
  0x001E886D  c6463602                mov      byte ptr [esi + 0x36], 2       
  0x001E8871  f6460f08                test     byte ptr [esi + 0xf], 8        
  0x001E8875  7409                    je       0x1e8880                       
  0x001E8877  c7463054861e00          mov      dword ptr [esi + 0x30], 0x1e8654 
  0x001E887E  eb07                    jmp      0x1e8887                       
                                        ; XREF: 0x001E8875 (cond_jump)
  0x001E8880  c746306e841e00          mov      dword ptr [esi + 0x30], 0x1e846e 
                                        ; XREF: 0x001E887E (jump)
  0x001E8887  804e0f10                or       byte ptr [esi + 0xf], 0x10     
  0x001E888B  8b3d1cf8b100            mov      edi, dword ptr [0xb1f81c]      
  0x001E8891  ba1cf8b100              mov      edx, 0xb1f81c                  
  0x001E8896  3bfa                    cmp      edi, edx                       
  0x001E8898  8d4154                  lea      eax, [ecx + 0x54]              
  0x001E889B  7515                    jne      0x1e88b2                       
  0x001E889D  8938                    mov      dword ptr [eax], edi           
  0x001E889F  895158                  mov      dword ptr [ecx + 0x58], edx    
  0x001E88A2  6a00                    push     0                              
  0x001E88A4  894704                  mov      dword ptr [edi + 4], eax       
  0x001E88A7  56                      push     esi                            
  0x001E88A8  a31cf8b100              mov      dword ptr [0xb1f81c], eax      
  0x001E88AD  ff5630                  call     dword ptr [esi + 0x30]         
  0x001E88B0  eb12                    jmp      0x1e88c4                       
                                        ; XREF: 0x001E889B (cond_jump)
  0x001E88B2  8b3520f8b100            mov      esi, dword ptr [0xb1f820]      
  0x001E88B8  8910                    mov      dword ptr [eax], edx           
  0x001E88BA  897158                  mov      dword ptr [ecx + 0x58], esi    
  0x001E88BD  8906                    mov      dword ptr [esi], eax           
  0x001E88BF  a320f8b100              mov      dword ptr [0xb1f820], eax      
                                        ; XREF: 0x001E885C (jump), 0x001E88B0 (jump)
  0x001E88C4  5f                      pop      edi                            
  0x001E88C5  5e                      pop      esi                            
  0x001E88C6  c20800                  ret      8                              

; ============================================================
; Function: sub_001E88C9
; Start: 0x001E88C9  End: 0x001E894C  Size: 131 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E831F, sub_001E87CF
; ============================================================
sub_001E88C9:
  0x001E88C9  55                      push     ebp                            
  0x001E88CA  8bec                    mov      ebp, esp                       
  0x001E88CC  53                      push     ebx                            
  0x001E88CD  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001E88D0  56                      push     esi                            
  0x001E88D1  8b750c                  mov      esi, dword ptr [ebp + 0xc]     
  0x001E88D4  8b465c                  mov      eax, dword ptr [esi + 0x5c]    
  0x001E88D7  8b4010                  mov      eax, dword ptr [eax + 0x10]    
  0x001E88DA  2d00000700              sub      eax, 0x70000                   
  0x001E88DF  57                      push     edi                            
  0x001E88E0  746a                    je       0x1e894c                       
  0x001E88E2  83e814                  sub      eax, 0x14                      
  0x001E88E5  7459                    je       0x1e8940                       
  0x001E88E7  2df03f0000              sub      eax, 0x3ff0                    
  0x001E88EC  740e                    je       0x1e88fc                       
  0x001E88EE  83661400                and      dword ptr [esi + 0x14], 0      
  0x001E88F2  b8100000c0              mov      eax, 0xc0000010                
  0x001E88F7  e981000000              jmp      0x1e897d                       
                                        ; XREF: 0x001E88EC (cond_jump)
  0x001E88FC  8b5630                  mov      edx, dword ptr [esi + 0x30]    
  0x001E88FF  6a08                    push     8                              
  0x001E8901  33c0                    xor      eax, eax                       
  0x001E8903  59                      pop      ecx                            
  0x001E8904  8bfa                    mov      edi, edx                       
  0x001E8906  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001E8908  8b8360010000            mov      eax, dword ptr [ebx + 0x160]   
  0x001E890E  0b8364010000            or       eax, dword ptr [ebx + 0x164]   
  0x001E8914  750b                    jne      0x1e8921                       
                                        ; XREF: 0x001E895B (cond_jump)
  0x001E8916  8bd6                    mov      edx, esi                       
  0x001E8918  8bcb                    mov      ecx, ebx                       
  0x001E891A  e8b0feffff              call     0x1e87cf                       ; -> sub_001E87CF
  0x001E891F  eb55                    jmp      0x1e8976                       
                                        ; XREF: 0x001E8914 (cond_jump)
  0x001E8921  8b8360010000            mov      eax, dword ptr [ebx + 0x160]   
  0x001E8927  894208                  mov      dword ptr [edx + 8], eax       
  0x001E892A  8b8364010000            mov      eax, dword ptr [ebx + 0x164]   
  0x001E8930  89420c                  mov      dword ptr [edx + 0xc], eax     
  0x001E8933  c6421a01                mov      byte ptr [edx + 0x1a], 1       
  0x001E8937  c7461420000000          mov      dword ptr [esi + 0x14], 0x20   
  0x001E893E  eb34                    jmp      0x1e8974                       
                                        ; XREF: 0x001E88E5 (cond_jump)
  0x001E8940  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E8943  8bd6                    mov      edx, esi                       
  0x001E8945  e8d5f9ffff              call     0x1e831f                       ; -> sub_001E831F
  0x001E894A  eb46                    jmp      0x1e8992                       
; end of function
                                        ; XREF: 0x001E88E0 (cond_jump)
  0x001E894C  8b8360010000            mov      eax, dword ptr [ebx + 0x160]   
  0x001E8952  0b8364010000            or       eax, dword ptr [ebx + 0x164]   
  0x001E8958  8b7e30                  mov      edi, dword ptr [esi + 0x30]    
  0x001E895B  74b9                    je       0x1e8916                       
  0x001E895D  6a06                    push     6                              
  0x001E895F  8db340010000            lea      esi, [ebx + 0x140]             
  0x001E8965  59                      pop      ecx                            
  0x001E8966  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001E8968  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001E896B  c7411418000000          mov      dword ptr [ecx + 0x14], 0x18   
  0x001E8972  8bf1                    mov      esi, ecx                       
                                        ; XREF: 0x001E893E (jump)
  0x001E8974  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001E891F (jump)
  0x001E8976  3d03010000              cmp      eax, 0x103                     
  0x001E897B  7415                    je       0x1e8992                       
                                        ; XREF: 0x001E88F7 (jump)
  0x001E897D  32d2                    xor      dl, dl                         
  0x001E897F  8bce                    mov      ecx, esi                       
  0x001E8981  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001E8984  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E898A  ff33                    push     dword ptr [ebx]                
  0x001E898C  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
                                        ; XREF: 0x001E894A (jump), 0x001E897B (cond_jump)
  0x001E8992  5f                      pop      edi                            
  0x001E8993  5e                      pop      esi                            
  0x001E8994  5b                      pop      ebx                            
  0x001E8995  5d                      pop      ebp                            
  0x001E8996  c20800                  ret      8                              

; ============================================================
; Function: sub_001E8999
; Start: 0x001E8999  End: 0x001E8A3D  Size: 164 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E8999:
  0x001E8999  55                      push     ebp                            
  0x001E899A  8bec                    mov      ebp, esp                       
  0x001E899C  83ec0c                  sub      esp, 0xc                       
  0x001E899F  8365fc00                and      dword ptr [ebp - 4], 0         
  0x001E89A3  53                      push     ebx                            
  0x001E89A4  8bc2                    mov      eax, edx                       
  0x001E89A6  56                      push     esi                            
  0x001E89A7  8bf1                    mov      esi, ecx                       
  0x001E89A9  8b485c                  mov      ecx, dword ptr [eax + 0x5c]    
  0x001E89AC  8b510c                  mov      edx, dword ptr [ecx + 0xc]     
  0x001E89AF  8b5904                  mov      ebx, dword ptr [ecx + 4]       
  0x001E89B2  57                      push     edi                            
  0x001E89B3  bfff0f0000              mov      edi, 0xfff                     
  0x001E89B8  85d7                    test     edi, edx                       
  0x001E89BA  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001E89BD  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001E89C0  7553                    jne      0x1e8a15                       
  0x001E89C2  85df                    test     edi, ebx                       
  0x001E89C4  754f                    jne      0x1e8a15                       
  0x001E89C6  33c0                    xor      eax, eax                       
  0x001E89C8  8bfb                    mov      edi, ebx                       
  0x001E89CA  03fa                    add      edi, edx                       
  0x001E89CC  134110                  adc      eax, dword ptr [ecx + 0x10]    
  0x001E89CF  3b8664010000            cmp      eax, dword ptr [esi + 0x164]   
  0x001E89D5  7f3b                    jg       0x1e8a12                       
  0x001E89D7  7c08                    jl       0x1e89e1                       
  0x001E89D9  3bbe60010000            cmp      edi, dword ptr [esi + 0x160]   
  0x001E89DF  7731                    ja       0x1e8a12                       
                                        ; XREF: 0x001E89D7 (cond_jump)
  0x001E89E1  85db                    test     ebx, ebx                       
  0x001E89E3  7508                    jne      0x1e89ed                       
  0x001E89E5  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E89E8  215810                  and      dword ptr [eax + 0x10], ebx    
  0x001E89EB  eb35                    jmp      0x1e8a22                       
                                        ; XREF: 0x001E89E3 (cond_jump)
  0x001E89ED  f6410280                test     byte ptr [ecx + 2], 0x80       
  0x001E89F1  740b                    je       0x1e89fe                       
  0x001E89F3  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001E89F6  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001E89F9  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E89FC  eb0c                    jmp      0x1e8a0a                       
                                        ; XREF: 0x001E89F1 (cond_jump)
  0x001E89FE  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001E8A01  8b7830                  mov      edi, dword ptr [eax + 0x30]    
  0x001E8A04  037908                  add      edi, dword ptr [ecx + 8]       
  0x001E8A07  897dfc                  mov      dword ptr [ebp - 4], edi       
                                        ; XREF: 0x001E89FC (jump)
  0x001E8A0A  8b7dfc                  mov      edi, dword ptr [ebp - 4]       
  0x001E8A0D  897908                  mov      dword ptr [ecx + 8], edi       
  0x001E8A10  eb0a                    jmp      0x1e8a1c                       
                                        ; XREF: 0x001E89D5 (cond_jump), 0x001E89DF (cond_jump)
  0x001E8A12  8b45f8                  mov      eax, dword ptr [ebp - 8]       
                                        ; XREF: 0x001E89C0 (cond_jump), 0x001E89C4 (cond_jump)
  0x001E8A15  c740100d0000c0          mov      dword ptr [eax + 0x10], 0xc000000d 
                                        ; XREF: 0x001E8A10 (jump)
  0x001E8A1C  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001E8A20  751b                    jne      0x1e8a3d                       
                                        ; XREF: 0x001E89EB (jump)
  0x001E8A22  83601400                and      dword ptr [eax + 0x14], 0      
  0x001E8A26  32d2                    xor      dl, dl                         
  0x001E8A28  8bc8                    mov      ecx, eax                       
  0x001E8A2A  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8A30  ff36                    push     dword ptr [esi]                
  0x001E8A32  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E8A38  e9e7000000              jmp      0x1e8b24                       
; end of function
                                        ; XREF: 0x001E8A20 (cond_jump)
  0x001E8A3D  33c0                    xor      eax, eax                       
  0x001E8A3F  8d7e4f                  lea      edi, [esi + 0x4f]              
  0x001E8A42  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8A43  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8A44  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8A45  ab                      stosd    dword ptr es:[edi], eax        
  0x001E8A46  803903                  cmp      byte ptr [ecx], 3              
  0x001E8A49  0f8587000000            jne      0x1e8ad6                       
  0x001E8A4F  8bbe68010000            mov      edi, dword ptr [esi + 0x168]   
  0x001E8A55  8bc2                    mov      eax, edx                       
  0x001E8A57  33d2                    xor      edx, edx                       
  0x001E8A59  f7f7                    div      edi                            
  0x001E8A5B  80660ff1                and      byte ptr [esi + 0xf], 0xf1     
  0x001E8A5F  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001E8A62  85d2                    test     edx, edx                       
  0x001E8A64  742c                    je       0x1e8a92                       
  0x001E8A66  8bc7                    mov      eax, edi                       
  0x001E8A68  2bc2                    sub      eax, edx                       
  0x001E8A6A  3bc3                    cmp      eax, ebx                       
  0x001E8A6C  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E8A6F  7610                    jbe      0x1e8a81                       
  0x001E8A71  81c900000008            or       ecx, 0x8000000                 
  0x001E8A77  2bc3                    sub      eax, ebx                       
  0x001E8A79  894e0c                  mov      dword ptr [esi + 0xc], ecx     
  0x001E8A7C  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001E8A7F  eb28                    jmp      0x1e8aa9                       
                                        ; XREF: 0x001E8A6F (cond_jump)
  0x001E8A81  0145f4                  add      dword ptr [ebp - 0xc], eax     
  0x001E8A84  0145fc                  add      dword ptr [ebp - 4], eax       
  0x001E8A87  2bd8                    sub      ebx, eax                       
  0x001E8A89  81c900000002            or       ecx, 0x2000000                 
  0x001E8A8F  894e0c                  mov      dword ptr [esi + 0xc], ecx     
                                        ; XREF: 0x001E8A64 (cond_jump)
  0x001E8A92  33d2                    xor      edx, edx                       
  0x001E8A94  8bc3                    mov      eax, ebx                       
  0x001E8A96  f7f7                    div      edi                            
  0x001E8A98  85d2                    test     edx, edx                       
  0x001E8A9A  7409                    je       0x1e8aa5                       
  0x001E8A9C  2bda                    sub      ebx, edx                       
  0x001E8A9E  804e0f04                or       byte ptr [esi + 0xf], 4        
  0x001E8AA2  89561c                  mov      dword ptr [esi + 0x1c], edx    
                                        ; XREF: 0x001E8A9A (cond_jump)
  0x001E8AA5  85db                    test     ebx, ebx                       
  0x001E8AA7  750a                    jne      0x1e8ab3                       
                                        ; XREF: 0x001E8A7F (jump)
  0x001E8AA9  6a00                    push     0                              
  0x001E8AAB  56                      push     esi                            
  0x001E8AAC  e876fdffff              call     0x1e8827                       ; -> sub_001E8827
  0x001E8AB1  eb71                    jmp      0x1e8b24                       
                                        ; XREF: 0x001E8AA7 (cond_jump)
  0x001E8AB3  f6460f0e                test     byte ptr [esi + 0xf], 0xe      
  0x001E8AB7  7409                    je       0x1e8ac2                       
  0x001E8AB9  c7463027881e00          mov      dword ptr [esi + 0x30], 0x1e8827 
  0x001E8AC0  eb07                    jmp      0x1e8ac9                       
                                        ; XREF: 0x001E8AB7 (cond_jump)
  0x001E8AC2  c7463086801e00          mov      dword ptr [esi + 0x30], 0x1e8086 
                                        ; XREF: 0x001E8AC0 (jump)
  0x001E8AC9  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001E8ACC  c6463702                mov      byte ptr [esi + 0x37], 2       
  0x001E8AD0  c6464f2a                mov      byte ptr [esi + 0x4f], 0x2a    
  0x001E8AD4  eb0f                    jmp      0x1e8ae5                       
                                        ; XREF: 0x001E8A49 (cond_jump)
  0x001E8AD6  c74630a0831e00          mov      dword ptr [esi + 0x30], 0x1e83a0 
  0x001E8ADD  c6463701                mov      byte ptr [esi + 0x37], 1       
  0x001E8AE1  c6464f28                mov      byte ptr [esi + 0x4f], 0x28    
                                        ; XREF: 0x001E8AD4 (jump)
  0x001E8AE5  8bbe58010000            mov      edi, dword ptr [esi + 0x158]   
  0x001E8AEB  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001E8AEE  8bcf                    mov      ecx, edi                       
  0x001E8AF0  d3ea                    shr      edx, cl                        
  0x001E8AF2  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001E8AF5  895e2c                  mov      dword ptr [esi + 0x2c], ebx    
  0x001E8AF8  66c746340800            mov      word ptr [esi + 0x34], 8       
  0x001E8AFE  52                      push     edx                            
  0x001E8AFF  c6463602                mov      byte ptr [esi + 0x36], 2       
  0x001E8B03  e804f5ffff              call     0x1e800c                       ; -> sub_001E800C
  0x001E8B08  8bcf                    mov      ecx, edi                       
  0x001E8B0A  d3eb                    shr      ebx, cl                        
  0x001E8B0C  894651                  mov      dword ptr [esi + 0x51], eax    
  0x001E8B0F  8bce                    mov      ecx, esi                       
  0x001E8B11  887dfe                  mov      byte ptr [ebp - 2], bh         
  0x001E8B14  885dff                  mov      byte ptr [ebp - 1], bl         
  0x001E8B17  668b45fe                mov      ax, word ptr [ebp - 2]         
  0x001E8B1B  66894656                mov      word ptr [esi + 0x56], ax      
  0x001E8B1F  e82d1a0000              call     0x1ea551                       ; -> sub_001EA551
                                        ; XREF: 0x001E8A38 (jump), 0x001E8AB1 (jump)
  0x001E8B24  5f                      pop      edi                            
  0x001E8B25  5e                      pop      esi                            
  0x001E8B26  5b                      pop      ebx                            
  0x001E8B27  c9                      leave                                   
  0x001E8B28  c3                      ret                                     

; ============================================================
; Function: sub_001E8B29
; Start: 0x001E8B29  End: 0x001E8B62  Size: 57 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E8B29:
  0x001E8B29  55                      push     ebp                            
  0x001E8B2A  8bec                    mov      ebp, esp                       
  0x001E8B2C  53                      push     ebx                            
  0x001E8B2D  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001E8B30  8b4318                  mov      eax, dword ptr [ebx + 0x18]    
  0x001E8B33  56                      push     esi                            
  0x001E8B34  57                      push     edi                            
  0x001E8B35  8b7d0c                  mov      edi, dword ptr [ebp + 0xc]     
  0x001E8B38  8b775c                  mov      esi, dword ptr [edi + 0x5c]    
  0x001E8B3B  894508                  mov      dword ptr [ebp + 8], eax       
  0x001E8B3E  ff1524d21e00            call     dword ptr [0x1ed224]           ; -> xbox_HalIsResetOrShutdownPending
  0x001E8B44  84c0                    test     al, al                         
  0x001E8B46  741a                    je       0x1e8b62                       
  0x001E8B48  32d2                    xor      dl, dl                         
  0x001E8B4A  8bcf                    mov      ecx, edi                       
  0x001E8B4C  c74710400200c0          mov      dword ptr [edi + 0x10], 0xc0000240 
  0x001E8B53  ff1518d21e00            call     dword ptr [0x1ed218]           ; -> xbox_IoSynchronousFsdRequest
  0x001E8B59  53                      push     ebx                            
  0x001E8B5A  ff151cd21e00            call     dword ptr [0x1ed21c]           ; -> xbox_IoSetIoCompletion
  0x001E8B60  eb31                    jmp      0x1e8b93                       
; end of function
                                        ; XREF: 0x001E8B46 (cond_jump)
  0x001E8B62  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001E8B65  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001E8B68  897b10                  mov      dword ptr [ebx + 0x10], edi    
  0x001E8B6B  0fb606                  movzx    eax, byte ptr [esi]            
  0x001E8B6E  48                      dec      eax                            
  0x001E8B6F  48                      dec      eax                            
  0x001E8B70  7418                    je       0x1e8b8a                       
  0x001E8B72  48                      dec      eax                            
  0x001E8B73  740e                    je       0x1e8b83                       
  0x001E8B75  83e807                  sub      eax, 7                         
  0x001E8B78  7519                    jne      0x1e8b93                       
  0x001E8B7A  57                      push     edi                            
  0x001E8B7B  53                      push     ebx                            
  0x001E8B7C  e848fdffff              call     0x1e88c9                       ; -> sub_001E88C9
  0x001E8B81  eb10                    jmp      0x1e8b93                       
                                        ; XREF: 0x001E8B73 (cond_jump)
  0x001E8B83  57                      push     edi                            
  0x001E8B84  ff1520d21e00            call     dword ptr [0x1ed220]           ; -> xbox_IoMarkIrpMustComplete
                                        ; XREF: 0x001E8B70 (cond_jump)
  0x001E8B8A  8bd7                    mov      edx, edi                       
  0x001E8B8C  8bcb                    mov      ecx, ebx                       
  0x001E8B8E  e806feffff              call     0x1e8999                       ; -> sub_001E8999
                                        ; XREF: 0x001E8B60 (jump), 0x001E8B78 (cond_jump), 0x001E8B81 (jump)
  0x001E8B93  5f                      pop      edi                            
  0x001E8B94  5e                      pop      esi                            
  0x001E8B95  5b                      pop      ebx                            
  0x001E8B96  5d                      pop      ebp                            
  0x001E8B97  c20800                  ret      8                              
  0x001E8B9A  8bc1                    mov      eax, ecx                       
  0x001E8B9C  8008ff                  or       byte ptr [eax], 0xff           
  0x001E8B9F  c6400180                mov      byte ptr [eax + 1], 0x80       
  0x001E8BA3  c6400280                mov      byte ptr [eax + 2], 0x80       
  0x001E8BA7  c6400380                mov      byte ptr [eax + 3], 0x80       
  0x001E8BAB  c3                      ret                                     

; ============================================================
; Function: sub_001E8BAC
; Start: 0x001E8BAC  End: 0x001E8BDE  Size: 50 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8E69, sub_001E8FD2, sub_001E908E
; ============================================================
sub_001E8BAC:
  0x001E8BAC  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E8BB0  53                      push     ebx                            
  0x001E8BB1  56                      push     esi                            
  0x001E8BB2  8bf1                    mov      esi, ecx                       
  0x001E8BB4  8b8ee0000000            mov      ecx, dword ptr [esi + 0xe0]    
  0x001E8BBA  2bc1                    sub      eax, ecx                       
  0x001E8BBC  c1f805                  sar      eax, 5                         
  0x001E8BBF  0fb6d0                  movzx    edx, al                        
  0x001E8BC2  c1e205                  shl      edx, 5                         
  0x001E8BC5  800c0aff                or       byte ptr [edx + ecx], 0xff     
  0x001E8BC9  8a5e79                  mov      bl, byte ptr [esi + 0x79]      
  0x001E8BCC  8b8ee0000000            mov      ecx, dword ptr [esi + 0xe0]    
  0x001E8BD2  885c0a01                mov      byte ptr [edx + ecx + 1], bl   
  0x001E8BD6  884679                  mov      byte ptr [esi + 0x79], al      
  0x001E8BD9  5e                      pop      esi                            
  0x001E8BDA  5b                      pop      ebx                            
  0x001E8BDB  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E8BDE
; Start: 0x001E8BDE  End: 0x001E8BF2  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8E69, sub_001E9049, sub_001E908E, sub_001E9155, sub_001E9A87, sub_001E9B0D, sub_001E9DE4
; ============================================================
sub_001E8BDE:
  0x001E8BDE  8a4101                  mov      al, byte ptr [ecx + 1]         
  0x001E8BE1  3c80                    cmp      al, 0x80                       
  0x001E8BE3  740d                    je       0x1e8bf2                       
  0x001E8BE5  0fb6c0                  movzx    eax, al                        
  0x001E8BE8  c1e005                  shl      eax, 5                         
  0x001E8BEB  0305b029b200            add      eax, dword ptr [0xb229b0]      
  0x001E8BF1  c3                      ret                                     
; end of function
                                        ; XREF: 0x001E8BE3 (cond_jump)
  0x001E8BF2  33c0                    xor      eax, eax                       
  0x001E8BF4  c3                      ret                                     

; ============================================================
; Function: sub_001E8BF5
; Start: 0x001E8BF5  End: 0x001E8C09  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8EDF, sub_001E9469, sub_001E9B0D, sub_001E9B79, sub_001E9BAA, sub_001E9BF2
; ============================================================
sub_001E8BF5:
  0x001E8BF5  8a4102                  mov      al, byte ptr [ecx + 2]         
  0x001E8BF8  3c80                    cmp      al, 0x80                       
  0x001E8BFA  740d                    je       0x1e8c09                       
  0x001E8BFC  0fb6c0                  movzx    eax, al                        
  0x001E8BFF  c1e005                  shl      eax, 5                         
  0x001E8C02  0305b029b200            add      eax, dword ptr [0xb229b0]      
  0x001E8C08  c3                      ret                                     
; end of function
                                        ; XREF: 0x001E8BFA (cond_jump)
  0x001E8C09  33c0                    xor      eax, eax                       
  0x001E8C0B  c3                      ret                                     

; ============================================================
; Function: sub_001E8C0C
; Start: 0x001E8C0C  End: 0x001E8C20  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8EDF, sub_001E9B0D, sub_001E9B79, sub_001E9BAA, sub_001E9BF2
; ============================================================
sub_001E8C0C:
  0x001E8C0C  8a4103                  mov      al, byte ptr [ecx + 3]         
  0x001E8C0F  3c80                    cmp      al, 0x80                       
  0x001E8C11  740d                    je       0x1e8c20                       
  0x001E8C13  0fb6c0                  movzx    eax, al                        
  0x001E8C16  c1e005                  shl      eax, 5                         
  0x001E8C19  0305b029b200            add      eax, dword ptr [0xb229b0]      
  0x001E8C1F  c3                      ret                                     
; end of function
                                        ; XREF: 0x001E8C11 (cond_jump)
  0x001E8C20  33c0                    xor      eax, eax                       
  0x001E8C22  c3                      ret                                     

; ============================================================
; Function: sub_001E8C23
; Start: 0x001E8C23  End: 0x001E8CEA  Size: 199 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F2A, sub_001E9BAA
; Called by: sub_001E8DED, sub_001E908E
; ============================================================
sub_001E8C23:
  0x001E8C23  53                      push     ebx                            
  0x001E8C24  56                      push     esi                            
  0x001E8C25  57                      push     edi                            
  0x001E8C26  8bf9                    mov      edi, ecx                       
  0x001E8C28  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E8C2D  e8f8f2ffff              call     0x1e7f2a                       ; -> sub_001E7F2A
  0x001E8C32  8bf0                    mov      esi, eax                       
  0x001E8C34  33db                    xor      ebx, ebx                       
  0x001E8C36  3bf3                    cmp      esi, ebx                       
  0x001E8C38  0f84a6000000            je       0x1e8ce4                       
  0x001E8C3E  8a442410                mov      al, byte ptr [esp + 0x10]      
  0x001E8C42  c606fe                  mov      byte ptr [esi], 0xfe           
  0x001E8C45  884604                  mov      byte ptr [esi + 4], al         
  0x001E8C48  895e10                  mov      dword ptr [esi + 0x10], ebx    
  0x001E8C4B  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E8C4E  56                      push     esi                            
  0x001E8C4F  8bcf                    mov      ecx, edi                       
  0x001E8C51  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E8C54  e8510f0000              call     0x1e9baa                       ; -> sub_001E9BAA
  0x001E8C59  381dd028b200            cmp      byte ptr [0xb228d0], bl        
  0x001E8C5F  8a442414                mov      al, byte ptr [esp + 0x14]      
  0x001E8C63  743a                    je       0x1e8c9f                       
  0x001E8C65  884605                  mov      byte ptr [esi + 5], al         
  0x001E8C68  ff1528d21e00            call     dword ptr [0x1ed228]           ; -> xbox_KeQueryInterruptTime
  0x001E8C6E  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E8C71  814618a0860100          add      dword ptr [esi + 0x18], 0x186a0 
  0x001E8C78  89561c                  mov      dword ptr [esi + 0x1c], edx    
  0x001E8C7B  895e10                  mov      dword ptr [esi + 0x10], ebx    
  0x001E8C7E  115e1c                  adc      dword ptr [esi + 0x1c], ebx    
  0x001E8C81  a14c29b200              mov      eax, dword ptr [0xb2294c]      
  0x001E8C86  3bc3                    cmp      eax, ebx                       
  0x001E8C88  750b                    jne      0x1e8c95                       
  0x001E8C8A  89354c29b200            mov      dword ptr [0xb2294c], esi      
  0x001E8C90  eb52                    jmp      0x1e8ce4                       
                                        ; XREF: 0x001E8C98 (cond_jump)
  0x001E8C92  8b4010                  mov      eax, dword ptr [eax + 0x10]    
                                        ; XREF: 0x001E8C88 (cond_jump)
  0x001E8C95  395810                  cmp      dword ptr [eax + 0x10], ebx    
  0x001E8C98  75f8                    jne      0x1e8c92                       
  0x001E8C9A  897010                  mov      dword ptr [eax + 0x10], esi    
  0x001E8C9D  eb45                    jmp      0x1e8ce4                       
                                        ; XREF: 0x001E8C63 (cond_jump)
  0x001E8C9F  c606fd                  mov      byte ptr [esi], 0xfd           
  0x001E8CA2  680429b200              push     0xb22904                       
  0x001E8CA7  a2d228b200              mov      byte ptr [0xb228d2], al        
  0x001E8CAC  83c9ff                  or       ecx, 0xffffffff                
  0x001E8CAF  51                      push     ecx                            
  0x001E8CB0  b8c0bdf0ff              mov      eax, 0xfff0bdc0                
  0x001E8CB5  50                      push     eax                            
  0x001E8CB6  c605d028b20001          mov      byte ptr [0xb228d0], 1         
  0x001E8CBD  881dd128b200            mov      byte ptr [0xb228d1], bl        
  0x001E8CC3  89355029b200            mov      dword ptr [0xb22950], esi      
  0x001E8CC9  c605d328b20080          mov      byte ptr [0xb228d3], 0x80      
  0x001E8CD0  885e05                  mov      byte ptr [esi + 5], bl         
  0x001E8CD3  682029b200              push     0xb22920                       
  0x001E8CD8  881d4829b200            mov      byte ptr [0xb22948], bl        
  0x001E8CDE  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
                                        ; XREF: 0x001E8C38 (cond_jump), 0x001E8C90 (jump), 0x001E8C9D (jump)
  0x001E8CE4  5f                      pop      edi                            
  0x001E8CE5  5e                      pop      esi                            
  0x001E8CE6  5b                      pop      ebx                            
  0x001E8CE7  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E8CEA
; Start: 0x001E8CEA  End: 0x001E8D0C  Size: 34 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E8CEA:
  0x001E8CEA  680429b200              push     0xb22904                       
  0x001E8CEF  83c9ff                  or       ecx, 0xffffffff                
  0x001E8CF2  51                      push     ecx                            
  0x001E8CF3  b8800f05fd              mov      eax, 0xfd050f80                
  0x001E8CF8  50                      push     eax                            
  0x001E8CF9  682029b200              push     0xb22920                       
  0x001E8CFE  c6054829b20001          mov      byte ptr [0xb22948], 1         
  0x001E8D05  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001E8D0B  c3                      ret                                     
; end of function
                                        ; XREF: 0x001E8E64 (jump)
  0x001E8D0C  837c240400              cmp      dword ptr [esp + 4], 0         
  0x001E8D11  c605d328b20081          mov      byte ptr [0xb228d3], 0x81      
  0x001E8D18  7d0d                    jge      0x1e8d27                       
  0x001E8D1A  ff742408                push     dword ptr [esp + 8]            
  0x001E8D1E  6a00                    push     0                              
  0x001E8D20  e830040000              call     0x1e9155                       ; -> sub_001E9155
  0x001E8D25  eb33                    jmp      0x1e8d5a                       
                                        ; XREF: 0x001E8D18 (cond_jump)
  0x001E8D27  817c240400000001        cmp      dword ptr [esp + 4], 0x1000000 
  0x001E8D2F  7508                    jne      0x1e8d39                       
  0x001E8D31  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001E8D35  80480480                or       byte ptr [eax + 4], 0x80       
                                        ; XREF: 0x001E8D2F (cond_jump)
  0x001E8D39  680429b200              push     0xb22904                       
  0x001E8D3E  83c9ff                  or       ecx, 0xffffffff                
  0x001E8D41  51                      push     ecx                            
  0x001E8D42  b86079feff              mov      eax, 0xfffe7960                
  0x001E8D47  50                      push     eax                            
  0x001E8D48  682029b200              push     0xb22920                       
  0x001E8D4D  c6054829b20002          mov      byte ptr [0xb22948], 2         
  0x001E8D54  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
                                        ; XREF: 0x001E8D25 (jump)
  0x001E8D5A  c20800                  ret      8                              
  0x001E8D5D  680429b200              push     0xb22904                       
  0x001E8D62  83c9ff                  or       ecx, 0xffffffff                
  0x001E8D65  51                      push     ecx                            
  0x001E8D66  b8e0b1ffff              mov      eax, 0xffffb1e0                
  0x001E8D6B  50                      push     eax                            
  0x001E8D6C  682029b200              push     0xb22920                       
  0x001E8D71  c605d328b20084          mov      byte ptr [0xb228d3], 0x84      
  0x001E8D78  c6054829b20003          mov      byte ptr [0xb22948], 3         
  0x001E8D7F  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001E8D85  c20800                  ret      8                              

; ============================================================
; Function: sub_001E8D88
; Start: 0x001E8D88  End: 0x001E8DAB  Size: 35 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E8D88:
  0x001E8D88  53                      push     ebx                            
  0x001E8D89  33d2                    xor      edx, edx                       
  0x001E8D8B  32db                    xor      bl, bl                         
  0x001E8D8D  42                      inc      edx                            
  0x001E8D8E  56                      push     esi                            
  0x001E8D8F  8ac2                    mov      al, dl                         
                                        ; XREF: 0x001E8DA7 (cond_jump)
  0x001E8D91  0fb6f3                  movzx    esi, bl                        
  0x001E8D94  8554b108                test     dword ptr [ecx + esi*4 + 8], edx 
  0x001E8D98  7411                    je       0x1e8dab                       
  0x001E8D9A  d1e2                    shl      edx, 1                         
  0x001E8D9C  7505                    jne      0x1e8da3                       
  0x001E8D9E  33d2                    xor      edx, edx                       
  0x001E8DA0  fec3                    inc      bl                             
  0x001E8DA2  42                      inc      edx                            
                                        ; XREF: 0x001E8D9C (cond_jump)
  0x001E8DA3  fec0                    inc      al                             
  0x001E8DA5  3c80                    cmp      al, 0x80                       
  0x001E8DA7  72e8                    jb       0x1e8d91                       
  0x001E8DA9  eb09                    jmp      0x1e8db4                       
; end of function
                                        ; XREF: 0x001E8D98 (cond_jump)
  0x001E8DAB  0fb6f3                  movzx    esi, bl                        
  0x001E8DAE  8d4cb108                lea      ecx, [ecx + esi*4 + 8]         
  0x001E8DB2  0911                    or       dword ptr [ecx], edx           
                                        ; XREF: 0x001E8DA9 (jump)
  0x001E8DB4  5e                      pop      esi                            
  0x001E8DB5  247f                    and      al, 0x7f                       
  0x001E8DB7  5b                      pop      ebx                            
  0x001E8DB8  c3                      ret                                     

; ============================================================
; Function: sub_001E8DB9
; Start: 0x001E8DB9  End: 0x001E8DED  Size: 52 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E8E69, sub_001E908E
; ============================================================
sub_001E8DB9:
  0x001E8DB9  53                      push     ebx                            
  0x001E8DBA  32db                    xor      bl, bl                         
  0x001E8DBC  feca                    dec      dl                             
  0x001E8DBE  80fa1f                  cmp      dl, 0x1f                       
  0x001E8DC1  56                      push     esi                            
  0x001E8DC2  7614                    jbe      0x1e8dd8                       
  0x001E8DC4  8ac2                    mov      al, dl                         
  0x001E8DC6  2c20                    sub      al, 0x20                       
  0x001E8DC8  c0e805                  shr      al, 5                          
  0x001E8DCB  fec0                    inc      al                             
  0x001E8DCD  0fb6c0                  movzx    eax, al                        
  0x001E8DD0  8ad8                    mov      bl, al                         
                                        ; XREF: 0x001E8DD6 (cond_jump)
  0x001E8DD2  80c2e0                  add      dl, 0xe0                       
  0x001E8DD5  48                      dec      eax                            
  0x001E8DD6  75fa                    jne      0x1e8dd2                       
                                        ; XREF: 0x001E8DC2 (cond_jump)
  0x001E8DD8  0fb6c3                  movzx    eax, bl                        
  0x001E8DDB  33f6                    xor      esi, esi                       
  0x001E8DDD  8d448108                lea      eax, [ecx + eax*4 + 8]         
  0x001E8DE1  46                      inc      esi                            
  0x001E8DE2  8aca                    mov      cl, dl                         
  0x001E8DE4  d3e6                    shl      esi, cl                        
  0x001E8DE6  f7d6                    not      esi                            
  0x001E8DE8  2130                    and      dword ptr [eax], esi           
  0x001E8DEA  5e                      pop      esi                            
  0x001E8DEB  5b                      pop      ebx                            
  0x001E8DEC  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E8DED
; Start: 0x001E8DED  End: 0x001E8E02  Size: 21 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8C23
; Called by: sub_001EB721
; ============================================================
sub_001E8DED:
  0x001E8DED  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E8DF1  8b48ec                  mov      ecx, dword ptr [eax - 0x14]    
  0x001E8DF4  6a05                    push     5                              
  0x001E8DF6  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E8DFA  e824feffff              call     0x1e8c23                       ; -> sub_001E8C23
  0x001E8DFF  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E8E02
; Start: 0x001E8E02  End: 0x001E8E24  Size: 34 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E9155
; ============================================================
sub_001E8E02:
  0x001E8E02  53                      push     ebx                            
  0x001E8E03  56                      push     esi                            
  0x001E8E04  8b355029b200            mov      esi, dword ptr [0xb22950]      
  0x001E8E0A  57                      push     edi                            
  0x001E8E0B  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E8E0E  33db                    xor      ebx, ebx                       
  0x001E8E10  83c718                  add      edi, 0x18                      
  0x001E8E13  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E8E19  7409                    je       0x1e8e24                       
  0x001E8E1B  56                      push     esi                            
  0x001E8E1C  53                      push     ebx                            
  0x001E8E1D  e833030000              call     0x1e9155                       ; -> sub_001E9155
  0x001E8E22  eb3c                    jmp      0x1e8e60                       
; end of function
                                        ; XREF: 0x001E8E19 (cond_jump)
  0x001E8E24  8bce                    mov      ecx, esi                       
  0x001E8E26  881dd328b200            mov      byte ptr [0xb228d3], bl        
  0x001E8E2C  e8adfdffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E8E31  3818                    cmp      byte ptr [eax], bl             
  0x001E8E33  7517                    jne      0x1e8e4c                       
  0x001E8E35  33c0                    xor      eax, eax                       
  0x001E8E37  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E8E3A  56                      push     esi                            
  0x001E8E3B  680c8d1e00              push     0x1e8d0c                       
  0x001E8E40  83e07f                  and      eax, 0x7f                      
  0x001E8E43  50                      push     eax                            
  0x001E8E44  57                      push     edi                            
  0x001E8E45  e866290000              call     0x1eb7b0                       ; -> sub_001EB7B0
  0x001E8E4A  eb14                    jmp      0x1e8e60                       
                                        ; XREF: 0x001E8E33 (cond_jump)
  0x001E8E4C  33c9                    xor      ecx, ecx                       
  0x001E8E4E  8a4e04                  mov      cl, byte ptr [esi + 4]         
  0x001E8E51  53                      push     ebx                            
  0x001E8E52  56                      push     esi                            
  0x001E8E53  81e17fffffff            and      ecx, 0xffffff7f                
  0x001E8E59  51                      push     ecx                            
  0x001E8E5A  50                      push     eax                            
  0x001E8E5B  e8e21f0000              call     0x1eae42                       ; -> sub_001EAE42
                                        ; XREF: 0x001E8E22 (jump), 0x001E8E4A (jump)
  0x001E8E60  5f                      pop      edi                            
  0x001E8E61  5e                      pop      esi                            
  0x001E8E62  5b                      pop      ebx                            
  0x001E8E63  c3                      ret                                     

; ============================================================
; Function: sub_001E8E64
; Start: 0x001E8E64  End: 0x001E8E69  Size: 5 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EACD2
; ============================================================
sub_001E8E64:
  0x001E8E64  e9a3feffff              jmp      0x1e8d0c                       
; end of function

; ============================================================
; Function: sub_001E8E69
; Start: 0x001E8E69  End: 0x001E8EDF  Size: 118 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E6931, sub_001E8BAC, sub_001E8BDE, sub_001E8DB9, sub_001E9BF2
; Called by: sub_001E7182, sub_001E8EDF
; ============================================================
sub_001E8E69:
  0x001E8E69  53                      push     ebx                            
  0x001E8E6A  56                      push     esi                            
  0x001E8E6B  8bf1                    mov      esi, ecx                       
  0x001E8E6D  8a4607                  mov      al, byte ptr [esi + 7]         
  0x001E8E70  3cff                    cmp      al, 0xff                       
  0x001E8E72  57                      push     edi                            
  0x001E8E73  741b                    je       0x1e8e90                       
  0x001E8E75  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E8E78  8b4914                  mov      ecx, dword ptr [ecx + 0x14]    
  0x001E8E7B  0fb6c0                  movzx    eax, al                        
  0x001E8E7E  8b0481                  mov      eax, dword ptr [ecx + eax*4]   
  0x001E8E81  85c0                    test     eax, eax                       
  0x001E8E83  740b                    je       0x1e8e90                       
  0x001E8E85  6a00                    push     0                              
  0x001E8E87  ff7614                  push     dword ptr [esi + 0x14]         
  0x001E8E8A  50                      push     eax                            
  0x001E8E8B  e8a1daffff              call     0x1e6931                       ; -> sub_001E6931
                                        ; XREF: 0x001E8E73 (cond_jump), 0x001E8E83 (cond_jump)
  0x001E8E90  803e05                  cmp      byte ptr [esi], 5              
  0x001E8E93  bbd028b200              mov      ebx, 0xb228d0                  
  0x001E8E98  752a                    jne      0x1e8ec4                       
  0x001E8E9A  8bce                    mov      ecx, esi                       
  0x001E8E9C  e83dfdffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E8EA1  8bf8                    mov      edi, eax                       
  0x001E8EA3  56                      push     esi                            
  0x001E8EA4  8bcf                    mov      ecx, edi                       
  0x001E8EA6  e8470d0000              call     0x1e9bf2                       ; -> sub_001E9BF2
  0x001E8EAB  84c0                    test     al, al                         
  0x001E8EAD  7524                    jne      0x1e8ed3                       
  0x001E8EAF  8a5705                  mov      dl, byte ptr [edi + 5]         
  0x001E8EB2  8b4f0c                  mov      ecx, dword ptr [edi + 0xc]     
  0x001E8EB5  e8fffeffff              call     0x1e8db9                       ; -> sub_001E8DB9
  0x001E8EBA  57                      push     edi                            
  0x001E8EBB  8bcb                    mov      ecx, ebx                       
  0x001E8EBD  e8eafcffff              call     0x1e8bac                       ; -> sub_001E8BAC
  0x001E8EC2  eb0f                    jmp      0x1e8ed3                       
                                        ; XREF: 0x001E8E98 (cond_jump)
  0x001E8EC4  8a5605                  mov      dl, byte ptr [esi + 5]         
  0x001E8EC7  84d2                    test     dl, dl                         
  0x001E8EC9  7408                    je       0x1e8ed3                       
  0x001E8ECB  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001E8ECE  e8e6feffff              call     0x1e8db9                       ; -> sub_001E8DB9
                                        ; XREF: 0x001E8EAD (cond_jump), 0x001E8EC2 (jump), 0x001E8EC9 (cond_jump)
  0x001E8ED3  56                      push     esi                            
  0x001E8ED4  8bcb                    mov      ecx, ebx                       
  0x001E8ED6  e8d1fcffff              call     0x1e8bac                       ; -> sub_001E8BAC
  0x001E8EDB  5f                      pop      edi                            
  0x001E8EDC  5e                      pop      esi                            
  0x001E8EDD  5b                      pop      ebx                            
  0x001E8EDE  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E8EDF
; Start: 0x001E8EDF  End: 0x001E8F31  Size: 82 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BF5, sub_001E8C0C, sub_001E8E69
; Called by: sub_001E8F31, sub_001E8FD2
; ============================================================
sub_001E8EDF:
  0x001E8EDF  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001E8EE3  803904                  cmp      byte ptr [ecx], 4              
  0x001E8EE6  56                      push     esi                            
  0x001E8EE7  7532                    jne      0x1e8f1b                       
  0x001E8EE9  e807fdffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E8EEE  8bf0                    mov      esi, eax                       
  0x001E8EF0  85f6                    test     esi, esi                       
  0x001E8EF2  7439                    je       0x1e8f2d                       
  0x001E8EF4  57                      push     edi                            
                                        ; XREF: 0x001E8F16 (cond_jump)
  0x001E8EF5  8bce                    mov      ecx, esi                       
  0x001E8EF7  e810fdffff              call     0x1e8c0c                       ; -> sub_001E8C0C
  0x001E8EFC  8bf8                    mov      edi, eax                       
  0x001E8EFE  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001E8F01  85c0                    test     eax, eax                       
  0x001E8F03  7406                    je       0x1e8f0b                       
  0x001E8F05  56                      push     esi                            
  0x001E8F06  ff500c                  call     dword ptr [eax + 0xc]          
  0x001E8F09  eb07                    jmp      0x1e8f12                       
                                        ; XREF: 0x001E8F03 (cond_jump)
  0x001E8F0B  8bce                    mov      ecx, esi                       
  0x001E8F0D  e857ffffff              call     0x1e8e69                       ; -> sub_001E8E69
                                        ; XREF: 0x001E8F09 (jump)
  0x001E8F12  85ff                    test     edi, edi                       
  0x001E8F14  8bf7                    mov      esi, edi                       
  0x001E8F16  75dd                    jne      0x1e8ef5                       
  0x001E8F18  5f                      pop      edi                            
  0x001E8F19  eb12                    jmp      0x1e8f2d                       
                                        ; XREF: 0x001E8EE7 (cond_jump)
  0x001E8F1B  8b4110                  mov      eax, dword ptr [ecx + 0x10]    
  0x001E8F1E  85c0                    test     eax, eax                       
  0x001E8F20  7406                    je       0x1e8f28                       
  0x001E8F22  51                      push     ecx                            
  0x001E8F23  ff500c                  call     dword ptr [eax + 0xc]          
  0x001E8F26  eb05                    jmp      0x1e8f2d                       
                                        ; XREF: 0x001E8F20 (cond_jump)
  0x001E8F28  e83cffffff              call     0x1e8e69                       ; -> sub_001E8E69
                                        ; XREF: 0x001E8EF2 (cond_jump), 0x001E8F19 (jump), 0x001E8F26 (jump)
  0x001E8F2D  5e                      pop      esi                            
  0x001E8F2E  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E8F31
; Start: 0x001E8F31  End: 0x001E8F62  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8EDF
; Called by: sub_001E908E
; ============================================================
sub_001E8F31:
  0x001E8F31  53                      push     ebx                            
  0x001E8F32  33db                    xor      ebx, ebx                       
  0x001E8F34  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E8F3A  7409                    je       0x1e8f45                       
  0x001E8F3C  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E8F40  e89affffff              call     0x1e8edf                       ; -> sub_001E8EDF
                                        ; XREF: 0x001E8F3A (cond_jump)
  0x001E8F45  a14c29b200              mov      eax, dword ptr [0xb2294c]      
  0x001E8F4A  3bc3                    cmp      eax, ebx                       
  0x001E8F4C  881dd128b200            mov      byte ptr [0xb228d1], bl        
  0x001E8F52  750e                    jne      0x1e8f62                       
  0x001E8F54  891d5029b200            mov      dword ptr [0xb22950], ebx      
  0x001E8F5A  881dd028b200            mov      byte ptr [0xb228d0], bl        
  0x001E8F60  eb6c                    jmp      0x1e8fce                       
; end of function
                                        ; XREF: 0x001E8F52 (cond_jump)
  0x001E8F62  a35029b200              mov      dword ptr [0xb22950], eax      
  0x001E8F67  8b4810                  mov      ecx, dword ptr [eax + 0x10]    
  0x001E8F6A  890d4c29b200            mov      dword ptr [0xb2294c], ecx      
  0x001E8F70  8a4805                  mov      cl, byte ptr [eax + 5]         
  0x001E8F73  880dd228b200            mov      byte ptr [0xb228d2], cl        
  0x001E8F79  c605d328b20080          mov      byte ptr [0xb228d3], 0x80      
  0x001E8F80  c600fd                  mov      byte ptr [eax], 0xfd           
  0x001E8F83  a15029b200              mov      eax, dword ptr [0xb22950]      
  0x001E8F88  895810                  mov      dword ptr [eax + 0x10], ebx    
  0x001E8F8B  a15029b200              mov      eax, dword ptr [0xb22950]      
  0x001E8F90  885805                  mov      byte ptr [eax + 5], bl         
  0x001E8F93  ff1528d21e00            call     dword ptr [0x1ed228]           ; -> xbox_KeQueryInterruptTime
  0x001E8F99  8b0d5029b200            mov      ecx, dword ptr [0xb22950]      
  0x001E8F9F  3b511c                  cmp      edx, dword ptr [ecx + 0x1c]    
  0x001E8FA2  7c0e                    jl       0x1e8fb2                       
  0x001E8FA4  7f05                    jg       0x1e8fab                       
  0x001E8FA6  3b4118                  cmp      eax, dword ptr [ecx + 0x18]    
  0x001E8FA9  7607                    jbe      0x1e8fb2                       
                                        ; XREF: 0x001E8FA4 (cond_jump)
  0x001E8FAB  e852feffff              call     0x1e8e02                       ; -> sub_001E8E02
  0x001E8FB0  eb1c                    jmp      0x1e8fce                       
                                        ; XREF: 0x001E8FA2 (cond_jump), 0x001E8FA9 (cond_jump)
  0x001E8FB2  680429b200              push     0xb22904                       
  0x001E8FB7  881d4829b200            mov      byte ptr [0xb22948], bl        
  0x001E8FBD  ff711c                  push     dword ptr [ecx + 0x1c]         
  0x001E8FC0  ff7118                  push     dword ptr [ecx + 0x18]         
  0x001E8FC3  682029b200              push     0xb22920                       
  0x001E8FC8  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
                                        ; XREF: 0x001E8F60 (jump), 0x001E8FB0 (jump)
  0x001E8FCE  5b                      pop      ebx                            
  0x001E8FCF  c20800                  ret      8                              

; ============================================================
; Function: sub_001E8FD2
; Start: 0x001E8FD2  End: 0x001E9049  Size: 119 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BAC, sub_001E8EDF, sub_001E9B79, sub_001E9BF2
; Called by: sub_001E910F, sub_001EB0A2
; ============================================================
sub_001E8FD2:
  0x001E8FD2  56                      push     esi                            
  0x001E8FD3  57                      push     edi                            
  0x001E8FD4  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E8FD8  8bf9                    mov      edi, ecx                       
  0x001E8FDA  e89a0b0000              call     0x1e9b79                       ; -> sub_001E9B79
  0x001E8FDF  8bf0                    mov      esi, eax                       
  0x001E8FE1  85f6                    test     esi, esi                       
  0x001E8FE3  745f                    je       0x1e9044                       
  0x001E8FE5  56                      push     esi                            
  0x001E8FE6  8bcf                    mov      ecx, edi                       
  0x001E8FE8  e8050c0000              call     0x1e9bf2                       ; -> sub_001E9BF2
  0x001E8FED  803efe                  cmp      byte ptr [esi], 0xfe           
  0x001E8FF0  7532                    jne      0x1e9024                       
  0x001E8FF2  a14c29b200              mov      eax, dword ptr [0xb2294c]      
  0x001E8FF7  3bc6                    cmp      eax, esi                       
  0x001E8FF9  750d                    jne      0x1e9008                       
  0x001E8FFB  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001E8FFE  a34c29b200              mov      dword ptr [0xb2294c], eax      
  0x001E9003  eb0e                    jmp      0x1e9013                       
                                        ; XREF: 0x001E900B (cond_jump)
  0x001E9005  8b4010                  mov      eax, dword ptr [eax + 0x10]    
                                        ; XREF: 0x001E8FF9 (cond_jump)
  0x001E9008  3b7010                  cmp      esi, dword ptr [eax + 0x10]    
  0x001E900B  75f8                    jne      0x1e9005                       
  0x001E900D  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E9010  894810                  mov      dword ptr [eax + 0x10], ecx    
                                        ; XREF: 0x001E9003 (jump)
  0x001E9013  83661000                and      dword ptr [esi + 0x10], 0      
  0x001E9017  56                      push     esi                            
  0x001E9018  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E901D  e88afbffff              call     0x1e8bac                       ; -> sub_001E8BAC
  0x001E9022  eb20                    jmp      0x1e9044                       
                                        ; XREF: 0x001E8FF0 (cond_jump)
  0x001E9024  803dd028b20000          cmp      byte ptr [0xb228d0], 0         
  0x001E902B  7411                    je       0x1e903e                       
  0x001E902D  39355029b200            cmp      dword ptr [0xb22950], esi      
  0x001E9033  7509                    jne      0x1e903e                       
  0x001E9035  c605d128b20001          mov      byte ptr [0xb228d1], 1         
  0x001E903C  eb06                    jmp      0x1e9044                       
                                        ; XREF: 0x001E902B (cond_jump), 0x001E9033 (cond_jump)
  0x001E903E  56                      push     esi                            
  0x001E903F  e89bfeffff              call     0x1e8edf                       ; -> sub_001E8EDF
                                        ; XREF: 0x001E8FE3 (cond_jump), 0x001E9022 (jump), 0x001E903C (jump)
  0x001E9044  5f                      pop      edi                            
  0x001E9045  5e                      pop      esi                            
  0x001E9046  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E9049
; Start: 0x001E9049  End: 0x001E905D  Size: 20 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8BDE
; ============================================================
sub_001E9049:
  0x001E9049  55                      push     ebp                            
  0x001E904A  8bec                    mov      ebp, esp                       
  0x001E904C  51                      push     ecx                            
  0x001E904D  803905                  cmp      byte ptr [ecx], 5              
  0x001E9050  56                      push     esi                            
  0x001E9051  57                      push     edi                            
  0x001E9052  7509                    jne      0x1e905d                       
  0x001E9054  e885fbffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9059  8bf0                    mov      esi, eax                       
  0x001E905B  eb02                    jmp      0x1e905f                       
; end of function
                                        ; XREF: 0x001E9052 (cond_jump)
  0x001E905D  8bf1                    mov      esi, ecx                       
                                        ; XREF: 0x001E905B (jump)
  0x001E905F  8bce                    mov      ecx, esi                       
  0x001E9061  e878fbffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9066  8bf8                    mov      edi, eax                       
  0x001E9068  85ff                    test     edi, edi                       
  0x001E906A  741e                    je       0x1e908a                       
  0x001E906C  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E906F  247f                    and      al, 0x7f                       
  0x001E9071  8845fc                  mov      byte ptr [ebp - 4], al         
  0x001E9074  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E9077  8bcf                    mov      ecx, edi                       
  0x001E9079  e854ffffff              call     0x1e8fd2                       ; -> sub_001E8FD2
  0x001E907E  6a05                    push     5                              
  0x001E9080  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E9083  8bcf                    mov      ecx, edi                       
  0x001E9085  e899fbffff              call     0x1e8c23                       ; -> sub_001E8C23
                                        ; XREF: 0x001E906A (cond_jump)
  0x001E908A  5f                      pop      edi                            
  0x001E908B  5e                      pop      esi                            
  0x001E908C  c9                      leave                                   
  0x001E908D  c3                      ret                                     

; ============================================================
; Function: sub_001E908E
; Start: 0x001E908E  End: 0x001E910F  Size: 129 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8BAC, sub_001E8BDE, sub_001E8C23, sub_001E8DB9, sub_001E8F31, sub_001E9BF2
; Called by: sub_001E9122
; ============================================================
sub_001E908E:
  0x001E908E  55                      push     ebp                            
  0x001E908F  8bec                    mov      ebp, esp                       
  0x001E9091  51                      push     ecx                            
  0x001E9092  53                      push     ebx                            
  0x001E9093  56                      push     esi                            
  0x001E9094  32db                    xor      bl, bl                         
  0x001E9096  205dfc                  and      byte ptr [ebp - 4], bl         
  0x001E9099  57                      push     edi                            
  0x001E909A  33ff                    xor      edi, edi                       
  0x001E909C  803dd128b20000          cmp      byte ptr [0xb228d1], 0         
  0x001E90A3  8bf1                    mov      esi, ecx                       
  0x001E90A5  c605d328b2000a          mov      byte ptr [0xb228d3], 0xa       
  0x001E90AC  7522                    jne      0x1e90d0                       
  0x001E90AE  e82bfbffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E90B3  8bf8                    mov      edi, eax                       
  0x001E90B5  56                      push     esi                            
  0x001E90B6  8bcf                    mov      ecx, edi                       
  0x001E90B8  e8350b0000              call     0x1e9bf2                       ; -> sub_001E9BF2
  0x001E90BD  a0d228b200              mov      al, byte ptr [0xb228d2]        
  0x001E90C2  84c0                    test     al, al                         
  0x001E90C4  740a                    je       0x1e90d0                       
  0x001E90C6  8ad8                    mov      bl, al                         
  0x001E90C8  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E90CB  247f                    and      al, 0x7f                       
  0x001E90CD  8845fc                  mov      byte ptr [ebp - 4], al         
                                        ; XREF: 0x001E90AC (cond_jump), 0x001E90C4 (cond_jump)
  0x001E90D0  8a5605                  mov      dl, byte ptr [esi + 5]         
  0x001E90D3  84d2                    test     dl, dl                         
  0x001E90D5  7408                    je       0x1e90df                       
  0x001E90D7  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001E90DA  e8dafcffff              call     0x1e8db9                       ; -> sub_001E8DB9
                                        ; XREF: 0x001E90D5 (cond_jump)
  0x001E90DF  56                      push     esi                            
  0x001E90E0  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E90E5  e8c2faffff              call     0x1e8bac                       ; -> sub_001E8BAC
  0x001E90EA  84db                    test     bl, bl                         
  0x001E90EC  740d                    je       0x1e90fb                       
  0x001E90EE  fecb                    dec      bl                             
  0x001E90F0  8bcf                    mov      ecx, edi                       
  0x001E90F2  53                      push     ebx                            
  0x001E90F3  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E90F6  e828fbffff              call     0x1e8c23                       ; -> sub_001E8C23
                                        ; XREF: 0x001E90EC (cond_jump)
  0x001E90FB  8025d128b20000          and      byte ptr [0xb228d1], 0         
  0x001E9102  56                      push     esi                            
  0x001E9103  6a00                    push     0                              
  0x001E9105  e827feffff              call     0x1e8f31                       ; -> sub_001E8F31
  0x001E910A  5f                      pop      edi                            
  0x001E910B  5e                      pop      esi                            
  0x001E910C  5b                      pop      ebx                            
  0x001E910D  c9                      leave                                   
  0x001E910E  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E910F
; Start: 0x001E910F  End: 0x001E9122  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8FD2
; Called by: sub_001EB721
; ============================================================
sub_001E910F:
  0x001E910F  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E9113  ff742408                push     dword ptr [esp + 8]            
  0x001E9117  8b48ec                  mov      ecx, dword ptr [eax - 0x14]    
  0x001E911A  e8b3feffff              call     0x1e8fd2                       ; -> sub_001E8FD2
  0x001E911F  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E9122
; Start: 0x001E9122  End: 0x001E9155  Size: 51 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E908E
; Called by: sub_001E9155
; ============================================================
sub_001E9122:
  0x001E9122  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001E9126  33c0                    xor      eax, eax                       
  0x001E9128  39442404                cmp      dword ptr [esp + 4], eax       
  0x001E912C  c605d328b20009          mov      byte ptr [0xb228d3], 9         
  0x001E9133  7d0b                    jge      0x1e9140                       
  0x001E9135  3805d128b200            cmp      byte ptr [0xb228d1], al        
  0x001E913B  750b                    jne      0x1e9148                       
  0x001E913D  884105                  mov      byte ptr [ecx + 5], al         
                                        ; XREF: 0x001E9133 (cond_jump)
  0x001E9140  3805d128b200            cmp      byte ptr [0xb228d1], al        
  0x001E9146  7405                    je       0x1e914d                       
                                        ; XREF: 0x001E913B (cond_jump)
  0x001E9148  a2d228b200              mov      byte ptr [0xb228d2], al        
                                        ; XREF: 0x001E9146 (cond_jump)
  0x001E914D  e83cffffff              call     0x1e908e                       ; -> sub_001E908E
  0x001E9152  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E9155
; Start: 0x001E9155  End: 0x001E91AE  Size: 89 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BDE, sub_001E9122, sub_001EAE42, sub_001EB7FD
; Called by: sub_001E8E02, sub_001E95A6, sub_001E975C
; ============================================================
sub_001E9155:
  0x001E9155  803dd128b20000          cmp      byte ptr [0xb228d1], 0         
  0x001E915C  56                      push     esi                            
  0x001E915D  c605d328b20008          mov      byte ptr [0xb228d3], 8         
  0x001E9164  7548                    jne      0x1e91ae                       
  0x001E9166  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E916A  8bce                    mov      ecx, esi                       
  0x001E916C  e86dfaffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9171  803800                  cmp      byte ptr [eax], 0              
  0x001E9174  7521                    jne      0x1e9197                       
  0x001E9176  33c0                    xor      eax, eax                       
  0x001E9178  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E917B  83e07f                  and      eax, 0x7f                      
  0x001E917E  50                      push     eax                            
  0x001E917F  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9182  83c018                  add      eax, 0x18                      
  0x001E9185  50                      push     eax                            
  0x001E9186  e872260000              call     0x1eb7fd                       ; -> sub_001EB7FD
  0x001E918B  56                      push     esi                            
  0x001E918C  6a00                    push     0                              
  0x001E918E  8bce                    mov      ecx, esi                       
  0x001E9190  e88dffffff              call     0x1e9122                       ; -> sub_001E9122
  0x001E9195  eb27                    jmp      0x1e91be                       
                                        ; XREF: 0x001E9174 (cond_jump)
  0x001E9197  33c9                    xor      ecx, ecx                       
  0x001E9199  8a4e04                  mov      cl, byte ptr [esi + 4]         
  0x001E919C  6a01                    push     1                              
  0x001E919E  56                      push     esi                            
  0x001E919F  81e17fffffff            and      ecx, 0xffffff7f                
  0x001E91A5  51                      push     ecx                            
  0x001E91A6  50                      push     eax                            
  0x001E91A7  e8961c0000              call     0x1eae42                       ; -> sub_001EAE42
  0x001E91AC  eb10                    jmp      0x1e91be                       
; end of function
                                        ; XREF: 0x001E9164 (cond_jump)
  0x001E91AE  8b4c240c                mov      ecx, dword ptr [esp + 0xc]     
  0x001E91B2  8025d228b20000          and      byte ptr [0xb228d2], 0         
  0x001E91B9  e8d0feffff              call     0x1e908e                       ; -> sub_001E908E
                                        ; XREF: 0x001E9195 (jump), 0x001E91AC (jump)
  0x001E91BE  5e                      pop      esi                            
  0x001E91BF  c20800                  ret      8                              

; ============================================================
; Function: sub_001E91C2
; Start: 0x001E91C2  End: 0x001E9227  Size: 101 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EAA4A
; Called by: sub_001E96A3
; ============================================================
sub_001E91C2:
  0x001E91C2  682029b200              push     0xb22920                       
  0x001E91C7  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E91CD  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E91D1  c605d328b20003          mov      byte ptr [0xb228d3], 3         
  0x001E91D8  83780400                cmp      dword ptr [eax + 4], 0         
  0x001E91DC  7c13                    jl       0x1e91f1                       
  0x001E91DE  803dd128b20000          cmp      byte ptr [0xb228d1], 0         
  0x001E91E5  c705dc28b2005d8d1e00    mov      dword ptr [0xb228dc], 0x1e8d5d 
  0x001E91EF  740a                    je       0x1e91fb                       
                                        ; XREF: 0x001E91DC (cond_jump)
  0x001E91F1  c705dc28b20055911e00    mov      dword ptr [0xb228dc], 0x1e9155 
                                        ; XREF: 0x001E91EF (cond_jump)
  0x001E91FB  56                      push     esi                            
  0x001E91FC  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E9200  c605d428b2001c          mov      byte ptr [0xb228d4], 0x1c      
  0x001E9207  c605d528b20043          mov      byte ptr [0xb228d5], 0x43      
  0x001E920E  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9211  68d428b200              push     0xb228d4                       
  0x001E9216  83c018                  add      eax, 0x18                      
  0x001E9219  50                      push     eax                            
  0x001E921A  e82b180000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E921F  83660800                and      dword ptr [esi + 8], 0         
  0x001E9223  5e                      pop      esi                            
  0x001E9224  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001E9227
; Start: 0x001E9227  End: 0x001E9245  Size: 30 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E9227:
  0x001E9227  55                      push     ebp                            
  0x001E9228  8bec                    mov      ebp, esp                       
  0x001E922A  817d0800040080          cmp      dword ptr [ebp + 8], 0x80000400 
  0x001E9231  53                      push     ebx                            
  0x001E9232  56                      push     esi                            
  0x001E9233  57                      push     edi                            
  0x001E9234  8bf1                    mov      esi, ecx                       
  0x001E9236  c605d328b20007          mov      byte ptr [0xb228d3], 7         
  0x001E923D  7506                    jne      0x1e9245                       
  0x001E923F  83661000                and      dword ptr [esi + 0x10], 0      
  0x001E9243  eb22                    jmp      0x1e9267                       
; end of function
                                        ; XREF: 0x001E923D (cond_jump)
  0x001E9245  8a4607                  mov      al, byte ptr [esi + 7]         
  0x001E9248  3cff                    cmp      al, 0xff                       
  0x001E924A  741b                    je       0x1e9267                       
  0x001E924C  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E924F  8b4914                  mov      ecx, dword ptr [ecx + 0x14]    
  0x001E9252  0fb6c0                  movzx    eax, al                        
  0x001E9255  8b0481                  mov      eax, dword ptr [ecx + eax*4]   
  0x001E9258  85c0                    test     eax, eax                       
  0x001E925A  740b                    je       0x1e9267                       
  0x001E925C  6a01                    push     1                              
  0x001E925E  ff7614                  push     dword ptr [esi + 0x14]         
  0x001E9261  50                      push     eax                            
  0x001E9262  e8cad6ffff              call     0x1e6931                       ; -> sub_001E6931
                                        ; XREF: 0x001E9243 (jump), 0x001E924A (cond_jump), 0x001E925A (cond_jump)
  0x001E9267  8a0e                    mov      cl, byte ptr [esi]             
  0x001E9269  80f902                  cmp      cl, 2                          
  0x001E926C  0f84bf000000            je       0x1e9331                       
  0x001E9272  80f901                  cmp      cl, 1                          
  0x001E9275  0f84b6000000            je       0x1e9331                       
  0x001E927B  8b7e08                  mov      edi, dword ptr [esi + 8]       
  0x001E927E  83660800                and      dword ptr [esi + 8], 0         
  0x001E9282  80f905                  cmp      cl, 5                          
  0x001E9285  8bc6                    mov      eax, esi                       
  0x001E9287  bb318f1e00              mov      ebx, 0x1e8f31                  
  0x001E928C  7559                    jne      0x1e92e7                       
  0x001E928E  8bce                    mov      ecx, esi                       
  0x001E9290  e877f9ffff              call     0x1e8c0c                       ; -> sub_001E8C0C
  0x001E9295  85c0                    test     eax, eax                       
  0x001E9297  7445                    je       0x1e92de                       
  0x001E9299  8b15ac29b200            mov      edx, dword ptr [0xb229ac]      
                                        ; XREF: 0x001E92A8 (cond_jump)
  0x001E929F  0fb60a                  movzx    ecx, byte ptr [edx]            
  0x001E92A2  03d1                    add      edx, ecx                       
  0x001E92A4  807a0104                cmp      byte ptr [edx + 1], 4          
  0x001E92A8  75f5                    jne      0x1e929f                       
  0x001E92AA  8915ac29b200            mov      dword ptr [0xb229ac], edx      
  0x001E92B0  8a4a02                  mov      cl, byte ptr [edx + 2]         
  0x001E92B3  884802                  mov      byte ptr [eax + 2], cl         
  0x001E92B6  8b15ac29b200            mov      edx, dword ptr [0xb229ac]      
  0x001E92BC  8a4a05                  mov      cl, byte ptr [edx + 5]         
  0x001E92BF  884d09                  mov      byte ptr [ebp + 9], cl         
  0x001E92C2  8a4a06                  mov      cl, byte ptr [edx + 6]         
  0x001E92C5  884d0a                  mov      byte ptr [ebp + 0xa], cl       
  0x001E92C8  8a4a07                  mov      cl, byte ptr [edx + 7]         
  0x001E92CB  884d0b                  mov      byte ptr [ebp + 0xb], cl       
  0x001E92CE  c6450882                mov      byte ptr [ebp + 8], 0x82       
  0x001E92D2  ff7508                  push     dword ptr [ebp + 8]            
  0x001E92D5  8bc8                    mov      ecx, eax                       
  0x001E92D7  e87e000000              call     0x1e935a                       ; -> sub_001E935A
  0x001E92DC  eb75                    jmp      0x1e9353                       
                                        ; XREF: 0x001E9297 (cond_jump)
  0x001E92DE  8bce                    mov      ecx, esi                       
  0x001E92E0  e8f9f8ffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E92E5  eb18                    jmp      0x1e92ff                       
                                        ; XREF: 0x001E928C (cond_jump)
  0x001E92E7  837d0800                cmp      dword ptr [ebp + 8], 0         
  0x001E92EB  7d12                    jge      0x1e92ff                       
  0x001E92ED  837e1000                cmp      dword ptr [esi + 0x10], 0      
  0x001E92F1  7507                    jne      0x1e92fa                       
  0x001E92F3  8025d228b20000          and      byte ptr [0xb228d2], 0         
                                        ; XREF: 0x001E92F1 (cond_jump)
  0x001E92FA  bb55911e00              mov      ebx, 0x1e9155                  
                                        ; XREF: 0x001E92E5 (jump), 0x001E92EB (cond_jump)
  0x001E92FF  a3e028b200              mov      dword ptr [0xb228e0], eax      
  0x001E9304  c605d428b2001c          mov      byte ptr [0xb228d4], 0x1c      
  0x001E930B  c605d528b20043          mov      byte ptr [0xb228d5], 0x43      
  0x001E9312  891ddc28b200            mov      dword ptr [0xb228dc], ebx      
  0x001E9318  893de428b200            mov      dword ptr [0xb228e4], edi      
  0x001E931E  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001E9321  68d428b200              push     0xb228d4                       
  0x001E9326  83c018                  add      eax, 0x18                      
  0x001E9329  50                      push     eax                            
  0x001E932A  e81b170000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E932F  eb22                    jmp      0x1e9353                       
                                        ; XREF: 0x001E926C (cond_jump), 0x001E9275 (cond_jump)
  0x001E9331  33c0                    xor      eax, eax                       
  0x001E9333  394508                  cmp      dword ptr [ebp + 8], eax       
  0x001E9336  7d14                    jge      0x1e934c                       
  0x001E9338  394610                  cmp      dword ptr [esi + 0x10], eax    
  0x001E933B  7506                    jne      0x1e9343                       
  0x001E933D  2005d228b200            and      byte ptr [0xb228d2], al        
                                        ; XREF: 0x001E933B (cond_jump)
  0x001E9343  56                      push     esi                            
  0x001E9344  50                      push     eax                            
  0x001E9345  e80bfeffff              call     0x1e9155                       ; -> sub_001E9155
  0x001E934A  eb07                    jmp      0x1e9353                       
                                        ; XREF: 0x001E9336 (cond_jump)
  0x001E934C  56                      push     esi                            
  0x001E934D  50                      push     eax                            
  0x001E934E  e8defbffff              call     0x1e8f31                       ; -> sub_001E8F31
                                        ; XREF: 0x001E92DC (jump), 0x001E932F (jump), 0x001E934A (jump)
  0x001E9353  5f                      pop      edi                            
  0x001E9354  5e                      pop      esi                            
  0x001E9355  5b                      pop      ebx                            
  0x001E9356  5d                      pop      ebp                            
  0x001E9357  c20400                  ret      4                              

; ============================================================
; Function: sub_001E935A
; Start: 0x001E935A  End: 0x001E937E  Size: 36 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7FD7, sub_001E9DE4
; Called by: sub_001E9469
; ============================================================
sub_001E935A:
  0x001E935A  56                      push     esi                            
  0x001E935B  8bf1                    mov      esi, ecx                       
  0x001E935D  e8820a0000              call     0x1e9de4                       ; -> sub_001E9DE4
  0x001E9362  837e1420                cmp      dword ptr [esi + 0x14], 0x20   
  0x001E9366  7416                    je       0x1e937e                       
  0x001E9368  ff742408                push     dword ptr [esp + 8]            
  0x001E936C  e866ecffff              call     0x1e7fd7                       ; -> sub_001E7FD7
  0x001E9371  85c0                    test     eax, eax                       
  0x001E9373  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001E9376  7406                    je       0x1e937e                       
  0x001E9378  56                      push     esi                            
  0x001E9379  ff5008                  call     dword ptr [eax + 8]            
  0x001E937C  eb0c                    jmp      0x1e938a                       
; end of function
                                        ; XREF: 0x001E9366 (cond_jump), 0x001E9376 (cond_jump)
  0x001E937E  8bce                    mov      ecx, esi                       
  0x001E9380  6800040080              push     0x80000400                     
  0x001E9385  e89dfeffff              call     0x1e9227                       ; -> sub_001E9227
                                        ; XREF: 0x001E937C (jump)
  0x001E938A  5e                      pop      esi                            
  0x001E938B  c20400                  ret      4                              
  0x001E938E  53                      push     ebx                            
  0x001E938F  682029b200              push     0xb22920                       
  0x001E9394  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E939A  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001E939E  33db                    xor      ebx, ebx                       
  0x001E93A0  c605d328b20002          mov      byte ptr [0xb228d3], 2         
  0x001E93A7  395a04                  cmp      dword ptr [edx + 4], ebx       
  0x001E93AA  0f8cab000000            jl       0x1e945b                       
  0x001E93B0  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E93B6  0f859f000000            jne      0x1e945b                       
  0x001E93BC  837a1408                cmp      dword ptr [edx + 0x14], 8      
  0x001E93C0  0f828e000000            jb       0x1e9454                       
  0x001E93C6  a05b29b200              mov      al, byte ptr [0xb2295b]        
  0x001E93CB  3c40                    cmp      al, 0x40                       
  0x001E93CD  0f8781000000            ja       0x1e9454                       
  0x001E93D3  803d5529b20001          cmp      byte ptr [0xb22955], 1         
  0x001E93DA  7578                    jne      0x1e9454                       
  0x001E93DC  8a0d5429b200            mov      cl, byte ptr [0xb22954]        
  0x001E93E2  80f908                  cmp      cl, 8                          
  0x001E93E5  7405                    je       0x1e93ec                       
  0x001E93E7  80f912                  cmp      cl, 0x12                       
  0x001E93EA  7568                    jne      0x1e9454                       
                                        ; XREF: 0x001E93E5 (cond_jump)
  0x001E93EC  56                      push     esi                            
  0x001E93ED  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E93F1  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001E93F4  884606                  mov      byte ptr [esi + 6], al         
  0x001E93F7  e88cf9ffff              call     0x1e8d88                       ; -> sub_001E8D88
  0x001E93FC  884605                  mov      byte ptr [esi + 5], al         
  0x001E93FF  c705dc28b200c2911e00    mov      dword ptr [0xb228dc], 0x1e91c2 
  0x001E9409  891dec28b200            mov      dword ptr [0xb228ec], ebx      
  0x001E940F  891de828b200            mov      dword ptr [0xb228e8], ebx      
  0x001E9415  881dfc28b200            mov      byte ptr [0xb228fc], bl        
  0x001E941B  c605fd28b20005          mov      byte ptr [0xb228fd], 5         
  0x001E9422  660fb64605              movzx    ax, byte ptr [esi + 5]         
  0x001E9427  66a3fe28b200            mov      word ptr [0xb228fe], ax        
  0x001E942D  66891d0029b200          mov      word ptr [0xb22900], bx        
  0x001E9434  66891d0229b200          mov      word ptr [0xb22902], bx        
  0x001E943B  e8aaf8ffff              call     0x1e8cea                       ; -> sub_001E8CEA
  0x001E9440  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9443  68d428b200              push     0xb228d4                       
  0x001E9448  83c018                  add      eax, 0x18                      
  0x001E944B  50                      push     eax                            
  0x001E944C  e8f9150000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E9451  5e                      pop      esi                            
  0x001E9452  eb11                    jmp      0x1e9465                       
                                        ; XREF: 0x001E93C0 (cond_jump), 0x001E93CD (cond_jump), 0x001E93DA (cond_jump), 0x001E93EA (cond_jump)
  0x001E9454  c7420400060080          mov      dword ptr [edx + 4], 0x80000600 
                                        ; XREF: 0x001E93AA (cond_jump), 0x001E93B6 (cond_jump)
  0x001E945B  ff74240c                push     dword ptr [esp + 0xc]          
  0x001E945F  52                      push     edx                            
  0x001E9460  e85dfdffff              call     0x1e91c2                       ; -> sub_001E91C2
                                        ; XREF: 0x001E9452 (jump)
  0x001E9465  5b                      pop      ebx                            
  0x001E9466  c20800                  ret      8                              

; ============================================================
; Function: sub_001E9469
; Start: 0x001E9469  End: 0x001E9597  Size: 302 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E7F2A, sub_001E8BF5, sub_001E935A, sub_001E9BAA
; ============================================================
sub_001E9469:
  0x001E9469  55                      push     ebp                            
  0x001E946A  8bec                    mov      ebp, esp                       
  0x001E946C  53                      push     ebx                            
  0x001E946D  56                      push     esi                            
  0x001E946E  682029b200              push     0xb22920                       
  0x001E9473  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E9479  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001E947C  33db                    xor      ebx, ebx                       
  0x001E947E  c605d328b20006          mov      byte ptr [0xb228d3], 6         
  0x001E9485  395904                  cmp      dword ptr [ecx + 4], ebx       
  0x001E9488  0f8c09010000            jl       0x1e9597                       
  0x001E948E  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E9494  0f85fd000000            jne      0x1e9597                       
  0x001E949A  8b750c                  mov      esi, dword ptr [ebp + 0xc]     
  0x001E949D  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001E94A0  b85c29b200              mov      eax, 0xb2295c                  
                                        ; XREF: 0x001E94C2 (cond_jump)
  0x001E94A5  0fb610                  movzx    edx, byte ptr [eax]            
  0x001E94A8  03c2                    add      eax, edx                       
  0x001E94AA  3dac29b200              cmp      eax, 0xb229ac                  
  0x001E94AF  0f83d1000000            jae      0x1e9586                       
  0x001E94B5  803800                  cmp      byte ptr [eax], 0              
  0x001E94B8  0f84c8000000            je       0x1e9586                       
  0x001E94BE  80780104                cmp      byte ptr [eax + 1], 4          
  0x001E94C2  75e1                    jne      0x1e94a5                       
  0x001E94C4  803d6029b20001          cmp      byte ptr [0xb22960], 1         
  0x001E94CB  a3ac29b200              mov      dword ptr [0xb229ac], eax      
  0x001E94D0  747f                    je       0x1e9551                       
  0x001E94D2  803d4b29b20000          cmp      byte ptr [0xb2294b], 0         
  0x001E94D9  7476                    je       0x1e9551                       
  0x001E94DB  c60604                  mov      byte ptr [esi], 4              
  0x001E94DE  c6460280                mov      byte ptr [esi + 2], 0x80       
  0x001E94E2  803d6029b20000          cmp      byte ptr [0xb22960], 0         
  0x001E94E9  7657                    jbe      0x1e9542                       
                                        ; XREF: 0x001E9540 (cond_jump)
  0x001E94EB  0fb6054b29b200          movzx    eax, byte ptr [0xb2294b]       
  0x001E94F2  3bc3                    cmp      eax, ebx                       
  0x001E94F4  764c                    jbe      0x1e9542                       
  0x001E94F6  b9d028b200              mov      ecx, 0xb228d0                  
  0x001E94FB  e82aeaffff              call     0x1e7f2a                       ; -> sub_001E7F2A
  0x001E9500  85c0                    test     eax, eax                       
  0x001E9502  743e                    je       0x1e9542                       
  0x001E9504  c60005                  mov      byte ptr [eax], 5              
  0x001E9507  8a4e04                  mov      cl, byte ptr [esi + 4]         
  0x001E950A  80e180                  and      cl, 0x80                       
  0x001E950D  8ad3                    mov      dl, bl                         
  0x001E950F  fec2                    inc      dl                             
  0x001E9511  0aca                    or       cl, dl                         
  0x001E9513  884804                  mov      byte ptr [eax + 4], cl         
  0x001E9516  8a4e05                  mov      cl, byte ptr [esi + 5]         
  0x001E9519  884805                  mov      byte ptr [eax + 5], cl         
  0x001E951C  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001E951F  894808                  mov      dword ptr [eax + 8], ecx       
  0x001E9522  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001E9525  89480c                  mov      dword ptr [eax + 0xc], ecx     
  0x001E9528  8a4e06                  mov      cl, byte ptr [esi + 6]         
  0x001E952B  884806                  mov      byte ptr [eax + 6], cl         
  0x001E952E  50                      push     eax                            
  0x001E952F  8bce                    mov      ecx, esi                       
  0x001E9531  e874060000              call     0x1e9baa                       ; -> sub_001E9BAA
  0x001E9536  0fb6056029b200          movzx    eax, byte ptr [0xb22960]       
  0x001E953D  43                      inc      ebx                            
  0x001E953E  3bd8                    cmp      ebx, eax                       
  0x001E9540  72a9                    jb       0x1e94eb                       
                                        ; XREF: 0x001E94E9 (cond_jump), 0x001E94F4 (cond_jump), 0x001E9502 (cond_jump)
  0x001E9542  83660800                and      dword ptr [esi + 8], 0         
  0x001E9546  8bce                    mov      ecx, esi                       
  0x001E9548  e8a8f6ffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E954D  8bf0                    mov      esi, eax                       
  0x001E954F  eb03                    jmp      0x1e9554                       
                                        ; XREF: 0x001E94D0 (cond_jump), 0x001E94D9 (cond_jump)
  0x001E9551  c60603                  mov      byte ptr [esi], 3              
                                        ; XREF: 0x001E954F (jump)
  0x001E9554  a1ac29b200              mov      eax, dword ptr [0xb229ac]      
  0x001E9559  8a4002                  mov      al, byte ptr [eax + 2]         
  0x001E955C  884602                  mov      byte ptr [esi + 2], al         
  0x001E955F  a1ac29b200              mov      eax, dword ptr [0xb229ac]      
  0x001E9564  8a4805                  mov      cl, byte ptr [eax + 5]         
  0x001E9567  884d0d                  mov      byte ptr [ebp + 0xd], cl       
  0x001E956A  8a4806                  mov      cl, byte ptr [eax + 6]         
  0x001E956D  8a4007                  mov      al, byte ptr [eax + 7]         
  0x001E9570  884d0e                  mov      byte ptr [ebp + 0xe], cl       
  0x001E9573  88450f                  mov      byte ptr [ebp + 0xf], al       
  0x001E9576  c6450c82                mov      byte ptr [ebp + 0xc], 0x82     
  0x001E957A  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E957D  8bce                    mov      ecx, esi                       
  0x001E957F  e8d6fdffff              call     0x1e935a                       ; -> sub_001E935A
  0x001E9584  eb1a                    jmp      0x1e95a0                       
                                        ; XREF: 0x001E94AF (cond_jump), 0x001E94B8 (cond_jump)
  0x001E9586  8025d228b20000          and      byte ptr [0xb228d2], 0         
  0x001E958D  c7410400040080          mov      dword ptr [ecx + 4], 0x80000400 
  0x001E9594  56                      push     esi                            
  0x001E9595  eb03                    jmp      0x1e959a                       
; end of function
                                        ; XREF: 0x001E9488 (cond_jump), 0x001E9494 (cond_jump)
  0x001E9597  ff750c                  push     dword ptr [ebp + 0xc]          
                                        ; XREF: 0x001E9595 (jump)
  0x001E959A  51                      push     ecx                            
  0x001E959B  e822fcffff              call     0x1e91c2                       ; -> sub_001E91C2
                                        ; XREF: 0x001E9584 (jump)
  0x001E95A0  5e                      pop      esi                            
  0x001E95A1  5b                      pop      ebx                            
  0x001E95A2  5d                      pop      ebp                            
  0x001E95A3  c20800                  ret      8                              

; ============================================================
; Function: sub_001E95A6
; Start: 0x001E95A6  End: 0x001E95CE  Size: 40 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E9155
; ============================================================
sub_001E95A6:
  0x001E95A6  53                      push     ebx                            
  0x001E95A7  56                      push     esi                            
  0x001E95A8  57                      push     edi                            
  0x001E95A9  8bf1                    mov      esi, ecx                       
  0x001E95AB  8b7e0c                  mov      edi, dword ptr [esi + 0xc]     
  0x001E95AE  33db                    xor      ebx, ebx                       
  0x001E95B0  83c718                  add      edi, 0x18                      
  0x001E95B3  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E95B9  c605d328b20001          mov      byte ptr [0xb228d3], 1         
  0x001E95C0  740c                    je       0x1e95ce                       
  0x001E95C2  56                      push     esi                            
  0x001E95C3  53                      push     ebx                            
  0x001E95C4  e88cfbffff              call     0x1e9155                       ; -> sub_001E9155
  0x001E95C9  e9d1000000              jmp      0x1e969f                       
; end of function
                                        ; XREF: 0x001E95C0 (cond_jump)
  0x001E95CE  55                      push     ebp                            
  0x001E95CF  c605d428b20020          mov      byte ptr [0xb228d4], 0x20      
  0x001E95D6  c605d528b20002          mov      byte ptr [0xb228d5], 2         
  0x001E95DD  891ddc28b200            mov      dword ptr [0xb228dc], ebx      
  0x001E95E3  881de928b200            mov      byte ptr [0xb228e9], bl        
  0x001E95E9  881dea28b200            mov      byte ptr [0xb228ea], bl        
  0x001E95EF  881deb28b200            mov      byte ptr [0xb228eb], bl        
  0x001E95F5  66c705f028b2000800      mov      word ptr [0xb228f0], 8         
  0x001E95FE  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E9601  bdd428b200              mov      ebp, 0xb228d4                  
  0x001E9606  55                      push     ebp                            
  0x001E9607  c0e807                  shr      al, 7                          
  0x001E960A  57                      push     edi                            
  0x001E960B  a2f228b200              mov      byte ptr [0xb228f2], al        
  0x001E9610  881de828b200            mov      byte ptr [0xb228e8], bl        
  0x001E9616  e82f140000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E961B  a1e428b200              mov      eax, dword ptr [0xb228e4]      
  0x001E9620  894608                  mov      dword ptr [esi + 8], eax       
  0x001E9623  c605d428b20030          mov      byte ptr [0xb228d4], 0x30      
  0x001E962A  c605d528b20040          mov      byte ptr [0xb228d5], 0x40      
  0x001E9631  c705dc28b2008e931e00    mov      dword ptr [0xb228dc], 0x1e938e 
  0x001E963B  8935e028b200            mov      dword ptr [0xb228e0], esi      
  0x001E9641  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001E9644  6a08                    push     8                              
  0x001E9646  a3e428b200              mov      dword ptr [0xb228e4], eax      
  0x001E964B  58                      pop      eax                            
  0x001E964C  c705ec28b2005429b200    mov      dword ptr [0xb228ec], 0xb22954 
  0x001E9656  a3e828b200              mov      dword ptr [0xb228e8], eax      
  0x001E965B  c605f028b20002          mov      byte ptr [0xb228f0], 2         
  0x001E9662  881df128b200            mov      byte ptr [0xb228f1], bl        
  0x001E9668  881df228b200            mov      byte ptr [0xb228f2], bl        
  0x001E966E  c605fc28b20080          mov      byte ptr [0xb228fc], 0x80      
  0x001E9675  c605fd28b20006          mov      byte ptr [0xb228fd], 6         
  0x001E967C  66c705fe28b2000001      mov      word ptr [0xb228fe], 0x100     
  0x001E9685  66891d0029b200          mov      word ptr [0xb22900], bx        
  0x001E968C  66a30229b200            mov      word ptr [0xb22902], ax        
  0x001E9692  e853f6ffff              call     0x1e8cea                       ; -> sub_001E8CEA
  0x001E9697  55                      push     ebp                            
  0x001E9698  57                      push     edi                            
  0x001E9699  e8ac130000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E969E  5d                      pop      ebp                            
                                        ; XREF: 0x001E95C9 (jump)
  0x001E969F  5f                      pop      edi                            
  0x001E96A0  5e                      pop      esi                            
  0x001E96A1  5b                      pop      ebx                            
  0x001E96A2  c3                      ret                                     

; ============================================================
; Function: sub_001E96A3
; Start: 0x001E96A3  End: 0x001E96F1  Size: 78 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E91C2
; ============================================================
sub_001E96A3:
  0x001E96A3  55                      push     ebp                            
  0x001E96A4  8bec                    mov      ebp, esp                       
  0x001E96A6  682029b200              push     0xb22920                       
  0x001E96AB  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E96B1  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001E96B4  33d2                    xor      edx, edx                       
  0x001E96B6  c605d328b20005          mov      byte ptr [0xb228d3], 5         
  0x001E96BD  395004                  cmp      dword ptr [eax + 4], edx       
  0x001E96C0  7c22                    jl       0x1e96e4                       
  0x001E96C2  3815d128b200            cmp      byte ptr [0xb228d1], dl        
  0x001E96C8  751a                    jne      0x1e96e4                       
  0x001E96CA  668b0d5e29b200          mov      cx, word ptr [0xb2295e]        
  0x001E96D1  6683f950                cmp      cx, 0x50                       
  0x001E96D5  761a                    jbe      0x1e96f1                       
  0x001E96D7  8815d228b200            mov      byte ptr [0xb228d2], dl        
  0x001E96DD  c7400400040080          mov      dword ptr [eax + 4], 0x80000400 
                                        ; XREF: 0x001E96C0 (cond_jump), 0x001E96C8 (cond_jump), 0x001E9700 (jump)
  0x001E96E4  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001E96E7  50                      push     eax                            
  0x001E96E8  e8d5faffff              call     0x1e91c2                       ; -> sub_001E91C2
                                        ; XREF: 0x001E975A (jump)
  0x001E96ED  5d                      pop      ebp                            
  0x001E96EE  c20800                  ret      8                              
; end of function
                                        ; XREF: 0x001E96D5 (cond_jump)
  0x001E96F1  0fb7c9                  movzx    ecx, cx                        
  0x001E96F4  3b4814                  cmp      ecx, dword ptr [eax + 0x14]    
  0x001E96F7  7409                    je       0x1e9702                       
  0x001E96F9  c7400400000080          mov      dword ptr [eax + 4], 0x80000000 
  0x001E9700  ebe2                    jmp      0x1e96e4                       
                                        ; XREF: 0x001E96F7 (cond_jump)
  0x001E9702  660fb6056129b200        movzx    ax, byte ptr [0xb22961]        
  0x001E970A  c705dc28b20069941e00    mov      dword ptr [0xb228dc], 0x1e9469 
  0x001E9714  8915ec28b200            mov      dword ptr [0xb228ec], edx      
  0x001E971A  8915e828b200            mov      dword ptr [0xb228e8], edx      
  0x001E9720  8815fc28b200            mov      byte ptr [0xb228fc], dl        
  0x001E9726  c605fd28b20009          mov      byte ptr [0xb228fd], 9         
  0x001E972D  66a3fe28b200            mov      word ptr [0xb228fe], ax        
  0x001E9733  6689150029b200          mov      word ptr [0xb22900], dx        
  0x001E973A  6689150229b200          mov      word ptr [0xb22902], dx        
  0x001E9741  e8a4f5ffff              call     0x1e8cea                       ; -> sub_001E8CEA
  0x001E9746  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001E9749  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001E974C  68d428b200              push     0xb228d4                       
  0x001E9751  83c018                  add      eax, 0x18                      
  0x001E9754  50                      push     eax                            
  0x001E9755  e8f0120000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E975A  eb91                    jmp      0x1e96ed                       

; ============================================================
; Function: sub_001E975C
; Start: 0x001E975C  End: 0x001E9781  Size: 37 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E9155
; ============================================================
sub_001E975C:
  0x001E975C  55                      push     ebp                            
  0x001E975D  8bec                    mov      ebp, esp                       
  0x001E975F  51                      push     ecx                            
  0x001E9760  53                      push     ebx                            
  0x001E9761  33db                    xor      ebx, ebx                       
  0x001E9763  381dd128b200            cmp      byte ptr [0xb228d1], bl        
  0x001E9769  56                      push     esi                            
  0x001E976A  8bf2                    mov      esi, edx                       
  0x001E976C  c605d328b20004          mov      byte ptr [0xb228d3], 4         
  0x001E9773  740c                    je       0x1e9781                       
  0x001E9775  56                      push     esi                            
  0x001E9776  53                      push     ebx                            
  0x001E9777  e8d9f9ffff              call     0x1e9155                       ; -> sub_001E9155
  0x001E977C  e922010000              jmp      0x1e98a3                       
; end of function
                                        ; XREF: 0x001E9773 (cond_jump)
  0x001E9781  a05829b200              mov      al, byte ptr [0xb22958]        
  0x001E9786  3ac3                    cmp      al, bl                         
  0x001E9788  7434                    je       0x1e97be                       
  0x001E978A  3c09                    cmp      al, 9                          
  0x001E978C  0f95c0                  setne    al                             
  0x001E978F  fec0                    inc      al                             
  0x001E9791  8806                    mov      byte ptr [esi], al             
  0x001E9793  a05829b200              mov      al, byte ptr [0xb22958]        
  0x001E9798  8845fd                  mov      byte ptr [ebp - 3], al         
  0x001E979B  a05929b200              mov      al, byte ptr [0xb22959]        
  0x001E97A0  8845fe                  mov      byte ptr [ebp - 2], al         
  0x001E97A3  a05a29b200              mov      al, byte ptr [0xb2295a]        
  0x001E97A8  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001E97AB  c645fc81                mov      byte ptr [ebp - 4], 0x81       
  0x001E97AF  ff75fc                  push     dword ptr [ebp - 4]            
  0x001E97B2  8bce                    mov      ecx, esi                       
  0x001E97B4  e8a1fbffff              call     0x1e935a                       ; -> sub_001E935A
  0x001E97B9  e9e5000000              jmp      0x1e98a3                       
                                        ; XREF: 0x001E9788 (cond_jump)
  0x001E97BE  660fb6055b29b200        movzx    ax, byte ptr [0xb2295b]        
  0x001E97C6  66a3f028b200            mov      word ptr [0xb228f0], ax        
  0x001E97CC  c605d428b20020          mov      byte ptr [0xb228d4], 0x20      
  0x001E97D3  c605d528b20002          mov      byte ptr [0xb228d5], 2         
  0x001E97DA  891ddc28b200            mov      dword ptr [0xb228dc], ebx      
  0x001E97E0  881de928b200            mov      byte ptr [0xb228e9], bl        
  0x001E97E6  881dea28b200            mov      byte ptr [0xb228ea], bl        
  0x001E97EC  881deb28b200            mov      byte ptr [0xb228eb], bl        
  0x001E97F2  8a4604                  mov      al, byte ptr [esi + 4]         
  0x001E97F5  c0e807                  shr      al, 7                          
  0x001E97F8  a2f228b200              mov      byte ptr [0xb228f2], al        
  0x001E97FD  8a4605                  mov      al, byte ptr [esi + 5]         
  0x001E9800  57                      push     edi                            
  0x001E9801  a2e828b200              mov      byte ptr [0xb228e8], al        
  0x001E9806  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9809  bfd428b200              mov      edi, 0xb228d4                  
  0x001E980E  57                      push     edi                            
  0x001E980F  83c018                  add      eax, 0x18                      
  0x001E9812  50                      push     eax                            
  0x001E9813  e832120000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E9818  a1e428b200              mov      eax, dword ptr [0xb228e4]      
  0x001E981D  894608                  mov      dword ptr [esi + 8], eax       
  0x001E9820  c605d428b20030          mov      byte ptr [0xb228d4], 0x30      
  0x001E9827  c605d528b20040          mov      byte ptr [0xb228d5], 0x40      
  0x001E982E  c705dc28b200a3961e00    mov      dword ptr [0xb228dc], 0x1e96a3 
  0x001E9838  8935e028b200            mov      dword ptr [0xb228e0], esi      
  0x001E983E  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001E9841  6a50                    push     0x50                           
  0x001E9843  a3e428b200              mov      dword ptr [0xb228e4], eax      
  0x001E9848  58                      pop      eax                            
  0x001E9849  c705ec28b2005c29b200    mov      dword ptr [0xb228ec], 0xb2295c 
  0x001E9853  a3e828b200              mov      dword ptr [0xb228e8], eax      
  0x001E9858  c605f028b20002          mov      byte ptr [0xb228f0], 2         
  0x001E985F  c605f128b20001          mov      byte ptr [0xb228f1], 1         
  0x001E9866  881df228b200            mov      byte ptr [0xb228f2], bl        
  0x001E986C  c605fc28b20080          mov      byte ptr [0xb228fc], 0x80      
  0x001E9873  c605fd28b20006          mov      byte ptr [0xb228fd], 6         
  0x001E987A  66c705fe28b2000002      mov      word ptr [0xb228fe], 0x200     
  0x001E9883  66891d0029b200          mov      word ptr [0xb22900], bx        
  0x001E988A  66a30229b200            mov      word ptr [0xb22902], ax        
  0x001E9890  e855f4ffff              call     0x1e8cea                       ; -> sub_001E8CEA
  0x001E9895  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9898  57                      push     edi                            
  0x001E9899  83c018                  add      eax, 0x18                      
  0x001E989C  50                      push     eax                            
  0x001E989D  e8a8110000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E98A2  5f                      pop      edi                            
                                        ; XREF: 0x001E977C (jump), 0x001E97B9 (jump)
  0x001E98A3  5e                      pop      esi                            
  0x001E98A4  5b                      pop      ebx                            
  0x001E98A5  c9                      leave                                   
  0x001E98A6  c3                      ret                                     
  0x001E98A7  0fb6054829b200          movzx    eax, byte ptr [0xb22948]       
  0x001E98AE  83e800                  sub      eax, 0                         
  0x001E98B1  7440                    je       0x1e98f3                       
  0x001E98B3  48                      dec      eax                            
  0x001E98B4  7425                    je       0x1e98db                       
  0x001E98B6  48                      dec      eax                            
  0x001E98B7  7415                    je       0x1e98ce                       
  0x001E98B9  48                      dec      eax                            
  0x001E98BA  753c                    jne      0x1e98f8                       
  0x001E98BC  8b155029b200            mov      edx, dword ptr [0xb22950]      
  0x001E98C2  b9d428b200              mov      ecx, 0xb228d4                  
  0x001E98C7  e890feffff              call     0x1e975c                       ; -> sub_001E975C
  0x001E98CC  eb2a                    jmp      0x1e98f8                       
                                        ; XREF: 0x001E98B7 (cond_jump)
  0x001E98CE  8b0d5029b200            mov      ecx, dword ptr [0xb22950]      
  0x001E98D4  e8cdfcffff              call     0x1e95a6                       ; -> sub_001E95A6
  0x001E98D9  eb1d                    jmp      0x1e98f8                       
                                        ; XREF: 0x001E98B4 (cond_jump)
  0x001E98DB  a15029b200              mov      eax, dword ptr [0xb22950]      
  0x001E98E0  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001E98E3  68d428b200              push     0xb228d4                       
  0x001E98E8  83c018                  add      eax, 0x18                      
  0x001E98EB  50                      push     eax                            
  0x001E98EC  e8e80f0000              call     0x1ea8d9                       ; -> sub_001EA8D9
  0x001E98F1  eb05                    jmp      0x1e98f8                       
                                        ; XREF: 0x001E98B1 (cond_jump)
  0x001E98F3  e80af5ffff              call     0x1e8e02                       ; -> sub_001E8E02
                                        ; XREF: 0x001E98BA (cond_jump), 0x001E98CC (jump), 0x001E98D9 (jump), 0x001E98F1 (jump)
  0x001E98F8  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001E98FB
; Start: 0x001E98FB  End: 0x001E990E  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EA8D9
; ============================================================
sub_001E98FB:
  0x001E98FB  8b410c                  mov      eax, dword ptr [ecx + 0xc]     
  0x001E98FE  ff742404                push     dword ptr [esp + 4]            
  0x001E9902  83c018                  add      eax, 0x18                      
  0x001E9905  50                      push     eax                            
  0x001E9906  e8ce0f0000              call     0x1ea8d9                       ; -> sub_001EA8D9
  0x001E990B  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E990E
; Start: 0x001E990E  End: 0x001E9912  Size: 4 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EAC75, sub_001EACD2, sub_001EAE42, sub_001EAF29, sub_001EB0A2, sub_001EB2C4, sub_001EB38D, sub_001EB54F
; ============================================================
sub_001E990E:
  0x001E990E  8b411c                  mov      eax, dword ptr [ecx + 0x1c]    
  0x001E9911  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E9912
; Start: 0x001E9912  End: 0x001E991F  Size: 13 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E7182
; ============================================================
sub_001E9912:
  0x001E9912  8b542404                mov      edx, dword ptr [esp + 4]       
  0x001E9916  8b411c                  mov      eax, dword ptr [ecx + 0x1c]    
  0x001E9919  89511c                  mov      dword ptr [ecx + 0x1c], edx    
  0x001E991C  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E991F
; Start: 0x001E991F  End: 0x001E9923  Size: 4 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E991F:
  0x001E991F  8a4102                  mov      al, byte ptr [ecx + 2]         
  0x001E9922  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E9923
; Start: 0x001E9923  End: 0x001E992D  Size: 10 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E9923:
  0x001E9923  8a442404                mov      al, byte ptr [esp + 4]         
  0x001E9927  884107                  mov      byte ptr [ecx + 7], al         
  0x001E992A  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E992D
; Start: 0x001E992D  End: 0x001E9997  Size: 106 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E6EBB, sub_001E751E, sub_001E780D
; ============================================================
sub_001E992D:
  0x001E992D  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E9931  b90f0000c0              mov      ecx, 0xc000000f                
  0x001E9936  3bc1                    cmp      eax, ecx                       
  0x001E9938  7f40                    jg       0x1e997a                       
  0x001E993A  7437                    je       0x1e9973                       
  0x001E993C  3d00000080              cmp      eax, 0x80000000                
  0x001E9941  741c                    je       0x1e995f                       
  0x001E9943  3d00010080              cmp      eax, 0x80000100                
  0x001E9948  7424                    je       0x1e996e                       
  0x001E994A  3d00080080              cmp      eax, 0x80000800                
  0x001E994F  7416                    je       0x1e9967                       
  0x001E9951  3dffffffbf              cmp      eax, 0xbfffffff                
  0x001E9956  7e34                    jle      0x1e998c                       
  0x001E9958  3d0e0000c0              cmp      eax, 0xc000000e                
  0x001E995D  7f2d                    jg       0x1e998c                       
                                        ; XREF: 0x001E9941 (cond_jump), 0x001E997F (cond_jump)
  0x001E995F  b85d040000              mov      eax, 0x45d                     
                                        ; XREF: 0x001E996C (jump), 0x001E9971 (jump), 0x001E9978 (jump), 0x001E9995 (jump), 0x001E9999 (jump)
  0x001E9964  c20400                  ret      4                              
                                        ; XREF: 0x001E994F (cond_jump)
  0x001E9967  b8aa050000              mov      eax, 0x5aa                     
  0x001E996C  ebf6                    jmp      0x1e9964                       
                                        ; XREF: 0x001E9948 (cond_jump)
  0x001E996E  6a0e                    push     0xe                            
                                        ; XREF: 0x001E998E (jump)
  0x001E9970  58                      pop      eax                            
  0x001E9971  ebf1                    jmp      0x1e9964                       
                                        ; XREF: 0x001E993A (cond_jump)
  0x001E9973  b8c7040000              mov      eax, 0x4c7                     
  0x001E9978  ebea                    jmp      0x1e9964                       
                                        ; XREF: 0x001E9938 (cond_jump)
  0x001E997A  3d100000c0              cmp      eax, 0xc0000010                
  0x001E997F  74de                    je       0x1e995f                       
  0x001E9981  85c0                    test     eax, eax                       
  0x001E9983  7412                    je       0x1e9997                       
  0x001E9985  3d00000040              cmp      eax, 0x40000000                
  0x001E998A  7404                    je       0x1e9990                       
                                        ; XREF: 0x001E9956 (cond_jump), 0x001E995D (cond_jump)
  0x001E998C  6a1f                    push     0x1f                           
  0x001E998E  ebe0                    jmp      0x1e9970                       
                                        ; XREF: 0x001E998A (cond_jump)
  0x001E9990  b8e5030000              mov      eax, 0x3e5                     
  0x001E9995  ebcd                    jmp      0x1e9964                       
; end of function
                                        ; XREF: 0x001E9983 (cond_jump)
  0x001E9997  33c0                    xor      eax, eax                       
  0x001E9999  ebc9                    jmp      0x1e9964                       

; ============================================================
; Function: sub_001E999B
; Start: 0x001E999B  End: 0x001E9A03  Size: 104 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E999B:
  0x001E999B  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E999F  b90f0000c0              mov      ecx, 0xc000000f                
  0x001E99A4  3bc1                    cmp      eax, ecx                       
  0x001E99A6  7f3b                    jg       0x1e99e3                       
  0x001E99A8  7432                    je       0x1e99dc                       
  0x001E99AA  3d00000080              cmp      eax, 0x80000000                
  0x001E99AF  741c                    je       0x1e99cd                       
  0x001E99B1  3d00010080              cmp      eax, 0x80000100                
  0x001E99B6  741d                    je       0x1e99d5                       
  0x001E99B8  3d00080080              cmp      eax, 0x80000800                
  0x001E99BD  7416                    je       0x1e99d5                       
  0x001E99BF  3dffffffbf              cmp      eax, 0xbfffffff                
  0x001E99C4  7e2f                    jle      0x1e99f5                       
  0x001E99C6  3d0e0000c0              cmp      eax, 0xc000000e                
  0x001E99CB  7f28                    jg       0x1e99f5                       
                                        ; XREF: 0x001E99AF (cond_jump), 0x001E99E8 (cond_jump)
  0x001E99CD  b8850100c0              mov      eax, 0xc0000185                
                                        ; XREF: 0x001E99DA (jump), 0x001E99E1 (jump), 0x001E99FA (jump), 0x001E9A01 (jump), 0x001E9A05 (jump)
  0x001E99D2  c20400                  ret      4                              
                                        ; XREF: 0x001E99B6 (cond_jump), 0x001E99BD (cond_jump)
  0x001E99D5  b89a0000c0              mov      eax, 0xc000009a                
  0x001E99DA  ebf6                    jmp      0x1e99d2                       
                                        ; XREF: 0x001E99A8 (cond_jump)
  0x001E99DC  b8200100c0              mov      eax, 0xc0000120                
  0x001E99E1  ebef                    jmp      0x1e99d2                       
                                        ; XREF: 0x001E99A6 (cond_jump)
  0x001E99E3  3d100000c0              cmp      eax, 0xc0000010                
  0x001E99E8  74e3                    je       0x1e99cd                       
  0x001E99EA  85c0                    test     eax, eax                       
  0x001E99EC  7415                    je       0x1e9a03                       
  0x001E99EE  3d00000040              cmp      eax, 0x40000000                
  0x001E99F3  7407                    je       0x1e99fc                       
                                        ; XREF: 0x001E99C4 (cond_jump), 0x001E99CB (cond_jump)
  0x001E99F5  b8010000c0              mov      eax, 0xc0000001                
  0x001E99FA  ebd6                    jmp      0x1e99d2                       
                                        ; XREF: 0x001E99F3 (cond_jump)
  0x001E99FC  b803010000              mov      eax, 0x103                     
  0x001E9A01  ebcf                    jmp      0x1e99d2                       
; end of function
                                        ; XREF: 0x001E99EC (cond_jump)
  0x001E9A03  33c0                    xor      eax, eax                       
  0x001E9A05  ebcb                    jmp      0x1e99d2                       

; ============================================================
; Function: sub_001E9A07
; Start: 0x001E9A07  End: 0x001E9A0D  Size: 6 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E9A07:
  0x001E9A07  a1ac29b200              mov      eax, dword ptr [0xb229ac]      
  0x001E9A0C  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E9A0D
; Start: 0x001E9A0D  End: 0x001E9A83  Size: 118 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001E9A0D:
  0x001E9A0D  55                      push     ebp                            
  0x001E9A0E  8bec                    mov      ebp, esp                       
  0x001E9A10  8b0dac29b200            mov      ecx, dword ptr [0xb229ac]      
  0x001E9A16  53                      push     ebx                            
  0x001E9A17  56                      push     esi                            
  0x001E9A18  0fb7355e29b200          movzx    esi, word ptr [0xb2295e]       
  0x001E9A1F  57                      push     edi                            
  0x001E9A20  81c65c29b200            add      esi, 0xb2295c                  
  0x001E9A26  33ff                    xor      edi, edi                       
                                        ; XREF: 0x001E9A74 (cond_jump)
  0x001E9A28  8a11                    mov      dl, byte ptr [ecx]             
  0x001E9A2A  84d2                    test     dl, dl                         
  0x001E9A2C  744c                    je       0x1e9a7a                       
  0x001E9A2E  0fb6c2                  movzx    eax, dl                        
  0x001E9A31  03c8                    add      ecx, eax                       
  0x001E9A33  3bce                    cmp      ecx, esi                       
  0x001E9A35  7343                    jae      0x1e9a7a                       
  0x001E9A37  8a4101                  mov      al, byte ptr [ecx + 1]         
  0x001E9A3A  3c05                    cmp      al, 5                          
  0x001E9A3C  7534                    jne      0x1e9a72                       
  0x001E9A3E  8a5103                  mov      dl, byte ptr [ecx + 3]         
  0x001E9A41  80e203                  and      dl, 3                          
  0x001E9A44  3a5508                  cmp      dl, byte ptr [ebp + 8]         
  0x001E9A47  7529                    jne      0x1e9a72                       
  0x001E9A49  807d0800                cmp      byte ptr [ebp + 8], 0          
  0x001E9A4D  7423                    je       0x1e9a72                       
  0x001E9A4F  33d2                    xor      edx, edx                       
  0x001E9A51  8a5102                  mov      dl, byte ptr [ecx + 2]         
  0x001E9A54  33db                    xor      ebx, ebx                       
  0x001E9A56  c1ea07                  shr      edx, 7                         
  0x001E9A59  f7d2                    not      edx                            
  0x001E9A5B  83e201                  and      edx, 1                         
  0x001E9A5E  385d0c                  cmp      byte ptr [ebp + 0xc], bl       
  0x001E9A61  0f94c3                  sete     bl                             
  0x001E9A64  3bd3                    cmp      edx, ebx                       
  0x001E9A66  750a                    jne      0x1e9a72                       
  0x001E9A68  8a5510                  mov      dl, byte ptr [ebp + 0x10]      
  0x001E9A6B  fe4d10                  dec      byte ptr [ebp + 0x10]          
  0x001E9A6E  84d2                    test     dl, dl                         
  0x001E9A70  7406                    je       0x1e9a78                       
                                        ; XREF: 0x001E9A3C (cond_jump), 0x001E9A47 (cond_jump), 0x001E9A4D (cond_jump), 0x001E9A66 (cond_jump)
  0x001E9A72  3c04                    cmp      al, 4                          
  0x001E9A74  75b2                    jne      0x1e9a28                       
  0x001E9A76  eb02                    jmp      0x1e9a7a                       
                                        ; XREF: 0x001E9A70 (cond_jump)
  0x001E9A78  8bf9                    mov      edi, ecx                       
                                        ; XREF: 0x001E9A2C (cond_jump), 0x001E9A35 (cond_jump), 0x001E9A76 (jump)
  0x001E9A7A  8bc7                    mov      eax, edi                       
  0x001E9A7C  5f                      pop      edi                            
  0x001E9A7D  5e                      pop      esi                            
  0x001E9A7E  5b                      pop      ebx                            
  0x001E9A7F  5d                      pop      ebp                            
  0x001E9A80  c20c00                  ret      0xc                            
; end of function

; ============================================================
; Function: sub_001E9A83
; Start: 0x001E9A83  End: 0x001E9A87  Size: 4 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E71A5
; ============================================================
sub_001E9A83:
  0x001E9A83  8b4114                  mov      eax, dword ptr [ecx + 0x14]    
  0x001E9A86  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001E9A87
; Start: 0x001E9A87  End: 0x001E9AB5  Size: 46 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F7A, sub_001E8BDE
; Called by: sub_001E9CB5
; ============================================================
sub_001E9A87:
  0x001E9A87  53                      push     ebx                            
  0x001E9A88  57                      push     edi                            
  0x001E9A89  8bf9                    mov      edi, ecx                       
  0x001E9A8B  33db                    xor      ebx, ebx                       
  0x001E9A8D  803f05                  cmp      byte ptr [edi], 5              
  0x001E9A90  7523                    jne      0x1e9ab5                       
  0x001E9A92  e847f1ffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9A97  8bd8                    mov      ebx, eax                       
  0x001E9A99  8b4308                  mov      eax, dword ptr [ebx + 8]       
  0x001E9A9C  85c0                    test     eax, eax                       
  0x001E9A9E  7415                    je       0x1e9ab5                       
  0x001E9AA0  894708                  mov      dword ptr [edi + 8], eax       
  0x001E9AA3  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E9AA7  83600400                and      dword ptr [eax + 4], 0         
  0x001E9AAB  50                      push     eax                            
  0x001E9AAC  e8c9e4ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001E9AB1  33c0                    xor      eax, eax                       
  0x001E9AB3  eb53                    jmp      0x1e9b08                       
; end of function
                                        ; XREF: 0x001E9A90 (cond_jump), 0x001E9A9E (cond_jump)
  0x001E9AB5  8a4705                  mov      al, byte ptr [edi + 5]         
  0x001E9AB8  56                      push     esi                            
  0x001E9AB9  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001E9ABD  80661500                and      byte ptr [esi + 0x15], 0       
  0x001E9AC1  80661600                and      byte ptr [esi + 0x16], 0       
  0x001E9AC5  884614                  mov      byte ptr [esi + 0x14], al      
  0x001E9AC8  660fb64706              movzx    ax, byte ptr [edi + 6]         
  0x001E9ACD  6689461c                mov      word ptr [esi + 0x1c], ax      
  0x001E9AD1  8a4704                  mov      al, byte ptr [edi + 4]         
  0x001E9AD4  83661800                and      dword ptr [esi + 0x18], 0      
  0x001E9AD8  c0e807                  shr      al, 7                          
  0x001E9ADB  88461e                  mov      byte ptr [esi + 0x1e], al      
  0x001E9ADE  c6460102                mov      byte ptr [esi + 1], 2          
  0x001E9AE2  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001E9AE5  56                      push     esi                            
  0x001E9AE6  83c018                  add      eax, 0x18                      
  0x001E9AE9  50                      push     eax                            
  0x001E9AEA  e85b0f0000              call     0x1eaa4a                       ; -> sub_001EAA4A
  0x001E9AEF  85c0                    test     eax, eax                       
  0x001E9AF1  7c10                    jl       0x1e9b03                       
  0x001E9AF3  85db                    test     ebx, ebx                       
  0x001E9AF5  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E9AF8  894f08                  mov      dword ptr [edi + 8], ecx       
  0x001E9AFB  7406                    je       0x1e9b03                       
  0x001E9AFD  8b4e10                  mov      ecx, dword ptr [esi + 0x10]    
  0x001E9B00  894b08                  mov      dword ptr [ebx + 8], ecx       
                                        ; XREF: 0x001E9AF1 (cond_jump), 0x001E9AFB (cond_jump)
  0x001E9B03  83661000                and      dword ptr [esi + 0x10], 0      
  0x001E9B07  5e                      pop      esi                            
                                        ; XREF: 0x001E9AB3 (jump)
  0x001E9B08  5f                      pop      edi                            
  0x001E9B09  5b                      pop      ebx                            
  0x001E9B0A  c20400                  ret      4                              

; ============================================================
; Function: sub_001E9B0D
; Start: 0x001E9B0D  End: 0x001E9B67  Size: 90 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BDE, sub_001E8BF5, sub_001E8C0C, sub_001EAA4A
; Called by: sub_001E9CB5
; ============================================================
sub_001E9B0D:
  0x001E9B0D  56                      push     esi                            
  0x001E9B0E  8bf1                    mov      esi, ecx                       
  0x001E9B10  57                      push     edi                            
  0x001E9B11  8b7e08                  mov      edi, dword ptr [esi + 8]       
  0x001E9B14  83660800                and      dword ptr [esi + 8], 0         
  0x001E9B18  803e05                  cmp      byte ptr [esi], 5              
  0x001E9B1B  7529                    jne      0x1e9b46                       
  0x001E9B1D  e8bcf0ffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9B22  8bc8                    mov      ecx, eax                       
  0x001E9B24  e8ccf0ffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E9B29  eb0c                    jmp      0x1e9b37                       
                                        ; XREF: 0x001E9B39 (cond_jump)
  0x001E9B2B  397808                  cmp      dword ptr [eax + 8], edi       
  0x001E9B2E  7437                    je       0x1e9b67                       
  0x001E9B30  8bc8                    mov      ecx, eax                       
  0x001E9B32  e8d5f0ffff              call     0x1e8c0c                       ; -> sub_001E8C0C
                                        ; XREF: 0x001E9B29 (jump)
  0x001E9B37  85c0                    test     eax, eax                       
  0x001E9B39  75f0                    jne      0x1e9b2b                       
  0x001E9B3B  8bce                    mov      ecx, esi                       
  0x001E9B3D  e89cf0ffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9B42  83600800                and      dword ptr [eax + 8], 0         
                                        ; XREF: 0x001E9B1B (cond_jump)
  0x001E9B46  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E9B4A  83601800                and      dword ptr [eax + 0x18], 0      
  0x001E9B4E  50                      push     eax                            
  0x001E9B4F  c6400143                mov      byte ptr [eax + 1], 0x43       
  0x001E9B53  897810                  mov      dword ptr [eax + 0x10], edi    
  0x001E9B56  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9B59  83c018                  add      eax, 0x18                      
  0x001E9B5C  50                      push     eax                            
  0x001E9B5D  e8e80e0000              call     0x1eaa4a                       ; -> sub_001EAA4A
                                        ; XREF: 0x001E9B77 (jump)
  0x001E9B62  5f                      pop      edi                            
  0x001E9B63  5e                      pop      esi                            
  0x001E9B64  c20400                  ret      4                              
; end of function
                                        ; XREF: 0x001E9B2E (cond_jump)
  0x001E9B67  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E9B6B  83600400                and      dword ptr [eax + 4], 0         
  0x001E9B6F  50                      push     eax                            
  0x001E9B70  e805e4ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001E9B75  33c0                    xor      eax, eax                       
  0x001E9B77  ebe9                    jmp      0x1e9b62                       

; ============================================================
; Function: sub_001E9B79
; Start: 0x001E9B79  End: 0x001E9BAA  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BF5, sub_001E8C0C
; Called by: sub_001E8FD2
; ============================================================
sub_001E9B79:
  0x001E9B79  e877f0ffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E9B7E  85c0                    test     eax, eax                       
  0x001E9B80  7425                    je       0x1e9ba7                       
  0x001E9B82  56                      push     esi                            
  0x001E9B83  57                      push     edi                            
  0x001E9B84  0fb67c240c              movzx    edi, byte ptr [esp + 0xc]      
  0x001E9B89  be7fffffff              mov      esi, 0xffffff7f                
  0x001E9B8E  23fe                    and      edi, esi                       
                                        ; XREF: 0x001E9BA3 (cond_jump)
  0x001E9B90  0fb64804                movzx    ecx, byte ptr [eax + 4]        
  0x001E9B94  23ce                    and      ecx, esi                       
  0x001E9B96  3bcf                    cmp      ecx, edi                       
  0x001E9B98  740b                    je       0x1e9ba5                       
  0x001E9B9A  8bc8                    mov      ecx, eax                       
  0x001E9B9C  e86bf0ffff              call     0x1e8c0c                       ; -> sub_001E8C0C
  0x001E9BA1  85c0                    test     eax, eax                       
  0x001E9BA3  75eb                    jne      0x1e9b90                       
                                        ; XREF: 0x001E9B98 (cond_jump)
  0x001E9BA5  5f                      pop      edi                            
  0x001E9BA6  5e                      pop      esi                            
                                        ; XREF: 0x001E9B80 (cond_jump)
  0x001E9BA7  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E9BAA
; Start: 0x001E9BAA  End: 0x001E9BF2  Size: 72 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BF5, sub_001E8C0C
; Called by: sub_001E8C23, sub_001E9469
; ============================================================
sub_001E9BAA:
  0x001E9BAA  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E9BAE  53                      push     ebx                            
  0x001E9BAF  8bd8                    mov      ebx, eax                       
  0x001E9BB1  2b1db029b200            sub      ebx, dword ptr [0xb229b0]      
  0x001E9BB7  56                      push     esi                            
  0x001E9BB8  8bf1                    mov      esi, ecx                       
  0x001E9BBA  c6400380                mov      byte ptr [eax + 3], 0x80       
  0x001E9BBE  2b0db029b200            sub      ecx, dword ptr [0xb229b0]      
  0x001E9BC4  c1fb05                  sar      ebx, 5                         
  0x001E9BC7  c1f905                  sar      ecx, 5                         
  0x001E9BCA  884801                  mov      byte ptr [eax + 1], cl         
  0x001E9BCD  8bce                    mov      ecx, esi                       
  0x001E9BCF  e821f0ffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E9BD4  85c0                    test     eax, eax                       
  0x001E9BD6  750c                    jne      0x1e9be4                       
  0x001E9BD8  885e02                  mov      byte ptr [esi + 2], bl         
  0x001E9BDB  eb10                    jmp      0x1e9bed                       
                                        ; XREF: 0x001E9BE8 (cond_jump)
  0x001E9BDD  8bc8                    mov      ecx, eax                       
  0x001E9BDF  e828f0ffff              call     0x1e8c0c                       ; -> sub_001E8C0C
                                        ; XREF: 0x001E9BD6 (cond_jump)
  0x001E9BE4  80780380                cmp      byte ptr [eax + 3], 0x80       
  0x001E9BE8  75f3                    jne      0x1e9bdd                       
  0x001E9BEA  885803                  mov      byte ptr [eax + 3], bl         
                                        ; XREF: 0x001E9BDB (jump)
  0x001E9BED  5e                      pop      esi                            
  0x001E9BEE  5b                      pop      ebx                            
  0x001E9BEF  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E9BF2
; Start: 0x001E9BF2  End: 0x001E9C4E  Size: 92 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8BF5, sub_001E8C0C
; Called by: sub_001E8E69, sub_001E8FD2, sub_001E908E
; ============================================================
sub_001E9BF2:
  0x001E9BF2  53                      push     ebx                            
  0x001E9BF3  55                      push     ebp                            
  0x001E9BF4  56                      push     esi                            
  0x001E9BF5  57                      push     edi                            
  0x001E9BF6  8be9                    mov      ebp, ecx                       
  0x001E9BF8  e8f8efffff              call     0x1e8bf5                       ; -> sub_001E8BF5
  0x001E9BFD  8b742414                mov      esi, dword ptr [esp + 0x14]    
  0x001E9C01  8bf8                    mov      edi, eax                       
  0x001E9C03  3bfe                    cmp      edi, esi                       
  0x001E9C05  b301                    mov      bl, 1                          
  0x001E9C07  750e                    jne      0x1e9c17                       
  0x001E9C09  8a4603                  mov      al, byte ptr [esi + 3]         
  0x001E9C0C  3c80                    cmp      al, 0x80                       
  0x001E9C0E  884502                  mov      byte ptr [ebp + 2], al         
  0x001E9C11  752a                    jne      0x1e9c3d                       
  0x001E9C13  32db                    xor      bl, bl                         
  0x001E9C15  eb26                    jmp      0x1e9c3d                       
                                        ; XREF: 0x001E9C07 (cond_jump)
  0x001E9C17  85ff                    test     edi, edi                       
  0x001E9C19  7422                    je       0x1e9c3d                       
                                        ; XREF: 0x001E9C31 (cond_jump)
  0x001E9C1B  8bcf                    mov      ecx, edi                       
  0x001E9C1D  e8eaefffff              call     0x1e8c0c                       ; -> sub_001E8C0C
  0x001E9C22  3bc6                    cmp      eax, esi                       
  0x001E9C24  740d                    je       0x1e9c33                       
  0x001E9C26  8bcf                    mov      ecx, edi                       
  0x001E9C28  e8dfefffff              call     0x1e8c0c                       ; -> sub_001E8C0C
  0x001E9C2D  8bf8                    mov      edi, eax                       
  0x001E9C2F  85ff                    test     edi, edi                       
  0x001E9C31  75e8                    jne      0x1e9c1b                       
                                        ; XREF: 0x001E9C24 (cond_jump)
  0x001E9C33  85ff                    test     edi, edi                       
  0x001E9C35  7406                    je       0x1e9c3d                       
  0x001E9C37  8a4603                  mov      al, byte ptr [esi + 3]         
  0x001E9C3A  884703                  mov      byte ptr [edi + 3], al         
                                        ; XREF: 0x001E9C11 (cond_jump), 0x001E9C15 (jump), 0x001E9C19 (cond_jump), 0x001E9C35 (cond_jump)
  0x001E9C3D  5f                      pop      edi                            
  0x001E9C3E  c6460380                mov      byte ptr [esi + 3], 0x80       
  0x001E9C42  c6460180                mov      byte ptr [esi + 1], 0x80       
  0x001E9C46  5e                      pop      esi                            
  0x001E9C47  5d                      pop      ebp                            
  0x001E9C48  8ac3                    mov      al, bl                         
  0x001E9C4A  5b                      pop      ebx                            
  0x001E9C4B  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E9C4E
; Start: 0x001E9C4E  End: 0x001E9C6E  Size: 32 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E9C4E:
  0x001E9C4E  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001E9C52  8b5004                  mov      edx, dword ptr [eax + 4]       
  0x001E9C55  0fb65204                movzx    edx, byte ptr [edx + 4]        
  0x001E9C59  83e27f                  and      edx, 0x7f                      
  0x001E9C5C  4a                      dec      edx                            
  0x001E9C5D  83fa04                  cmp      edx, 4                         
  0x001E9C60  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E9C63  7c09                    jl       0x1e9c6e                       
  0x001E9C65  c7411420000000          mov      dword ptr [ecx + 0x14], 0x20   
  0x001E9C6C  eb44                    jmp      0x1e9cb2                       
; end of function
                                        ; XREF: 0x001E9C63 (cond_jump)
  0x001E9C6E  56                      push     esi                            
  0x001E9C6F  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E9C73  83f202                  xor      edx, 2                         
  0x001E9C76  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001E9C79  57                      push     edi                            
  0x001E9C7A  8b3cb0                  mov      edi, dword ptr [eax + esi*4]   
  0x001E9C7D  803f01                  cmp      byte ptr [edi], 1              
  0x001E9C80  750e                    jne      0x1e9c90                       
  0x001E9C82  83fe01                  cmp      esi, 1                         
  0x001E9C85  7429                    je       0x1e9cb0                       
                                        ; XREF: 0x001E9CA3 (cond_jump)
  0x001E9C87  c7411420000000          mov      dword ptr [ecx + 0x14], 0x20   
  0x001E9C8E  eb20                    jmp      0x1e9cb0                       
                                        ; XREF: 0x001E9C80 (cond_jump)
  0x001E9C90  83fe01                  cmp      esi, 1                         
  0x001E9C93  761b                    jbe      0x1e9cb0                       
  0x001E9C95  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001E9C98  0fb64004                movzx    eax, byte ptr [eax + 4]        
  0x001E9C9C  83e07f                  and      eax, 0x7f                      
  0x001E9C9F  48                      dec      eax                            
  0x001E9CA0  83f803                  cmp      eax, 3                         
  0x001E9CA3  77e2                    ja       0x1e9c87                       
  0x001E9CA5  83f802                  cmp      eax, 2                         
  0x001E9CA8  7506                    jne      0x1e9cb0                       
  0x001E9CAA  83c210                  add      edx, 0x10                      
  0x001E9CAD  895114                  mov      dword ptr [ecx + 0x14], edx    
                                        ; XREF: 0x001E9C85 (cond_jump), 0x001E9C8E (jump), 0x001E9C93 (cond_jump), 0x001E9CA8 (cond_jump)
  0x001E9CB0  5f                      pop      edi                            
  0x001E9CB1  5e                      pop      esi                            
                                        ; XREF: 0x001E9C6C (jump)
  0x001E9CB2  c20800                  ret      8                              

; ============================================================
; Function: sub_001E9CB5
; Start: 0x001E9CB5  End: 0x001E9DA2  Size: 237 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E9A87, sub_001E9B0D, sub_001EAA4A
; Called by: sub_001E6EBB, sub_001E7213, sub_001E780D, sub_001E7C3E, sub_001E9FF4, sub_001EA2A8, sub_001EAC75, sub_001EAE20, sub_001EAE42, sub_001EAF29
; ============================================================
sub_001E9CB5:
  0x001E9CB5  55                      push     ebp                            
  0x001E9CB6  8bec                    mov      ebp, esp                       
  0x001E9CB8  83ec14                  sub      esp, 0x14                      
  0x001E9CBB  53                      push     ebx                            
  0x001E9CBC  56                      push     esi                            
  0x001E9CBD  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001E9CC0  8a4601                  mov      al, byte ptr [esi + 1]         
  0x001E9CC3  33db                    xor      ebx, ebx                       
  0x001E9CC5  a840                    test     al, 0x40                       
  0x001E9CC7  885dff                  mov      byte ptr [ebp - 1], bl         
  0x001E9CCA  742c                    je       0x1e9cf8                       
  0x001E9CCC  395e08                  cmp      dword ptr [esi + 8], ebx       
  0x001E9CCF  7527                    jne      0x1e9cf8                       
  0x001E9CD1  8d55f4                  lea      edx, [ebp - 0xc]               
  0x001E9CD4  8955f8                  mov      dword ptr [ebp - 8], edx       
  0x001E9CD7  8d55f4                  lea      edx, [ebp - 0xc]               
  0x001E9CDA  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001E9CDD  8d55ec                  lea      edx, [ebp - 0x14]              
  0x001E9CE0  c645ff01                mov      byte ptr [ebp - 1], 1          
  0x001E9CE4  885dec                  mov      byte ptr [ebp - 0x14], bl      
  0x001E9CE7  c645ee04                mov      byte ptr [ebp - 0x12], 4       
  0x001E9CEB  895df0                  mov      dword ptr [ebp - 0x10], ebx    
  0x001E9CEE  c74608b1751e00          mov      dword ptr [esi + 8], 0x1e75b1  
  0x001E9CF5  89560c                  mov      dword ptr [esi + 0xc], edx     
                                        ; XREF: 0x001E9CCA (cond_jump), 0x001E9CCF (cond_jump)
  0x001E9CF8  0fb6c0                  movzx    eax, al                        
  0x001E9CFB  48                      dec      eax                            
  0x001E9CFC  48                      dec      eax                            
  0x001E9CFD  744f                    je       0x1e9d4e                       
  0x001E9CFF  83e807                  sub      eax, 7                         
  0x001E9D02  7442                    je       0x1e9d46                       
  0x001E9D04  83e837                  sub      eax, 0x37                      
  0x001E9D07  7427                    je       0x1e9d30                       
  0x001E9D09  83e803                  sub      eax, 3                         
  0x001E9D0C  741a                    je       0x1e9d28                       
  0x001E9D0E  83e83f                  sub      eax, 0x3f                      
  0x001E9D11  740d                    je       0x1e9d20                       
  0x001E9D13  83e841                  sub      eax, 0x41                      
  0x001E9D16  754b                    jne      0x1e9d63                       
  0x001E9D18  56                      push     esi                            
  0x001E9D19  e8effdffff              call     0x1e9b0d                       ; -> sub_001E9B0D
  0x001E9D1E  eb50                    jmp      0x1e9d70                       
                                        ; XREF: 0x001E9D11 (cond_jump)
  0x001E9D20  56                      push     esi                            
  0x001E9D21  e861fdffff              call     0x1e9a87                       ; -> sub_001E9A87
  0x001E9D26  eb48                    jmp      0x1e9d70                       
                                        ; XREF: 0x001E9D0C (cond_jump)
  0x001E9D28  8d4118                  lea      eax, [ecx + 0x18]              
  0x001E9D2B  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E9D2E  eb33                    jmp      0x1e9d63                       
                                        ; XREF: 0x001E9D07 (cond_jump)
  0x001E9D30  395e10                  cmp      dword ptr [esi + 0x10], ebx    
  0x001E9D33  7506                    jne      0x1e9d3b                       
  0x001E9D35  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001E9D38  894610                  mov      dword ptr [esi + 0x10], eax    
                                        ; XREF: 0x001E9D33 (cond_jump)
  0x001E9D3B  807e2909                cmp      byte ptr [esi + 0x29], 9       
  0x001E9D3F  7522                    jne      0x1e9d63                       
  0x001E9D41  895918                  mov      dword ptr [ecx + 0x18], ebx    
  0x001E9D44  eb1d                    jmp      0x1e9d63                       
                                        ; XREF: 0x001E9D02 (cond_jump)
  0x001E9D46  8a4105                  mov      al, byte ptr [ecx + 5]         
  0x001E9D49  884614                  mov      byte ptr [esi + 0x14], al      
  0x001E9D4C  eb15                    jmp      0x1e9d63                       
                                        ; XREF: 0x001E9CFD (cond_jump)
  0x001E9D4E  8a4105                  mov      al, byte ptr [ecx + 5]         
  0x001E9D51  884614                  mov      byte ptr [esi + 0x14], al      
  0x001E9D54  8d4118                  lea      eax, [ecx + 0x18]              
  0x001E9D57  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001E9D5A  8a4104                  mov      al, byte ptr [ecx + 4]         
  0x001E9D5D  c0e807                  shr      al, 7                          
  0x001E9D60  88461e                  mov      byte ptr [esi + 0x1e], al      
                                        ; XREF: 0x001E9D16 (cond_jump), 0x001E9D2E (jump), 0x001E9D3F (cond_jump), 0x001E9D44 (jump), 0x001E9D4C (jump)
  0x001E9D63  8b410c                  mov      eax, dword ptr [ecx + 0xc]     
  0x001E9D66  56                      push     esi                            
  0x001E9D67  83c018                  add      eax, 0x18                      
  0x001E9D6A  50                      push     eax                            
  0x001E9D6B  e8da0c0000              call     0x1eaa4a                       ; -> sub_001EAA4A
                                        ; XREF: 0x001E9D1E (jump), 0x001E9D26 (jump)
  0x001E9D70  385dff                  cmp      byte ptr [ebp - 1], bl         
  0x001E9D73  7427                    je       0x1e9d9c                       
  0x001E9D75  8bc8                    mov      ecx, eax                       
  0x001E9D77  81e1000000c0            and      ecx, 0xc0000000                
  0x001E9D7D  81f900000040            cmp      ecx, 0x40000000                
  0x001E9D83  7511                    jne      0x1e9d96                       
  0x001E9D85  53                      push     ebx                            
  0x001E9D86  53                      push     ebx                            
  0x001E9D87  53                      push     ebx                            
  0x001E9D88  53                      push     ebx                            
  0x001E9D89  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001E9D8C  50                      push     eax                            
  0x001E9D8D  ff15e4d11e00            call     dword ptr [0x1ed1e4]           ; -> xbox_KeWaitForSingleObject
  0x001E9D93  8b4604                  mov      eax, dword ptr [esi + 4]       
                                        ; XREF: 0x001E9D83 (cond_jump)
  0x001E9D96  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001E9D99  895e0c                  mov      dword ptr [esi + 0xc], ebx     
                                        ; XREF: 0x001E9D73 (cond_jump)
  0x001E9D9C  5e                      pop      esi                            
  0x001E9D9D  5b                      pop      ebx                            
  0x001E9D9E  c9                      leave                                   
  0x001E9D9F  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001E9DA2
; Start: 0x001E9DA2  End: 0x001E9DC5  Size: 35 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E9DE4
; ============================================================
sub_001E9DA2:
  0x001E9DA2  56                      push     esi                            
  0x001E9DA3  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001E9DA7  8d4604                  lea      eax, [esi + 4]                 
  0x001E9DAA  8b10                    mov      edx, dword ptr [eax]           
  0x001E9DAC  803a01                  cmp      byte ptr [edx], 1              
  0x001E9DAF  750b                    jne      0x1e9dbc                       
  0x001E9DB1  8a5204                  mov      dl, byte ptr [edx + 4]         
  0x001E9DB4  80e27f                  and      dl, 0x7f                       
  0x001E9DB7  80fa01                  cmp      dl, 1                          
  0x001E9DBA  7409                    je       0x1e9dc5                       
                                        ; XREF: 0x001E9DAF (cond_jump)
  0x001E9DBC  c7411420000000          mov      dword ptr [ecx + 0x14], 0x20   
  0x001E9DC3  eb1b                    jmp      0x1e9de0                       
; end of function
                                        ; XREF: 0x001E9DBA (cond_jump)
  0x001E9DC5  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001E9DC9  83fa01                  cmp      edx, 1                         
  0x001E9DCC  7506                    jne      0x1e9dd4                       
  0x001E9DCE  83611400                and      dword ptr [ecx + 0x14], 0      
  0x001E9DD2  eb0c                    jmp      0x1e9de0                       
                                        ; XREF: 0x001E9DCC (cond_jump)
  0x001E9DD4  8b36                    mov      esi, dword ptr [esi]           
  0x001E9DD6  4a                      dec      edx                            
  0x001E9DD7  52                      push     edx                            
  0x001E9DD8  50                      push     eax                            
  0x001E9DD9  8930                    mov      dword ptr [eax], esi           
  0x001E9DDB  e86efeffff              call     0x1e9c4e                       ; -> sub_001E9C4E
                                        ; XREF: 0x001E9DC3 (jump), 0x001E9DD2 (jump)
  0x001E9DE0  5e                      pop      esi                            
  0x001E9DE1  c20800                  ret      8                              

; ============================================================
; Function: sub_001E9DE4
; Start: 0x001E9DE4  End: 0x001E9E26  Size: 66 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8BDE, sub_001E9DA2
; Called by: sub_001E935A
; ============================================================
sub_001E9DE4:
  0x001E9DE4  55                      push     ebp                            
  0x001E9DE5  8bec                    mov      ebp, esp                       
  0x001E9DE7  83ec18                  sub      esp, 0x18                      
  0x001E9DEA  56                      push     esi                            
  0x001E9DEB  57                      push     edi                            
  0x001E9DEC  8bf9                    mov      edi, ecx                       
  0x001E9DEE  6a05                    push     5                              
  0x001E9DF0  5e                      pop      esi                            
  0x001E9DF1  897dfc                  mov      dword ptr [ebp - 4], edi       
                                        ; XREF: 0x001E9E05 (cond_jump)
  0x001E9DF4  8b4cb5e8                mov      ecx, dword ptr [ebp + esi*4 - 0x18] 
  0x001E9DF8  4e                      dec      esi                            
  0x001E9DF9  e8e0edffff              call     0x1e8bde                       ; -> sub_001E8BDE
  0x001E9DFE  803800                  cmp      byte ptr [eax], 0              
  0x001E9E01  8944b5e8                mov      dword ptr [ebp + esi*4 - 0x18], eax 
  0x001E9E05  75ed                    jne      0x1e9df4                       
  0x001E9E07  8b152cd21e00            mov      edx, dword ptr [0x1ed22c]      
  0x001E9E0D  6a05                    push     5                              
  0x001E9E0F  58                      pop      eax                            
  0x001E9E10  2bc6                    sub      eax, esi                       
  0x001E9E12  f60201                  test     byte ptr [edx], 1              
  0x001E9E15  8d4cb5e8                lea      ecx, [ebp + esi*4 - 0x18]      
  0x001E9E19  50                      push     eax                            
  0x001E9E1A  51                      push     ecx                            
  0x001E9E1B  8bcf                    mov      ecx, edi                       
  0x001E9E1D  7407                    je       0x1e9e26                       
  0x001E9E1F  e87effffff              call     0x1e9da2                       ; -> sub_001E9DA2
  0x001E9E24  eb05                    jmp      0x1e9e2b                       
; end of function
                                        ; XREF: 0x001E9E1D (cond_jump)
  0x001E9E26  e823feffff              call     0x1e9c4e                       ; -> sub_001E9C4E
                                        ; XREF: 0x001E9E24 (jump)
  0x001E9E2B  5f                      pop      edi                            
  0x001E9E2C  5e                      pop      esi                            
  0x001E9E2D  c9                      leave                                   
  0x001E9E2E  c3                      ret                                     
  0x001E9E2F  56                      push     esi                            
  0x001E9E30  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E9E34  80660dfe                and      byte ptr [esi + 0xd], 0xfe     
  0x001E9E38  f6460d02                test     byte ptr [esi + 0xd], 2        
  0x001E9E3C  7411                    je       0x1e9e4f                       
  0x001E9E3E  8d86b8000000            lea      eax, [esi + 0xb8]              
  0x001E9E44  50                      push     eax                            
  0x001E9E45  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001E9E48  8b08                    mov      ecx, dword ptr [eax]           
  0x001E9E4A  e8acfaffff              call     0x1e98fb                       ; -> sub_001E98FB
                                        ; XREF: 0x001E9E3C (cond_jump)
  0x001E9E4F  f6460d04                test     byte ptr [esi + 0xd], 4        
  0x001E9E53  7411                    je       0x1e9e66                       
  0x001E9E55  8d86e8000000            lea      eax, [esi + 0xe8]              
  0x001E9E5B  50                      push     eax                            
  0x001E9E5C  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001E9E5F  8b08                    mov      ecx, dword ptr [eax]           
  0x001E9E61  e895faffff              call     0x1e98fb                       ; -> sub_001E98FB
                                        ; XREF: 0x001E9E53 (cond_jump)
  0x001E9E66  5e                      pop      esi                            
  0x001E9E67  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001E9E6A
; Start: 0x001E9E6A  End: 0x001E9E9D  Size: 51 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001E9E6A:
  0x001E9E6A  55                      push     ebp                            
  0x001E9E6B  56                      push     esi                            
  0x001E9E6C  8bf1                    mov      esi, ecx                       
  0x001E9E6E  f6460d01                test     byte ptr [esi + 0xd], 1        
  0x001E9E72  8b6e08                  mov      ebp, dword ptr [esi + 8]       
  0x001E9E75  57                      push     edi                            
  0x001E9E76  8bfa                    mov      edi, edx                       
  0x001E9E78  740e                    je       0x1e9e88                       
  0x001E9E7A  8d4670                  lea      eax, [esi + 0x70]              
  0x001E9E7D  50                      push     eax                            
  0x001E9E7E  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E9E84  80660dfe                and      byte ptr [esi + 0xd], 0xfe     
                                        ; XREF: 0x001E9E78 (cond_jump)
  0x001E9E88  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001E9E8B  a806                    test     al, 6                          
  0x001E9E8D  740e                    je       0x1e9e9d                       
  0x001E9E8F  689d0000c0              push     0xc000009d                     
  0x001E9E94  56                      push     esi                            
  0x001E9E95  ff5630                  call     dword ptr [esi + 0x30]         
  0x001E9E98  e9cf000000              jmp      0x1e9f6c                       
; end of function
                                        ; XREF: 0x001E9E8D (cond_jump)
  0x001E9E9D  0d00100000              or       eax, 0x1000                    
  0x001E9EA2  53                      push     ebx                            
  0x001E9EA3  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001E9EA6  8b4620                  mov      eax, dword ptr [esi + 0x20]    
  0x001E9EA9  897e6c                  mov      dword ptr [esi + 0x6c], edi    
  0x001E9EAC  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001E9EB2  33db                    xor      ebx, ebx                       
  0x001E9EB4  c60718                  mov      byte ptr [edi], 0x18           
  0x001E9EB7  c686b900000005          mov      byte ptr [esi + 0xb9], 5       
  0x001E9EBE  899ec0000000            mov      dword ptr [esi + 0xc0], ebx    
  0x001E9EC4  8986c8000000            mov      dword ptr [esi + 0xc8], eax    
  0x001E9ECA  c786cc00000004000000    mov      dword ptr [esi + 0xcc], 4      
  0x001E9ED4  8b4d00                  mov      ecx, dword ptr [ebp]           
  0x001E9ED7  57                      push     edi                            
  0x001E9ED8  e8d8fdffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E9EDD  804e0d03                or       byte ptr [esi + 0xd], 3        
  0x001E9EE1  8d9698000000            lea      edx, [esi + 0x98]              
  0x001E9EE7  52                      push     edx                            
  0x001E9EE8  83c9ff                  or       ecx, 0xffffffff                
  0x001E9EEB  51                      push     ecx                            
  0x001E9EEC  b8c0bdf0ff              mov      eax, 0xfff0bdc0                
  0x001E9EF1  50                      push     eax                            
  0x001E9EF2  8d4670                  lea      eax, [esi + 0x70]              
  0x001E9EF5  50                      push     eax                            
  0x001E9EF6  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001E9EFC  c60730                  mov      byte ptr [edi], 0x30           
  0x001E9EFF  c686b900000040          mov      byte ptr [esi + 0xb9], 0x40    
  0x001E9F06  c786c000000051a31e00    mov      dword ptr [esi + 0xc0], 0x1ea351 
  0x001E9F10  89b6c4000000            mov      dword ptr [esi + 0xc4], esi    
  0x001E9F16  899ec8000000            mov      dword ptr [esi + 0xc8], ebx    
  0x001E9F1C  899ed0000000            mov      dword ptr [esi + 0xd0], ebx    
  0x001E9F22  899ecc000000            mov      dword ptr [esi + 0xcc], ebx    
  0x001E9F28  889ed4000000            mov      byte ptr [esi + 0xd4], bl      
  0x001E9F2E  889ed5000000            mov      byte ptr [esi + 0xd5], bl      
  0x001E9F34  889ed6000000            mov      byte ptr [esi + 0xd6], bl      
  0x001E9F3A  c686e000000002          mov      byte ptr [esi + 0xe0], 2       
  0x001E9F41  c686e100000001          mov      byte ptr [esi + 0xe1], 1       
  0x001E9F48  66899ee2000000          mov      word ptr [esi + 0xe2], bx      
  0x001E9F4F  660fb64505              movzx    ax, byte ptr [ebp + 5]         
  0x001E9F54  668986e4000000          mov      word ptr [esi + 0xe4], ax      
  0x001E9F5B  66899ee6000000          mov      word ptr [esi + 0xe6], bx      
  0x001E9F62  8b4d00                  mov      ecx, dword ptr [ebp]           
  0x001E9F65  57                      push     edi                            
  0x001E9F66  e84afdffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001E9F6B  5b                      pop      ebx                            
                                        ; XREF: 0x001E9E98 (jump)
  0x001E9F6C  5f                      pop      edi                            
  0x001E9F6D  5e                      pop      esi                            
  0x001E9F6E  5d                      pop      ebp                            
  0x001E9F6F  c3                      ret                                     
  0x001E9F70  56                      push     esi                            
  0x001E9F71  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001E9F75  57                      push     edi                            
  0x001E9F76  33ff                    xor      edi, edi                       
  0x001E9F78  f6460d01                test     byte ptr [esi + 0xd], 1        
  0x001E9F7C  740e                    je       0x1e9f8c                       
  0x001E9F7E  8d4670                  lea      eax, [esi + 0x70]              
  0x001E9F81  50                      push     eax                            
  0x001E9F82  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001E9F88  80660dfe                and      byte ptr [esi + 0xd], 0xfe     
                                        ; XREF: 0x001E9F7C (cond_jump)
  0x001E9F8C  80660dfd                and      byte ptr [esi + 0xd], 0xfd     
  0x001E9F90  8b44240c                mov      eax, dword ptr [esp + 0xc]     
  0x001E9F94  8b4004                  mov      eax, dword ptr [eax + 4]       
  0x001E9F97  85c0                    test     eax, eax                       
  0x001E9F99  7d08                    jge      0x1e9fa3                       
  0x001E9F9B  50                      push     eax                            
  0x001E9F9C  e8faf9ffff              call     0x1e999b                       ; -> sub_001E999B
  0x001E9FA1  8bf8                    mov      edi, eax                       
                                        ; XREF: 0x001E9F99 (cond_jump)
  0x001E9FA3  817e5f55534253          cmp      dword ptr [esi + 0x5f], 0x53425355 
  0x001E9FAA  b8010000c0              mov      eax, 0xc0000001                
  0x001E9FAF  7402                    je       0x1e9fb3                       
  0x001E9FB1  8bf8                    mov      edi, eax                       
                                        ; XREF: 0x001E9FAF (cond_jump)
  0x001E9FB3  8b4e63                  mov      ecx, dword ptr [esi + 0x63]    
  0x001E9FB6  3b4e44                  cmp      ecx, dword ptr [esi + 0x44]    
  0x001E9FB9  7402                    je       0x1e9fbd                       
  0x001E9FBB  8bf8                    mov      edi, eax                       
                                        ; XREF: 0x001E9FB9 (cond_jump)
  0x001E9FBD  8a4e6b                  mov      cl, byte ptr [esi + 0x6b]      
  0x001E9FC0  80f902                  cmp      cl, 2                          
  0x001E9FC3  7502                    jne      0x1e9fc7                       
  0x001E9FC5  8bf8                    mov      edi, eax                       
                                        ; XREF: 0x001E9FC3 (cond_jump)
  0x001E9FC7  80f901                  cmp      cl, 1                          
  0x001E9FCA  7505                    jne      0x1e9fd1                       
  0x001E9FCC  bf3e0000c0              mov      edi, 0xc000003e                
                                        ; XREF: 0x001E9FCA (cond_jump)
  0x001E9FD1  b8000000c0              mov      eax, 0xc0000000                
  0x001E9FD6  8bcf                    mov      ecx, edi                       
  0x001E9FD8  23c8                    and      ecx, eax                       
  0x001E9FDA  3bc8                    cmp      ecx, eax                       
  0x001E9FDC  750b                    jne      0x1e9fe9                       
  0x001E9FDE  8bd7                    mov      edx, edi                       
  0x001E9FE0  8bce                    mov      ecx, esi                       
  0x001E9FE2  e883feffff              call     0x1e9e6a                       ; -> sub_001E9E6A
  0x001E9FE7  eb06                    jmp      0x1e9fef                       
                                        ; XREF: 0x001E9FDC (cond_jump)
  0x001E9FE9  6a00                    push     0                              
  0x001E9FEB  56                      push     esi                            
  0x001E9FEC  ff5630                  call     dword ptr [esi + 0x30]         
                                        ; XREF: 0x001E9FE7 (jump)
  0x001E9FEF  5f                      pop      edi                            
  0x001E9FF0  5e                      pop      esi                            
  0x001E9FF1  c20800                  ret      8                              

; ============================================================
; Function: sub_001E9FF4
; Start: 0x001E9FF4  End: 0x001EA07D  Size: 137 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_0018F460, sub_001E9CB5
; ============================================================
sub_001E9FF4:
  0x001E9FF4  56                      push     esi                            
  0x001E9FF5  8bf1                    mov      esi, ecx                       
  0x001E9FF7  8b4620                  mov      eax, dword ptr [esi + 0x20]    
  0x001E9FFA  80a6d500000000          and      byte ptr [esi + 0xd5], 0       
  0x001EA001  80a6d600000000          and      byte ptr [esi + 0xd6], 0       
  0x001EA008  8986c8000000            mov      dword ptr [esi + 0xc8], eax    
  0x001EA00E  57                      push     edi                            
  0x001EA00F  8d465f                  lea      eax, [esi + 0x5f]              
  0x001EA012  8986d0000000            mov      dword ptr [esi + 0xd0], eax    
  0x001EA018  0fb74634                movzx    eax, word ptr [esi + 0x34]     
  0x001EA01C  6aff                    push     -1                             
  0x001EA01E  99                      cdq                                     
  0x001EA01F  686079feff              push     0xfffe7960                     
  0x001EA024  52                      push     edx                            
  0x001EA025  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001EA02B  50                      push     eax                            
  0x001EA02C  c60728                  mov      byte ptr [edi], 0x28           
  0x001EA02F  c686b900000041          mov      byte ptr [esi + 0xb9], 0x41    
  0x001EA036  c786c0000000709f1e00    mov      dword ptr [esi + 0xc0], 0x1e9f70 
  0x001EA040  89b6c4000000            mov      dword ptr [esi + 0xc4], esi    
  0x001EA046  c786cc0000000d000000    mov      dword ptr [esi + 0xcc], 0xd    
  0x001EA050  c686d400000002          mov      byte ptr [esi + 0xd4], 2       
  0x001EA057  e80454faff              call     0x18f460                       ; -> sub_0018F460
  0x001EA05C  8d8e98000000            lea      ecx, [esi + 0x98]              
  0x001EA062  51                      push     ecx                            
  0x001EA063  52                      push     edx                            
  0x001EA064  50                      push     eax                            
  0x001EA065  8d4670                  lea      eax, [esi + 0x70]              
  0x001EA068  50                      push     eax                            
  0x001EA069  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EA06F  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EA072  8b08                    mov      ecx, dword ptr [eax]           
  0x001EA074  57                      push     edi                            
  0x001EA075  e83bfcffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EA07A  5f                      pop      edi                            
  0x001EA07B  5e                      pop      esi                            
  0x001EA07C  c3                      ret                                     
; end of function
  0x001EA07D  56                      push     esi                            
  0x001EA07E  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EA082  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001EA085  ba00080000              mov      edx, 0x800                     
  0x001EA08A  85c2                    test     edx, eax                       
  0x001EA08C  743e                    je       0x1ea0cc                       
  0x001EA08E  25fff7ffff              and      eax, 0xfffff7ff                
  0x001EA093  8d8eb8000000            lea      ecx, [esi + 0xb8]              
  0x001EA099  394c2408                cmp      dword ptr [esp + 8], ecx       
  0x001EA09D  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA0A0  7508                    jne      0x1ea0aa                       
  0x001EA0A2  8b8eec000000            mov      ecx, dword ptr [esi + 0xec]    
  0x001EA0A8  eb06                    jmp      0x1ea0b0                       
                                        ; XREF: 0x001EA0A0 (cond_jump)
  0x001EA0AA  8b8ebc000000            mov      ecx, dword ptr [esi + 0xbc]    
                                        ; XREF: 0x001EA0A8 (jump)
  0x001EA0B0  25fff9ffff              and      eax, 0xfffff9ff                
  0x001EA0B5  51                      push     ecx                            
  0x001EA0B6  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA0B9  e8ddf8ffff              call     0x1e999b                       ; -> sub_001E999B
  0x001EA0BE  8bd0                    mov      edx, eax                       
  0x001EA0C0  8bce                    mov      ecx, esi                       
  0x001EA0C2  e8a3fdffff              call     0x1e9e6a                       ; -> sub_001E9E6A
  0x001EA0C7  e9aa000000              jmp      0x1ea176                       
                                        ; XREF: 0x001EA08C (cond_jump)
  0x001EA0CC  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001EA0D0  83790400                cmp      dword ptr [ecx + 4], 0         
  0x001EA0D4  57                      push     edi                            
  0x001EA0D5  7c49                    jl       0x1ea120                       
  0x001EA0D7  a806                    test     al, 6                          
  0x001EA0D9  7545                    jne      0x1ea120                       
  0x001EA0DB  8b566c                  mov      edx, dword ptr [esi + 0x6c]    
  0x001EA0DE  3b562c                  cmp      edx, dword ptr [esi + 0x2c]    
  0x001EA0E1  730c                    jae      0x1ea0ef                       
  0x001EA0E3  8bd6                    mov      edx, esi                       
  0x001EA0E5  e890000000              call     0x1ea17a                       ; -> sub_001EA17A
  0x001EA0EA  e986000000              jmp      0x1ea175                       
                                        ; XREF: 0x001EA0E1 (cond_jump)
  0x001EA0EF  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001EA0F5  3bcf                    cmp      ecx, edi                       
  0x001EA0F7  ba00020000              mov      edx, 0x200                     
  0x001EA0FC  750a                    jne      0x1ea108                       
  0x001EA0FE  25fffdffff              and      eax, 0xfffffdff                
  0x001EA103  f6c404                  test     ah, 4                          
  0x001EA106  eb07                    jmp      0x1ea10f                       
                                        ; XREF: 0x001EA0FC (cond_jump)
  0x001EA108  25fffbffff              and      eax, 0xfffffbff                
  0x001EA10D  85c2                    test     edx, eax                       
                                        ; XREF: 0x001EA106 (jump)
  0x001EA10F  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA112  7561                    jne      0x1ea175                       
  0x001EA114  09560c                  or       dword ptr [esi + 0xc], edx     
  0x001EA117  8bce                    mov      ecx, esi                       
  0x001EA119  e8d6feffff              call     0x1e9ff4                       ; -> sub_001E9FF4
  0x001EA11E  eb55                    jmp      0x1ea175                       
                                        ; XREF: 0x001EA0D5 (cond_jump), 0x001EA0D9 (cond_jump)
  0x001EA120  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001EA126  3bcf                    cmp      ecx, edi                       
  0x001EA128  7525                    jne      0x1ea14f                       
  0x001EA12A  25fffdffff              and      eax, 0xfffffdff                
  0x001EA12F  f6c404                  test     ah, 4                          
  0x001EA132  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA135  742d                    je       0x1ea164                       
  0x001EA137  0bc2                    or       eax, edx                       
  0x001EA139  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA13C  8d86e8000000            lea      eax, [esi + 0xe8]              
  0x001EA142  50                      push     eax                            
                                        ; XREF: 0x001EA162 (jump)
  0x001EA143  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EA146  8b08                    mov      ecx, dword ptr [eax]           
  0x001EA148  e8aef7ffff              call     0x1e98fb                       ; -> sub_001E98FB
  0x001EA14D  eb26                    jmp      0x1ea175                       
                                        ; XREF: 0x001EA128 (cond_jump)
  0x001EA14F  25fffbffff              and      eax, 0xfffffbff                
  0x001EA154  f6c402                  test     ah, 2                          
  0x001EA157  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA15A  7408                    je       0x1ea164                       
  0x001EA15C  0bc2                    or       eax, edx                       
  0x001EA15E  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA161  57                      push     edi                            
  0x001EA162  ebdf                    jmp      0x1ea143                       
                                        ; XREF: 0x001EA135 (cond_jump), 0x001EA15A (cond_jump)
  0x001EA164  ff7104                  push     dword ptr [ecx + 4]            
  0x001EA167  e82ff8ffff              call     0x1e999b                       ; -> sub_001E999B
  0x001EA16C  8bd0                    mov      edx, eax                       
  0x001EA16E  8bce                    mov      ecx, esi                       
  0x001EA170  e8f5fcffff              call     0x1e9e6a                       ; -> sub_001E9E6A
                                        ; XREF: 0x001EA0EA (jump), 0x001EA112 (cond_jump), 0x001EA11E (jump), 0x001EA14D (jump)
  0x001EA175  5f                      pop      edi                            
                                        ; XREF: 0x001EA0C7 (jump)
  0x001EA176  5e                      pop      esi                            
  0x001EA177  c20800                  ret      8                              

; ============================================================
; Function: sub_001EA17A
; Start: 0x001EA17A  End: 0x001EA19B  Size: 33 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001EA17A:
  0x001EA17A  55                      push     ebp                            
  0x001EA17B  8bec                    mov      ebp, esp                       
  0x001EA17D  51                      push     ecx                            
  0x001EA17E  53                      push     ebx                            
  0x001EA17F  56                      push     esi                            
  0x001EA180  57                      push     edi                            
  0x001EA181  8bfa                    mov      edi, edx                       
  0x001EA183  8a4737                  mov      al, byte ptr [edi + 0x37]      
  0x001EA186  8bf1                    mov      esi, ecx                       
  0x001EA188  8ac8                    mov      cl, al                         
  0x001EA18A  80e103                  and      cl, 3                          
  0x001EA18D  80f901                  cmp      cl, 1                          
  0x001EA190  7509                    jne      0x1ea19b                       
  0x001EA192  8b5f20                  mov      ebx, dword ptr [edi + 0x20]    
  0x001EA195  c645ff02                mov      byte ptr [ebp - 1], 2          
  0x001EA199  eb07                    jmp      0x1ea1a2                       
; end of function
                                        ; XREF: 0x001EA190 (cond_jump)
  0x001EA19B  8b5f24                  mov      ebx, dword ptr [edi + 0x24]    
  0x001EA19E  c645ff01                mov      byte ptr [ebp - 1], 1          
                                        ; XREF: 0x001EA199 (jump)
  0x001EA1A2  a804                    test     al, 4                          
  0x001EA1A4  8b576c                  mov      edx, dword ptr [edi + 0x6c]    
  0x001EA1A7  7428                    je       0x1ea1d1                       
  0x001EA1A9  8b4f38                  mov      ecx, dword ptr [edi + 0x38]    
  0x001EA1AC  3bd1                    cmp      edx, ecx                       
  0x001EA1AE  7308                    jae      0x1ea1b8                       
  0x001EA1B0  8d8224f8b100            lea      eax, [edx + 0xb1f824]          
  0x001EA1B6  eb1e                    jmp      0x1ea1d6                       
                                        ; XREF: 0x001EA1AE (cond_jump)
  0x001EA1B8  8b473c                  mov      eax, dword ptr [edi + 0x3c]    
  0x001EA1BB  3bd0                    cmp      edx, eax                       
  0x001EA1BD  7307                    jae      0x1ea1c6                       
  0x001EA1BF  8b4728                  mov      eax, dword ptr [edi + 0x28]    
  0x001EA1C2  2bc1                    sub      eax, ecx                       
  0x001EA1C4  eb0e                    jmp      0x1ea1d4                       
                                        ; XREF: 0x001EA1BD (cond_jump)
  0x001EA1C6  2bc8                    sub      ecx, eax                       
  0x001EA1C8  8d841124f8b100          lea      eax, [ecx + edx + 0xb1f824]    
  0x001EA1CF  eb05                    jmp      0x1ea1d6                       
                                        ; XREF: 0x001EA1A7 (cond_jump)
  0x001EA1D1  8b4728                  mov      eax, dword ptr [edi + 0x28]    
                                        ; XREF: 0x001EA1C4 (jump)
  0x001EA1D4  03c2                    add      eax, edx                       
                                        ; XREF: 0x001EA1B6 (jump), 0x001EA1CF (jump)
  0x001EA1D6  8b4f2c                  mov      ecx, dword ptr [edi + 0x2c]    
  0x001EA1D9  2bca                    sub      ecx, edx                       
  0x001EA1DB  81f900040000            cmp      ecx, 0x400                     
  0x001EA1E1  7605                    jbe      0x1ea1e8                       
  0x001EA1E3  b900040000              mov      ecx, 0x400                     
                                        ; XREF: 0x001EA1E1 (cond_jump)
  0x001EA1E8  03d1                    add      edx, ecx                       
  0x001EA1EA  89576c                  mov      dword ptr [edi + 0x6c], edx    
  0x001EA1ED  80661d00                and      byte ptr [esi + 0x1d], 0       
  0x001EA1F1  80661e00                and      byte ptr [esi + 0x1e], 0       
  0x001EA1F5  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001EA1F8  8a45ff                  mov      al, byte ptr [ebp - 1]         
  0x001EA1FB  8d9798000000            lea      edx, [edi + 0x98]              
  0x001EA201  52                      push     edx                            
  0x001EA202  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001EA205  88461c                  mov      byte ptr [esi + 0x1c], al      
  0x001EA208  83c9ff                  or       ecx, 0xffffffff                
  0x001EA20B  51                      push     ecx                            
  0x001EA20C  b8a01ce9ff              mov      eax, 0xffe91ca0                
  0x001EA211  50                      push     eax                            
  0x001EA212  8d4770                  lea      eax, [edi + 0x70]              
  0x001EA215  50                      push     eax                            
  0x001EA216  c60628                  mov      byte ptr [esi], 0x28           
  0x001EA219  c6460141                mov      byte ptr [esi + 1], 0x41       
  0x001EA21D  c746087da01e00          mov      dword ptr [esi + 8], 0x1ea07d  
  0x001EA224  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001EA227  895e10                  mov      dword ptr [esi + 0x10], ebx    
  0x001EA22A  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EA230  8b4708                  mov      eax, dword ptr [edi + 8]       
  0x001EA233  8b08                    mov      ecx, dword ptr [eax]           
  0x001EA235  56                      push     esi                            
  0x001EA236  e87afaffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EA23B  5f                      pop      edi                            
  0x001EA23C  5e                      pop      esi                            
  0x001EA23D  5b                      pop      ebx                            
  0x001EA23E  c9                      leave                                   
  0x001EA23F  c3                      ret                                     
  0x001EA240  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001EA244  33c9                    xor      ecx, ecx                       
  0x001EA246  394804                  cmp      dword ptr [eax + 4], ecx       
  0x001EA249  56                      push     esi                            
  0x001EA24A  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EA24E  7c3f                    jl       0x1ea28f                       
  0x001EA250  f6460c06                test     byte ptr [esi + 0xc], 6        
  0x001EA254  7539                    jne      0x1ea28f                       
  0x001EA256  394e28                  cmp      dword ptr [esi + 0x28], ecx    
  0x001EA259  742b                    je       0x1ea286                       
  0x001EA25B  894e6c                  mov      dword ptr [esi + 0x6c], ecx    
  0x001EA25E  8d8eb8000000            lea      ecx, [esi + 0xb8]              
  0x001EA264  8bd6                    mov      edx, esi                       
  0x001EA266  e80fffffff              call     0x1ea17a                       ; -> sub_001EA17A
  0x001EA26B  8b466c                  mov      eax, dword ptr [esi + 0x6c]    
  0x001EA26E  3b462c                  cmp      eax, dword ptr [esi + 0x2c]    
  0x001EA271  7331                    jae      0x1ea2a4                       
  0x001EA273  804e0d04                or       byte ptr [esi + 0xd], 4        
  0x001EA277  8d8ee8000000            lea      ecx, [esi + 0xe8]              
  0x001EA27D  8bd6                    mov      edx, esi                       
  0x001EA27F  e8f6feffff              call     0x1ea17a                       ; -> sub_001EA17A
  0x001EA284  eb1e                    jmp      0x1ea2a4                       
                                        ; XREF: 0x001EA259 (cond_jump)
  0x001EA286  8bce                    mov      ecx, esi                       
  0x001EA288  e867fdffff              call     0x1e9ff4                       ; -> sub_001E9FF4
  0x001EA28D  eb15                    jmp      0x1ea2a4                       
                                        ; XREF: 0x001EA24E (cond_jump), 0x001EA254 (cond_jump)
  0x001EA28F  80660dfd                and      byte ptr [esi + 0xd], 0xfd     
  0x001EA293  ff7004                  push     dword ptr [eax + 4]            
  0x001EA296  e800f7ffff              call     0x1e999b                       ; -> sub_001E999B
  0x001EA29B  8bd0                    mov      edx, eax                       
  0x001EA29D  8bce                    mov      ecx, esi                       
  0x001EA29F  e8c6fbffff              call     0x1e9e6a                       ; -> sub_001E9E6A
                                        ; XREF: 0x001EA271 (cond_jump), 0x001EA284 (jump), 0x001EA28D (jump)
  0x001EA2A4  5e                      pop      esi                            
  0x001EA2A5  c20800                  ret      8                              

; ============================================================
; Function: sub_001EA2A8
; Start: 0x001EA2A8  End: 0x001EA351  Size: 169 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E9CB5
; ============================================================
sub_001EA2A8:
  0x001EA2A8  56                      push     esi                            
  0x001EA2A9  8bf1                    mov      esi, ecx                       
  0x001EA2AB  57                      push     edi                            
  0x001EA2AC  8d7e40                  lea      edi, [esi + 0x40]              
  0x001EA2AF  c70755534243            mov      dword ptr [edi], 0x43425355    
  0x001EA2B5  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001EA2B8  894704                  mov      dword ptr [edi + 4], eax       
  0x001EA2BB  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001EA2BE  894708                  mov      dword ptr [edi + 8], eax       
  0x001EA2C1  8a4637                  mov      al, byte ptr [esi + 0x37]      
  0x001EA2C4  80670d00                and      byte ptr [edi + 0xd], 0        
  0x001EA2C8  c0e007                  shl      al, 7                          
  0x001EA2CB  8d9698000000            lea      edx, [esi + 0x98]              
  0x001EA2D1  52                      push     edx                            
  0x001EA2D2  88470c                  mov      byte ptr [edi + 0xc], al       
  0x001EA2D5  83c9ff                  or       ecx, 0xffffffff                
  0x001EA2D8  51                      push     ecx                            
  0x001EA2D9  b800cbf3ff              mov      eax, 0xfff3cb00                
  0x001EA2DE  50                      push     eax                            
  0x001EA2DF  8d4670                  lea      eax, [esi + 0x70]              
  0x001EA2E2  c6470e0a                mov      byte ptr [edi + 0xe], 0xa      
  0x001EA2E6  804e0d01                or       byte ptr [esi + 0xd], 1        
  0x001EA2EA  50                      push     eax                            
  0x001EA2EB  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EA2F1  8b4e24                  mov      ecx, dword ptr [esi + 0x24]    
  0x001EA2F4  804e0d02                or       byte ptr [esi + 0xd], 2        
  0x001EA2F8  80a6d500000000          and      byte ptr [esi + 0xd5], 0       
  0x001EA2FF  80a6d600000000          and      byte ptr [esi + 0xd6], 0       
  0x001EA306  8d86b8000000            lea      eax, [esi + 0xb8]              
  0x001EA30C  c60028                  mov      byte ptr [eax], 0x28           
  0x001EA30F  50                      push     eax                            
  0x001EA310  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EA313  c686b900000041          mov      byte ptr [esi + 0xb9], 0x41    
  0x001EA31A  c786c000000040a21e00    mov      dword ptr [esi + 0xc0], 0x1ea240 
  0x001EA324  89b6c4000000            mov      dword ptr [esi + 0xc4], esi    
  0x001EA32A  898ec8000000            mov      dword ptr [esi + 0xc8], ecx    
  0x001EA330  89bed0000000            mov      dword ptr [esi + 0xd0], edi    
  0x001EA336  c786cc0000001f000000    mov      dword ptr [esi + 0xcc], 0x1f   
  0x001EA340  c686d400000001          mov      byte ptr [esi + 0xd4], 1       
  0x001EA347  8b08                    mov      ecx, dword ptr [eax]           
  0x001EA349  e867f9ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EA34E  5f                      pop      edi                            
  0x001EA34F  5e                      pop      esi                            
  0x001EA350  c3                      ret                                     
; end of function
  0x001EA351  53                      push     ebx                            
  0x001EA352  56                      push     esi                            
  0x001EA353  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001EA357  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001EA35A  8b5e08                  mov      ebx, dword ptr [esi + 8]       
  0x001EA35D  57                      push     edi                            
  0x001EA35E  8bf8                    mov      edi, eax                       
  0x001EA360  25fffdffff              and      eax, 0xfffffdff                
  0x001EA365  81e700700000            and      edi, 0x7000                    
  0x001EA36B  f6c401                  test     ah, 1                          
  0x001EA36E  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA371  740e                    je       0x1ea381                       
  0x001EA373  8d4670                  lea      eax, [esi + 0x70]              
  0x001EA376  50                      push     eax                            
  0x001EA377  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EA37D  80660dfe                and      byte ptr [esi + 0xd], 0xfe     
                                        ; XREF: 0x001EA371 (cond_jump)
  0x001EA381  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001EA384  a806                    test     al, 6                          
  0x001EA386  7407                    je       0x1ea38f                       
                                        ; XREF: 0x001EA3A9 (jump)
  0x001EA388  689d0000c0              push     0xc000009d                     
  0x001EA38D  eb61                    jmp      0x1ea3f0                       
                                        ; XREF: 0x001EA386 (cond_jump)
  0x001EA38F  8b542410                mov      edx, dword ptr [esp + 0x10]    
  0x001EA393  33c9                    xor      ecx, ecx                       
  0x001EA395  394a04                  cmp      dword ptr [edx + 4], ecx       
  0x001EA398  7d11                    jge      0x1ea3ab                       
  0x001EA39A  25ff8fffff              and      eax, 0xffff8fff                
  0x001EA39F  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA3A2  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001EA3A4  e8a0ecffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EA3A9  ebdd                    jmp      0x1ea388                       
                                        ; XREF: 0x001EA398 (cond_jump)
  0x001EA3AB  81ff00100000            cmp      edi, 0x1000                    
  0x001EA3B1  0f84c3000000            je       0x1ea47a                       
  0x001EA3B7  81ff00200000            cmp      edi, 0x2000                    
  0x001EA3BD  743a                    je       0x1ea3f9                       
  0x001EA3BF  81ff00400000            cmp      edi, 0x4000                    
  0x001EA3C5  0f8580010000            jne      0x1ea54b                       
  0x001EA3CB  25ffbfffff              and      eax, 0xffffbfff                
  0x001EA3D0  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA3D3  8a4636                  mov      al, byte ptr [esi + 0x36]      
  0x001EA3D6  8ac8                    mov      cl, al                         
  0x001EA3D8  fec9                    dec      cl                             
  0x001EA3DA  84c0                    test     al, al                         
  0x001EA3DC  884e36                  mov      byte ptr [esi + 0x36], cl      
  0x001EA3DF  740c                    je       0x1ea3ed                       
  0x001EA3E1  8bce                    mov      ecx, esi                       
  0x001EA3E3  e8c0feffff              call     0x1ea2a8                       ; -> sub_001EA2A8
  0x001EA3E8  e95e010000              jmp      0x1ea54b                       
                                        ; XREF: 0x001EA3DF (cond_jump)
  0x001EA3ED  ff766c                  push     dword ptr [esi + 0x6c]         
                                        ; XREF: 0x001EA38D (jump)
  0x001EA3F0  56                      push     esi                            
  0x001EA3F1  ff5630                  call     dword ptr [esi + 0x30]         
  0x001EA3F4  e952010000              jmp      0x1ea54b                       
                                        ; XREF: 0x001EA3BD (cond_jump)
  0x001EA3F9  80a6d500000000          and      byte ptr [esi + 0xd5], 0       
  0x001EA400  80a6d600000000          and      byte ptr [esi + 0xd6], 0       
  0x001EA407  25ffdfffff              and      eax, 0xffffdfff                
  0x001EA40C  0d00400000              or       eax, 0x4000                    
  0x001EA411  808ee1000000ff          or       byte ptr [esi + 0xe1], 0xff    
  0x001EA418  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001EA41E  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA421  c60730                  mov      byte ptr [edi], 0x30           
  0x001EA424  c686b900000040          mov      byte ptr [esi + 0xb9], 0x40    
  0x001EA42B  c786c000000051a31e00    mov      dword ptr [esi + 0xc0], 0x1ea351 
  0x001EA435  89b6c4000000            mov      dword ptr [esi + 0xc4], esi    
  0x001EA43B  898ec8000000            mov      dword ptr [esi + 0xc8], ecx    
  0x001EA441  898ed0000000            mov      dword ptr [esi + 0xd0], ecx    
  0x001EA447  898ecc000000            mov      dword ptr [esi + 0xcc], ecx    
  0x001EA44D  c686d400000001          mov      byte ptr [esi + 0xd4], 1       
  0x001EA454  c686e000000021          mov      byte ptr [esi + 0xe0], 0x21    
  0x001EA45B  66898ee2000000          mov      word ptr [esi + 0xe2], cx      
  0x001EA462  660fb64304              movzx    ax, byte ptr [ebx + 4]         
  0x001EA467  668986e4000000          mov      word ptr [esi + 0xe4], ax      
  0x001EA46E  66898ee6000000          mov      word ptr [esi + 0xe6], cx      
  0x001EA475  e9a6000000              jmp      0x1ea520                       
                                        ; XREF: 0x001EA3B1 (cond_jump)
  0x001EA47A  25ffefffff              and      eax, 0xffffefff                
  0x001EA47F  0d00200000              or       eax, 0x2000                    
  0x001EA484  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA487  8b4624                  mov      eax, dword ptr [esi + 0x24]    
  0x001EA48A  8dbeb8000000            lea      edi, [esi + 0xb8]              
  0x001EA490  c60718                  mov      byte ptr [edi], 0x18           
  0x001EA493  c686b900000005          mov      byte ptr [esi + 0xb9], 5       
  0x001EA49A  898ec0000000            mov      dword ptr [esi + 0xc0], ecx    
  0x001EA4A0  8986c8000000            mov      dword ptr [esi + 0xc8], eax    
  0x001EA4A6  c786cc00000004000000    mov      dword ptr [esi + 0xcc], 4      
  0x001EA4B0  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001EA4B2  57                      push     edi                            
  0x001EA4B3  e8fdf7ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EA4B8  33c0                    xor      eax, eax                       
  0x001EA4BA  2086d4000000            and      byte ptr [esi + 0xd4], al      
  0x001EA4C0  2086d5000000            and      byte ptr [esi + 0xd5], al      
  0x001EA4C6  2086d6000000            and      byte ptr [esi + 0xd6], al      
  0x001EA4CC  c60730                  mov      byte ptr [edi], 0x30           
  0x001EA4CF  c686b900000040          mov      byte ptr [esi + 0xb9], 0x40    
  0x001EA4D6  c786c000000051a31e00    mov      dword ptr [esi + 0xc0], 0x1ea351 
  0x001EA4E0  89b6c4000000            mov      dword ptr [esi + 0xc4], esi    
  0x001EA4E6  8986c8000000            mov      dword ptr [esi + 0xc8], eax    
  0x001EA4EC  8986d0000000            mov      dword ptr [esi + 0xd0], eax    
  0x001EA4F2  8986cc000000            mov      dword ptr [esi + 0xcc], eax    
  0x001EA4F8  c686e000000002          mov      byte ptr [esi + 0xe0], 2       
  0x001EA4FF  c686e100000001          mov      byte ptr [esi + 0xe1], 1       
  0x001EA506  668986e2000000          mov      word ptr [esi + 0xe2], ax      
  0x001EA50D  660fb64b06              movzx    cx, byte ptr [ebx + 6]         
  0x001EA512  66898ee4000000          mov      word ptr [esi + 0xe4], cx      
  0x001EA519  668986e6000000          mov      word ptr [esi + 0xe6], ax      
                                        ; XREF: 0x001EA475 (jump)
  0x001EA520  804e0d03                or       byte ptr [esi + 0xd], 3        
  0x001EA524  8d9698000000            lea      edx, [esi + 0x98]              
  0x001EA52A  52                      push     edx                            
  0x001EA52B  83c9ff                  or       ecx, 0xffffffff                
  0x001EA52E  51                      push     ecx                            
  0x001EA52F  b8c0bdf0ff              mov      eax, 0xfff0bdc0                
  0x001EA534  50                      push     eax                            
  0x001EA535  8d4670                  lea      eax, [esi + 0x70]              
  0x001EA538  50                      push     eax                            
  0x001EA539  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EA53F  804e0d02                or       byte ptr [esi + 0xd], 2        
  0x001EA543  8b0b                    mov      ecx, dword ptr [ebx]           
  0x001EA545  57                      push     edi                            
  0x001EA546  e86af7ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EA3C5 (cond_jump), 0x001EA3E8 (jump), 0x001EA3F4 (jump)
  0x001EA54B  5f                      pop      edi                            
  0x001EA54C  5e                      pop      esi                            
  0x001EA54D  5b                      pop      ebx                            
  0x001EA54E  c20800                  ret      8                              

; ============================================================
; Function: sub_001EA551
; Start: 0x001EA551  End: 0x001EA56E  Size: 29 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E831F, sub_001E846E
; ============================================================
sub_001EA551:
  0x001EA551  53                      push     ebx                            
  0x001EA552  56                      push     esi                            
  0x001EA553  8bf1                    mov      esi, ecx                       
  0x001EA555  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EA55B  f6460c06                test     byte ptr [esi + 0xc], 6        
  0x001EA55F  8ad8                    mov      bl, al                         
  0x001EA561  740b                    je       0x1ea56e                       
  0x001EA563  689d0000c0              push     0xc000009d                     
  0x001EA568  56                      push     esi                            
  0x001EA569  ff5630                  call     dword ptr [esi + 0x30]         
  0x001EA56C  eb07                    jmp      0x1ea575                       
; end of function
                                        ; XREF: 0x001EA561 (cond_jump)
  0x001EA56E  8bce                    mov      ecx, esi                       
  0x001EA570  e833fdffff              call     0x1ea2a8                       ; -> sub_001EA2A8
                                        ; XREF: 0x001EA56C (jump)
  0x001EA575  5e                      pop      esi                            
  0x001EA576  8acb                    mov      cl, bl                         
  0x001EA578  5b                      pop      ebx                            
  0x001EA579  ff25d0d11e00            jmp      dword ptr [0x1ed1d0]           

; ============================================================
; Function: sub_001EA57F
; Start: 0x001EA57F  End: 0x001EA592  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EA592
; ============================================================
sub_001EA57F:
  0x001EA57F  a1e84ebf00              mov      eax, dword ptr [0xbf4ee8]      
  0x001EA584  85c0                    test     eax, eax                       
  0x001EA586  7409                    je       0x1ea591                       
  0x001EA588  8b4818                  mov      ecx, dword ptr [eax + 0x18]    
  0x001EA58B  890de84ebf00            mov      dword ptr [0xbf4ee8], ecx      
                                        ; XREF: 0x001EA586 (cond_jump)
  0x001EA591  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EA592
; Start: 0x001EA592  End: 0x001EA5B9  Size: 39 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EA57F
; Called by: sub_001EAA4A
; ============================================================
sub_001EA592:
  0x001EA592  55                      push     ebp                            
  0x001EA593  8bec                    mov      ebp, esp                       
  0x001EA595  51                      push     ecx                            
  0x001EA596  51                      push     ecx                            
  0x001EA597  8365fc00                and      dword ptr [ebp - 4], 0         
  0x001EA59B  53                      push     ebx                            
  0x001EA59C  56                      push     esi                            
  0x001EA59D  8bda                    mov      ebx, edx                       
  0x001EA59F  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001EA5A2  e8d8ffffff              call     0x1ea57f                       ; -> sub_001EA57F
  0x001EA5A7  8bf0                    mov      esi, eax                       
  0x001EA5A9  85f6                    test     esi, esi                       
  0x001EA5AB  750c                    jne      0x1ea5b9                       
  0x001EA5AD  c745fc00010080          mov      dword ptr [ebp - 4], 0x80000100 
  0x001EA5B4  e92e010000              jmp      0x1ea6e7                       
; end of function
                                        ; XREF: 0x001EA5AB (cond_jump)
  0x001EA5B9  57                      push     edi                            
  0x001EA5BA  33c0                    xor      eax, eax                       
  0x001EA5BC  6a0c                    push     0xc                            
  0x001EA5BE  59                      pop      ecx                            
  0x001EA5BF  8bfe                    mov      edi, esi                       
  0x001EA5C1  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001EA5C3  8bc6                    mov      eax, esi                       
  0x001EA5C5  2b05e04ebf00            sub      eax, dword ptr [0xbf4ee0]      
  0x001EA5CB  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001EA5CE  8a4316                  mov      al, byte ptr [ebx + 0x16]      
  0x001EA5D1  884611                  mov      byte ptr [esi + 0x11], al      
  0x001EA5D4  8a4317                  mov      al, byte ptr [ebx + 0x17]      
  0x001EA5D7  884613                  mov      byte ptr [esi + 0x13], al      
  0x001EA5DA  33c0                    xor      eax, eax                       
  0x001EA5DC  8a431e                  mov      al, byte ptr [ebx + 0x1e]      
  0x001EA5DF  50                      push     eax                            
  0x001EA5E0  33c0                    xor      eax, eax                       
  0x001EA5E2  8a4611                  mov      al, byte ptr [esi + 0x11]      
  0x001EA5E5  50                      push     eax                            
  0x001EA5E6  33c0                    xor      eax, eax                       
  0x001EA5E8  668b431c                mov      ax, word ptr [ebx + 0x1c]      
  0x001EA5EC  50                      push     eax                            
  0x001EA5ED  e89cd9ffff              call     0x1e7f8e                       ; -> sub_001E7F8E
  0x001EA5F2  66894622                mov      word ptr [esi + 0x22], ax      
  0x001EA5F6  33c0                    xor      eax, eax                       
  0x001EA5F8  8a4314                  mov      al, byte ptr [ebx + 0x14]      
  0x001EA5FB  3306                    xor      eax, dword ptr [esi]           
  0x001EA5FD  83e07f                  and      eax, 0x7f                      
  0x001EA600  3106                    xor      dword ptr [esi], eax           
  0x001EA602  0fb64315                movzx    eax, byte ptr [ebx + 0x15]     
  0x001EA606  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EA608  c1e007                  shl      eax, 7                         
  0x001EA60B  33c1                    xor      eax, ecx                       
  0x001EA60D  2580070000              and      eax, 0x780                     
  0x001EA612  33c1                    xor      eax, ecx                       
  0x001EA614  807e1100                cmp      byte ptr [esi + 0x11], 0       
  0x001EA618  8906                    mov      dword ptr [esi], eax           
  0x001EA61A  7509                    jne      0x1ea625                       
  0x001EA61C  25ffe7ffff              and      eax, 0xffffe7ff                
  0x001EA621  8906                    mov      dword ptr [esi], eax           
  0x001EA623  eb1a                    jmp      0x1ea63f                       
                                        ; XREF: 0x001EA61A (cond_jump)
  0x001EA625  f6431580                test     byte ptr [ebx + 0x15], 0x80    
  0x001EA629  6a00                    push     0                              
  0x001EA62B  59                      pop      ecx                            
  0x001EA62C  0f95c1                  setne    cl                             
  0x001EA62F  41                      inc      ecx                            
  0x001EA630  c1e10b                  shl      ecx, 0xb                       
  0x001EA633  33c8                    xor      ecx, eax                       
  0x001EA635  81e100180000            and      ecx, 0x1800                    
  0x001EA63B  33c8                    xor      ecx, eax                       
  0x001EA63D  890e                    mov      dword ptr [esi], ecx           
                                        ; XREF: 0x001EA623 (jump)
  0x001EA63F  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EA641  33c0                    xor      eax, eax                       
  0x001EA643  8a431e                  mov      al, byte ptr [ebx + 0x1e]      
  0x001EA646  81e1ff5fffff            and      ecx, 0xffff5fff                
  0x001EA64C  83e001                  and      eax, 1                         
  0x001EA64F  83c802                  or       eax, 2                         
  0x001EA652  c1e00d                  shl      eax, 0xd                       
  0x001EA655  0bc1                    or       eax, ecx                       
  0x001EA657  8906                    mov      dword ptr [esi], eax           
  0x001EA659  0fb74b1c                movzx    ecx, word ptr [ebx + 0x1c]     
  0x001EA65D  c1e110                  shl      ecx, 0x10                      
  0x001EA660  33c8                    xor      ecx, eax                       
  0x001EA662  81e10000ff07            and      ecx, 0x7ff0000                 
  0x001EA668  33c8                    xor      ecx, eax                       
  0x001EA66A  33c0                    xor      eax, eax                       
  0x001EA66C  890e                    mov      dword ptr [esi], ecx           
  0x001EA66E  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001EA671  894608                  mov      dword ptr [esi + 8], eax       
  0x001EA674  894604                  mov      dword ptr [esi + 4], eax       
  0x001EA677  8b5318                  mov      edx, dword ptr [ebx + 0x18]    
  0x001EA67A  3bd0                    cmp      edx, eax                       
  0x001EA67C  7427                    je       0x1ea6a5                       
  0x001EA67E  8bc1                    mov      eax, ecx                       
  0x001EA680  33ff                    xor      edi, edi                       
  0x001EA682  c1e907                  shr      ecx, 7                         
  0x001EA685  83e10f                  and      ecx, 0xf                       
  0x001EA688  47                      inc      edi                            
  0x001EA689  2500180000              and      eax, 0x1800                    
  0x001EA68E  d3e7                    shl      edi, cl                        
  0x001EA690  3d00100000              cmp      eax, 0x1000                    
  0x001EA695  7503                    jne      0x1ea69a                       
  0x001EA697  c1e710                  shl      edi, 0x10                      
                                        ; XREF: 0x001EA695 (cond_jump)
  0x001EA69A  853a                    test     dword ptr [edx], edi           
  0x001EA69C  7407                    je       0x1ea6a5                       
  0x001EA69E  c7460802000000          mov      dword ptr [esi + 8], 2         
                                        ; XREF: 0x001EA67C (cond_jump), 0x001EA69C (cond_jump)
  0x001EA6A5  8a4611                  mov      al, byte ptr [esi + 0x11]      
  0x001EA6A8  84c0                    test     al, al                         
  0x001EA6AA  5f                      pop      edi                            
  0x001EA6AB  7413                    je       0x1ea6c0                       
  0x001EA6AD  3c02                    cmp      al, 2                          
  0x001EA6AF  740f                    je       0x1ea6c0                       
  0x001EA6B1  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EA6B4  8bd6                    mov      edx, esi                       
  0x001EA6B6  e880130000              call     0x1eba3b                       ; -> sub_001EBA3B
  0x001EA6BB  8945fc                  mov      dword ptr [ebp - 4], eax       
  0x001EA6BE  eb0a                    jmp      0x1ea6ca                       
                                        ; XREF: 0x001EA6AB (cond_jump), 0x001EA6AF (cond_jump)
  0x001EA6C0  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EA6C3  8bd6                    mov      edx, esi                       
  0x001EA6C5  e857120000              call     0x1eb921                       ; -> sub_001EB921
                                        ; XREF: 0x001EA6BE (jump)
  0x001EA6CA  837dfc00                cmp      dword ptr [ebp - 4], 0         
  0x001EA6CE  7c05                    jl       0x1ea6d5                       
  0x001EA6D0  897310                  mov      dword ptr [ebx + 0x10], esi    
  0x001EA6D3  eb12                    jmp      0x1ea6e7                       
                                        ; XREF: 0x001EA6CE (cond_jump)
  0x001EA6D5  83631000                and      dword ptr [ebx + 0x10], 0      
  0x001EA6D9  a1e84ebf00              mov      eax, dword ptr [0xbf4ee8]      
  0x001EA6DE  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001EA6E1  8935e84ebf00            mov      dword ptr [0xbf4ee8], esi      
                                        ; XREF: 0x001EA5B4 (jump), 0x001EA6D3 (jump)
  0x001EA6E7  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001EA6EA  5e                      pop      esi                            
  0x001EA6EB  894304                  mov      dword ptr [ebx + 4], eax       
  0x001EA6EE  5b                      pop      ebx                            
  0x001EA6EF  c9                      leave                                   
  0x001EA6F0  c3                      ret                                     

; ============================================================
; Function: sub_001EA6F1
; Start: 0x001EA6F1  End: 0x001EA712  Size: 33 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EAA4A
; ============================================================
sub_001EA6F1:
  0x001EA6F1  8b4a10                  mov      ecx, dword ptr [edx + 0x10]    
  0x001EA6F4  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001EA6F7  83e001                  and      eax, 1                         
  0x001EA6FA  894214                  mov      dword ptr [edx + 0x14], eax    
  0x001EA6FD  80792600                cmp      byte ptr [ecx + 0x26], 0       
  0x001EA701  7506                    jne      0x1ea709                       
  0x001EA703  80792700                cmp      byte ptr [ecx + 0x27], 0       
  0x001EA707  7406                    je       0x1ea70f                       
                                        ; XREF: 0x001EA701 (cond_jump)
  0x001EA709  83c802                  or       eax, 2                         
  0x001EA70C  894214                  mov      dword ptr [edx + 0x14], eax    
                                        ; XREF: 0x001EA707 (cond_jump)
  0x001EA70F  33c0                    xor      eax, eax                       
  0x001EA711  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EA712
; Start: 0x001EA712  End: 0x001EA740  Size: 46 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EAA4A
; ============================================================
sub_001EA712:
  0x001EA712  8b4210                  mov      eax, dword ptr [edx + 0x10]    
  0x001EA715  8b5214                  mov      edx, dword ptr [edx + 0x14]    
  0x001EA718  f6c204                  test     dl, 4                          
  0x001EA71B  7404                    je       0x1ea721                       
  0x001EA71D  836008fd                and      dword ptr [eax + 8], 0xfffffffd 
                                        ; XREF: 0x001EA71B (cond_jump)
  0x001EA721  f6c208                  test     dl, 8                          
  0x001EA724  7404                    je       0x1ea72a                       
  0x001EA726  83480802                or       dword ptr [eax + 8], 2         
                                        ; XREF: 0x001EA724 (cond_jump)
  0x001EA72A  f6c201                  test     dl, 1                          
  0x001EA72D  750e                    jne      0x1ea73d                       
  0x001EA72F  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001EA732  f6c101                  test     cl, 1                          
  0x001EA735  7406                    je       0x1ea73d                       
  0x001EA737  83e1fe                  and      ecx, 0xfffffffe                
  0x001EA73A  894808                  mov      dword ptr [eax + 8], ecx       
                                        ; XREF: 0x001EA72D (cond_jump), 0x001EA735 (cond_jump)
  0x001EA73D  33c0                    xor      eax, eax                       
  0x001EA73F  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EA740
; Start: 0x001EA740  End: 0x001EA765  Size: 37 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EA740:
  0x001EA740  8b811c040000            mov      eax, dword ptr [ecx + 0x41c]   
  0x001EA746  56                      push     esi                            
  0x001EA747  33f6                    xor      esi, esi                       
  0x001EA749  3bc2                    cmp      eax, edx                       
  0x001EA74B  740d                    je       0x1ea75a                       
                                        ; XREF: 0x001EA754 (cond_jump)
  0x001EA74D  8bf0                    mov      esi, eax                       
  0x001EA74F  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA752  3bc2                    cmp      eax, edx                       
  0x001EA754  75f7                    jne      0x1ea74d                       
  0x001EA756  85f6                    test     esi, esi                       
  0x001EA758  750b                    jne      0x1ea765                       
                                        ; XREF: 0x001EA74B (cond_jump)
  0x001EA75A  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA75D  89811c040000            mov      dword ptr [ecx + 0x41c], eax   
  0x001EA763  eb06                    jmp      0x1ea76b                       
; end of function
                                        ; XREF: 0x001EA758 (cond_jump)
  0x001EA765  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA768  894624                  mov      dword ptr [esi + 0x24], eax    
                                        ; XREF: 0x001EA763 (jump)
  0x001EA76B  8d8120040000            lea      eax, [ecx + 0x420]             
  0x001EA771  3b10                    cmp      edx, dword ptr [eax]           
  0x001EA773  7502                    jne      0x1ea777                       
  0x001EA775  8930                    mov      dword ptr [eax], esi           
                                        ; XREF: 0x001EA773 (cond_jump)
  0x001EA777  5e                      pop      esi                            
  0x001EA778  c3                      ret                                     

; ============================================================
; Function: sub_001EA779
; Start: 0x001EA779  End: 0x001EA79E  Size: 37 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EA779:
  0x001EA779  8b8124040000            mov      eax, dword ptr [ecx + 0x424]   
  0x001EA77F  56                      push     esi                            
  0x001EA780  33f6                    xor      esi, esi                       
  0x001EA782  3bc2                    cmp      eax, edx                       
  0x001EA784  740d                    je       0x1ea793                       
                                        ; XREF: 0x001EA78D (cond_jump)
  0x001EA786  8bf0                    mov      esi, eax                       
  0x001EA788  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA78B  3bc2                    cmp      eax, edx                       
  0x001EA78D  75f7                    jne      0x1ea786                       
  0x001EA78F  85f6                    test     esi, esi                       
  0x001EA791  750b                    jne      0x1ea79e                       
                                        ; XREF: 0x001EA784 (cond_jump)
  0x001EA793  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA796  898124040000            mov      dword ptr [ecx + 0x424], eax   
  0x001EA79C  eb06                    jmp      0x1ea7a4                       
; end of function
                                        ; XREF: 0x001EA791 (cond_jump)
  0x001EA79E  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA7A1  894624                  mov      dword ptr [esi + 0x24], eax    
                                        ; XREF: 0x001EA79C (jump)
  0x001EA7A4  8d8128040000            lea      eax, [ecx + 0x428]             
  0x001EA7AA  3b10                    cmp      edx, dword ptr [eax]           
  0x001EA7AC  7502                    jne      0x1ea7b0                       
  0x001EA7AE  8930                    mov      dword ptr [eax], esi           
                                        ; XREF: 0x001EA7AC (cond_jump)
  0x001EA7B0  5e                      pop      esi                            
  0x001EA7B1  c3                      ret                                     

; ============================================================
; Function: sub_001EA7B2
; Start: 0x001EA7B2  End: 0x001EA7D1  Size: 31 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EA7B2:
  0x001EA7B2  8b4128                  mov      eax, dword ptr [ecx + 0x28]    
  0x001EA7B5  56                      push     esi                            
  0x001EA7B6  33f6                    xor      esi, esi                       
  0x001EA7B8  3bc2                    cmp      eax, edx                       
  0x001EA7BA  740d                    je       0x1ea7c9                       
                                        ; XREF: 0x001EA7C3 (cond_jump)
  0x001EA7BC  8bf0                    mov      esi, eax                       
  0x001EA7BE  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA7C1  3bc2                    cmp      eax, edx                       
  0x001EA7C3  75f7                    jne      0x1ea7bc                       
  0x001EA7C5  85f6                    test     esi, esi                       
  0x001EA7C7  7508                    jne      0x1ea7d1                       
                                        ; XREF: 0x001EA7BA (cond_jump)
  0x001EA7C9  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA7CC  894128                  mov      dword ptr [ecx + 0x28], eax    
  0x001EA7CF  eb06                    jmp      0x1ea7d7                       
; end of function
                                        ; XREF: 0x001EA7C7 (cond_jump)
  0x001EA7D1  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EA7D4  894624                  mov      dword ptr [esi + 0x24], eax    
                                        ; XREF: 0x001EA7CF (jump)
  0x001EA7D7  3b512c                  cmp      edx, dword ptr [ecx + 0x2c]    
  0x001EA7DA  7503                    jne      0x1ea7df                       
  0x001EA7DC  89712c                  mov      dword ptr [ecx + 0x2c], esi    
                                        ; XREF: 0x001EA7DA (cond_jump)
  0x001EA7DF  5e                      pop      esi                            
  0x001EA7E0  c3                      ret                                     

; ============================================================
; Function: sub_001EA7E1
; Start: 0x001EA7E1  End: 0x001EA857  Size: 118 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F7A
; Called by: sub_001EA990, sub_001EA9F7
; ============================================================
sub_001EA7E1:
  0x001EA7E1  51                      push     ecx                            
  0x001EA7E2  57                      push     edi                            
  0x001EA7E3  8bfa                    mov      edi, edx                       
  0x001EA7E5  807f2600                cmp      byte ptr [edi + 0x26], 0       
  0x001EA7E9  7469                    je       0x1ea854                       
  0x001EA7EB  0fb64711                movzx    eax, byte ptr [edi + 0x11]     
  0x001EA7EF  83e800                  sub      eax, 0                         
  0x001EA7F2  53                      push     ebx                            
  0x001EA7F3  55                      push     ebp                            
  0x001EA7F4  741d                    je       0x1ea813                       
  0x001EA7F6  48                      dec      eax                            
  0x001EA7F7  48                      dec      eax                            
  0x001EA7F8  740b                    je       0x1ea805                       
  0x001EA7FA  48                      dec      eax                            
  0x001EA7FB  7555                    jne      0x1ea852                       
  0x001EA7FD  8d5f28                  lea      ebx, [edi + 0x28]              
  0x001EA800  8d6f2c                  lea      ebp, [edi + 0x2c]              
  0x001EA803  eb1a                    jmp      0x1ea81f                       
                                        ; XREF: 0x001EA7F8 (cond_jump)
  0x001EA805  8d9924040000            lea      ebx, [ecx + 0x424]             
  0x001EA80B  8da928040000            lea      ebp, [ecx + 0x428]             
  0x001EA811  eb0c                    jmp      0x1ea81f                       
                                        ; XREF: 0x001EA7F4 (cond_jump)
  0x001EA813  8d991c040000            lea      ebx, [ecx + 0x41c]             
  0x001EA819  8da920040000            lea      ebp, [ecx + 0x420]             
                                        ; XREF: 0x001EA803 (jump), 0x001EA811 (jump)
  0x001EA81F  56                      push     esi                            
                                        ; XREF: 0x001EA848 (cond_jump)
  0x001EA820  8b33                    mov      esi, dword ptr [ebx]           
  0x001EA822  397e10                  cmp      dword ptr [esi + 0x10], edi    
  0x001EA825  7517                    jne      0x1ea83e                       
  0x001EA827  8b4624                  mov      eax, dword ptr [esi + 0x24]    
  0x001EA82A  8903                    mov      dword ptr [ebx], eax           
  0x001EA82C  c746040f0000c0          mov      dword ptr [esi + 4], 0xc000000f 
  0x001EA833  fe4f26                  dec      byte ptr [edi + 0x26]          
  0x001EA836  56                      push     esi                            
  0x001EA837  e83ed7ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EA83C  eb07                    jmp      0x1ea845                       
                                        ; XREF: 0x001EA825 (cond_jump)
  0x001EA83E  89742410                mov      dword ptr [esp + 0x10], esi    
  0x001EA842  8d5e24                  lea      ebx, [esi + 0x24]              
                                        ; XREF: 0x001EA83C (jump)
  0x001EA845  397500                  cmp      dword ptr [ebp], esi           
  0x001EA848  75d6                    jne      0x1ea820                       
  0x001EA84A  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001EA84E  894500                  mov      dword ptr [ebp], eax           
  0x001EA851  5e                      pop      esi                            
                                        ; XREF: 0x001EA7FB (cond_jump)
  0x001EA852  5d                      pop      ebp                            
  0x001EA853  5b                      pop      ebx                            
                                        ; XREF: 0x001EA7E9 (cond_jump)
  0x001EA854  5f                      pop      edi                            
  0x001EA855  59                      pop      ecx                            
  0x001EA856  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EA857
; Start: 0x001EA857  End: 0x001EA89E  Size: 71 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EBE1F
; Called by: sub_001EA9F7, sub_001EC617
; ============================================================
sub_001EA857:
  0x001EA857  56                      push     esi                            
  0x001EA858  8bf2                    mov      esi, edx                       
  0x001EA85A  fe4620                  inc      byte ptr [esi + 0x20]          
  0x001EA85D  f6461020                test     byte ptr [esi + 0x10], 0x20    
  0x001EA861  57                      push     edi                            
  0x001EA862  8bf9                    mov      edi, ecx                       
  0x001EA864  7535                    jne      0x1ea89b                       
  0x001EA866  804e0140                or       byte ptr [esi + 1], 0x40       
  0x001EA86A  e8b0150000              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EA86F  40                      inc      eax                            
  0x001EA870  807e1101                cmp      byte ptr [esi + 0x11], 1       
  0x001EA874  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001EA877  7504                    jne      0x1ea87d                       
  0x001EA879  40                      inc      eax                            
  0x001EA87A  89461c                  mov      dword ptr [esi + 0x1c], eax    
                                        ; XREF: 0x001EA877 (cond_jump)
  0x001EA87D  83bf3804000000          cmp      dword ptr [edi + 0x438], 0     
  0x001EA884  7404                    je       0x1ea88a                       
  0x001EA886  804e1040                or       byte ptr [esi + 0x10], 0x40    
                                        ; XREF: 0x001EA884 (cond_jump)
  0x001EA88A  8b0f                    mov      ecx, dword ptr [edi]           
  0x001EA88C  6a04                    push     4                              
  0x001EA88E  58                      pop      eax                            
  0x001EA88F  89410c                  mov      dword ptr [ecx + 0xc], eax     
  0x001EA892  8b0f                    mov      ecx, dword ptr [edi]           
  0x001EA894  894110                  mov      dword ptr [ecx + 0x10], eax    
  0x001EA897  804e1020                or       byte ptr [esi + 0x10], 0x20    
                                        ; XREF: 0x001EA864 (cond_jump)
  0x001EA89B  5f                      pop      edi                            
  0x001EA89C  5e                      pop      esi                            
  0x001EA89D  c3                      ret                                     
; end of function
  0x001EA89E  56                      push     esi                            
  0x001EA89F  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001EA8A3  8b469c                  mov      eax, dword ptr [esi - 0x64]    
  0x001EA8A6  81c640fbffff            add      esi, 0xfffffb40                
  0x001EA8AC  6bc070                  imul     eax, eax, 0x70                 
  0x001EA8AF  8a882c4fbf00            mov      cl, byte ptr [eax + 0xbf4f2c]  
  0x001EA8B5  ff1544d21e00            call     dword ptr [0x1ed244]           ; -> xbox_KfRaiseIrql
  0x001EA8BB  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EA8BD  c7411433000080          mov      dword ptr [ecx + 0x14], 0x80000033 
  0x001EA8C4  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EA8C6  c7410402000000          mov      dword ptr [ecx + 4], 2         
  0x001EA8CD  8ac8                    mov      cl, al                         
  0x001EA8CF  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EA8D5  5e                      pop      esi                            
  0x001EA8D6  c20400                  ret      4                              

; ============================================================
; Function: sub_001EA8D9
; Start: 0x001EA8D9  End: 0x001EA8EE  Size: 21 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E98FB
; ============================================================
sub_001EA8D9:
  0x001EA8D9  56                      push     esi                            
  0x001EA8DA  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EA8DE  f6462201                test     byte ptr [esi + 0x22], 1       
  0x001EA8E2  740a                    je       0x1ea8ee                       
  0x001EA8E4  b800000240              mov      eax, 0x40020000                
  0x001EA8E9  e99e000000              jmp      0x1ea98c                       
; end of function
                                        ; XREF: 0x001EA8E2 (cond_jump)
  0x001EA8EE  53                      push     ebx                            
  0x001EA8EF  57                      push     edi                            
  0x001EA8F0  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EA8F6  8b7e10                  mov      edi, dword ptr [esi + 0x10]    
  0x001EA8F9  f6471010                test     byte ptr [edi + 0x10], 0x10    
  0x001EA8FD  8ad8                    mov      bl, al                         
  0x001EA8FF  757a                    jne      0x1ea97b                       
  0x001EA901  668b4622                mov      ax, word ptr [esi + 0x22]      
  0x001EA905  a802                    test     al, 2                          
  0x001EA907  7452                    je       0x1ea95b                       
  0x001EA909  0fb64711                movzx    eax, byte ptr [edi + 0x11]     
  0x001EA90D  83e800                  sub      eax, 0                         
  0x001EA910  7426                    je       0x1ea938                       
  0x001EA912  48                      dec      eax                            
  0x001EA913  48                      dec      eax                            
  0x001EA914  7415                    je       0x1ea92b                       
  0x001EA916  48                      dec      eax                            
  0x001EA917  7407                    je       0x1ea920                       
  0x001EA919  be00060080              mov      esi, 0x80000600                
  0x001EA91E  eb60                    jmp      0x1ea980                       
                                        ; XREF: 0x001EA917 (cond_jump)
  0x001EA920  8bd6                    mov      edx, esi                       
  0x001EA922  8bcf                    mov      ecx, edi                       
  0x001EA924  e889feffff              call     0x1ea7b2                       ; -> sub_001EA7B2
  0x001EA929  eb18                    jmp      0x1ea943                       
                                        ; XREF: 0x001EA914 (cond_jump)
  0x001EA92B  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001EA92F  8bd6                    mov      edx, esi                       
  0x001EA931  e843feffff              call     0x1ea779                       ; -> sub_001EA779
  0x001EA936  eb0b                    jmp      0x1ea943                       
                                        ; XREF: 0x001EA910 (cond_jump)
  0x001EA938  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001EA93C  8bd6                    mov      edx, esi                       
  0x001EA93E  e8fdfdffff              call     0x1ea740                       ; -> sub_001EA740
                                        ; XREF: 0x001EA929 (jump), 0x001EA936 (jump)
  0x001EA943  fe4f26                  dec      byte ptr [edi + 0x26]          
  0x001EA946  804e2201                or       byte ptr [esi + 0x22], 1       
  0x001EA94A  56                      push     esi                            
  0x001EA94B  c746040f0000c0          mov      dword ptr [esi + 4], 0xc000000f 
  0x001EA952  e823d6ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EA957  33f6                    xor      esi, esi                       
  0x001EA959  eb25                    jmp      0x1ea980                       
                                        ; XREF: 0x001EA907 (cond_jump)
  0x001EA95B  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001EA95F  660d0100                or       ax, 1                          
  0x001EA963  66894622                mov      word ptr [esi + 0x22], ax      
  0x001EA967  8d812c040000            lea      eax, [ecx + 0x42c]             
  0x001EA96D  8b10                    mov      edx, dword ptr [eax]           
  0x001EA96F  895624                  mov      dword ptr [esi + 0x24], edx    
  0x001EA972  8bd7                    mov      edx, edi                       
  0x001EA974  8930                    mov      dword ptr [eax], esi           
  0x001EA976  e8dcfeffff              call     0x1ea857                       ; -> sub_001EA857
                                        ; XREF: 0x001EA8FF (cond_jump)
  0x001EA97B  be00000240              mov      esi, 0x40020000                
                                        ; XREF: 0x001EA91E (jump), 0x001EA959 (jump)
  0x001EA980  8acb                    mov      cl, bl                         
  0x001EA982  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EA988  5f                      pop      edi                            
  0x001EA989  8bc6                    mov      eax, esi                       
  0x001EA98B  5b                      pop      ebx                            
                                        ; XREF: 0x001EA8E9 (jump)
  0x001EA98C  5e                      pop      esi                            
  0x001EA98D  c20800                  ret      8                              

; ============================================================
; Function: sub_001EA990
; Start: 0x001EA990  End: 0x001EA9C6  Size: 54 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EA7E1, sub_001EBC17
; Called by: sub_001EAA4A
; ============================================================
sub_001EA990:
  0x001EA990  53                      push     ebx                            
  0x001EA991  55                      push     ebp                            
  0x001EA992  56                      push     esi                            
  0x001EA993  57                      push     edi                            
  0x001EA994  8bfa                    mov      edi, edx                       
  0x001EA996  8b7710                  mov      esi, dword ptr [edi + 0x10]    
  0x001EA999  8be9                    mov      ebp, ecx                       
  0x001EA99B  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EA9A1  804e1010                or       byte ptr [esi + 0x10], 0x10    
  0x001EA9A5  8bd6                    mov      edx, esi                       
  0x001EA9A7  8bcd                    mov      ecx, ebp                       
  0x001EA9A9  8ad8                    mov      bl, al                         
  0x001EA9AB  e831feffff              call     0x1ea7e1                       ; -> sub_001EA7E1
  0x001EA9B0  8a4611                  mov      al, byte ptr [esi + 0x11]      
  0x001EA9B3  84c0                    test     al, al                         
  0x001EA9B5  740f                    je       0x1ea9c6                       
  0x001EA9B7  3c02                    cmp      al, 2                          
  0x001EA9B9  740b                    je       0x1ea9c6                       
  0x001EA9BB  8bd6                    mov      edx, esi                       
  0x001EA9BD  8bcd                    mov      ecx, ebp                       
  0x001EA9BF  e853120000              call     0x1ebc17                       ; -> sub_001EBC17
  0x001EA9C4  eb09                    jmp      0x1ea9cf                       
; end of function
                                        ; XREF: 0x001EA9B5 (cond_jump), 0x001EA9B9 (cond_jump)
  0x001EA9C6  8bd6                    mov      edx, esi                       
  0x001EA9C8  8bcd                    mov      ecx, ebp                       
  0x001EA9CA  e88f0f0000              call     0x1eb95e                       ; -> sub_001EB95E
                                        ; XREF: 0x001EA9C4 (jump)
  0x001EA9CF  8bd6                    mov      edx, esi                       
  0x001EA9D1  8bcd                    mov      ecx, ebp                       
  0x001EA9D3  e87ffeffff              call     0x1ea857                       ; -> sub_001EA857
  0x001EA9D8  8d8534040000            lea      eax, [ebp + 0x434]             
  0x001EA9DE  8b08                    mov      ecx, dword ptr [eax]           
  0x001EA9E0  894f14                  mov      dword ptr [edi + 0x14], ecx    
  0x001EA9E3  8acb                    mov      cl, bl                         
  0x001EA9E5  8938                    mov      dword ptr [eax], edi           
  0x001EA9E7  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EA9ED  5f                      pop      edi                            
  0x001EA9EE  5e                      pop      esi                            
  0x001EA9EF  5d                      pop      ebp                            
  0x001EA9F0  b800000040              mov      eax, 0x40000000                
  0x001EA9F5  5b                      pop      ebx                            
  0x001EA9F6  c3                      ret                                     

; ============================================================
; Function: sub_001EA9F7
; Start: 0x001EA9F7  End: 0x001EAA4A  Size: 83 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EA7E1, sub_001EA857
; Called by: sub_001EAA4A
; ============================================================
sub_001EA9F7:
  0x001EA9F7  51                      push     ecx                            
  0x001EA9F8  53                      push     ebx                            
  0x001EA9F9  55                      push     ebp                            
  0x001EA9FA  56                      push     esi                            
  0x001EA9FB  8bf2                    mov      esi, edx                       
  0x001EA9FD  57                      push     edi                            
  0x001EA9FE  8b7e10                  mov      edi, dword ptr [esi + 0x10]    
  0x001EAA01  8be9                    mov      ebp, ecx                       
  0x001EAA03  33db                    xor      ebx, ebx                       
  0x001EAA05  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EAA0B  8bd7                    mov      edx, edi                       
  0x001EAA0D  8bcd                    mov      ecx, ebp                       
  0x001EAA0F  88442413                mov      byte ptr [esp + 0x13], al      
  0x001EAA13  e8c9fdffff              call     0x1ea7e1                       ; -> sub_001EA7E1
  0x001EAA18  385f27                  cmp      byte ptr [edi + 0x27], bl      
  0x001EAA1B  741b                    je       0x1eaa38                       
  0x001EAA1D  8d8530040000            lea      eax, [ebp + 0x430]             
  0x001EAA23  8b08                    mov      ecx, dword ptr [eax]           
  0x001EAA25  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001EAA28  8bd7                    mov      edx, edi                       
  0x001EAA2A  8bcd                    mov      ecx, ebp                       
  0x001EAA2C  8930                    mov      dword ptr [eax], esi           
  0x001EAA2E  e824feffff              call     0x1ea857                       ; -> sub_001EA857
  0x001EAA33  bb00000040              mov      ebx, 0x40000000                
                                        ; XREF: 0x001EAA1B (cond_jump)
  0x001EAA38  8a4c2413                mov      cl, byte ptr [esp + 0x13]      
  0x001EAA3C  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EAA42  5f                      pop      edi                            
  0x001EAA43  5e                      pop      esi                            
  0x001EAA44  5d                      pop      ebp                            
  0x001EAA45  8bc3                    mov      eax, ebx                       
  0x001EAA47  5b                      pop      ebx                            
  0x001EAA48  59                      pop      ecx                            
  0x001EAA49  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EAA4A
; Start: 0x001EAA4A  End: 0x001EAB37  Size: 237 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EA592, sub_001EA6F1, sub_001EA712, sub_001EA990, sub_001EA9F7, sub_001EBE1F, sub_001EC46A, sub_001EC617, sub_001EC6E4, sub_001EC84B ... (+1 more)
; Called by: sub_001E91C2, sub_001E9B0D, sub_001E9CB5
; ============================================================
sub_001EAA4A:
  0x001EAA4A  55                      push     ebp                            
  0x001EAA4B  8bec                    mov      ebp, esp                       
  0x001EAA4D  56                      push     esi                            
  0x001EAA4E  57                      push     edi                            
  0x001EAA4F  8b7d0c                  mov      edi, dword ptr [ebp + 0xc]     
  0x001EAA52  0fb64701                movzx    eax, byte ptr [edi + 1]        
  0x001EAA56  83f80c                  cmp      eax, 0xc                       
  0x001EAA59  0f8f83000000            jg       0x1eaae2                       
  0x001EAA5F  7475                    je       0x1eaad6                       
  0x001EAA61  6a02                    push     2                              
  0x001EAA63  59                      pop      ecx                            
  0x001EAA64  2bc1                    sub      eax, ecx                       
  0x001EAA66  7462                    je       0x1eaaca                       
  0x001EAA68  2bc1                    sub      eax, ecx                       
  0x001EAA6A  7452                    je       0x1eaabe                       
  0x001EAA6C  48                      dec      eax                            
  0x001EAA6D  7440                    je       0x1eaaaf                       
  0x001EAA6F  2bc1                    sub      eax, ecx                       
  0x001EAA71  742a                    je       0x1eaa9d                       
  0x001EAA73  2bc1                    sub      eax, ecx                       
  0x001EAA75  7417                    je       0x1eaa8e                       
  0x001EAA77  2bc1                    sub      eax, ecx                       
  0x001EAA79  0f85b1000000            jne      0x1eab30                       
  0x001EAA7F  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAA82  8bd7                    mov      edx, edi                       
  0x001EAA84  e85b1c0000              call     0x1ec6e4                       ; -> sub_001EC6E4
  0x001EAA89  e9b3000000              jmp      0x1eab41                       
                                        ; XREF: 0x001EAA75 (cond_jump)
  0x001EAA8E  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAA91  8bd7                    mov      edx, edi                       
  0x001EAA93  e8d2190000              call     0x1ec46a                       ; -> sub_001EC46A
  0x001EAA98  e9a4000000              jmp      0x1eab41                       
                                        ; XREF: 0x001EAA71 (cond_jump)
  0x001EAA9D  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAAA0  e87a130000              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EAAA5  894714                  mov      dword ptr [edi + 0x14], eax    
  0x001EAAA8  33f6                    xor      esi, esi                       
  0x001EAAAA  e994000000              jmp      0x1eab43                       
                                        ; XREF: 0x001EAA6D (cond_jump)
  0x001EAAAF  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAAB2  8bd7                    mov      edx, edi                       
  0x001EAAB4  e859fcffff              call     0x1ea712                       ; -> sub_001EA712
  0x001EAAB9  e983000000              jmp      0x1eab41                       
                                        ; XREF: 0x001EAA6A (cond_jump)
  0x001EAABE  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAAC1  8bd7                    mov      edx, edi                       
  0x001EAAC3  e829fcffff              call     0x1ea6f1                       ; -> sub_001EA6F1
  0x001EAAC8  eb77                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAA66 (cond_jump)
  0x001EAACA  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAACD  8bd7                    mov      edx, edi                       
  0x001EAACF  e8befaffff              call     0x1ea592                       ; -> sub_001EA592
  0x001EAAD4  eb6b                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAA5F (cond_jump)
  0x001EAAD6  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAAD9  8bd7                    mov      edx, edi                       
  0x001EAADB  e86b1d0000              call     0x1ec84b                       ; -> sub_001EC84B
  0x001EAAE0  eb5f                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAA59 (cond_jump)
  0x001EAAE2  83f80d                  cmp      eax, 0xd                       
  0x001EAAE5  7450                    je       0x1eab37                       
  0x001EAAE7  83f83f                  cmp      eax, 0x3f                      
  0x001EAAEA  7e44                    jle      0x1eab30                       
  0x001EAAEC  83f841                  cmp      eax, 0x41                      
  0x001EAAEF  7e33                    jle      0x1eab24                       
  0x001EAAF1  83f843                  cmp      eax, 0x43                      
  0x001EAAF4  7422                    je       0x1eab18                       
  0x001EAAF6  83f846                  cmp      eax, 0x46                      
  0x001EAAF9  7411                    je       0x1eab0c                       
  0x001EAAFB  83f84a                  cmp      eax, 0x4a                      
  0x001EAAFE  7530                    jne      0x1eab30                       
  0x001EAB00  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAB03  8bd7                    mov      edx, edi                       
  0x001EAB05  e80d1b0000              call     0x1ec617                       ; -> sub_001EC617
  0x001EAB0A  eb35                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAAF9 (cond_jump)
  0x001EAB0C  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAB0F  8bd7                    mov      edx, edi                       
  0x001EAB11  e8e1feffff              call     0x1ea9f7                       ; -> sub_001EA9F7
  0x001EAB16  eb29                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAAF4 (cond_jump)
  0x001EAB18  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAB1B  8bd7                    mov      edx, edi                       
  0x001EAB1D  e86efeffff              call     0x1ea990                       ; -> sub_001EA990
  0x001EAB22  eb1d                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAAEF (cond_jump)
  0x001EAB24  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAB27  8bd7                    mov      edx, edi                       
  0x001EAB29  e8e7240000              call     0x1ed015                       ; -> sub_001ED015
  0x001EAB2E  eb11                    jmp      0x1eab41                       
                                        ; XREF: 0x001EAA79 (cond_jump), 0x001EAAEA (cond_jump), 0x001EAAFE (cond_jump)
  0x001EAB30  be00020080              mov      esi, 0x80000200                
  0x001EAB35  eb0c                    jmp      0x1eab43                       
; end of function
                                        ; XREF: 0x001EAAE5 (cond_jump)
  0x001EAB37  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAB3A  8bd7                    mov      edx, edi                       
  0x001EAB3C  e8291e0000              call     0x1ec96a                       ; -> sub_001EC96A
                                        ; XREF: 0x001EAA89 (jump), 0x001EAA98 (jump), 0x001EAAB9 (jump), 0x001EAAC8 (jump), 0x001EAAD4 (jump), ... (+5 more)
  0x001EAB41  8bf0                    mov      esi, eax                       
                                        ; XREF: 0x001EAAAA (jump), 0x001EAB35 (jump)
  0x001EAB43  8bc6                    mov      eax, esi                       
  0x001EAB45  25000000c0              and      eax, 0xc0000000                
  0x001EAB4A  3d00000040              cmp      eax, 0x40000000                
  0x001EAB4F  7409                    je       0x1eab5a                       
  0x001EAB51  57                      push     edi                            
  0x001EAB52  897704                  mov      dword ptr [edi + 4], esi       
  0x001EAB55  e820d4ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
                                        ; XREF: 0x001EAB4F (cond_jump)
  0x001EAB5A  5f                      pop      edi                            
  0x001EAB5B  8bc6                    mov      eax, esi                       
  0x001EAB5D  5e                      pop      esi                            
  0x001EAB5E  5d                      pop      ebp                            
  0x001EAB5F  c20800                  ret      8                              
  0x001EAB62  56                      push     esi                            
  0x001EAB63  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EAB67  8bce                    mov      ecx, esi                       
  0x001EAB69  e8a0edffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAB6E  8b0d642ab200            mov      ecx, dword ptr [0xb22a64]      
  0x001EAB74  83e900                  sub      ecx, 0                         
  0x001EAB77  742e                    je       0x1eaba7                       
  0x001EAB79  49                      dec      ecx                            
  0x001EAB7A  7417                    je       0x1eab93                       
  0x001EAB7C  49                      dec      ecx                            
  0x001EAB7D  7533                    jne      0x1eabb2                       
  0x001EAB7F  ff35182ab200            push     dword ptr [0xb22a18]           
  0x001EAB85  8bce                    mov      ecx, esi                       
  0x001EAB87  6800060080              push     0x80000600                     
  0x001EAB8C  e891e5ffff              call     0x1e9122                       ; -> sub_001E9122
  0x001EAB91  eb1f                    jmp      0x1eabb2                       
                                        ; XREF: 0x001EAB7A (cond_jump)
  0x001EAB93  ff35182ab200            push     dword ptr [0xb22a18]           
  0x001EAB99  8bce                    mov      ecx, esi                       
  0x001EAB9B  6800060080              push     0x80000600                     
  0x001EABA0  e8bfe2ffff              call     0x1e8e64                       ; -> sub_001E8E64
  0x001EABA5  eb0b                    jmp      0x1eabb2                       
                                        ; XREF: 0x001EAB77 (cond_jump)
  0x001EABA7  83c008                  add      eax, 8                         
  0x001EABAA  50                      push     eax                            
  0x001EABAB  8bce                    mov      ecx, esi                       
  0x001EABAD  e849edffff              call     0x1e98fb                       ; -> sub_001E98FB
                                        ; XREF: 0x001EAB7D (cond_jump), 0x001EAB91 (jump), 0x001EABA5 (jump)
  0x001EABB2  5e                      pop      esi                            
  0x001EABB3  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001EABB6
; Start: 0x001EABB6  End: 0x001EABE6  Size: 48 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EAE42
; ============================================================
sub_001EABB6:
  0x001EABB6  8b542404                mov      edx, dword ptr [esp + 4]       
  0x001EABBA  83c9ff                  or       ecx, 0xffffffff                
  0x001EABBD  85d2                    test     edx, edx                       
  0x001EABBF  b8800f05fd              mov      eax, 0xfd050f80                
  0x001EABC4  7405                    je       0x1eabcb                       
  0x001EABC6  b8c0b4b3ff              mov      eax, 0xffb3b4c0                
                                        ; XREF: 0x001EABC4 (cond_jump)
  0x001EABCB  68482ab200              push     0xb22a48                       
  0x001EABD0  51                      push     ecx                            
  0x001EABD1  50                      push     eax                            
  0x001EABD2  68202ab200              push     0xb22a20                       
  0x001EABD7  8915642ab200            mov      dword ptr [0xb22a64], edx      
  0x001EABDD  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EABE3  c20400                  ret      4                              
; end of function
  0x001EABE6  56                      push     esi                            
  0x001EABE7  57                      push     edi                            
  0x001EABE8  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001EABEC  8bcf                    mov      ecx, edi                       
  0x001EABEE  e81bedffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EABF3  6a00                    push     0                              
  0x001EABF5  8bcf                    mov      ecx, edi                       
  0x001EABF7  8bf0                    mov      esi, eax                       
  0x001EABF9  e814edffff              call     0x1e9912                       ; -> sub_001E9912
  0x001EABFE  8026fe                  and      byte ptr [esi], 0xfe           
  0x001EAC01  66ff0d6a2ab200          dec      word ptr [0xb22a6a]            
  0x001EAC08  f60602                  test     byte ptr [esi], 2              
  0x001EAC0B  8bcf                    mov      ecx, edi                       
  0x001EAC0D  7407                    je       0x1eac16                       
  0x001EAC0F  e855e2ffff              call     0x1e8e69                       ; -> sub_001E8E69
  0x001EAC14  eb0a                    jmp      0x1eac20                       
                                        ; XREF: 0x001EAC0D (cond_jump)
  0x001EAC16  6800010080              push     0x80000100                     
  0x001EAC1B  e807e6ffff              call     0x1e9227                       ; -> sub_001E9227
                                        ; XREF: 0x001EAC14 (jump)
  0x001EAC20  5f                      pop      edi                            
  0x001EAC21  5e                      pop      esi                            
  0x001EAC22  c20800                  ret      8                              
  0x001EAC25  56                      push     esi                            
  0x001EAC26  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001EAC2A  837e0400                cmp      dword ptr [esi + 4], 0         
  0x001EAC2E  7d1d                    jge      0x1eac4d                       
  0x001EAC30  68202ab200              push     0xb22a20                       
  0x001EAC35  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EAC3B  ff35182ab200            push     dword ptr [0xb22a18]           
  0x001EAC41  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001EAC45  ff7604                  push     dword ptr [esi + 4]            
  0x001EAC48  e817e2ffff              call     0x1e8e64                       ; -> sub_001E8E64
                                        ; XREF: 0x001EAC2E (cond_jump)
  0x001EAC4D  5e                      pop      esi                            
  0x001EAC4E  c20800                  ret      8                              
  0x001EAC51  68202ab200              push     0xb22a20                       
  0x001EAC56  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EAC5C  ff35182ab200            push     dword ptr [0xb22a18]           
  0x001EAC62  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001EAC66  ff7004                  push     dword ptr [eax + 4]            
  0x001EAC69  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001EAC6D  e8b0e4ffff              call     0x1e9122                       ; -> sub_001E9122
  0x001EAC72  c20800                  ret      8                              

; ============================================================
; Function: sub_001EAC75
; Start: 0x001EAC75  End: 0x001EACD2  Size: 93 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E990E, sub_001E9CB5
; ============================================================
sub_001EAC75:
  0x001EAC75  56                      push     esi                            
  0x001EAC76  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001EAC7A  57                      push     edi                            
  0x001EAC7B  8bce                    mov      ecx, esi                       
  0x001EAC7D  e88cecffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAC82  660fb67803              movzx    di, byte ptr [eax + 3]         
  0x001EAC87  33d2                    xor      edx, edx                       
  0x001EAC89  8d4808                  lea      ecx, [eax + 8]                 
  0x001EAC8C  c60130                  mov      byte ptr [ecx], 0x30           
  0x001EAC8F  51                      push     ecx                            
  0x001EAC90  8bce                    mov      ecx, esi                       
  0x001EAC92  c6400940                mov      byte ptr [eax + 9], 0x40       
  0x001EAC96  c74010bdb31e00          mov      dword ptr [eax + 0x10], 0x1eb3bd 
  0x001EAC9D  897014                  mov      dword ptr [eax + 0x14], esi    
  0x001EACA0  895018                  mov      dword ptr [eax + 0x18], edx    
  0x001EACA3  895020                  mov      dword ptr [eax + 0x20], edx    
  0x001EACA6  89501c                  mov      dword ptr [eax + 0x1c], edx    
  0x001EACA9  885024                  mov      byte ptr [eax + 0x24], dl      
  0x001EACAC  885025                  mov      byte ptr [eax + 0x25], dl      
  0x001EACAF  885026                  mov      byte ptr [eax + 0x26], dl      
  0x001EACB2  c6403023                mov      byte ptr [eax + 0x30], 0x23    
  0x001EACB6  c6403101                mov      byte ptr [eax + 0x31], 1       
  0x001EACBA  66c740320100            mov      word ptr [eax + 0x32], 1       
  0x001EACC0  66897834                mov      word ptr [eax + 0x34], di      
  0x001EACC4  66895036                mov      word ptr [eax + 0x36], dx      
  0x001EACC8  e8e8efffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EACCD  5f                      pop      edi                            
  0x001EACCE  5e                      pop      esi                            
  0x001EACCF  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001EACD2
; Start: 0x001EACD2  End: 0x001EAD49  Size: 119 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8E64, sub_001E990E
; ============================================================
sub_001EACD2:
  0x001EACD2  55                      push     ebp                            
  0x001EACD3  8bec                    mov      ebp, esp                       
  0x001EACD5  53                      push     ebx                            
  0x001EACD6  56                      push     esi                            
  0x001EACD7  57                      push     edi                            
  0x001EACD8  8b7d08                  mov      edi, dword ptr [ebp + 8]       
  0x001EACDB  8bcf                    mov      ecx, edi                       
  0x001EACDD  e82cecffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EACE2  8bf0                    mov      esi, eax                       
  0x001EACE4  668b463a                mov      ax, word ptr [esi + 0x3a]      
  0x001EACE8  33db                    xor      ebx, ebx                       
  0x001EACEA  a810                    test     al, 0x10                       
  0x001EACEC  745b                    je       0x1ead49                       
  0x001EACEE  833d642ab20001          cmp      dword ptr [0xb22a64], 1        
  0x001EACF5  754a                    jne      0x1ead41                       
  0x001EACF7  391d182ab200            cmp      dword ptr [0xb22a18], ebx      
  0x001EACFD  7442                    je       0x1ead41                       
  0x001EACFF  68202ab200              push     0xb22a20                       
  0x001EAD04  33ff                    xor      edi, edi                       
  0x001EAD06  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EAD0C  668b4638                mov      ax, word ptr [esi + 0x38]      
  0x001EAD10  a802                    test     al, 2                          
  0x001EAD12  7410                    je       0x1ead24                       
  0x001EAD14  a810                    test     al, 0x10                       
  0x001EAD16  750c                    jne      0x1ead24                       
  0x001EAD18  f6c402                  test     ah, 2                          
  0x001EAD1B  740c                    je       0x1ead29                       
  0x001EAD1D  bf00000001              mov      edi, 0x1000000                 
  0x001EAD22  eb05                    jmp      0x1ead29                       
                                        ; XREF: 0x001EAD12 (cond_jump), 0x001EAD16 (cond_jump)
  0x001EAD24  bf00060080              mov      edi, 0x80000600                
                                        ; XREF: 0x001EAD1B (cond_jump), 0x001EAD22 (jump)
  0x001EAD29  a1182ab200              mov      eax, dword ptr [0xb22a18]      
  0x001EAD2E  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAD31  50                      push     eax                            
  0x001EAD32  57                      push     edi                            
  0x001EAD33  891d182ab200            mov      dword ptr [0xb22a18], ebx      
  0x001EAD39  e826e1ffff              call     0x1e8e64                       ; -> sub_001E8E64
  0x001EAD3E  8b7d08                  mov      edi, dword ptr [ebp + 8]       
                                        ; XREF: 0x001EACF5 (cond_jump), 0x001EACFD (cond_jump)
  0x001EAD41  80663aef                and      byte ptr [esi + 0x3a], 0xef    
  0x001EAD45  6a14                    push     0x14                           
  0x001EAD47  eb77                    jmp      0x1eadc0                       
; end of function
                                        ; XREF: 0x001EACEC (cond_jump)
  0x001EAD49  a801                    test     al, 1                          
  0x001EAD4B  744d                    je       0x1ead9a                       
  0x001EAD4D  33c9                    xor      ecx, ecx                       
  0x001EAD4F  8a4e03                  mov      cl, byte ptr [esi + 3]         
  0x001EAD52  884d08                  mov      byte ptr [ebp + 8], cl         
  0x001EAD55  b001                    mov      al, 1                          
  0x001EAD57  49                      dec      ecx                            
  0x001EAD58  d2e0                    shl      al, cl                         
  0x001EAD5A  f6463801                test     byte ptr [esi + 0x38], 1       
  0x001EAD5E  741a                    je       0x1ead7a                       
  0x001EAD60  844605                  test     byte ptr [esi + 5], al         
  0x001EAD63  740a                    je       0x1ead6f                       
  0x001EAD65  ff7508                  push     dword ptr [ebp + 8]            
  0x001EAD68  8bcf                    mov      ecx, edi                       
  0x001EAD6A  e863e2ffff              call     0x1e8fd2                       ; -> sub_001E8FD2
                                        ; XREF: 0x001EAD63 (cond_jump)
  0x001EAD6F  57                      push     edi                            
  0x001EAD70  e800ffffff              call     0x1eac75                       ; -> sub_001EAC75
  0x001EAD75  e99f000000              jmp      0x1eae19                       
                                        ; XREF: 0x001EAD5E (cond_jump)
  0x001EAD7A  8a4e05                  mov      cl, byte ptr [esi + 5]         
  0x001EAD7D  84c8                    test     al, cl                         
  0x001EAD7F  7411                    je       0x1ead92                       
  0x001EAD81  ff7508                  push     dword ptr [ebp + 8]            
  0x001EAD84  f6d0                    not      al                             
  0x001EAD86  22c1                    and      al, cl                         
  0x001EAD88  8bcf                    mov      ecx, edi                       
  0x001EAD8A  884605                  mov      byte ptr [esi + 5], al         
  0x001EAD8D  e840e2ffff              call     0x1e8fd2                       ; -> sub_001E8FD2
                                        ; XREF: 0x001EAD7F (cond_jump)
  0x001EAD92  80663afe                and      byte ptr [esi + 0x3a], 0xfe    
  0x001EAD96  6a10                    push     0x10                           
  0x001EAD98  eb26                    jmp      0x1eadc0                       
                                        ; XREF: 0x001EAD4B (cond_jump)
  0x001EAD9A  a802                    test     al, 2                          
  0x001EAD9C  7408                    je       0x1eada6                       
  0x001EAD9E  6625fdff                and      ax, 0xfffd                     
  0x001EADA2  6a11                    push     0x11                           
  0x001EADA4  eb16                    jmp      0x1eadbc                       
                                        ; XREF: 0x001EAD9C (cond_jump)
  0x001EADA6  a804                    test     al, 4                          
  0x001EADA8  7408                    je       0x1eadb2                       
  0x001EADAA  6625fbff                and      ax, 0xfffb                     
  0x001EADAE  6a12                    push     0x12                           
  0x001EADB0  eb0a                    jmp      0x1eadbc                       
                                        ; XREF: 0x001EADA8 (cond_jump)
  0x001EADB2  a808                    test     al, 8                          
  0x001EADB4  7454                    je       0x1eae0a                       
  0x001EADB6  6625f7ff                and      ax, 0xfff7                     
  0x001EADBA  6a13                    push     0x13                           
                                        ; XREF: 0x001EADA4 (jump), 0x001EADB0 (jump)
  0x001EADBC  6689463a                mov      word ptr [esi + 0x3a], ax      
                                        ; XREF: 0x001EAD47 (jump), 0x001EAD98 (jump)
  0x001EADC0  59                      pop      ecx                            
  0x001EADC1  66894e32                mov      word ptr [esi + 0x32], cx      
  0x001EADC5  660fb64e03              movzx    cx, byte ptr [esi + 3]         
  0x001EADCA  8d4608                  lea      eax, [esi + 8]                 
  0x001EADCD  66894e34                mov      word ptr [esi + 0x34], cx      
  0x001EADD1  50                      push     eax                            
  0x001EADD2  8bcf                    mov      ecx, edi                       
  0x001EADD4  c60030                  mov      byte ptr [eax], 0x30           
  0x001EADD7  c6460940                mov      byte ptr [esi + 9], 0x40       
  0x001EADDB  c746108db31e00          mov      dword ptr [esi + 0x10], 0x1eb38d 
  0x001EADE2  897e14                  mov      dword ptr [esi + 0x14], edi    
  0x001EADE5  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001EADE8  895e20                  mov      dword ptr [esi + 0x20], ebx    
  0x001EADEB  895e1c                  mov      dword ptr [esi + 0x1c], ebx    
  0x001EADEE  885e24                  mov      byte ptr [esi + 0x24], bl      
  0x001EADF1  885e25                  mov      byte ptr [esi + 0x25], bl      
  0x001EADF4  885e26                  mov      byte ptr [esi + 0x26], bl      
  0x001EADF7  c6463023                mov      byte ptr [esi + 0x30], 0x23    
  0x001EADFB  c6463101                mov      byte ptr [esi + 0x31], 1       
  0x001EADFF  66895e36                mov      word ptr [esi + 0x36], bx      
  0x001EAE03  e8adeeffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EAE08  eb0f                    jmp      0x1eae19                       
                                        ; XREF: 0x001EADB4 (cond_jump)
  0x001EAE0A  6683663a00              and      word ptr [esi + 0x3a], 0       
  0x001EAE0F  57                      push     edi                            
  0x001EAE10  83c608                  add      esi, 8                         
  0x001EAE13  56                      push     esi                            
  0x001EAE14  e874050000              call     0x1eb38d                       ; -> sub_001EB38D
                                        ; XREF: 0x001EAD75 (jump), 0x001EAE08 (jump)
  0x001EAE19  5f                      pop      edi                            
  0x001EAE1A  5e                      pop      esi                            
  0x001EAE1B  5b                      pop      ebx                            
  0x001EAE1C  5d                      pop      ebp                            
  0x001EAE1D  c20400                  ret      4                              

; ============================================================
; Function: sub_001EAE20
; Start: 0x001EAE20  End: 0x001EAE42  Size: 34 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E9CB5
; Called by: sub_001EB54F
; ============================================================
sub_001EAE20:
  0x001EAE20  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001EAE24  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001EAE28  50                      push     eax                            
  0x001EAE29  c6001c                  mov      byte ptr [eax], 0x1c           
  0x001EAE2C  c64001c3                mov      byte ptr [eax + 1], 0xc3       
  0x001EAE30  c74008e6ab1e00          mov      dword ptr [eax + 8], 0x1eabe6  
  0x001EAE37  89480c                  mov      dword ptr [eax + 0xc], ecx     
  0x001EAE3A  e876eeffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EAE3F  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001EAE42
; Start: 0x001EAE42  End: 0x001EAF12  Size: 208 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E990E, sub_001E9CB5, sub_001EABB6
; Called by: sub_001E9155
; ============================================================
sub_001EAE42:
  0x001EAE42  55                      push     ebp                            
  0x001EAE43  8bec                    mov      ebp, esp                       
  0x001EAE45  51                      push     ecx                            
  0x001EAE46  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAE49  53                      push     ebx                            
  0x001EAE4A  56                      push     esi                            
  0x001EAE4B  57                      push     edi                            
  0x001EAE4C  e8bdeaffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAE51  33c9                    xor      ecx, ecx                       
  0x001EAE53  3bc1                    cmp      eax, ecx                       
  0x001EAE55  6a04                    push     4                              
  0x001EAE57  b203                    mov      dl, 3                          
  0x001EAE59  5e                      pop      esi                            
  0x001EAE5A  c745fc01000000          mov      dword ptr [ebp - 4], 1         
  0x001EAE61  bf25ac1e00              mov      edi, 0x1eac25                  
  0x001EAE66  0f84a6000000            je       0x1eaf12                       
  0x001EAE6C  8a5d0c                  mov      bl, byte ptr [ebp + 0xc]       
  0x001EAE6F  385802                  cmp      byte ptr [eax + 2], bl         
  0x001EAE72  0f829a000000            jb       0x1eaf12                       
  0x001EAE78  384d14                  cmp      byte ptr [ebp + 0x14], cl      
  0x001EAE7B  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001EAE7E  a3182ab200              mov      dword ptr [0xb22a18], eax      
  0x001EAE83  7411                    je       0x1eae96                       
  0x001EAE85  33d2                    xor      edx, edx                       
  0x001EAE87  42                      inc      edx                            
  0x001EAE88  8bf2                    mov      esi, edx                       
  0x001EAE8A  bf51ac1e00              mov      edi, 0x1eac51                  
  0x001EAE8F  c745fc02000000          mov      dword ptr [ebp - 4], 2         
                                        ; XREF: 0x001EAE83 (cond_jump)
  0x001EAE96  ff75fc                  push     dword ptr [ebp - 4]            
  0x001EAE99  660fb6c3                movzx    ax, bl                         
  0x001EAE9D  893df029b200            mov      dword ptr [0xb229f0], edi      
  0x001EAEA3  8b7d08                  mov      edi, dword ptr [ebp + 8]       
  0x001EAEA6  c605e829b20030          mov      byte ptr [0xb229e8], 0x30      
  0x001EAEAD  c605e929b20040          mov      byte ptr [0xb229e9], 0x40      
  0x001EAEB4  893df429b200            mov      dword ptr [0xb229f4], edi      
  0x001EAEBA  890df829b200            mov      dword ptr [0xb229f8], ecx      
  0x001EAEC0  890d002ab200            mov      dword ptr [0xb22a00], ecx      
  0x001EAEC6  890dfc29b200            mov      dword ptr [0xb229fc], ecx      
  0x001EAECC  880d042ab200            mov      byte ptr [0xb22a04], cl        
  0x001EAED2  880d052ab200            mov      byte ptr [0xb22a05], cl        
  0x001EAED8  880d062ab200            mov      byte ptr [0xb22a06], cl        
  0x001EAEDE  c605102ab20023          mov      byte ptr [0xb22a10], 0x23      
  0x001EAEE5  8815112ab200            mov      byte ptr [0xb22a11], dl        
  0x001EAEEB  668935122ab200          mov      word ptr [0xb22a12], si        
  0x001EAEF2  66a3142ab200            mov      word ptr [0xb22a14], ax        
  0x001EAEF8  66890d162ab200          mov      word ptr [0xb22a16], cx        
  0x001EAEFF  e8b2fcffff              call     0x1eabb6                       ; -> sub_001EABB6
  0x001EAF04  68e829b200              push     0xb229e8                       
  0x001EAF09  8bcf                    mov      ecx, edi                       
  0x001EAF0B  e8a5edffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EAF10  eb10                    jmp      0x1eaf22                       
; end of function
                                        ; XREF: 0x001EAE66 (cond_jump), 0x001EAE72 (cond_jump)
  0x001EAF12  ff7510                  push     dword ptr [ebp + 0x10]         
  0x001EAF15  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EAF18  6800030080              push     0x80000300                     
  0x001EAF1D  e842dfffff              call     0x1e8e64                       ; -> sub_001E8E64
                                        ; XREF: 0x001EAF10 (jump)
  0x001EAF22  5f                      pop      edi                            
  0x001EAF23  5e                      pop      esi                            
  0x001EAF24  5b                      pop      ebx                            
  0x001EAF25  c9                      leave                                   
  0x001EAF26  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001EAF29
; Start: 0x001EAF29  End: 0x001EAF5B  Size: 50 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E990E, sub_001E9CB5
; Called by: sub_001EB0A2, sub_001EB38D
; ============================================================
sub_001EAF29:
  0x001EAF29  56                      push     esi                            
  0x001EAF2A  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001EAF2E  8bce                    mov      ecx, esi                       
  0x001EAF30  e8d9e9ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAF35  8b503c                  mov      edx, dword ptr [eax + 0x3c]    
  0x001EAF38  8d4808                  lea      ecx, [eax + 8]                 
  0x001EAF3B  c6011c                  mov      byte ptr [ecx], 0x1c           
  0x001EAF3E  51                      push     ecx                            
  0x001EAF3F  8bce                    mov      ecx, esi                       
  0x001EAF41  c6400943                mov      byte ptr [eax + 9], 0x43       
  0x001EAF45  c7401020ae1e00          mov      dword ptr [eax + 0x10], 0x1eae20 
  0x001EAF4C  897014                  mov      dword ptr [eax + 0x14], esi    
  0x001EAF4F  895018                  mov      dword ptr [eax + 0x18], edx    
  0x001EAF52  e85eedffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EAF57  5e                      pop      esi                            
  0x001EAF58  c20400                  ret      4                              
; end of function
  0x001EAF5B  53                      push     ebx                            
  0x001EAF5C  8b5c240c                mov      ebx, dword ptr [esp + 0xc]     
  0x001EAF60  57                      push     edi                            
  0x001EAF61  8bcb                    mov      ecx, ebx                       
  0x001EAF63  e8a6e9ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAF68  8bf8                    mov      edi, eax                       
  0x001EAF6A  8a07                    mov      al, byte ptr [edi]             
  0x001EAF6C  a802                    test     al, 2                          
  0x001EAF6E  7408                    je       0x1eaf78                       
  0x001EAF70  53                      push     ebx                            
  0x001EAF71  e8b3ffffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EAF76  eb6f                    jmp      0x1eafe7                       
                                        ; XREF: 0x001EAF6E (cond_jump)
  0x001EAF78  56                      push     esi                            
  0x001EAF79  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001EAF7D  837e0400                cmp      dword ptr [esi + 4], 0         
  0x001EAF81  8bcb                    mov      ecx, ebx                       
  0x001EAF83  7d0b                    jge      0x1eaf90                       
  0x001EAF85  0c08                    or       al, 8                          
  0x001EAF87  8807                    mov      byte ptr [edi], al             
  0x001EAF89  e8bbe0ffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EAF8E  eb56                    jmp      0x1eafe6                       
                                        ; XREF: 0x001EAF83 (cond_jump)
  0x001EAF90  83660800                and      dword ptr [esi + 8], 0         
  0x001EAF94  c60618                  mov      byte ptr [esi], 0x18           
  0x001EAF97  c6460105                mov      byte ptr [esi + 1], 5          
  0x001EAF9B  8b473c                  mov      eax, dword ptr [edi + 0x3c]    
  0x001EAF9E  56                      push     esi                            
  0x001EAF9F  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001EAFA2  c7461404000000          mov      dword ptr [esi + 0x14], 4      
  0x001EAFA9  e807edffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EAFAE  c60628                  mov      byte ptr [esi], 0x28           
  0x001EAFB1  c6460141                mov      byte ptr [esi + 1], 0x41       
  0x001EAFB5  c74608f2b01e00          mov      dword ptr [esi + 8], 0x1eb0f2  
  0x001EAFBC  895e0c                  mov      dword ptr [esi + 0xc], ebx     
  0x001EAFBF  8b473c                  mov      eax, dword ptr [edi + 0x3c]    
  0x001EAFC2  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001EAFC5  8d4738                  lea      eax, [edi + 0x38]              
  0x001EAFC8  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001EAFCB  0fb64707                movzx    eax, byte ptr [edi + 7]        
  0x001EAFCF  80661e00                and      byte ptr [esi + 0x1e], 0       
  0x001EAFD3  56                      push     esi                            
  0x001EAFD4  8bcb                    mov      ecx, ebx                       
  0x001EAFD6  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001EAFD9  c6461c02                mov      byte ptr [esi + 0x1c], 2       
  0x001EAFDD  c6461d01                mov      byte ptr [esi + 0x1d], 1       
  0x001EAFE1  e8cfecffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EAF8E (jump)
  0x001EAFE6  5e                      pop      esi                            
                                        ; XREF: 0x001EAF76 (jump)
  0x001EAFE7  5f                      pop      edi                            
  0x001EAFE8  5b                      pop      ebx                            
  0x001EAFE9  c20800                  ret      8                              
  0x001EAFEC  56                      push     esi                            
  0x001EAFED  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EAFF1  8bce                    mov      ecx, esi                       
  0x001EAFF3  e816e9ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EAFF8  8a08                    mov      cl, byte ptr [eax]             
  0x001EAFFA  f6c102                  test     cl, 2                          
  0x001EAFFD  7408                    je       0x1eb007                       
  0x001EAFFF  56                      push     esi                            
  0x001EB000  e824ffffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB005  eb3c                    jmp      0x1eb043                       
                                        ; XREF: 0x001EAFFD (cond_jump)
  0x001EB007  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001EB00B  837a0400                cmp      dword ptr [edx + 4], 0         
  0x001EB00F  7c0c                    jl       0x1eb01d                       
  0x001EB011  80600600                and      byte ptr [eax + 6], 0          
  0x001EB015  56                      push     esi                            
  0x001EB016  e8b7fcffff              call     0x1eacd2                       ; -> sub_001EACD2
  0x001EB01B  eb26                    jmp      0x1eb043                       
                                        ; XREF: 0x001EB00F (cond_jump)
  0x001EB01D  fe4006                  inc      byte ptr [eax + 6]             
  0x001EB020  80780603                cmp      byte ptr [eax + 6], 3          
  0x001EB024  760e                    jbe      0x1eb034                       
  0x001EB026  80c908                  or       cl, 8                          
  0x001EB029  8808                    mov      byte ptr [eax], cl             
  0x001EB02B  8bce                    mov      ecx, esi                       
  0x001EB02D  e817e0ffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EB032  eb0f                    jmp      0x1eb043                       
                                        ; XREF: 0x001EB024 (cond_jump)
  0x001EB034  52                      push     edx                            
  0x001EB035  8bce                    mov      ecx, esi                       
  0x001EB037  c7421404000000          mov      dword ptr [edx + 0x14], 4      
  0x001EB03E  e872ecffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EB005 (jump), 0x001EB01B (jump), 0x001EB032 (jump)
  0x001EB043  5e                      pop      esi                            
  0x001EB044  c20800                  ret      8                              
  0x001EB047  56                      push     esi                            
  0x001EB048  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EB04C  8bce                    mov      ecx, esi                       
  0x001EB04E  e8bbe8ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB053  8a08                    mov      cl, byte ptr [eax]             
  0x001EB055  f6c102                  test     cl, 2                          
  0x001EB058  7408                    je       0x1eb062                       
  0x001EB05A  56                      push     esi                            
  0x001EB05B  e8c9feffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB060  eb3c                    jmp      0x1eb09e                       
                                        ; XREF: 0x001EB058 (cond_jump)
  0x001EB062  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001EB066  837a0400                cmp      dword ptr [edx + 4], 0         
  0x001EB06A  7d28                    jge      0x1eb094                       
  0x001EB06C  fe4006                  inc      byte ptr [eax + 6]             
  0x001EB06F  80780603                cmp      byte ptr [eax + 6], 3          
  0x001EB073  760e                    jbe      0x1eb083                       
  0x001EB075  80c908                  or       cl, 8                          
  0x001EB078  8808                    mov      byte ptr [eax], cl             
  0x001EB07A  8bce                    mov      ecx, esi                       
  0x001EB07C  e8c8dfffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EB081  eb1b                    jmp      0x1eb09e                       
                                        ; XREF: 0x001EB073 (cond_jump)
  0x001EB083  52                      push     edx                            
  0x001EB084  8bce                    mov      ecx, esi                       
  0x001EB086  c7421404000000          mov      dword ptr [edx + 0x14], 4      
  0x001EB08D  e823ecffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB092  eb0a                    jmp      0x1eb09e                       
                                        ; XREF: 0x001EB06A (cond_jump)
  0x001EB094  80600600                and      byte ptr [eax + 6], 0          
  0x001EB098  56                      push     esi                            
  0x001EB099  e826020000              call     0x1eb2c4                       ; -> sub_001EB2C4
                                        ; XREF: 0x001EB060 (jump), 0x001EB081 (jump), 0x001EB092 (jump)
  0x001EB09E  5e                      pop      esi                            
  0x001EB09F  c20800                  ret      8                              

; ============================================================
; Function: sub_001EB0A2
; Start: 0x001EB0A2  End: 0x001EB0F2  Size: 80 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E8FD2, sub_001E990E, sub_001EAF29
; ============================================================
sub_001EB0A2:
  0x001EB0A2  55                      push     ebp                            
  0x001EB0A3  8bec                    mov      ebp, esp                       
  0x001EB0A5  51                      push     ecx                            
  0x001EB0A6  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EB0A9  53                      push     ebx                            
  0x001EB0AA  56                      push     esi                            
  0x001EB0AB  e85ee8ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB0B0  8bf0                    mov      esi, eax                       
  0x001EB0B2  800e02                  or       byte ptr [esi], 2              
  0x001EB0B5  33db                    xor      ebx, ebx                       
  0x001EB0B7  43                      inc      ebx                            
  0x001EB0B8  885dfc                  mov      byte ptr [ebp - 4], bl         
                                        ; XREF: 0x001EB0DD (cond_jump)
  0x001EB0BB  845e05                  test     byte ptr [esi + 5], bl         
  0x001EB0BE  7412                    je       0x1eb0d2                       
  0x001EB0C0  ff75fc                  push     dword ptr [ebp - 4]            
  0x001EB0C3  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001EB0C6  e807dfffff              call     0x1e8fd2                       ; -> sub_001E8FD2
  0x001EB0CB  8ac3                    mov      al, bl                         
  0x001EB0CD  f6d0                    not      al                             
  0x001EB0CF  204605                  and      byte ptr [esi + 5], al         
                                        ; XREF: 0x001EB0BE (cond_jump)
  0x001EB0D2  d1e3                    shl      ebx, 1                         
  0x001EB0D4  fe45fc                  inc      byte ptr [ebp - 4]             
  0x001EB0D7  8a45fc                  mov      al, byte ptr [ebp - 4]         
  0x001EB0DA  3a4602                  cmp      al, byte ptr [esi + 2]         
  0x001EB0DD  76dc                    jbe      0x1eb0bb                       
  0x001EB0DF  f60608                  test     byte ptr [esi], 8              
  0x001EB0E2  5e                      pop      esi                            
  0x001EB0E3  5b                      pop      ebx                            
  0x001EB0E4  7408                    je       0x1eb0ee                       
  0x001EB0E6  ff7508                  push     dword ptr [ebp + 8]            
  0x001EB0E9  e83bfeffff              call     0x1eaf29                       ; -> sub_001EAF29
                                        ; XREF: 0x001EB0E4 (cond_jump)
  0x001EB0EE  c9                      leave                                   
  0x001EB0EF  c20400                  ret      4                              
; end of function
  0x001EB0F2  53                      push     ebx                            
  0x001EB0F3  56                      push     esi                            
  0x001EB0F4  8b742410                mov      esi, dword ptr [esp + 0x10]    
  0x001EB0F8  8bce                    mov      ecx, esi                       
  0x001EB0FA  e80fe8ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB0FF  8a18                    mov      bl, byte ptr [eax]             
  0x001EB101  f6c302                  test     bl, 2                          
  0x001EB104  740b                    je       0x1eb111                       
  0x001EB106  56                      push     esi                            
  0x001EB107  e81dfeffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB10C  e983000000              jmp      0x1eb194                       
                                        ; XREF: 0x001EB104 (cond_jump)
  0x001EB111  8b4c240c                mov      ecx, dword ptr [esp + 0xc]     
  0x001EB115  33d2                    xor      edx, edx                       
  0x001EB117  395104                  cmp      dword ptr [ecx + 4], edx       
  0x001EB11A  7c1d                    jl       0x1eb139                       
  0x001EB11C  33c9                    xor      ecx, ecx                       
  0x001EB11E  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001EB121  885006                  mov      byte ptr [eax + 6], dl         
  0x001EB124  b201                    mov      dl, 1                          
  0x001EB126  56                      push     esi                            
  0x001EB127  41                      inc      ecx                            
  0x001EB128  d2e2                    shl      dl, cl                         
  0x001EB12A  feca                    dec      dl                             
  0x001EB12C  225038                  and      dl, byte ptr [eax + 0x38]      
  0x001EB12F  885004                  mov      byte ptr [eax + 4], dl         
  0x001EB132  e88d010000              call     0x1eb2c4                       ; -> sub_001EB2C4
  0x001EB137  eb5b                    jmp      0x1eb194                       
                                        ; XREF: 0x001EB11A (cond_jump)
  0x001EB139  fe4006                  inc      byte ptr [eax + 6]             
  0x001EB13C  80780603                cmp      byte ptr [eax + 6], 3          
  0x001EB140  760e                    jbe      0x1eb150                       
  0x001EB142  80cb08                  or       bl, 8                          
  0x001EB145  8bce                    mov      ecx, esi                       
  0x001EB147  8818                    mov      byte ptr [eax], bl             
  0x001EB149  e8fbdeffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EB14E  eb44                    jmp      0x1eb194                       
                                        ; XREF: 0x001EB140 (cond_jump)
  0x001EB150  c60130                  mov      byte ptr [ecx], 0x30           
  0x001EB153  c6410140                mov      byte ptr [ecx + 1], 0x40       
  0x001EB157  c741085baf1e00          mov      dword ptr [ecx + 8], 0x1eaf5b  
  0x001EB15E  89710c                  mov      dword ptr [ecx + 0xc], esi     
  0x001EB161  895110                  mov      dword ptr [ecx + 0x10], edx    
  0x001EB164  895118                  mov      dword ptr [ecx + 0x18], edx    
  0x001EB167  895114                  mov      dword ptr [ecx + 0x14], edx    
  0x001EB16A  88511c                  mov      byte ptr [ecx + 0x1c], dl      
  0x001EB16D  88511d                  mov      byte ptr [ecx + 0x1d], dl      
  0x001EB170  88511e                  mov      byte ptr [ecx + 0x1e], dl      
  0x001EB173  c6412802                mov      byte ptr [ecx + 0x28], 2       
  0x001EB177  c6412901                mov      byte ptr [ecx + 0x29], 1       
  0x001EB17B  6689512a                mov      word ptr [ecx + 0x2a], dx      
  0x001EB17F  660fb64001              movzx    ax, byte ptr [eax + 1]         
  0x001EB184  6689412c                mov      word ptr [ecx + 0x2c], ax      
  0x001EB188  6689512e                mov      word ptr [ecx + 0x2e], dx      
  0x001EB18C  51                      push     ecx                            
  0x001EB18D  8bce                    mov      ecx, esi                       
  0x001EB18F  e821ebffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EB10C (jump), 0x001EB137 (jump), 0x001EB14E (jump)
  0x001EB194  5e                      pop      esi                            
  0x001EB195  5b                      pop      ebx                            
  0x001EB196  c20800                  ret      8                              
  0x001EB199  57                      push     edi                            
  0x001EB19A  8b7c240c                mov      edi, dword ptr [esp + 0xc]     
  0x001EB19E  8bcf                    mov      ecx, edi                       
  0x001EB1A0  e869e7ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB1A5  8a08                    mov      cl, byte ptr [eax]             
  0x001EB1A7  f6c102                  test     cl, 2                          
  0x001EB1AA  740b                    je       0x1eb1b7                       
  0x001EB1AC  57                      push     edi                            
  0x001EB1AD  e877fdffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB1B2  e99e000000              jmp      0x1eb255                       
                                        ; XREF: 0x001EB1AA (cond_jump)
  0x001EB1B7  56                      push     esi                            
  0x001EB1B8  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EB1BC  33d2                    xor      edx, edx                       
  0x001EB1BE  395604                  cmp      dword ptr [esi + 4], edx       
  0x001EB1C1  7d28                    jge      0x1eb1eb                       
  0x001EB1C3  fe4006                  inc      byte ptr [eax + 6]             
  0x001EB1C6  80780603                cmp      byte ptr [eax + 6], 3          
  0x001EB1CA  760e                    jbe      0x1eb1da                       
  0x001EB1CC  80c908                  or       cl, 8                          
  0x001EB1CF  8808                    mov      byte ptr [eax], cl             
  0x001EB1D1  8bcf                    mov      ecx, edi                       
  0x001EB1D3  e871deffff              call     0x1e9049                       ; -> sub_001E9049
  0x001EB1D8  eb7a                    jmp      0x1eb254                       
                                        ; XREF: 0x001EB1CA (cond_jump)
  0x001EB1DA  c7461404000000          mov      dword ptr [esi + 0x14], 4      
  0x001EB1E1  56                      push     esi                            
                                        ; XREF: 0x001EB24C (jump)
  0x001EB1E2  8bcf                    mov      ecx, edi                       
  0x001EB1E4  e8cceaffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB1E9  eb69                    jmp      0x1eb254                       
                                        ; XREF: 0x001EB1C1 (cond_jump)
  0x001EB1EB  668b483a                mov      cx, word ptr [eax + 0x3a]      
  0x001EB1EF  f6c101                  test     cl, 1                          
  0x001EB1F2  885006                  mov      byte ptr [eax + 6], dl         
  0x001EB1F5  7409                    je       0x1eb200                       
  0x001EB1F7  33f6                    xor      esi, esi                       
  0x001EB1F9  6681e1feff              and      cx, 0xfffe                     
  0x001EB1FE  eb0d                    jmp      0x1eb20d                       
                                        ; XREF: 0x001EB1F5 (cond_jump)
  0x001EB200  f6c102                  test     cl, 2                          
  0x001EB203  7449                    je       0x1eb24e                       
  0x001EB205  33f6                    xor      esi, esi                       
  0x001EB207  46                      inc      esi                            
  0x001EB208  6681e1fdff              and      cx, 0xfffd                     
                                        ; XREF: 0x001EB1FE (jump)
  0x001EB20D  6689483a                mov      word ptr [eax + 0x3a], cx      
  0x001EB211  8d4808                  lea      ecx, [eax + 8]                 
  0x001EB214  c60130                  mov      byte ptr [ecx], 0x30           
  0x001EB217  c6400940                mov      byte ptr [eax + 9], 0x40       
  0x001EB21B  c7401047b01e00          mov      dword ptr [eax + 0x10], 0x1eb047 
  0x001EB222  897814                  mov      dword ptr [eax + 0x14], edi    
  0x001EB225  895018                  mov      dword ptr [eax + 0x18], edx    
  0x001EB228  895020                  mov      dword ptr [eax + 0x20], edx    
  0x001EB22B  89501c                  mov      dword ptr [eax + 0x1c], edx    
  0x001EB22E  885024                  mov      byte ptr [eax + 0x24], dl      
  0x001EB231  885025                  mov      byte ptr [eax + 0x25], dl      
  0x001EB234  885026                  mov      byte ptr [eax + 0x26], dl      
  0x001EB237  c6403020                mov      byte ptr [eax + 0x30], 0x20    
  0x001EB23B  c6403101                mov      byte ptr [eax + 0x31], 1       
  0x001EB23F  66897032                mov      word ptr [eax + 0x32], si      
  0x001EB243  66895034                mov      word ptr [eax + 0x34], dx      
  0x001EB247  66895036                mov      word ptr [eax + 0x36], dx      
  0x001EB24B  51                      push     ecx                            
  0x001EB24C  eb94                    jmp      0x1eb1e2                       
                                        ; XREF: 0x001EB203 (cond_jump)
  0x001EB24E  57                      push     edi                            
  0x001EB24F  e870000000              call     0x1eb2c4                       ; -> sub_001EB2C4
                                        ; XREF: 0x001EB1D8 (jump), 0x001EB1E9 (jump)
  0x001EB254  5e                      pop      esi                            
                                        ; XREF: 0x001EB1B2 (jump)
  0x001EB255  5f                      pop      edi                            
  0x001EB256  c20800                  ret      8                              
  0x001EB259  56                      push     esi                            
  0x001EB25A  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EB25E  8bce                    mov      ecx, esi                       
  0x001EB260  e8a9e6ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB265  8a4803                  mov      cl, byte ptr [eax + 3]         
  0x001EB268  3a4802                  cmp      cl, byte ptr [eax + 2]         
  0x001EB26B  7537                    jne      0x1eb2a4                       
  0x001EB26D  8b483c                  mov      ecx, dword ptr [eax + 0x3c]    
  0x001EB270  80600300                and      byte ptr [eax + 3], 0          
  0x001EB274  80602600                and      byte ptr [eax + 0x26], 0       
  0x001EB278  894818                  mov      dword ptr [eax + 0x18], ecx    
  0x001EB27B  8d4838                  lea      ecx, [eax + 0x38]              
  0x001EB27E  894820                  mov      dword ptr [eax + 0x20], ecx    
  0x001EB281  0fb64807                movzx    ecx, byte ptr [eax + 7]        
  0x001EB285  c6400828                mov      byte ptr [eax + 8], 0x28       
  0x001EB289  c6400941                mov      byte ptr [eax + 9], 0x41       
  0x001EB28D  c74010f2b01e00          mov      dword ptr [eax + 0x10], 0x1eb0f2 
  0x001EB294  897014                  mov      dword ptr [eax + 0x14], esi    
  0x001EB297  89481c                  mov      dword ptr [eax + 0x1c], ecx    
  0x001EB29A  c6402402                mov      byte ptr [eax + 0x24], 2       
  0x001EB29E  c6402501                mov      byte ptr [eax + 0x25], 1       
  0x001EB2A2  eb11                    jmp      0x1eb2b5                       
                                        ; XREF: 0x001EB26B (cond_jump)
  0x001EB2A4  8b542408                mov      edx, dword ptr [esp + 8]       
  0x001EB2A8  fec1                    inc      cl                             
  0x001EB2AA  884803                  mov      byte ptr [eax + 3], cl         
  0x001EB2AD  660fb6c9                movzx    cx, cl                         
  0x001EB2B1  66894a2c                mov      word ptr [edx + 0x2c], cx      
                                        ; XREF: 0x001EB2A2 (jump)
  0x001EB2B5  83c008                  add      eax, 8                         
  0x001EB2B8  50                      push     eax                            
  0x001EB2B9  8bce                    mov      ecx, esi                       
  0x001EB2BB  e8f5e9ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB2C0  5e                      pop      esi                            
  0x001EB2C1  c20800                  ret      8                              

; ============================================================
; Function: sub_001EB2C4
; Start: 0x001EB2C4  End: 0x001EB2F5  Size: 49 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E990E
; ============================================================
sub_001EB2C4:
  0x001EB2C4  55                      push     ebp                            
  0x001EB2C5  8bec                    mov      ebp, esp                       
  0x001EB2C7  53                      push     ebx                            
  0x001EB2C8  56                      push     esi                            
  0x001EB2C9  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001EB2CC  57                      push     edi                            
  0x001EB2CD  8bce                    mov      ecx, esi                       
  0x001EB2CF  e83ae6ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB2D4  8a5804                  mov      bl, byte ptr [eax + 4]         
  0x001EB2D7  33d2                    xor      edx, edx                       
  0x001EB2D9  b101                    mov      cl, 1                          
  0x001EB2DB  885003                  mov      byte ptr [eax + 3], dl         
  0x001EB2DE  885d0b                  mov      byte ptr [ebp + 0xb], bl       
                                        ; XREF: 0x001EB2F1 (cond_jump)
  0x001EB2E1  844d0b                  test     byte ptr [ebp + 0xb], cl       
  0x001EB2E4  750f                    jne      0x1eb2f5                       
  0x001EB2E6  fe4003                  inc      byte ptr [eax + 3]             
  0x001EB2E9  8a5803                  mov      bl, byte ptr [eax + 3]         
  0x001EB2EC  d0e1                    shl      cl, 1                          
  0x001EB2EE  3a5802                  cmp      bl, byte ptr [eax + 2]         
  0x001EB2F1  76ee                    jbe      0x1eb2e1                       
  0x001EB2F3  eb08                    jmp      0x1eb2fd                       
; end of function
                                        ; XREF: 0x001EB2E4 (cond_jump)
  0x001EB2F5  f6d1                    not      cl                             
  0x001EB2F7  224804                  and      cl, byte ptr [eax + 4]         
  0x001EB2FA  884804                  mov      byte ptr [eax + 4], cl         
                                        ; XREF: 0x001EB2F3 (jump)
  0x001EB2FD  8a5803                  mov      bl, byte ptr [eax + 3]         
  0x001EB300  3a5802                  cmp      bl, byte ptr [eax + 2]         
  0x001EB303  885026                  mov      byte ptr [eax + 0x26], dl      
  0x001EB306  8d4808                  lea      ecx, [eax + 8]                 
  0x001EB309  7624                    jbe      0x1eb32f                       
  0x001EB30B  8b783c                  mov      edi, dword ptr [eax + 0x3c]    
  0x001EB30E  897818                  mov      dword ptr [eax + 0x18], edi    
  0x001EB311  8d7838                  lea      edi, [eax + 0x38]              
  0x001EB314  897820                  mov      dword ptr [eax + 0x20], edi    
  0x001EB317  0fb67807                movzx    edi, byte ptr [eax + 7]        
  0x001EB31B  c60128                  mov      byte ptr [ecx], 0x28           
  0x001EB31E  c6400941                mov      byte ptr [eax + 9], 0x41       
  0x001EB322  c74010f2b01e00          mov      dword ptr [eax + 0x10], 0x1eb0f2 
  0x001EB329  c6402501                mov      byte ptr [eax + 0x25], 1       
  0x001EB32D  eb45                    jmp      0x1eb374                       
                                        ; XREF: 0x001EB309 (cond_jump)
  0x001EB32F  3ada                    cmp      bl, dl                         
  0x001EB331  8d7838                  lea      edi, [eax + 0x38]              
  0x001EB334  6a04                    push     4                              
  0x001EB336  897820                  mov      dword ptr [eax + 0x20], edi    
  0x001EB339  5f                      pop      edi                            
  0x001EB33A  66895032                mov      word ptr [eax + 0x32], dx      
  0x001EB33E  885031                  mov      byte ptr [eax + 0x31], dl      
  0x001EB341  885025                  mov      byte ptr [eax + 0x25], dl      
  0x001EB344  895018                  mov      dword ptr [eax + 0x18], edx    
  0x001EB347  c6400940                mov      byte ptr [eax + 9], 0x40       
  0x001EB34B  c60130                  mov      byte ptr [ecx], 0x30           
  0x001EB34E  66897836                mov      word ptr [eax + 0x36], di      
  0x001EB352  750d                    jne      0x1eb361                       
  0x001EB354  c7401099b11e00          mov      dword ptr [eax + 0x10], 0x1eb199 
  0x001EB35B  c64030a0                mov      byte ptr [eax + 0x30], 0xa0    
  0x001EB35F  eb0f                    jmp      0x1eb370                       
                                        ; XREF: 0x001EB352 (cond_jump)
  0x001EB361  c74010ecaf1e00          mov      dword ptr [eax + 0x10], 0x1eafec 
  0x001EB368  c64030a3                mov      byte ptr [eax + 0x30], 0xa3    
  0x001EB36C  660fb6d3                movzx    dx, bl                         
                                        ; XREF: 0x001EB35F (jump)
  0x001EB370  66895034                mov      word ptr [eax + 0x34], dx      
                                        ; XREF: 0x001EB32D (jump)
  0x001EB374  51                      push     ecx                            
  0x001EB375  8bce                    mov      ecx, esi                       
  0x001EB377  897014                  mov      dword ptr [eax + 0x14], esi    
  0x001EB37A  89781c                  mov      dword ptr [eax + 0x1c], edi    
  0x001EB37D  c6402402                mov      byte ptr [eax + 0x24], 2       
  0x001EB381  e82fe9ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB386  5f                      pop      edi                            
  0x001EB387  5e                      pop      esi                            
  0x001EB388  5b                      pop      ebx                            
  0x001EB389  5d                      pop      ebp                            
  0x001EB38A  c20400                  ret      4                              

; ============================================================
; Function: sub_001EB38D
; Start: 0x001EB38D  End: 0x001EB3A6  Size: 25 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E990E, sub_001EAF29
; ============================================================
sub_001EB38D:
  0x001EB38D  56                      push     esi                            
  0x001EB38E  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EB392  8bce                    mov      ecx, esi                       
  0x001EB394  e875e5ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB399  f60002                  test     byte ptr [eax], 2              
  0x001EB39C  56                      push     esi                            
  0x001EB39D  7407                    je       0x1eb3a6                       
  0x001EB39F  e885fbffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB3A4  eb13                    jmp      0x1eb3b9                       
; end of function
                                        ; XREF: 0x001EB39D (cond_jump)
  0x001EB3A6  6683783a00              cmp      word ptr [eax + 0x3a], 0       
  0x001EB3AB  7407                    je       0x1eb3b4                       
  0x001EB3AD  e820f9ffff              call     0x1eacd2                       ; -> sub_001EACD2
  0x001EB3B2  eb05                    jmp      0x1eb3b9                       
                                        ; XREF: 0x001EB3AB (cond_jump)
  0x001EB3B4  e80bffffff              call     0x1eb2c4                       ; -> sub_001EB2C4
                                        ; XREF: 0x001EB3A4 (jump), 0x001EB3B2 (jump)
  0x001EB3B9  5e                      pop      esi                            
  0x001EB3BA  c20800                  ret      8                              
  0x001EB3BD  53                      push     ebx                            
  0x001EB3BE  56                      push     esi                            
  0x001EB3BF  57                      push     edi                            
  0x001EB3C0  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001EB3C4  8bcf                    mov      ecx, edi                       
  0x001EB3C6  e843e5ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB3CB  8bf0                    mov      esi, eax                       
  0x001EB3CD  80663afe                and      byte ptr [esi + 0x3a], 0xfe    
  0x001EB3D1  33c0                    xor      eax, eax                       
  0x001EB3D3  8a4603                  mov      al, byte ptr [esi + 3]         
  0x001EB3D6  33c9                    xor      ecx, ecx                       
  0x001EB3D8  8ac8                    mov      cl, al                         
  0x001EB3DA  b301                    mov      bl, 1                          
  0x001EB3DC  6a05                    push     5                              
  0x001EB3DE  50                      push     eax                            
  0x001EB3DF  49                      dec      ecx                            
  0x001EB3E0  d2e3                    shl      bl, cl                         
  0x001EB3E2  8bcf                    mov      ecx, edi                       
  0x001EB3E4  e83ad8ffff              call     0x1e8c23                       ; -> sub_001E8C23
  0x001EB3E9  660fb65603              movzx    dx, byte ptr [esi + 3]         
  0x001EB3EE  085e05                  or       byte ptr [esi + 5], bl         
  0x001EB3F1  33c9                    xor      ecx, ecx                       
  0x001EB3F3  8d4608                  lea      eax, [esi + 8]                 
  0x001EB3F6  894e18                  mov      dword ptr [esi + 0x18], ecx    
  0x001EB3F9  894e20                  mov      dword ptr [esi + 0x20], ecx    
  0x001EB3FC  894e1c                  mov      dword ptr [esi + 0x1c], ecx    
  0x001EB3FF  884e24                  mov      byte ptr [esi + 0x24], cl      
  0x001EB402  884e25                  mov      byte ptr [esi + 0x25], cl      
  0x001EB405  884e26                  mov      byte ptr [esi + 0x26], cl      
  0x001EB408  66894e36                mov      word ptr [esi + 0x36], cx      
  0x001EB40C  50                      push     eax                            
  0x001EB40D  8bcf                    mov      ecx, edi                       
  0x001EB40F  c60030                  mov      byte ptr [eax], 0x30           
  0x001EB412  c6460940                mov      byte ptr [esi + 9], 0x40       
  0x001EB416  c746108db31e00          mov      dword ptr [esi + 0x10], 0x1eb38d 
  0x001EB41D  897e14                  mov      dword ptr [esi + 0x14], edi    
  0x001EB420  c6463023                mov      byte ptr [esi + 0x30], 0x23    
  0x001EB424  c6463101                mov      byte ptr [esi + 0x31], 1       
  0x001EB428  66c746321000            mov      word ptr [esi + 0x32], 0x10    
  0x001EB42E  66895634                mov      word ptr [esi + 0x34], dx      
  0x001EB432  e87ee8ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB437  5f                      pop      edi                            
  0x001EB438  5e                      pop      esi                            
  0x001EB439  5b                      pop      ebx                            
  0x001EB43A  c20800                  ret      8                              
  0x001EB43D  53                      push     ebx                            
  0x001EB43E  56                      push     esi                            
  0x001EB43F  57                      push     edi                            
  0x001EB440  8b7c2414                mov      edi, dword ptr [esp + 0x14]    
  0x001EB444  8bcf                    mov      ecx, edi                       
  0x001EB446  e8c3e4ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB44B  68202ab200              push     0xb22a20                       
  0x001EB450  8bf0                    mov      esi, eax                       
  0x001EB452  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EB458  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001EB45C  33db                    xor      ebx, ebx                       
  0x001EB45E  395804                  cmp      dword ptr [eax + 4], ebx       
  0x001EB461  7d08                    jge      0x1eb46b                       
  0x001EB463  57                      push     edi                            
  0x001EB464  e8c0faffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB469  eb62                    jmp      0x1eb4cd                       
                                        ; XREF: 0x001EB461 (cond_jump)
  0x001EB46B  a0ba29b200              mov      al, byte ptr [0xb229ba]        
  0x001EB470  3c07                    cmp      al, 7                          
  0x001EB472  884602                  mov      byte ptr [esi + 2], al         
  0x001EB475  7604                    jbe      0x1eb47b                       
  0x001EB477  c6460207                mov      byte ptr [esi + 2], 7          
                                        ; XREF: 0x001EB475 (cond_jump)
  0x001EB47B  53                      push     ebx                            
  0x001EB47C  8bcf                    mov      ecx, edi                       
  0x001EB47E  e8a4ddffff              call     0x1e9227                       ; -> sub_001E9227
  0x001EB483  8d4608                  lea      eax, [esi + 8]                 
  0x001EB486  50                      push     eax                            
  0x001EB487  8bcf                    mov      ecx, edi                       
  0x001EB489  c6460301                mov      byte ptr [esi + 3], 1          
  0x001EB48D  c60030                  mov      byte ptr [eax], 0x30           
  0x001EB490  c6460940                mov      byte ptr [esi + 9], 0x40       
  0x001EB494  c7461059b21e00          mov      dword ptr [esi + 0x10], 0x1eb259 
  0x001EB49B  897e14                  mov      dword ptr [esi + 0x14], edi    
  0x001EB49E  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001EB4A1  895e20                  mov      dword ptr [esi + 0x20], ebx    
  0x001EB4A4  895e1c                  mov      dword ptr [esi + 0x1c], ebx    
  0x001EB4A7  885e24                  mov      byte ptr [esi + 0x24], bl      
  0x001EB4AA  885e25                  mov      byte ptr [esi + 0x25], bl      
  0x001EB4AD  885e26                  mov      byte ptr [esi + 0x26], bl      
  0x001EB4B0  c6463023                mov      byte ptr [esi + 0x30], 0x23    
  0x001EB4B4  c6463103                mov      byte ptr [esi + 0x31], 3       
  0x001EB4B8  66c746320800            mov      word ptr [esi + 0x32], 8       
  0x001EB4BE  66c746340100            mov      word ptr [esi + 0x34], 1       
  0x001EB4C4  66895e36                mov      word ptr [esi + 0x36], bx      
  0x001EB4C8  e8e8e7ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EB469 (jump)
  0x001EB4CD  5f                      pop      edi                            
  0x001EB4CE  5e                      pop      esi                            
  0x001EB4CF  5b                      pop      ebx                            
  0x001EB4D0  c20800                  ret      8                              
  0x001EB4D3  56                      push     esi                            
  0x001EB4D4  68202ab200              push     0xb22a20                       
  0x001EB4D9  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EB4DF  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001EB4E3  33c0                    xor      eax, eax                       
  0x001EB4E5  394604                  cmp      dword ptr [esi + 4], eax       
  0x001EB4E8  7d0b                    jge      0x1eb4f5                       
  0x001EB4EA  ff74240c                push     dword ptr [esp + 0xc]          
  0x001EB4EE  e836faffff              call     0x1eaf29                       ; -> sub_001EAF29
  0x001EB4F3  eb56                    jmp      0x1eb54b                       
                                        ; XREF: 0x001EB4E8 (cond_jump)
  0x001EB4F5  57                      push     edi                            
  0x001EB4F6  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001EB4FA  6a08                    push     8                              
  0x001EB4FC  59                      pop      ecx                            
  0x001EB4FD  50                      push     eax                            
  0x001EB4FE  c60630                  mov      byte ptr [esi], 0x30           
  0x001EB501  c6460140                mov      byte ptr [esi + 1], 0x40       
  0x001EB505  c746083db41e00          mov      dword ptr [esi + 8], 0x1eb43d  
  0x001EB50C  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001EB50F  894610                  mov      dword ptr [esi + 0x10], eax    
  0x001EB512  c74618b829b200          mov      dword ptr [esi + 0x18], 0xb229b8 
  0x001EB519  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001EB51C  c6461c02                mov      byte ptr [esi + 0x1c], 2       
  0x001EB520  c6461d01                mov      byte ptr [esi + 0x1d], 1       
  0x001EB524  88461e                  mov      byte ptr [esi + 0x1e], al      
  0x001EB527  c64628a0                mov      byte ptr [esi + 0x28], 0xa0    
  0x001EB52B  c6462906                mov      byte ptr [esi + 0x29], 6       
  0x001EB52F  66c7462a0029            mov      word ptr [esi + 0x2a], 0x2900  
  0x001EB535  6689462c                mov      word ptr [esi + 0x2c], ax      
  0x001EB539  66894e2e                mov      word ptr [esi + 0x2e], cx      
  0x001EB53D  e874f6ffff              call     0x1eabb6                       ; -> sub_001EABB6
  0x001EB542  56                      push     esi                            
  0x001EB543  8bcf                    mov      ecx, edi                       
  0x001EB545  e86be7ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB54A  5f                      pop      edi                            
                                        ; XREF: 0x001EB4F3 (jump)
  0x001EB54B  5e                      pop      esi                            
  0x001EB54C  c20800                  ret      8                              

; ============================================================
; Function: sub_001EB54F
; Start: 0x001EB54F  End: 0x001EB582  Size: 51 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E990E, sub_001EAE20
; ============================================================
sub_001EB54F:
  0x001EB54F  55                      push     ebp                            
  0x001EB550  8bec                    mov      ebp, esp                       
  0x001EB552  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001EB555  53                      push     ebx                            
  0x001EB556  56                      push     esi                            
  0x001EB557  57                      push     edi                            
  0x001EB558  e8b1e3ffff              call     0x1e990e                       ; -> sub_001E990E
  0x001EB55D  68202ab200              push     0xb22a20                       
  0x001EB562  8bf8                    mov      edi, eax                       
  0x001EB564  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EB56A  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001EB56D  33db                    xor      ebx, ebx                       
  0x001EB56F  395e04                  cmp      dword ptr [esi + 4], ebx       
  0x001EB572  7d0e                    jge      0x1eb582                       
                                        ; XREF: 0x001EB5E3 (cond_jump)
  0x001EB574  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001EB577  56                      push     esi                            
  0x001EB578  e8a3f8ffff              call     0x1eae20                       ; -> sub_001EAE20
  0x001EB57D  e9b2000000              jmp      0x1eb634                       
; end of function
                                        ; XREF: 0x001EB572 (cond_jump)
  0x001EB582  b8b829b200              mov      eax, 0xb229b8                  
  0x001EB587  33c9                    xor      ecx, ecx                       
                                        ; XREF: 0x001EB598 (cond_jump)
  0x001EB589  0fb600                  movzx    eax, byte ptr [eax]            
  0x001EB58C  03c8                    add      ecx, eax                       
  0x001EB58E  8d81b829b200            lea      eax, [ecx + 0xb229b8]          
  0x001EB594  80780105                cmp      byte ptr [eax + 1], 5          
  0x001EB598  75ef                    jne      0x1eb589                       
  0x001EB59A  6683780404              cmp      word ptr [eax + 4], 4          
  0x001EB59F  7708                    ja       0x1eb5a9                       
  0x001EB5A1  8a4804                  mov      cl, byte ptr [eax + 4]         
  0x001EB5A4  884f07                  mov      byte ptr [edi + 7], cl         
  0x001EB5A7  eb04                    jmp      0x1eb5ad                       
                                        ; XREF: 0x001EB59F (cond_jump)
  0x001EB5A9  c6470704                mov      byte ptr [edi + 7], 4          
                                        ; XREF: 0x001EB5A7 (jump)
  0x001EB5AD  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001EB5B0  884f01                  mov      byte ptr [edi + 1], cl         
  0x001EB5B3  c60620                  mov      byte ptr [esi], 0x20           
  0x001EB5B6  c6460102                mov      byte ptr [esi + 1], 2          
  0x001EB5BA  895e08                  mov      dword ptr [esi + 8], ebx       
  0x001EB5BD  8a4802                  mov      cl, byte ptr [eax + 2]         
  0x001EB5C0  884e15                  mov      byte ptr [esi + 0x15], cl      
  0x001EB5C3  8a4003                  mov      al, byte ptr [eax + 3]         
  0x001EB5C6  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001EB5C9  2403                    and      al, 3                          
  0x001EB5CB  884616                  mov      byte ptr [esi + 0x16], al      
  0x001EB5CE  c6461710                mov      byte ptr [esi + 0x17], 0x10    
  0x001EB5D2  660fb64707              movzx    ax, byte ptr [edi + 7]         
  0x001EB5D7  56                      push     esi                            
  0x001EB5D8  6689461c                mov      word ptr [esi + 0x1c], ax      
  0x001EB5DC  e8d4e6ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB5E1  85c0                    test     eax, eax                       
  0x001EB5E3  7c8f                    jl       0x1eb574                       
  0x001EB5E5  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001EB5E8  89473c                  mov      dword ptr [edi + 0x3c], eax    
  0x001EB5EB  8b7d0c                  mov      edi, dword ptr [ebp + 0xc]     
  0x001EB5EE  53                      push     ebx                            
  0x001EB5EF  c60630                  mov      byte ptr [esi], 0x30           
  0x001EB5F2  c6460140                mov      byte ptr [esi + 1], 0x40       
  0x001EB5F6  c74608d3b41e00          mov      dword ptr [esi + 8], 0x1eb4d3  
  0x001EB5FD  897e0c                  mov      dword ptr [esi + 0xc], edi     
  0x001EB600  895e10                  mov      dword ptr [esi + 0x10], ebx    
  0x001EB603  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001EB606  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001EB609  885e1c                  mov      byte ptr [esi + 0x1c], bl      
  0x001EB60C  885e1d                  mov      byte ptr [esi + 0x1d], bl      
  0x001EB60F  885e1e                  mov      byte ptr [esi + 0x1e], bl      
  0x001EB612  885e28                  mov      byte ptr [esi + 0x28], bl      
  0x001EB615  c6462909                mov      byte ptr [esi + 0x29], 9       
  0x001EB619  66c7462a0100            mov      word ptr [esi + 0x2a], 1       
  0x001EB61F  66895e2c                mov      word ptr [esi + 0x2c], bx      
  0x001EB623  66895e2e                mov      word ptr [esi + 0x2e], bx      
  0x001EB627  e88af5ffff              call     0x1eabb6                       ; -> sub_001EABB6
  0x001EB62C  56                      push     esi                            
  0x001EB62D  8bcf                    mov      ecx, edi                       
  0x001EB62F  e881e6ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
                                        ; XREF: 0x001EB57D (jump)
  0x001EB634  5f                      pop      edi                            
  0x001EB635  5e                      pop      esi                            
  0x001EB636  5b                      pop      ebx                            
  0x001EB637  5d                      pop      ebp                            
  0x001EB638  c20800                  ret      8                              
  0x001EB63B  66a16a2ab200            mov      ax, word ptr [0xb22a6a]        
  0x001EB641  53                      push     ebx                            
  0x001EB642  56                      push     esi                            
  0x001EB643  33db                    xor      ebx, ebx                       
  0x001EB645  33f6                    xor      esi, esi                       
  0x001EB647  663b05682ab200          cmp      ax, word ptr [0xb22a68]        
  0x001EB64E  0f83ba000000            jae      0x1eb70e                       
  0x001EB654  f6056c2ab20001          test     byte ptr [0xb22a6c], 1         
  0x001EB65B  b86c2ab200              mov      eax, 0xb22a6c                  
  0x001EB660  740b                    je       0x1eb66d                       
  0x001EB662  8bc8                    mov      ecx, eax                       
                                        ; XREF: 0x001EB66B (cond_jump)
  0x001EB664  83c140                  add      ecx, 0x40                      
  0x001EB667  46                      inc      esi                            
  0x001EB668  f60101                  test     byte ptr [ecx], 1              
  0x001EB66B  75f7                    jne      0x1eb664                       
                                        ; XREF: 0x001EB660 (cond_jump)
  0x001EB66D  66ff056a2ab200          inc      word ptr [0xb22a6a]            
  0x001EB674  55                      push     ebp                            
  0x001EB675  8b6c2410                mov      ebp, dword ptr [esp + 0x10]    
  0x001EB679  c1e606                  shl      esi, 6                         
  0x001EB67C  57                      push     edi                            
  0x001EB67D  03f0                    add      esi, eax                       
  0x001EB67F  56                      push     esi                            
  0x001EB680  8bcd                    mov      ecx, ebp                       
  0x001EB682  e88be2ffff              call     0x1e9912                       ; -> sub_001E9912
  0x001EB687  8a06                    mov      al, byte ptr [esi]             
  0x001EB689  24f5                    and      al, 0xf5                       
  0x001EB68B  8d7e08                  lea      edi, [esi + 8]                 
  0x001EB68E  0c01                    or       al, 1                          
  0x001EB690  57                      push     edi                            
  0x001EB691  8bcd                    mov      ecx, ebp                       
  0x001EB693  8806                    mov      byte ptr [esi], al             
  0x001EB695  885e05                  mov      byte ptr [esi + 5], bl         
  0x001EB698  885e06                  mov      byte ptr [esi + 6], bl         
  0x001EB69B  c60720                  mov      byte ptr [edi], 0x20           
  0x001EB69E  c6460982                mov      byte ptr [esi + 9], 0x82       
  0x001EB6A2  895e10                  mov      dword ptr [esi + 0x10], ebx    
  0x001EB6A5  e80be6ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB6AA  6a30                    push     0x30                           
  0x001EB6AC  58                      pop      eax                            
  0x001EB6AD  55                      push     ebp                            
  0x001EB6AE  6862ab1e00              push     0x1eab62                       
  0x001EB6B3  68482ab200              push     0xb22a48                       
  0x001EB6B8  8807                    mov      byte ptr [edi], al             
  0x001EB6BA  c6460940                mov      byte ptr [esi + 9], 0x40       
  0x001EB6BE  c746104fb51e00          mov      dword ptr [esi + 0x10], 0x1eb54f 
  0x001EB6C5  896e14                  mov      dword ptr [esi + 0x14], ebp    
  0x001EB6C8  895e18                  mov      dword ptr [esi + 0x18], ebx    
  0x001EB6CB  c74620b829b200          mov      dword ptr [esi + 0x20], 0xb229b8 
  0x001EB6D2  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001EB6D5  c6462402                mov      byte ptr [esi + 0x24], 2       
  0x001EB6D9  c6462501                mov      byte ptr [esi + 0x25], 1       
  0x001EB6DD  885e26                  mov      byte ptr [esi + 0x26], bl      
  0x001EB6E0  c6463080                mov      byte ptr [esi + 0x30], 0x80    
  0x001EB6E4  c6463106                mov      byte ptr [esi + 0x31], 6       
  0x001EB6E8  66c746320002            mov      word ptr [esi + 0x32], 0x200   
  0x001EB6EE  66895e34                mov      word ptr [esi + 0x34], bx      
  0x001EB6F2  66894636                mov      word ptr [esi + 0x36], ax      
  0x001EB6F6  ff15ecd11e00            call     dword ptr [0x1ed1ec]           ; -> xbox_KeInitializeDpc
  0x001EB6FC  53                      push     ebx                            
  0x001EB6FD  e8b4f4ffff              call     0x1eabb6                       ; -> sub_001EABB6
  0x001EB702  57                      push     edi                            
  0x001EB703  8bcd                    mov      ecx, ebp                       
  0x001EB705  e8abe5ffff              call     0x1e9cb5                       ; -> sub_001E9CB5
  0x001EB70A  5f                      pop      edi                            
  0x001EB70B  5d                      pop      ebp                            
  0x001EB70C  eb0e                    jmp      0x1eb71c                       
                                        ; XREF: 0x001EB64E (cond_jump)
  0x001EB70E  8b4c240c                mov      ecx, dword ptr [esp + 0xc]     
  0x001EB712  6800010080              push     0x80000100                     
  0x001EB717  e80bdbffff              call     0x1e9227                       ; -> sub_001E9227
                                        ; XREF: 0x001EB70C (jump)
  0x001EB71C  5e                      pop      esi                            
  0x001EB71D  5b                      pop      ebx                            
  0x001EB71E  c20400                  ret      4                              

; ============================================================
; Function: sub_001EB721
; Start: 0x001EB721  End: 0x001EB7B0  Size: 143 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E8DED, sub_001E910F
; Called by: sub_001E63F3, sub_001EB845
; ============================================================
sub_001EB721:
  0x001EB721  51                      push     ecx                            
  0x001EB722  53                      push     ebx                            
  0x001EB723  55                      push     ebp                            
  0x001EB724  56                      push     esi                            
  0x001EB725  8bf1                    mov      esi, ecx                       
  0x001EB727  80be6004000000          cmp      byte ptr [esi + 0x460], 0      
  0x001EB72E  8bea                    mov      ebp, edx                       
  0x001EB730  b301                    mov      bl, 1                          
  0x001EB732  7677                    jbe      0x1eb7ab                       
  0x001EB734  885c240c                mov      byte ptr [esp + 0xc], bl       
  0x001EB738  57                      push     edi                            
                                        ; XREF: 0x001EB7A8 (cond_jump)
  0x001EB739  660fb6c3                movzx    ax, bl                         
  0x001EB73D  66854500                test     word ptr [ebp], ax             
  0x001EB741  7453                    je       0x1eb796                       
  0x001EB743  33c9                    xor      ecx, ecx                       
  0x001EB745  668b4d02                mov      cx, word ptr [ebp + 2]         
  0x001EB749  23c8                    and      ecx, eax                       
  0x001EB74B  6685c9                  test     cx, cx                         
  0x001EB74E  7428                    je       0x1eb778                       
  0x001EB750  8d8e61040000            lea      ecx, [esi + 0x461]             
  0x001EB756  8a01                    mov      al, byte ptr [ecx]             
  0x001EB758  84c3                    test     bl, al                         
  0x001EB75A  740c                    je       0x1eb768                       
  0x001EB75C  ff742410                push     dword ptr [esp + 0x10]         
  0x001EB760  56                      push     esi                            
  0x001EB761  e8a9d9ffff              call     0x1e910f                       ; -> sub_001E910F
  0x001EB766  eb04                    jmp      0x1eb76c                       
                                        ; XREF: 0x001EB75A (cond_jump)
  0x001EB768  0ac3                    or       al, bl                         
  0x001EB76A  8801                    mov      byte ptr [ecx], al             
                                        ; XREF: 0x001EB766 (jump)
  0x001EB76C  ff742410                push     dword ptr [esp + 0x10]         
  0x001EB770  56                      push     esi                            
  0x001EB771  e877d6ffff              call     0x1e8ded                       ; -> sub_001E8DED
  0x001EB776  eb1e                    jmp      0x1eb796                       
                                        ; XREF: 0x001EB74E (cond_jump)
  0x001EB778  8dbe61040000            lea      edi, [esi + 0x461]             
  0x001EB77E  8a07                    mov      al, byte ptr [edi]             
  0x001EB780  84c3                    test     bl, al                         
  0x001EB782  7412                    je       0x1eb796                       
  0x001EB784  ff742410                push     dword ptr [esp + 0x10]         
  0x001EB788  8acb                    mov      cl, bl                         
  0x001EB78A  f6d1                    not      cl                             
  0x001EB78C  22c8                    and      cl, al                         
  0x001EB78E  56                      push     esi                            
  0x001EB78F  880f                    mov      byte ptr [edi], cl             
  0x001EB791  e879d9ffff              call     0x1e910f                       ; -> sub_001E910F
                                        ; XREF: 0x001EB741 (cond_jump), 0x001EB776 (jump), 0x001EB782 (cond_jump)
  0x001EB796  fe442410                inc      byte ptr [esp + 0x10]          
  0x001EB79A  8a442410                mov      al, byte ptr [esp + 0x10]      
  0x001EB79E  d0e3                    shl      bl, 1                          
  0x001EB7A0  fec8                    dec      al                             
  0x001EB7A2  3a8660040000            cmp      al, byte ptr [esi + 0x460]     
  0x001EB7A8  728f                    jb       0x1eb739                       
  0x001EB7AA  5f                      pop      edi                            
                                        ; XREF: 0x001EB732 (cond_jump)
  0x001EB7AB  5e                      pop      esi                            
  0x001EB7AC  5d                      pop      ebp                            
  0x001EB7AD  5b                      pop      ebx                            
  0x001EB7AE  59                      pop      ecx                            
  0x001EB7AF  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EB7B0
; Start: 0x001EB7B0  End: 0x001EB7FD  Size: 77 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001EB7B0:
  0x001EB7B0  55                      push     ebp                            
  0x001EB7B1  8bec                    mov      ebp, esp                       
  0x001EB7B3  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001EB7B6  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001EB7B9  8b550c                  mov      edx, dword ptr [ebp + 0xc]     
  0x001EB7BC  898870040000            mov      dword ptr [eax + 0x470], ecx   
  0x001EB7C2  8b4d14                  mov      ecx, dword ptr [ebp + 0x14]    
  0x001EB7C5  56                      push     esi                            
  0x001EB7C6  898874040000            mov      dword ptr [eax + 0x474], ecx   
  0x001EB7CC  8b08                    mov      ecx, dword ptr [eax]           
  0x001EB7CE  66c745081000            mov      word ptr [ebp + 8], 0x10       
  0x001EB7D4  8b7508                  mov      esi, dword ptr [ebp + 8]       
  0x001EB7D7  89749150                mov      dword ptr [ecx + edx*4 + 0x50], esi 
  0x001EB7DB  8db0a0040000            lea      esi, [eax + 0x4a0]             
  0x001EB7E1  56                      push     esi                            
  0x001EB7E2  83caff                  or       edx, 0xffffffff                
  0x001EB7E5  52                      push     edx                            
  0x001EB7E6  b9c0bdf0ff              mov      ecx, 0xfff0bdc0                
  0x001EB7EB  51                      push     ecx                            
  0x001EB7EC  0578040000              add      eax, 0x478                     
  0x001EB7F1  50                      push     eax                            
  0x001EB7F2  ff1500d21e00            call     dword ptr [0x1ed200]           ; -> xbox_KeSetTimer
  0x001EB7F8  5e                      pop      esi                            
  0x001EB7F9  5d                      pop      ebp                            
  0x001EB7FA  c21000                  ret      0x10                           
; end of function

; ============================================================
; Function: sub_001EB7FD
; Start: 0x001EB7FD  End: 0x001EB81A  Size: 29 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001E9155
; ============================================================
sub_001EB7FD:
  0x001EB7FD  55                      push     ebp                            
  0x001EB7FE  8bec                    mov      ebp, esp                       
  0x001EB800  51                      push     ecx                            
  0x001EB801  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001EB804  8b00                    mov      eax, dword ptr [eax]           
  0x001EB806  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001EB809  66c745fc0100            mov      word ptr [ebp - 4], 1          
  0x001EB80F  8b55fc                  mov      edx, dword ptr [ebp - 4]       
  0x001EB812  89548850                mov      dword ptr [eax + ecx*4 + 0x50], edx 
  0x001EB816  c9                      leave                                   
  0x001EB817  c20800                  ret      8                              
; end of function
  0x001EB81A  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001EB81E  8d8170040000            lea      eax, [ecx + 0x470]             
  0x001EB824  8b10                    mov      edx, dword ptr [eax]           
  0x001EB826  81c174040000            add      ecx, 0x474                     
  0x001EB82C  85d2                    test     edx, edx                       
  0x001EB82E  56                      push     esi                            
  0x001EB82F  8b31                    mov      esi, dword ptr [ecx]           
  0x001EB831  740e                    je       0x1eb841                       
  0x001EB833  832000                  and      dword ptr [eax], 0             
  0x001EB836  832100                  and      dword ptr [ecx], 0             
  0x001EB839  56                      push     esi                            
  0x001EB83A  6800060080              push     0x80000600                     
  0x001EB83F  ffd2                    call     edx                            
                                        ; XREF: 0x001EB831 (cond_jump)
  0x001EB841  5e                      pop      esi                            
  0x001EB842  c21000                  ret      0x10                           

; ============================================================
; Function: sub_001EB845
; Start: 0x001EB845  End: 0x001EB904  Size: 191 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB721
; Called by: sub_001EC34A
; ============================================================
sub_001EB845:
  0x001EB845  55                      push     ebp                            
  0x001EB846  8bec                    mov      ebp, esp                       
  0x001EB848  83ec1c                  sub      esp, 0x1c                      
  0x001EB84B  56                      push     esi                            
  0x001EB84C  8bf1                    mov      esi, ecx                       
  0x001EB84E  8b06                    mov      eax, dword ptr [esi]           
  0x001EB850  0fb69660040000          movzx    edx, byte ptr [esi + 0x460]    
  0x001EB857  8d4854                  lea      ecx, [eax + 0x54]              
  0x001EB85A  8b01                    mov      eax, dword ptr [ecx]           
  0x001EB85C  57                      push     edi                            
  0x001EB85D  33c0                    xor      eax, eax                       
  0x001EB85F  85d2                    test     edx, edx                       
  0x001EB861  8d7df8                  lea      edi, [ebp - 8]                 
  0x001EB864  ab                      stosd    dword ptr es:[edi], eax        
  0x001EB865  c745f401000000          mov      dword ptr [ebp - 0xc], 1       
  0x001EB86C  0f8684000000            jbe      0x1eb8f6                       
  0x001EB872  894df0                  mov      dword ptr [ebp - 0x10], ecx    
  0x001EB875  8955ec                  mov      dword ptr [ebp - 0x14], edx    
  0x001EB878  53                      push     ebx                            
                                        ; XREF: 0x001EB8F3 (cond_jump)
  0x001EB879  8b39                    mov      edi, dword ptr [ecx]           
  0x001EB87B  897dfc                  mov      dword ptr [ebp - 4], edi       
  0x001EB87E  f645fe10                test     byte ptr [ebp - 2], 0x10       
  0x001EB882  743f                    je       0x1eb8c3                       
  0x001EB884  8b8e74040000            mov      ecx, dword ptr [esi + 0x474]   
  0x001EB88A  8d9e70040000            lea      ebx, [esi + 0x470]             
  0x001EB890  8b03                    mov      eax, dword ptr [ebx]           
  0x001EB892  85c0                    test     eax, eax                       
  0x001EB894  8945e4                  mov      dword ptr [ebp - 0x1c], eax    
  0x001EB897  894de8                  mov      dword ptr [ebp - 0x18], ecx    
  0x001EB89A  7427                    je       0x1eb8c3                       
  0x001EB89C  8d8678040000            lea      eax, [esi + 0x478]             
  0x001EB8A2  50                      push     eax                            
  0x001EB8A3  ff1504d21e00            call     dword ptr [0x1ed204]           ; -> xbox_KeBugCheck
  0x001EB8A9  ff75e8                  push     dword ptr [ebp - 0x18]         
  0x001EB8AC  832300                  and      dword ptr [ebx], 0             
  0x001EB8AF  83a67404000000          and      dword ptr [esi + 0x474], 0     
  0x001EB8B6  81e700020000            and      edi, 0x200                     
  0x001EB8BC  c1e70f                  shl      edi, 0xf                       
  0x001EB8BF  57                      push     edi                            
  0x001EB8C0  ff55e4                  call     dword ptr [ebp - 0x1c]         
                                        ; XREF: 0x001EB882 (cond_jump), 0x001EB89A (cond_jump)
  0x001EB8C3  f645fe01                test     byte ptr [ebp - 2], 1          
  0x001EB8C7  7411                    je       0x1eb8da                       
  0x001EB8C9  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001EB8CC  660945f8                or       word ptr [ebp - 8], ax         
  0x001EB8D0  f645fc01                test     byte ptr [ebp - 4], 1          
  0x001EB8D4  7404                    je       0x1eb8da                       
  0x001EB8D6  660945fa                or       word ptr [ebp - 6], ax         
                                        ; XREF: 0x001EB8C7 (cond_jump), 0x001EB8D4 (cond_jump)
  0x001EB8DA  668365fc00              and      word ptr [ebp - 4], 0          
  0x001EB8DF  8b4df0                  mov      ecx, dword ptr [ebp - 0x10]    
  0x001EB8E2  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001EB8E5  d165f4                  shl      dword ptr [ebp - 0xc], 1       
  0x001EB8E8  8901                    mov      dword ptr [ecx], eax           
  0x001EB8EA  83c104                  add      ecx, 4                         
  0x001EB8ED  ff4dec                  dec      dword ptr [ebp - 0x14]         
  0x001EB8F0  894df0                  mov      dword ptr [ebp - 0x10], ecx    
  0x001EB8F3  7584                    jne      0x1eb879                       
  0x001EB8F5  5b                      pop      ebx                            
                                        ; XREF: 0x001EB86C (cond_jump)
  0x001EB8F6  8d55f8                  lea      edx, [ebp - 8]                 
  0x001EB8F9  8bce                    mov      ecx, esi                       
  0x001EB8FB  e821feffff              call     0x1eb721                       ; -> sub_001EB721
  0x001EB900  5f                      pop      edi                            
  0x001EB901  5e                      pop      esi                            
  0x001EB902  c9                      leave                                   
  0x001EB903  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EB904
; Start: 0x001EB904  End: 0x001EB921  Size: 29 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001E64A3, sub_001EBFE5, sub_001EC193
; ============================================================
sub_001EB904:
  0x001EB904  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001EB908  834808ff                or       dword ptr [eax + 8], 0xffffffff 
  0x001EB90C  80481fff                or       byte ptr [eax + 0x1f], 0xff    
  0x001EB910  8b0dec4ebf00            mov      ecx, dword ptr [0xbf4eec]      
  0x001EB916  894814                  mov      dword ptr [eax + 0x14], ecx    
  0x001EB919  a3ec4ebf00              mov      dword ptr [0xbf4eec], eax      
  0x001EB91E  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001EB921
; Start: 0x001EB921  End: 0x001EB935  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EB921:
  0x001EB921  807a1100                cmp      byte ptr [edx + 0x11], 0       
  0x001EB925  8b01                    mov      eax, dword ptr [ecx]           
  0x001EB927  56                      push     esi                            
  0x001EB928  750b                    jne      0x1eb935                       
  0x001EB92A  8db10c040000            lea      esi, [ecx + 0x40c]             
  0x001EB930  83c020                  add      eax, 0x20                      
  0x001EB933  eb09                    jmp      0x1eb93e                       
; end of function
                                        ; XREF: 0x001EB928 (cond_jump)
  0x001EB935  8db110040000            lea      esi, [ecx + 0x410]             
  0x001EB93B  83c028                  add      eax, 0x28                      
                                        ; XREF: 0x001EB933 (jump)
  0x001EB93E  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EB940  894a18                  mov      dword ptr [edx + 0x18], ecx    
  0x001EB943  8916                    mov      dword ptr [esi], edx           
  0x001EB945  8b4a18                  mov      ecx, dword ptr [edx + 0x18]    
  0x001EB948  85c9                    test     ecx, ecx                       
  0x001EB94A  5e                      pop      esi                            
  0x001EB94B  7505                    jne      0x1eb952                       
  0x001EB94D  214a0c                  and      dword ptr [edx + 0xc], ecx     
  0x001EB950  eb06                    jmp      0x1eb958                       
                                        ; XREF: 0x001EB94B (cond_jump)
  0x001EB952  8b4914                  mov      ecx, dword ptr [ecx + 0x14]    
  0x001EB955  894a0c                  mov      dword ptr [edx + 0xc], ecx     
                                        ; XREF: 0x001EB950 (jump)
  0x001EB958  8b4a14                  mov      ecx, dword ptr [edx + 0x14]    
  0x001EB95B  8908                    mov      dword ptr [eax], ecx           
  0x001EB95D  c3                      ret                                     

; ============================================================
; Function: sub_001EB95E
; Start: 0x001EB95E  End: 0x001EB973  Size: 21 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EB95E:
  0x001EB95E  807a1100                cmp      byte ptr [edx + 0x11], 0       
  0x001EB962  56                      push     esi                            
  0x001EB963  57                      push     edi                            
  0x001EB964  750d                    jne      0x1eb973                       
  0x001EB966  8db10c040000            lea      esi, [ecx + 0x40c]             
  0x001EB96C  8b09                    mov      ecx, dword ptr [ecx]           
  0x001EB96E  83c120                  add      ecx, 0x20                      
  0x001EB971  eb0b                    jmp      0x1eb97e                       
; end of function
                                        ; XREF: 0x001EB964 (cond_jump)
  0x001EB973  8db110040000            lea      esi, [ecx + 0x410]             
  0x001EB979  8b09                    mov      ecx, dword ptr [ecx]           
  0x001EB97B  83c128                  add      ecx, 0x28                      
                                        ; XREF: 0x001EB971 (jump)
  0x001EB97E  8b06                    mov      eax, dword ptr [esi]           
  0x001EB980  33ff                    xor      edi, edi                       
                                        ; XREF: 0x001EB98D (cond_jump)
  0x001EB982  3bd0                    cmp      edx, eax                       
  0x001EB984  7409                    je       0x1eb98f                       
  0x001EB986  8bf8                    mov      edi, eax                       
  0x001EB988  8b4018                  mov      eax, dword ptr [eax + 0x18]    
  0x001EB98B  85c0                    test     eax, eax                       
  0x001EB98D  75f3                    jne      0x1eb982                       
                                        ; XREF: 0x001EB984 (cond_jump)
  0x001EB98F  85ff                    test     edi, edi                       
  0x001EB991  740e                    je       0x1eb9a1                       
  0x001EB993  8b4818                  mov      ecx, dword ptr [eax + 0x18]    
  0x001EB996  894f18                  mov      dword ptr [edi + 0x18], ecx    
  0x001EB999  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001EB99C  89470c                  mov      dword ptr [edi + 0xc], eax     
  0x001EB99F  eb0a                    jmp      0x1eb9ab                       
                                        ; XREF: 0x001EB991 (cond_jump)
  0x001EB9A1  8b5018                  mov      edx, dword ptr [eax + 0x18]    
  0x001EB9A4  8916                    mov      dword ptr [esi], edx           
  0x001EB9A6  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001EB9A9  8901                    mov      dword ptr [ecx], eax           
                                        ; XREF: 0x001EB99F (jump)
  0x001EB9AB  5f                      pop      edi                            
  0x001EB9AC  5e                      pop      esi                            
  0x001EB9AD  c3                      ret                                     

; ============================================================
; Function: sub_001EB9AE
; Start: 0x001EB9AE  End: 0x001EB9C4  Size: 22 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EB9C4
; ============================================================
sub_001EB9AE:
  0x001EB9AE  33c0                    xor      eax, eax                       
  0x001EB9B0  85c9                    test     ecx, ecx                       
  0x001EB9B2  760f                    jbe      0x1eb9c3                       
  0x001EB9B4  56                      push     esi                            
                                        ; XREF: 0x001EB9C0 (cond_jump)
  0x001EB9B5  8bf2                    mov      esi, edx                       
  0x001EB9B7  83e601                  and      esi, 1                         
  0x001EB9BA  d1ea                    shr      edx, 1                         
  0x001EB9BC  49                      dec      ecx                            
  0x001EB9BD  8d0446                  lea      eax, [esi + eax*2]             
  0x001EB9C0  75f3                    jne      0x1eb9b5                       
  0x001EB9C2  5e                      pop      esi                            
                                        ; XREF: 0x001EB9B2 (cond_jump)
  0x001EB9C3  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EB9C4
; Start: 0x001EB9C4  End: 0x001EB9EC  Size: 40 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB9AE
; ============================================================
sub_001EB9C4:
  0x001EB9C4  55                      push     ebp                            
  0x001EB9C5  8bec                    mov      ebp, esp                       
  0x001EB9C7  51                      push     ecx                            
  0x001EB9C8  56                      push     esi                            
  0x001EB9C9  8bf1                    mov      esi, ecx                       
  0x001EB9CB  8a4d08                  mov      cl, byte ptr [ebp + 8]         
  0x001EB9CE  80f920                  cmp      cl, 0x20                       
  0x001EB9D1  57                      push     edi                            
  0x001EB9D2  8bfa                    mov      edi, edx                       
  0x001EB9D4  7216                    jb       0x1eb9ec                       
  0x001EB9D6  0fb6d1                  movzx    edx, cl                        
  0x001EB9D9  6a05                    push     5                              
  0x001EB9DB  83ea20                  sub      edx, 0x20                      
  0x001EB9DE  59                      pop      ecx                            
  0x001EB9DF  e8caffffff              call     0x1eb9ae                       ; -> sub_001EB9AE
  0x001EB9E4  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001EB9E7  893c81                  mov      dword ptr [ecx + eax*4], edi   
  0x001EB9EA  eb49                    jmp      0x1eba35                       
; end of function
                                        ; XREF: 0x001EB9D4 (cond_jump)
  0x001EB9EC  80650b00                and      byte ptr [ebp + 0xb], 0        
  0x001EB9F0  8ac1                    mov      al, cl                         
  0x001EB9F2  d0e0                    shl      al, 1                          
  0x001EB9F4  53                      push     ebx                            
  0x001EB9F5  fec0                    inc      al                             
  0x001EB9F7  8ad9                    mov      bl, cl                         
  0x001EB9F9  8845fc                  mov      byte ptr [ebp - 4], al         
  0x001EB9FC  d0e3                    shl      bl, 1                          
                                        ; XREF: 0x001EBA32 (cond_jump)
  0x001EB9FE  0fb6c0                  movzx    eax, al                        
  0x001EBA01  c1e004                  shl      eax, 4                         
  0x001EBA04  8d44300c                lea      eax, [eax + esi + 0xc]         
  0x001EBA08  83780800                cmp      dword ptr [eax + 8], 0         
  0x001EBA0C  750e                    jne      0x1eba1c                       
  0x001EBA0E  ff75fc                  push     dword ptr [ebp - 4]            
  0x001EBA11  8bd7                    mov      edx, edi                       
  0x001EBA13  8bce                    mov      ecx, esi                       
  0x001EBA15  e8aaffffff              call     0x1eb9c4                       ; -> sub_001EB9C4
  0x001EBA1A  eb06                    jmp      0x1eba22                       
                                        ; XREF: 0x001EBA0C (cond_jump)
  0x001EBA1C  8b400c                  mov      eax, dword ptr [eax + 0xc]     
  0x001EBA1F  89780c                  mov      dword ptr [eax + 0xc], edi     
                                        ; XREF: 0x001EBA1A (jump)
  0x001EBA22  8ac3                    mov      al, bl                         
  0x001EBA24  84c0                    test     al, al                         
  0x001EBA26  8845fc                  mov      byte ptr [ebp - 4], al         
  0x001EBA29  7409                    je       0x1eba34                       
  0x001EBA2B  fe450b                  inc      byte ptr [ebp + 0xb]           
  0x001EBA2E  807d0b02                cmp      byte ptr [ebp + 0xb], 2        
  0x001EBA32  72ca                    jb       0x1eb9fe                       
                                        ; XREF: 0x001EBA29 (cond_jump)
  0x001EBA34  5b                      pop      ebx                            
                                        ; XREF: 0x001EB9EA (jump)
  0x001EBA35  5f                      pop      edi                            
  0x001EBA36  5e                      pop      esi                            
  0x001EBA37  c9                      leave                                   
  0x001EBA38  c20400                  ret      4                              

; ============================================================
; Function: sub_001EBA3B
; Start: 0x001EBA3B  End: 0x001EBACC  Size: 145 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001EBA3B:
  0x001EBA3B  55                      push     ebp                            
  0x001EBA3C  8bec                    mov      ebp, esp                       
  0x001EBA3E  83ec10                  sub      esp, 0x10                      
  0x001EBA41  53                      push     ebx                            
  0x001EBA42  56                      push     esi                            
  0x001EBA43  8bf2                    mov      esi, edx                       
  0x001EBA45  807e1103                cmp      byte ptr [esi + 0x11], 3       
  0x001EBA49  57                      push     edi                            
  0x001EBA4A  7553                    jne      0x1eba9f                       
  0x001EBA4C  b020                    mov      al, 0x20                       
  0x001EBA4E  384613                  cmp      byte ptr [esi + 0x13], al      
  0x001EBA51  7309                    jae      0x1eba5c                       
  0x001EBA53  8a5613                  mov      dl, byte ptr [esi + 0x13]      
                                        ; XREF: 0x001EBA5A (cond_jump)
  0x001EBA56  d0e8                    shr      al, 1                          
  0x001EBA58  3ac2                    cmp      al, dl                         
  0x001EBA5A  77fa                    ja       0x1eba56                       
                                        ; XREF: 0x001EBA51 (cond_jump)
  0x001EBA5C  8ad8                    mov      bl, al                         
  0x001EBA5E  d0e3                    shl      bl, 1                          
  0x001EBA60  fecb                    dec      bl                             
  0x001EBA62  3ac3                    cmp      al, bl                         
  0x001EBA64  bfe02e0000              mov      edi, 0x2ee0                    
  0x001EBA69  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EBA6C  773d                    ja       0x1ebaab                       
  0x001EBA6E  0fb6c0                  movzx    eax, al                        
  0x001EBA71  c1e004                  shl      eax, 4                         
  0x001EBA74  8d540810                lea      edx, [eax + ecx + 0x10]        
                                        ; XREF: 0x001EBA9B (cond_jump)
  0x001EBA78  33c0                    xor      eax, eax                       
  0x001EBA7A  668b42fe                mov      ax, word ptr [edx - 2]         
  0x001EBA7E  66034202                add      ax, word ptr [edx + 2]         
  0x001EBA82  660302                  add      ax, word ptr [edx]             
  0x001EBA85  663bc7                  cmp      ax, di                         
  0x001EBA88  7308                    jae      0x1eba92                       
  0x001EBA8A  8bf8                    mov      edi, eax                       
  0x001EBA8C  8a45ff                  mov      al, byte ptr [ebp - 1]         
  0x001EBA8F  8845fb                  mov      byte ptr [ebp - 5], al         
                                        ; XREF: 0x001EBA88 (cond_jump)
  0x001EBA92  fe45ff                  inc      byte ptr [ebp - 1]             
  0x001EBA95  83c210                  add      edx, 0x10                      
  0x001EBA98  385dff                  cmp      byte ptr [ebp - 1], bl         
  0x001EBA9B  76db                    jbe      0x1eba78                       
  0x001EBA9D  eb0c                    jmp      0x1ebaab                       
                                        ; XREF: 0x001EBA4A (cond_jump)
  0x001EBA9F  668b7910                mov      di, word ptr [ecx + 0x10]      
  0x001EBAA3  6603790e                add      di, word ptr [ecx + 0xe]       
  0x001EBAA7  8065fb00                and      byte ptr [ebp - 5], 0          
                                        ; XREF: 0x001EBA6C (cond_jump), 0x001EBA9D (jump)
  0x001EBAAB  668b4622                mov      ax, word ptr [esi + 0x22]      
  0x001EBAAF  0fb7ff                  movzx    edi, di                        
  0x001EBAB2  0fb7d0                  movzx    edx, ax                        
  0x001EBAB5  03d7                    add      edx, edi                       
  0x001EBAB7  0fb7b914040000          movzx    edi, word ptr [ecx + 0x414]    
  0x001EBABE  3bd7                    cmp      edx, edi                       
  0x001EBAC0  7e0a                    jle      0x1ebacc                       
  0x001EBAC2  b800080080              mov      eax, 0x80000800                
  0x001EBAC7  e946010000              jmp      0x1ebc12                       
; end of function
                                        ; XREF: 0x001EBAC0 (cond_jump)
  0x001EBACC  8a55fb                  mov      dl, byte ptr [ebp - 5]         
  0x001EBACF  0fb6fa                  movzx    edi, dl                        
  0x001EBAD2  c1e704                  shl      edi, 4                         
  0x001EBAD5  8d7c0f0c                lea      edi, [edi + ecx + 0xc]         
  0x001EBAD9  885612                  mov      byte ptr [esi + 0x12], dl      
  0x001EBADC  66014702                add      word ptr [edi + 2], ax         
  0x001EBAE0  84d2                    test     dl, dl                         
  0x001EBAE2  7507                    jne      0x1ebaeb                       
  0x001EBAE4  b001                    mov      al, 1                          
  0x001EBAE6  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EBAE9  eb11                    jmp      0x1ebafc                       
                                        ; XREF: 0x001EBAE2 (cond_jump)
  0x001EBAEB  8ac2                    mov      al, dl                         
  0x001EBAED  d0e0                    shl      al, 1                          
  0x001EBAEF  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EBAF2  8ac2                    mov      al, dl                         
  0x001EBAF4  d0e0                    shl      al, 1                          
  0x001EBAF6  fec0                    inc      al                             
  0x001EBAF8  3c40                    cmp      al, 0x40                       
  0x001EBAFA  7740                    ja       0x1ebb3c                       
                                        ; XREF: 0x001EBAE9 (jump), 0x001EBB37 (cond_jump)
  0x001EBAFC  3845ff                  cmp      byte ptr [ebp - 1], al         
  0x001EBAFF  772d                    ja       0x1ebb2e                       
  0x001EBB01  0fb655ff                movzx    edx, byte ptr [ebp - 1]        
  0x001EBB05  c1e204                  shl      edx, 4                         
  0x001EBB08  8d540a12                lea      edx, [edx + ecx + 0x12]        
  0x001EBB0C  8955f0                  mov      dword ptr [ebp - 0x10], edx    
  0x001EBB0F  8ad0                    mov      dl, al                         
  0x001EBB11  2a55ff                  sub      dl, byte ptr [ebp - 1]         
  0x001EBB14  fec2                    inc      dl                             
  0x001EBB16  0fb6d2                  movzx    edx, dl                        
  0x001EBB19  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001EBB1C  8b55f0                  mov      edx, dword ptr [ebp - 0x10]    
                                        ; XREF: 0x001EBB2C (cond_jump)
  0x001EBB1F  668b5e22                mov      bx, word ptr [esi + 0x22]      
  0x001EBB23  66011a                  add      word ptr [edx], bx             
  0x001EBB26  83c210                  add      edx, 0x10                      
  0x001EBB29  ff4df4                  dec      dword ptr [ebp - 0xc]          
  0x001EBB2C  75f1                    jne      0x1ebb1f                       
                                        ; XREF: 0x001EBAFF (cond_jump)
  0x001EBB2E  d065ff                  shl      byte ptr [ebp - 1], 1          
  0x001EBB31  d0e0                    shl      al, 1                          
  0x001EBB33  fec0                    inc      al                             
  0x001EBB35  3c40                    cmp      al, 0x40                       
  0x001EBB37  76c3                    jbe      0x1ebafc                       
  0x001EBB39  8a55fb                  mov      dl, byte ptr [ebp - 5]         
                                        ; XREF: 0x001EBAFA (cond_jump)
  0x001EBB3C  80fa01                  cmp      dl, 1                          
  0x001EBB3F  8855ff                  mov      byte ptr [ebp - 1], dl         
  0x001EBB42  7661                    jbe      0x1ebba5                       
                                        ; XREF: 0x001EBBA3 (cond_jump)
  0x001EBB44  8a45ff                  mov      al, byte ptr [ebp - 1]         
  0x001EBB47  0fb655ff                movzx    edx, byte ptr [ebp - 1]        
  0x001EBB4B  3401                    xor      al, 1                          
  0x001EBB4D  0fb6c0                  movzx    eax, al                        
  0x001EBB50  c1e204                  shl      edx, 4                         
  0x001EBB53  8d540a0c                lea      edx, [edx + ecx + 0xc]         
  0x001EBB57  c1e004                  shl      eax, 4                         
  0x001EBB5A  33db                    xor      ebx, ebx                       
  0x001EBB5C  668b5a04                mov      bx, word ptr [edx + 4]         
  0x001EBB60  668b5202                mov      dx, word ptr [edx + 2]         
  0x001EBB64  8d44080c                lea      eax, [eax + ecx + 0xc]         
  0x001EBB68  668955f4                mov      word ptr [ebp - 0xc], dx       
  0x001EBB6C  0fb75004                movzx    edx, word ptr [eax + 4]        
  0x001EBB70  0fb74002                movzx    eax, word ptr [eax + 2]        
  0x001EBB74  03d0                    add      edx, eax                       
  0x001EBB76  0fb745f4                movzx    eax, word ptr [ebp - 0xc]      
  0x001EBB7A  895df0                  mov      dword ptr [ebp - 0x10], ebx    
  0x001EBB7D  0fb7db                  movzx    ebx, bx                        
  0x001EBB80  03c3                    add      eax, ebx                       
  0x001EBB82  3bc2                    cmp      eax, edx                       
  0x001EBB84  7e1f                    jle      0x1ebba5                       
  0x001EBB86  8a45ff                  mov      al, byte ptr [ebp - 1]         
  0x001EBB89  8b5df0                  mov      ebx, dword ptr [ebp - 0x10]    
  0x001EBB8C  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001EBB8F  d0e8                    shr      al, 1                          
  0x001EBB91  03d3                    add      edx, ebx                       
  0x001EBB93  0fb6d8                  movzx    ebx, al                        
  0x001EBB96  c1e304                  shl      ebx, 4                         
  0x001EBB99  3c01                    cmp      al, 1                          
  0x001EBB9B  6689540b10              mov      word ptr [ebx + ecx + 0x10], dx 
  0x001EBBA0  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EBBA3  779f                    ja       0x1ebb44                       
                                        ; XREF: 0x001EBB42 (cond_jump), 0x001EBB84 (cond_jump)
  0x001EBBA5  807dff01                cmp      byte ptr [ebp - 1], 1          
  0x001EBBA9  750c                    jne      0x1ebbb7                       
  0x001EBBAB  668b4120                mov      ax, word ptr [ecx + 0x20]      
  0x001EBBAF  6603411e                add      ax, word ptr [ecx + 0x1e]      
  0x001EBBB3  66894110                mov      word ptr [ecx + 0x10], ax      
                                        ; XREF: 0x001EBBA9 (cond_jump)
  0x001EBBB7  8b4708                  mov      eax, dword ptr [edi + 8]       
  0x001EBBBA  33d2                    xor      edx, edx                       
  0x001EBBBC  3bc2                    cmp      eax, edx                       
  0x001EBBBE  7536                    jne      0x1ebbf6                       
  0x001EBBC0  8a45fb                  mov      al, byte ptr [ebp - 5]         
  0x001EBBC3  eb04                    jmp      0x1ebbc9                       
                                        ; XREF: 0x001EBBD5 (cond_jump)
  0x001EBBC5  84c0                    test     al, al                         
  0x001EBBC7  740e                    je       0x1ebbd7                       
                                        ; XREF: 0x001EBBC3 (jump)
  0x001EBBC9  d0e8                    shr      al, 1                          
  0x001EBBCB  0fb6d8                  movzx    ebx, al                        
  0x001EBBCE  c1e304                  shl      ebx, 4                         
  0x001EBBD1  39540b14                cmp      dword ptr [ebx + ecx + 0x14], edx 
  0x001EBBD5  74ee                    je       0x1ebbc5                       
                                        ; XREF: 0x001EBBC7 (cond_jump)
  0x001EBBD7  0fb6c0                  movzx    eax, al                        
  0x001EBBDA  c1e004                  shl      eax, 4                         
  0x001EBBDD  8b440814                mov      eax, dword ptr [eax + ecx + 0x14] 
  0x001EBBE1  3bc2                    cmp      eax, edx                       
  0x001EBBE3  7406                    je       0x1ebbeb                       
  0x001EBBE5  8b4014                  mov      eax, dword ptr [eax + 0x14]    
  0x001EBBE8  89460c                  mov      dword ptr [esi + 0xc], eax     
                                        ; XREF: 0x001EBBE3 (cond_jump)
  0x001EBBEB  897708                  mov      dword ptr [edi + 8], esi       
  0x001EBBEE  89770c                  mov      dword ptr [edi + 0xc], esi     
  0x001EBBF1  895618                  mov      dword ptr [esi + 0x18], edx    
  0x001EBBF4  eb0f                    jmp      0x1ebc05                       
                                        ; XREF: 0x001EBBBE (cond_jump)
  0x001EBBF6  894618                  mov      dword ptr [esi + 0x18], eax    
  0x001EBBF9  897708                  mov      dword ptr [edi + 8], esi       
  0x001EBBFC  8b4618                  mov      eax, dword ptr [esi + 0x18]    
  0x001EBBFF  8b4014                  mov      eax, dword ptr [eax + 0x14]    
  0x001EBC02  89460c                  mov      dword ptr [esi + 0xc], eax     
                                        ; XREF: 0x001EBBF4 (jump)
  0x001EBC05  ff75fb                  push     dword ptr [ebp - 5]            
  0x001EBC08  8b5614                  mov      edx, dword ptr [esi + 0x14]    
  0x001EBC0B  e8b4fdffff              call     0x1eb9c4                       ; -> sub_001EB9C4
  0x001EBC10  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001EBAC7 (jump)
  0x001EBC12  5f                      pop      edi                            
  0x001EBC13  5e                      pop      esi                            
  0x001EBC14  5b                      pop      ebx                            
  0x001EBC15  c9                      leave                                   
  0x001EBC16  c3                      ret                                     

; ============================================================
; Function: sub_001EBC17
; Start: 0x001EBC17  End: 0x001EBC88  Size: 113 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001EA990, sub_001EC617
; ============================================================
sub_001EBC17:
  0x001EBC17  55                      push     ebp                            
  0x001EBC18  8bec                    mov      ebp, esp                       
  0x001EBC1A  83ec10                  sub      esp, 0x10                      
  0x001EBC1D  668b4222                mov      ax, word ptr [edx + 0x22]      
  0x001EBC21  8365fc00                and      dword ptr [ebp - 4], 0         
  0x001EBC25  53                      push     ebx                            
  0x001EBC26  8a5a12                  mov      bl, byte ptr [edx + 0x12]      
  0x001EBC29  668945f4                mov      word ptr [ebp - 0xc], ax       
  0x001EBC2D  0fb6c3                  movzx    eax, bl                        
  0x001EBC30  56                      push     esi                            
  0x001EBC31  8bf1                    mov      esi, ecx                       
  0x001EBC33  c1e004                  shl      eax, 4                         
  0x001EBC36  57                      push     edi                            
  0x001EBC37  8d7c300c                lea      edi, [eax + esi + 0xc]         
  0x001EBC3B  8b4f08                  mov      ecx, dword ptr [edi + 8]       
  0x001EBC3E  8955f0                  mov      dword ptr [ebp - 0x10], edx    
  0x001EBC41  885df8                  mov      byte ptr [ebp - 8], bl         
                                        ; XREF: 0x001EBC50 (cond_jump)
  0x001EBC44  3bca                    cmp      ecx, edx                       
  0x001EBC46  740a                    je       0x1ebc52                       
  0x001EBC48  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001EBC4B  8b4918                  mov      ecx, dword ptr [ecx + 0x18]    
  0x001EBC4E  85c9                    test     ecx, ecx                       
  0x001EBC50  75f2                    jne      0x1ebc44                       
                                        ; XREF: 0x001EBC46 (cond_jump)
  0x001EBC52  8b4118                  mov      eax, dword ptr [ecx + 0x18]    
  0x001EBC55  85c0                    test     eax, eax                       
  0x001EBC57  752f                    jne      0x1ebc88                       
  0x001EBC59  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001EBC5C  89470c                  mov      dword ptr [edi + 0xc], eax     
  0x001EBC5F  8ac3                    mov      al, bl                         
  0x001EBC61  eb04                    jmp      0x1ebc67                       
                                        ; XREF: 0x001EBC74 (cond_jump)
  0x001EBC63  84c0                    test     al, al                         
  0x001EBC65  740f                    je       0x1ebc76                       
                                        ; XREF: 0x001EBC61 (jump)
  0x001EBC67  d0e8                    shr      al, 1                          
  0x001EBC69  0fb6d0                  movzx    edx, al                        
  0x001EBC6C  c1e204                  shl      edx, 4                         
  0x001EBC6F  837c321400              cmp      dword ptr [edx + esi + 0x14], 0 
  0x001EBC74  74ed                    je       0x1ebc63                       
                                        ; XREF: 0x001EBC65 (cond_jump)
  0x001EBC76  0fb6c0                  movzx    eax, al                        
  0x001EBC79  c1e004                  shl      eax, 4                         
  0x001EBC7C  8b443014                mov      eax, dword ptr [eax + esi + 0x14] 
  0x001EBC80  85c0                    test     eax, eax                       
  0x001EBC82  7504                    jne      0x1ebc88                       
  0x001EBC84  33d2                    xor      edx, edx                       
  0x001EBC86  eb03                    jmp      0x1ebc8b                       
; end of function
                                        ; XREF: 0x001EBC57 (cond_jump), 0x001EBC82 (cond_jump)
  0x001EBC88  8b5014                  mov      edx, dword ptr [eax + 0x14]    
                                        ; XREF: 0x001EBC86 (jump)
  0x001EBC8B  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001EBC8E  85c0                    test     eax, eax                       
  0x001EBC90  7512                    jne      0x1ebca4                       
  0x001EBC92  8b4118                  mov      eax, dword ptr [ecx + 0x18]    
  0x001EBC95  ff75f8                  push     dword ptr [ebp - 8]            
  0x001EBC98  8bce                    mov      ecx, esi                       
  0x001EBC9A  894708                  mov      dword ptr [edi + 8], eax       
  0x001EBC9D  e822fdffff              call     0x1eb9c4                       ; -> sub_001EB9C4
  0x001EBCA2  eb09                    jmp      0x1ebcad                       
                                        ; XREF: 0x001EBC90 (cond_jump)
  0x001EBCA4  8b4918                  mov      ecx, dword ptr [ecx + 0x18]    
  0x001EBCA7  894818                  mov      dword ptr [eax + 0x18], ecx    
  0x001EBCAA  89500c                  mov      dword ptr [eax + 0xc], edx     
                                        ; XREF: 0x001EBCA2 (jump)
  0x001EBCAD  668b45f4                mov      ax, word ptr [ebp - 0xc]       
  0x001EBCB1  66294702                sub      word ptr [edi + 2], ax         
  0x001EBCB5  84db                    test     bl, bl                         
  0x001EBCB7  0f85c3000000            jne      0x1ebd80                       
  0x001EBCBD  b001                    mov      al, 1                          
  0x001EBCBF  8ac8                    mov      cl, al                         
                                        ; XREF: 0x001EBCF5 (cond_jump)
  0x001EBCC1  3ac8                    cmp      cl, al                         
  0x001EBCC3  7728                    ja       0x1ebced                       
  0x001EBCC5  0fb6d1                  movzx    edx, cl                        
  0x001EBCC8  c1e204                  shl      edx, 4                         
  0x001EBCCB  8d7c3212                lea      edi, [edx + esi + 0x12]        
  0x001EBCCF  8ad0                    mov      dl, al                         
  0x001EBCD1  2ad1                    sub      dl, cl                         
  0x001EBCD3  fec2                    inc      dl                             
  0x001EBCD5  0fb6d2                  movzx    edx, dl                        
  0x001EBCD8  8955fc                  mov      dword ptr [ebp - 4], edx       
                                        ; XREF: 0x001EBCEB (cond_jump)
  0x001EBCDB  8b55f0                  mov      edx, dword ptr [ebp - 0x10]    
  0x001EBCDE  668b5222                mov      dx, word ptr [edx + 0x22]      
  0x001EBCE2  662917                  sub      word ptr [edi], dx             
  0x001EBCE5  83c710                  add      edi, 0x10                      
  0x001EBCE8  ff4dfc                  dec      dword ptr [ebp - 4]            
  0x001EBCEB  75ee                    jne      0x1ebcdb                       
                                        ; XREF: 0x001EBCC3 (cond_jump), 0x001EBD84 (jump)
  0x001EBCED  d0e0                    shl      al, 1                          
  0x001EBCEF  d0e1                    shl      cl, 1                          
  0x001EBCF1  fec0                    inc      al                             
  0x001EBCF3  3c40                    cmp      al, 0x40                       
  0x001EBCF5  76ca                    jbe      0x1ebcc1                       
  0x001EBCF7  80fb01                  cmp      bl, 1                          
  0x001EBCFA  7671                    jbe      0x1ebd6d                       
                                        ; XREF: 0x001EBD68 (cond_jump)
  0x001EBCFC  8ad3                    mov      dl, bl                         
  0x001EBCFE  80f201                  xor      dl, 1                          
  0x001EBD01  0fb6ca                  movzx    ecx, dl                        
  0x001EBD04  c1e104                  shl      ecx, 4                         
  0x001EBD07  8d4c310c                lea      ecx, [ecx + esi + 0xc]         
  0x001EBD0B  0fb77904                movzx    edi, word ptr [ecx + 4]        
  0x001EBD0F  0fb74902                movzx    ecx, word ptr [ecx + 2]        
  0x001EBD13  03f9                    add      edi, ecx                       
  0x001EBD15  0fb6cb                  movzx    ecx, bl                        
  0x001EBD18  c1e104                  shl      ecx, 4                         
  0x001EBD1B  897dfc                  mov      dword ptr [ebp - 4], edi       
  0x001EBD1E  8d4c310c                lea      ecx, [ecx + esi + 0xc]         
  0x001EBD22  0fb77904                movzx    edi, word ptr [ecx + 4]        
  0x001EBD26  0fb74902                movzx    ecx, word ptr [ecx + 2]        
  0x001EBD2A  8ac3                    mov      al, bl                         
  0x001EBD2C  03f9                    add      edi, ecx                       
  0x001EBD2E  d0e8                    shr      al, 1                          
  0x001EBD30  3b7dfc                  cmp      edi, dword ptr [ebp - 4]       
  0x001EBD33  7f12                    jg       0x1ebd47                       
  0x001EBD35  0fb6c8                  movzx    ecx, al                        
  0x001EBD38  c1e104                  shl      ecx, 4                         
  0x001EBD3B  0fb74c3110              movzx    ecx, word ptr [ecx + esi + 0x10] 
  0x001EBD40  394dfc                  cmp      dword ptr [ebp - 4], ecx       
  0x001EBD43  7425                    je       0x1ebd6a                       
  0x001EBD45  8ada                    mov      bl, dl                         
                                        ; XREF: 0x001EBD33 (cond_jump)
  0x001EBD47  0fb6cb                  movzx    ecx, bl                        
  0x001EBD4A  c1e104                  shl      ecx, 4                         
  0x001EBD4D  8d4c310c                lea      ecx, [ecx + esi + 0xc]         
  0x001EBD51  668b5104                mov      dx, word ptr [ecx + 4]         
  0x001EBD55  66035102                add      dx, word ptr [ecx + 2]         
  0x001EBD59  0fb6c8                  movzx    ecx, al                        
  0x001EBD5C  c1e104                  shl      ecx, 4                         
  0x001EBD5F  3c01                    cmp      al, 1                          
  0x001EBD61  6689543110              mov      word ptr [ecx + esi + 0x10], dx 
  0x001EBD66  8ad8                    mov      bl, al                         
  0x001EBD68  7792                    ja       0x1ebcfc                       
                                        ; XREF: 0x001EBD43 (cond_jump)
  0x001EBD6A  80fb01                  cmp      bl, 1                          
                                        ; XREF: 0x001EBCFA (cond_jump)
  0x001EBD6D  750c                    jne      0x1ebd7b                       
  0x001EBD6F  668b4620                mov      ax, word ptr [esi + 0x20]      
  0x001EBD73  6603461e                add      ax, word ptr [esi + 0x1e]      
  0x001EBD77  66894610                mov      word ptr [esi + 0x10], ax      
                                        ; XREF: 0x001EBD6D (cond_jump)
  0x001EBD7B  5f                      pop      edi                            
  0x001EBD7C  5e                      pop      esi                            
  0x001EBD7D  5b                      pop      ebx                            
  0x001EBD7E  c9                      leave                                   
  0x001EBD7F  c3                      ret                                     
                                        ; XREF: 0x001EBCB7 (cond_jump)
  0x001EBD80  8acb                    mov      cl, bl                         
  0x001EBD82  8ac3                    mov      al, bl                         
  0x001EBD84  e964ffffff              jmp      0x1ebced                       
  0x001EBD89  56                      push     esi                            
  0x001EBD8A  8b74240c                mov      esi, dword ptr [esp + 0xc]     
  0x001EBD8E  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EBD90  ff05f02bb200            inc      dword ptr [0xb22bf0]           
  0x001EBD96  8b4110                  mov      eax, dword ptr [ecx + 0x10]    
  0x001EBD99  8b510c                  mov      edx, dword ptr [ecx + 0xc]     
  0x001EBD9C  23d0                    and      edx, eax                       
  0x001EBD9E  57                      push     edi                            
  0x001EBD9F  7477                    je       0x1ebe18                       
  0x001EBDA1  bf00000080              mov      edi, 0x80000000                
  0x001EBDA6  85c7                    test     edi, eax                       
  0x001EBDA8  746e                    je       0x1ebe18                       
  0x001EBDAA  33c0                    xor      eax, eax                       
  0x001EBDAC  40                      inc      eax                            
  0x001EBDAD  84d0                    test     al, dl                         
  0x001EBDAF  897914                  mov      dword ptr [ecx + 0x14], edi    
  0x001EBDB2  7406                    je       0x1ebdba                       
  0x001EBDB4  89410c                  mov      dword ptr [ecx + 0xc], eax     
  0x001EBDB7  83e2fe                  and      edx, 0xfffffffe                
                                        ; XREF: 0x001EBDB2 (cond_jump)
  0x001EBDBA  f6c220                  test     dl, 0x20                       
  0x001EBDBD  742f                    je       0x1ebdee                       
  0x001EBDBF  53                      push     ebx                            
  0x001EBDC0  8b5e08                  mov      ebx, dword ptr [esi + 8]       
  0x001EBDC3  0fb79b80000000          movzx    ebx, word ptr [ebx + 0x80]     
  0x001EBDCA  8dbe18040000            lea      edi, [esi + 0x418]             
  0x001EBDD0  8b07                    mov      eax, dword ptr [edi]           
  0x001EBDD2  33d8                    xor      ebx, eax                       
  0x001EBDD4  81e300800000            and      ebx, 0x8000                    
  0x001EBDDA  2bc3                    sub      eax, ebx                       
  0x001EBDDC  0500000100              add      eax, 0x10000                   
  0x001EBDE1  8907                    mov      dword ptr [edi], eax           
  0x001EBDE3  c7410c20000000          mov      dword ptr [ecx + 0xc], 0x20    
  0x001EBDEA  83e2df                  and      edx, 0xffffffdf                
  0x001EBDED  5b                      pop      ebx                            
                                        ; XREF: 0x001EBDBD (cond_jump)
  0x001EBDEE  85d2                    test     edx, edx                       
  0x001EBDF0  7419                    je       0x1ebe0b                       
  0x001EBDF2  6a00                    push     0                              
  0x001EBDF4  899638040000            mov      dword ptr [esi + 0x438], edx   
  0x001EBDFA  6a00                    push     0                              
  0x001EBDFC  81c640040000            add      esi, 0x440                     
  0x001EBE02  56                      push     esi                            
  0x001EBE03  ff1560d21e00            call     dword ptr [0x1ed260]           ; -> xbox_KeInsertQueueDpc
  0x001EBE09  eb09                    jmp      0x1ebe14                       
                                        ; XREF: 0x001EBDF0 (cond_jump)
  0x001EBE0B  8b06                    mov      eax, dword ptr [esi]           
  0x001EBE0D  c7401000000080          mov      dword ptr [eax + 0x10], 0x80000000 
                                        ; XREF: 0x001EBE09 (jump)
  0x001EBE14  b001                    mov      al, 1                          
  0x001EBE16  eb02                    jmp      0x1ebe1a                       
                                        ; XREF: 0x001EBD9F (cond_jump), 0x001EBDA8 (cond_jump)
  0x001EBE18  32c0                    xor      al, al                         
                                        ; XREF: 0x001EBE16 (jump)
  0x001EBE1A  5f                      pop      edi                            
  0x001EBE1B  5e                      pop      esi                            
  0x001EBE1C  c20800                  ret      8                              

; ============================================================
; Function: sub_001EBE1F
; Start: 0x001EBE1F  End: 0x001EBE43  Size: 36 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EA857, sub_001EAA4A, sub_001EC34A, sub_001EC96A, sub_001EC9C4
; ============================================================
sub_001EBE1F:
  0x001EBE1F  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001EBE22  8b9118040000            mov      edx, dword ptr [ecx + 0x418]   
  0x001EBE28  0fb78880000000          movzx    ecx, word ptr [eax + 0x80]     
  0x001EBE2F  8bc1                    mov      eax, ecx                       
  0x001EBE31  33c2                    xor      eax, edx                       
  0x001EBE33  81e1ff7f0000            and      ecx, 0x7fff                    
  0x001EBE39  2500800000              and      eax, 0x8000                    
  0x001EBE3E  0bca                    or       ecx, edx                       
  0x001EBE40  03c1                    add      eax, ecx                       
  0x001EBE42  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EBE43
; Start: 0x001EBE43  End: 0x001EBEBF  Size: 124 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F7A
; ============================================================
sub_001EBE43:
  0x001EBE43  53                      push     ebx                            
  0x001EBE44  56                      push     esi                            
  0x001EBE45  57                      push     edi                            
  0x001EBE46  8b7c2410                mov      edi, dword ptr [esp + 0x10]    
  0x001EBE4A  8bf2                    mov      esi, edx                       
  0x001EBE4C  fe4e27                  dec      byte ptr [esi + 0x27]          
  0x001EBE4F  8b4718                  mov      eax, dword ptr [edi + 0x18]    
  0x001EBE52  85c0                    test     eax, eax                       
  0x001EBE54  8bd9                    mov      ebx, ecx                       
  0x001EBE56  740e                    je       0x1ebe66                       
  0x001EBE58  0fb74f20                movzx    ecx, word ptr [edi + 0x20]     
  0x001EBE5C  6a01                    push     1                              
  0x001EBE5E  51                      push     ecx                            
  0x001EBE5F  50                      push     eax                            
  0x001EBE60  ff155cd21e00            call     dword ptr [0x1ed25c]           ; -> xbox_MmLockUnlockBufferPages
                                        ; XREF: 0x001EBE56 (cond_jump)
  0x001EBE66  f6472201                test     byte ptr [edi + 0x22], 1       
  0x001EBE6A  7443                    je       0x1ebeaf                       
  0x001EBE6C  8b832c040000            mov      eax, dword ptr [ebx + 0x42c]   
  0x001EBE72  33c9                    xor      ecx, ecx                       
  0x001EBE74  85c0                    test     eax, eax                       
  0x001EBE76  7437                    je       0x1ebeaf                       
                                        ; XREF: 0x001EBE83 (cond_jump)
  0x001EBE78  3bf8                    cmp      edi, eax                       
  0x001EBE7A  7409                    je       0x1ebe85                       
  0x001EBE7C  8bc8                    mov      ecx, eax                       
  0x001EBE7E  8b4024                  mov      eax, dword ptr [eax + 0x24]    
  0x001EBE81  85c0                    test     eax, eax                       
  0x001EBE83  75f3                    jne      0x1ebe78                       
                                        ; XREF: 0x001EBE7A (cond_jump)
  0x001EBE85  85c0                    test     eax, eax                       
  0x001EBE87  7426                    je       0x1ebeaf                       
  0x001EBE89  85c9                    test     ecx, ecx                       
  0x001EBE8B  750b                    jne      0x1ebe98                       
  0x001EBE8D  8b4824                  mov      ecx, dword ptr [eax + 0x24]    
  0x001EBE90  898b2c040000            mov      dword ptr [ebx + 0x42c], ecx   
  0x001EBE96  eb06                    jmp      0x1ebe9e                       
                                        ; XREF: 0x001EBE8B (cond_jump)
  0x001EBE98  8b5024                  mov      edx, dword ptr [eax + 0x24]    
  0x001EBE9B  895124                  mov      dword ptr [ecx + 0x24], edx    
                                        ; XREF: 0x001EBE96 (jump)
  0x001EBE9E  83602400                and      dword ptr [eax + 0x24], 0      
  0x001EBEA2  fe4e20                  dec      byte ptr [esi + 0x20]          
  0x001EBEA5  7508                    jne      0x1ebeaf                       
  0x001EBEA7  806610df                and      byte ptr [esi + 0x10], 0xdf    
  0x001EBEAB  806601bf                and      byte ptr [esi + 1], 0xbf       
                                        ; XREF: 0x001EBE6A (cond_jump), 0x001EBE76 (cond_jump), 0x001EBE87 (cond_jump), 0x001EBEA5 (cond_jump)
  0x001EBEAF  804f2208                or       byte ptr [edi + 0x22], 8       
  0x001EBEB3  57                      push     edi                            
  0x001EBEB4  e8c1c0ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EBEB9  5f                      pop      edi                            
  0x001EBEBA  5e                      pop      esi                            
  0x001EBEBB  5b                      pop      ebx                            
  0x001EBEBC  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001EBEBF
; Start: 0x001EBEBF  End: 0x001EBEF0  Size: 49 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001EBEBF:
  0x001EBEBF  0fb64211                movzx    eax, byte ptr [edx + 0x11]     
  0x001EBEC3  83e800                  sub      eax, 0                         
  0x001EBEC6  741c                    je       0x1ebee4                       
  0x001EBEC8  48                      dec      eax                            
  0x001EBEC9  48                      dec      eax                            
  0x001EBECA  740c                    je       0x1ebed8                       
  0x001EBECC  48                      dec      eax                            
  0x001EBECD  7521                    jne      0x1ebef0                       
  0x001EBECF  66ff4a24                dec      word ptr [edx + 0x24]          
  0x001EBED3  e9a50f0000              jmp      0x1ece7d                       ; -> sub_001ECE7D
                                        ; XREF: 0x001EBECA (cond_jump)
  0x001EBED8  66ff05064fbf00          inc      word ptr [0xbf4f06]            
  0x001EBEDF  e9ec0f0000              jmp      0x1eced0                       ; -> sub_001ECED0
                                        ; XREF: 0x001EBEC6 (cond_jump)
  0x001EBEE4  66ff05024fbf00          inc      word ptr [0xbf4f02]            
  0x001EBEEB  e92d100000              jmp      0x1ecf1d                       ; -> sub_001ECF1D
; end of function
                                        ; XREF: 0x001EBECD (cond_jump)
  0x001EBEF0  c3                      ret                                     

; ============================================================
; Function: sub_001EBEF1
; Start: 0x001EBEF1  End: 0x001EBF60  Size: 111 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001EBFE5
; ============================================================
sub_001EBEF1:
  0x001EBEF1  55                      push     ebp                            
  0x001EBEF2  8bec                    mov      ebp, esp                       
  0x001EBEF4  83ec10                  sub      esp, 0x10                      
  0x001EBEF7  8b02                    mov      eax, dword ptr [edx]           
  0x001EBEF9  53                      push     ebx                            
  0x001EBEFA  8b5a18                  mov      ebx, dword ptr [edx + 0x18]    
  0x001EBEFD  56                      push     esi                            
  0x001EBEFE  c1e81c                  shr      eax, 0x1c                      
  0x001EBF01  83f809                  cmp      eax, 9                         
  0x001EBF04  57                      push     edi                            
  0x001EBF05  8b7a14                  mov      edi, dword ptr [edx + 0x14]    
  0x001EBF08  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001EBF0B  895df0                  mov      dword ptr [ebp - 0x10], ebx    
  0x001EBF0E  c645ff01                mov      byte ptr [ebp - 1], 1          
  0x001EBF12  754c                    jne      0x1ebf60                       
  0x001EBF14  807b1d00                cmp      byte ptr [ebx + 0x1d], 0       
  0x001EBF18  7446                    je       0x1ebf60                       
  0x001EBF1A  8b4204                  mov      eax, dword ptr [edx + 4]       
  0x001EBF1D  85c0                    test     eax, eax                       
  0x001EBF1F  742e                    je       0x1ebf4f                       
  0x001EBF21  8b4a0c                  mov      ecx, dword ptr [edx + 0xc]     
  0x001EBF24  beff0f0000              mov      esi, 0xfff                     
  0x001EBF29  23c6                    and      eax, esi                       
  0x001EBF2B  23ce                    and      ecx, esi                       
  0x001EBF2D  3bc8                    cmp      ecx, eax                       
  0x001EBF2F  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001EBF32  7c0b                    jl       0x1ebf3f                       
  0x001EBF34  0fb6421d                movzx    eax, byte ptr [edx + 0x1d]     
  0x001EBF38  2bc1                    sub      eax, ecx                       
  0x001EBF3A  0345f4                  add      eax, dword ptr [ebp - 0xc]     
  0x001EBF3D  eb0d                    jmp      0x1ebf4c                       
                                        ; XREF: 0x001EBF32 (cond_jump)
  0x001EBF3F  0fb6721d                movzx    esi, byte ptr [edx + 0x1d]     
  0x001EBF43  2bf1                    sub      esi, ecx                       
  0x001EBF45  8d840600f0ffff          lea      eax, [esi + eax - 0x1000]      
                                        ; XREF: 0x001EBF3D (jump)
  0x001EBF4C  48                      dec      eax                            
  0x001EBF4D  eb04                    jmp      0x1ebf53                       
                                        ; XREF: 0x001EBF1F (cond_jump)
  0x001EBF4F  0fb6421d                movzx    eax, byte ptr [edx + 0x1d]     
                                        ; XREF: 0x001EBF4D (jump)
  0x001EBF53  014314                  add      dword ptr [ebx + 0x14], eax    
  0x001EBF56  83630400                and      dword ptr [ebx + 4], 0         
  0x001EBF5A  8065ff00                and      byte ptr [ebp - 1], 0          
  0x001EBF5E  eb19                    jmp      0x1ebf79                       
; end of function
                                        ; XREF: 0x001EBF12 (cond_jump), 0x001EBF18 (cond_jump)
  0x001EBF60  83f80f                  cmp      eax, 0xf                       
  0x001EBF63  7507                    jne      0x1ebf6c                       
  0x001EBF65  c743040f0000c0          mov      dword ptr [ebx + 4], 0xc000000f 
                                        ; XREF: 0x001EBF63 (cond_jump)
  0x001EBF6C  8b02                    mov      eax, dword ptr [edx]           
  0x001EBF6E  c1e81c                  shr      eax, 0x1c                      
  0x001EBF71  0d000000c0              or       eax, 0xc0000000                
  0x001EBF76  894304                  mov      dword ptr [ebx + 4], eax       
                                        ; XREF: 0x001EBF5E (jump)
  0x001EBF79  8b7708                  mov      esi, dword ptr [edi + 8]       
  0x001EBF7C  83e6f0                  and      esi, 0xfffffff0                
                                        ; XREF: 0x001EBFAE (cond_jump)
  0x001EBF7F  8a5a1c                  mov      bl, byte ptr [edx + 0x1c]      
  0x001EBF82  52                      push     edx                            
  0x001EBF83  80e302                  and      bl, 2                          
  0x001EBF86  e879f9ffff              call     0x1eb904                       ; -> sub_001EB904
  0x001EBF8B  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EBF8E  8bd7                    mov      edx, edi                       
  0x001EBF90  e82affffff              call     0x1ebebf                       ; -> sub_001EBEBF
  0x001EBF95  a1e04ebf00              mov      eax, dword ptr [0xbf4ee0]      
  0x001EBF9A  8d1430                  lea      edx, [eax + esi]               
  0x001EBF9D  807a1e02                cmp      byte ptr [edx + 0x1e], 2       
  0x001EBFA1  8b7208                  mov      esi, dword ptr [edx + 8]       
  0x001EBFA4  7506                    jne      0x1ebfac                       
  0x001EBFA6  807dff00                cmp      byte ptr [ebp - 1], 0          
  0x001EBFAA  7404                    je       0x1ebfb0                       
                                        ; XREF: 0x001EBFA4 (cond_jump)
  0x001EBFAC  84db                    test     bl, bl                         
  0x001EBFAE  74cf                    je       0x1ebf7f                       
                                        ; XREF: 0x001EBFAA (cond_jump)
  0x001EBFB0  8b4210                  mov      eax, dword ptr [edx + 0x10]    
  0x001EBFB3  334708                  xor      eax, dword ptr [edi + 8]       
  0x001EBFB6  83e00f                  and      eax, 0xf                       
  0x001EBFB9  334210                  xor      eax, dword ptr [edx + 0x10]    
  0x001EBFBC  84db                    test     bl, bl                         
  0x001EBFBE  894708                  mov      dword ptr [edi + 8], eax       
  0x001EBFC1  740d                    je       0x1ebfd0                       
  0x001EBFC3  ff75f0                  push     dword ptr [ebp - 0x10]         
  0x001EBFC6  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EBFC9  8bd7                    mov      edx, edi                       
  0x001EBFCB  e873feffff              call     0x1ebe43                       ; -> sub_001EBE43
                                        ; XREF: 0x001EBFC1 (cond_jump)
  0x001EBFD0  807f1100                cmp      byte ptr [edi + 0x11], 0       
  0x001EBFD4  7406                    je       0x1ebfdc                       
  0x001EBFD6  807dff00                cmp      byte ptr [ebp - 1], 0          
  0x001EBFDA  7504                    jne      0x1ebfe0                       
                                        ; XREF: 0x001EBFD4 (cond_jump)
  0x001EBFDC  836708fe                and      dword ptr [edi + 8], 0xfffffffe 
                                        ; XREF: 0x001EBFDA (cond_jump)
  0x001EBFE0  5f                      pop      edi                            
  0x001EBFE1  5e                      pop      esi                            
  0x001EBFE2  5b                      pop      ebx                            
  0x001EBFE3  c9                      leave                                   
  0x001EBFE4  c3                      ret                                     

; ============================================================
; Function: sub_001EBFE5
; Start: 0x001EBFE5  End: 0x001EC02C  Size: 71 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB904, sub_001EBEF1
; Called by: sub_001EC091, sub_001EC193, sub_001EC34A
; ============================================================
sub_001EBFE5:
  0x001EBFE5  55                      push     ebp                            
  0x001EBFE6  8bec                    mov      ebp, esp                       
  0x001EBFE8  51                      push     ecx                            
  0x001EBFE9  51                      push     ecx                            
  0x001EBFEA  56                      push     esi                            
  0x001EBFEB  8bf2                    mov      esi, edx                       
  0x001EBFED  807e1e01                cmp      byte ptr [esi + 0x1e], 1       
  0x001EBFF1  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001EBFF4  57                      push     edi                            
  0x001EBFF5  8b7e18                  mov      edi, dword ptr [esi + 0x18]    
  0x001EBFF8  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001EBFFB  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001EBFFE  751a                    jne      0x1ec01a                       
  0x001EC000  8b460c                  mov      eax, dword ptr [esi + 0xc]     
  0x001EC003  8b0de04ebf00            mov      ecx, dword ptr [0xbf4ee0]      
  0x001EC009  8d4408f9                lea      eax, [eax + ecx - 7]           
  0x001EC00D  50                      push     eax                            
  0x001EC00E  e8f1f8ffff              call     0x1eb904                       ; -> sub_001EB904
  0x001EC013  66ff05024fbf00          inc      word ptr [0xbf4f02]            
                                        ; XREF: 0x001EBFFE (cond_jump)
  0x001EC01A  f64603f0                test     byte ptr [esi + 3], 0xf0       
  0x001EC01E  740c                    je       0x1ec02c                       
  0x001EC020  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001EC023  8bd6                    mov      edx, esi                       
  0x001EC025  e8c7feffff              call     0x1ebef1                       ; -> sub_001EBEF1
  0x001EC02A  eb61                    jmp      0x1ec08d                       
; end of function
                                        ; XREF: 0x001EC01E (cond_jump)
  0x001EC02C  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001EC02F  85c0                    test     eax, eax                       
  0x001EC031  53                      push     ebx                            
  0x001EC032  7426                    je       0x1ec05a                       
  0x001EC034  8b4e0c                  mov      ecx, dword ptr [esi + 0xc]     
  0x001EC037  baff0f0000              mov      edx, 0xfff                     
  0x001EC03C  23c2                    and      eax, edx                       
  0x001EC03E  8bd8                    mov      ebx, eax                       
  0x001EC040  0fb6461d                movzx    eax, byte ptr [esi + 0x1d]     
  0x001EC044  23ca                    and      ecx, edx                       
  0x001EC046  2bc1                    sub      eax, ecx                       
  0x001EC048  3bcb                    cmp      ecx, ebx                       
  0x001EC04A  7c04                    jl       0x1ec050                       
  0x001EC04C  03c3                    add      eax, ebx                       
  0x001EC04E  eb07                    jmp      0x1ec057                       
                                        ; XREF: 0x001EC04A (cond_jump)
  0x001EC050  8d841800f0ffff          lea      eax, [eax + ebx - 0x1000]      
                                        ; XREF: 0x001EC04E (jump)
  0x001EC057  48                      dec      eax                            
  0x001EC058  eb04                    jmp      0x1ec05e                       
                                        ; XREF: 0x001EC032 (cond_jump)
  0x001EC05A  0fb6461d                movzx    eax, byte ptr [esi + 0x1d]     
                                        ; XREF: 0x001EC058 (jump)
  0x001EC05E  014714                  add      dword ptr [edi + 0x14], eax    
  0x001EC061  8a5e1c                  mov      bl, byte ptr [esi + 0x1c]      
  0x001EC064  56                      push     esi                            
  0x001EC065  80e302                  and      bl, 2                          
  0x001EC068  e897f8ffff              call     0x1eb904                       ; -> sub_001EB904
  0x001EC06D  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC070  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001EC073  e847feffff              call     0x1ebebf                       ; -> sub_001EBEBF
  0x001EC078  84db                    test     bl, bl                         
  0x001EC07A  5b                      pop      ebx                            
  0x001EC07B  7410                    je       0x1ec08d                       
  0x001EC07D  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC080  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001EC083  83670400                and      dword ptr [edi + 4], 0         
  0x001EC087  57                      push     edi                            
  0x001EC088  e8b6fdffff              call     0x1ebe43                       ; -> sub_001EBE43
                                        ; XREF: 0x001EC02A (jump), 0x001EC07B (cond_jump)
  0x001EC08D  5f                      pop      edi                            
  0x001EC08E  5e                      pop      esi                            
  0x001EC08F  c9                      leave                                   
  0x001EC090  c3                      ret                                     

; ============================================================
; Function: sub_001EC091
; Start: 0x001EC091  End: 0x001EC193  Size: 258 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EBFE5
; Called by: sub_001EC34A
; ============================================================
sub_001EC091:
  0x001EC091  55                      push     ebp                            
  0x001EC092  8bec                    mov      ebp, esp                       
  0x001EC094  83ec18                  sub      esp, 0x18                      
  0x001EC097  53                      push     ebx                            
  0x001EC098  57                      push     edi                            
  0x001EC099  8bfa                    mov      edi, edx                       
  0x001EC09B  8bd9                    mov      ebx, ecx                       
  0x001EC09D  33d2                    xor      edx, edx                       
  0x001EC09F  39932c040000            cmp      dword ptr [ebx + 0x42c], edx   
  0x001EC0A5  897dec                  mov      dword ptr [ebp - 0x14], edi    
  0x001EC0A8  895df8                  mov      dword ptr [ebp - 8], ebx       
  0x001EC0AB  8955fc                  mov      dword ptr [ebp - 4], edx       
  0x001EC0AE  0f84ce000000            je       0x1ec182                       
  0x001EC0B4  56                      push     esi                            
  0x001EC0B5  eb03                    jmp      0x1ec0ba                       
                                        ; XREF: 0x001EC17B (cond_jump)
  0x001EC0B7  8b7dec                  mov      edi, dword ptr [ebp - 0x14]    
                                        ; XREF: 0x001EC0B5 (jump)
  0x001EC0BA  8b8b2c040000            mov      ecx, dword ptr [ebx + 0x42c]   
  0x001EC0C0  8b4124                  mov      eax, dword ptr [ecx + 0x24]    
  0x001EC0C3  89832c040000            mov      dword ptr [ebx + 0x42c], eax   
  0x001EC0C9  8b7110                  mov      esi, dword ptr [ecx + 0x10]    
  0x001EC0CC  3b7e1c                  cmp      edi, dword ptr [esi + 0x1c]    
  0x001EC0CF  730b                    jae      0x1ec0dc                       
                                        ; XREF: 0x001EC0EC (jump)
  0x001EC0D1  895124                  mov      dword ptr [ecx + 0x24], edx    
  0x001EC0D4  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001EC0D7  e995000000              jmp      0x1ec171                       
                                        ; XREF: 0x001EC0CF (cond_jump)
  0x001EC0DC  8a4610                  mov      al, byte ptr [esi + 0x10]      
  0x001EC0DF  a840                    test     al, 0x40                       
  0x001EC0E1  740b                    je       0x1ec0ee                       
  0x001EC0E3  47                      inc      edi                            
  0x001EC0E4  24bf                    and      al, 0xbf                       
  0x001EC0E6  897e1c                  mov      dword ptr [esi + 0x1c], edi    
  0x001EC0E9  884610                  mov      byte ptr [esi + 0x10], al      
  0x001EC0EC  ebe3                    jmp      0x1ec0d1                       
                                        ; XREF: 0x001EC0E1 (cond_jump)
  0x001EC0EE  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EC0F1  8b3de04ebf00            mov      edi, dword ptr [0xbf4ee0]      
  0x001EC0F7  8365f400                and      dword ptr [ebp - 0xc], 0       
  0x001EC0FB  8945e8                  mov      dword ptr [ebp - 0x18], eax    
  0x001EC0FE  83e0f0                  and      eax, 0xfffffff0                
  0x001EC101  8d1407                  lea      edx, [edi + eax]               
  0x001EC104  3b4a18                  cmp      ecx, dword ptr [edx + 0x18]    
  0x001EC107  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001EC10A  7418                    je       0x1ec124                       
  0x001EC10C  8b5e04                  mov      ebx, dword ptr [esi + 4]       
                                        ; XREF: 0x001EC11F (cond_jump)
  0x001EC10F  3bc3                    cmp      eax, ebx                       
  0x001EC111  740e                    je       0x1ec121                       
  0x001EC113  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001EC116  8b4208                  mov      eax, dword ptr [edx + 8]       
  0x001EC119  8d1407                  lea      edx, [edi + eax]               
  0x001EC11C  3b4a18                  cmp      ecx, dword ptr [edx + 0x18]    
  0x001EC11F  75ee                    jne      0x1ec10f                       
                                        ; XREF: 0x001EC111 (cond_jump)
  0x001EC121  8b5df8                  mov      ebx, dword ptr [ebp - 8]       
                                        ; XREF: 0x001EC10A (cond_jump)
  0x001EC124  8b4208                  mov      eax, dword ptr [edx + 8]       
  0x001EC127  3345e8                  xor      eax, dword ptr [ebp - 0x18]    
  0x001EC12A  8bcb                    mov      ecx, ebx                       
  0x001EC12C  83e00f                  and      eax, 0xf                       
  0x001EC12F  334208                  xor      eax, dword ptr [edx + 8]       
  0x001EC132  894608                  mov      dword ptr [esi + 8], eax       
  0x001EC135  804a03f0                or       byte ptr [edx + 3], 0xf0       
  0x001EC139  e8a7feffff              call     0x1ebfe5                       ; -> sub_001EBFE5
  0x001EC13E  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001EC141  85c0                    test     eax, eax                       
  0x001EC143  741f                    je       0x1ec164                       
  0x001EC145  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001EC148  8b15e04ebf00            mov      edx, dword ptr [0xbf4ee0]      
  0x001EC14E  83e1f0                  and      ecx, 0xfffffff0                
  0x001EC151  894c0208                mov      dword ptr [edx + eax + 8], ecx 
  0x001EC155  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EC158  3345f0                  xor      eax, dword ptr [ebp - 0x10]    
  0x001EC15B  83e00f                  and      eax, 0xf                       
  0x001EC15E  3345f0                  xor      eax, dword ptr [ebp - 0x10]    
  0x001EC161  894608                  mov      dword ptr [esi + 8], eax       
                                        ; XREF: 0x001EC143 (cond_jump)
  0x001EC164  fe4e20                  dec      byte ptr [esi + 0x20]          
  0x001EC167  7508                    jne      0x1ec171                       
  0x001EC169  806610df                and      byte ptr [esi + 0x10], 0xdf    
  0x001EC16D  806601bf                and      byte ptr [esi + 1], 0xbf       
                                        ; XREF: 0x001EC0D7 (jump), 0x001EC167 (cond_jump)
  0x001EC171  83bb2c04000000          cmp      dword ptr [ebx + 0x42c], 0     
  0x001EC178  8b55fc                  mov      edx, dword ptr [ebp - 4]       
  0x001EC17B  0f8536ffffff            jne      0x1ec0b7                       
  0x001EC181  5e                      pop      esi                            
                                        ; XREF: 0x001EC0AE (cond_jump)
  0x001EC182  33c0                    xor      eax, eax                       
  0x001EC184  85d2                    test     edx, edx                       
  0x001EC186  5f                      pop      edi                            
  0x001EC187  89932c040000            mov      dword ptr [ebx + 0x42c], edx   
  0x001EC18D  0f95c0                  setne    al                             
  0x001EC190  5b                      pop      ebx                            
  0x001EC191  c9                      leave                                   
  0x001EC192  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC193
; Start: 0x001EC193  End: 0x001EC1E9  Size: 86 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EB904, sub_001EBFE5
; Called by: sub_001EC1E9, sub_001EC270
; ============================================================
sub_001EC193:
  0x001EC193  53                      push     ebx                            
  0x001EC194  56                      push     esi                            
  0x001EC195  57                      push     edi                            
  0x001EC196  8bf2                    mov      esi, edx                       
  0x001EC198  8bf9                    mov      edi, ecx                       
  0x001EC19A  32db                    xor      bl, bl                         
                                        ; XREF: 0x001EC1E3 (cond_jump)
  0x001EC19C  8b4608                  mov      eax, dword ptr [esi + 8]       
  0x001EC19F  8bc8                    mov      ecx, eax                       
  0x001EC1A1  83e1f0                  and      ecx, 0xfffffff0                
  0x001EC1A4  743f                    je       0x1ec1e5                       
  0x001EC1A6  8b15e04ebf00            mov      edx, dword ptr [0xbf4ee0]      
  0x001EC1AC  03d1                    add      edx, ecx                       
  0x001EC1AE  3b4e04                  cmp      ecx, dword ptr [esi + 4]       
  0x001EC1B1  741c                    je       0x1ec1cf                       
  0x001EC1B3  8b4208                  mov      eax, dword ptr [edx + 8]       
  0x001EC1B6  804a03f0                or       byte ptr [edx + 3], 0xf0       
  0x001EC1BA  334608                  xor      eax, dword ptr [esi + 8]       
  0x001EC1BD  8bcf                    mov      ecx, edi                       
  0x001EC1BF  83e00f                  and      eax, 0xf                       
  0x001EC1C2  334208                  xor      eax, dword ptr [edx + 8]       
  0x001EC1C5  894608                  mov      dword ptr [esi + 8], eax       
  0x001EC1C8  e818feffff              call     0x1ebfe5                       ; -> sub_001EBFE5
  0x001EC1CD  eb12                    jmp      0x1ec1e1                       
                                        ; XREF: 0x001EC1B1 (cond_jump)
  0x001EC1CF  83660400                and      dword ptr [esi + 4], 0         
  0x001EC1D3  83e00f                  and      eax, 0xf                       
  0x001EC1D6  52                      push     edx                            
  0x001EC1D7  894608                  mov      dword ptr [esi + 8], eax       
  0x001EC1DA  e825f7ffff              call     0x1eb904                       ; -> sub_001EB904
  0x001EC1DF  b301                    mov      bl, 1                          
                                        ; XREF: 0x001EC1CD (jump)
  0x001EC1E1  84db                    test     bl, bl                         
  0x001EC1E3  74b7                    je       0x1ec19c                       
                                        ; XREF: 0x001EC1A4 (cond_jump)
  0x001EC1E5  5f                      pop      edi                            
  0x001EC1E6  5e                      pop      esi                            
  0x001EC1E7  5b                      pop      ebx                            
  0x001EC1E8  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC1E9
; Start: 0x001EC1E9  End: 0x001EC270  Size: 135 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F7A, sub_001EC193
; Called by: sub_001EC34A
; ============================================================
sub_001EC1E9:
  0x001EC1E9  51                      push     ecx                            
  0x001EC1EA  53                      push     ebx                            
  0x001EC1EB  55                      push     ebp                            
  0x001EC1EC  8bd9                    mov      ebx, ecx                       
  0x001EC1EE  33ed                    xor      ebp, ebp                       
  0x001EC1F0  39ab30040000            cmp      dword ptr [ebx + 0x430], ebp   
  0x001EC1F6  89542408                mov      dword ptr [esp + 8], edx       
  0x001EC1FA  7463                    je       0x1ec25f                       
  0x001EC1FC  56                      push     esi                            
  0x001EC1FD  57                      push     edi                            
                                        ; XREF: 0x001EC25B (cond_jump)
  0x001EC1FE  8bbb30040000            mov      edi, dword ptr [ebx + 0x430]   
  0x001EC204  8b4724                  mov      eax, dword ptr [edi + 0x24]    
  0x001EC207  898330040000            mov      dword ptr [ebx + 0x430], eax   
  0x001EC20D  8b7710                  mov      esi, dword ptr [edi + 0x10]    
  0x001EC210  3b561c                  cmp      edx, dword ptr [esi + 0x1c]    
  0x001EC213  7307                    jae      0x1ec21c                       
                                        ; XREF: 0x001EC22E (jump)
  0x001EC215  896f14                  mov      dword ptr [edi + 0x14], ebp    
  0x001EC218  8bef                    mov      ebp, edi                       
  0x001EC21A  eb38                    jmp      0x1ec254                       
                                        ; XREF: 0x001EC213 (cond_jump)
  0x001EC21C  8a4610                  mov      al, byte ptr [esi + 0x10]      
  0x001EC21F  a840                    test     al, 0x40                       
  0x001EC221  740d                    je       0x1ec230                       
  0x001EC223  8d4a01                  lea      ecx, [edx + 1]                 
  0x001EC226  24bf                    and      al, 0xbf                       
  0x001EC228  894e1c                  mov      dword ptr [esi + 0x1c], ecx    
  0x001EC22B  884610                  mov      byte ptr [esi + 0x10], al      
  0x001EC22E  ebe5                    jmp      0x1ec215                       
                                        ; XREF: 0x001EC221 (cond_jump)
  0x001EC230  8bd6                    mov      edx, esi                       
  0x001EC232  8bcb                    mov      ecx, ebx                       
  0x001EC234  e85affffff              call     0x1ec193                       ; -> sub_001EC193
  0x001EC239  fe4e20                  dec      byte ptr [esi + 0x20]          
  0x001EC23C  7508                    jne      0x1ec246                       
  0x001EC23E  806610df                and      byte ptr [esi + 0x10], 0xdf    
  0x001EC242  806601bf                and      byte ptr [esi + 1], 0xbf       
                                        ; XREF: 0x001EC23C (cond_jump)
  0x001EC246  83670400                and      dword ptr [edi + 4], 0         
  0x001EC24A  57                      push     edi                            
  0x001EC24B  e82abdffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EC250  8b542410                mov      edx, dword ptr [esp + 0x10]    
                                        ; XREF: 0x001EC21A (jump)
  0x001EC254  83bb3004000000          cmp      dword ptr [ebx + 0x430], 0     
  0x001EC25B  75a1                    jne      0x1ec1fe                       
  0x001EC25D  5f                      pop      edi                            
  0x001EC25E  5e                      pop      esi                            
                                        ; XREF: 0x001EC1FA (cond_jump)
  0x001EC25F  33c0                    xor      eax, eax                       
  0x001EC261  89ab30040000            mov      dword ptr [ebx + 0x430], ebp   
  0x001EC267  85ed                    test     ebp, ebp                       
  0x001EC269  5d                      pop      ebp                            
  0x001EC26A  0f95c0                  setne    al                             
  0x001EC26D  5b                      pop      ebx                            
  0x001EC26E  59                      pop      ecx                            
  0x001EC26F  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC270
; Start: 0x001EC270  End: 0x001EC34A  Size: 218 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001E7F7A, sub_001EC193, sub_001EC65B
; Called by: sub_001EC34A
; ============================================================
sub_001EC270:
  0x001EC270  55                      push     ebp                            
  0x001EC271  8bec                    mov      ebp, esp                       
  0x001EC273  83ec0c                  sub      esp, 0xc                       
  0x001EC276  53                      push     ebx                            
  0x001EC277  8bd9                    mov      ebx, ecx                       
  0x001EC279  33c9                    xor      ecx, ecx                       
  0x001EC27B  398b34040000            cmp      dword ptr [ebx + 0x434], ecx   
  0x001EC281  8955f8                  mov      dword ptr [ebp - 8], edx       
  0x001EC284  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001EC287  0f84ad000000            je       0x1ec33a                       
  0x001EC28D  56                      push     esi                            
  0x001EC28E  57                      push     edi                            
                                        ; XREF: 0x001EC332 (cond_jump)
  0x001EC28F  8bb334040000            mov      esi, dword ptr [ebx + 0x434]   
  0x001EC295  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001EC298  898334040000            mov      dword ptr [ebx + 0x434], eax   
  0x001EC29E  8b7e10                  mov      edi, dword ptr [esi + 0x10]    
  0x001EC2A1  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001EC2A4  3b471c                  cmp      eax, dword ptr [edi + 0x1c]    
  0x001EC2A7  7308                    jae      0x1ec2b1                       
                                        ; XREF: 0x001EC2BD (jump)
  0x001EC2A9  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001EC2AC  8975fc                  mov      dword ptr [ebp - 4], esi       
  0x001EC2AF  eb77                    jmp      0x1ec328                       
                                        ; XREF: 0x001EC2A7 (cond_jump)
  0x001EC2B1  8a4710                  mov      al, byte ptr [edi + 0x10]      
  0x001EC2B4  a840                    test     al, 0x40                       
  0x001EC2B6  7407                    je       0x1ec2bf                       
  0x001EC2B8  24bf                    and      al, 0xbf                       
  0x001EC2BA  884710                  mov      byte ptr [edi + 0x10], al      
  0x001EC2BD  ebea                    jmp      0x1ec2a9                       
                                        ; XREF: 0x001EC2B6 (cond_jump)
  0x001EC2BF  807e014a                cmp      byte ptr [esi + 1], 0x4a       
  0x001EC2C3  8bcb                    mov      ecx, ebx                       
  0x001EC2C5  7509                    jne      0x1ec2d0                       
  0x001EC2C7  8bd6                    mov      edx, esi                       
  0x001EC2C9  e88d030000              call     0x1ec65b                       ; -> sub_001EC65B
  0x001EC2CE  eb58                    jmp      0x1ec328                       
                                        ; XREF: 0x001EC2C5 (cond_jump)
  0x001EC2D0  8bd7                    mov      edx, edi                       
  0x001EC2D2  e8bcfeffff              call     0x1ec193                       ; -> sub_001EC193
  0x001EC2D7  8b5618                  mov      edx, dword ptr [esi + 0x18]    
  0x001EC2DA  85d2                    test     edx, edx                       
  0x001EC2DC  7432                    je       0x1ec310                       
  0x001EC2DE  8b0f                    mov      ecx, dword ptr [edi]           
  0x001EC2E0  894df4                  mov      dword ptr [ebp - 0xc], ecx     
  0x001EC2E3  c1e907                  shr      ecx, 7                         
  0x001EC2E6  33c0                    xor      eax, eax                       
  0x001EC2E8  83e10f                  and      ecx, 0xf                       
  0x001EC2EB  40                      inc      eax                            
  0x001EC2EC  d3e0                    shl      eax, cl                        
  0x001EC2EE  8b4df4                  mov      ecx, dword ptr [ebp - 0xc]     
  0x001EC2F1  81e100180000            and      ecx, 0x1800                    
  0x001EC2F7  81f900100000            cmp      ecx, 0x1000                    
  0x001EC2FD  7503                    jne      0x1ec302                       
  0x001EC2FF  c1e010                  shl      eax, 0x10                      
                                        ; XREF: 0x001EC2FD (cond_jump)
  0x001EC302  f6470802                test     byte ptr [edi + 8], 2          
  0x001EC306  7404                    je       0x1ec30c                       
  0x001EC308  0902                    or       dword ptr [edx], eax           
  0x001EC30A  eb04                    jmp      0x1ec310                       
                                        ; XREF: 0x001EC306 (cond_jump)
  0x001EC30C  f7d0                    not      eax                            
  0x001EC30E  2102                    and      dword ptr [edx], eax           
                                        ; XREF: 0x001EC2DC (cond_jump), 0x001EC30A (jump)
  0x001EC310  a1e84ebf00              mov      eax, dword ptr [0xbf4ee8]      
  0x001EC315  894718                  mov      dword ptr [edi + 0x18], eax    
  0x001EC318  893de84ebf00            mov      dword ptr [0xbf4ee8], edi      
  0x001EC31E  83660400                and      dword ptr [esi + 4], 0         
  0x001EC322  56                      push     esi                            
  0x001EC323  e852bcffff              call     0x1e7f7a                       ; -> sub_001E7F7A
                                        ; XREF: 0x001EC2AF (jump), 0x001EC2CE (jump)
  0x001EC328  83bb3404000000          cmp      dword ptr [ebx + 0x434], 0     
  0x001EC32F  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001EC332  0f8557ffffff            jne      0x1ec28f                       
  0x001EC338  5f                      pop      edi                            
  0x001EC339  5e                      pop      esi                            
                                        ; XREF: 0x001EC287 (cond_jump)
  0x001EC33A  33c0                    xor      eax, eax                       
  0x001EC33C  85c9                    test     ecx, ecx                       
  0x001EC33E  898b34040000            mov      dword ptr [ebx + 0x434], ecx   
  0x001EC344  0f95c0                  setne    al                             
  0x001EC347  5b                      pop      ebx                            
  0x001EC348  c9                      leave                                   
  0x001EC349  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC34A
; Start: 0x001EC34A  End: 0x001EC458  Size: 270 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EB845, sub_001EBE1F, sub_001EBFE5, sub_001EC091, sub_001EC1E9, sub_001EC270, sub_001EC9C4
; ============================================================
sub_001EC34A:
  0x001EC34A  55                      push     ebp                            
  0x001EC34B  8bec                    mov      ebp, esp                       
  0x001EC34D  51                      push     ecx                            
  0x001EC34E  51                      push     ecx                            
  0x001EC34F  53                      push     ebx                            
  0x001EC350  56                      push     esi                            
  0x001EC351  8b750c                  mov      esi, dword ptr [ebp + 0xc]     
  0x001EC354  80650f00                and      byte ptr [ebp + 0xf], 0        
  0x001EC358  8b1e                    mov      ebx, dword ptr [esi]           
  0x001EC35A  8d8638040000            lea      eax, [esi + 0x438]             
  0x001EC360  8b08                    mov      ecx, dword ptr [eax]           
  0x001EC362  57                      push     edi                            
  0x001EC363  33ff                    xor      edi, edi                       
  0x001EC365  2138                    and      dword ptr [eax], edi           
  0x001EC367  f6c102                  test     cl, 2                          
  0x001EC36A  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001EC36D  7457                    je       0x1ec3c6                       
  0x001EC36F  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001EC372  81c184000000            add      ecx, 0x84                      
  0x001EC378  8b01                    mov      eax, dword ptr [ecx]           
  0x001EC37A  83e0f0                  and      eax, 0xfffffff0                
  0x001EC37D  8939                    mov      dword ptr [ecx], edi           
  0x001EC37F  7431                    je       0x1ec3b2                       
                                        ; XREF: 0x001EC393 (cond_jump)
  0x001EC381  8b0de04ebf00            mov      ecx, dword ptr [0xbf4ee0]      
  0x001EC387  03c8                    add      ecx, eax                       
  0x001EC389  8b4108                  mov      eax, dword ptr [ecx + 8]       
  0x001EC38C  85c0                    test     eax, eax                       
  0x001EC38E  897908                  mov      dword ptr [ecx + 8], edi       
  0x001EC391  8bf9                    mov      edi, ecx                       
  0x001EC393  75ec                    jne      0x1ec381                       
                                        ; XREF: 0x001EC3B0 (cond_jump)
  0x001EC395  8bd7                    mov      edx, edi                       
  0x001EC397  f6420201                test     byte ptr [edx + 2], 1          
  0x001EC39B  8b7f08                  mov      edi, dword ptr [edi + 8]       
  0x001EC39E  8bce                    mov      ecx, esi                       
  0x001EC3A0  7407                    je       0x1ec3a9                       
  0x001EC3A2  e81d060000              call     0x1ec9c4                       ; -> sub_001EC9C4
  0x001EC3A7  eb05                    jmp      0x1ec3ae                       
                                        ; XREF: 0x001EC3A0 (cond_jump)
  0x001EC3A9  e837fcffff              call     0x1ebfe5                       ; -> sub_001EBFE5
                                        ; XREF: 0x001EC3A7 (jump)
  0x001EC3AE  85ff                    test     edi, edi                       
  0x001EC3B0  75e3                    jne      0x1ec395                       
                                        ; XREF: 0x001EC37F (cond_jump)
  0x001EC3B2  8365fcfd                and      dword ptr [ebp - 4], 0xfffffffd 
  0x001EC3B6  c7430c02000000          mov      dword ptr [ebx + 0xc], 2       
  0x001EC3BD  8b06                    mov      eax, dword ptr [esi]           
  0x001EC3BF  c7400806000000          mov      dword ptr [eax + 8], 6         
                                        ; XREF: 0x001EC36D (cond_jump)
  0x001EC3C6  f645fc04                test     byte ptr [ebp - 4], 4          
  0x001EC3CA  6a04                    push     4                              
  0x001EC3CC  5f                      pop      edi                            
  0x001EC3CD  740a                    je       0x1ec3d9                       
  0x001EC3CF  8365fcfb                and      dword ptr [ebp - 4], 0xfffffffb 
  0x001EC3D3  897b0c                  mov      dword ptr [ebx + 0xc], edi     
  0x001EC3D6  897b14                  mov      dword ptr [ebx + 0x14], edi    
                                        ; XREF: 0x001EC3CD (cond_jump)
  0x001EC3D9  8bce                    mov      ecx, esi                       
  0x001EC3DB  e83ffaffff              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EC3E0  8bd0                    mov      edx, eax                       
  0x001EC3E2  8bce                    mov      ecx, esi                       
  0x001EC3E4  8955f8                  mov      dword ptr [ebp - 8], edx       
  0x001EC3E7  e8a5fcffff              call     0x1ec091                       ; -> sub_001EC091
  0x001EC3EC  84c0                    test     al, al                         
  0x001EC3EE  7404                    je       0x1ec3f4                       
  0x001EC3F0  c6450f01                mov      byte ptr [ebp + 0xf], 1        
                                        ; XREF: 0x001EC3EE (cond_jump)
  0x001EC3F4  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC3F7  8bce                    mov      ecx, esi                       
  0x001EC3F9  e8ebfdffff              call     0x1ec1e9                       ; -> sub_001EC1E9
  0x001EC3FE  84c0                    test     al, al                         
  0x001EC400  7404                    je       0x1ec406                       
  0x001EC402  c6450f01                mov      byte ptr [ebp + 0xf], 1        
                                        ; XREF: 0x001EC400 (cond_jump)
  0x001EC406  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC409  8bce                    mov      ecx, esi                       
  0x001EC40B  e860feffff              call     0x1ec270                       ; -> sub_001EC270
  0x001EC410  84c0                    test     al, al                         
  0x001EC412  7404                    je       0x1ec418                       
  0x001EC414  c6450f01                mov      byte ptr [ebp + 0xf], 1        
                                        ; XREF: 0x001EC412 (cond_jump)
  0x001EC418  807d0f00                cmp      byte ptr [ebp + 0xf], 0        
  0x001EC41C  740a                    je       0x1ec428                       
  0x001EC41E  8b06                    mov      eax, dword ptr [esi]           
  0x001EC420  89780c                  mov      dword ptr [eax + 0xc], edi     
  0x001EC423  8b06                    mov      eax, dword ptr [esi]           
  0x001EC425  897810                  mov      dword ptr [eax + 0x10], edi    
                                        ; XREF: 0x001EC41C (cond_jump)
  0x001EC428  f645fc40                test     byte ptr [ebp - 4], 0x40       
  0x001EC42C  7412                    je       0x1ec440                       
  0x001EC42E  8bce                    mov      ecx, esi                       
  0x001EC430  e810f4ffff              call     0x1eb845                       ; -> sub_001EB845
  0x001EC435  8365fcbf                and      dword ptr [ebp - 4], 0xffffffbf 
  0x001EC439  c7430c40000000          mov      dword ptr [ebx + 0xc], 0x40    
                                        ; XREF: 0x001EC42C (cond_jump)
  0x001EC440  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001EC443  85c0                    test     eax, eax                       
  0x001EC445  7403                    je       0x1ec44a                       
  0x001EC447  89430c                  mov      dword ptr [ebx + 0xc], eax     
                                        ; XREF: 0x001EC445 (cond_jump)
  0x001EC44A  5f                      pop      edi                            
  0x001EC44B  5e                      pop      esi                            
  0x001EC44C  c7431000000080          mov      dword ptr [ebx + 0x10], 0x80000000 
  0x001EC453  5b                      pop      ebx                            
  0x001EC454  c9                      leave                                   
  0x001EC455  c21000                  ret      0x10                           
; end of function

; ============================================================
; Function: sub_001EC458
; Start: 0x001EC458  End: 0x001EC46A  Size: 18 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001EC46A
; ============================================================
sub_001EC458:
  0x001EC458  a1084fbf00              mov      eax, dword ptr [0xbf4f08]      
  0x001EC45D  85c0                    test     eax, eax                       
  0x001EC45F  7408                    je       0x1ec469                       
  0x001EC461  8b08                    mov      ecx, dword ptr [eax]           
  0x001EC463  890d084fbf00            mov      dword ptr [0xbf4f08], ecx      
                                        ; XREF: 0x001EC45F (cond_jump)
  0x001EC469  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC46A
; Start: 0x001EC46A  End: 0x001EC497  Size: 45 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EC458
; Called by: sub_001EAA4A
; ============================================================
sub_001EC46A:
  0x001EC46A  55                      push     ebp                            
  0x001EC46B  8bec                    mov      ebp, esp                       
  0x001EC46D  83ec14                  sub      esp, 0x14                      
  0x001EC470  a10c4fbf00              mov      eax, dword ptr [0xbf4f0c]      
  0x001EC475  53                      push     ebx                            
  0x001EC476  57                      push     edi                            
  0x001EC477  8bda                    mov      ebx, edx                       
  0x001EC479  894dec                  mov      dword ptr [ebp - 0x14], ecx    
  0x001EC47C  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001EC47F  e8d4ffffff              call     0x1ec458                       ; -> sub_001EC458
  0x001EC484  8bf8                    mov      edi, eax                       
  0x001EC486  85ff                    test     edi, edi                       
  0x001EC488  897df4                  mov      dword ptr [ebp - 0xc], edi     
  0x001EC48B  750a                    jne      0x1ec497                       
  0x001EC48D  bf00010080              mov      edi, 0x80000100                
  0x001EC492  e977010000              jmp      0x1ec60e                       
; end of function
                                        ; XREF: 0x001EC48B (cond_jump)
  0x001EC497  56                      push     esi                            
  0x001EC498  8b75f8                  mov      esi, dword ptr [ebp - 8]       
  0x001EC49B  c1e606                  shl      esi, 6                         
  0x001EC49E  33c0                    xor      eax, eax                       
  0x001EC4A0  8d4e30                  lea      ecx, [esi + 0x30]              
  0x001EC4A3  8bd1                    mov      edx, ecx                       
  0x001EC4A5  c1e902                  shr      ecx, 2                         
  0x001EC4A8  f3ab                    rep stosd dword ptr es:[edi], eax        
  0x001EC4AA  8bca                    mov      ecx, edx                       
  0x001EC4AC  83e103                  and      ecx, 3                         
  0x001EC4AF  f3aa                    rep stosb byte ptr es:[edi], al          
  0x001EC4B1  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001EC4B4  03f0                    add      esi, eax                       
  0x001EC4B6  89462c                  mov      dword ptr [esi + 0x2c], eax    
  0x001EC4B9  8bc6                    mov      eax, esi                       
  0x001EC4BB  2b05e04ebf00            sub      eax, dword ptr [0xbf4ee0]      
  0x001EC4C1  c6461101                mov      byte ptr [esi + 0x11], 1       
  0x001EC4C5  894614                  mov      dword ptr [esi + 0x14], eax    
  0x001EC4C8  33c0                    xor      eax, eax                       
  0x001EC4CA  c6461301                mov      byte ptr [esi + 0x13], 1       
  0x001EC4CE  668b4316                mov      ax, word ptr [ebx + 0x16]      
  0x001EC4D2  6a00                    push     0                              
  0x001EC4D4  6a01                    push     1                              
  0x001EC4D6  50                      push     eax                            
  0x001EC4D7  e8b2baffff              call     0x1e7f8e                       ; -> sub_001E7F8E
  0x001EC4DC  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC4DF  66894622                mov      word ptr [esi + 0x22], ax      
  0x001EC4E3  885624                  mov      byte ptr [esi + 0x24], dl      
  0x001EC4E6  8a4318                  mov      al, byte ptr [ebx + 0x18]      
  0x001EC4E9  2401                    and      al, 1                          
  0x001EC4EB  884610                  mov      byte ptr [esi + 0x10], al      
  0x001EC4EE  33c0                    xor      eax, eax                       
  0x001EC4F0  8a4314                  mov      al, byte ptr [ebx + 0x14]      
  0x001EC4F3  6a00                    push     0                              
  0x001EC4F5  3306                    xor      eax, dword ptr [esi]           
  0x001EC4F7  83e07f                  and      eax, 0x7f                      
  0x001EC4FA  3106                    xor      dword ptr [esi], eax           
  0x001EC4FC  0fb64315                movzx    eax, byte ptr [ebx + 0x15]     
  0x001EC500  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EC502  c1e007                  shl      eax, 7                         
  0x001EC505  33c1                    xor      eax, ecx                       
  0x001EC507  2580070000              and      eax, 0x780                     
  0x001EC50C  33c1                    xor      eax, ecx                       
  0x001EC50E  8906                    mov      dword ptr [esi], eax           
  0x001EC510  f6431580                test     byte ptr [ebx + 0x15], 0x80    
  0x001EC514  59                      pop      ecx                            
  0x001EC515  0f95c1                  setne    cl                             
  0x001EC518  25ffc7ffff              and      eax, 0xffffc7ff                
  0x001EC51D  41                      inc      ecx                            
  0x001EC51E  83e103                  and      ecx, 3                         
  0x001EC521  83c918                  or       ecx, 0x18                      
  0x001EC524  c1e10b                  shl      ecx, 0xb                       
  0x001EC527  0bc8                    or       ecx, eax                       
  0x001EC529  890e                    mov      dword ptr [esi], ecx           
  0x001EC52B  0fb74316                movzx    eax, word ptr [ebx + 0x16]     
  0x001EC52F  c1e010                  shl      eax, 0x10                      
  0x001EC532  33c1                    xor      eax, ecx                       
  0x001EC534  250000ff07              and      eax, 0x7ff0000                 
  0x001EC539  33c1                    xor      eax, ecx                       
  0x001EC53B  8b4e08                  mov      ecx, dword ptr [esi + 8]       
  0x001EC53E  8906                    mov      dword ptr [esi], eax           
  0x001EC540  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001EC543  2b05e04ebf00            sub      eax, dword ptr [0xbf4ee0]      
  0x001EC549  33c8                    xor      ecx, eax                       
  0x001EC54B  83e10f                  and      ecx, 0xf                       
  0x001EC54E  33c8                    xor      ecx, eax                       
  0x001EC550  894e08                  mov      dword ptr [esi + 8], ecx       
  0x001EC553  32c9                    xor      cl, cl                         
  0x001EC555  85d2                    test     edx, edx                       
  0x001EC557  894604                  mov      dword ptr [esi + 4], eax       
  0x001EC55A  884dff                  mov      byte ptr [ebp - 1], cl         
  0x001EC55D  765d                    jbe      0x1ec5bc                       
  0x001EC55F  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001EC5BA (cond_jump)
  0x001EC561  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC564  c1e006                  shl      eax, 6                         
  0x001EC567  8d3c10                  lea      edi, [eax + edx]               
  0x001EC56A  897df0                  mov      dword ptr [ebp - 0x10], edi    
  0x001EC56D  2b3de04ebf00            sub      edi, dword ptr [0xbf4ee0]      
  0x001EC573  8b55f0                  mov      edx, dword ptr [ebp - 0x10]    
  0x001EC576  83c740                  add      edi, 0x40                      
  0x001EC579  fec9                    dec      cl                             
  0x001EC57B  884a2d                  mov      byte ptr [edx + 0x2d], cl      
  0x001EC57E  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC581  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001EC584  884c102c                mov      byte ptr [eax + edx + 0x2c], cl 
  0x001EC588  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC58B  89741020                mov      dword ptr [eax + edx + 0x20], esi 
  0x001EC58F  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC592  8364102800              and      dword ptr [eax + edx + 0x28], 0 
  0x001EC597  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC59A  8364102400              and      dword ptr [eax + edx + 0x24], 0 
  0x001EC59F  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC5A2  03d0                    add      edx, eax                       
  0x001EC5A4  804a0201                or       byte ptr [edx + 2], 1          
  0x001EC5A8  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC5AB  fec1                    inc      cl                             
  0x001EC5AD  897c1008                mov      dword ptr [eax + edx + 8], edi 
  0x001EC5B1  0fb6c1                  movzx    eax, cl                        
  0x001EC5B4  3b45f8                  cmp      eax, dword ptr [ebp - 8]       
  0x001EC5B7  884dff                  mov      byte ptr [ebp - 1], cl         
  0x001EC5BA  72a5                    jb       0x1ec561                       
                                        ; XREF: 0x001EC55D (cond_jump)
  0x001EC5BC  8b562c                  mov      edx, dword ptr [esi + 0x2c]    
  0x001EC5BF  0fb6c1                  movzx    eax, cl                        
  0x001EC5C2  c1e006                  shl      eax, 6                         
  0x001EC5C5  836410c800              and      dword ptr [eax + edx - 0x38], 0 
  0x001EC5CA  8b462c                  mov      eax, dword ptr [esi + 0x2c]    
  0x001EC5CD  fec9                    dec      cl                             
  0x001EC5CF  88482d                  mov      byte ptr [eax + 0x2d], cl      
  0x001EC5D2  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EC5D8  8b4dec                  mov      ecx, dword ptr [ebp - 0x14]    
  0x001EC5DB  8bd6                    mov      edx, esi                       
  0x001EC5DD  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EC5E0  e856f4ffff              call     0x1eba3b                       ; -> sub_001EBA3B
  0x001EC5E5  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001EC5E8  8bf8                    mov      edi, eax                       
  0x001EC5EA  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC5F0  85ff                    test     edi, edi                       
  0x001EC5F2  7c05                    jl       0x1ec5f9                       
  0x001EC5F4  897310                  mov      dword ptr [ebx + 0x10], esi    
  0x001EC5F7  eb14                    jmp      0x1ec60d                       
                                        ; XREF: 0x001EC5F2 (cond_jump)
  0x001EC5F9  83631000                and      dword ptr [ebx + 0x10], 0      
  0x001EC5FD  8b0d084fbf00            mov      ecx, dword ptr [0xbf4f08]      
  0x001EC603  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001EC606  8908                    mov      dword ptr [eax], ecx           
  0x001EC608  a3084fbf00              mov      dword ptr [0xbf4f08], eax      
                                        ; XREF: 0x001EC5F7 (jump)
  0x001EC60D  5e                      pop      esi                            
                                        ; XREF: 0x001EC492 (jump)
  0x001EC60E  897b04                  mov      dword ptr [ebx + 4], edi       
  0x001EC611  8bc7                    mov      eax, edi                       
  0x001EC613  5f                      pop      edi                            
  0x001EC614  5b                      pop      ebx                            
  0x001EC615  c9                      leave                                   
  0x001EC616  c3                      ret                                     

; ============================================================
; Function: sub_001EC617
; Start: 0x001EC617  End: 0x001EC65B  Size: 68 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EA857, sub_001EBC17
; Called by: sub_001EAA4A
; ============================================================
sub_001EC617:
  0x001EC617  53                      push     ebx                            
  0x001EC618  55                      push     ebp                            
  0x001EC619  56                      push     esi                            
  0x001EC61A  8bf2                    mov      esi, edx                       
  0x001EC61C  8b6e10                  mov      ebp, dword ptr [esi + 0x10]    
  0x001EC61F  57                      push     edi                            
  0x001EC620  8bf9                    mov      edi, ecx                       
  0x001EC622  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EC628  8bd5                    mov      edx, ebp                       
  0x001EC62A  8bcf                    mov      ecx, edi                       
  0x001EC62C  8ad8                    mov      bl, al                         
  0x001EC62E  e824e2ffff              call     0x1ea857                       ; -> sub_001EA857
  0x001EC633  8bd5                    mov      edx, ebp                       
  0x001EC635  8bcf                    mov      ecx, edi                       
  0x001EC637  e8dbf5ffff              call     0x1ebc17                       ; -> sub_001EBC17
  0x001EC63C  8d8734040000            lea      eax, [edi + 0x434]             
  0x001EC642  8b08                    mov      ecx, dword ptr [eax]           
  0x001EC644  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001EC647  8acb                    mov      cl, bl                         
  0x001EC649  8930                    mov      dword ptr [eax], esi           
  0x001EC64B  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC651  5f                      pop      edi                            
  0x001EC652  5e                      pop      esi                            
  0x001EC653  5d                      pop      ebp                            
  0x001EC654  b800000040              mov      eax, 0x40000000                
  0x001EC659  5b                      pop      ebx                            
  0x001EC65A  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC65B
; Start: 0x001EC65B  End: 0x001EC6E4  Size: 137 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001E7F7A
; Called by: sub_001EC270
; ============================================================
sub_001EC65B:
  0x001EC65B  53                      push     ebx                            
  0x001EC65C  55                      push     ebp                            
  0x001EC65D  8bea                    mov      ebp, edx                       
  0x001EC65F  56                      push     esi                            
  0x001EC660  8b7510                  mov      esi, dword ptr [ebp + 0x10]    
  0x001EC663  8a4625                  mov      al, byte ptr [esi + 0x25]      
  0x001EC666  0fb65e26                movzx    ebx, byte ptr [esi + 0x26]     
  0x001EC66A  0fb6c8                  movzx    ecx, al                        
  0x001EC66D  2bd9                    sub      ebx, ecx                       
  0x001EC66F  0fb64e24                movzx    ecx, byte ptr [esi + 0x24]     
  0x001EC673  03d9                    add      ebx, ecx                       
  0x001EC675  84c0                    test     al, al                         
  0x001EC677  7444                    je       0x1ec6bd                       
  0x001EC679  57                      push     edi                            
                                        ; XREF: 0x001EC6BA (cond_jump)
  0x001EC67A  0fb64e24                movzx    ecx, byte ptr [esi + 0x24]     
  0x001EC67E  8bc3                    mov      eax, ebx                       
  0x001EC680  33d2                    xor      edx, edx                       
  0x001EC682  f7f1                    div      ecx                            
  0x001EC684  fe4e25                  dec      byte ptr [esi + 0x25]          
  0x001EC687  6a01                    push     1                              
  0x001EC689  8bda                    mov      ebx, edx                       
  0x001EC68B  8bfb                    mov      edi, ebx                       
  0x001EC68D  c1e706                  shl      edi, 6                         
  0x001EC690  037e2c                  add      edi, dword ptr [esi + 0x2c]    
  0x001EC693  43                      inc      ebx                            
  0x001EC694  ff7704                  push     dword ptr [edi + 4]            
  0x001EC697  ff1564d21e00            call     dword ptr [0x1ed264]           ; -> xbox_MmLockUnlockPhysicalPage
  0x001EC69D  8b470c                  mov      eax, dword ptr [edi + 0xc]     
  0x001EC6A0  8b4f04                  mov      ecx, dword ptr [edi + 4]       
  0x001EC6A3  33c8                    xor      ecx, eax                       
  0x001EC6A5  f7c100f0ffff            test     ecx, 0xfffff000                
  0x001EC6AB  7409                    je       0x1ec6b6                       
  0x001EC6AD  6a01                    push     1                              
  0x001EC6AF  50                      push     eax                            
  0x001EC6B0  ff1564d21e00            call     dword ptr [0x1ed264]           ; -> xbox_MmLockUnlockPhysicalPage
                                        ; XREF: 0x001EC6AB (cond_jump)
  0x001EC6B6  807e2500                cmp      byte ptr [esi + 0x25], 0       
  0x001EC6BA  75be                    jne      0x1ec67a                       
  0x001EC6BC  5f                      pop      edi                            
                                        ; XREF: 0x001EC677 (cond_jump)
  0x001EC6BD  0fb64624                movzx    eax, byte ptr [esi + 0x24]     
  0x001EC6C1  fe4e25                  dec      byte ptr [esi + 0x25]          
  0x001EC6C4  c1e006                  shl      eax, 6                         
  0x001EC6C7  2bf0                    sub      esi, eax                       
  0x001EC6C9  a1084fbf00              mov      eax, dword ptr [0xbf4f08]      
  0x001EC6CE  8906                    mov      dword ptr [esi], eax           
  0x001EC6D0  8935084fbf00            mov      dword ptr [0xbf4f08], esi      
  0x001EC6D6  83650400                and      dword ptr [ebp + 4], 0         
  0x001EC6DA  55                      push     ebp                            
  0x001EC6DB  e89ab8ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EC6E0  5e                      pop      esi                            
  0x001EC6E1  5d                      pop      ebp                            
  0x001EC6E2  5b                      pop      ebx                            
  0x001EC6E3  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001EC6E4
; Start: 0x001EC6E4  End: 0x001EC71B  Size: 55 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001EAA4A
; ============================================================
sub_001EC6E4:
  0x001EC6E4  55                      push     ebp                            
  0x001EC6E5  8bec                    mov      ebp, esp                       
  0x001EC6E7  83ec24                  sub      esp, 0x24                      
  0x001EC6EA  8365ec00                and      dword ptr [ebp - 0x14], 0      
  0x001EC6EE  56                      push     esi                            
  0x001EC6EF  8bf2                    mov      esi, edx                       
  0x001EC6F1  57                      push     edi                            
  0x001EC6F2  8b7e10                  mov      edi, dword ptr [esi + 0x10]    
  0x001EC6F5  8975f0                  mov      dword ptr [ebp - 0x10], esi    
  0x001EC6F8  894ddc                  mov      dword ptr [ebp - 0x24], ecx    
  0x001EC6FB  897de0                  mov      dword ptr [ebp - 0x20], edi    
  0x001EC6FE  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EC704  8a4f24                  mov      cl, byte ptr [edi + 0x24]      
  0x001EC707  3a4f25                  cmp      cl, byte ptr [edi + 0x25]      
  0x001EC70A  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EC70D  750c                    jne      0x1ec71b                       
  0x001EC70F  c745ec000d00c0          mov      dword ptr [ebp - 0x14], 0xc0000d00 
  0x001EC716  e915010000              jmp      0x1ec830                       
; end of function
                                        ; XREF: 0x001EC70D (cond_jump)
  0x001EC71B  0fb64726                movzx    eax, byte ptr [edi + 0x26]     
  0x001EC71F  53                      push     ebx                            
  0x001EC720  8bd8                    mov      ebx, eax                       
  0x001EC722  c1e306                  shl      ebx, 6                         
  0x001EC725  035f2c                  add      ebx, dword ptr [edi + 0x2c]    
  0x001EC728  40                      inc      eax                            
  0x001EC729  99                      cdq                                     
  0x001EC72A  0fb6c9                  movzx    ecx, cl                        
  0x001EC72D  f7f9                    idiv     ecx                            
  0x001EC72F  8b7618                  mov      esi, dword ptr [esi + 0x18]    
  0x001EC732  8365f400                and      dword ptr [ebp - 0xc], 0       
  0x001EC736  8975e4                  mov      dword ptr [ebp - 0x1c], esi    
  0x001EC739  885726                  mov      byte ptr [edi + 0x26], dl      
  0x001EC73C  8b4618                  mov      eax, dword ptr [esi + 0x18]    
  0x001EC73F  894324                  mov      dword ptr [ebx + 0x24], eax    
  0x001EC742  8b461c                  mov      eax, dword ptr [esi + 0x1c]    
  0x001EC745  894328                  mov      dword ptr [ebx + 0x28], eax    
  0x001EC748  8b45f0                  mov      eax, dword ptr [ebp - 0x10]    
  0x001EC74B  897b20                  mov      dword ptr [ebx + 0x20], edi    
  0x001EC74E  0fb64014                movzx    eax, byte ptr [eax + 0x14]     
  0x001EC752  c1e015                  shl      eax, 0x15                      
  0x001EC755  3303                    xor      eax, dword ptr [ebx]           
  0x001EC757  250000e000              and      eax, 0xe00000                  
  0x001EC75C  3103                    xor      dword ptr [ebx], eax           
  0x001EC75E  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EC760  8b03                    mov      eax, dword ptr [ebx]           
  0x001EC762  49                      dec      ecx                            
  0x001EC763  c1e118                  shl      ecx, 0x18                      
  0x001EC766  33c8                    xor      ecx, eax                       
  0x001EC768  81e100000007            and      ecx, 0x7000000                 
  0x001EC76E  33c8                    xor      ecx, eax                       
  0x001EC770  890b                    mov      dword ptr [ebx], ecx           
  0x001EC772  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001EC775  25ff0f0000              and      eax, 0xfff                     
  0x001EC77A  833e00                  cmp      dword ptr [esi], 0             
  0x001EC77D  8945e8                  mov      dword ptr [ebp - 0x18], eax    
  0x001EC780  762b                    jbe      0x1ec7ad                       
  0x001EC782  8d4e08                  lea      ecx, [esi + 8]                 
  0x001EC785  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001EC788  8d4b10                  lea      ecx, [ebx + 0x10]              
                                        ; XREF: 0x001EC7AB (cond_jump)
  0x001EC78B  8bd0                    mov      edx, eax                       
  0x001EC78D  6681ca00e0              or       dx, 0xe000                     
  0x001EC792  668911                  mov      word ptr [ecx], dx             
  0x001EC795  8b55f8                  mov      edx, dword ptr [ebp - 8]       
  0x001EC798  0fb712                  movzx    edx, word ptr [edx]            
  0x001EC79B  8345f802                add      dword ptr [ebp - 8], 2         
  0x001EC79F  03c2                    add      eax, edx                       
  0x001EC7A1  ff45f4                  inc      dword ptr [ebp - 0xc]          
  0x001EC7A4  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001EC7A7  41                      inc      ecx                            
  0x001EC7A8  41                      inc      ecx                            
  0x001EC7A9  3b16                    cmp      edx, dword ptr [esi]           
  0x001EC7AB  72de                    jb       0x1ec78b                       
                                        ; XREF: 0x001EC780 (cond_jump)
  0x001EC7AD  2b45e8                  sub      eax, dword ptr [ebp - 0x18]    
  0x001EC7B0  6a00                    push     0                              
  0x001EC7B2  50                      push     eax                            
  0x001EC7B3  ff7604                  push     dword ptr [esi + 4]            
  0x001EC7B6  8945e8                  mov      dword ptr [ebp - 0x18], eax    
  0x001EC7B9  ff155cd21e00            call     dword ptr [0x1ed25c]           ; -> xbox_MmLockUnlockBufferPages
  0x001EC7BF  ff7604                  push     dword ptr [esi + 4]            
  0x001EC7C2  ff1558d21e00            call     dword ptr [0x1ed258]           ; -> xbox_MmGetPhysicalAddress
  0x001EC7C8  8b4de8                  mov      ecx, dword ptr [ebp - 0x18]    
  0x001EC7CB  894304                  mov      dword ptr [ebx + 4], eax       
  0x001EC7CE  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001EC7D1  8d4408ff                lea      eax, [eax + ecx - 1]           
  0x001EC7D5  50                      push     eax                            
  0x001EC7D6  ff1558d21e00            call     dword ptr [0x1ed258]           ; -> xbox_MmGetPhysicalAddress
  0x001EC7DC  89430c                  mov      dword ptr [ebx + 0xc], eax     
  0x001EC7DF  f6471001                test     byte ptr [edi + 0x10], 1       
  0x001EC7E3  7410                    je       0x1ec7f5                       
  0x001EC7E5  8d7310                  lea      esi, [ebx + 0x10]              
  0x001EC7E8  8d7b30                  lea      edi, [ebx + 0x30]              
  0x001EC7EB  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC7EC  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC7ED  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC7EE  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC7EF  8b75e4                  mov      esi, dword ptr [ebp - 0x1c]    
  0x001EC7F2  8b7de0                  mov      edi, dword ptr [ebp - 0x20]    
                                        ; XREF: 0x001EC7E3 (cond_jump)
  0x001EC7F5  f6471002                test     byte ptr [edi + 0x10], 2       
  0x001EC7F9  7420                    je       0x1ec81b                       
  0x001EC7FB  8b4ddc                  mov      ecx, dword ptr [ebp - 0x24]    
  0x001EC7FE  e81cf6ffff              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EC803  8b4f28                  mov      ecx, dword ptr [edi + 0x28]    
  0x001EC806  40                      inc      eax                            
  0x001EC807  8bd1                    mov      edx, ecx                       
  0x001EC809  2bd0                    sub      edx, eax                       
  0x001EC80B  85d2                    test     edx, edx                       
  0x001EC80D  7e02                    jle      0x1ec811                       
  0x001EC80F  8bc1                    mov      eax, ecx                       
                                        ; XREF: 0x001EC80D (cond_jump)
  0x001EC811  668903                  mov      word ptr [ebx], ax             
  0x001EC814  8b0e                    mov      ecx, dword ptr [esi]           
  0x001EC816  03c8                    add      ecx, eax                       
  0x001EC818  894f28                  mov      dword ptr [edi + 0x28], ecx    
                                        ; XREF: 0x001EC7F9 (cond_jump)
  0x001EC81B  fe4725                  inc      byte ptr [edi + 0x25]          
  0x001EC81E  8a4725                  mov      al, byte ptr [edi + 0x25]      
  0x001EC821  3a4724                  cmp      al, byte ptr [edi + 0x24]      
  0x001EC824  8b75f0                  mov      esi, dword ptr [ebp - 0x10]    
  0x001EC827  7406                    je       0x1ec82f                       
  0x001EC829  8b4308                  mov      eax, dword ptr [ebx + 8]       
  0x001EC82C  894704                  mov      dword ptr [edi + 4], eax       
                                        ; XREF: 0x001EC827 (cond_jump)
  0x001EC82F  5b                      pop      ebx                            
                                        ; XREF: 0x001EC716 (jump)
  0x001EC830  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001EC833  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC839  8b7dec                  mov      edi, dword ptr [ebp - 0x14]    
  0x001EC83C  56                      push     esi                            
  0x001EC83D  897e04                  mov      dword ptr [esi + 4], edi       
  0x001EC840  e835b7ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EC845  8bc7                    mov      eax, edi                       
  0x001EC847  5f                      pop      edi                            
  0x001EC848  5e                      pop      esi                            
  0x001EC849  c9                      leave                                   
  0x001EC84A  c3                      ret                                     

; ============================================================
; Function: sub_001EC84B
; Start: 0x001EC84B  End: 0x001EC87E  Size: 51 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001EAA4A
; ============================================================
sub_001EC84B:
  0x001EC84B  55                      push     ebp                            
  0x001EC84C  8bec                    mov      ebp, esp                       
  0x001EC84E  83ec18                  sub      esp, 0x18                      
  0x001EC851  8365f000                and      dword ptr [ebp - 0x10], 0      
  0x001EC855  53                      push     ebx                            
  0x001EC856  8b1dd4d11e00            mov      ebx, dword ptr [0x1ed1d4]      
  0x001EC85C  56                      push     esi                            
  0x001EC85D  57                      push     edi                            
  0x001EC85E  8bfa                    mov      edi, edx                       
  0x001EC860  8b7710                  mov      esi, dword ptr [edi + 0x10]    
  0x001EC863  897df4                  mov      dword ptr [ebp - 0xc], edi     
  0x001EC866  894df8                  mov      dword ptr [ebp - 8], ecx       
  0x001EC869  ffd3                    call     ebx                            
  0x001EC86B  f6461002                test     byte ptr [esi + 0x10], 2       
  0x001EC86F  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001EC872  740a                    je       0x1ec87e                       
  0x001EC874  be000e00c0              mov      esi, 0xc0000e00                
  0x001EC879  e9cc000000              jmp      0x1ec94a                       
; end of function
                                        ; XREF: 0x001EC872 (cond_jump)
  0x001EC87E  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EC881  e899f5ffff              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EC886  8a5610                  mov      dl, byte ptr [esi + 0x10]      
  0x001EC889  f6c204                  test     dl, 4                          
  0x001EC88C  743a                    je       0x1ec8c8                       
  0x001EC88E  80e2fb                  and      dl, 0xfb                       
  0x001EC891  39461c                  cmp      dword ptr [esi + 0x1c], eax    
  0x001EC894  885610                  mov      byte ptr [esi + 0x10], dl      
  0x001EC897  7527                    jne      0x1ec8c0                       
  0x001EC899  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001EC89C  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC8A2  834decff                or       dword ptr [ebp - 0x14], 0xffffffff 
  0x001EC8A6  8d45e8                  lea      eax, [ebp - 0x18]              
  0x001EC8A9  50                      push     eax                            
  0x001EC8AA  6a00                    push     0                              
  0x001EC8AC  6a00                    push     0                              
  0x001EC8AE  c745e8f0d8ffff          mov      dword ptr [ebp - 0x18], 0xffffd8f0 
  0x001EC8B5  ff15c8d11e00            call     dword ptr [0x1ed1c8]           ; -> xbox_KeCancelTimer
  0x001EC8BB  ffd3                    call     ebx                            
  0x001EC8BD  8845ff                  mov      byte ptr [ebp - 1], al         
                                        ; XREF: 0x001EC897 (cond_jump)
  0x001EC8C0  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001EC8C3  e857f5ffff              call     0x1ebe1f                       ; -> sub_001EBE1F
                                        ; XREF: 0x001EC88C (cond_jump)
  0x001EC8C8  f6461001                test     byte ptr [esi + 0x10], 1       
  0x001EC8CC  740f                    je       0x1ec8dd                       
  0x001EC8CE  8a4e24                  mov      cl, byte ptr [esi + 0x24]      
  0x001EC8D1  3a4e25                  cmp      cl, byte ptr [esi + 0x25]      
  0x001EC8D4  7407                    je       0x1ec8dd                       
  0x001EC8D6  be001000c0              mov      esi, 0xc0001000                
  0x001EC8DB  eb6d                    jmp      0x1ec94a                       
                                        ; XREF: 0x001EC8CC (cond_jump), 0x001EC8D4 (cond_jump)
  0x001EC8DD  f6471801                test     byte ptr [edi + 0x18], 1       
  0x001EC8E1  8d4801                  lea      ecx, [eax + 1]                 
  0x001EC8E4  7512                    jne      0x1ec8f8                       
  0x001EC8E6  8b5714                  mov      edx, dword ptr [edi + 0x14]    
  0x001EC8E9  8bc2                    mov      eax, edx                       
  0x001EC8EB  2bc1                    sub      eax, ecx                       
  0x001EC8ED  7874                    js       0x1ec963                       
  0x001EC8EF  3d00040000              cmp      eax, 0x400                     
  0x001EC8F4  7f6d                    jg       0x1ec963                       
  0x001EC8F6  8bca                    mov      ecx, edx                       
                                        ; XREF: 0x001EC8E4 (cond_jump)
  0x001EC8F8  8a5624                  mov      dl, byte ptr [esi + 0x24]      
  0x001EC8FB  8ac2                    mov      al, dl                         
  0x001EC8FD  2a4625                  sub      al, byte ptr [esi + 0x25]      
  0x001EC900  0fb6fa                  movzx    edi, dl                        
  0x001EC903  024626                  add      al, byte ptr [esi + 0x26]      
  0x001EC906  0fb6c0                  movzx    eax, al                        
  0x001EC909  99                      cdq                                     
  0x001EC90A  f7ff                    idiv     edi                            
  0x001EC90C  8b7e2c                  mov      edi, dword ptr [esi + 0x2c]    
                                        ; XREF: 0x001EC937 (cond_jump)
  0x001EC90F  0fb6d2                  movzx    edx, dl                        
  0x001EC912  8bc2                    mov      eax, edx                       
  0x001EC914  c1e006                  shl      eax, 6                         
  0x001EC917  66890c07                mov      word ptr [edi + eax], cx       
  0x001EC91B  8b7e2c                  mov      edi, dword ptr [esi + 0x2c]    
  0x001EC91E  0fb6440703              movzx    eax, byte ptr [edi + eax + 3]  
  0x001EC923  0fb65e24                movzx    ebx, byte ptr [esi + 0x24]     
  0x001EC927  83e007                  and      eax, 7                         
  0x001EC92A  8d4c0101                lea      ecx, [ecx + eax + 1]           
  0x001EC92E  8d4201                  lea      eax, [edx + 1]                 
  0x001EC931  99                      cdq                                     
  0x001EC932  f7fb                    idiv     ebx                            
  0x001EC934  3a5626                  cmp      dl, byte ptr [esi + 0x26]      
  0x001EC937  75d6                    jne      0x1ec90f                       
  0x001EC939  806601bf                and      byte ptr [esi + 1], 0xbf       
  0x001EC93D  804e1002                or       byte ptr [esi + 0x10], 2       
  0x001EC941  8b7df4                  mov      edi, dword ptr [ebp - 0xc]     
  0x001EC944  894e28                  mov      dword ptr [esi + 0x28], ecx    
  0x001EC947  8b75f0                  mov      esi, dword ptr [ebp - 0x10]    
                                        ; XREF: 0x001EC879 (jump), 0x001EC8DB (jump), 0x001EC968 (jump)
  0x001EC94A  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001EC94D  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC953  57                      push     edi                            
  0x001EC954  897704                  mov      dword ptr [edi + 4], esi       
  0x001EC957  e81eb6ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EC95C  5f                      pop      edi                            
  0x001EC95D  8bc6                    mov      eax, esi                       
  0x001EC95F  5e                      pop      esi                            
  0x001EC960  5b                      pop      ebx                            
  0x001EC961  c9                      leave                                   
  0x001EC962  c3                      ret                                     
                                        ; XREF: 0x001EC8ED (cond_jump), 0x001EC8F4 (cond_jump)
  0x001EC963  be000b00c0              mov      esi, 0xc0000b00                
  0x001EC968  ebe0                    jmp      0x1ec94a                       

; ============================================================
; Function: sub_001EC96A
; Start: 0x001EC96A  End: 0x001EC9A4  Size: 58 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001EBE1F
; ============================================================
sub_001EC96A:
  0x001EC96A  51                      push     ecx                            
  0x001EC96B  53                      push     ebx                            
  0x001EC96C  55                      push     ebp                            
  0x001EC96D  56                      push     esi                            
  0x001EC96E  57                      push     edi                            
  0x001EC96F  8bfa                    mov      edi, edx                       
  0x001EC971  8b7710                  mov      esi, dword ptr [edi + 0x10]    
  0x001EC974  8bd9                    mov      ebx, ecx                       
  0x001EC976  33ed                    xor      ebp, ebp                       
  0x001EC978  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001EC97E  f6461002                test     byte ptr [esi + 0x10], 2       
  0x001EC982  88442413                mov      byte ptr [esp + 0x13], al      
  0x001EC986  741c                    je       0x1ec9a4                       
  0x001EC988  804e0140                or       byte ptr [esi + 1], 0x40       
  0x001EC98C  8bcb                    mov      ecx, ebx                       
  0x001EC98E  e88cf4ffff              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001EC993  40                      inc      eax                            
  0x001EC994  40                      inc      eax                            
  0x001EC995  89461c                  mov      dword ptr [esi + 0x1c], eax    
  0x001EC998  8a4610                  mov      al, byte ptr [esi + 0x10]      
  0x001EC99B  24fd                    and      al, 0xfd                       
  0x001EC99D  0c04                    or       al, 4                          
  0x001EC99F  884610                  mov      byte ptr [esi + 0x10], al      
  0x001EC9A2  eb05                    jmp      0x1ec9a9                       
; end of function
                                        ; XREF: 0x001EC986 (cond_jump)
  0x001EC9A4  bd000f00c0              mov      ebp, 0xc0000f00                
                                        ; XREF: 0x001EC9A2 (jump)
  0x001EC9A9  8a4c2413                mov      cl, byte ptr [esp + 0x13]      
  0x001EC9AD  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001EC9B3  57                      push     edi                            
  0x001EC9B4  896f04                  mov      dword ptr [edi + 4], ebp       
  0x001EC9B7  e8beb5ffff              call     0x1e7f7a                       ; -> sub_001E7F7A
  0x001EC9BC  5f                      pop      edi                            
  0x001EC9BD  5e                      pop      esi                            
  0x001EC9BE  8bc5                    mov      eax, ebp                       
  0x001EC9C0  5d                      pop      ebp                            
  0x001EC9C1  5b                      pop      ebx                            
  0x001EC9C2  59                      pop      ecx                            
  0x001EC9C3  c3                      ret                                     

; ============================================================
; Function: sub_001EC9C4
; Start: 0x001EC9C4  End: 0x001ECA6B  Size: 167 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001EBE1F
; Called by: sub_001EC34A
; ============================================================
sub_001EC9C4:
  0x001EC9C4  55                      push     ebp                            
  0x001EC9C5  8bec                    mov      ebp, esp                       
  0x001EC9C7  83ec2c                  sub      esp, 0x2c                      
  0x001EC9CA  53                      push     ebx                            
  0x001EC9CB  8bda                    mov      ebx, edx                       
  0x001EC9CD  8b03                    mov      eax, dword ptr [ebx]           
  0x001EC9CF  56                      push     esi                            
  0x001EC9D0  8b5320                  mov      edx, dword ptr [ebx + 0x20]    
  0x001EC9D3  83630800                and      dword ptr [ebx + 8], 0         
  0x001EC9D7  8bf0                    mov      esi, eax                       
  0x001EC9D9  c1ee1c                  shr      esi, 0x1c                      
  0x001EC9DC  8975d4                  mov      dword ptr [ebp - 0x2c], esi    
  0x001EC9DF  c1e818                  shr      eax, 0x18                      
  0x001EC9E2  83e007                  and      eax, 7                         
  0x001EC9E5  57                      push     edi                            
  0x001EC9E6  40                      inc      eax                            
  0x001EC9E7  8945d8                  mov      dword ptr [ebp - 0x28], eax    
  0x001EC9EA  8b4328                  mov      eax, dword ptr [ebx + 0x28]    
  0x001EC9ED  8d7310                  lea      esi, [ebx + 0x10]              
  0x001EC9F0  8975f8                  mov      dword ptr [ebp - 8], esi       
  0x001EC9F3  8d7ddc                  lea      edi, [ebp - 0x24]              
  0x001EC9F6  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC9F7  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC9F8  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001EC9F9  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001EC9FC  8b4324                  mov      eax, dword ptr [ebx + 0x24]    
  0x001EC9FF  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001ECA00  8b7a2c                  mov      edi, dword ptr [edx + 0x2c]    
  0x001ECA03  8945ec                  mov      dword ptr [ebp - 0x14], eax    
  0x001ECA06  0fb6432d                movzx    eax, byte ptr [ebx + 0x2d]     
  0x001ECA0A  8bf3                    mov      esi, ebx                       
  0x001ECA0C  2b35e04ebf00            sub      esi, dword ptr [0xbf4ee0]      
  0x001ECA12  c1e006                  shl      eax, 6                         
  0x001ECA15  89743808                mov      dword ptr [eax + edi + 8], esi 
  0x001ECA19  f6421001                test     byte ptr [edx + 0x10], 1       
  0x001ECA1D  8955fc                  mov      dword ptr [ebp - 4], edx       
  0x001ECA20  8975f4                  mov      dword ptr [ebp - 0xc], esi     
  0x001ECA23  7446                    je       0x1eca6b                       
  0x001ECA25  e8f5f3ffff              call     0x1ebe1f                       ; -> sub_001EBE1F
  0x001ECA2A  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001ECA2D  8bf0                    mov      esi, eax                       
  0x001ECA2F  8b4128                  mov      eax, dword ptr [ecx + 0x28]    
  0x001ECA32  46                      inc      esi                            
  0x001ECA33  8bd0                    mov      edx, eax                       
  0x001ECA35  2bd6                    sub      edx, esi                       
  0x001ECA37  7802                    js       0x1eca3b                       
  0x001ECA39  8bf0                    mov      esi, eax                       
                                        ; XREF: 0x001ECA37 (cond_jump)
  0x001ECA3B  8b7df8                  mov      edi, dword ptr [ebp - 8]       
  0x001ECA3E  668933                  mov      word ptr [ebx], si             
  0x001ECA41  33c0                    xor      eax, eax                       
  0x001ECA43  8a4303                  mov      al, byte ptr [ebx + 3]         
  0x001ECA46  83e007                  and      eax, 7                         
  0x001ECA49  8d443001                lea      eax, [eax + esi + 1]           
  0x001ECA4D  894128                  mov      dword ptr [ecx + 0x28], eax    
  0x001ECA50  8d7330                  lea      esi, [ebx + 0x30]              
  0x001ECA53  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001ECA54  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001ECA55  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001ECA56  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001ECA57  0fb64126                movzx    eax, byte ptr [ecx + 0x26]     
  0x001ECA5B  0fb67124                movzx    esi, byte ptr [ecx + 0x24]     
  0x001ECA5F  40                      inc      eax                            
  0x001ECA60  99                      cdq                                     
  0x001ECA61  f7fe                    idiv     esi                            
  0x001ECA63  8b75f4                  mov      esi, dword ptr [ebp - 0xc]     
  0x001ECA66  885126                  mov      byte ptr [ecx + 0x26], dl      
  0x001ECA69  eb37                    jmp      0x1ecaa2                       
; end of function
                                        ; XREF: 0x001ECA23 (cond_jump)
  0x001ECA6B  8b3d64d21e00            mov      edi, dword ptr [0x1ed264]      
  0x001ECA71  6a01                    push     1                              
  0x001ECA73  ff7304                  push     dword ptr [ebx + 4]            
  0x001ECA76  ffd7                    call     edi                            
  0x001ECA78  8b430c                  mov      eax, dword ptr [ebx + 0xc]     
  0x001ECA7B  8b4b04                  mov      ecx, dword ptr [ebx + 4]       
  0x001ECA7E  33c8                    xor      ecx, eax                       
  0x001ECA80  f7c100f0ffff            test     ecx, 0xfffff000                
  0x001ECA86  7405                    je       0x1eca8d                       
  0x001ECA88  6a01                    push     1                              
  0x001ECA8A  50                      push     eax                            
  0x001ECA8B  ffd7                    call     edi                            
                                        ; XREF: 0x001ECA86 (cond_jump)
  0x001ECA8D  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001ECA90  8a4125                  mov      al, byte ptr [ecx + 0x25]      
  0x001ECA93  3a4124                  cmp      al, byte ptr [ecx + 0x24]      
  0x001ECA96  0f94c2                  sete     dl                             
  0x001ECA99  fec8                    dec      al                             
  0x001ECA9B  84d2                    test     dl, dl                         
  0x001ECA9D  884125                  mov      byte ptr [ecx + 0x25], al      
  0x001ECAA0  7403                    je       0x1ecaa5                       
                                        ; XREF: 0x001ECA69 (jump)
  0x001ECAA2  897104                  mov      dword ptr [ecx + 4], esi       
                                        ; XREF: 0x001ECAA0 (cond_jump)
  0x001ECAA5  ff75f0                  push     dword ptr [ebp - 0x10]         
  0x001ECAA8  8d45d4                  lea      eax, [ebp - 0x2c]              
  0x001ECAAB  50                      push     eax                            
  0x001ECAAC  ff55ec                  call     dword ptr [ebp - 0x14]         
  0x001ECAAF  5f                      pop      edi                            
  0x001ECAB0  5e                      pop      esi                            
  0x001ECAB1  5b                      pop      ebx                            
  0x001ECAB2  c9                      leave                                   
  0x001ECAB3  c3                      ret                                     

; ============================================================
; Function: sub_001ECAB4
; Start: 0x001ECAB4  End: 0x001ECAD4  Size: 32 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001ECAB4:
  0x001ECAB4  a1ec4ebf00              mov      eax, dword ptr [0xbf4eec]      
  0x001ECAB9  85c0                    test     eax, eax                       
  0x001ECABB  7409                    je       0x1ecac6                       
  0x001ECABD  8b4814                  mov      ecx, dword ptr [eax + 0x14]    
  0x001ECAC0  890dec4ebf00            mov      dword ptr [0xbf4eec], ecx      
                                        ; XREF: 0x001ECABB (cond_jump)
  0x001ECAC6  8a4c2404                mov      cl, byte ptr [esp + 4]         
  0x001ECACA  806002fe                and      byte ptr [eax + 2], 0xfe       
  0x001ECACE  88481f                  mov      byte ptr [eax + 0x1f], cl      
  0x001ECAD1  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001ECAD4
; Start: 0x001ECAD4  End: 0x001ECAE6  Size: 18 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001ECF1D
; ============================================================
sub_001ECAD4:
  0x001ECAD4  668b442404              mov      ax, word ptr [esp + 4]         
  0x001ECAD9  663905024fbf00          cmp      word ptr [0xbf4f02], ax        
  0x001ECAE0  7304                    jae      0x1ecae6                       
  0x001ECAE2  33c0                    xor      eax, eax                       
  0x001ECAE4  eb0a                    jmp      0x1ecaf0                       
; end of function
                                        ; XREF: 0x001ECAE0 (cond_jump)
  0x001ECAE6  662905024fbf00          sub      word ptr [0xbf4f02], ax        
  0x001ECAED  33c0                    xor      eax, eax                       
  0x001ECAEF  40                      inc      eax                            
                                        ; XREF: 0x001ECAE4 (jump)
  0x001ECAF0  c20400                  ret      4                              

; ============================================================
; Function: sub_001ECAF3
; Start: 0x001ECAF3  End: 0x001ECB05  Size: 18 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001ECED0
; ============================================================
sub_001ECAF3:
  0x001ECAF3  668b442404              mov      ax, word ptr [esp + 4]         
  0x001ECAF8  663905064fbf00          cmp      word ptr [0xbf4f06], ax        
  0x001ECAFF  7304                    jae      0x1ecb05                       
  0x001ECB01  33c0                    xor      eax, eax                       
  0x001ECB03  eb0a                    jmp      0x1ecb0f                       
; end of function
                                        ; XREF: 0x001ECAFF (cond_jump)
  0x001ECB05  662905064fbf00          sub      word ptr [0xbf4f06], ax        
  0x001ECB0C  33c0                    xor      eax, eax                       
  0x001ECB0E  40                      inc      eax                            
                                        ; XREF: 0x001ECB03 (jump)
  0x001ECB0F  c20400                  ret      4                              

; ============================================================
; Function: sub_001ECB12
; Start: 0x001ECB12  End: 0x001ECB45  Size: 51 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001ED015
; ============================================================
sub_001ECB12:
  0x001ECB12  8b4914                  mov      ecx, dword ptr [ecx + 0x14]    
  0x001ECB15  56                      push     esi                            
  0x001ECB16  8bf2                    mov      esi, edx                       
  0x001ECB18  33d2                    xor      edx, edx                       
  0x001ECB1A  668b5602                mov      dx, word ptr [esi + 2]         
  0x001ECB1E  33c0                    xor      eax, eax                       
  0x001ECB20  81e2ff070000            and      edx, 0x7ff                     
  0x001ECB26  85c9                    test     ecx, ecx                       
  0x001ECB28  7410                    je       0x1ecb3a                       
  0x001ECB2A  57                      push     edi                            
  0x001ECB2B  0fb7fa                  movzx    edi, dx                        
  0x001ECB2E  33d2                    xor      edx, edx                       
  0x001ECB30  8bc1                    mov      eax, ecx                       
  0x001ECB32  f7f7                    div      edi                            
  0x001ECB34  5f                      pop      edi                            
  0x001ECB35  85d2                    test     edx, edx                       
  0x001ECB37  7401                    je       0x1ecb3a                       
  0x001ECB39  40                      inc      eax                            
                                        ; XREF: 0x001ECB28 (cond_jump), 0x001ECB37 (cond_jump)
  0x001ECB3A  807e1100                cmp      byte ptr [esi + 0x11], 0       
  0x001ECB3E  5e                      pop      esi                            
  0x001ECB3F  7503                    jne      0x1ecb44                       
  0x001ECB41  83c003                  add      eax, 3                         
                                        ; XREF: 0x001ECB3F (cond_jump)
  0x001ECB44  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001ECB45
; Start: 0x001ECB45  End: 0x001ECB7F  Size: 58 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001ECB45:
  0x001ECB45  53                      push     ebx                            
  0x001ECB46  56                      push     esi                            
  0x001ECB47  57                      push     edi                            
  0x001ECB48  8bf1                    mov      esi, ecx                       
  0x001ECB4A  ff36                    push     dword ptr [esi]                
  0x001ECB4C  8bfa                    mov      edi, edx                       
  0x001ECB4E  ff1558d21e00            call     dword ptr [0x1ed258]           ; -> xbox_MmGetPhysicalAddress
  0x001ECB54  8b0e                    mov      ecx, dword ptr [esi]           
  0x001ECB56  81e1ff0f0000            and      ecx, 0xfff                     
  0x001ECB5C  ba00100000              mov      edx, 0x1000                    
  0x001ECB61  2bd1                    sub      edx, ecx                       
  0x001ECB63  8b4c2410                mov      ecx, dword ptr [esp + 0x10]    
  0x001ECB67  8911                    mov      dword ptr [ecx], edx           
  0x001ECB69  8b1f                    mov      ebx, dword ptr [edi]           
  0x001ECB6B  3bd3                    cmp      edx, ebx                       
  0x001ECB6D  7602                    jbe      0x1ecb71                       
  0x001ECB6F  8919                    mov      dword ptr [ecx], ebx           
                                        ; XREF: 0x001ECB6D (cond_jump)
  0x001ECB71  8b11                    mov      edx, dword ptr [ecx]           
  0x001ECB73  2917                    sub      dword ptr [edi], edx           
  0x001ECB75  8b09                    mov      ecx, dword ptr [ecx]           
  0x001ECB77  010e                    add      dword ptr [esi], ecx           
  0x001ECB79  5f                      pop      edi                            
  0x001ECB7A  5e                      pop      esi                            
  0x001ECB7B  5b                      pop      ebx                            
  0x001ECB7C  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001ECB7F
; Start: 0x001ECB7F  End: 0x001ECBE5  Size: 102 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001ECE7D, sub_001ECED0, sub_001ECF1D
; ============================================================
sub_001ECB7F:
  0x001ECB7F  55                      push     ebp                            
  0x001ECB80  8bec                    mov      ebp, esp                       
  0x001ECB82  83ec28                  sub      esp, 0x28                      
  0x001ECB85  33c0                    xor      eax, eax                       
  0x001ECB87  53                      push     ebx                            
  0x001ECB88  8bda                    mov      ebx, edx                       
  0x001ECB8A  668b4302                mov      ax, word ptr [ebx + 2]         
  0x001ECB8E  56                      push     esi                            
  0x001ECB8F  57                      push     edi                            
  0x001ECB90  8b7d08                  mov      edi, dword ptr [ebp + 8]       
  0x001ECB93  894de0                  mov      dword ptr [ebp - 0x20], ecx    
  0x001ECB96  8a895c040000            mov      cl, byte ptr [ecx + 0x45c]     
  0x001ECB9C  884de8                  mov      byte ptr [ebp - 0x18], cl      
  0x001ECB9F  25ff070000              and      eax, 0x7ff                     
  0x001ECBA4  8945d8                  mov      dword ptr [ebp - 0x28], eax    
  0x001ECBA7  8b4714                  mov      eax, dword ptr [edi + 0x14]    
  0x001ECBAA  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001ECBAD  33c0                    xor      eax, eax                       
  0x001ECBAF  20450b                  and      byte ptr [ebp + 0xb], al       
  0x001ECBB2  fe4b26                  dec      byte ptr [ebx + 0x26]          
  0x001ECBB5  fe4327                  inc      byte ptr [ebx + 0x27]          
  0x001ECBB8  668b4f22                mov      cx, word ptr [edi + 0x22]      
  0x001ECBBC  6681e1fdff              and      cx, 0xfffd                     
  0x001ECBC1  6683c904                or       cx, 4                          
  0x001ECBC5  66894f22                mov      word ptr [edi + 0x22], cx      
  0x001ECBC9  8b7304                  mov      esi, dword ptr [ebx + 4]       
  0x001ECBCC  3bf0                    cmp      esi, eax                       
  0x001ECBCE  8945ec                  mov      dword ptr [ebp - 0x14], eax    
  0x001ECBD1  8945e4                  mov      dword ptr [ebp - 0x1c], eax    
  0x001ECBD4  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001ECBD7  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001ECBDA  7409                    je       0x1ecbe5                       
  0x001ECBDC  a1e04ebf00              mov      eax, dword ptr [0xbf4ee0]      
  0x001ECBE1  03f0                    add      esi, eax                       
  0x001ECBE3  eb19                    jmp      0x1ecbfe                       
; end of function
                                        ; XREF: 0x001ECBDA (cond_jump)
  0x001ECBE5  ff75e8                  push     dword ptr [ebp - 0x18]         
  0x001ECBE8  e8c7feffff              call     0x1ecab4                       ; -> sub_001ECAB4
  0x001ECBED  8bf0                    mov      esi, eax                       
  0x001ECBEF  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001ECBF2  334308                  xor      eax, dword ptr [ebx + 8]       
  0x001ECBF5  83e00f                  and      eax, 0xf                       
  0x001ECBF8  334610                  xor      eax, dword ptr [esi + 0x10]    
  0x001ECBFB  894308                  mov      dword ptr [ebx + 8], eax       
                                        ; XREF: 0x001ECBE3 (jump)
  0x001ECBFE  807b1100                cmp      byte ptr [ebx + 0x11], 0       
  0x001ECC02  8975fc                  mov      dword ptr [ebp - 4], esi       
  0x001ECC05  7566                    jne      0x1ecc6d                       
  0x001ECC07  33c0                    xor      eax, eax                       
  0x001ECC09  b0fe                    mov      al, 0xfe                       
  0x001ECC0B  2a45e8                  sub      al, byte ptr [ebp - 0x18]      
  0x001ECC0E  50                      push     eax                            
  0x001ECC0F  e8a0feffff              call     0x1ecab4                       ; -> sub_001ECAB4
  0x001ECC14  8b4f28                  mov      ecx, dword ptr [edi + 0x28]    
  0x001ECC17  ff75e8                  push     dword ptr [ebp - 0x18]         
  0x001ECC1A  8908                    mov      dword ptr [eax], ecx           
  0x001ECC1C  8b4f2c                  mov      ecx, dword ptr [edi + 0x2c]    
  0x001ECC1F  8945dc                  mov      dword ptr [ebp - 0x24], eax    
  0x001ECC22  894804                  mov      dword ptr [eax + 4], ecx       
  0x001ECC25  e88afeffff              call     0x1ecab4                       ; -> sub_001ECAB4
  0x001ECC2A  8bf0                    mov      esi, eax                       
  0x001ECC2C  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001ECC2F  8b08                    mov      ecx, dword ptr [eax]           
  0x001ECC31  81e1ffff0300            and      ecx, 0x3ffff                   
  0x001ECC37  81c90000e0e2            or       ecx, 0xe2e00000                
  0x001ECC3D  8908                    mov      dword ptr [eax], ecx           
  0x001ECC3F  8b4ddc                  mov      ecx, dword ptr [ebp - 0x24]    
  0x001ECC42  8b5110                  mov      edx, dword ptr [ecx + 0x10]    
  0x001ECC45  895004                  mov      dword ptr [eax + 4], edx       
  0x001ECC48  8b5610                  mov      edx, dword ptr [esi + 0x10]    
  0x001ECC4B  895008                  mov      dword ptr [eax + 8], edx       
  0x001ECC4E  8b4910                  mov      ecx, dword ptr [ecx + 0x10]    
  0x001ECC51  80601c00                and      byte ptr [eax + 0x1c], 0       
  0x001ECC55  83c107                  add      ecx, 7                         
  0x001ECC58  80601d00                and      byte ptr [eax + 0x1d], 0       
  0x001ECC5C  c6450b02                mov      byte ptr [ebp + 0xb], 2        
  0x001ECC60  89480c                  mov      dword ptr [eax + 0xc], ecx     
  0x001ECC63  895814                  mov      dword ptr [eax + 0x14], ebx    
  0x001ECC66  c6401e01                mov      byte ptr [eax + 0x1e], 1       
  0x001ECC6A  897818                  mov      dword ptr [eax + 0x18], edi    
                                        ; XREF: 0x001ECC05 (cond_jump)
  0x001ECC6D  837df000                cmp      dword ptr [ebp - 0x10], 0      
  0x001ECC71  7416                    je       0x1ecc89                       
  0x001ECC73  6a00                    push     0                              
  0x001ECC75  ff75f0                  push     dword ptr [ebp - 0x10]         
  0x001ECC78  ff7718                  push     dword ptr [edi + 0x18]         
  0x001ECC7B  ff155cd21e00            call     dword ptr [0x1ed25c]           ; -> xbox_MmLockUnlockBufferPages
  0x001ECC81  8b4718                  mov      eax, dword ptr [edi + 0x18]    
  0x001ECC84  8945dc                  mov      dword ptr [ebp - 0x24], eax    
  0x001ECC87  eb04                    jmp      0x1ecc8d                       
                                        ; XREF: 0x001ECC71 (cond_jump)
  0x001ECC89  c6471c01                mov      byte ptr [edi + 0x1c], 1       
                                        ; XREF: 0x001ECC87 (jump)
  0x001ECC8D  837df000                cmp      dword ptr [ebp - 0x10], 0      
  0x001ECC91  0f8411010000            je       0x1ecda8                       
                                        ; XREF: 0x001ECD8F (cond_jump)
  0x001ECC97  8d45ec                  lea      eax, [ebp - 0x14]              
  0x001ECC9A  50                      push     eax                            
  0x001ECC9B  8d55f0                  lea      edx, [ebp - 0x10]              
  0x001ECC9E  8d4ddc                  lea      ecx, [ebp - 0x24]              
  0x001ECCA1  e89ffeffff              call     0x1ecb45                       ; -> sub_001ECB45
  0x001ECCA6  8945fc                  mov      dword ptr [ebp - 4], eax       
                                        ; XREF: 0x001ECD7D (jump)
  0x001ECCA9  8b55ec                  mov      edx, dword ptr [ebp - 0x14]    
  0x001ECCAC  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001ECCAF  8b4dd8                  mov      ecx, dword ptr [ebp - 0x28]    
  0x001ECCB2  03c2                    add      eax, edx                       
  0x001ECCB4  3bc1                    cmp      eax, ecx                       
  0x001ECCB6  7312                    jae      0x1eccca                       
  0x001ECCB8  85d2                    test     edx, edx                       
  0x001ECCBA  0f84c2000000            je       0x1ecd82                       
  0x001ECCC0  837df000                cmp      dword ptr [ebp - 0x10], 0      
  0x001ECCC4  0f85b8000000            jne      0x1ecd82                       
                                        ; XREF: 0x001ECCB6 (cond_jump)
  0x001ECCCA  837df400                cmp      dword ptr [ebp - 0xc], 0       
  0x001ECCCE  7422                    je       0x1eccf2                       
  0x001ECCD0  2b4df4                  sub      ecx, dword ptr [ebp - 0xc]     
  0x001ECCD3  8b45e4                  mov      eax, dword ptr [ebp - 0x1c]    
  0x001ECCD6  3bd1                    cmp      edx, ecx                       
  0x001ECCD8  894604                  mov      dword ptr [esi + 4], eax       
  0x001ECCDB  7302                    jae      0x1eccdf                       
  0x001ECCDD  8bca                    mov      ecx, edx                       
                                        ; XREF: 0x001ECCDB (cond_jump)
  0x001ECCDF  8a45f4                  mov      al, byte ptr [ebp - 0xc]       
  0x001ECCE2  014dfc                  add      dword ptr [ebp - 4], ecx       
  0x001ECCE5  02c1                    add      al, cl                         
  0x001ECCE7  2bd1                    sub      edx, ecx                       
  0x001ECCE9  8365f400                and      dword ptr [ebp - 0xc], 0       
  0x001ECCED  88461d                  mov      byte ptr [esi + 0x1d], al      
  0x001ECCF0  eb1e                    jmp      0x1ecd10                       
                                        ; XREF: 0x001ECCCE (cond_jump)
  0x001ECCF2  3bd1                    cmp      edx, ecx                       
  0x001ECCF4  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001ECCF7  894604                  mov      dword ptr [esi + 4], eax       
  0x001ECCFA  730c                    jae      0x1ecd08                       
  0x001ECCFC  0155fc                  add      dword ptr [ebp - 4], edx       
  0x001ECCFF  8365ec00                and      dword ptr [ebp - 0x14], 0      
  0x001ECD03  88561d                  mov      byte ptr [esi + 0x1d], dl      
  0x001ECD06  eb0b                    jmp      0x1ecd13                       
                                        ; XREF: 0x001ECCFA (cond_jump)
  0x001ECD08  014dfc                  add      dword ptr [ebp - 4], ecx       
  0x001ECD0B  884e1d                  mov      byte ptr [esi + 0x1d], cl      
  0x001ECD0E  2bd1                    sub      edx, ecx                       
                                        ; XREF: 0x001ECCF0 (jump)
  0x001ECD10  8955ec                  mov      dword ptr [ebp - 0x14], edx    
                                        ; XREF: 0x001ECD06 (jump)
  0x001ECD13  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001ECD16  8b0e                    mov      ecx, dword ptr [esi]           
  0x001ECD18  80750b01                xor      byte ptr [ebp + 0xb], 1        
  0x001ECD1C  80661c00                and      byte ptr [esi + 0x1c], 0       
  0x001ECD20  80661e00                and      byte ptr [esi + 0x1e], 0       
  0x001ECD24  48                      dec      eax                            
  0x001ECD25  89460c                  mov      dword ptr [esi + 0xc], eax     
  0x001ECD28  0fb6450b                movzx    eax, byte ptr [ebp + 0xb]      
  0x001ECD2C  ff75e8                  push     dword ptr [ebp - 0x18]         
  0x001ECD2F  81e1fffffb0f            and      ecx, 0xffbffff                 
  0x001ECD35  81c9000000e0            or       ecx, 0xe0000000                
  0x001ECD3B  c1e018                  shl      eax, 0x18                      
  0x001ECD3E  33c1                    xor      eax, ecx                       
  0x001ECD40  2500000003              and      eax, 0x3000000                 
  0x001ECD45  33c1                    xor      eax, ecx                       
  0x001ECD47  890e                    mov      dword ptr [esi], ecx           
  0x001ECD49  0d0000e000              or       eax, 0xe00000                  
  0x001ECD4E  33c9                    xor      ecx, ecx                       
  0x001ECD50  8906                    mov      dword ptr [esi], eax           
  0x001ECD52  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001ECD55  8a4f1c                  mov      cl, byte ptr [edi + 0x1c]      
  0x001ECD58  25ffffe7f3              and      eax, 0xf3e7ffff                
  0x001ECD5D  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001ECD60  8975f8                  mov      dword ptr [ebp - 8], esi       
  0x001ECD63  83e103                  and      ecx, 3                         
  0x001ECD66  c1e113                  shl      ecx, 0x13                      
  0x001ECD69  0bc8                    or       ecx, eax                       
  0x001ECD6B  890e                    mov      dword ptr [esi], ecx           
  0x001ECD6D  e842fdffff              call     0x1ecab4                       ; -> sub_001ECAB4
  0x001ECD72  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001ECD75  8bf0                    mov      esi, eax                       
  0x001ECD77  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001ECD7A  894108                  mov      dword ptr [ecx + 8], eax       
  0x001ECD7D  e927ffffff              jmp      0x1ecca9                       
                                        ; XREF: 0x001ECCBA (cond_jump), 0x001ECCC4 (cond_jump)
  0x001ECD82  837df000                cmp      dword ptr [ebp - 0x10], 0      
  0x001ECD86  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001ECD89  8945e4                  mov      dword ptr [ebp - 0x1c], eax    
  0x001ECD8C  8955f4                  mov      dword ptr [ebp - 0xc], edx     
  0x001ECD8F  0f8502ffffff            jne      0x1ecc97                       
  0x001ECD95  837df800                cmp      dword ptr [ebp - 8], 0         
  0x001ECD99  740d                    je       0x1ecda8                       
  0x001ECD9B  807f1d00                cmp      byte ptr [edi + 0x1d], 0       
  0x001ECD9F  7407                    je       0x1ecda8                       
  0x001ECDA1  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001ECDA4  80480204                or       byte ptr [eax + 2], 4          
                                        ; XREF: 0x001ECC91 (cond_jump), 0x001ECD99 (cond_jump), 0x001ECD9F (cond_jump)
  0x001ECDA8  807b1100                cmp      byte ptr [ebx + 0x11], 0       
  0x001ECDAC  756a                    jne      0x1ece18                       
  0x001ECDAE  806602fb                and      byte ptr [esi + 2], 0xfb       
  0x001ECDB2  8b0e                    mov      ecx, dword ptr [esi]           
  0x001ECDB4  33c0                    xor      eax, eax                       
  0x001ECDB6  807f1c02                cmp      byte ptr [edi + 0x1c], 2       
  0x001ECDBA  ff75e8                  push     dword ptr [ebp - 0x18]         
  0x001ECDBD  0f95c0                  setne    al                             
  0x001ECDC0  8975f8                  mov      dword ptr [ebp - 8], esi       
  0x001ECDC3  40                      inc      eax                            
  0x001ECDC4  c1e013                  shl      eax, 0x13                      
  0x001ECDC7  33c1                    xor      eax, ecx                       
  0x001ECDC9  2500001800              and      eax, 0x180000                  
  0x001ECDCE  33c1                    xor      eax, ecx                       
  0x001ECDD0  33c9                    xor      ecx, ecx                       
  0x001ECDD2  8906                    mov      dword ptr [esi], eax           
  0x001ECDD4  8a4f1e                  mov      cl, byte ptr [edi + 0x1e]      
  0x001ECDD7  83660400                and      dword ptr [esi + 4], 0         
  0x001ECDDB  83660c00                and      dword ptr [esi + 0xc], 0       
  0x001ECDDF  80661d00                and      byte ptr [esi + 0x1d], 0       
  0x001ECDE3  25ffff1f00              and      eax, 0x1fffff                  
  0x001ECDE8  895e14                  mov      dword ptr [esi + 0x14], ebx    
  0x001ECDEB  c6461c02                mov      byte ptr [esi + 0x1c], 2       
  0x001ECDEF  83e107                  and      ecx, 7                         
  0x001ECDF2  81c918ffffff            or       ecx, 0xffffff18                
  0x001ECDF8  c1e115                  shl      ecx, 0x15                      
  0x001ECDFB  0bc8                    or       ecx, eax                       
  0x001ECDFD  890e                    mov      dword ptr [esi], ecx           
  0x001ECDFF  c6461e02                mov      byte ptr [esi + 0x1e], 2       
  0x001ECE03  897e18                  mov      dword ptr [esi + 0x18], edi    
  0x001ECE06  e8a9fcffff              call     0x1ecab4                       ; -> sub_001ECAB4
  0x001ECE0B  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001ECE0E  8bf0                    mov      esi, eax                       
  0x001ECE10  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001ECE13  894108                  mov      dword ptr [ecx + 8], eax       
  0x001ECE16  eb18                    jmp      0x1ece30                       
                                        ; XREF: 0x001ECDAC (cond_jump)
  0x001ECE18  0fb64f1e                movzx    ecx, byte ptr [edi + 0x1e]     
  0x001ECE1C  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001ECE1F  c1e115                  shl      ecx, 0x15                      
  0x001ECE22  3308                    xor      ecx, dword ptr [eax]           
  0x001ECE24  c6401c02                mov      byte ptr [eax + 0x1c], 2       
  0x001ECE28  81e10000e000            and      ecx, 0xe00000                  
  0x001ECE2E  3108                    xor      dword ptr [eax], ecx           
                                        ; XREF: 0x001ECE16 (jump)
  0x001ECE30  c6461e03                mov      byte ptr [esi + 0x1e], 3       
  0x001ECE34  668b4714                mov      ax, word ptr [edi + 0x14]      
  0x001ECE38  83671400                and      dword ptr [edi + 0x14], 0      
  0x001ECE3C  66894720                mov      word ptr [edi + 0x20], ax      
  0x001ECE40  807b2000                cmp      byte ptr [ebx + 0x20], 0       
  0x001ECE44  8b4610                  mov      eax, dword ptr [esi + 0x10]    
  0x001ECE47  894304                  mov      dword ptr [ebx + 4], eax       
  0x001ECE4A  7504                    jne      0x1ece50                       
  0x001ECE4C  806301bf                and      byte ptr [ebx + 1], 0xbf       
                                        ; XREF: 0x001ECE4A (cond_jump)
  0x001ECE50  8a5b11                  mov      bl, byte ptr [ebx + 0x11]      
  0x001ECE53  84db                    test     bl, bl                         
  0x001ECE55  750e                    jne      0x1ece65                       
  0x001ECE57  8b45e0                  mov      eax, dword ptr [ebp - 0x20]    
  0x001ECE5A  8b00                    mov      eax, dword ptr [eax]           
  0x001ECE5C  c7400802000000          mov      dword ptr [eax + 8], 2         
  0x001ECE63  eb11                    jmp      0x1ece76                       
                                        ; XREF: 0x001ECE55 (cond_jump)
  0x001ECE65  80fb02                  cmp      bl, 2                          
  0x001ECE68  750c                    jne      0x1ece76                       
  0x001ECE6A  8b45e0                  mov      eax, dword ptr [ebp - 0x20]    
  0x001ECE6D  8b00                    mov      eax, dword ptr [eax]           
  0x001ECE6F  c7400804000000          mov      dword ptr [eax + 8], 4         
                                        ; XREF: 0x001ECE63 (jump), 0x001ECE68 (cond_jump)
  0x001ECE76  5f                      pop      edi                            
  0x001ECE77  5e                      pop      esi                            
  0x001ECE78  5b                      pop      ebx                            
  0x001ECE79  c9                      leave                                   
  0x001ECE7A  c20400                  ret      4                              

; ============================================================
; Function: sub_001ECE7D
; Start: 0x001ECE7D  End: 0x001ECED0  Size: 83 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001ECB7F
; ============================================================
sub_001ECE7D:
  0x001ECE7D  55                      push     ebp                            
  0x001ECE7E  8bec                    mov      ebp, esp                       
  0x001ECE80  51                      push     ecx                            
  0x001ECE81  56                      push     esi                            
  0x001ECE82  8bf2                    mov      esi, edx                       
  0x001ECE84  837e2800                cmp      dword ptr [esi + 0x28], 0      
  0x001ECE88  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001ECE8B  7440                    je       0x1ececd                       
  0x001ECE8D  53                      push     ebx                            
                                        ; XREF: 0x001ECECA (cond_jump)
  0x001ECE8E  8b4628                  mov      eax, dword ptr [esi + 0x28]    
  0x001ECE91  668b5624                mov      dx, word ptr [esi + 0x24]      
  0x001ECE95  0fb75820                movzx    ebx, word ptr [eax + 0x20]     
  0x001ECE99  0fb7ca                  movzx    ecx, dx                        
  0x001ECE9C  03cb                    add      ecx, ebx                       
  0x001ECE9E  83f903                  cmp      ecx, 3                         
  0x001ECEA1  7f29                    jg       0x1ececc                       
  0x001ECEA3  8b4824                  mov      ecx, dword ptr [eax + 0x24]    
  0x001ECEA6  85c9                    test     ecx, ecx                       
  0x001ECEA8  894e28                  mov      dword ptr [esi + 0x28], ecx    
  0x001ECEAB  7503                    jne      0x1eceb0                       
  0x001ECEAD  214e2c                  and      dword ptr [esi + 0x2c], ecx    
                                        ; XREF: 0x001ECEAB (cond_jump)
  0x001ECEB0  668b4820                mov      cx, word ptr [eax + 0x20]      
  0x001ECEB4  6603ca                  add      cx, dx                         
  0x001ECEB7  66894e24                mov      word ptr [esi + 0x24], cx      
  0x001ECEBB  8b4dfc                  mov      ecx, dword ptr [ebp - 4]       
  0x001ECEBE  50                      push     eax                            
  0x001ECEBF  8bd6                    mov      edx, esi                       
  0x001ECEC1  e8b9fcffff              call     0x1ecb7f                       ; -> sub_001ECB7F
  0x001ECEC6  837e2800                cmp      dword ptr [esi + 0x28], 0      
  0x001ECECA  75c2                    jne      0x1ece8e                       
                                        ; XREF: 0x001ECEA1 (cond_jump)
  0x001ECECC  5b                      pop      ebx                            
                                        ; XREF: 0x001ECE8B (cond_jump)
  0x001ECECD  5e                      pop      esi                            
  0x001ECECE  c9                      leave                                   
  0x001ECECF  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001ECED0
; Start: 0x001ECED0  End: 0x001ECF1D  Size: 77 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001ECAF3, sub_001ECB7F
; ============================================================
sub_001ECED0:
  0x001ECED0  56                      push     esi                            
  0x001ECED1  8bf1                    mov      esi, ecx                       
  0x001ECED3  83be2404000000          cmp      dword ptr [esi + 0x424], 0     
  0x001ECEDA  743f                    je       0x1ecf1b                       
  0x001ECEDC  57                      push     edi                            
                                        ; XREF: 0x001ECF18 (cond_jump)
  0x001ECEDD  8bbe24040000            mov      edi, dword ptr [esi + 0x424]   
  0x001ECEE3  33c0                    xor      eax, eax                       
  0x001ECEE5  668b4720                mov      ax, word ptr [edi + 0x20]      
  0x001ECEE9  50                      push     eax                            
  0x001ECEEA  e804fcffff              call     0x1ecaf3                       ; -> sub_001ECAF3
  0x001ECEEF  84c0                    test     al, al                         
  0x001ECEF1  7427                    je       0x1ecf1a                       
  0x001ECEF3  8b4724                  mov      eax, dword ptr [edi + 0x24]    
  0x001ECEF6  85c0                    test     eax, eax                       
  0x001ECEF8  898624040000            mov      dword ptr [esi + 0x424], eax   
  0x001ECEFE  7506                    jne      0x1ecf06                       
  0x001ECF00  218628040000            and      dword ptr [esi + 0x428], eax   
                                        ; XREF: 0x001ECEFE (cond_jump)
  0x001ECF06  8b5710                  mov      edx, dword ptr [edi + 0x10]    
  0x001ECF09  57                      push     edi                            
  0x001ECF0A  8bce                    mov      ecx, esi                       
  0x001ECF0C  e86efcffff              call     0x1ecb7f                       ; -> sub_001ECB7F
  0x001ECF11  83be2404000000          cmp      dword ptr [esi + 0x424], 0     
  0x001ECF18  75c3                    jne      0x1ecedd                       
                                        ; XREF: 0x001ECEF1 (cond_jump)
  0x001ECF1A  5f                      pop      edi                            
                                        ; XREF: 0x001ECEDA (cond_jump)
  0x001ECF1B  5e                      pop      esi                            
  0x001ECF1C  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001ECF1D
; Start: 0x001ECF1D  End: 0x001ECF6A  Size: 77 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001ECAD4, sub_001ECB7F
; ============================================================
sub_001ECF1D:
  0x001ECF1D  56                      push     esi                            
  0x001ECF1E  8bf1                    mov      esi, ecx                       
  0x001ECF20  83be1c04000000          cmp      dword ptr [esi + 0x41c], 0     
  0x001ECF27  743f                    je       0x1ecf68                       
  0x001ECF29  57                      push     edi                            
                                        ; XREF: 0x001ECF65 (cond_jump)
  0x001ECF2A  8bbe1c040000            mov      edi, dword ptr [esi + 0x41c]   
  0x001ECF30  33c0                    xor      eax, eax                       
  0x001ECF32  668b4720                mov      ax, word ptr [edi + 0x20]      
  0x001ECF36  50                      push     eax                            
  0x001ECF37  e898fbffff              call     0x1ecad4                       ; -> sub_001ECAD4
  0x001ECF3C  84c0                    test     al, al                         
  0x001ECF3E  7427                    je       0x1ecf67                       
  0x001ECF40  8b4724                  mov      eax, dword ptr [edi + 0x24]    
  0x001ECF43  85c0                    test     eax, eax                       
  0x001ECF45  89861c040000            mov      dword ptr [esi + 0x41c], eax   
  0x001ECF4B  7506                    jne      0x1ecf53                       
  0x001ECF4D  218620040000            and      dword ptr [esi + 0x420], eax   
                                        ; XREF: 0x001ECF4B (cond_jump)
  0x001ECF53  8b5710                  mov      edx, dword ptr [edi + 0x10]    
  0x001ECF56  57                      push     edi                            
  0x001ECF57  8bce                    mov      ecx, esi                       
  0x001ECF59  e821fcffff              call     0x1ecb7f                       ; -> sub_001ECB7F
  0x001ECF5E  83be1c04000000          cmp      dword ptr [esi + 0x41c], 0     
  0x001ECF65  75c3                    jne      0x1ecf2a                       
                                        ; XREF: 0x001ECF3E (cond_jump)
  0x001ECF67  5f                      pop      edi                            
                                        ; XREF: 0x001ECF27 (cond_jump)
  0x001ECF68  5e                      pop      esi                            
  0x001ECF69  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001ECF6A
; Start: 0x001ECF6A  End: 0x001ECF7C  Size: 18 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001ED015
; ============================================================
sub_001ECF6A:
  0x001ECF6A  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001ECF6E  6683782003              cmp      word ptr [eax + 0x20], 3       
  0x001ECF73  7607                    jbe      0x1ecf7c                       
  0x001ECF75  b800050080              mov      eax, 0x80000500                
  0x001ECF7A  eb1e                    jmp      0x1ecf9a                       
; end of function
                                        ; XREF: 0x001ECF73 (cond_jump)
  0x001ECF7C  56                      push     esi                            
  0x001ECF7D  8b722c                  mov      esi, dword ptr [edx + 0x2c]    
  0x001ECF80  85f6                    test     esi, esi                       
  0x001ECF82  7405                    je       0x1ecf89                       
  0x001ECF84  894624                  mov      dword ptr [esi + 0x24], eax    
  0x001ECF87  eb03                    jmp      0x1ecf8c                       
                                        ; XREF: 0x001ECF82 (cond_jump)
  0x001ECF89  894228                  mov      dword ptr [edx + 0x28], eax    
                                        ; XREF: 0x001ECF87 (jump)
  0x001ECF8C  89422c                  mov      dword ptr [edx + 0x2c], eax    
  0x001ECF8F  e8e9feffff              call     0x1ece7d                       ; -> sub_001ECE7D
  0x001ECF94  b800000040              mov      eax, 0x40000000                
  0x001ECF99  5e                      pop      esi                            
                                        ; XREF: 0x001ECF7A (jump)
  0x001ECF9A  c20400                  ret      4                              

; ============================================================
; Function: sub_001ECF9D
; Start: 0x001ECF9D  End: 0x001ECFB0  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001ED015
; ============================================================
sub_001ECF9D:
  0x001ECF9D  668b4220                mov      ax, word ptr [edx + 0x20]      
  0x001ECFA1  663b05044fbf00          cmp      ax, word ptr [0xbf4f04]        
  0x001ECFA8  7606                    jbe      0x1ecfb0                       
  0x001ECFAA  b800050080              mov      eax, 0x80000500                
  0x001ECFAF  c3                      ret                                     
; end of function
                                        ; XREF: 0x001ECFA8 (cond_jump)
  0x001ECFB0  8d8124040000            lea      eax, [ecx + 0x424]             
  0x001ECFB6  833800                  cmp      dword ptr [eax], 0             
  0x001ECFB9  740b                    je       0x1ecfc6                       
  0x001ECFBB  8b8128040000            mov      eax, dword ptr [ecx + 0x428]   
  0x001ECFC1  895024                  mov      dword ptr [eax + 0x24], edx    
  0x001ECFC4  eb02                    jmp      0x1ecfc8                       
                                        ; XREF: 0x001ECFB9 (cond_jump)
  0x001ECFC6  8910                    mov      dword ptr [eax], edx           
                                        ; XREF: 0x001ECFC4 (jump)
  0x001ECFC8  899128040000            mov      dword ptr [ecx + 0x428], edx   
  0x001ECFCE  e8fdfeffff              call     0x1eced0                       ; -> sub_001ECED0
  0x001ECFD3  b800000040              mov      eax, 0x40000000                
  0x001ECFD8  c3                      ret                                     

; ============================================================
; Function: sub_001ECFD9
; Start: 0x001ECFD9  End: 0x001ECFEC  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001ECFD9:
  0x001ECFD9  668b4220                mov      ax, word ptr [edx + 0x20]      
  0x001ECFDD  663b05004fbf00          cmp      ax, word ptr [0xbf4f00]        
  0x001ECFE4  7606                    jbe      0x1ecfec                       
  0x001ECFE6  b800050080              mov      eax, 0x80000500                
  0x001ECFEB  c3                      ret                                     
; end of function
                                        ; XREF: 0x001ECFE4 (cond_jump)
  0x001ECFEC  8d811c040000            lea      eax, [ecx + 0x41c]             
  0x001ECFF2  833800                  cmp      dword ptr [eax], 0             
  0x001ECFF5  740b                    je       0x1ed002                       
  0x001ECFF7  8b8120040000            mov      eax, dword ptr [ecx + 0x420]   
  0x001ECFFD  895024                  mov      dword ptr [eax + 0x24], edx    
  0x001ED000  eb02                    jmp      0x1ed004                       
                                        ; XREF: 0x001ECFF5 (cond_jump)
  0x001ED002  8910                    mov      dword ptr [eax], edx           
                                        ; XREF: 0x001ED000 (jump)
  0x001ED004  899120040000            mov      dword ptr [ecx + 0x420], edx   
  0x001ED00A  e80effffff              call     0x1ecf1d                       ; -> sub_001ECF1D
  0x001ED00F  b800000040              mov      eax, 0x40000000                
  0x001ED014  c3                      ret                                     

; ============================================================
; Function: sub_001ED015
; Start: 0x001ED015  End: 0x001ED074  Size: 95 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001ECB12, sub_001ECF6A, sub_001ECF9D
; Called by: sub_001EAA4A
; ============================================================
sub_001ED015:
  0x001ED015  55                      push     ebp                            
  0x001ED016  8bec                    mov      ebp, esp                       
  0x001ED018  51                      push     ecx                            
  0x001ED019  53                      push     ebx                            
  0x001ED01A  56                      push     esi                            
  0x001ED01B  8bf2                    mov      esi, edx                       
  0x001ED01D  57                      push     edi                            
  0x001ED01E  8b7e10                  mov      edi, dword ptr [esi + 0x10]    
  0x001ED021  8bd9                    mov      ebx, ecx                       
  0x001ED023  8bd7                    mov      edx, edi                       
  0x001ED025  8bce                    mov      ecx, esi                       
  0x001ED027  e8e6faffff              call     0x1ecb12                       ; -> sub_001ECB12
  0x001ED02C  66894620                mov      word ptr [esi + 0x20], ax      
  0x001ED030  ff15d4d11e00            call     dword ptr [0x1ed1d4]           ; -> xbox_KeRaiseIrqlToDpcLevel
  0x001ED036  fe4726                  inc      byte ptr [edi + 0x26]          
  0x001ED039  83662400                and      dword ptr [esi + 0x24], 0      
  0x001ED03D  8845ff                  mov      byte ptr [ebp - 1], al         
  0x001ED040  66c746220200            mov      word ptr [esi + 0x22], 2       
  0x001ED046  0fb64711                movzx    eax, byte ptr [edi + 0x11]     
  0x001ED04A  83e800                  sub      eax, 0                         
  0x001ED04D  7425                    je       0x1ed074                       
  0x001ED04F  48                      dec      eax                            
  0x001ED050  48                      dec      eax                            
  0x001ED051  7416                    je       0x1ed069                       
  0x001ED053  48                      dec      eax                            
  0x001ED054  7407                    je       0x1ed05d                       
  0x001ED056  bb00060080              mov      ebx, 0x80000600                
  0x001ED05B  eb26                    jmp      0x1ed083                       
                                        ; XREF: 0x001ED054 (cond_jump)
  0x001ED05D  56                      push     esi                            
  0x001ED05E  8bd7                    mov      edx, edi                       
  0x001ED060  8bcb                    mov      ecx, ebx                       
  0x001ED062  e803ffffff              call     0x1ecf6a                       ; -> sub_001ECF6A
  0x001ED067  eb14                    jmp      0x1ed07d                       
                                        ; XREF: 0x001ED051 (cond_jump)
  0x001ED069  8bd6                    mov      edx, esi                       
  0x001ED06B  8bcb                    mov      ecx, ebx                       
  0x001ED06D  e82bffffff              call     0x1ecf9d                       ; -> sub_001ECF9D
  0x001ED072  eb09                    jmp      0x1ed07d                       
; end of function
                                        ; XREF: 0x001ED04D (cond_jump)
  0x001ED074  8bd6                    mov      edx, esi                       
  0x001ED076  8bcb                    mov      ecx, ebx                       
  0x001ED078  e85cffffff              call     0x1ecfd9                       ; -> sub_001ECFD9
                                        ; XREF: 0x001ED067 (jump), 0x001ED072 (jump)
  0x001ED07D  8bd8                    mov      ebx, eax                       
  0x001ED07F  85db                    test     ebx, ebx                       
  0x001ED081  7d08                    jge      0x1ed08b                       
                                        ; XREF: 0x001ED05B (jump)
  0x001ED083  6683662200              and      word ptr [esi + 0x22], 0       
  0x001ED088  fe4f26                  dec      byte ptr [edi + 0x26]          
                                        ; XREF: 0x001ED081 (cond_jump)
  0x001ED08B  8a4dff                  mov      cl, byte ptr [ebp - 1]         
  0x001ED08E  ff15d0d11e00            call     dword ptr [0x1ed1d0]           ; -> xbox_KfLowerIrql
  0x001ED094  5f                      pop      edi                            
  0x001ED095  5e                      pop      esi                            
  0x001ED096  8bc3                    mov      eax, ebx                       
  0x001ED098  5b                      pop      ebx                            
  0x001ED099  c9                      leave                                   
  0x001ED09A  c3                      ret                                     
  0x001ED09B  cc                      int3                                    

; ============================================================
; Function: sub_001ED09C
; Start: 0x001ED09C  End: 0x001ED0DB  Size: 63 bytes
; Detection: cc_boundary (confidence: 0.85)
; ============================================================
sub_001ED09C:
  0x001ED09C  5c                      pop      esp                            
  0x001ED09D  44                      inc      esp                            
  0x001ED09E  657669                  jbe      0x1ed10a                       
  0x001ED0A1  63655c                  arpl     word ptr [ebp + 0x5c], sp      
  0x001ED0A4  4d                      dec      ebp                            
  0x001ED0A5  55                      push     ebp                            
  0x001ED0A6  5f                      pop      edi                            
  0x001ED0A7  3000                    xor      byte ptr [eax], al             
  0x001ED0A9  0000                    add      byte ptr [eax], al             
  0x001ED0AB  005c4465                add      byte ptr [esp + eax*2 + 0x65], bl 
  0x001ED0AF  7669                    jbe      0x1ed11a                       
  0x001ED0B1  63655c                  arpl     word ptr [ebp + 0x5c], sp      
  0x001ED0B4  4d                      dec      ebp                            
  0x001ED0B5  55                      push     ebp                            
  0x001ED0B6  5f                      pop      edi                            
  0x001ED0B7  2578000000              and      eax, 0x78                      
  0x001ED0BC  393531463045            cmp      dword ptr [0x45304631], esi    
  0x001ED0C2  46                      inc      esi                            
  0x001ED0C3  363330                  xor      esi, dword ptr ss:[eax]        
  0x001ED0C6  44                      inc      esp                            
  0x001ED0C7  43                      inc      ebx                            
  0x001ED0C8  3436                    xor      al, 0x36                       
  0x001ED0CA  64395f43                cmp      dword ptr fs:[edi + 0x43], ebx 
  0x001ED0CE  4f                      dec      edi                            
  0x001ED0CF  52                      push     edx                            
  0x001ED0D0  52                      push     edx                            
  0x001ED0D1  55                      push     ebp                            
  0x001ED0D2  50                      push     eax                            
  0x001ED0D3  54                      push     esp                            
  0x001ED0D4  5f                      pop      edi                            
  0x001ED0D5  53                      push     ebx                            
  0x001ED0D6  45                      inc      ebp                            
  0x001ED0D7  43                      inc      ebx                            
  0x001ED0D8  54                      push     esp                            
  0x001ED0D9  4f                      dec      edi                            
  0x001ED0DA  52                      push     edx                            
; end of function
