; ============================================================
; Section: XGRPH
; VA: 0x001C64A0 - 0x001C6A9C
; Size: 1532 bytes (1.5 KB)
; Functions: 11
; Instructions: 592
; ============================================================


; ============================================================
; Function: sub_001C64A0
; Start: 0x001C64A0  End: 0x001C64B7  Size: 23 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001C64C8, sub_001C64DB
; ============================================================
sub_001C64A0:
  0x001C64A0  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C64A4  83f80c                  cmp      eax, 0xc                       
  0x001C64A7  740e                    je       0x1c64b7                       
  0x001C64A9  83f80d                  cmp      eax, 0xd                       
  0x001C64AC  7605                    jbe      0x1c64b3                       
  0x001C64AE  83f80f                  cmp      eax, 0xf                       
  0x001C64B1  7604                    jbe      0x1c64b7                       
                                        ; XREF: 0x001C64AC (cond_jump)
  0x001C64B3  32c0                    xor      al, al                         
  0x001C64B5  eb02                    jmp      0x1c64b9                       
; end of function
                                        ; XREF: 0x001C64A7 (cond_jump), 0x001C64B1 (cond_jump)
  0x001C64B7  b001                    mov      al, 1                          
                                        ; XREF: 0x001C64B5 (jump)
  0x001C64B9  c20400                  ret      4                              

; ============================================================
; Function: sub_001C64BC
; Start: 0x001C64BC  End: 0x001C64C8  Size: 12 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C64BC:
  0x001C64BC  51                      push     ecx                            
  0x001C64BD  894c2400                mov      dword ptr [esp], ecx           
  0x001C64C1  0fbc442400              bsf      eax, dword ptr [esp]           
  0x001C64C6  59                      pop      ecx                            
  0x001C64C7  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001C64C8
; Start: 0x001C64C8  End: 0x001C64DB  Size: 19 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001C64A0
; ============================================================
sub_001C64C8:
  0x001C64C8  ff742404                push     dword ptr [esp + 4]            
  0x001C64CC  e8cfffffff              call     0x1c64a0                       ; -> sub_001C64A0
  0x001C64D1  f6d8                    neg      al                             
  0x001C64D3  1bc0                    sbb      eax, eax                       
  0x001C64D5  83e002                  and      eax, 2                         
  0x001C64D8  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001C64DB
; Start: 0x001C64DB  End: 0x001C654C  Size: 113 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001C64A0
; Called by: sub_001C6685, sub_001C66D3
; ============================================================
sub_001C64DB:
  0x001C64DB  55                      push     ebp                            
  0x001C64DC  8bec                    mov      ebp, esp                       
  0x001C64DE  83ec14                  sub      esp, 0x14                      
  0x001C64E1  8b4d18                  mov      ecx, dword ptr [ebp + 0x18]    
  0x001C64E4  8a81586a1c00            mov      al, byte ptr [ecx + 0x1c6a58]  
  0x001C64EA  33d2                    xor      edx, edx                       
  0x001C64EC  8ad0                    mov      dl, al                         
  0x001C64EE  53                      push     ebx                            
  0x001C64EF  8a5d24                  mov      bl, byte ptr [ebp + 0x24]      
  0x001C64F2  56                      push     esi                            
  0x001C64F3  57                      push     edi                            
  0x001C64F4  33f6                    xor      esi, esi                       
  0x001C64F6  8975fc                  mov      dword ptr [ebp - 4], esi       
  0x001C64F9  83e23c                  and      edx, 0x3c                      
  0x001C64FC  a801                    test     al, 1                          
  0x001C64FE  8bfa                    mov      edi, edx                       
  0x001C6500  897dec                  mov      dword ptr [ebp - 0x14], edi    
  0x001C6503  7547                    jne      0x1c654c                       
  0x001C6505  51                      push     ecx                            
  0x001C6506  e895ffffff              call     0x1c64a0                       ; -> sub_001C64A0
  0x001C650B  84c0                    test     al, al                         
  0x001C650D  753d                    jne      0x1c654c                       
  0x001C650F  33c0                    xor      eax, eax                       
  0x001C6511  394514                  cmp      dword ptr [ebp + 0x14], eax    
  0x001C6514  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C6517  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C651A  7507                    jne      0x1c6523                       
  0x001C651C  c7451401000000          mov      dword ptr [ebp + 0x14], 1      
                                        ; XREF: 0x001C651A (cond_jump)
  0x001C6523  8b4d1c                  mov      ecx, dword ptr [ebp + 0x1c]    
  0x001C6526  3bc8                    cmp      ecx, eax                       
  0x001C6528  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C652B  750e                    jne      0x1c653b                       
  0x001C652D  0faff8                  imul     edi, eax                       
  0x001C6530  c1ef03                  shr      edi, 3                         
  0x001C6533  83c73f                  add      edi, 0x3f                      
  0x001C6536  83e7c0                  and      edi, 0xffffffc0                
  0x001C6539  8bcf                    mov      ecx, edi                       
                                        ; XREF: 0x001C652B (cond_jump)
  0x001C653B  894510                  mov      dword ptr [ebp + 0x10], eax    
  0x001C653E  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001C6541  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001C6544  0fafc1                  imul     eax, ecx                       
  0x001C6547  e9bf000000              jmp      0x1c660b                       
; end of function
                                        ; XREF: 0x001C6503 (cond_jump), 0x001C650D (cond_jump)
  0x001C654C  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001C654F  e868ffffff              call     0x1c64bc                       ; -> sub_001C64BC
  0x001C6554  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001C6557  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C655A  e85dffffff              call     0x1c64bc                       ; -> sub_001C64BC
  0x001C655F  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001C6562  8bf8                    mov      edi, eax                       
  0x001C6564  897df4                  mov      dword ptr [ebp - 0xc], edi     
  0x001C6567  e850ffffff              call     0x1c64bc                       ; -> sub_001C64BC
  0x001C656C  ff7518                  push     dword ptr [ebp + 0x18]         
  0x001C656F  83651000                and      dword ptr [ebp + 0x10], 0      
  0x001C6573  8365f000                and      dword ptr [ebp - 0x10], 0      
  0x001C6577  8bf0                    mov      esi, eax                       
  0x001C6579  e84affffff              call     0x1c64c8                       ; -> sub_001C64C8
  0x001C657E  837d1400                cmp      dword ptr [ebp + 0x14], 0      
  0x001C6582  894508                  mov      dword ptr [ebp + 8], eax       
  0x001C6585  751e                    jne      0x1c65a5                       
  0x001C6587  3bfe                    cmp      edi, esi                       
  0x001C6589  8bcf                    mov      ecx, edi                       
  0x001C658B  7702                    ja       0x1c658f                       
  0x001C658D  8bce                    mov      ecx, esi                       
                                        ; XREF: 0x001C658B (cond_jump)
  0x001C658F  394df8                  cmp      dword ptr [ebp - 8], ecx       
  0x001C6592  7605                    jbe      0x1c6599                       
  0x001C6594  8b4df8                  mov      ecx, dword ptr [ebp - 8]       
  0x001C6597  eb08                    jmp      0x1c65a1                       
                                        ; XREF: 0x001C6592 (cond_jump)
  0x001C6599  3bfe                    cmp      edi, esi                       
  0x001C659B  8bcf                    mov      ecx, edi                       
  0x001C659D  7702                    ja       0x1c65a1                       
  0x001C659F  8bce                    mov      ecx, esi                       
                                        ; XREF: 0x001C6597 (jump), 0x001C659D (cond_jump)
  0x001C65A1  41                      inc      ecx                            
  0x001C65A2  894d14                  mov      dword ptr [ebp + 0x14], ecx    
                                        ; XREF: 0x001C6585 (cond_jump)
  0x001C65A5  8b4d14                  mov      ecx, dword ptr [ebp + 0x14]    
  0x001C65A8  85c9                    test     ecx, ecx                       
  0x001C65AA  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001C65AD  897d24                  mov      dword ptr [ebp + 0x24], edi    
  0x001C65B0  8bfe                    mov      edi, esi                       
  0x001C65B2  7442                    je       0x1c65f6                       
  0x001C65B4  894d0c                  mov      dword ptr [ebp + 0xc], ecx     
                                        ; XREF: 0x001C65F4 (cond_jump)
  0x001C65B7  8b5508                  mov      edx, dword ptr [ebp + 8]       
  0x001C65BA  3bc2                    cmp      eax, edx                       
  0x001C65BC  7602                    jbe      0x1c65c0                       
  0x001C65BE  8bd0                    mov      edx, eax                       
                                        ; XREF: 0x001C65BC (cond_jump)
  0x001C65C0  8b4d08                  mov      ecx, dword ptr [ebp + 8]       
  0x001C65C3  394d24                  cmp      dword ptr [ebp + 0x24], ecx    
  0x001C65C6  7603                    jbe      0x1c65cb                       
  0x001C65C8  8b4d24                  mov      ecx, dword ptr [ebp + 0x24]    
                                        ; XREF: 0x001C65C6 (cond_jump)
  0x001C65CB  03ca                    add      ecx, edx                       
  0x001C65CD  33d2                    xor      edx, edx                       
  0x001C65CF  42                      inc      edx                            
  0x001C65D0  03cf                    add      ecx, edi                       
  0x001C65D2  d3e2                    shl      edx, cl                        
  0x001C65D4  0faf55ec                imul     edx, dword ptr [ebp - 0x14]    
  0x001C65D8  c1ea03                  shr      edx, 3                         
  0x001C65DB  0155fc                  add      dword ptr [ebp - 4], edx       
  0x001C65DE  85c0                    test     eax, eax                       
  0x001C65E0  7601                    jbe      0x1c65e3                       
  0x001C65E2  48                      dec      eax                            
                                        ; XREF: 0x001C65E0 (cond_jump)
  0x001C65E3  837d2400                cmp      dword ptr [ebp + 0x24], 0      
  0x001C65E7  7603                    jbe      0x1c65ec                       
  0x001C65E9  ff4d24                  dec      dword ptr [ebp + 0x24]         
                                        ; XREF: 0x001C65E7 (cond_jump)
  0x001C65EC  85ff                    test     edi, edi                       
  0x001C65EE  7601                    jbe      0x1c65f1                       
  0x001C65F0  4f                      dec      edi                            
                                        ; XREF: 0x001C65EE (cond_jump)
  0x001C65F1  ff4d0c                  dec      dword ptr [ebp + 0xc]          
  0x001C65F4  75c1                    jne      0x1c65b7                       
                                        ; XREF: 0x001C65B2 (cond_jump)
  0x001C65F6  84db                    test     bl, bl                         
  0x001C65F8  8b4d1c                  mov      ecx, dword ptr [ebp + 0x1c]    
  0x001C65FB  7411                    je       0x1c660e                       
  0x001C65FD  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001C6600  83c07f                  add      eax, 0x7f                      
  0x001C6603  83e080                  and      eax, 0xffffff80                
  0x001C6606  8d0440                  lea      eax, [eax + eax*2]             
  0x001C6609  d1e0                    shl      eax, 1                         
                                        ; XREF: 0x001C6547 (jump)
  0x001C660B  8945fc                  mov      dword ptr [ebp - 4], eax       
                                        ; XREF: 0x001C65FB (cond_jump)
  0x001C660E  c1e604                  shl      esi, 4                         
  0x001C6611  0b75f4                  or       esi, dword ptr [ebp - 0xc]     
  0x001C6614  33c0                    xor      eax, eax                       
  0x001C6616  c1e604                  shl      esi, 4                         
  0x001C6619  0b75f8                  or       esi, dword ptr [ebp - 8]       
  0x001C661C  5f                      pop      edi                            
  0x001C661D  c1e604                  shl      esi, 4                         
  0x001C6620  0b7514                  or       esi, dword ptr [ebp + 0x14]    
  0x001C6623  c1e608                  shl      esi, 8                         
  0x001C6626  0b7518                  or       esi, dword ptr [ebp + 0x18]    
  0x001C6629  c1e604                  shl      esi, 4                         
  0x001C662C  384528                  cmp      byte ptr [ebp + 0x28], al      
  0x001C662F  0f95c0                  setne    al                             
  0x001C6632  40                      inc      eax                            
  0x001C6633  40                      inc      eax                            
  0x001C6634  0bf0                    or       esi, eax                       
  0x001C6636  c1e604                  shl      esi, 4                         
  0x001C6639  33c0                    xor      eax, eax                       
  0x001C663B  384520                  cmp      byte ptr [ebp + 0x20], al      
  0x001C663E  0f95c0                  setne    al                             
  0x001C6641  40                      inc      eax                            
  0x001C6642  0bf0                    or       esi, eax                       
  0x001C6644  8b452c                  mov      eax, dword ptr [ebp + 0x2c]    
  0x001C6647  f6db                    neg      bl                             
  0x001C6649  1bdb                    sbb      ebx, ebx                       
  0x001C664B  83e304                  and      ebx, 4                         
  0x001C664E  0bf3                    or       esi, ebx                       
  0x001C6650  83ce08                  or       esi, 8                         
  0x001C6653  8930                    mov      dword ptr [eax], esi           
  0x001C6655  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001C6658  85c0                    test     eax, eax                       
  0x001C665A  5e                      pop      esi                            
  0x001C665B  5b                      pop      ebx                            
  0x001C665C  741a                    je       0x1c6678                       
  0x001C665E  8b55f0                  mov      edx, dword ptr [ebp - 0x10]    
  0x001C6661  c1e906                  shr      ecx, 6                         
  0x001C6664  49                      dec      ecx                            
  0x001C6665  c1e10c                  shl      ecx, 0xc                       
  0x001C6668  4a                      dec      edx                            
  0x001C6669  0bca                    or       ecx, edx                       
  0x001C666B  c1e10c                  shl      ecx, 0xc                       
  0x001C666E  48                      dec      eax                            
  0x001C666F  0bc8                    or       ecx, eax                       
  0x001C6671  8b4530                  mov      eax, dword ptr [ebp + 0x30]    
  0x001C6674  8908                    mov      dword ptr [eax], ecx           
  0x001C6676  eb06                    jmp      0x1c667e                       
                                        ; XREF: 0x001C665C (cond_jump)
  0x001C6678  8b4530                  mov      eax, dword ptr [ebp + 0x30]    
  0x001C667B  832000                  and      dword ptr [eax], 0             
                                        ; XREF: 0x001C6676 (jump)
  0x001C667E  8b45fc                  mov      eax, dword ptr [ebp - 4]       
  0x001C6681  c9                      leave                                   
  0x001C6682  c22c00                  ret      0x2c                           

; ============================================================
; Function: sub_001C6685
; Start: 0x001C6685  End: 0x001C66D3  Size: 78 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001C64DB
; Called by: sub_001C6716
; ============================================================
sub_001C6685:
  0x001C6685  55                      push     ebp                            
  0x001C6686  8bec                    mov      ebp, esp                       
  0x001C6688  56                      push     esi                            
  0x001C6689  8b7530                  mov      esi, dword ptr [ebp + 0x30]    
  0x001C668C  57                      push     edi                            
  0x001C668D  8d4610                  lea      eax, [esi + 0x10]              
  0x001C6690  50                      push     eax                            
  0x001C6691  8d7e0c                  lea      edi, [esi + 0xc]               
  0x001C6694  57                      push     edi                            
  0x001C6695  ff7528                  push     dword ptr [ebp + 0x28]         
  0x001C6698  ff7524                  push     dword ptr [ebp + 0x24]         
  0x001C669B  6a01                    push     1                              
  0x001C669D  ff7520                  push     dword ptr [ebp + 0x20]         
  0x001C66A0  ff751c                  push     dword ptr [ebp + 0x1c]         
  0x001C66A3  ff7514                  push     dword ptr [ebp + 0x14]         
  0x001C66A6  ff7510                  push     dword ptr [ebp + 0x10]         
  0x001C66A9  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001C66AC  ff7508                  push     dword ptr [ebp + 8]            
  0x001C66AF  e827feffff              call     0x1c64db                       ; -> sub_001C64DB
  0x001C66B4  f6451a01                test     byte ptr [ebp + 0x1a], 1       
  0x001C66B8  7403                    je       0x1c66bd                       
  0x001C66BA  8327f7                  and      dword ptr [edi], 0xfffffff7    
                                        ; XREF: 0x001C66B8 (cond_jump)
  0x001C66BD  8b452c                  mov      eax, dword ptr [ebp + 0x2c]    
  0x001C66C0  83660800                and      dword ptr [esi + 8], 0         
  0x001C66C4  5f                      pop      edi                            
  0x001C66C5  c70601000400            mov      dword ptr [esi], 0x40001       
  0x001C66CB  894604                  mov      dword ptr [esi + 4], eax       
  0x001C66CE  5e                      pop      esi                            
  0x001C66CF  5d                      pop      ebp                            
  0x001C66D0  c22c00                  ret      0x2c                           
; end of function

; ============================================================
; Function: sub_001C66D3
; Start: 0x001C66D3  End: 0x001C6716  Size: 67 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001C64DB
; Called by: sub_000B8855, sub_000E3D10, sub_00104930
; ============================================================
sub_001C66D3:
  0x001C66D3  55                      push     ebp                            
  0x001C66D4  8bec                    mov      ebp, esp                       
  0x001C66D6  56                      push     esi                            
  0x001C66D7  8b7514                  mov      esi, dword ptr [ebp + 0x14]    
  0x001C66DA  8d4610                  lea      eax, [esi + 0x10]              
  0x001C66DD  50                      push     eax                            
  0x001C66DE  8d460c                  lea      eax, [esi + 0xc]               
  0x001C66E1  50                      push     eax                            
  0x001C66E2  6a00                    push     0                              
  0x001C66E4  6a00                    push     0                              
  0x001C66E6  6a01                    push     1                              
  0x001C66E8  ff751c                  push     dword ptr [ebp + 0x1c]         
  0x001C66EB  ff7510                  push     dword ptr [ebp + 0x10]         
  0x001C66EE  6a01                    push     1                              
  0x001C66F0  6a01                    push     1                              
  0x001C66F2  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001C66F5  ff7508                  push     dword ptr [ebp + 8]            
  0x001C66F8  e8defdffff              call     0x1c64db                       ; -> sub_001C64DB
  0x001C66FD  83660800                and      dword ptr [esi + 8], 0         
  0x001C6701  8b4518                  mov      eax, dword ptr [ebp + 0x18]    
  0x001C6704  83661400                and      dword ptr [esi + 0x14], 0      
  0x001C6708  c70601000500            mov      dword ptr [esi], 0x50001       
  0x001C670E  894604                  mov      dword ptr [esi + 4], eax       
  0x001C6711  5e                      pop      esi                            
  0x001C6712  5d                      pop      ebp                            
  0x001C6713  c21800                  ret      0x18                           
; end of function

; ============================================================
; Function: sub_001C6716
; Start: 0x001C6716  End: 0x001C6740  Size: 42 bytes
; Detection: prologue (confidence: 0.95)
; Calls: sub_001C6685
; Called by: sub_00068940, sub_00157FB0, sub_00158050
; ============================================================
sub_001C6716:
  0x001C6716  55                      push     ebp                            
  0x001C6717  8bec                    mov      ebp, esp                       
  0x001C6719  ff7520                  push     dword ptr [ebp + 0x20]         
  0x001C671C  ff7524                  push     dword ptr [ebp + 0x24]         
  0x001C671F  6a00                    push     0                              
  0x001C6721  6a00                    push     0                              
  0x001C6723  ff7528                  push     dword ptr [ebp + 0x28]         
  0x001C6726  ff7518                  push     dword ptr [ebp + 0x18]         
  0x001C6729  ff7514                  push     dword ptr [ebp + 0x14]         
  0x001C672C  ff7510                  push     dword ptr [ebp + 0x10]         
  0x001C672F  6a01                    push     1                              
  0x001C6731  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001C6734  ff7508                  push     dword ptr [ebp + 8]            
  0x001C6737  e849ffffff              call     0x1c6685                       ; -> sub_001C6685
  0x001C673C  5d                      pop      ebp                            
  0x001C673D  c22400                  ret      0x24                           
; end of function

; ============================================================
; Function: sub_001C6740
; Start: 0x001C6740  End: 0x001C6754  Size: 20 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C6740:
  0x001C6740  8b442414                mov      eax, dword ptr [esp + 0x14]    
  0x001C6744  8b4c2418                mov      ecx, dword ptr [esp + 0x18]    
  0x001C6748  c70001000100            mov      dword ptr [eax], 0x10001       
  0x001C674E  894804                  mov      dword ptr [eax + 4], ecx       
  0x001C6751  c21800                  ret      0x18                           
; end of function

; ============================================================
; Function: sub_001C6754
; Start: 0x001C6754  End: 0x001C677D  Size: 41 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C6754:
  0x001C6754  8b4914                  mov      ecx, dword ptr [ecx + 0x14]    
  0x001C6757  33d2                    xor      edx, edx                       
  0x001C6759  42                      inc      edx                            
  0x001C675A  33c0                    xor      eax, eax                       
  0x001C675C  3bca                    cmp      ecx, edx                       
  0x001C675E  721a                    jb       0x1c677a                       
  0x001C6760  56                      push     esi                            
                                        ; XREF: 0x001C6777 (cond_jump)
  0x001C6761  85ca                    test     edx, ecx                       
  0x001C6763  740a                    je       0x1c676f                       
  0x001C6765  8bf2                    mov      esi, edx                       
  0x001C6767  23742408                and      esi, dword ptr [esp + 8]       
  0x001C676B  0bc6                    or       eax, esi                       
  0x001C676D  eb04                    jmp      0x1c6773                       
                                        ; XREF: 0x001C6763 (cond_jump)
  0x001C676F  d1642408                shl      dword ptr [esp + 8], 1         
                                        ; XREF: 0x001C676D (jump)
  0x001C6773  d1e2                    shl      edx, 1                         
  0x001C6775  3bd1                    cmp      edx, ecx                       
  0x001C6777  76e8                    jbe      0x1c6761                       
  0x001C6779  5e                      pop      esi                            
                                        ; XREF: 0x001C675E (cond_jump)
  0x001C677A  c20400                  ret      4                              
; end of function

; ============================================================
; Function: sub_001C677D
; Start: 0x001C677D  End: 0x001C67A2  Size: 37 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_00159D60
; ============================================================
sub_001C677D:
  0x001C677D  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C6781  83f841                  cmp      eax, 0x41                      
  0x001C6784  771c                    ja       0x1c67a2                       
  0x001C6786  0fb680b7671c00          movzx    eax, byte ptr [eax + 0x1c67b7] 
  0x001C678D  ff2485a7671c00          jmp      dword ptr [eax*4 + 0x1c67a7]   
  0x001C6794  6a04                    push     4                              
  0x001C6796  eb02                    jmp      0x1c679a                       
  0x001C6798  6a02                    push     2                              
                                        ; XREF: 0x001C6796 (jump)
  0x001C679A  58                      pop      eax                            
  0x001C679B  eb07                    jmp      0x1c67a4                       
  0x001C679D  33c0                    xor      eax, eax                       
  0x001C679F  40                      inc      eax                            
  0x001C67A0  eb02                    jmp      0x1c67a4                       
; end of function
                                        ; XREF: 0x001C6784 (cond_jump)
  0x001C67A2  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C679B (jump), 0x001C67A0 (jump)
  0x001C67A4  c20400                  ret      4                              
  0x001C67A7  9d                      popfd                                   
  0x001C67A8  671c00                  sbb      al, 0                          
  0x001C67AB  98                      cwde                                    
  0x001C67AC  671c00                  sbb      al, 0                          
  0x001C67AF  94                      xchg     esp, eax                       
  0x001C67B0  671c00                  sbb      al, 0                          
  0x001C67B3  a2671c0000              mov      byte ptr [0x1c67], al          
  0x001C67B8  0001                    add      byte ptr [ecx], al             
  0x001C67BA  0101                    add      dword ptr [ecx], eax           
  0x001C67BC  0102                    add      dword ptr [edx], eax           
  0x001C67BE  0203                    add      al, byte ptr [ebx]             
  0x001C67C0  0303                    add      eax, dword ptr [ebx]           
  0x001C67C2  0003                    add      byte ptr [ebx], al             
  0x001C67C4  0300                    add      eax, dword ptr [eax]           
  0x001C67C6  0001                    add      byte ptr [ecx], al             
  0x001C67C8  0102                    add      dword ptr [edx], eax           
  0x001C67CA  0003                    add      byte ptr [ebx], al             
  0x001C67CC  0301                    add      eax, dword ptr [ecx]           
  0x001C67CE  0103                    add      dword ptr [ebx], eax           
  0x001C67D0  0001                    add      byte ptr [ecx], al             
  0x001C67D2  0001                    add      byte ptr [ecx], al             
  0x001C67D4  0102                    add      dword ptr [edx], eax           
  0x001C67D6  0001                    add      byte ptr [ecx], al             
  0x001C67D8  0303                    add      eax, dword ptr [ebx]           
  0x001C67DA  0302                    add      eax, dword ptr [edx]           
  0x001C67DC  0203                    add      al, byte ptr [ebx]             
  0x001C67DE  0101                    add      dword ptr [ecx], eax           
  0x001C67E0  0102                    add      dword ptr [edx], eax           
  0x001C67E2  0201                    add      al, byte ptr [ecx]             
  0x001C67E4  0102                    add      dword ptr [edx], eax           
  0x001C67E6  0201                    add      al, byte ptr [ecx]             
  0x001C67E8  0101                    add      dword ptr [ecx], eax           
  0x001C67EA  0203                    add      al, byte ptr [ebx]             
  0x001C67EC  0103                    add      dword ptr [ebx], eax           
  0x001C67EE  0101                    add      dword ptr [ecx], eax           
  0x001C67F0  0102                    add      dword ptr [edx], eax           
  0x001C67F2  0202                    add      al, byte ptr [edx]             
  0x001C67F4  0101                    add      dword ptr [ecx], eax           
  0x001C67F6  0202                    add      al, byte ptr [edx]             
  0x001C67F8  02558b                  add      dl, byte ptr [ebp - 0x75]      
  0x001C67FB  ec                      in       al, dx                         
  0x001C67FC  83ec28                  sub      esp, 0x28                      
  0x001C67FF  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C6802  8b5520                  mov      edx, dword ptr [ebp + 0x20]    
  0x001C6805  53                      push     ebx                            
  0x001C6806  56                      push     esi                            
  0x001C6807  8b7510                  mov      esi, dword ptr [ebp + 0x10]    
  0x001C680A  33c9                    xor      ecx, ecx                       
  0x001C680C  3bc1                    cmp      eax, ecx                       
  0x001C680E  57                      push     edi                            
  0x001C680F  8b7d0c                  mov      edi, dword ptr [ebp + 0xc]     
  0x001C6812  752a                    jne      0x1c683e                       
  0x001C6814  394d28                  cmp      dword ptr [ebp + 0x28], ecx    
  0x001C6817  7525                    jne      0x1c683e                       
  0x001C6819  3bf9                    cmp      edi, ecx                       
  0x001C681B  7521                    jne      0x1c683e                       
  0x001C681D  3bf1                    cmp      esi, ecx                       
  0x001C681F  751d                    jne      0x1c683e                       
  0x001C6821  8b7d1c                  mov      edi, dword ptr [ebp + 0x1c]    
  0x001C6824  8b5d24                  mov      ebx, dword ptr [ebp + 0x24]    
  0x001C6827  897d10                  mov      dword ptr [ebp + 0x10], edi    
  0x001C682A  0faf7d2c                imul     edi, dword ptr [ebp + 0x2c]    
  0x001C682E  8bf7                    mov      esi, edi                       
  0x001C6830  895514                  mov      dword ptr [ebp + 0x14], edx    
  0x001C6833  0faff2                  imul     esi, edx                       
  0x001C6836  894d28                  mov      dword ptr [ebp + 0x28], ecx    
  0x001C6839  894dfc                  mov      dword ptr [ebp - 4], ecx       
  0x001C683C  eb40                    jmp      0x1c687e                       
                                        ; XREF: 0x001C6812 (cond_jump), 0x001C6817 (cond_jump), 0x001C681B (cond_jump), 0x001C681F (cond_jump)
  0x001C683E  8b5010                  mov      edx, dword ptr [eax + 0x10]    
  0x001C6841  8b4804                  mov      ecx, dword ptr [eax + 4]       
  0x001C6844  8b18                    mov      ebx, dword ptr [eax]           
  0x001C6846  0fafcf                  imul     ecx, edi                       
  0x001C6849  89550c                  mov      dword ptr [ebp + 0xc], edx     
  0x001C684C  0fafd6                  imul     edx, esi                       
  0x001C684F  03da                    add      ebx, edx                       
  0x001C6851  03cb                    add      ecx, ebx                       
  0x001C6853  014d08                  add      dword ptr [ebp + 8], ecx       
  0x001C6856  8b4808                  mov      ecx, dword ptr [eax + 8]       
  0x001C6859  2b08                    sub      ecx, dword ptr [eax]           
  0x001C685B  8b5814                  mov      ebx, dword ptr [eax + 0x14]    
  0x001C685E  894d10                  mov      dword ptr [ebp + 0x10], ecx    
  0x001C6861  8b480c                  mov      ecx, dword ptr [eax + 0xc]     
  0x001C6864  2b4804                  sub      ecx, dword ptr [eax + 4]       
  0x001C6867  8b4528                  mov      eax, dword ptr [ebp + 0x28]    
  0x001C686A  2b5d0c                  sub      ebx, dword ptr [ebp + 0xc]     
  0x001C686D  894d14                  mov      dword ptr [ebp + 0x14], ecx    
  0x001C6870  8b08                    mov      ecx, dword ptr [eax]           
  0x001C6872  894d28                  mov      dword ptr [ebp + 0x28], ecx    
  0x001C6875  8b4804                  mov      ecx, dword ptr [eax + 4]       
  0x001C6878  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001C687B  8945fc                  mov      dword ptr [ebp - 4], eax       
                                        ; XREF: 0x001C683C (jump)
  0x001C687E  ff7524                  push     dword ptr [ebp + 0x24]         
  0x001C6881  894d0c                  mov      dword ptr [ebp + 0xc], ecx     
  0x001C6884  ff7520                  push     dword ptr [ebp + 0x20]         
  0x001C6887  8d4dd8                  lea      ecx, [ebp - 0x28]              
  0x001C688A  ff751c                  push     dword ptr [ebp + 0x1c]         
  0x001C688D  e8ee13f9ff              call     0x157c80                       ; -> sub_00157C80
  0x001C6892  ff7528                  push     dword ptr [ebp + 0x28]         
  0x001C6895  8d4dd8                  lea      ecx, [ebp - 0x28]              
  0x001C6898  e86314f9ff              call     0x157d00                       ; -> sub_00157D00
  0x001C689D  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001C68A0  8d4dd8                  lea      ecx, [ebp - 0x28]              
  0x001C68A3  894524                  mov      dword ptr [ebp + 0x24], eax    
  0x001C68A6  e88514f9ff              call     0x157d30                       ; -> sub_00157D30
  0x001C68AB  ff75fc                  push     dword ptr [ebp - 4]            
  0x001C68AE  8d4dd8                  lea      ecx, [ebp - 0x28]              
  0x001C68B1  894528                  mov      dword ptr [ebp + 0x28], eax    
  0x001C68B4  e89bfeffff              call     0x1c6754                       ; -> sub_001C6754
  0x001C68B9  837d2c04                cmp      dword ptr [ebp + 0x2c], 4      
  0x001C68BD  8b5508                  mov      edx, dword ptr [ebp + 8]       
  0x001C68C0  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C68C3  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001C68C6  8bcf                    mov      ecx, edi                       
  0x001C68C8  0f8582000000            jne      0x1c6950                       
  0x001C68CE  c1e002                  shl      eax, 2                         
  0x001C68D1  2bc8                    sub      ecx, eax                       
  0x001C68D3  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C68D6  0fafc7                  imul     eax, edi                       
  0x001C68D9  2bf0                    sub      esi, eax                       
  0x001C68DB  85db                    test     ebx, ebx                       
  0x001C68DD  89751c                  mov      dword ptr [ebp + 0x1c], esi    
  0x001C68E0  0f8467010000            je       0x1c6a4d                       
  0x001C68E6  895d20                  mov      dword ptr [ebp + 0x20], ebx    
                                        ; XREF: 0x001C6949 (cond_jump)
  0x001C68E9  8b4528                  mov      eax, dword ptr [ebp + 0x28]    
  0x001C68EC  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C68EF  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C68F2  85c0                    test     eax, eax                       
  0x001C68F4  7441                    je       0x1c6937                       
  0x001C68F6  89452c                  mov      dword ptr [ebp + 0x2c], eax    
                                        ; XREF: 0x001C6935 (cond_jump)
  0x001C68F9  8b7510                  mov      esi, dword ptr [ebp + 0x10]    
  0x001C68FC  85f6                    test     esi, esi                       
  0x001C68FE  8b4524                  mov      eax, dword ptr [ebp + 0x24]    
  0x001C6901  7421                    je       0x1c6924                       
  0x001C6903  897508                  mov      dword ptr [ebp + 8], esi       
                                        ; XREF: 0x001C6922 (cond_jump)
  0x001C6906  8b3a                    mov      edi, dword ptr [edx]           
  0x001C6908  8b5d18                  mov      ebx, dword ptr [ebp + 0x18]    
  0x001C690B  8bf0                    mov      esi, eax                       
  0x001C690D  0b75f4                  or       esi, dword ptr [ebp - 0xc]     
  0x001C6910  2b45e4                  sub      eax, dword ptr [ebp - 0x1c]    
  0x001C6913  0b75f8                  or       esi, dword ptr [ebp - 8]       
  0x001C6916  2345e4                  and      eax, dword ptr [ebp - 0x1c]    
  0x001C6919  83c204                  add      edx, 4                         
  0x001C691C  ff4d08                  dec      dword ptr [ebp + 8]            
  0x001C691F  893cb3                  mov      dword ptr [ebx + esi*4], edi   
  0x001C6922  75e2                    jne      0x1c6906                       
                                        ; XREF: 0x001C6901 (cond_jump)
  0x001C6924  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001C6927  2b45e8                  sub      eax, dword ptr [ebp - 0x18]    
  0x001C692A  03d1                    add      edx, ecx                       
  0x001C692C  2345e8                  and      eax, dword ptr [ebp - 0x18]    
  0x001C692F  ff4d2c                  dec      dword ptr [ebp + 0x2c]         
  0x001C6932  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C6935  75c2                    jne      0x1c68f9                       
                                        ; XREF: 0x001C68F4 (cond_jump)
  0x001C6937  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001C693A  2b45ec                  sub      eax, dword ptr [ebp - 0x14]    
  0x001C693D  03551c                  add      edx, dword ptr [ebp + 0x1c]    
  0x001C6940  2345ec                  and      eax, dword ptr [ebp - 0x14]    
  0x001C6943  ff4d20                  dec      dword ptr [ebp + 0x20]         
  0x001C6946  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C6949  759e                    jne      0x1c68e9                       
  0x001C694B  e9fd000000              jmp      0x1c6a4d                       
                                        ; XREF: 0x001C68C8 (cond_jump)
  0x001C6950  837d2c02                cmp      dword ptr [ebp + 0x2c], 2      
  0x001C6954  757f                    jne      0x1c69d5                       
  0x001C6956  03c0                    add      eax, eax                       
  0x001C6958  2bc8                    sub      ecx, eax                       
  0x001C695A  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C695D  0fafc7                  imul     eax, edi                       
  0x001C6960  2bf0                    sub      esi, eax                       
  0x001C6962  85db                    test     ebx, ebx                       
  0x001C6964  89751c                  mov      dword ptr [ebp + 0x1c], esi    
  0x001C6967  0f84e0000000            je       0x1c6a4d                       
  0x001C696D  895d20                  mov      dword ptr [ebp + 0x20], ebx    
                                        ; XREF: 0x001C69D1 (cond_jump)
  0x001C6970  8b4528                  mov      eax, dword ptr [ebp + 0x28]    
  0x001C6973  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C6976  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C6979  85c0                    test     eax, eax                       
  0x001C697B  7442                    je       0x1c69bf                       
  0x001C697D  89452c                  mov      dword ptr [ebp + 0x2c], eax    
                                        ; XREF: 0x001C69BD (cond_jump)
  0x001C6980  8b7510                  mov      esi, dword ptr [ebp + 0x10]    
  0x001C6983  85f6                    test     esi, esi                       
  0x001C6985  8b4524                  mov      eax, dword ptr [ebp + 0x24]    
  0x001C6988  7422                    je       0x1c69ac                       
  0x001C698A  897508                  mov      dword ptr [ebp + 8], esi       
                                        ; XREF: 0x001C69AA (cond_jump)
  0x001C698D  668b3a                  mov      di, word ptr [edx]             
  0x001C6990  8b5d18                  mov      ebx, dword ptr [ebp + 0x18]    
  0x001C6993  8bf0                    mov      esi, eax                       
  0x001C6995  0b75f4                  or       esi, dword ptr [ebp - 0xc]     
  0x001C6998  2b45e4                  sub      eax, dword ptr [ebp - 0x1c]    
  0x001C699B  0b75f8                  or       esi, dword ptr [ebp - 8]       
  0x001C699E  2345e4                  and      eax, dword ptr [ebp - 0x1c]    
  0x001C69A1  42                      inc      edx                            
  0x001C69A2  42                      inc      edx                            
  0x001C69A3  ff4d08                  dec      dword ptr [ebp + 8]            
  0x001C69A6  66893c73                mov      word ptr [ebx + esi*2], di     
  0x001C69AA  75e1                    jne      0x1c698d                       
                                        ; XREF: 0x001C6988 (cond_jump)
  0x001C69AC  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001C69AF  2b45e8                  sub      eax, dword ptr [ebp - 0x18]    
  0x001C69B2  03d1                    add      edx, ecx                       
  0x001C69B4  2345e8                  and      eax, dword ptr [ebp - 0x18]    
  0x001C69B7  ff4d2c                  dec      dword ptr [ebp + 0x2c]         
  0x001C69BA  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C69BD  75c1                    jne      0x1c6980                       
                                        ; XREF: 0x001C697B (cond_jump)
  0x001C69BF  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001C69C2  2b45ec                  sub      eax, dword ptr [ebp - 0x14]    
  0x001C69C5  03551c                  add      edx, dword ptr [ebp + 0x1c]    
  0x001C69C8  2345ec                  and      eax, dword ptr [ebp - 0x14]    
  0x001C69CB  ff4d20                  dec      dword ptr [ebp + 0x20]         
  0x001C69CE  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C69D1  759d                    jne      0x1c6970                       
  0x001C69D3  eb78                    jmp      0x1c6a4d                       
                                        ; XREF: 0x001C6954 (cond_jump)
  0x001C69D5  0faf452c                imul     eax, dword ptr [ebp + 0x2c]    
  0x001C69D9  2bc8                    sub      ecx, eax                       
  0x001C69DB  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C69DE  0fafc7                  imul     eax, edi                       
  0x001C69E1  2bf0                    sub      esi, eax                       
  0x001C69E3  85db                    test     ebx, ebx                       
  0x001C69E5  89751c                  mov      dword ptr [ebp + 0x1c], esi    
  0x001C69E8  7463                    je       0x1c6a4d                       
  0x001C69EA  895d20                  mov      dword ptr [ebp + 0x20], ebx    
                                        ; XREF: 0x001C6A4B (cond_jump)
  0x001C69ED  8b4528                  mov      eax, dword ptr [ebp + 0x28]    
  0x001C69F0  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C69F3  8b4514                  mov      eax, dword ptr [ebp + 0x14]    
  0x001C69F6  85c0                    test     eax, eax                       
  0x001C69F8  743f                    je       0x1c6a39                       
  0x001C69FA  89452c                  mov      dword ptr [ebp + 0x2c], eax    
                                        ; XREF: 0x001C6A37 (cond_jump)
  0x001C69FD  8b4510                  mov      eax, dword ptr [ebp + 0x10]    
  0x001C6A00  85c0                    test     eax, eax                       
  0x001C6A02  8b7d24                  mov      edi, dword ptr [ebp + 0x24]    
  0x001C6A05  741f                    je       0x1c6a26                       
  0x001C6A07  894508                  mov      dword ptr [ebp + 8], eax       
                                        ; XREF: 0x001C6A24 (cond_jump)
  0x001C6A0A  8a1a                    mov      bl, byte ptr [edx]             
  0x001C6A0C  8b7518                  mov      esi, dword ptr [ebp + 0x18]    
  0x001C6A0F  8bc7                    mov      eax, edi                       
  0x001C6A11  0b45f4                  or       eax, dword ptr [ebp - 0xc]     
  0x001C6A14  2b7de4                  sub      edi, dword ptr [ebp - 0x1c]    
  0x001C6A17  0b45f8                  or       eax, dword ptr [ebp - 8]       
  0x001C6A1A  237de4                  and      edi, dword ptr [ebp - 0x1c]    
  0x001C6A1D  42                      inc      edx                            
  0x001C6A1E  ff4d08                  dec      dword ptr [ebp + 8]            
  0x001C6A21  881c30                  mov      byte ptr [eax + esi], bl       
  0x001C6A24  75e4                    jne      0x1c6a0a                       
                                        ; XREF: 0x001C6A05 (cond_jump)
  0x001C6A26  8b45f4                  mov      eax, dword ptr [ebp - 0xc]     
  0x001C6A29  2b45e8                  sub      eax, dword ptr [ebp - 0x18]    
  0x001C6A2C  03d1                    add      edx, ecx                       
  0x001C6A2E  2345e8                  and      eax, dword ptr [ebp - 0x18]    
  0x001C6A31  ff4d2c                  dec      dword ptr [ebp + 0x2c]         
  0x001C6A34  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C6A37  75c4                    jne      0x1c69fd                       
                                        ; XREF: 0x001C69F8 (cond_jump)
  0x001C6A39  8b45f8                  mov      eax, dword ptr [ebp - 8]       
  0x001C6A3C  2b45ec                  sub      eax, dword ptr [ebp - 0x14]    
  0x001C6A3F  03551c                  add      edx, dword ptr [ebp + 0x1c]    
  0x001C6A42  2345ec                  and      eax, dword ptr [ebp - 0x14]    
  0x001C6A45  ff4d20                  dec      dword ptr [ebp + 0x20]         
  0x001C6A48  8945f8                  mov      dword ptr [ebp - 8], eax       
  0x001C6A4B  75a0                    jne      0x1c69ed                       
                                        ; XREF: 0x001C68E0 (cond_jump), 0x001C694B (jump), 0x001C6967 (cond_jump), 0x001C69D3 (jump), 0x001C69E8 (cond_jump)
  0x001C6A4D  5f                      pop      edi                            
  0x001C6A4E  5e                      pop      esi                            
  0x001C6A4F  5b                      pop      ebx                            
  0x001C6A50  c9                      leave                                   
  0x001C6A51  c22800                  ret      0x28                           
  0x001C6A54  cc                      int3                                    
  0x001C6A55  cc                      int3                                    
  0x001C6A56  cc                      int3                                    
  0x001C6A57  cc                      int3                                    

; ============================================================
; Function: sub_001C6A58
; Start: 0x001C6A58  End: 0x001C6A9C  Size: 68 bytes
; Detection: cc_boundary (confidence: 0.85)
; ============================================================
sub_001C6A58:
  0x001C6A58  0909                    or       dword ptr [ecx], ecx           
  0x001C6A5A  11911191a1a1            adc      dword ptr [ecx - 0x5e5e6eef], edx 
  0x001C6A60  0000                    add      byte ptr [eax], al             
  0x001C6A62  0009                    add      byte ptr [ecx], cl             
  0x001C6A64  0400                    add      al, 0                          
  0x001C6A66  0808                    or       byte ptr [eax], cl             
  0x001C6A68  1292a20a0000            adc      dl, byte ptr [edx + 0xaa2]     
  0x001C6A6E  1212                    adc      dl, byte ptr [edx]             
  0x001C6A70  0009                    add      byte ptr [ecx], cl             
  0x001C6A72  110a                    adc      dword ptr [edx], ecx           
  0x001C6A74  92                      xchg     edx, eax                       
  0x001C6A75  12a20a120000            adc      ah, byte ptr [edx + 0x120a]    
  0x001C6A7B  0020                    add      byte ptr [eax], ah             
  0x001C6A7D  2000                    and      byte ptr [eax], al             
  0x001C6A7F  1111                    adc      dword ptr [ecx], edx           
  0x001C6A81  116161                  adc      dword ptr [ecx + 0x61], esp    
  0x001C6A84  51                      push     ecx                            
  0x001C6A85  51                      push     ecx                            
  0x001C6A86  626252                  bound    esp, qword ptr [edx + 0x52]    
  0x001C6A89  52                      push     edx                            
  0x001C6A8A  1121                    adc      dword ptr [ecx], esp           
  0x001C6A8C  0012                    add      byte ptr [edx], dl             
  0x001C6A8E  0012                    add      byte ptr [edx], dl             
  0x001C6A90  1111                    adc      dword ptr [ecx], edx           
  0x001C6A92  2121                    and      dword ptr [ecx], esp           
  0x001C6A94  2112                    and      dword ptr [edx], edx           
  0x001C6A96  1222                    adc      ah, byte ptr [edx]             
  0x001C6A98  2222                    and      ah, byte ptr [edx]             
  0x001C6A9A  0000                    add      byte ptr [eax], al             
; end of function
