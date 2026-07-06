; ============================================================
; Section: D3DX
; VA: 0x001C35C0 - 0x001C6488
; Size: 11976 bytes (11.7 KB)
; Functions: 14
; Instructions: 4807
; ============================================================


; ============================================================
; Function: sub_001C35C0
; Start: 0x001C35C0  End: 0x001C35CE  Size: 14 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_0006C480
; ============================================================
sub_001C35C0:
  0x001C35C0  837c240400              cmp      dword ptr [esp + 4], 0         
  0x001C35C5  7507                    jne      0x1c35ce                       
  0x001C35C7  b86c087688              mov      eax, 0x8876086c                
  0x001C35CC  eb60                    jmp      0x1c362e                       
; end of function
                                        ; XREF: 0x001C35C5 (cond_jump)
  0x001C35CE  53                      push     ebx                            
  0x001C35CF  8b5c240c                mov      ebx, dword ptr [esp + 0xc]     
  0x001C35D3  85db                    test     ebx, ebx                       
  0x001C35D5  56                      push     esi                            
  0x001C35D6  57                      push     edi                            
  0x001C35D7  7507                    jne      0x1c35e0                       
  0x001C35D9  b86c087688              mov      eax, 0x8876086c                
  0x001C35DE  eb4b                    jmp      0x1c362b                       
                                        ; XREF: 0x001C35D7 (cond_jump)
  0x001C35E0  6a18                    push     0x18                           
  0x001C35E2  e893acfcff              call     0x18e27a                       ; -> sub_0018E27A
  0x001C35E7  85c0                    test     eax, eax                       
  0x001C35E9  59                      pop      ecx                            
  0x001C35EA  740b                    je       0x1c35f7                       
  0x001C35EC  8bc8                    mov      ecx, eax                       
  0x001C35EE  e8580a0000              call     0x1c404b                       ; -> sub_001C404B
  0x001C35F3  8bf0                    mov      esi, eax                       
  0x001C35F5  eb02                    jmp      0x1c35f9                       
                                        ; XREF: 0x001C35EA (cond_jump)
  0x001C35F7  33f6                    xor      esi, esi                       
                                        ; XREF: 0x001C35F5 (jump)
  0x001C35F9  85f6                    test     esi, esi                       
  0x001C35FB  7507                    jne      0x1c3604                       
  0x001C35FD  b80e000780              mov      eax, 0x8007000e                
  0x001C3602  eb27                    jmp      0x1c362b                       
                                        ; XREF: 0x001C35FB (cond_jump)
  0x001C3604  ff742410                push     dword ptr [esp + 0x10]         
  0x001C3608  8bce                    mov      ecx, esi                       
  0x001C360A  e856060000              call     0x1c3c65                       ; -> sub_001C3C65
  0x001C360F  8bf8                    mov      edi, eax                       
  0x001C3611  85ff                    test     edi, edi                       
  0x001C3613  7d12                    jge      0x1c3627                       
  0x001C3615  8bce                    mov      ecx, esi                       
  0x001C3617  e8d4050000              call     0x1c3bf0                       ; -> sub_001C3BF0
  0x001C361C  56                      push     esi                            
  0x001C361D  e853acfcff              call     0x18e275                       ; -> sub_0018E275
  0x001C3622  59                      pop      ecx                            
  0x001C3623  8bc7                    mov      eax, edi                       
  0x001C3625  eb04                    jmp      0x1c362b                       
                                        ; XREF: 0x001C3613 (cond_jump)
  0x001C3627  8933                    mov      dword ptr [ebx], esi           
  0x001C3629  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C35DE (jump), 0x001C3602 (jump), 0x001C3625 (jump)
  0x001C362B  5f                      pop      edi                            
  0x001C362C  5e                      pop      esi                            
  0x001C362D  5b                      pop      ebx                            
                                        ; XREF: 0x001C35CC (jump)
  0x001C362E  c20800                  ret      8                              

; ============================================================
; Function: sub_001C3631
; Start: 0x001C3631  End: 0x001C36CA  Size: 153 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C3631:
  0x001C3631  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001C3635  8b54240c                mov      edx, dword ptr [esp + 0xc]     
  0x001C3639  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001C363D  d900                    fld      dword ptr [eax]                
  0x001C363F  d80a                    fmul     dword ptr [edx]                
  0x001C3641  d900                    fld      dword ptr [eax]                
  0x001C3643  d84a08                  fmul     dword ptr [edx + 8]            
  0x001C3646  d900                    fld      dword ptr [eax]                
  0x001C3648  d84a04                  fmul     dword ptr [edx + 4]            
  0x001C364B  d900                    fld      dword ptr [eax]                
  0x001C364D  d84a0c                  fmul     dword ptr [edx + 0xc]          
  0x001C3650  d9cb                    fxch     st(3)                          
  0x001C3652  d94004                  fld      dword ptr [eax + 4]            
  0x001C3655  d84a10                  fmul     dword ptr [edx + 0x10]         
  0x001C3658  d94004                  fld      dword ptr [eax + 4]            
  0x001C365B  d84a18                  fmul     dword ptr [edx + 0x18]         
  0x001C365E  d94004                  fld      dword ptr [eax + 4]            
  0x001C3661  d84a14                  fmul     dword ptr [edx + 0x14]         
  0x001C3664  d94004                  fld      dword ptr [eax + 4]            
  0x001C3667  d84a1c                  fmul     dword ptr [edx + 0x1c]         
  0x001C366A  d9cb                    fxch     st(3)                          
  0x001C366C  dec4                    faddp    st(4)                          
  0x001C366E  dec4                    faddp    st(4)                          
  0x001C3670  dec4                    faddp    st(4)                          
  0x001C3672  dec4                    faddp    st(4)                          
  0x001C3674  d94008                  fld      dword ptr [eax + 8]            
  0x001C3677  d84a20                  fmul     dword ptr [edx + 0x20]         
  0x001C367A  d94008                  fld      dword ptr [eax + 8]            
  0x001C367D  d84a28                  fmul     dword ptr [edx + 0x28]         
  0x001C3680  d94008                  fld      dword ptr [eax + 8]            
  0x001C3683  d84a24                  fmul     dword ptr [edx + 0x24]         
  0x001C3686  d94008                  fld      dword ptr [eax + 8]            
  0x001C3689  d84a2c                  fmul     dword ptr [edx + 0x2c]         
  0x001C368C  d9cb                    fxch     st(3)                          
  0x001C368E  dec4                    faddp    st(4)                          
  0x001C3690  dec4                    faddp    st(4)                          
  0x001C3692  dec4                    faddp    st(4)                          
  0x001C3694  dec4                    faddp    st(4)                          
  0x001C3696  d9400c                  fld      dword ptr [eax + 0xc]          
  0x001C3699  d84a30                  fmul     dword ptr [edx + 0x30]         
  0x001C369C  d9400c                  fld      dword ptr [eax + 0xc]          
  0x001C369F  d84a38                  fmul     dword ptr [edx + 0x38]         
  0x001C36A2  d9400c                  fld      dword ptr [eax + 0xc]          
  0x001C36A5  d84a34                  fmul     dword ptr [edx + 0x34]         
  0x001C36A8  d9400c                  fld      dword ptr [eax + 0xc]          
  0x001C36AB  d84a3c                  fmul     dword ptr [edx + 0x3c]         
  0x001C36AE  d9cb                    fxch     st(3)                          
  0x001C36B0  dec4                    faddp    st(4)                          
  0x001C36B2  dec4                    faddp    st(4)                          
  0x001C36B4  dec4                    faddp    st(4)                          
  0x001C36B6  dec4                    faddp    st(4)                          
  0x001C36B8  d919                    fstp     dword ptr [ecx]                
  0x001C36BA  d95904                  fstp     dword ptr [ecx + 4]            
  0x001C36BD  d95908                  fstp     dword ptr [ecx + 8]            
  0x001C36C0  d9590c                  fstp     dword ptr [ecx + 0xc]          
  0x001C36C3  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C36C7  c20c00                  ret      0xc                            
; end of function

; ============================================================
; Function: sub_001C36CA
; Start: 0x001C36CA  End: 0x001C3737  Size: 109 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_000DAC40, sub_001C39E4
; ============================================================
sub_001C36CA:
  0x001C36CA  8b4c2408                mov      ecx, dword ptr [esp + 8]       
  0x001C36CE  d94104                  fld      dword ptr [ecx + 4]            
  0x001C36D1  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C36D5  3bc1                    cmp      eax, ecx                       
  0x001C36D7  d94110                  fld      dword ptr [ecx + 0x10]         
  0x001C36DA  d95804                  fstp     dword ptr [eax + 4]            
  0x001C36DD  d95810                  fstp     dword ptr [eax + 0x10]         
  0x001C36E0  8b5120                  mov      edx, dword ptr [ecx + 0x20]    
  0x001C36E3  d94108                  fld      dword ptr [ecx + 8]            
  0x001C36E6  895008                  mov      dword ptr [eax + 8], edx       
  0x001C36E9  d95820                  fstp     dword ptr [eax + 0x20]         
  0x001C36EC  8b5130                  mov      edx, dword ptr [ecx + 0x30]    
  0x001C36EF  d9410c                  fld      dword ptr [ecx + 0xc]          
  0x001C36F2  89500c                  mov      dword ptr [eax + 0xc], edx     
  0x001C36F5  d95830                  fstp     dword ptr [eax + 0x30]         
  0x001C36F8  8b5124                  mov      edx, dword ptr [ecx + 0x24]    
  0x001C36FB  d94118                  fld      dword ptr [ecx + 0x18]         
  0x001C36FE  895018                  mov      dword ptr [eax + 0x18], edx    
  0x001C3701  d95824                  fstp     dword ptr [eax + 0x24]         
  0x001C3704  8b5134                  mov      edx, dword ptr [ecx + 0x34]    
  0x001C3707  d9411c                  fld      dword ptr [ecx + 0x1c]         
  0x001C370A  89501c                  mov      dword ptr [eax + 0x1c], edx    
  0x001C370D  d95834                  fstp     dword ptr [eax + 0x34]         
  0x001C3710  8b5138                  mov      edx, dword ptr [ecx + 0x38]    
  0x001C3713  d9412c                  fld      dword ptr [ecx + 0x2c]         
  0x001C3716  89502c                  mov      dword ptr [eax + 0x2c], edx    
  0x001C3719  d95838                  fstp     dword ptr [eax + 0x38]         
  0x001C371C  7416                    je       0x1c3734                       
  0x001C371E  8b11                    mov      edx, dword ptr [ecx]           
  0x001C3720  8910                    mov      dword ptr [eax], edx           
  0x001C3722  8b5114                  mov      edx, dword ptr [ecx + 0x14]    
  0x001C3725  895014                  mov      dword ptr [eax + 0x14], edx    
  0x001C3728  8b5128                  mov      edx, dword ptr [ecx + 0x28]    
  0x001C372B  895028                  mov      dword ptr [eax + 0x28], edx    
  0x001C372E  8b493c                  mov      ecx, dword ptr [ecx + 0x3c]    
  0x001C3731  89483c                  mov      dword ptr [eax + 0x3c], ecx    
                                        ; XREF: 0x001C371C (cond_jump)
  0x001C3734  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001C3737
; Start: 0x001C3737  End: 0x001C3819  Size: 226 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_001C39E4
; ============================================================
sub_001C3737:
  0x001C3737  55                      push     ebp                            
  0x001C3738  8bec                    mov      ebp, esp                       
  0x001C373A  83ec10                  sub      esp, 0x10                      
  0x001C373D  8b450c                  mov      eax, dword ptr [ebp + 0xc]     
  0x001C3740  d9051cd51e00            fld      dword ptr [0x1ed51c]           
  0x001C3746  d900                    fld      dword ptr [eax]                
  0x001C3748  d8c9                    fmul     st(1)                          
  0x001C374A  d95dfc                  fstp     dword ptr [ebp - 4]            
  0x001C374D  d94004                  fld      dword ptr [eax + 4]            
  0x001C3750  d8c9                    fmul     st(1)                          
  0x001C3752  d95d0c                  fstp     dword ptr [ebp + 0xc]          
  0x001C3755  d84808                  fmul     dword ptr [eax + 8]            
  0x001C3758  d945fc                  fld      dword ptr [ebp - 4]            
  0x001C375B  d8480c                  fmul     dword ptr [eax + 0xc]          
  0x001C375E  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C3761  d8480c                  fmul     dword ptr [eax + 0xc]          
  0x001C3764  d9c2                    fld      st(2)                          
  0x001C3766  d8480c                  fmul     dword ptr [eax + 0xc]          
  0x001C3769  d945fc                  fld      dword ptr [ebp - 4]            
  0x001C376C  d808                    fmul     dword ptr [eax]                
  0x001C376E  d95df0                  fstp     dword ptr [ebp - 0x10]         
  0x001C3771  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C3774  d808                    fmul     dword ptr [eax]                
  0x001C3776  d95dfc                  fstp     dword ptr [ebp - 4]            
  0x001C3779  d9c3                    fld      st(3)                          
  0x001C377B  d808                    fmul     dword ptr [eax]                
  0x001C377D  d95df8                  fstp     dword ptr [ebp - 8]            
  0x001C3780  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C3783  d84804                  fmul     dword ptr [eax + 4]            
  0x001C3786  d95df4                  fstp     dword ptr [ebp - 0xc]          
  0x001C3789  d9c3                    fld      st(3)                          
  0x001C378B  d84804                  fmul     dword ptr [eax + 4]            
  0x001C378E  d95d0c                  fstp     dword ptr [ebp + 0xc]          
  0x001C3791  d9c3                    fld      st(3)                          
  0x001C3793  d84808                  fmul     dword ptr [eax + 8]            
  0x001C3796  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C3799  d9e8                    fld1                                    
  0x001C379B  d865f4                  fsub     dword ptr [ebp - 0xc]          
  0x001C379E  d8e1                    fsub     st(1)                          
  0x001C37A0  d918                    fstp     dword ptr [eax]                
  0x001C37A2  d945fc                  fld      dword ptr [ebp - 4]            
  0x001C37A5  d8c2                    fadd     st(2)                          
  0x001C37A7  d95804                  fstp     dword ptr [eax + 4]            
  0x001C37AA  d945f8                  fld      dword ptr [ebp - 8]            
  0x001C37AD  d8e3                    fsub     st(3)                          
  0x001C37AF  d95808                  fstp     dword ptr [eax + 8]            
  0x001C37B2  d9ee                    fldz                                    
  0x001C37B4  d9580c                  fstp     dword ptr [eax + 0xc]          
  0x001C37B7  d945fc                  fld      dword ptr [ebp - 4]            
  0x001C37BA  d8e2                    fsub     st(2)                          
  0x001C37BC  d95810                  fstp     dword ptr [eax + 0x10]         
  0x001C37BF  d9e8                    fld1                                    
  0x001C37C1  d865f0                  fsub     dword ptr [ebp - 0x10]         
  0x001C37C4  d95508                  fst      dword ptr [ebp + 8]            
  0x001C37C7  d8e1                    fsub     st(1)                          
  0x001C37C9  d95814                  fstp     dword ptr [eax + 0x14]         
  0x001C37CC  ddd8                    fstp     st(0)                          
  0x001C37CE  ddd8                    fstp     st(0)                          
  0x001C37D0  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C37D3  d8c2                    fadd     st(2)                          
  0x001C37D5  d95818                  fstp     dword ptr [eax + 0x18]         
  0x001C37D8  d9ee                    fldz                                    
  0x001C37DA  d9581c                  fstp     dword ptr [eax + 0x1c]         
  0x001C37DD  d945f8                  fld      dword ptr [ebp - 8]            
  0x001C37E0  d8c1                    fadd     st(1)                          
  0x001C37E2  d95820                  fstp     dword ptr [eax + 0x20]         
  0x001C37E5  ddd8                    fstp     st(0)                          
  0x001C37E7  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C37EA  d8e1                    fsub     st(1)                          
  0x001C37EC  d95824                  fstp     dword ptr [eax + 0x24]         
  0x001C37EF  ddd8                    fstp     st(0)                          
  0x001C37F1  ddd8                    fstp     st(0)                          
  0x001C37F3  d94508                  fld      dword ptr [ebp + 8]            
  0x001C37F6  d865f4                  fsub     dword ptr [ebp - 0xc]          
  0x001C37F9  d95828                  fstp     dword ptr [eax + 0x28]         
  0x001C37FC  d9ee                    fldz                                    
  0x001C37FE  d9582c                  fstp     dword ptr [eax + 0x2c]         
  0x001C3801  d9ee                    fldz                                    
  0x001C3803  d95830                  fstp     dword ptr [eax + 0x30]         
  0x001C3806  d9ee                    fldz                                    
  0x001C3808  d95834                  fstp     dword ptr [eax + 0x34]         
  0x001C380B  d9ee                    fldz                                    
  0x001C380D  d95838                  fstp     dword ptr [eax + 0x38]         
  0x001C3810  d9e8                    fld1                                    
  0x001C3812  d9583c                  fstp     dword ptr [eax + 0x3c]         
  0x001C3815  c9                      leave                                   
  0x001C3816  c20800                  ret      8                              
; end of function

; ============================================================
; Function: sub_001C3819
; Start: 0x001C3819  End: 0x001C38AD  Size: 148 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_000C9960
; ============================================================
sub_001C3819:
  0x001C3819  55                      push     ebp                            
  0x001C381A  8bec                    mov      ebp, esp                       
  0x001C381C  83ec10                  sub      esp, 0x10                      
  0x001C381F  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C3822  8d450c                  lea      eax, [ebp + 0xc]               
  0x001C3825  d80d80d41e00            fmul     dword ptr [0x1ed480]           
  0x001C382B  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C382E  8d45fc                  lea      eax, [ebp - 4]                 
  0x001C3831  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001C3834  d95df8                  fstp     dword ptr [ebp - 8]            
  0x001C3837  8b45f0                  mov      eax, dword ptr [ebp - 0x10]    
  0x001C383A  8b55f4                  mov      edx, dword ptr [ebp - 0xc]     
  0x001C383D  d945f8                  fld      dword ptr [ebp - 8]            
  0x001C3840  d9fb                    fsincos                                 
  0x001C3842  d91a                    fstp     dword ptr [edx]                
  0x001C3844  d918                    fstp     dword ptr [eax]                
  0x001C3846  d9450c                  fld      dword ptr [ebp + 0xc]          
  0x001C3849  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C384C  d875fc                  fdiv     dword ptr [ebp - 4]            
  0x001C384F  d94510                  fld      dword ptr [ebp + 0x10]         
  0x001C3852  d8f9                    fdivr    st(1)                          
  0x001C3854  d918                    fstp     dword ptr [eax]                
  0x001C3856  d9ee                    fldz                                    
  0x001C3858  d95804                  fstp     dword ptr [eax + 4]            
  0x001C385B  d9ee                    fldz                                    
  0x001C385D  d95808                  fstp     dword ptr [eax + 8]            
  0x001C3860  d9ee                    fldz                                    
  0x001C3862  d9580c                  fstp     dword ptr [eax + 0xc]          
  0x001C3865  d9ee                    fldz                                    
  0x001C3867  d95810                  fstp     dword ptr [eax + 0x10]         
  0x001C386A  d95814                  fstp     dword ptr [eax + 0x14]         
  0x001C386D  d9ee                    fldz                                    
  0x001C386F  d95818                  fstp     dword ptr [eax + 0x18]         
  0x001C3872  d9ee                    fldz                                    
  0x001C3874  d9581c                  fstp     dword ptr [eax + 0x1c]         
  0x001C3877  d9ee                    fldz                                    
  0x001C3879  d95820                  fstp     dword ptr [eax + 0x20]         
  0x001C387C  d9ee                    fldz                                    
  0x001C387E  d95824                  fstp     dword ptr [eax + 0x24]         
  0x001C3881  d94518                  fld      dword ptr [ebp + 0x18]         
  0x001C3884  d86514                  fsub     dword ptr [ebp + 0x14]         
  0x001C3887  d87d18                  fdivr    dword ptr [ebp + 0x18]         
  0x001C388A  d95028                  fst      dword ptr [eax + 0x28]         
  0x001C388D  d9e8                    fld1                                    
  0x001C388F  d9582c                  fstp     dword ptr [eax + 0x2c]         
  0x001C3892  d9ee                    fldz                                    
  0x001C3894  d95830                  fstp     dword ptr [eax + 0x30]         
  0x001C3897  d9ee                    fldz                                    
  0x001C3899  d95834                  fstp     dword ptr [eax + 0x34]         
  0x001C389C  d84d14                  fmul     dword ptr [ebp + 0x14]         
  0x001C389F  d9e0                    fchs                                    
  0x001C38A1  d95838                  fstp     dword ptr [eax + 0x38]         
  0x001C38A4  d9ee                    fldz                                    
  0x001C38A6  d9583c                  fstp     dword ptr [eax + 0x3c]         
  0x001C38A9  c9                      leave                                   
  0x001C38AA  c21400                  ret      0x14                           
; end of function

; ============================================================
; Function: sub_001C38AD
; Start: 0x001C38AD  End: 0x001C3901  Size: 84 bytes
; Detection: call_target (confidence: 0.90)
; Called by: sub_001C39E4
; ============================================================
sub_001C38AD:
  0x001C38AD  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C38B1  d9ee                    fldz                                    
  0x001C38B3  d95838                  fstp     dword ptr [eax + 0x38]         
  0x001C38B6  d9ee                    fldz                                    
  0x001C38B8  d95834                  fstp     dword ptr [eax + 0x34]         
  0x001C38BB  d9ee                    fldz                                    
  0x001C38BD  d95830                  fstp     dword ptr [eax + 0x30]         
  0x001C38C0  d9ee                    fldz                                    
  0x001C38C2  d9582c                  fstp     dword ptr [eax + 0x2c]         
  0x001C38C5  d9ee                    fldz                                    
  0x001C38C7  d95824                  fstp     dword ptr [eax + 0x24]         
  0x001C38CA  d9ee                    fldz                                    
  0x001C38CC  d95820                  fstp     dword ptr [eax + 0x20]         
  0x001C38CF  d9ee                    fldz                                    
  0x001C38D1  d9581c                  fstp     dword ptr [eax + 0x1c]         
  0x001C38D4  d9ee                    fldz                                    
  0x001C38D6  d95818                  fstp     dword ptr [eax + 0x18]         
  0x001C38D9  d9ee                    fldz                                    
  0x001C38DB  d95810                  fstp     dword ptr [eax + 0x10]         
  0x001C38DE  d9ee                    fldz                                    
  0x001C38E0  d9580c                  fstp     dword ptr [eax + 0xc]          
  0x001C38E3  d9ee                    fldz                                    
  0x001C38E5  d95808                  fstp     dword ptr [eax + 8]            
  0x001C38E8  d9ee                    fldz                                    
  0x001C38EA  d95804                  fstp     dword ptr [eax + 4]            
  0x001C38ED  d9e8                    fld1                                    
  0x001C38EF  d9583c                  fstp     dword ptr [eax + 0x3c]         
  0x001C38F2  d9e8                    fld1                                    
  0x001C38F4  d95828                  fstp     dword ptr [eax + 0x28]         
  0x001C38F7  d9e8                    fld1                                    
  0x001C38F9  d95814                  fstp     dword ptr [eax + 0x14]         
  0x001C38FC  d9e8                    fld1                                    
  0x001C38FE  d918                    fstp     dword ptr [eax]                
  0x001C3900  c3                      ret                                     
; end of function

; ============================================================
; Function: sub_001C3901
; Start: 0x001C3901  End: 0x001C39E4  Size: 227 bytes
; Detection: prologue (confidence: 0.95)
; Called by: sub_000DAC40, sub_001C39E4
; ============================================================
sub_001C3901:
  0x001C3901  55                      push     ebp                            
  0x001C3902  8bec                    mov      ebp, esp                       
  0x001C3904  83ec40                  sub      esp, 0x40                      
  0x001C3907  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C390A  53                      push     ebx                            
  0x001C390B  56                      push     esi                            
  0x001C390C  8b7510                  mov      esi, dword ptr [ebp + 0x10]    
  0x001C390F  3bf0                    cmp      esi, eax                       
  0x001C3911  57                      push     edi                            
  0x001C3912  7571                    jne      0x1c3985                       
  0x001C3914  39450c                  cmp      dword ptr [ebp + 0xc], eax     
  0x001C3917  745e                    je       0x1c3977                       
  0x001C3919  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001C391C  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001C391F  8b5510                  mov      edx, dword ptr [ebp + 0x10]    
  0x001C3922  bffcffffff              mov      edi, 0xfffffffc                
                                        ; XREF: 0x001C3973 (cond_jump)
  0x001C3927  bef0ffffff              mov      esi, 0xfffffff0                
  0x001C392C  d944ba10                fld      dword ptr [edx + edi*4 + 0x10] 
  0x001C3930  d944ba20                fld      dword ptr [edx + edi*4 + 0x20] 
  0x001C3934  d944ba30                fld      dword ptr [edx + edi*4 + 0x30] 
  0x001C3938  d944ba40                fld      dword ptr [edx + edi*4 + 0x40] 
                                        ; XREF: 0x001C3965 (cond_jump)
  0x001C393C  d9c3                    fld      st(3)                          
  0x001C393E  d84cb140                fmul     dword ptr [ecx + esi*4 + 0x40] 
  0x001C3942  d9c3                    fld      st(3)                          
  0x001C3944  d84cb144                fmul     dword ptr [ecx + esi*4 + 0x44] 
  0x001C3948  d9c3                    fld      st(3)                          
  0x001C394A  d84cb148                fmul     dword ptr [ecx + esi*4 + 0x48] 
  0x001C394E  d9c3                    fld      st(3)                          
  0x001C3950  d84cb14c                fmul     dword ptr [ecx + esi*4 + 0x4c] 
  0x001C3954  d9cb                    fxch     st(3)                          
  0x001C3956  dec1                    faddp    st(1)                          
  0x001C3958  d9ca                    fxch     st(2)                          
  0x001C395A  dec1                    faddp    st(1)                          
  0x001C395C  dec1                    faddp    st(1)                          
  0x001C395E  d95cb340                fstp     dword ptr [ebx + esi*4 + 0x40] 
  0x001C3962  83c604                  add      esi, 4                         
  0x001C3965  75d5                    jne      0x1c393c                       
  0x001C3967  ddc3                    ffree    st(3)                          
  0x001C3969  ddc2                    ffree    st(2)                          
  0x001C396B  ddc1                    ffree    st(1)                          
  0x001C396D  ddc0                    ffree    st(0)                          
  0x001C396F  8d5b04                  lea      ebx, [ebx + 4]                 
  0x001C3972  47                      inc      edi                            
  0x001C3973  75b2                    jne      0x1c3927                       
  0x001C3975  eb66                    jmp      0x1c39dd                       
                                        ; XREF: 0x001C3917 (cond_jump)
  0x001C3977  6a10                    push     0x10                           
  0x001C3979  59                      pop      ecx                            
  0x001C397A  8d7dc0                  lea      edi, [ebp - 0x40]              
  0x001C397D  f3a5                    rep movsd dword ptr es:[edi], dword ptr [esi] 
  0x001C397F  8d4dc0                  lea      ecx, [ebp - 0x40]              
  0x001C3982  894d10                  mov      dword ptr [ebp + 0x10], ecx    
                                        ; XREF: 0x001C3912 (cond_jump)
  0x001C3985  8b5d08                  mov      ebx, dword ptr [ebp + 8]       
  0x001C3988  8b4d0c                  mov      ecx, dword ptr [ebp + 0xc]     
  0x001C398B  8b5510                  mov      edx, dword ptr [ebp + 0x10]    
  0x001C398E  bffcffffff              mov      edi, 0xfffffffc                
                                        ; XREF: 0x001C39DB (cond_jump)
  0x001C3993  befcffffff              mov      esi, 0xfffffffc                
  0x001C3998  d901                    fld      dword ptr [ecx]                
  0x001C399A  d94104                  fld      dword ptr [ecx + 4]            
  0x001C399D  d94108                  fld      dword ptr [ecx + 8]            
  0x001C39A0  d9410c                  fld      dword ptr [ecx + 0xc]          
                                        ; XREF: 0x001C39CA (cond_jump)
  0x001C39A3  d9c3                    fld      st(3)                          
  0x001C39A5  d84cb210                fmul     dword ptr [edx + esi*4 + 0x10] 
  0x001C39A9  d9c3                    fld      st(3)                          
  0x001C39AB  d84cb220                fmul     dword ptr [edx + esi*4 + 0x20] 
  0x001C39AF  d9c3                    fld      st(3)                          
  0x001C39B1  d84cb230                fmul     dword ptr [edx + esi*4 + 0x30] 
  0x001C39B5  d9c3                    fld      st(3)                          
  0x001C39B7  d84cb240                fmul     dword ptr [edx + esi*4 + 0x40] 
  0x001C39BB  d9cb                    fxch     st(3)                          
  0x001C39BD  dec1                    faddp    st(1)                          
  0x001C39BF  d9ca                    fxch     st(2)                          
  0x001C39C1  dec1                    faddp    st(1)                          
  0x001C39C3  dec1                    faddp    st(1)                          
  0x001C39C5  d95cb310                fstp     dword ptr [ebx + esi*4 + 0x10] 
  0x001C39C9  46                      inc      esi                            
  0x001C39CA  75d7                    jne      0x1c39a3                       
  0x001C39CC  ddc3                    ffree    st(3)                          
  0x001C39CE  ddc2                    ffree    st(2)                          
  0x001C39D0  ddc1                    ffree    st(1)                          
  0x001C39D2  ddc0                    ffree    st(0)                          
  0x001C39D4  8d4910                  lea      ecx, [ecx + 0x10]              
  0x001C39D7  8d5b10                  lea      ebx, [ebx + 0x10]              
  0x001C39DA  47                      inc      edi                            
  0x001C39DB  75b6                    jne      0x1c3993                       
                                        ; XREF: 0x001C3975 (jump)
  0x001C39DD  5f                      pop      edi                            
  0x001C39DE  5e                      pop      esi                            
  0x001C39DF  5b                      pop      ebx                            
  0x001C39E0  c9                      leave                                   
  0x001C39E1  c20c00                  ret      0xc                            
; end of function

; ============================================================
; Function: sub_001C39E4
; Start: 0x001C39E4  End: 0x001C3B4E  Size: 362 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001C36CA, sub_001C3737, sub_001C38AD, sub_001C3901
; ============================================================
sub_001C39E4:
  0x001C39E4  55                      push     ebp                            
  0x001C39E5  8d6c24a4                lea      ebp, [esp - 0x5c]              
  0x001C39E9  81ecc0000000            sub      esp, 0xc0                      
  0x001C39EF  8b4570                  mov      eax, dword ptr [ebp + 0x70]    
  0x001C39F2  85c0                    test     eax, eax                       
  0x001C39F4  56                      push     esi                            
  0x001C39F5  57                      push     edi                            
  0x001C39F6  0f8452010000            je       0x1c3b4e                       
  0x001C39FC  837d6c00                cmp      dword ptr [ebp + 0x6c], 0      
  0x001C3A00  d9ee                    fldz                                    
  0x001C3A02  0f84f2000000            je       0x1c3afa                       
  0x001C3A08  d95d54                  fstp     dword ptr [ebp + 0x54]         
  0x001C3A0B  8b08                    mov      ecx, dword ptr [eax]           
  0x001C3A0D  d9ee                    fldz                                    
  0x001C3A0F  ff756c                  push     dword ptr [ebp + 0x6c]         
  0x001C3A12  d95d50                  fstp     dword ptr [ebp + 0x50]         
  0x001C3A15  894d1c                  mov      dword ptr [ebp + 0x1c], ecx    
  0x001C3A18  d9ee                    fldz                                    
  0x001C3A1A  8b4804                  mov      ecx, dword ptr [eax + 4]       
  0x001C3A1D  d95d4c                  fstp     dword ptr [ebp + 0x4c]         
  0x001C3A20  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001C3A23  d9ee                    fldz                                    
  0x001C3A25  894544                  mov      dword ptr [ebp + 0x44], eax    
  0x001C3A28  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3A2B  d95d48                  fstp     dword ptr [ebp + 0x48]         
  0x001C3A2E  50                      push     eax                            
  0x001C3A2F  d9ee                    fldz                                    
  0x001C3A31  894d30                  mov      dword ptr [ebp + 0x30], ecx    
  0x001C3A34  d95d40                  fstp     dword ptr [ebp + 0x40]         
  0x001C3A37  d9ee                    fldz                                    
  0x001C3A39  d95d3c                  fstp     dword ptr [ebp + 0x3c]         
  0x001C3A3C  d9ee                    fldz                                    
  0x001C3A3E  d95d38                  fstp     dword ptr [ebp + 0x38]         
  0x001C3A41  d9ee                    fldz                                    
  0x001C3A43  d95d34                  fstp     dword ptr [ebp + 0x34]         
  0x001C3A46  d9ee                    fldz                                    
  0x001C3A48  d95d2c                  fstp     dword ptr [ebp + 0x2c]         
  0x001C3A4B  d9ee                    fldz                                    
  0x001C3A4D  d95d28                  fstp     dword ptr [ebp + 0x28]         
  0x001C3A50  d9ee                    fldz                                    
  0x001C3A52  d95d24                  fstp     dword ptr [ebp + 0x24]         
  0x001C3A55  d9ee                    fldz                                    
  0x001C3A57  d95d20                  fstp     dword ptr [ebp + 0x20]         
  0x001C3A5A  d9e8                    fld1                                    
  0x001C3A5C  d95d58                  fstp     dword ptr [ebp + 0x58]         
  0x001C3A5F  e8d3fcffff              call     0x1c3737                       ; -> sub_001C3737
  0x001C3A64  8b7d68                  mov      edi, dword ptr [ebp + 0x68]    
  0x001C3A67  85ff                    test     edi, edi                       
  0x001C3A69  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3A6C  50                      push     eax                            
  0x001C3A6D  746a                    je       0x1c3ad9                       
  0x001C3A6F  8d459c                  lea      eax, [ebp - 0x64]              
  0x001C3A72  50                      push     eax                            
  0x001C3A73  e852fcffff              call     0x1c36ca                       ; -> sub_001C36CA
  0x001C3A78  8b7564                  mov      esi, dword ptr [ebp + 0x64]    
  0x001C3A7B  56                      push     esi                            
  0x001C3A7C  e82cfeffff              call     0x1c38ad                       ; -> sub_001C38AD
  0x001C3A81  d94630                  fld      dword ptr [esi + 0x30]         
  0x001C3A84  d827                    fsub     dword ptr [edi]                
  0x001C3A86  59                      pop      ecx                            
  0x001C3A87  8d459c                  lea      eax, [ebp - 0x64]              
  0x001C3A8A  50                      push     eax                            
  0x001C3A8B  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3A8E  56                      push     esi                            
  0x001C3A8F  d94634                  fld      dword ptr [esi + 0x34]         
  0x001C3A92  56                      push     esi                            
  0x001C3A93  d86704                  fsub     dword ptr [edi + 4]            
  0x001C3A96  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3A99  d94638                  fld      dword ptr [esi + 0x38]         
  0x001C3A9C  d86708                  fsub     dword ptr [edi + 8]            
  0x001C3A9F  d95e38                  fstp     dword ptr [esi + 0x38]         
  0x001C3AA2  e85afeffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3AA7  8d451c                  lea      eax, [ebp + 0x1c]              
  0x001C3AAA  50                      push     eax                            
  0x001C3AAB  56                      push     esi                            
  0x001C3AAC  56                      push     esi                            
  0x001C3AAD  e84ffeffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3AB2  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3AB5  50                      push     eax                            
  0x001C3AB6  56                      push     esi                            
  0x001C3AB7  56                      push     esi                            
  0x001C3AB8  e844feffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3ABD  d94630                  fld      dword ptr [esi + 0x30]         
  0x001C3AC0  d807                    fadd     dword ptr [edi]                
  0x001C3AC2  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3AC5  d94704                  fld      dword ptr [edi + 4]            
  0x001C3AC8  d84634                  fadd     dword ptr [esi + 0x34]         
  0x001C3ACB  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3ACE  d94708                  fld      dword ptr [edi + 8]            
  0x001C3AD1  d84638                  fadd     dword ptr [esi + 0x38]         
  0x001C3AD4  d95e38                  fstp     dword ptr [esi + 0x38]         
  0x001C3AD7  eb7f                    jmp      0x1c3b58                       
                                        ; XREF: 0x001C3A6D (cond_jump)
  0x001C3AD9  8b7564                  mov      esi, dword ptr [ebp + 0x64]    
  0x001C3ADC  56                      push     esi                            
  0x001C3ADD  e8e8fbffff              call     0x1c36ca                       ; -> sub_001C36CA
  0x001C3AE2  8d451c                  lea      eax, [ebp + 0x1c]              
  0x001C3AE5  50                      push     eax                            
  0x001C3AE6  56                      push     esi                            
  0x001C3AE7  56                      push     esi                            
  0x001C3AE8  e814feffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3AED  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3AF0  50                      push     eax                            
  0x001C3AF1  56                      push     esi                            
  0x001C3AF2  56                      push     esi                            
  0x001C3AF3  e809feffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3AF8  eb5e                    jmp      0x1c3b58                       
                                        ; XREF: 0x001C3A02 (cond_jump)
  0x001C3AFA  8b7564                  mov      esi, dword ptr [ebp + 0x64]    
  0x001C3AFD  d95e38                  fstp     dword ptr [esi + 0x38]         
  0x001C3B00  d9ee                    fldz                                    
  0x001C3B02  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3B05  d9ee                    fldz                                    
  0x001C3B07  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3B0A  d9ee                    fldz                                    
  0x001C3B0C  d95e2c                  fstp     dword ptr [esi + 0x2c]         
  0x001C3B0F  d9ee                    fldz                                    
  0x001C3B11  d95e24                  fstp     dword ptr [esi + 0x24]         
  0x001C3B14  d9ee                    fldz                                    
  0x001C3B16  d95e20                  fstp     dword ptr [esi + 0x20]         
  0x001C3B19  d9ee                    fldz                                    
  0x001C3B1B  d95e1c                  fstp     dword ptr [esi + 0x1c]         
  0x001C3B1E  d9ee                    fldz                                    
  0x001C3B20  d95e18                  fstp     dword ptr [esi + 0x18]         
  0x001C3B23  d9ee                    fldz                                    
  0x001C3B25  d95e10                  fstp     dword ptr [esi + 0x10]         
  0x001C3B28  d9ee                    fldz                                    
  0x001C3B2A  d95e0c                  fstp     dword ptr [esi + 0xc]          
  0x001C3B2D  d9ee                    fldz                                    
  0x001C3B2F  d95e08                  fstp     dword ptr [esi + 8]            
  0x001C3B32  d9ee                    fldz                                    
  0x001C3B34  d95e04                  fstp     dword ptr [esi + 4]            
  0x001C3B37  d9e8                    fld1                                    
  0x001C3B39  8b08                    mov      ecx, dword ptr [eax]           
  0x001C3B3B  890e                    mov      dword ptr [esi], ecx           
  0x001C3B3D  8b4804                  mov      ecx, dword ptr [eax + 4]       
  0x001C3B40  894e14                  mov      dword ptr [esi + 0x14], ecx    
  0x001C3B43  8b4008                  mov      eax, dword ptr [eax + 8]       
  0x001C3B46  d95e3c                  fstp     dword ptr [esi + 0x3c]         
  0x001C3B49  894628                  mov      dword ptr [esi + 0x28], eax    
  0x001C3B4C  eb0a                    jmp      0x1c3b58                       
; end of function
                                        ; XREF: 0x001C39F6 (cond_jump)
  0x001C3B4E  8b7564                  mov      esi, dword ptr [ebp + 0x64]    
  0x001C3B51  56                      push     esi                            
  0x001C3B52  e856fdffff              call     0x1c38ad                       ; -> sub_001C38AD
  0x001C3B57  59                      pop      ecx                            
                                        ; XREF: 0x001C3AD7 (jump), 0x001C3AF8 (jump), 0x001C3B4C (jump)
  0x001C3B58  837d7800                cmp      dword ptr [ebp + 0x78], 0      
  0x001C3B5C  7459                    je       0x1c3bb7                       
  0x001C3B5E  ff7578                  push     dword ptr [ebp + 0x78]         
  0x001C3B61  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3B64  50                      push     eax                            
  0x001C3B65  e8cdfbffff              call     0x1c3737                       ; -> sub_001C3737
  0x001C3B6A  8b7d74                  mov      edi, dword ptr [ebp + 0x74]    
  0x001C3B6D  85ff                    test     edi, edi                       
  0x001C3B6F  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3B72  50                      push     eax                            
  0x001C3B73  56                      push     esi                            
  0x001C3B74  56                      push     esi                            
  0x001C3B75  743b                    je       0x1c3bb2                       
  0x001C3B77  d94630                  fld      dword ptr [esi + 0x30]         
  0x001C3B7A  d827                    fsub     dword ptr [edi]                
  0x001C3B7C  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3B7F  d94634                  fld      dword ptr [esi + 0x34]         
  0x001C3B82  d86704                  fsub     dword ptr [edi + 4]            
  0x001C3B85  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3B88  d94638                  fld      dword ptr [esi + 0x38]         
  0x001C3B8B  d86708                  fsub     dword ptr [edi + 8]            
  0x001C3B8E  d95e38                  fstp     dword ptr [esi + 0x38]         
  0x001C3B91  e86bfdffff              call     0x1c3901                       ; -> sub_001C3901
  0x001C3B96  d94630                  fld      dword ptr [esi + 0x30]         
  0x001C3B99  d807                    fadd     dword ptr [edi]                
  0x001C3B9B  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3B9E  d94634                  fld      dword ptr [esi + 0x34]         
  0x001C3BA1  d84704                  fadd     dword ptr [edi + 4]            
  0x001C3BA4  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3BA7  d94638                  fld      dword ptr [esi + 0x38]         
  0x001C3BAA  d84708                  fadd     dword ptr [edi + 8]            
  0x001C3BAD  d95e38                  fstp     dword ptr [esi + 0x38]         
  0x001C3BB0  eb05                    jmp      0x1c3bb7                       
                                        ; XREF: 0x001C3B75 (cond_jump)
  0x001C3BB2  e84afdffff              call     0x1c3901                       ; -> sub_001C3901
                                        ; XREF: 0x001C3B5C (cond_jump), 0x001C3BB0 (jump)
  0x001C3BB7  8b457c                  mov      eax, dword ptr [ebp + 0x7c]    
  0x001C3BBA  85c0                    test     eax, eax                       
  0x001C3BBC  741a                    je       0x1c3bd8                       
  0x001C3BBE  d94630                  fld      dword ptr [esi + 0x30]         
  0x001C3BC1  d800                    fadd     dword ptr [eax]                
  0x001C3BC3  d95e30                  fstp     dword ptr [esi + 0x30]         
  0x001C3BC6  d94004                  fld      dword ptr [eax + 4]            
  0x001C3BC9  d84634                  fadd     dword ptr [esi + 0x34]         
  0x001C3BCC  d95e34                  fstp     dword ptr [esi + 0x34]         
  0x001C3BCF  d94008                  fld      dword ptr [eax + 8]            
  0x001C3BD2  d84638                  fadd     dword ptr [esi + 0x38]         
  0x001C3BD5  d95e38                  fstp     dword ptr [esi + 0x38]         
                                        ; XREF: 0x001C3BBC (cond_jump)
  0x001C3BD8  5f                      pop      edi                            
  0x001C3BD9  8bc6                    mov      eax, esi                       
  0x001C3BDB  5e                      pop      esi                            
  0x001C3BDC  83c55c                  add      ebp, 0x5c                      
  0x001C3BDF  c9                      leave                                   
  0x001C3BE0  c21c00                  ret      0x1c                           
  0x001C3BE3  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C3BE7  ff4004                  inc      dword ptr [eax + 4]            
  0x001C3BEA  8b4004                  mov      eax, dword ptr [eax + 4]       
  0x001C3BED  c20400                  ret      4                              

; ============================================================
; Function: sub_001C3BF0
; Start: 0x001C3BF0  End: 0x001C3C1F  Size: 47 bytes
; Detection: call_target (confidence: 0.90)
; Calls: sub_001BEE6D
; ============================================================
sub_001C3BF0:
  0x001C3BF0  56                      push     esi                            
  0x001C3BF1  8bf1                    mov      esi, ecx                       
  0x001C3BF3  837e0800                cmp      dword ptr [esi + 8], 0         
  0x001C3BF7  c70640592100            mov      dword ptr [esi], 0x215940      
  0x001C3BFD  7420                    je       0x1c3c1f                       
  0x001C3BFF  8b4614                  mov      eax, dword ptr [esi + 0x14]    
  0x001C3C02  85c0                    test     eax, eax                       
  0x001C3C04  7406                    je       0x1c3c0c                       
  0x001C3C06  50                      push     eax                            
  0x001C3C07  e861b2ffff              call     0x1bee6d                       ; -> sub_001BEE6D
                                        ; XREF: 0x001C3C04 (cond_jump)
  0x001C3C0C  8b7610                  mov      esi, dword ptr [esi + 0x10]    
  0x001C3C0F  85f6                    test     esi, esi                       
  0x001C3C11  7406                    je       0x1c3c19                       
  0x001C3C13  56                      push     esi                            
  0x001C3C14  e854b2ffff              call     0x1bee6d                       ; -> sub_001BEE6D
                                        ; XREF: 0x001C3C11 (cond_jump)
  0x001C3C19  5e                      pop      esi                            
  0x001C3C1A  e9b1d4feff              jmp      0x1b10d0                       
; end of function
                                        ; XREF: 0x001C3BFD (cond_jump)
  0x001C3C1F  5e                      pop      esi                            
  0x001C3C20  c3                      ret                                     

; ============================================================
; Function: sub_001C3C21
; Start: 0x001C3C21  End: 0x001C3C5A  Size: 57 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001C3C21:
  0x001C3C21  55                      push     ebp                            
  0x001C3C22  8bec                    mov      ebp, esp                       
  0x001C3C24  56                      push     esi                            
  0x001C3C25  8b750c                  mov      esi, dword ptr [ebp + 0xc]     
  0x001C3C28  57                      push     edi                            
  0x001C3C29  6a04                    push     4                              
  0x001C3C2B  59                      pop      ecx                            
  0x001C3C2C  bf60592100              mov      edi, 0x215960                  
  0x001C3C31  33c0                    xor      eax, eax                       
  0x001C3C33  f3a7                    repe cmpsd dword ptr [esi], dword ptr es:[edi] 
  0x001C3C35  7411                    je       0x1c3c48                       
  0x001C3C37  8b750c                  mov      esi, dword ptr [ebp + 0xc]     
  0x001C3C3A  6a04                    push     4                              
  0x001C3C3C  59                      pop      ecx                            
  0x001C3C3D  bf24932100              mov      edi, 0x219324                  
  0x001C3C42  33c0                    xor      eax, eax                       
  0x001C3C44  f3a7                    repe cmpsd dword ptr [esi], dword ptr es:[edi] 
  0x001C3C46  7512                    jne      0x1c3c5a                       
                                        ; XREF: 0x001C3C35 (cond_jump)
  0x001C3C48  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C3C4B  8b4d10                  mov      ecx, dword ptr [ebp + 0x10]    
  0x001C3C4E  8901                    mov      dword ptr [ecx], eax           
  0x001C3C50  8b08                    mov      ecx, dword ptr [eax]           
  0x001C3C52  50                      push     eax                            
  0x001C3C53  ff5104                  call     dword ptr [ecx + 4]            
  0x001C3C56  33c0                    xor      eax, eax                       
  0x001C3C58  eb05                    jmp      0x1c3c5f                       
; end of function
                                        ; XREF: 0x001C3C46 (cond_jump)
  0x001C3C5A  b802400080              mov      eax, 0x80004002                
                                        ; XREF: 0x001C3C58 (jump)
  0x001C3C5F  5f                      pop      edi                            
  0x001C3C60  5e                      pop      esi                            
  0x001C3C61  5d                      pop      ebp                            
  0x001C3C62  c20c00                  ret      0xc                            

; ============================================================
; Function: sub_001C3C65
; Start: 0x001C3C65  End: 0x001C3C83  Size: 30 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C3C65:
  0x001C3C65  8b442404                mov      eax, dword ptr [esp + 4]       
  0x001C3C69  81ecd8000000            sub      esp, 0xd8                      
  0x001C3C6F  55                      push     ebp                            
  0x001C3C70  56                      push     esi                            
  0x001C3C71  33f6                    xor      esi, esi                       
  0x001C3C73  3bc6                    cmp      eax, esi                       
  0x001C3C75  8be9                    mov      ebp, ecx                       
  0x001C3C77  750a                    jne      0x1c3c83                       
  0x001C3C79  b86c087688              mov      eax, 0x8876086c                
  0x001C3C7E  e96c020000              jmp      0x1c3eef                       
; end of function
                                        ; XREF: 0x001C3C77 (cond_jump)
  0x001C3C83  53                      push     ebx                            
  0x001C3C84  57                      push     edi                            
  0x001C3C85  894508                  mov      dword ptr [ebp + 8], eax       
  0x001C3C88  e823d4feff              call     0x1b10b0                       ; -> sub_001B10B0
  0x001C3C8D  8d442414                lea      eax, [esp + 0x14]              
  0x001C3C91  50                      push     eax                            
  0x001C3C92  e849d1feff              call     0x1b0de0                       ; -> sub_001B0DE0
  0x001C3C97  33db                    xor      ebx, ebx                       
  0x001C3C99  6a02                    push     2                              
  0x001C3C9B  89742414                mov      dword ptr [esp + 0x14], esi    
  0x001C3C9F  43                      inc      ebx                            
  0x001C3CA0  5f                      pop      edi                            
                                        ; XREF: 0x001C3EE5 (cond_jump)
  0x001C3CA1  e856a9ffff              call     0x1be5fc                       ; -> sub_001BE5FC
  0x001C3CA6  6844010000              push     0x144                          
  0x001C3CAB  881dad331c00            mov      byte ptr [0x1c33ad], bl        
  0x001C3CB1  e83a09ffff              call     0x1b45f0                       ; -> sub_001B45F0
  0x001C3CB6  6a58                    push     0x58                           
  0x001C3CB8  33d2                    xor      edx, edx                       
  0x001C3CBA  59                      pop      ecx                            
  0x001C3CBB  881de7341c00            mov      byte ptr [0x1c34e7], bl        
  0x001C3CC1  e8fae6feff              call     0x1b23c0                       ; -> sub_001B23C0
  0x001C3CC6  68021b0000              push     0x1b02                         
  0x001C3CCB  881d06351c00            mov      byte ptr [0x1c3506], bl        
  0x001C3CD1  e82aebfeff              call     0x1b2800                       ; -> sub_001B2800
  0x001C3CD6  56                      push     esi                            
  0x001C3CD7  881d0e351c00            mov      byte ptr [0x1c350e], bl        
  0x001C3CDD  e83ee8feff              call     0x1b2520                       ; -> sub_001B2520
  0x001C3CE2  56                      push     esi                            
  0x001C3CE3  881d04351c00            mov      byte ptr [0x1c3504], bl        
  0x001C3CE9  e802ecfeff              call     0x1b28f0                       ; -> sub_001B28F0
  0x001C3CEE  6a73                    push     0x73                           
  0x001C3CF0  8bd3                    mov      edx, ebx                       
  0x001C3CF2  59                      pop      ecx                            
  0x001C3CF3  881d02351c00            mov      byte ptr [0x1c3502], bl        
  0x001C3CF9  e8c2e6feff              call     0x1b23c0                       ; -> sub_001B23C0
  0x001C3CFE  6a04                    push     4                              
  0x001C3D00  33d2                    xor      edx, edx                       
  0x001C3D02  33c9                    xor      ecx, ecx                       
  0x001C3D04  881d1f351c00            mov      byte ptr [0x1c351f], bl        
  0x001C3D0A  e831e7feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D0F  57                      push     edi                            
  0x001C3D10  8bd7                    mov      edx, edi                       
  0x001C3D12  33c9                    xor      ecx, ecx                       
  0x001C3D14  881d27351c00            mov      byte ptr [0x1c3527], bl        
  0x001C3D1A  e821e7feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D1F  56                      push     esi                            
  0x001C3D20  6a03                    push     3                              
  0x001C3D22  5a                      pop      edx                            
  0x001C3D23  33c9                    xor      ecx, ecx                       
  0x001C3D25  881d2b351c00            mov      byte ptr [0x1c352b], bl        
  0x001C3D2B  e810e7feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D30  6a04                    push     4                              
  0x001C3D32  5a                      pop      edx                            
  0x001C3D33  52                      push     edx                            
  0x001C3D34  33c9                    xor      ecx, ecx                       
  0x001C3D36  881d2f351c00            mov      byte ptr [0x1c352f], bl        
  0x001C3D3C  e8ffe6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D41  57                      push     edi                            
  0x001C3D42  6a06                    push     6                              
  0x001C3D44  5a                      pop      edx                            
  0x001C3D45  33c9                    xor      ecx, ecx                       
  0x001C3D47  881d37351c00            mov      byte ptr [0x1c3537], bl        
  0x001C3D4D  e8eee6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D52  56                      push     esi                            
  0x001C3D53  6a07                    push     7                              
  0x001C3D55  5a                      pop      edx                            
  0x001C3D56  33c9                    xor      ecx, ecx                       
  0x001C3D58  881d3b351c00            mov      byte ptr [0x1c353b], bl        
  0x001C3D5E  e8dde6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D63  53                      push     ebx                            
  0x001C3D64  33d2                    xor      edx, edx                       
  0x001C3D66  8bcb                    mov      ecx, ebx                       
  0x001C3D68  881d20351c00            mov      byte ptr [0x1c3520], bl        
  0x001C3D6E  e8cde6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D73  53                      push     ebx                            
  0x001C3D74  6a04                    push     4                              
  0x001C3D76  5a                      pop      edx                            
  0x001C3D77  8bcb                    mov      ecx, ebx                       
  0x001C3D79  881d30351c00            mov      byte ptr [0x1c3530], bl        
  0x001C3D7F  e8bce6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D84  57                      push     edi                            
  0x001C3D85  6a0d                    push     0xd                            
  0x001C3D87  5a                      pop      edx                            
  0x001C3D88  33c9                    xor      ecx, ecx                       
  0x001C3D8A  881d53351c00            mov      byte ptr [0x1c3553], bl        
  0x001C3D90  e8abe6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3D95  57                      push     edi                            
  0x001C3D96  6a0e                    push     0xe                            
  0x001C3D98  5a                      pop      edx                            
  0x001C3D99  33c9                    xor      ecx, ecx                       
  0x001C3D9B  881d57351c00            mov      byte ptr [0x1c3557], bl        
  0x001C3DA1  e89ae6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3DA6  881d5b351c00            mov      byte ptr [0x1c355b], bl        
  0x001C3DAC  56                      push     esi                            
  0x001C3DAD  6a0f                    push     0xf                            
  0x001C3DAF  5a                      pop      edx                            
  0x001C3DB0  33c9                    xor      ecx, ecx                       
  0x001C3DB2  e889e6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3DB7  56                      push     esi                            
  0x001C3DB8  56                      push     esi                            
  0x001C3DB9  881d8f351c00            mov      byte ptr [0x1c358f], bl        
  0x001C3DBF  e86cebfeff              call     0x1b2930                       ; -> sub_001B2930
  0x001C3DC4  6a03                    push     3                              
  0x001C3DC6  6a0a                    push     0xa                            
  0x001C3DC8  5a                      pop      edx                            
  0x001C3DC9  33c9                    xor      ecx, ecx                       
  0x001C3DCB  881d47351c00            mov      byte ptr [0x1c3547], bl        
  0x001C3DD1  e86ae6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3DD6  6a03                    push     3                              
  0x001C3DD8  6a0b                    push     0xb                            
  0x001C3DDA  5a                      pop      edx                            
  0x001C3DDB  33c9                    xor      ecx, ecx                       
  0x001C3DDD  881d4b351c00            mov      byte ptr [0x1c354b], bl        
  0x001C3DE3  e858e6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3DE8  56                      push     esi                            
  0x001C3DE9  6a09                    push     9                              
  0x001C3DEB  5a                      pop      edx                            
  0x001C3DEC  33c9                    xor      ecx, ecx                       
  0x001C3DEE  881d43351c00            mov      byte ptr [0x1c3543], bl        
  0x001C3DF4  e847e6feff              call     0x1b2440                       ; -> sub_001B2440
  0x001C3DF9  f644244010              test     byte ptr [esp + 0x40], 0x10    
  0x001C3DFE  745f                    je       0x1c3e5f                       
  0x001C3E00  f644244420              test     byte ptr [esp + 0x44], 0x20    
  0x001C3E05  7458                    je       0x1c3e5f                       
  0x001C3E07  8bd3                    mov      edx, ebx                       
  0x001C3E09  b904030400              mov      ecx, 0x40304                   
  0x001C3E0E  881dca341c00            mov      byte ptr [0x1c34ca], bl        
  0x001C3E14  e877e5feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3E19  ba02030000              mov      edx, 0x302                     
  0x001C3E1E  b944030400              mov      ecx, 0x40344                   
  0x001C3E23  891d6c041c00            mov      dword ptr [0x1c046c], ebx      
  0x001C3E29  881dcd341c00            mov      byte ptr [0x1c34cd], bl        
  0x001C3E2F  e85ce5feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3E34  ba03030000              mov      edx, 0x303                     
  0x001C3E39  b948030400              mov      ecx, 0x40348                   
  0x001C3E3E  c70578041c0002030000    mov      dword ptr [0x1c0478], 0x302    
  0x001C3E48  881dce341c00            mov      byte ptr [0x1c34ce], bl        
  0x001C3E4E  e83de5feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3E53  c7057c041c0003030000    mov      dword ptr [0x1c047c], 0x303    
  0x001C3E5D  eb54                    jmp      0x1c3eb3                       
                                        ; XREF: 0x001C3DFE (cond_jump), 0x001C3E05 (cond_jump)
  0x001C3E5F  8bd3                    mov      edx, ebx                       
  0x001C3E61  b900030400              mov      ecx, 0x40300                   
  0x001C3E66  881dcb341c00            mov      byte ptr [0x1c34cb], bl        
  0x001C3E6C  e81fe5feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3E71  ba06020000              mov      edx, 0x206                     
  0x001C3E76  b93c030400              mov      ecx, 0x4033c                   
  0x001C3E7B  891d70041c00            mov      dword ptr [0x1c0470], ebx      
  0x001C3E81  881dc9341c00            mov      byte ptr [0x1c34c9], bl        
  0x001C3E87  e804e5feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3E8C  6a7f                    push     0x7f                           
  0x001C3E8E  5a                      pop      edx                            
  0x001C3E8F  b940030400              mov      ecx, 0x40340                   
  0x001C3E94  c70568041c0006020000    mov      dword ptr [0x1c0468], 0x206    
  0x001C3E9E  881dcc341c00            mov      byte ptr [0x1c34cc], bl        
  0x001C3EA4  e8e7e4feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C3EA9  c70574041c007f000000    mov      dword ptr [0x1c0474], 0x7f     
                                        ; XREF: 0x001C3E5D (jump)
  0x001C3EB3  39742410                cmp      dword ptr [esp + 0x10], esi    
  0x001C3EB7  7541                    jne      0x1c3efa                       
  0x001C3EB9  56                      push     esi                            
  0x001C3EBA  56                      push     esi                            
  0x001C3EBB  881da8331c00            mov      byte ptr [0x1c33a8], bl        
  0x001C3EC1  e8faddfeff              call     0x1b1cc0                       ; -> sub_001B1CC0
  0x001C3EC6  56                      push     esi                            
  0x001C3EC7  56                      push     esi                            
  0x001C3EC8  56                      push     esi                            
  0x001C3EC9  881daf331c00            mov      byte ptr [0x1c33af], bl        
  0x001C3ECF  e85c03ffff              call     0x1b4230                       ; -> sub_001B4230
  0x001C3ED4  8d4510                  lea      eax, [ebp + 0x10]              
                                        ; XREF: 0x001C3EFD (jump)
  0x001C3ED7  50                      push     eax                            
  0x001C3ED8  e821b0ffff              call     0x1beefe                       ; -> sub_001BEEFE
  0x001C3EDD  ff442410                inc      dword ptr [esp + 0x10]         
  0x001C3EE1  397c2410                cmp      dword ptr [esp + 0x10], edi    
  0x001C3EE5  0f82b6fdffff            jb       0x1c3ca1                       
  0x001C3EEB  5f                      pop      edi                            
  0x001C3EEC  33c0                    xor      eax, eax                       
  0x001C3EEE  5b                      pop      ebx                            
                                        ; XREF: 0x001C3C7E (jump)
  0x001C3EEF  5e                      pop      esi                            
  0x001C3EF0  5d                      pop      ebp                            
  0x001C3EF1  81c4d8000000            add      esp, 0xd8                      
  0x001C3EF7  c20400                  ret      4                              
                                        ; XREF: 0x001C3EB7 (cond_jump)
  0x001C3EFA  8d4514                  lea      eax, [ebp + 0x14]              
  0x001C3EFD  ebd8                    jmp      0x1c3ed7                       
  0x001C3EFF  8b442408                mov      eax, dword ptr [esp + 8]       
  0x001C3F03  85c0                    test     eax, eax                       
  0x001C3F05  7507                    jne      0x1c3f0e                       
  0x001C3F07  b86c087688              mov      eax, 0x8876086c                
  0x001C3F0C  eb10                    jmp      0x1c3f1e                       
                                        ; XREF: 0x001C3F05 (cond_jump)
  0x001C3F0E  8b4c2404                mov      ecx, dword ptr [esp + 4]       
  0x001C3F12  8b4908                  mov      ecx, dword ptr [ecx + 8]       
  0x001C3F15  8908                    mov      dword ptr [eax], ecx           
  0x001C3F17  e894d1feff              call     0x1b10b0                       ; -> sub_001B10B0
  0x001C3F1C  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C3F0C (jump)
  0x001C3F1E  c20800                  ret      8                              
  0x001C3F21  56                      push     esi                            
  0x001C3F22  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001C3F26  837e0c00                cmp      dword ptr [esi + 0xc], 0       
  0x001C3F2A  7407                    je       0x1c3f33                       
  0x001C3F2C  b805400080              mov      eax, 0x80004005                
  0x001C3F31  eb19                    jmp      0x1c3f4c                       
                                        ; XREF: 0x001C3F2A (cond_jump)
  0x001C3F33  ff7610                  push     dword ptr [esi + 0x10]         
  0x001C3F36  e885acffff              call     0x1bebc0                       ; -> sub_001BEBC0
  0x001C3F3B  ff7614                  push     dword ptr [esi + 0x14]         
  0x001C3F3E  e8f5aaffff              call     0x1bea38                       ; -> sub_001BEA38
  0x001C3F43  c7460c01000000          mov      dword ptr [esi + 0xc], 1       
  0x001C3F4A  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C3F31 (jump)
  0x001C3F4C  5e                      pop      esi                            
  0x001C3F4D  c20400                  ret      4                              

; ============================================================
; Function: sub_001C3F50
; Start: 0x001C3F50  End: 0x001C3FDD  Size: 141 bytes
; Detection: prologue (confidence: 0.95)
; ============================================================
sub_001C3F50:
  0x001C3F50  55                      push     ebp                            
  0x001C3F51  8bec                    mov      ebp, esp                       
  0x001C3F53  83ec74                  sub      esp, 0x74                      
  0x001C3F56  56                      push     esi                            
  0x001C3F57  8b7514                  mov      esi, dword ptr [ebp + 0x14]    
  0x001C3F5A  85f6                    test     esi, esi                       
  0x001C3F5C  57                      push     edi                            
  0x001C3F5D  7410                    je       0x1c3f6f                       
  0x001C3F5F  8b06                    mov      eax, dword ptr [esi]           
  0x001C3F61  d9e8                    fld1                                    
  0x001C3F63  8945dc                  mov      dword ptr [ebp - 0x24], eax    
  0x001C3F66  d95de4                  fstp     dword ptr [ebp - 0x1c]         
  0x001C3F69  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001C3F6C  8945e0                  mov      dword ptr [ebp - 0x20], eax    
                                        ; XREF: 0x001C3F5D (cond_jump)
  0x001C3F6F  8b5518                  mov      edx, dword ptr [ebp + 0x18]    
  0x001C3F72  85d2                    test     edx, edx                       
  0x001C3F74  7410                    je       0x1c3f86                       
  0x001C3F76  8b02                    mov      eax, dword ptr [edx]           
  0x001C3F78  d9ee                    fldz                                    
  0x001C3F7A  8945e8                  mov      dword ptr [ebp - 0x18], eax    
  0x001C3F7D  d95df0                  fstp     dword ptr [ebp - 0x10]         
  0x001C3F80  8b4204                  mov      eax, dword ptr [edx + 4]       
  0x001C3F83  8945ec                  mov      dword ptr [ebp - 0x14], eax    
                                        ; XREF: 0x001C3F74 (cond_jump)
  0x001C3F86  d9451c                  fld      dword ptr [ebp + 0x1c]         
  0x001C3F89  d81528d51e00            fcom     dword ptr [0x1ed528]           
  0x001C3F8F  dfe0                    fnstsw   ax                             
  0x001C3F91  f6c444                  test     ah, 0x44                       
  0x001C3F94  7b1e                    jnp      0x1c3fb4                       
  0x001C3F96  d9ee                    fldz                                    
  0x001C3F98  d95dcc                  fstp     dword ptr [ebp - 0x34]         
  0x001C3F9B  d9ee                    fldz                                    
  0x001C3F9D  d95dd0                  fstp     dword ptr [ebp - 0x30]         
  0x001C3FA0  d90584d41e00            fld      dword ptr [0x1ed484]           
  0x001C3FA6  d8c9                    fmul     st(1)                          
  0x001C3FA8  d9c0                    fld      st(0)                          
  0x001C3FAA  d9fe                    fsin                                    
  0x001C3FAC  d95dd4                  fstp     dword ptr [ebp - 0x2c]         
  0x001C3FAF  d9ff                    fcos                                    
  0x001C3FB1  d95dd8                  fstp     dword ptr [ebp - 0x28]         
                                        ; XREF: 0x001C3F94 (cond_jump)
  0x001C3FB4  8b4d20                  mov      ecx, dword ptr [ebp + 0x20]    
  0x001C3FB7  85c9                    test     ecx, ecx                       
  0x001C3FB9  7410                    je       0x1c3fcb                       
  0x001C3FBB  8b01                    mov      eax, dword ptr [ecx]           
  0x001C3FBD  d9ee                    fldz                                    
  0x001C3FBF  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C3FC2  d95dfc                  fstp     dword ptr [ebp - 4]            
  0x001C3FC5  8b4104                  mov      eax, dword ptr [ecx + 4]       
  0x001C3FC8  8945f8                  mov      dword ptr [ebp - 8], eax       
                                        ; XREF: 0x001C3FB9 (cond_jump)
  0x001C3FCB  d81d28d51e00            fcomp    dword ptr [0x1ed528]           
  0x001C3FD1  dfe0                    fnstsw   ax                             
  0x001C3FD3  f6c444                  test     ah, 0x44                       
  0x001C3FD6  7b05                    jnp      0x1c3fdd                       
  0x001C3FD8  8d45cc                  lea      eax, [ebp - 0x34]              
  0x001C3FDB  eb02                    jmp      0x1c3fdf                       
; end of function
                                        ; XREF: 0x001C3FD6 (cond_jump)
  0x001C3FDD  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C3FDB (jump)
  0x001C3FDF  f7d9                    neg      ecx                            
  0x001C3FE1  1bc9                    sbb      ecx, ecx                       
  0x001C3FE3  8d7df4                  lea      edi, [ebp - 0xc]               
  0x001C3FE6  23cf                    and      ecx, edi                       
  0x001C3FE8  51                      push     ecx                            
  0x001C3FE9  50                      push     eax                            
  0x001C3FEA  f7da                    neg      edx                            
  0x001C3FEC  1bd2                    sbb      edx, edx                       
  0x001C3FEE  8d45e8                  lea      eax, [ebp - 0x18]              
  0x001C3FF1  23d0                    and      edx, eax                       
  0x001C3FF3  f7de                    neg      esi                            
  0x001C3FF5  52                      push     edx                            
  0x001C3FF6  1bf6                    sbb      esi, esi                       
  0x001C3FF8  8d45dc                  lea      eax, [ebp - 0x24]              
  0x001C3FFB  23f0                    and      esi, eax                       
  0x001C3FFD  56                      push     esi                            
  0x001C3FFE  6a00                    push     0                              
  0x001C4000  6a00                    push     0                              
  0x001C4002  8d458c                  lea      eax, [ebp - 0x74]              
  0x001C4005  50                      push     eax                            
  0x001C4006  e8d9f9ffff              call     0x1c39e4                       ; -> sub_001C39E4
  0x001C400B  ff7524                  push     dword ptr [ebp + 0x24]         
  0x001C400E  8b4508                  mov      eax, dword ptr [ebp + 8]       
  0x001C4011  8b08                    mov      ecx, dword ptr [eax]           
  0x001C4013  8d558c                  lea      edx, [ebp - 0x74]              
  0x001C4016  52                      push     edx                            
  0x001C4017  ff7510                  push     dword ptr [ebp + 0x10]         
  0x001C401A  ff750c                  push     dword ptr [ebp + 0xc]          
  0x001C401D  50                      push     eax                            
  0x001C401E  ff5118                  call     dword ptr [ecx + 0x18]         
  0x001C4021  5f                      pop      edi                            
  0x001C4022  5e                      pop      esi                            
  0x001C4023  c9                      leave                                   
  0x001C4024  c22000                  ret      0x20                           
  0x001C4027  56                      push     esi                            
  0x001C4028  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001C402C  837e0c00                cmp      dword ptr [esi + 0xc], 0       
  0x001C4030  7507                    jne      0x1c4039                       
  0x001C4032  b805400080              mov      eax, 0x80004005                
  0x001C4037  eb0e                    jmp      0x1c4047                       
                                        ; XREF: 0x001C4030 (cond_jump)
  0x001C4039  ff7610                  push     dword ptr [esi + 0x10]         
  0x001C403C  e8f7a9ffff              call     0x1bea38                       ; -> sub_001BEA38
  0x001C4041  83660c00                and      dword ptr [esi + 0xc], 0       
  0x001C4045  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C4037 (jump)
  0x001C4047  5e                      pop      esi                            
  0x001C4048  c20400                  ret      4                              

; ============================================================
; Function: sub_001C404B
; Start: 0x001C404B  End: 0x001C4069  Size: 30 bytes
; Detection: call_target (confidence: 0.90)
; ============================================================
sub_001C404B:
  0x001C404B  8bc1                    mov      eax, ecx                       
  0x001C404D  33c9                    xor      ecx, ecx                       
  0x001C404F  c70040592100            mov      dword ptr [eax], 0x215940      
  0x001C4055  c7400401000000          mov      dword ptr [eax + 4], 1         
  0x001C405C  894808                  mov      dword ptr [eax + 8], ecx       
  0x001C405F  89480c                  mov      dword ptr [eax + 0xc], ecx     
  0x001C4062  894810                  mov      dword ptr [eax + 0x10], ecx    
  0x001C4065  894814                  mov      dword ptr [eax + 0x14], ecx    
  0x001C4068  c3                      ret                                     
; end of function
  0x001C4069  56                      push     esi                            
  0x001C406A  8b742408                mov      esi, dword ptr [esp + 8]       
  0x001C406E  ff4e04                  dec      dword ptr [esi + 4]            
  0x001C4071  8b4604                  mov      eax, dword ptr [esi + 4]       
  0x001C4074  7510                    jne      0x1c4086                       
  0x001C4076  8bce                    mov      ecx, esi                       
  0x001C4078  e873fbffff              call     0x1c3bf0                       ; -> sub_001C3BF0
  0x001C407D  56                      push     esi                            
  0x001C407E  e8f2a1fcff              call     0x18e275                       ; -> sub_0018E275
  0x001C4083  59                      pop      ecx                            
  0x001C4084  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C4074 (cond_jump)
  0x001C4086  5e                      pop      esi                            
  0x001C4087  c20400                  ret      4                              
  0x001C408A  55                      push     ebp                            
  0x001C408B  8d6c249c                lea      ebp, [esp - 0x64]              
  0x001C408F  81eca4000000            sub      esp, 0xa4                      
  0x001C4095  53                      push     ebx                            
  0x001C4096  33db                    xor      ebx, ebx                       
  0x001C4098  395d70                  cmp      dword ptr [ebp + 0x70], ebx    
  0x001C409B  750a                    jne      0x1c40a7                       
  0x001C409D  b86c087688              mov      eax, 0x8876086c                
  0x001C40A2  e998020000              jmp      0x1c433f                       
                                        ; XREF: 0x001C409B (cond_jump)
  0x001C40A7  56                      push     esi                            
  0x001C40A8  57                      push     edi                            
  0x001C40A9  8d4530                  lea      eax, [ebp + 0x30]              
  0x001C40AC  50                      push     eax                            
  0x001C40AD  53                      push     ebx                            
  0x001C40AE  ff7570                  push     dword ptr [ebp + 0x70]         
  0x001C40B1  e81a0affff              call     0x1b4ad0                       ; -> sub_001B4AD0
  0x001C40B6  8b7574                  mov      esi, dword ptr [ebp + 0x74]    
  0x001C40B9  3bf3                    cmp      esi, ebx                       
  0x001C40BB  743b                    je       0x1c40f8                       
  0x001C40BD  8d7d54                  lea      edi, [ebp + 0x54]              
  0x001C40C0  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C40C1  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C40C2  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C40C3  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C40C4  395d54                  cmp      dword ptr [ebp + 0x54], ebx    
  0x001C40C7  7c25                    jl       0x1c40ee                       
  0x001C40C9  8b4d5c                  mov      ecx, dword ptr [ebp + 0x5c]    
  0x001C40CC  394d54                  cmp      dword ptr [ebp + 0x54], ecx    
  0x001C40CF  7f1d                    jg       0x1c40ee                       
  0x001C40D1  8b5544                  mov      edx, dword ptr [ebp + 0x44]    
  0x001C40D4  395554                  cmp      dword ptr [ebp + 0x54], edx    
  0x001C40D7  7f15                    jg       0x1c40ee                       
  0x001C40D9  395d58                  cmp      dword ptr [ebp + 0x58], ebx    
  0x001C40DC  7c10                    jl       0x1c40ee                       
  0x001C40DE  8b4560                  mov      eax, dword ptr [ebp + 0x60]    
  0x001C40E1  394558                  cmp      dword ptr [ebp + 0x58], eax    
  0x001C40E4  7f08                    jg       0x1c40ee                       
  0x001C40E6  8b7548                  mov      esi, dword ptr [ebp + 0x48]    
  0x001C40E9  397558                  cmp      dword ptr [ebp + 0x58], esi    
  0x001C40EC  7e20                    jle      0x1c410e                       
                                        ; XREF: 0x001C40C7 (cond_jump), 0x001C40CF (cond_jump), 0x001C40D7 (cond_jump), 0x001C40DC (cond_jump), 0x001C40E4 (cond_jump)
  0x001C40EE  b86c087688              mov      eax, 0x8876086c                
  0x001C40F3  e945020000              jmp      0x1c433d                       
                                        ; XREF: 0x001C40BB (cond_jump)
  0x001C40F8  8b5544                  mov      edx, dword ptr [ebp + 0x44]    
  0x001C40FB  8b7548                  mov      esi, dword ptr [ebp + 0x48]    
  0x001C40FE  8bca                    mov      ecx, edx                       
  0x001C4100  8bc6                    mov      eax, esi                       
  0x001C4102  895d54                  mov      dword ptr [ebp + 0x54], ebx    
  0x001C4105  895d58                  mov      dword ptr [ebp + 0x58], ebx    
  0x001C4108  894d5c                  mov      dword ptr [ebp + 0x5c], ecx    
  0x001C410B  894560                  mov      dword ptr [ebp + 0x60], eax    
                                        ; XREF: 0x001C40EC (cond_jump)
  0x001C410E  2b4d54                  sub      ecx, dword ptr [ebp + 0x54]    
  0x001C4111  2b4558                  sub      eax, dword ptr [ebp + 0x58]    
  0x001C4114  85d2                    test     edx, edx                       
  0x001C4116  894d74                  mov      dword ptr [ebp + 0x74], ecx    
  0x001C4119  db4574                  fild     dword ptr [ebp + 0x74]         
  0x001C411C  894574                  mov      dword ptr [ebp + 0x74], eax    
  0x001C411F  db4574                  fild     dword ptr [ebp + 0x74]         
  0x001C4122  895574                  mov      dword ptr [ebp + 0x74], edx    
  0x001C4125  d90554d51e00            fld      dword ptr [0x1ed554]           
  0x001C412B  db4574                  fild     dword ptr [ebp + 0x74]         
  0x001C412E  7d06                    jge      0x1c4136                       
  0x001C4130  d805c0d61e00            fadd     dword ptr [0x1ed6c0]           
                                        ; XREF: 0x001C412E (cond_jump)
  0x001C4136  85f6                    test     esi, esi                       
  0x001C4138  d8f9                    fdivr    st(1)                          
  0x001C413A  897550                  mov      dword ptr [ebp + 0x50], esi    
  0x001C413D  d95d74                  fstp     dword ptr [ebp + 0x74]         
  0x001C4140  db4550                  fild     dword ptr [ebp + 0x50]         
  0x001C4143  7d06                    jge      0x1c414b                       
  0x001C4145  d805c0d61e00            fadd     dword ptr [0x1ed6c0]           
                                        ; XREF: 0x001C4143 (cond_jump)
  0x001C414B  def9                    fdivp    st(1)                          
  0x001C414D  8d7554                  lea      esi, [ebp + 0x54]              
  0x001C4150  8d7dc0                  lea      edi, [ebp - 0x40]              
  0x001C4153  8b5d7c                  mov      ebx, dword ptr [ebp + 0x7c]    
  0x001C4156  db4554                  fild     dword ptr [ebp + 0x54]         
  0x001C4159  d84d74                  fmul     dword ptr [ebp + 0x74]         
  0x001C415C  db455c                  fild     dword ptr [ebp + 0x5c]         
  0x001C415F  d84d74                  fmul     dword ptr [ebp + 0x74]         
  0x001C4162  d95d4c                  fstp     dword ptr [ebp + 0x4c]         
  0x001C4165  db4558                  fild     dword ptr [ebp + 0x58]         
  0x001C4168  d8ca                    fmul     st(2)                          
  0x001C416A  d95550                  fst      dword ptr [ebp + 0x50]         
  0x001C416D  db4560                  fild     dword ptr [ebp + 0x60]         
  0x001C4170  d8cb                    fmul     st(3)                          
  0x001C4172  d95d74                  fstp     dword ptr [ebp + 0x74]         
  0x001C4175  d9ee                    fldz                                    
  0x001C4177  d95d54                  fstp     dword ptr [ebp + 0x54]         
  0x001C417A  d9ee                    fldz                                    
  0x001C417C  d95d58                  fstp     dword ptr [ebp + 0x58]         
  0x001C417F  d9ee                    fldz                                    
  0x001C4181  d95d5c                  fstp     dword ptr [ebp + 0x5c]         
  0x001C4184  d9e8                    fld1                                    
  0x001C4186  d95d60                  fstp     dword ptr [ebp + 0x60]         
  0x001C4189  d9c1                    fld      st(1)                          
  0x001C418B  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C418C  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C418D  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C418E  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C418F  d95d5c                  fstp     dword ptr [ebp + 0x5c]         
  0x001C4192  8b455c                  mov      eax, dword ptr [ebp + 0x5c]    
  0x001C4195  d95d60                  fstp     dword ptr [ebp + 0x60]         
  0x001C4198  8945d4                  mov      dword ptr [ebp - 0x2c], eax    
  0x001C419B  d9ee                    fldz                                    
  0x001C419D  8b4560                  mov      eax, dword ptr [ebp + 0x60]    
  0x001C41A0  d95d54                  fstp     dword ptr [ebp + 0x54]         
  0x001C41A3  8945d8                  mov      dword ptr [ebp - 0x28], eax    
  0x001C41A6  d9c2                    fld      st(2)                          
  0x001C41A8  d95d58                  fstp     dword ptr [ebp + 0x58]         
  0x001C41AB  895dd0                  mov      dword ptr [ebp - 0x30], ebx    
  0x001C41AE  d9ee                    fldz                                    
  0x001C41B0  8b4574                  mov      eax, dword ptr [ebp + 0x74]    
  0x001C41B3  d95d5c                  fstp     dword ptr [ebp + 0x5c]         
  0x001C41B6  8d7554                  lea      esi, [ebp + 0x54]              
  0x001C41B9  d9e8                    fld1                                    
  0x001C41BB  8d7ddc                  lea      edi, [ebp - 0x24]              
  0x001C41BE  d95d60                  fstp     dword ptr [ebp + 0x60]         
  0x001C41C1  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41C2  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41C3  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41C4  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41C5  d9555c                  fst      dword ptr [ebp + 0x5c]         
  0x001C41C8  ddd8                    fstp     st(0)                          
  0x001C41CA  ddd8                    fstp     st(0)                          
  0x001C41CC  894560                  mov      dword ptr [ebp + 0x60], eax    
  0x001C41CF  8b455c                  mov      eax, dword ptr [ebp + 0x5c]    
  0x001C41D2  d9c1                    fld      st(1)                          
  0x001C41D4  d95d54                  fstp     dword ptr [ebp + 0x54]         
  0x001C41D7  8945f0                  mov      dword ptr [ebp - 0x10], eax    
  0x001C41DA  8b4560                  mov      eax, dword ptr [ebp + 0x60]    
  0x001C41DD  d95d58                  fstp     dword ptr [ebp + 0x58]         
  0x001C41E0  8945f4                  mov      dword ptr [ebp - 0xc], eax     
  0x001C41E3  8b4574                  mov      eax, dword ptr [ebp + 0x74]    
  0x001C41E6  d9ee                    fldz                                    
  0x001C41E8  d95d5c                  fstp     dword ptr [ebp + 0x5c]         
  0x001C41EB  895dec                  mov      dword ptr [ebp - 0x14], ebx    
  0x001C41EE  d9e8                    fld1                                    
  0x001C41F0  8d7554                  lea      esi, [ebp + 0x54]              
  0x001C41F3  d95d60                  fstp     dword ptr [ebp + 0x60]         
  0x001C41F6  8d7df8                  lea      edi, [ebp - 8]                 
  0x001C41F9  d9454c                  fld      dword ptr [ebp + 0x4c]         
  0x001C41FC  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41FD  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41FE  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C41FF  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C4200  d9555c                  fst      dword ptr [ebp + 0x5c]         
  0x001C4203  894560                  mov      dword ptr [ebp + 0x60], eax    
  0x001C4206  8b455c                  mov      eax, dword ptr [ebp + 0x5c]    
  0x001C4209  89450c                  mov      dword ptr [ebp + 0xc], eax     
  0x001C420C  8b4560                  mov      eax, dword ptr [ebp + 0x60]    
  0x001C420F  895d08                  mov      dword ptr [ebp + 8], ebx       
  0x001C4212  894510                  mov      dword ptr [ebp + 0x10], eax    
  0x001C4215  837d7800                cmp      dword ptr [ebp + 0x78], 0      
  0x001C4219  d9c1                    fld      st(1)                          
  0x001C421B  d95d54                  fstp     dword ptr [ebp + 0x54]         
  0x001C421E  8b4550                  mov      eax, dword ptr [ebp + 0x50]    
  0x001C4221  d9ee                    fldz                                    
  0x001C4223  8d7554                  lea      esi, [ebp + 0x54]              
  0x001C4226  d95d58                  fstp     dword ptr [ebp + 0x58]         
  0x001C4229  8d7d14                  lea      edi, [ebp + 0x14]              
  0x001C422C  d9ee                    fldz                                    
  0x001C422E  d95d5c                  fstp     dword ptr [ebp + 0x5c]         
  0x001C4231  d9e8                    fld1                                    
  0x001C4233  d95d60                  fstp     dword ptr [ebp + 0x60]         
  0x001C4236  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C4237  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C4238  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C4239  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C423A  d9555c                  fst      dword ptr [ebp + 0x5c]         
  0x001C423D  ddd8                    fstp     st(0)                          
  0x001C423F  894560                  mov      dword ptr [ebp + 0x60], eax    
  0x001C4242  ddd8                    fstp     st(0)                          
  0x001C4244  8b455c                  mov      eax, dword ptr [ebp + 0x5c]    
  0x001C4247  894528                  mov      dword ptr [ebp + 0x28], eax    
  0x001C424A  8b4560                  mov      eax, dword ptr [ebp + 0x60]    
  0x001C424D  895d24                  mov      dword ptr [ebp + 0x24], ebx    
  0x001C4250  89452c                  mov      dword ptr [ebp + 0x2c], eax    
  0x001C4253  7416                    je       0x1c426b                       
  0x001C4255  6a04                    push     4                              
  0x001C4257  8d75c0                  lea      esi, [ebp - 0x40]              
  0x001C425A  5f                      pop      edi                            
                                        ; XREF: 0x001C4269 (cond_jump)
  0x001C425B  ff7578                  push     dword ptr [ebp + 0x78]         
  0x001C425E  56                      push     esi                            
  0x001C425F  56                      push     esi                            
  0x001C4260  e8ccf3ffff              call     0x1c3631                       ; -> sub_001C3631
  0x001C4265  83c61c                  add      esi, 0x1c                      
  0x001C4268  4f                      dec      edi                            
  0x001C4269  75f0                    jne      0x1c425b                       
                                        ; XREF: 0x001C4253 (cond_jump)
  0x001C426B  6a04                    push     4                              
  0x001C426D  8d45c4                  lea      eax, [ebp - 0x3c]              
  0x001C4270  59                      pop      ecx                            
                                        ; XREF: 0x001C4296 (cond_jump)
  0x001C4271  d94008                  fld      dword ptr [eax + 8]            
  0x001C4274  d80d80d41e00            fmul     dword ptr [0x1ed480]           
  0x001C427A  d940fc                  fld      dword ptr [eax - 4]            
  0x001C427D  d8e1                    fsub     st(1)                          
  0x001C427F  d958fc                  fstp     dword ptr [eax - 4]            
  0x001C4282  d900                    fld      dword ptr [eax]                
  0x001C4284  d8e1                    fsub     st(1)                          
  0x001C4286  d918                    fstp     dword ptr [eax]                
  0x001C4288  83c01c                  add      eax, 0x1c                      
  0x001C428B  49                      dec      ecx                            
  0x001C428C  ddd8                    fstp     st(0)                          
  0x001C428E  d9e8                    fld1                                    
  0x001C4290  d870ec                  fdiv     dword ptr [eax - 0x14]         
  0x001C4293  d958ec                  fstp     dword ptr [eax - 0x14]         
  0x001C4296  75d9                    jne      0x1c4271                       
  0x001C4298  8b7d6c                  mov      edi, dword ptr [ebp + 0x6c]    
  0x001C429B  8b4f0c                  mov      ecx, dword ptr [edi + 0xc]     
  0x001C429E  b8000000ff              mov      eax, 0xff000000                
  0x001C42A3  33d2                    xor      edx, edx                       
  0x001C42A5  23d8                    and      ebx, eax                       
  0x001C42A7  3bd8                    cmp      ebx, eax                       
  0x001C42A9  0f95c2                  setne    dl                             
  0x001C42AC  894d78                  mov      dword ptr [ebp + 0x78], ecx    
  0x001C42AF  8bf2                    mov      esi, edx                       
  0x001C42B1  85f6                    test     esi, esi                       
  0x001C42B3  752f                    jne      0x1c42e4                       
  0x001C42B5  8b4530                  mov      eax, dword ptr [ebp + 0x30]    
  0x001C42B8  83f80b                  cmp      eax, 0xb                       
  0x001C42BB  7f10                    jg       0x1c42cd                       
  0x001C42BD  7422                    je       0x1c42e1                       
  0x001C42BF  48                      dec      eax                            
  0x001C42C0  48                      dec      eax                            
  0x001C42C1  741e                    je       0x1c42e1                       
  0x001C42C3  48                      dec      eax                            
  0x001C42C4  48                      dec      eax                            
  0x001C42C5  741a                    je       0x1c42e1                       
  0x001C42C7  48                      dec      eax                            
  0x001C42C8  48                      dec      eax                            
  0x001C42C9  7416                    je       0x1c42e1                       
  0x001C42CB  eb17                    jmp      0x1c42e4                       
                                        ; XREF: 0x001C42BB (cond_jump)
  0x001C42CD  83f80e                  cmp      eax, 0xe                       
  0x001C42D0  7c12                    jl       0x1c42e4                       
  0x001C42D2  83f80f                  cmp      eax, 0xf                       
  0x001C42D5  7e0a                    jle      0x1c42e1                       
  0x001C42D7  83f818                  cmp      eax, 0x18                      
  0x001C42DA  7e08                    jle      0x1c42e4                       
  0x001C42DC  83f81a                  cmp      eax, 0x1a                      
  0x001C42DF  7f03                    jg       0x1c42e4                       
                                        ; XREF: 0x001C42BD (cond_jump), 0x001C42C1 (cond_jump), 0x001C42C5 (cond_jump), 0x001C42C9 (cond_jump), 0x001C42D5 (cond_jump)
  0x001C42E1  33f6                    xor      esi, esi                       
  0x001C42E3  46                      inc      esi                            
                                        ; XREF: 0x001C42B3 (cond_jump), 0x001C42CB (jump), 0x001C42D0 (cond_jump), 0x001C42DA (cond_jump), 0x001C42DF (cond_jump)
  0x001C42E4  85c9                    test     ecx, ecx                       
  0x001C42E6  750a                    jne      0x1c42f2                       
  0x001C42E8  8b07                    mov      eax, dword ptr [edi]           
  0x001C42EA  57                      push     edi                            
  0x001C42EB  ff5010                  call     dword ptr [eax + 0x10]         
  0x001C42EE  85c0                    test     eax, eax                       
  0x001C42F0  7c4b                    jl       0x1c433d                       
                                        ; XREF: 0x001C42E6 (cond_jump)
  0x001C42F2  ff7570                  push     dword ptr [ebp + 0x70]         
  0x001C42F5  c605a8331c0001          mov      byte ptr [0x1c33a8], 1         
  0x001C42FC  6a00                    push     0                              
  0x001C42FE  e8bdd9feff              call     0x1b1cc0                       ; -> sub_001B1CC0
  0x001C4303  8bd6                    mov      edx, esi                       
  0x001C4305  b904030400              mov      ecx, 0x40304                   
  0x001C430A  c605ca341c0001          mov      byte ptr [0x1c34ca], 1         
  0x001C4311  e87ae0feff              call     0x1b2390                       ; -> sub_001B2390
  0x001C4316  6a1c                    push     0x1c                           
  0x001C4318  8d45c0                  lea      eax, [ebp - 0x40]              
  0x001C431B  50                      push     eax                            
  0x001C431C  6a04                    push     4                              
  0x001C431E  6a07                    push     7                              
  0x001C4320  89356c041c00            mov      dword ptr [0x1c046c], esi      
  0x001C4326  e835f4feff              call     0x1b3760                       ; -> sub_001B3760
  0x001C432B  837d7800                cmp      dword ptr [ebp + 0x78], 0      
  0x001C432F  750a                    jne      0x1c433b                       
  0x001C4331  8b07                    mov      eax, dword ptr [edi]           
  0x001C4333  57                      push     edi                            
  0x001C4334  ff501c                  call     dword ptr [eax + 0x1c]         
  0x001C4337  85c0                    test     eax, eax                       
  0x001C4339  7c02                    jl       0x1c433d                       
                                        ; XREF: 0x001C432F (cond_jump)
  0x001C433B  33c0                    xor      eax, eax                       
                                        ; XREF: 0x001C40F3 (jump), 0x001C42F0 (cond_jump), 0x001C4339 (cond_jump)
  0x001C433D  5f                      pop      edi                            
  0x001C433E  5e                      pop      esi                            
                                        ; XREF: 0x001C40A2 (jump)
  0x001C433F  5b                      pop      ebx                            
  0x001C4340  83c564                  add      ebp, 0x64                      
  0x001C4343  c9                      leave                                   
  0x001C4344  c21400                  ret      0x14                           
  0x001C4347  cc                      int3                                    

; ============================================================
; Function: sub_001C4348
; Start: 0x001C4348  End: 0x001C43C3  Size: 123 bytes
; Detection: cc_boundary (confidence: 0.85)
; ============================================================
sub_001C4348:
  0x001C4348  a856                    test     al, 0x56                       
  0x001C434A  1c00                    sbb      al, 0                          
  0x001C434C  6c                      insb     byte ptr es:[edi], dx          
  0x001C434D  56                      push     esi                            
  0x001C434E  1c00                    sbb      al, 0                          
  0x001C4350  4c                      dec      esp                            
  0x001C4351  56                      push     esi                            
  0x001C4352  1c00                    sbb      al, 0                          
  0x001C4354  2456                    and      al, 0x56                       
  0x001C4356  1c00                    sbb      al, 0                          
  0x001C4358  08561c                  or       byte ptr [esi + 0x1c], dl      
  0x001C435B  00e8                    add      al, ch                         
  0x001C435D  55                      push     ebp                            
  0x001C435E  1c00                    sbb      al, 0                          
  0x001C4360  c0551c00                rcl      byte ptr [ebp + 0x1c], 0       
  0x001C4364  a855                    test     al, 0x55                       
  0x001C4366  1c00                    sbb      al, 0                          
  0x001C4368  90                      nop                                     
  0x001C4369  55                      push     ebp                            
  0x001C436A  1c00                    sbb      al, 0                          
  0x001C436C  7c55                    jl       0x1c43c3                       
  0x001C436E  1c00                    sbb      al, 0                          
  0x001C4370  3c55                    cmp      al, 0x55                       
  0x001C4372  1c00                    sbb      al, 0                          
  0x001C4374  0c55                    or       al, 0x55                       
  0x001C4376  1c00                    sbb      al, 0                          
  0x001C4379  54                      push     esp                            
  0x001C437A  1c00                    sbb      al, 0                          
  0x001C437C  cc                      int3                                    
  0x001C437D  54                      push     esp                            
  0x001C437E  1c00                    sbb      al, 0                          
  0x001C4380  94                      xchg     esp, eax                       
  0x001C4381  54                      push     esp                            
  0x001C4382  1c00                    sbb      al, 0                          
  0x001C4384  5c                      pop      esp                            
  0x001C4385  54                      push     esp                            
  0x001C4386  1c00                    sbb      al, 0                          
  0x001C4388  44                      inc      esp                            
  0x001C4389  54                      push     esp                            
  0x001C438A  1c00                    sbb      al, 0                          
  0x001C438C  2454                    and      al, 0x54                       
  0x001C438E  1c00                    sbb      al, 0                          
  0x001C4390  f8                      clc                                     
  0x001C4391  53                      push     ebx                            
  0x001C4392  1c00                    sbb      al, 0                          
  0x001C4394  a853                    test     al, 0x53                       
  0x001C4396  1c00                    sbb      al, 0                          
  0x001C4398  8c531c                  mov      word ptr [ebx + 0x1c], ss      
  0x001C439B  006053                  add      byte ptr [eax + 0x53], ah      
  0x001C439E  1c00                    sbb      al, 0                          
  0x001C43A0  44                      inc      esp                            
  0x001C43A1  53                      push     ebx                            
  0x001C43A2  1c00                    sbb      al, 0                          
  0x001C43A4  1c53                    sbb      al, 0x53                       
  0x001C43A6  1c00                    sbb      al, 0                          
  0x001C43A8  f4                      hlt                                     
  0x001C43A9  52                      push     edx                            
  0x001C43AA  1c00                    sbb      al, 0                          
  0x001C43AC  cc                      int3                                    
  0x001C43AD  52                      push     edx                            
  0x001C43AE  1c00                    sbb      al, 0                          
  0x001C43B0  b8521c00a0              mov      eax, 0xa0001c52                
  0x001C43B5  52                      push     edx                            
  0x001C43B6  1c00                    sbb      al, 0                          
  0x001C43B8  8c521c                  mov      word ptr [edx + 0x1c], ss      
  0x001C43BB  007852                  add      byte ptr [eax + 0x52], bh      
  0x001C43BE  1c00                    sbb      al, 0                          
  0x001C43C0  6452                    push     edx                            
  0x001C43C2  1c00                    sbb      al, 0                          
  0x001C43C4  3c52                    cmp      al, 0x52                       
  0x001C43C6  1c00                    sbb      al, 0                          
  0x001C43C8  2452                    and      al, 0x52                       
  0x001C43CA  1c00                    sbb      al, 0                          
  0x001C43CC  10521c                  adc      byte ptr [edx + 0x1c], dl      
  0x001C43CF  00ec                    add      ah, ch                         
  0x001C43D1  51                      push     ecx                            
  0x001C43D2  1c00                    sbb      al, 0                          
  0x001C43D4  d451                    aam      0x51                           
  0x001C43D6  1c00                    sbb      al, 0                          
  0x001C43D8  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x001C43D9  51                      push     ecx                            
  0x001C43DA  1c00                    sbb      al, 0                          
  0x001C43DC  7c51                    jl       0x1c442f                       
  0x001C43DE  1c00                    sbb      al, 0                          
  0x001C43E0  58                      pop      eax                            
  0x001C43E1  51                      push     ecx                            
  0x001C43E2  1c00                    sbb      al, 0                          
  0x001C43E4  3451                    xor      al, 0x51                       
  0x001C43E6  1c00                    sbb      al, 0                          
  0x001C43E8  0451                    add      al, 0x51                       
  0x001C43EA  1c00                    sbb      al, 0                          
  0x001C43ED  50                      push     eax                            
  0x001C43EE  1c00                    sbb      al, 0                          
  0x001C43F0  d450                    aam      0x50                           
  0x001C43F2  1c00                    sbb      al, 0                          
  0x001C43F4  94                      xchg     esp, eax                       
  0x001C43F5  50                      push     eax                            
  0x001C43F6  1c00                    sbb      al, 0                          
  0x001C43F8  6c                      insb     byte ptr es:[edi], dx          
  0x001C43F9  50                      push     eax                            
  0x001C43FA  1c00                    sbb      al, 0                          
  0x001C43FC  44                      inc      esp                            
  0x001C43FD  50                      push     eax                            
  0x001C43FE  1c00                    sbb      al, 0                          
  0x001C4400  30501c                  xor      byte ptr [eax + 0x1c], dl      
  0x001C4403  0000                    add      byte ptr [eax], al             
  0x001C4405  50                      push     eax                            
  0x001C4406  1c00                    sbb      al, 0                          
  0x001C4408  e44f                    in       al, 0x4f                       
  0x001C440A  1c00                    sbb      al, 0                          
  0x001C440C  bc4f1c0098              mov      esp, 0x98001c4f                
  0x001C4411  4f                      dec      edi                            
  0x001C4412  1c00                    sbb      al, 0                          
  0x001C4414  6c                      insb     byte ptr es:[edi], dx          
  0x001C4415  4f                      dec      edi                            
  0x001C4416  1c00                    sbb      al, 0                          
  0x001C4418  40                      inc      eax                            
  0x001C4419  4f                      dec      edi                            
  0x001C441A  1c00                    sbb      al, 0                          
  0x001C441C  204f1c                  and      byte ptr [edi + 0x1c], cl      
  0x001C441F  00f0                    add      al, dh                         
  0x001C4421  4e                      dec      esi                            
  0x001C4422  1c00                    sbb      al, 0                          
  0x001C4424  c84e1c00                enter    0x1c4e, 0                      
  0x001C4428  a04e1c0070              mov      al, byte ptr [0x70001c4e]      
  0x001C442D  4e                      dec      esi                            
  0x001C442E  1c00                    sbb      al, 0                          
  0x001C4430  40                      inc      eax                            
  0x001C4431  4e                      dec      esi                            
  0x001C4432  1c00                    sbb      al, 0                          
  0x001C4434  144e                    adc      al, 0x4e                       
  0x001C4436  1c00                    sbb      al, 0                          
  0x001C4438  e44d                    in       al, 0x4d                       
  0x001C443A  1c00                    sbb      al, 0                          
  0x001C443C  b84d1c0094              mov      eax, 0x94001c4d                
  0x001C4441  4d                      dec      ebp                            
  0x001C4442  1c00                    sbb      al, 0                          
  0x001C4444  744d                    je       0x1c4493                       
  0x001C4446  1c00                    sbb      al, 0                          
  0x001C4448  54                      push     esp                            
  0x001C4449  4d                      dec      ebp                            
  0x001C444A  1c00                    sbb      al, 0                          
  0x001C444C  1c4d                    sbb      al, 0x4d                       
  0x001C444E  1c00                    sbb      al, 0                          
  0x001C4451  4c                      dec      esp                            
  0x001C4452  1c00                    sbb      al, 0                          
  0x001C4454  d04c1c00                ror      byte ptr [esp + ebx], 1        
  0x001C4458  ac                      lodsb    al, byte ptr [esi]             
  0x001C4459  4c                      dec      esp                            
  0x001C445A  1c00                    sbb      al, 0                          
  0x001C445C  844c1c00                test     byte ptr [esp + ebx], cl       
  0x001C4460  6c                      insb     byte ptr es:[edi], dx          
  0x001C4461  4c                      dec      esp                            
  0x001C4462  1c00                    sbb      al, 0                          
  0x001C4464  58                      pop      eax                            
  0x001C4465  4c                      dec      esp                            
  0x001C4466  1c00                    sbb      al, 0                          
  0x001C4468  344c                    xor      al, 0x4c                       
  0x001C446A  1c00                    sbb      al, 0                          
  0x001C446C  244c                    and      al, 0x4c                       
  0x001C446E  1c00                    sbb      al, 0                          
  0x001C4470  e44b                    in       al, 0x4b                       
  0x001C4472  1c00                    sbb      al, 0                          
  0x001C4474  a04b1c0070              mov      al, byte ptr [0x70001c4b]      
  0x001C4479  4b                      dec      ebx                            
  0x001C447A  1c00                    sbb      al, 0                          
  0x001C447C  44                      inc      esp                            
  0x001C447D  4b                      dec      ebx                            
  0x001C447E  1c00                    sbb      al, 0                          
  0x001C4480  1c4b                    sbb      al, 0x4b                       
  0x001C4482  1c00                    sbb      al, 0                          
  0x001C4484  004b1c                  add      byte ptr [ebx + 0x1c], cl      
  0x001C4487  00d4                    add      ah, dl                         
  0x001C4489  4a                      dec      edx                            
  0x001C448A  1c00                    sbb      al, 0                          
  0x001C448C  b84a1c00a4              mov      eax, 0xa4001c4a                
  0x001C4491  4a                      dec      edx                            
  0x001C4492  1c00                    sbb      al, 0                          
  0x001C4494  8c4a1c                  mov      word ptr [edx + 0x1c], cs      
  0x001C4497  007c4a1c                add      byte ptr [edx + ecx*2 + 0x1c], bh 
  0x001C449B  00544a1c                add      byte ptr [edx + ecx*2 + 0x1c], dl 
  0x001C449F  0030                    add      byte ptr [eax], dh             
  0x001C44A1  4a                      dec      edx                            
  0x001C44A2  1c00                    sbb      al, 0                          
  0x001C44A4  f4                      hlt                                     
  0x001C44A5  49                      dec      ecx                            
  0x001C44A6  1c00                    sbb      al, 0                          
  0x001C44A8  c8491c00                enter    0x1c49, 0                      
  0x001C44AC  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x001C44AD  49                      dec      ecx                            
  0x001C44AE  1c00                    sbb      al, 0                          
  0x001C44B0  80491c00                or       byte ptr [ecx + 0x1c], 0       
  0x001C44B4  6449                    dec      ecx                            
  0x001C44B6  1c00                    sbb      al, 0                          
  0x001C44B8  3c49                    cmp      al, 0x49                       
  0x001C44BA  1c00                    sbb      al, 0                          
  0x001C44BC  18491c                  sbb      byte ptr [ecx + 0x1c], cl      
  0x001C44BF  0000                    add      byte ptr [eax], al             
  0x001C44C1  49                      dec      ecx                            
  0x001C44C2  1c00                    sbb      al, 0                          
  0x001C44C4  dc481c                  fmul     qword ptr [eax + 0x1c]         
  0x001C44C7  00b4481c00ac48          add      byte ptr [eax + ecx*2 + 0x48ac001c], dh 
  0x001C44CE  1c00                    sbb      al, 0                          
  0x001C44D0  7048                    jo       0x1c451a                       
  0x001C44D2  1c00                    sbb      al, 0                          
  0x001C44D4  3448                    xor      al, 0x48                       
  0x001C44D6  1c00                    sbb      al, 0                          
  0x001C44D8  1448                    adc      al, 0x48                       
  0x001C44DA  1c00                    sbb      al, 0                          
  0x001C44DC  0448                    add      al, 0x48                       
  0x001C44DE  1c00                    sbb      al, 0                          
  0x001C44E0  e447                    in       al, 0x47                       
  0x001C44E2  1c00                    sbb      al, 0                          
  0x001C44E4  c4471c                  les      eax, ptr [edi + 0x1c]          
  0x001C44E7  00a4471c008847          add      byte ptr [edi + eax*2 + 0x4788001c], ah 
  0x001C44EE  1c00                    sbb      al, 0                          
  0x001C44F0  6c                      insb     byte ptr es:[edi], dx          
  0x001C44F1  47                      inc      edi                            
  0x001C44F2  1c00                    sbb      al, 0                          
  0x001C44F4  38471c                  cmp      byte ptr [edi + 0x1c], al      
  0x001C44F7  002447                  add      byte ptr [edi + eax*2], ah     
  0x001C44FA  1c00                    sbb      al, 0                          
  0x001C44FC  0c47                    or       al, 0x47                       
  0x001C44FE  1c00                    sbb      al, 0                          
  0x001C4500  e446                    in       al, 0x46                       
  0x001C4502  1c00                    sbb      al, 0                          
  0x001C4504  a0461c0060              mov      al, byte ptr [0x60001c46]      
  0x001C4509  46                      inc      esi                            
  0x001C450A  1c00                    sbb      al, 0                          
  0x001C450C  2c46                    sub      al, 0x46                       
  0x001C450E  1c00                    sbb      al, 0                          
  0x001C4510  08461c                  or       byte ptr [esi + 0x1c], al      
  0x001C4513  00d8                    add      al, bl                         
  0x001C4515  45                      inc      ebp                            
  0x001C4516  1c00                    sbb      al, 0                          
  0x001C4518  bc451c0084              mov      esp, 0x84001c45                
  0x001C451D  45                      inc      ebp                            
  0x001C451E  1c00                    sbb      al, 0                          
  0x001C4520  58                      pop      eax                            
  0x001C4521  45                      inc      ebp                            
  0x001C4522  1c00                    sbb      al, 0                          
  0x001C4524  2c45                    sub      al, 0x45                       
  0x001C4526  1c00                    sbb      al, 0                          
  0x001C4528  0000                    add      byte ptr [eax], al             
  0x001C452A  0000                    add      byte ptr [eax], al             
  0x001C452C  41                      inc      ecx                            
  0x001C452D  7070                    jo       0x1c459f                       
  0x001C452F  6c                      insb     byte ptr es:[edi], dx          
  0x001C4530  69636174696f6e          imul     esp, dword ptr [ebx + 0x61], 0x6e6f6974 
  0x001C4537  20747261                and      byte ptr [edx + esi*2 + 0x61], dh 
  0x001C453B  6e                      outsb    dx, byte ptr [esi]             
  0x001C453C  7366                    jae      0x1c45a4                       
  0x001C453E  657272                  jb       0x1c45b3                       
  0x001C4541  656420746f6f            and      byte ptr fs:[edi + ebp*2 + 0x6f], dh 
  0x001C4547  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C454A  6e                      outsb    dx, byte ptr [esi]             
  0x001C454B  7920                    jns      0x1c456d                       
  0x001C454D  7363                    jae      0x1c45b2                       
  0x001C454F  61                      popal                                   
  0x001C4550  6e                      outsb    dx, byte ptr [esi]             
  0x001C4551  6c                      insb     byte ptr es:[edi], dx          
  0x001C4552  696e6573000049          imul     ebp, dword ptr [esi + 0x65], 0x49000073 
  0x001C4559  6e                      outsb    dx, byte ptr [esi]             
  0x001C455A  7661                    jbe      0x1c45bd                       
  0x001C455C  6c                      insb     byte ptr es:[edi], dx          
  0x001C455D  696420534f532070        imul     esp, dword ptr [eax + 0x53], 0x7020534f 
  0x001C4565  61                      popal                                   
  0x001C4566  7261                    jb       0x1c45c9                       
  0x001C4568  6d                      insd     dword ptr es:[edi], dx         
  0x001C4569  657465                  je       0x1c45d1                       
  0x001C456C  7273                    jb       0x1c45e1                       
  0x001C456E  20666f                  and      byte ptr [esi + 0x6f], ah      
  0x001C4571  7220                    jb       0x1c4593                       
  0x001C4573  7365                    jae      0x1c45da                       
  0x001C4575  7175                    jno      0x1c45ec                       
  0x001C4577  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4579  7469                    je       0x1c45e4                       
  0x001C457B  61                      popal                                   
  0x001C457C  6c                      insb     byte ptr es:[edi], dx          
  0x001C457D  204a50                  and      byte ptr [edx + 0x50], cl      
  0x001C4580  45                      inc      ebp                            
  0x001C4581  47                      inc      edi                            
  0x001C4582  0000                    add      byte ptr [eax], al             
  0x001C4584  43                      inc      ebx                            
  0x001C4585  6f                      outsd    dx, dword ptr [esi]            
  0x001C4586  7272                    jb       0x1c45fa                       
  0x001C4588  7570                    jne      0x1c45fa                       
  0x001C458A  7420                    je       0x1c45ac                       
  0x001C458C  4a                      dec      edx                            
  0x001C458D  50                      push     eax                            
  0x001C458E  45                      inc      ebp                            
  0x001C458F  47                      inc      edi                            
  0x001C4590  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C4594  61                      popal                                   
  0x001C4595  3a20                    cmp      ah, byte ptr [eax]             
  0x001C4597  666f                    outsw    dx, word ptr [esi]             
  0x001C4599  756e                    jne      0x1c4609                       
  0x001C459B  64206d61                and      byte ptr fs:[ebp + 0x61], ch   
                                        ; XREF: 0x001C452D (cond_jump)
  0x001C459F  726b                    jb       0x1c460c                       
  0x001C45A1  657220                  jb       0x1c45c4                       
                                        ; XREF: 0x001C453C (cond_jump)
  0x001C45A4  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C45A7  3032                    xor      byte ptr [edx], dh             
  0x001C45A9  7820                    js       0x1c45cb                       
  0x001C45AB  696e7374656164          imul     ebp, dword ptr [esi + 0x73], 0x64616574 
                                        ; XREF: 0x001C454D (cond_jump)
  0x001C45B2  206f66                  and      byte ptr [edi + 0x66], ch      
  0x001C45B5  205253                  and      byte ptr [edx + 0x53], dl      
  0x001C45B8  54                      push     esp                            
  0x001C45B9  2564005072              and      eax, 0x72500064                
  0x001C45BE  656d                    insd     dword ptr es:[edi], dx         
  0x001C45C0  61                      popal                                   
  0x001C45C1  7475                    je       0x1c4638                       
  0x001C45C3  7265                    jb       0x1c462a                       
  0x001C45C5  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C45C8  64206f66                and      byte ptr fs:[edi + 0x66], ch   
  0x001C45CC  204a50                  and      byte ptr [edx + 0x50], cl      
  0x001C45CF  45                      inc      ebp                            
  0x001C45D0  47                      inc      edi                            
                                        ; XREF: 0x001C4569 (cond_jump)
  0x001C45D1  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C45D4  6c                      insb     byte ptr es:[edi], dx          
  0x001C45D5  650000                  add      byte ptr gs:[eax], al          
  0x001C45D8  57                      push     edi                            
  0x001C45D9  61                      popal                                   
                                        ; XREF: 0x001C4573 (cond_jump)
  0x001C45DA  726e                    jb       0x1c464a                       
  0x001C45DC  696e673a20756e          imul     ebp, dword ptr [esi + 0x67], 0x6e75203a 
  0x001C45E3  6b6e6f77                imul     ebp, dword ptr [esi + 0x6f], 0x77 
  0x001C45E7  6e                      outsb    dx, byte ptr [esi]             
  0x001C45E8  204a46                  and      byte ptr [edx + 0x46], cl      
  0x001C45EB  49                      dec      ecx                            
                                        ; XREF: 0x001C4575 (cond_jump)
  0x001C45EC  46                      inc      esi                            
  0x001C45ED  207265                  and      byte ptr [edx + 0x65], dh      
  0x001C45F0  7669                    jbe      0x1c465b                       
  0x001C45F2  7369                    jae      0x1c465d                       
  0x001C45F4  6f                      outsd    dx, dword ptr [esi]            
  0x001C45F5  6e                      outsb    dx, byte ptr [esi]             
  0x001C45F6  206e75                  and      byte ptr [esi + 0x75], ch      
  0x001C45F9  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4586 (cond_jump), 0x001C4588 (cond_jump)
  0x001C45FA  626572                  bound    esp, qword ptr [ebp + 0x72]    
  0x001C45FD  2025642e2530            and      byte ptr [0x30252e64], ah      
  0x001C4603  32640000                xor      ah, byte ptr [eax + eax]       
  0x001C4607  00436f                  add      byte ptr [ebx + 0x6f], al      
  0x001C460A  7272                    jb       0x1c467e                       
                                        ; XREF: 0x001C459F (cond_jump)
  0x001C460C  7570                    jne      0x1c467e                       
  0x001C460E  7420                    je       0x1c4630                       
  0x001C4610  4a                      dec      edx                            
  0x001C4611  50                      push     eax                            
  0x001C4612  45                      inc      ebp                            
  0x001C4613  47                      inc      edi                            
  0x001C4614  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C4618  61                      popal                                   
  0x001C4619  3a20                    cmp      ah, byte ptr [eax]             
  0x001C461B  626164                  bound    esp, qword ptr [ecx + 0x64]    
  0x001C461E  204875                  and      byte ptr [eax + 0x75], cl      
  0x001C4621  66666d                  insw     word ptr es:[edi], dx          
  0x001C4624  61                      popal                                   
  0x001C4625  6e                      outsb    dx, byte ptr [esi]             
  0x001C4626  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C4629  646500436f              add      byte ptr gs:[ebx + 0x6f], al   
  0x001C462E  7272                    jb       0x1c46a2                       
                                        ; XREF: 0x001C460E (cond_jump)
  0x001C4630  7570                    jne      0x1c46a2                       
  0x001C4632  7420                    je       0x1c4654                       
  0x001C4634  4a                      dec      edx                            
  0x001C4635  50                      push     eax                            
  0x001C4636  45                      inc      ebp                            
  0x001C4637  47                      inc      edi                            
                                        ; XREF: 0x001C45C1 (cond_jump)
  0x001C4638  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C463C  61                      popal                                   
  0x001C463D  3a20                    cmp      ah, byte ptr [eax]             
  0x001C463F  7072                    jo       0x1c46b3                       
  0x001C4641  656d                    insd     dword ptr es:[edi], dx         
  0x001C4643  61                      popal                                   
  0x001C4644  7475                    je       0x1c46bb                       
  0x001C4646  7265                    jb       0x1c46ad                       
  0x001C4648  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C464B  64206f66                and      byte ptr fs:[edi + 0x66], ch   
  0x001C464F  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C4653  61                      popal                                   
                                        ; XREF: 0x001C4632 (cond_jump)
  0x001C4654  207365                  and      byte ptr [ebx + 0x65], dh      
  0x001C4657  676d                    insd     dword ptr es:[di], dx          
  0x001C4659  656e                    outsb    dx, byte ptr gs:[esi]          
                                        ; XREF: 0x001C45F0 (cond_jump)
  0x001C465B  7400                    je       0x1c465d                       
                                        ; XREF: 0x001C45F2 (cond_jump), 0x001C465B (cond_jump)
  0x001C465D  0000                    add      byte ptr [eax], al             
  0x001C465F  00436f                  add      byte ptr [ebx + 0x6f], al      
  0x001C4662  7272                    jb       0x1c46d6                       
  0x001C4664  7570                    jne      0x1c46d6                       
  0x001C4666  7420                    je       0x1c4688                       
  0x001C4668  4a                      dec      edx                            
  0x001C4669  50                      push     eax                            
  0x001C466A  45                      inc      ebp                            
  0x001C466B  47                      inc      edi                            
  0x001C466C  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C4670  61                      popal                                   
  0x001C4671  3a20                    cmp      ah, byte ptr [eax]             
  0x001C4673  2575206578              and      eax, 0x78652075                
  0x001C4678  7472                    je       0x1c46ec                       
  0x001C467A  61                      popal                                   
  0x001C467B  6e                      outsb    dx, byte ptr [esi]             
  0x001C467C  656f                    outsd    dx, dword ptr gs:[esi]         
                                        ; XREF: 0x001C460A (cond_jump), 0x001C460C (cond_jump)
  0x001C467E  7573                    jne      0x1c46f3                       
  0x001C4680  206279                  and      byte ptr [edx + 0x79], ah      
  0x001C4683  7465                    je       0x1c46ea                       
  0x001C4685  7320                    jae      0x1c46a7                       
  0x001C4687  626566                  bound    esp, qword ptr [ebp + 0x66]    
  0x001C468A  6f                      outsd    dx, dword ptr [esi]            
  0x001C468B  7265                    jb       0x1c46f2                       
  0x001C468D  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C4690  726b                    jb       0x1c46fd                       
  0x001C4692  657220                  jb       0x1c46b5                       
  0x001C4695  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C4698  3032                    xor      byte ptr [edx], dh             
  0x001C469A  7800                    js       0x1c469c                       
                                        ; XREF: 0x001C469A (cond_jump)
  0x001C469C  0000                    add      byte ptr [eax], al             
  0x001C469E  0000                    add      byte ptr [eax], al             
  0x001C46A0  49                      dec      ecx                            
  0x001C46A1  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C462E (cond_jump), 0x001C4630 (cond_jump)
  0x001C46A2  636f6e                  arpl     word ptr [edi + 0x6e], bp      
  0x001C46A5  7369                    jae      0x1c4710                       
                                        ; XREF: 0x001C4685 (cond_jump)
  0x001C46A7  7374                    jae      0x1c471d                       
  0x001C46A9  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C46AB  7420                    je       0x1c46cd                       
                                        ; XREF: 0x001C4646 (cond_jump)
  0x001C46AD  7072                    jo       0x1c4721                       
  0x001C46AF  6f                      outsd    dx, dword ptr [esi]            
  0x001C46B0  677265                  jb       0x1c4718                       
                                        ; XREF: 0x001C463F (cond_jump)
  0x001C46B3  7373                    jae      0x1c4728                       
                                        ; XREF: 0x001C4692 (cond_jump)
  0x001C46B5  696f6e20736571          imul     ebp, dword ptr [edi + 0x6e], 0x71657320 
  0x001C46BC  7565                    jne      0x1c4723                       
  0x001C46BE  6e                      outsb    dx, byte ptr [esi]             
  0x001C46BF  636520                  arpl     word ptr [ebp + 0x20], sp      
  0x001C46C2  666f                    outsw    dx, word ptr [esi]             
  0x001C46C4  7220                    jb       0x1c46e6                       
  0x001C46C6  636f6d                  arpl     word ptr [edi + 0x6d], bp      
  0x001C46C9  706f                    jo       0x1c473a                       
  0x001C46CB  6e                      outsb    dx, byte ptr [esi]             
  0x001C46CC  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C46CE  7420                    je       0x1c46f0                       
  0x001C46D0  256420636f              and      eax, 0x6f632064                
  0x001C46D5  656666696369656e        imul     sp, word ptr gs:[ebx + 0x69], 0x6e65 
  0x001C46DD  7420                    je       0x1c46ff                       
  0x001C46DF  2564000000              and      eax, 0x64                      
  0x001C46E4  55                      push     ebp                            
  0x001C46E5  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C46C4 (cond_jump)
  0x001C46E6  6b6e6f77                imul     ebp, dword ptr [esi + 0x6f], 0x77 
                                        ; XREF: 0x001C4683 (cond_jump)
  0x001C46EA  6e                      outsb    dx, byte ptr [esi]             
  0x001C46EB  204164                  and      byte ptr [ecx + 0x64], al      
  0x001C46EE  6f                      outsd    dx, dword ptr [esi]            
  0x001C46EF  626520                  bound    esp, qword ptr [ebp + 0x20]    
                                        ; XREF: 0x001C468B (cond_jump)
  0x001C46F2  636f6c                  arpl     word ptr [edi + 0x6c], bp      
  0x001C46F5  6f                      outsd    dx, dword ptr [esi]            
  0x001C46F6  7220                    jb       0x1c4718                       
  0x001C46F8  7472                    je       0x1c476c                       
  0x001C46FA  61                      popal                                   
  0x001C46FB  6e                      outsb    dx, byte ptr [esi]             
  0x001C46FC  7366                    jae      0x1c4764                       
  0x001C46FE  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C46DD (cond_jump)
  0x001C46FF  726d                    jb       0x1c476e                       
  0x001C4701  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C4704  6465202564000000        and      byte ptr gs:[0x64], ah         
  0x001C470C  4f                      dec      edi                            
  0x001C470D  62746169                bound    esi, qword ptr [ecx + 0x69]    
  0x001C4711  6e                      outsb    dx, byte ptr [esi]             
  0x001C4712  656420584d              and      byte ptr fs:[eax + 0x4d], bl   
  0x001C4717  53                      push     ebx                            
                                        ; XREF: 0x001C46B0 (cond_jump), 0x001C46F6 (cond_jump)
  0x001C4718  206861                  and      byte ptr [eax + 0x61], ch      
  0x001C471B  6e                      outsb    dx, byte ptr [esi]             
  0x001C471C  646c                    insb     byte ptr es:[edi], dx          
  0x001C471E  65202575000046          and      byte ptr gs:[0x46000075], ah   
  0x001C4725  7265                    jb       0x1c478c                       
  0x001C4727  656420584d              and      byte ptr fs:[eax + 0x4d], bl   
  0x001C472C  53                      push     ebx                            
  0x001C472D  206861                  and      byte ptr [eax + 0x61], ch      
  0x001C4730  6e                      outsb    dx, byte ptr [esi]             
  0x001C4731  646c                    insb     byte ptr es:[edi], dx          
  0x001C4733  6520257500556e          and      byte ptr gs:[0x6e550075], ah   
                                        ; XREF: 0x001C46C9 (cond_jump)
  0x001C473A  7265                    jb       0x1c47a1                       
  0x001C473C  636f67                  arpl     word ptr [edi + 0x67], bp      
  0x001C473F  6e                      outsb    dx, byte ptr [esi]             
  0x001C4740  697a656420636f          imul     edi, dword ptr [edx + 0x65], 0x6f632064 
  0x001C4747  6d                      insd     dword ptr es:[edi], dx         
  0x001C4748  706f                    jo       0x1c47b9                       
  0x001C474A  6e                      outsb    dx, byte ptr [esi]             
  0x001C474B  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C474D  7420                    je       0x1c476f                       
  0x001C474F  49                      dec      ecx                            
  0x001C4750  44                      inc      esp                            
  0x001C4751  7320                    jae      0x1c4773                       
  0x001C4753  2564202564              and      eax, 0x64252064                
  0x001C4758  2025642c2061            and      byte ptr [0x61202c64], ah      
  0x001C475E  7373                    jae      0x1c47d3                       
  0x001C4760  756d                    jne      0x1c47cf                       
  0x001C4762  696e6720594362          imul     ebp, dword ptr [esi + 0x67], 0x62435920 
  0x001C4769  43                      inc      ebx                            
  0x001C476A  7200                    jb       0x1c476c                       
                                        ; XREF: 0x001C46F8 (cond_jump), 0x001C476A (cond_jump)
  0x001C476C  4f                      dec      edi                            
  0x001C476D  7065                    jo       0x1c47d4                       
                                        ; XREF: 0x001C474D (cond_jump)
  0x001C476F  6e                      outsb    dx, byte ptr [esi]             
  0x001C4770  65642074656d            and      byte ptr fs:[ebp + 0x6d], dh   
  0x001C4776  706f                    jo       0x1c47e7                       
  0x001C4778  7261                    jb       0x1c47db                       
  0x001C477A  7279                    jb       0x1c47f5                       
  0x001C477C  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C477F  6c                      insb     byte ptr es:[edi], dx          
  0x001C4780  65202573000000          and      byte ptr gs:[0x73], ah         
  0x001C4787  00436c                  add      byte ptr [ebx + 0x6c], al      
  0x001C478A  6f                      outsd    dx, dword ptr [esi]            
  0x001C478B  7365                    jae      0x1c47f2                       
  0x001C478D  642074656d              and      byte ptr fs:[ebp + 0x6d], dh   
  0x001C4792  706f                    jo       0x1c4803                       
  0x001C4794  7261                    jb       0x1c47f7                       
  0x001C4796  7279                    jb       0x1c4811                       
  0x001C4798  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C479B  6c                      insb     byte ptr es:[edi], dx          
  0x001C479C  65202573000000          and      byte ptr gs:[0x73], ah         
  0x001C47A3  0020                    add      byte ptr [eax], ah             
  0x001C47A5  205373                  and      byte ptr [ebx + 0x73], dl      
  0x001C47A8  3d25642c20              cmp      eax, 0x202c6425                
  0x001C47AD  53                      push     ebx                            
  0x001C47AE  653d25642c20            cmp      eax, 0x202c6425                
  0x001C47B4  41                      inc      ecx                            
  0x001C47B5  683d25642c              push     0x2c64253d                     
  0x001C47BA  20416c                  and      byte ptr [ecx + 0x6c], al      
  0x001C47BD  3d25640000              cmp      eax, 0x6425                    
  0x001C47C2  0000                    add      byte ptr [eax], al             
  0x001C47C4  2020                    and      byte ptr [eax], ah             
  0x001C47C6  2020                    and      byte ptr [eax], ah             
  0x001C47C8  43                      inc      ebx                            
  0x001C47C9  6f                      outsd    dx, dword ptr [esi]            
  0x001C47CA  6d                      insd     dword ptr es:[edi], dx         
  0x001C47CB  706f                    jo       0x1c483c                       
  0x001C47CD  6e                      outsb    dx, byte ptr [esi]             
  0x001C47CE  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C47D0  7420                    je       0x1c47f2                       
  0x001C47D2  25643a2064              and      eax, 0x64203a64                
  0x001C47D7  633d25642061            arpl     word ptr [0x61206425], di      
  0x001C47DD  633d25640000            arpl     word ptr [0x6425], di          
  0x001C47E3  005374                  add      byte ptr [ebx + 0x74], dl      
  0x001C47E6  61                      popal                                   
                                        ; XREF: 0x001C4776 (cond_jump)
  0x001C47E7  7274                    jb       0x1c485d                       
  0x001C47E9  204f66                  and      byte ptr [edi + 0x66], cl      
  0x001C47EC  205363                  and      byte ptr [ebx + 0x63], dl      
  0x001C47EF  61                      popal                                   
  0x001C47F0  6e                      outsb    dx, byte ptr [esi]             
  0x001C47F1  3a20                    cmp      ah, byte ptr [eax]             
  0x001C47F3  256420636f              and      eax, 0x6f632064                
  0x001C47F8  6d                      insd     dword ptr es:[edi], dx         
  0x001C47F9  706f                    jo       0x1c486a                       
  0x001C47FB  6e                      outsb    dx, byte ptr [esi]             
  0x001C47FC  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C47FE  7473                    je       0x1c4873                       
  0x001C4800  0000                    add      byte ptr [eax], al             
  0x001C4802  0000                    add      byte ptr [eax], al             
  0x001C4804  53                      push     ebx                            
  0x001C4805  7461                    je       0x1c4868                       
  0x001C4807  7274                    jb       0x1c487d                       
  0x001C4809  206f66                  and      byte ptr [edi + 0x66], ch      
  0x001C480C  20496d                  and      byte ptr [ecx + 0x6d], cl      
  0x001C480F  61                      popal                                   
  0x001C4810  67650000                add      byte ptr gs:[bx + si], al      
  0x001C4814  2020                    and      byte ptr [eax], ah             
  0x001C4816  2020                    and      byte ptr [eax], ah             
  0x001C4818  43                      inc      ebx                            
  0x001C4819  6f                      outsd    dx, dword ptr [esi]            
  0x001C481A  6d                      insd     dword ptr es:[edi], dx         
  0x001C481B  706f                    jo       0x1c488c                       
  0x001C481D  6e                      outsb    dx, byte ptr [esi]             
  0x001C481E  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4820  7420                    je       0x1c4842                       
  0x001C4822  25643a2025              and      eax, 0x25203a64                
  0x001C4827  646878256476            push     0x76642578                     
  0x001C482D  20713d                  and      byte ptr [ecx + 0x3d], dh      
  0x001C4830  2564000053              and      eax, 0x53000064                
  0x001C4835  7461                    je       0x1c4898                       
  0x001C4837  7274                    jb       0x1c48ad                       
  0x001C4839  204f66                  and      byte ptr [edi + 0x66], cl      
                                        ; XREF: 0x001C47CB (cond_jump)
  0x001C483C  204672                  and      byte ptr [esi + 0x72], al      
  0x001C483F  61                      popal                                   
  0x001C4840  6d                      insd     dword ptr es:[edi], dx         
  0x001C4841  652030                  and      byte ptr gs:[eax], dh          
  0x001C4844  7825                    js       0x1c486b                       
  0x001C4846  3032                    xor      byte ptr [edx], dh             
  0x001C4848  783a                    js       0x1c4884                       
  0x001C484A  207769                  and      byte ptr [edi + 0x69], dh      
  0x001C484D  647468                  je       0x1c48b8                       
  0x001C4850  3d25752c20              cmp      eax, 0x202c7525                
  0x001C4855  6865696768              push     0x68676965                     
  0x001C485A  743d                    je       0x1c4899                       
  0x001C485C  25752c2063              and      eax, 0x63202c75                
  0x001C4861  6f                      outsd    dx, dword ptr [esi]            
  0x001C4862  6d                      insd     dword ptr es:[edi], dx         
  0x001C4863  706f                    jo       0x1c48d4                       
  0x001C4865  6e                      outsb    dx, byte ptr [esi]             
  0x001C4866  656e                    outsb    dx, byte ptr gs:[esi]          
                                        ; XREF: 0x001C4805 (cond_jump)
  0x001C4868  7473                    je       0x1c48dd                       
                                        ; XREF: 0x001C47F9 (cond_jump)
  0x001C486A  3d25640000              cmp      eax, 0x6425                    
  0x001C486F  00536d                  add      byte ptr [ebx + 0x6d], dl      
  0x001C4872  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C47FE (cond_jump)
  0x001C4873  6f                      outsd    dx, dword ptr [esi]            
  0x001C4874  7468                    je       0x1c48de                       
  0x001C4876  696e67206e6f74          imul     ebp, dword ptr [esi + 0x67], 0x746f6e20 
                                        ; XREF: 0x001C4807 (cond_jump)
  0x001C487D  207375                  and      byte ptr [ebx + 0x75], dh      
  0x001C4880  7070                    jo       0x1c48f2                       
  0x001C4882  6f                      outsd    dx, dword ptr [esi]            
  0x001C4883  7274                    jb       0x1c48f9                       
  0x001C4885  6564207769              and      byte ptr fs:[edi + 0x69], dh   
  0x001C488A  7468                    je       0x1c48f4                       
                                        ; XREF: 0x001C481B (cond_jump)
  0x001C488C  206e6f                  and      byte ptr [esi + 0x6f], ch      
  0x001C488F  6e                      outsb    dx, byte ptr [esi]             
  0x001C4890  7374                    jae      0x1c4906                       
  0x001C4892  61                      popal                                   
  0x001C4893  6e                      outsb    dx, byte ptr [esi]             
  0x001C4894  6461                    popal                                   
  0x001C4896  7264                    jb       0x1c48fc                       
                                        ; XREF: 0x001C4835 (cond_jump)
  0x001C4898  207361                  and      byte ptr [ebx + 0x61], dh      
  0x001C489B  6d                      insd     dword ptr es:[edi], dx         
  0x001C489C  706c                    jo       0x1c490a                       
  0x001C489E  696e6720726174          imul     ebp, dword ptr [esi + 0x67], 0x74617220 
  0x001C48A5  696f7300000000          imul     ebp, dword ptr [edi + 0x73], 0 
  0x001C48AC  52                      push     edx                            
                                        ; XREF: 0x001C4837 (cond_jump)
  0x001C48AD  53                      push     ebx                            
  0x001C48AE  54                      push     esp                            
  0x001C48AF  2564000000              and      eax, 0x64                      
  0x001C48B4  41                      inc      ecx                            
  0x001C48B5  7420                    je       0x1c48d7                       
  0x001C48B7  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C484D (cond_jump)
  0x001C48B8  61                      popal                                   
  0x001C48B9  726b                    jb       0x1c4926                       
  0x001C48BB  657220                  jb       0x1c48de                       
  0x001C48BE  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C48C1  3032                    xor      byte ptr [edx], dh             
  0x001C48C3  782c                    js       0x1c48f1                       
  0x001C48C5  207265                  and      byte ptr [edx + 0x65], dh      
  0x001C48C8  636f76                  arpl     word ptr [edi + 0x76], bp      
  0x001C48CB  657279                  jb       0x1c4947                       
  0x001C48CE  206163                  and      byte ptr [ecx + 0x63], ah      
  0x001C48D1  7469                    je       0x1c493c                       
  0x001C48D3  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C4863 (cond_jump)
  0x001C48D4  6e                      outsb    dx, byte ptr [esi]             
  0x001C48D5  202564000000            and      byte ptr [0x64], ah            
  0x001C48DB  005365                  add      byte ptr [ebx + 0x65], dl      
                                        ; XREF: 0x001C4874 (cond_jump), 0x001C48BB (cond_jump)
  0x001C48DE  6c                      insb     byte ptr es:[edi], dx          
  0x001C48DF  6563746564              arpl     word ptr gs:[ebp + 0x64], si   
  0x001C48E4  20256420636f            and      byte ptr [0x6f632064], ah      
  0x001C48EA  6c                      insb     byte ptr es:[edi], dx          
  0x001C48EB  6f                      outsd    dx, dword ptr [esi]            
  0x001C48EC  7273                    jb       0x1c4961                       
  0x001C48EE  20666f                  and      byte ptr [esi + 0x6f], ah      
                                        ; XREF: 0x001C48C3 (cond_jump)
  0x001C48F1  7220                    jb       0x1c4913                       
  0x001C48F3  7175                    jno      0x1c496a                       
  0x001C48F5  61                      popal                                   
  0x001C48F6  6e                      outsb    dx, byte ptr [esi]             
  0x001C48F7  7469                    je       0x1c4962                       
                                        ; XREF: 0x001C4883 (cond_jump)
  0x001C48F9  7a61                    jp       0x1c495c                       
  0x001C48FB  7469                    je       0x1c4966                       
  0x001C48FD  6f                      outsd    dx, dword ptr [esi]            
  0x001C48FE  6e                      outsb    dx, byte ptr [esi]             
  0x001C48FF  005175                  add      byte ptr [ecx + 0x75], dl      
  0x001C4902  61                      popal                                   
  0x001C4903  6e                      outsb    dx, byte ptr [esi]             
  0x001C4904  7469                    je       0x1c496f                       
                                        ; XREF: 0x001C4890 (cond_jump)
  0x001C4906  7a69                    jp       0x1c4971                       
  0x001C4908  6e                      outsb    dx, byte ptr [esi]             
  0x001C4909  6720746f                and      byte ptr [si + 0x6f], dh       
  0x001C490D  20256420636f            and      byte ptr [0x6f632064], ah      
                                        ; XREF: 0x001C48F1 (cond_jump)
  0x001C4913  6c                      insb     byte ptr es:[edi], dx          
  0x001C4914  6f                      outsd    dx, dword ptr [esi]            
  0x001C4915  7273                    jb       0x1c498a                       
  0x001C4917  005175                  add      byte ptr [ecx + 0x75], dl      
  0x001C491A  61                      popal                                   
  0x001C491B  6e                      outsb    dx, byte ptr [esi]             
  0x001C491C  7469                    je       0x1c4987                       
  0x001C491E  7a69                    jp       0x1c4989                       
  0x001C4920  6e                      outsb    dx, byte ptr [esi]             
  0x001C4921  6720746f                and      byte ptr [si + 0x6f], dh       
  0x001C4925  202564203d20            and      byte ptr [0x203d2064], ah      
  0x001C492B  25642a2564              and      eax, 0x64252a64                
  0x001C4930  2a256420636f            sub      ah, byte ptr [0x6f632064]      
  0x001C4936  6c                      insb     byte ptr es:[edi], dx          
  0x001C4937  6f                      outsd    dx, dword ptr [esi]            
  0x001C4938  7273                    jb       0x1c49ad                       
  0x001C493A  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C48D1 (cond_jump)
  0x001C493C  2020                    and      byte ptr [eax], ah             
  0x001C493E  2020                    and      byte ptr [eax], ah             
  0x001C4940  2020                    and      byte ptr [eax], ah             
  0x001C4942  2020                    and      byte ptr [eax], ah             
  0x001C4944  2534752025              and      eax, 0x25207534                
  0x001C4949  3475                    xor      al, 0x75                       
  0x001C494B  202534752025            and      byte ptr [0x25207534], ah      
  0x001C4951  3475                    xor      al, 0x75                       
  0x001C4953  202534752025            and      byte ptr [0x25207534], ah      
  0x001C4959  3475                    xor      al, 0x75                       
  0x001C495B  202534752025            and      byte ptr [0x25207534], ah      
                                        ; XREF: 0x001C48EC (cond_jump)
  0x001C4961  3475                    xor      al, 0x75                       
  0x001C4963  00556e                  add      byte ptr [ebp + 0x6e], dl      
                                        ; XREF: 0x001C48FB (cond_jump)
  0x001C4966  657870                  js       0x1c49d9                       
  0x001C4969  6563746564              arpl     word ptr gs:[ebp + 0x64], si   
  0x001C496E  206d61                  and      byte ptr [ebp + 0x61], ch      
                                        ; XREF: 0x001C4906 (cond_jump)
  0x001C4971  726b                    jb       0x1c49de                       
  0x001C4973  657220                  jb       0x1c4996                       
  0x001C4976  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C4979  3032                    xor      byte ptr [edx], dh             
  0x001C497B  7800                    js       0x1c497d                       
                                        ; XREF: 0x001C497B (cond_jump)
  0x001C497D  0000                    add      byte ptr [eax], al             
  0x001C497F  00536b                  add      byte ptr [ebx + 0x6b], dl      
  0x001C4982  697070696e6720          imul     esi, dword ptr [eax + 0x70], 0x20676e69 
                                        ; XREF: 0x001C491E (cond_jump)
  0x001C4989  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4915 (cond_jump)
  0x001C498A  61                      popal                                   
  0x001C498B  726b                    jb       0x1c49f8                       
  0x001C498D  657220                  jb       0x1c49b0                       
  0x001C4990  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C4993  3032                    xor      byte ptr [edx], dh             
  0x001C4995  782c                    js       0x1c49c3                       
  0x001C4997  206c656e                and      byte ptr [ebp + 0x6e], ch      
  0x001C499B  677468                  je       0x1c4a06                       
  0x001C499E  202575000000            and      byte ptr [0x75], ah            
  0x001C49A4  2020                    and      byte ptr [eax], ah             
  0x001C49A6  2020                    and      byte ptr [eax], ah             
  0x001C49A8  7769                    ja       0x1c4a13                       
  0x001C49AA  7468                    je       0x1c4a14                       
  0x001C49AC  202564207820            and      byte ptr [0x20782064], ah      
  0x001C49B2  2564207468              and      eax, 0x68742064                
  0x001C49B7  756d                    jne      0x1c4a26                       
  0x001C49B9  626e61                  bound    ebp, qword ptr [esi + 0x61]    
  0x001C49BC  696c20696d616765        imul     ebp, dword ptr [eax + 0x69], 0x6567616d 
  0x001C49C4  0000                    add      byte ptr [eax], al             
  0x001C49C6  0000                    add      byte ptr [eax], al             
  0x001C49C8  55                      push     ebp                            
  0x001C49C9  6e                      outsb    dx, byte ptr [esi]             
  0x001C49CA  6b6e6f77                imul     ebp, dword ptr [esi + 0x6f], 0x77 
  0x001C49CE  6e                      outsb    dx, byte ptr [esi]             
  0x001C49CF  204a46                  and      byte ptr [edx + 0x46], cl      
  0x001C49D2  49                      dec      ecx                            
  0x001C49D3  46                      inc      esi                            
  0x001C49D4  206d69                  and      byte ptr [ebp + 0x69], ch      
  0x001C49D7  6e                      outsb    dx, byte ptr [esi]             
  0x001C49D8  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C4966 (cond_jump)
  0x001C49D9  7220                    jb       0x1c49fb                       
  0x001C49DB  7265                    jb       0x1c4a42                       
  0x001C49DD  7669                    jbe      0x1c4a48                       
  0x001C49DF  7369                    jae      0x1c4a4a                       
  0x001C49E1  6f                      outsd    dx, dword ptr [esi]            
  0x001C49E2  6e                      outsb    dx, byte ptr [esi]             
  0x001C49E3  206e75                  and      byte ptr [esi + 0x75], ch      
  0x001C49E6  6d                      insd     dword ptr es:[edi], dx         
  0x001C49E7  626572                  bound    esp, qword ptr [ebp + 0x72]    
  0x001C49EA  2025642e2530            and      byte ptr [0x30252e64], ah      
  0x001C49F0  32640000                xor      ah, byte ptr [eax + eax]       
  0x001C49F4  57                      push     edi                            
  0x001C49F5  61                      popal                                   
  0x001C49F6  726e                    jb       0x1c4a66                       
                                        ; XREF: 0x001C498B (cond_jump)
  0x001C49F8  696e673a207468          imul     ebp, dword ptr [esi + 0x67], 0x6874203a 
  0x001C49FF  756d                    jne      0x1c4a6e                       
  0x001C4A01  626e61                  bound    ebp, qword ptr [esi + 0x61]    
  0x001C4A04  696c20696d616765        imul     ebp, dword ptr [eax + 0x69], 0x6567616d 
  0x001C4A0C  207369                  and      byte ptr [ebx + 0x69], dh      
  0x001C4A0F  7a65                    jp       0x1c4a76                       
  0x001C4A11  20646f65                and      byte ptr [edi + ebp*2 + 0x65], ah 
  0x001C4A15  7320                    jae      0x1c4a37                       
  0x001C4A17  6e                      outsb    dx, byte ptr [esi]             
  0x001C4A18  6f                      outsd    dx, dword ptr [esi]            
  0x001C4A19  7420                    je       0x1c4a3b                       
  0x001C4A1B  6d                      insd     dword ptr es:[edi], dx         
  0x001C4A1C  61                      popal                                   
  0x001C4A1D  7463                    je       0x1c4a82                       
  0x001C4A1F  6820646174              push     0x74616420                     
  0x001C4A24  61                      popal                                   
  0x001C4A25  206c656e                and      byte ptr [ebp + 0x6e], ch      
  0x001C4A29  677468                  je       0x1c4a94                       
  0x001C4A2C  202575004a46            and      byte ptr [0x464a0075], ah      
  0x001C4A32  49                      dec      ecx                            
  0x001C4A33  46                      inc      esi                            
  0x001C4A34  204150                  and      byte ptr [ecx + 0x50], al      
                                        ; XREF: 0x001C4A15 (cond_jump)
  0x001C4A37  50                      push     eax                            
  0x001C4A38  3020                    xor      byte ptr [eax], ah             
  0x001C4A3A  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4A19 (cond_jump)
  0x001C4A3B  61                      popal                                   
  0x001C4A3C  726b                    jb       0x1c4aa9                       
  0x001C4A3E  65722c                  jb       0x1c4a6d                       
  0x001C4A41  2064656e                and      byte ptr [ebp + 0x6e], ah      
  0x001C4A45  7369                    jae      0x1c4ab0                       
  0x001C4A47  7479                    je       0x1c4ac2                       
  0x001C4A49  202564782564            and      byte ptr [0x64257864], ah      
  0x001C4A4F  2020                    and      byte ptr [eax], ah             
  0x001C4A51  2564002020              and      eax, 0x20200064                
  0x001C4A56  2020                    and      byte ptr [eax], ah             
  0x001C4A58  2020                    and      byte ptr [eax], ah             
  0x001C4A5A  2020                    and      byte ptr [eax], ah             
  0x001C4A5C  2533642025              and      eax, 0x25206433                
  0x001C4A61  33642025                xor      esp, dword ptr [eax + 0x25]    
  0x001C4A65  33642025                xor      esp, dword ptr [eax + 0x25]    
  0x001C4A69  33642025                xor      esp, dword ptr [eax + 0x25]    
                                        ; XREF: 0x001C4A3E (cond_jump)
  0x001C4A6D  33642025                xor      esp, dword ptr [eax + 0x25]    
  0x001C4A71  33642025                xor      esp, dword ptr [eax + 0x25]    
  0x001C4A75  33642025                xor      esp, dword ptr [eax + 0x25]    
  0x001C4A79  33640045                xor      esp, dword ptr [eax + eax + 0x45] 
  0x001C4A7D  6e                      outsb    dx, byte ptr [esi]             
  0x001C4A7E  64204f66                and      byte ptr fs:[edi + 0x66], cl   
                                        ; XREF: 0x001C4A1D (cond_jump)
  0x001C4A82  20496d                  and      byte ptr [ecx + 0x6d], cl      
  0x001C4A85  61                      popal                                   
  0x001C4A86  67650000                add      byte ptr gs:[bx + si], al      
  0x001C4A8A  0000                    add      byte ptr [eax], al             
  0x001C4A8C  4f                      dec      edi                            
  0x001C4A8D  62746169                bound    esi, qword ptr [ecx + 0x69]    
  0x001C4A91  6e                      outsb    dx, byte ptr [esi]             
  0x001C4A92  656420454d              and      byte ptr fs:[ebp + 0x4d], al   
  0x001C4A97  53                      push     ebx                            
  0x001C4A98  206861                  and      byte ptr [eax + 0x61], ch      
  0x001C4A9B  6e                      outsb    dx, byte ptr [esi]             
  0x001C4A9C  646c                    insb     byte ptr es:[edi], dx          
  0x001C4A9E  65202575000046          and      byte ptr gs:[0x46000075], ah   
  0x001C4AA5  7265                    jb       0x1c4b0c                       
  0x001C4AA7  656420454d              and      byte ptr fs:[ebp + 0x4d], al   
  0x001C4AAC  53                      push     ebx                            
  0x001C4AAD  206861                  and      byte ptr [eax + 0x61], ch      
                                        ; XREF: 0x001C4A45 (cond_jump)
  0x001C4AB0  6e                      outsb    dx, byte ptr [esi]             
  0x001C4AB1  646c                    insb     byte ptr es:[edi], dx          
  0x001C4AB3  65202575004465          and      byte ptr gs:[0x65440075], ah   
  0x001C4ABA  66696e652052            imul     bp, word ptr [esi + 0x65], 0x5220 
  0x001C4AC0  657374                  jae      0x1c4b37                       
  0x001C4AC3  61                      popal                                   
  0x001C4AC4  7274                    jb       0x1c4b3a                       
  0x001C4AC6  20496e                  and      byte ptr [ecx + 0x6e], cl      
  0x001C4AC9  7465                    je       0x1c4b30                       
  0x001C4ACB  7276                    jb       0x1c4b43                       
  0x001C4ACD  61                      popal                                   
  0x001C4ACE  6c                      insb     byte ptr es:[edi], dx          
  0x001C4ACF  202575000044            and      byte ptr [0x44000075], ah      
  0x001C4AD5  6566696e652051          imul     bp, word ptr gs:[esi + 0x65], 0x5120 
  0x001C4ADC  7561                    jne      0x1c4b3f                       
  0x001C4ADE  6e                      outsb    dx, byte ptr [esi]             
  0x001C4ADF  7469                    je       0x1c4b4a                       
  0x001C4AE1  7a61                    jp       0x1c4b44                       
  0x001C4AE3  7469                    je       0x1c4b4e                       
  0x001C4AE5  6f                      outsd    dx, dword ptr [esi]            
  0x001C4AE6  6e                      outsb    dx, byte ptr [esi]             
  0x001C4AE7  20546162                and      byte ptr [ecx + 0x62], dl      
  0x001C4AEB  6c                      insb     byte ptr es:[edi], dx          
  0x001C4AEC  65202564202070          and      byte ptr gs:[0x70202064], ah   
  0x001C4AF3  7265                    jb       0x1c4b5a                       
  0x001C4AF5  636973                  arpl     word ptr [ecx + 0x73], bp      
  0x001C4AF8  696f6e20256400          imul     ebp, dword ptr [edi + 0x6e], 0x642520 
  0x001C4AFF  00446566                add      byte ptr [ebp + 0x66], al      
  0x001C4B03  696e6520487566          imul     ebp, dword ptr [esi + 0x65], 0x66754820 
  0x001C4B0A  666d                    insw     word ptr es:[edi], dx          
                                        ; XREF: 0x001C4AA5 (cond_jump)
  0x001C4B0C  61                      popal                                   
  0x001C4B0D  6e                      outsb    dx, byte ptr [esi]             
  0x001C4B0E  20546162                and      byte ptr [ecx + 0x62], dl      
  0x001C4B12  6c                      insb     byte ptr es:[edi], dx          
  0x001C4B13  652030                  and      byte ptr gs:[eax], dh          
  0x001C4B16  7825                    js       0x1c4b3d                       
  0x001C4B18  3032                    xor      byte ptr [edx], dh             
  0x001C4B1A  7800                    js       0x1c4b1c                       
                                        ; XREF: 0x001C4B1A (cond_jump)
  0x001C4B1C  44                      inc      esp                            
  0x001C4B1D  6566696e652041          imul     bp, word ptr gs:[esi + 0x65], 0x4120 
  0x001C4B24  7269                    jb       0x1c4b8f                       
  0x001C4B26  7468                    je       0x1c4b90                       
  0x001C4B28  6d                      insd     dword ptr es:[edi], dx         
  0x001C4B29  657469                  je       0x1c4b95                       
  0x001C4B2C  6320                    arpl     word ptr [eax], sp             
  0x001C4B2E  54                      push     esp                            
  0x001C4B2F  61                      popal                                   
                                        ; XREF: 0x001C4AC9 (cond_jump)
  0x001C4B30  626c6520                bound    ebp, qword ptr [ebp + 0x20]    
  0x001C4B34  307825                  xor      byte ptr [eax + 0x25], bh      
                                        ; XREF: 0x001C4AC0 (cond_jump)
  0x001C4B37  3032                    xor      byte ptr [edx], dh             
  0x001C4B39  783a                    js       0x1c4b75                       
  0x001C4B3B  2030                    and      byte ptr [eax], dh             
                                        ; XREF: 0x001C4B16 (cond_jump)
  0x001C4B3D  7825                    js       0x1c4b64                       
                                        ; XREF: 0x001C4ADC (cond_jump)
  0x001C4B3F  3032                    xor      byte ptr [edx], dh             
  0x001C4B41  7800                    js       0x1c4b43                       
                                        ; XREF: 0x001C4ACB (cond_jump), 0x001C4B41 (cond_jump)
  0x001C4B43  00556e                  add      byte ptr [ebp + 0x6e], dl      
  0x001C4B46  6b6e6f77                imul     ebp, dword ptr [esi + 0x6f], 0x77 
                                        ; XREF: 0x001C4ADF (cond_jump)
  0x001C4B4A  6e                      outsb    dx, byte ptr [esi]             
  0x001C4B4B  204150                  and      byte ptr [ecx + 0x50], al      
                                        ; XREF: 0x001C4AE3 (cond_jump)
  0x001C4B4E  50                      push     eax                            
  0x001C4B4F  313420                  xor      dword ptr [eax], esi           
  0x001C4B52  6d                      insd     dword ptr es:[edi], dx         
  0x001C4B53  61                      popal                                   
  0x001C4B54  726b                    jb       0x1c4bc1                       
  0x001C4B56  657220                  jb       0x1c4b79                       
  0x001C4B59  286e6f                  sub      byte ptr [esi + 0x6f], ch      
  0x001C4B5C  7420                    je       0x1c4b7e                       
  0x001C4B5E  41                      inc      ecx                            
  0x001C4B5F  646f                    outsd    dx, dword ptr fs:[esi]         
  0x001C4B61  626529                  bound    esp, qword ptr [ebp + 0x29]    
                                        ; XREF: 0x001C4B3D (cond_jump)
  0x001C4B64  2c20                    sub      al, 0x20                       
  0x001C4B66  6c                      insb     byte ptr es:[edi], dx          
  0x001C4B67  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4B69  677468                  je       0x1c4bd4                       
  0x001C4B6C  20257500556e            and      byte ptr [0x6e550075], ah      
  0x001C4B72  6b6e6f77                imul     ebp, dword ptr [esi + 0x6f], 0x77 
  0x001C4B76  6e                      outsb    dx, byte ptr [esi]             
  0x001C4B77  204150                  and      byte ptr [ecx + 0x50], al      
  0x001C4B7A  50                      push     eax                            
  0x001C4B7B  3020                    xor      byte ptr [eax], ah             
  0x001C4B7D  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4B5C (cond_jump)
  0x001C4B7E  61                      popal                                   
  0x001C4B7F  726b                    jb       0x1c4bec                       
  0x001C4B81  657220                  jb       0x1c4ba4                       
  0x001C4B84  286e6f                  sub      byte ptr [esi + 0x6f], ch      
  0x001C4B87  7420                    je       0x1c4ba9                       
  0x001C4B89  4a                      dec      edx                            
  0x001C4B8A  46                      inc      esi                            
  0x001C4B8B  49                      dec      ecx                            
  0x001C4B8C  46                      inc      esi                            
  0x001C4B8D  292c20                  sub      dword ptr [eax], ebp           
                                        ; XREF: 0x001C4B26 (cond_jump)
  0x001C4B90  6c                      insb     byte ptr es:[edi], dx          
  0x001C4B91  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4B93  677468                  je       0x1c4bfe                       
  0x001C4B96  202575000000            and      byte ptr [0x75], ah            
  0x001C4B9C  0000                    add      byte ptr [eax], al             
  0x001C4B9E  0000                    add      byte ptr [eax], al             
  0x001C4BA0  41                      inc      ecx                            
  0x001C4BA1  646f                    outsd    dx, dword ptr fs:[esi]         
  0x001C4BA3  626520                  bound    esp, qword ptr [ebp + 0x20]    
  0x001C4BA6  41                      inc      ecx                            
  0x001C4BA7  50                      push     eax                            
  0x001C4BA8  50                      push     eax                            
                                        ; XREF: 0x001C4B87 (cond_jump)
  0x001C4BA9  313420                  xor      dword ptr [eax], esi           
  0x001C4BAC  6d                      insd     dword ptr es:[edi], dx         
  0x001C4BAD  61                      popal                                   
  0x001C4BAE  726b                    jb       0x1c4c1b                       
  0x001C4BB0  65723a                  jb       0x1c4bed                       
  0x001C4BB3  207665                  and      byte ptr [esi + 0x65], dh      
  0x001C4BB6  7273                    jb       0x1c4c2b                       
  0x001C4BB8  696f6e2025642c          imul     ebp, dword ptr [edi + 0x6e], 0x2c642520 
  0x001C4BBF  20666c                  and      byte ptr [esi + 0x6c], ah      
  0x001C4BC2  61                      popal                                   
  0x001C4BC3  677320                  jae      0x1c4be6                       
  0x001C4BC6  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C4BC9  303478                  xor      byte ptr [eax + edi*2], dh     
  0x001C4BCC  2030                    and      byte ptr [eax], dh             
  0x001C4BCE  7825                    js       0x1c4bf5                       
  0x001C4BD0  303478                  xor      byte ptr [eax + edi*2], dh     
  0x001C4BD3  2c20                    sub      al, 0x20                       
  0x001C4BD5  7472                    je       0x1c4c49                       
  0x001C4BD7  61                      popal                                   
  0x001C4BD8  6e                      outsb    dx, byte ptr [esi]             
  0x001C4BD9  7366                    jae      0x1c4c41                       
  0x001C4BDB  6f                      outsd    dx, dword ptr [esi]            
  0x001C4BDC  726d                    jb       0x1c4c4b                       
  0x001C4BDE  202564000000            and      byte ptr [0x64], ah            
  0x001C4BE4  43                      inc      ebx                            
  0x001C4BE5  61                      popal                                   
                                        ; XREF: 0x001C4BC3 (cond_jump)
  0x001C4BE6  7574                    jne      0x1c4c5c                       
  0x001C4BE8  696f6e3a207175          imul     ebp, dword ptr [edi + 0x6e], 0x7571203a 
  0x001C4BEF  61                      popal                                   
  0x001C4BF0  6e                      outsb    dx, byte ptr [esi]             
  0x001C4BF1  7469                    je       0x1c4c5c                       
  0x001C4BF3  7a61                    jp       0x1c4c56                       
                                        ; XREF: 0x001C4BCE (cond_jump)
  0x001C4BF5  7469                    je       0x1c4c60                       
  0x001C4BF7  6f                      outsd    dx, dword ptr [esi]            
  0x001C4BF8  6e                      outsb    dx, byte ptr [esi]             
  0x001C4BF9  20746162                and      byte ptr [ecx + 0x62], dh      
  0x001C4BFD  6c                      insb     byte ptr es:[edi], dx          
                                        ; XREF: 0x001C4B93 (cond_jump)
  0x001C4BFE  657320                  jae      0x1c4c21                       
  0x001C4C01  61                      popal                                   
  0x001C4C02  7265                    jb       0x1c4c69                       
  0x001C4C04  20746f6f                and      byte ptr [edi + ebp*2 + 0x6f], dh 
  0x001C4C08  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C4C0B  61                      popal                                   
  0x001C4C0C  7273                    jb       0x1c4c81                       
  0x001C4C0E  6520666f                and      byte ptr gs:[esi + 0x6f], ah   
  0x001C4C12  7220                    jb       0x1c4c34                       
  0x001C4C14  626173                  bound    esp, qword ptr [ecx + 0x73]    
  0x001C4C17  656c                    insb     byte ptr es:[edi], dx          
  0x001C4C19  696e65204a5045          imul     ebp, dword ptr [esi + 0x65], 0x45504a20 
  0x001C4C20  47                      inc      edi                            
                                        ; XREF: 0x001C4BFE (cond_jump)
  0x001C4C21  0000                    add      byte ptr [eax], al             
  0x001C4C23  0036                    add      byte ptr [esi], dh             
  0x001C4C25  61                      popal                                   
  0x001C4C26  2020                    and      byte ptr [eax], ah             
  0x001C4C28  37                      aaa                                     
  0x001C4C29  2d4665622d              sub      eax, 0x2d626546                
  0x001C4C2E  3936                    cmp      dword ptr [esi], esi           
  0x001C4C30  0000                    add      byte ptr [eax], al             
  0x001C4C32  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C4C12 (cond_jump)
  0x001C4C34  43                      inc      ebx                            
  0x001C4C35  6f                      outsd    dx, dword ptr [esi]            
  0x001C4C36  7079                    jo       0x1c4cb1                       
  0x001C4C38  7269                    jb       0x1c4ca3                       
  0x001C4C3A  676874202843            push     0x43282074                     
  0x001C4C40  2920                    sub      dword ptr [eax], esp           
  0x001C4C42  3139                    xor      dword ptr [ecx], edi           
  0x001C4C44  3936                    cmp      dword ptr [esi], esi           
  0x001C4C46  2c20                    sub      al, 0x20                       
  0x001C4C48  54                      push     esp                            
                                        ; XREF: 0x001C4BD5 (cond_jump)
  0x001C4C49  686f6d6173              push     0x73616d6f                     
  0x001C4C4E  20472e                  and      byte ptr [edi + 0x2e], al      
  0x001C4C51  204c616e                and      byte ptr [ecx + 0x6e], cl      
  0x001C4C55  650000                  add      byte ptr gs:[eax], al          
  0x001C4C58  57                      push     edi                            
  0x001C4C59  7269                    jb       0x1c4cc4                       
  0x001C4C5B  7465                    je       0x1c4cc2                       
  0x001C4C5D  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C4C61  58                      pop      eax                            
  0x001C4C62  4d                      dec      ebp                            
  0x001C4C63  53                      push     ebx                            
  0x001C4C64  206661                  and      byte ptr [esi + 0x61], ah      
  0x001C4C67  696c656400526561        imul     ebp, dword ptr [ebp + 0x64], 0x61655200 
  0x001C4C6F  64206672                and      byte ptr fs:[esi + 0x72], ah   
  0x001C4C73  6f                      outsd    dx, dword ptr [esi]            
  0x001C4C74  6d                      insd     dword ptr es:[edi], dx         
  0x001C4C75  20584d                  and      byte ptr [eax + 0x4d], bl      
  0x001C4C78  53                      push     ebx                            
  0x001C4C79  206661                  and      byte ptr [esi + 0x61], ah      
  0x001C4C7C  696c656400000000        imul     ebp, dword ptr [ebp + 0x64], 0 
  0x001C4C84  49                      dec      ecx                            
  0x001C4C85  6d                      insd     dword ptr es:[edi], dx         
  0x001C4C86  61                      popal                                   
  0x001C4C87  676520746f              and      byte ptr gs:[si + 0x6f], dh    
  0x001C4C8C  6f                      outsd    dx, dword ptr [esi]            
  0x001C4C8D  207769                  and      byte ptr [edi + 0x69], dh      
  0x001C4C90  646520666f              and      byte ptr gs:[esi + 0x6f], ah   
  0x001C4C95  7220                    jb       0x1c4cb7                       
  0x001C4C97  7468                    je       0x1c4d01                       
  0x001C4C99  697320696d706c          imul     esi, dword ptr [ebx + 0x20], 0x6c706d69 
  0x001C4CA0  656d                    insd     dword ptr es:[edi], dx         
  0x001C4CA2  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4CA4  7461                    je       0x1c4d07                       
  0x001C4CA6  7469                    je       0x1c4d11                       
  0x001C4CA8  6f                      outsd    dx, dword ptr [esi]            
  0x001C4CA9  6e                      outsb    dx, byte ptr [esi]             
  0x001C4CAA  0000                    add      byte ptr [eax], al             
  0x001C4CAC  56                      push     esi                            
  0x001C4CAD  69727475616c20          imul     esi, dword ptr [edx + 0x74], 0x206c6175 
  0x001C4CB4  61                      popal                                   
  0x001C4CB5  7272                    jb       0x1c4d29                       
                                        ; XREF: 0x001C4C95 (cond_jump)
  0x001C4CB7  61                      popal                                   
  0x001C4CB8  7920                    jns      0x1c4cda                       
  0x001C4CBA  636f6e                  arpl     word ptr [edi + 0x6e], bp      
  0x001C4CBD  7472                    je       0x1c4d31                       
  0x001C4CBF  6f                      outsd    dx, dword ptr [esi]            
  0x001C4CC0  6c                      insb     byte ptr es:[edi], dx          
  0x001C4CC1  6c                      insb     byte ptr es:[edi], dx          
                                        ; XREF: 0x001C4C5B (cond_jump)
  0x001C4CC2  657220                  jb       0x1c4ce5                       
  0x001C4CC5  6d                      insd     dword ptr es:[edi], dx         
  0x001C4CC6  657373                  jae      0x1c4d3c                       
  0x001C4CC9  6564207570              and      byte ptr fs:[ebp + 0x70], dh   
  0x001C4CCE  0000                    add      byte ptr [eax], al             
  0x001C4CD0  55                      push     ebp                            
  0x001C4CD1  6e                      outsb    dx, byte ptr [esi]             
  0x001C4CD2  7375                    jae      0x1c4d49                       
  0x001C4CD4  7070                    jo       0x1c4d46                       
  0x001C4CD6  6f                      outsd    dx, dword ptr [esi]            
  0x001C4CD7  7274                    jb       0x1c4d4d                       
  0x001C4CD9  6564206d61              and      byte ptr fs:[ebp + 0x61], ch   
  0x001C4CDE  726b                    jb       0x1c4d4b                       
  0x001C4CE0  657220                  jb       0x1c4d03                       
  0x001C4CE3  7479                    je       0x1c4d5e                       
                                        ; XREF: 0x001C4CC2 (cond_jump)
  0x001C4CE5  7065                    jo       0x1c4d4c                       
  0x001C4CE7  2030                    and      byte ptr [eax], dh             
  0x001C4CE9  7825                    js       0x1c4d10                       
  0x001C4CEB  3032                    xor      byte ptr [edx], dh             
  0x001C4CED  7800                    js       0x1c4cef                       
                                        ; XREF: 0x001C4CED (cond_jump)
  0x001C4CEF  004170                  add      byte ptr [ecx + 0x70], al      
  0x001C4CF2  706c                    jo       0x1c4d60                       
  0x001C4CF4  69636174696f6e          imul     esp, dword ptr [ebx + 0x61], 0x6e6f6974 
  0x001C4CFB  20747261                and      byte ptr [edx + esi*2 + 0x61], dh 
  0x001C4CFF  6e                      outsb    dx, byte ptr [esi]             
  0x001C4D00  7366                    jae      0x1c4d68                       
  0x001C4D02  657272                  jb       0x1c4d77                       
  0x001C4D05  656420746f6f            and      byte ptr fs:[edi + ebp*2 + 0x6f], dh 
  0x001C4D0B  206665                  and      byte ptr [esi + 0x65], ah      
  0x001C4D0E  7720                    ja       0x1c4d30                       
                                        ; XREF: 0x001C4CE9 (cond_jump)
  0x001C4D10  7363                    jae      0x1c4d75                       
  0x001C4D12  61                      popal                                   
  0x001C4D13  6e                      outsb    dx, byte ptr [esi]             
  0x001C4D14  6c                      insb     byte ptr es:[edi], dx          
  0x001C4D15  696e6573000000          imul     ebp, dword ptr [esi + 0x65], 0x73 
  0x001C4D1C  57                      push     edi                            
  0x001C4D1D  7269                    jb       0x1c4d88                       
  0x001C4D1F  7465                    je       0x1c4d86                       
  0x001C4D21  206661                  and      byte ptr [esi + 0x61], ah      
  0x001C4D24  696c6564206f6e20        imul     ebp, dword ptr [ebp + 0x64], 0x206e6f20 
  0x001C4D2C  7465                    je       0x1c4d93                       
  0x001C4D2E  6d                      insd     dword ptr es:[edi], dx         
  0x001C4D2F  706f                    jo       0x1c4da0                       
                                        ; XREF: 0x001C4CBD (cond_jump)
  0x001C4D31  7261                    jb       0x1c4d94                       
  0x001C4D33  7279                    jb       0x1c4dae                       
  0x001C4D35  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C4D38  6c                      insb     byte ptr es:[edi], dx          
  0x001C4D39  65202d2d2d206f          and      byte ptr gs:[0x6f202d2d], ch   
  0x001C4D40  7574                    jne      0x1c4db6                       
  0x001C4D42  206f66                  and      byte ptr [edi + 0x66], ch      
  0x001C4D45  20646973                and      byte ptr [ecx + ebp*2 + 0x73], ah 
                                        ; XREF: 0x001C4CD2 (cond_jump)
  0x001C4D49  6b2073                  imul     esp, dword ptr [eax], 0x73     
                                        ; XREF: 0x001C4CE5 (cond_jump)
  0x001C4D4C  7061                    jo       0x1c4daf                       
  0x001C4D4E  63653f                  arpl     word ptr [ebp + 0x3f], sp      
  0x001C4D51  0000                    add      byte ptr [eax], al             
  0x001C4D53  005365                  add      byte ptr [ebx + 0x65], dl      
  0x001C4D56  656b2066                imul     esp, dword ptr gs:[eax], 0x66  
  0x001C4D5A  61                      popal                                   
  0x001C4D5B  696c6564206f6e20        imul     ebp, dword ptr [ebp + 0x64], 0x206e6f20 
  0x001C4D63  7465                    je       0x1c4dca                       
  0x001C4D65  6d                      insd     dword ptr es:[edi], dx         
  0x001C4D66  706f                    jo       0x1c4dd7                       
                                        ; XREF: 0x001C4D00 (cond_jump)
  0x001C4D68  7261                    jb       0x1c4dcb                       
  0x001C4D6A  7279                    jb       0x1c4de5                       
  0x001C4D6C  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C4D6F  6c                      insb     byte ptr es:[edi], dx          
  0x001C4D70  650000                  add      byte ptr gs:[eax], al          
  0x001C4D73  005265                  add      byte ptr [edx + 0x65], dl      
  0x001C4D76  61                      popal                                   
                                        ; XREF: 0x001C4D02 (cond_jump)
  0x001C4D77  64206661                and      byte ptr fs:[esi + 0x61], ah   
  0x001C4D7B  696c6564206f6e20        imul     ebp, dword ptr [ebp + 0x64], 0x206e6f20 
  0x001C4D83  7465                    je       0x1c4dea                       
  0x001C4D85  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4D1F (cond_jump)
  0x001C4D86  706f                    jo       0x1c4df7                       
                                        ; XREF: 0x001C4D1D (cond_jump)
  0x001C4D88  7261                    jb       0x1c4deb                       
  0x001C4D8A  7279                    jb       0x1c4e05                       
  0x001C4D8C  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C4D8F  6c                      insb     byte ptr es:[edi], dx          
  0x001C4D90  650000                  add      byte ptr gs:[eax], al          
                                        ; XREF: 0x001C4D2C (cond_jump)
  0x001C4D93  004661                  add      byte ptr [esi + 0x61], al      
  0x001C4D96  696c656420746f20        imul     ebp, dword ptr [ebp + 0x64], 0x206f7420 
  0x001C4D9E  637265                  arpl     word ptr [edx + 0x65], si      
  0x001C4DA1  61                      popal                                   
  0x001C4DA2  7465                    je       0x1c4e09                       
  0x001C4DA4  2074656d                and      byte ptr [ebp + 0x6d], dh      
  0x001C4DA8  706f                    jo       0x1c4e19                       
  0x001C4DAA  7261                    jb       0x1c4e0d                       
  0x001C4DAC  7279                    jb       0x1c4e27                       
                                        ; XREF: 0x001C4D33 (cond_jump)
  0x001C4DAE  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C4DB1  6c                      insb     byte ptr es:[edi], dx          
  0x001C4DB2  65202573000049          and      byte ptr gs:[0x49000073], ah   
  0x001C4DB9  6e                      outsb    dx, byte ptr [esi]             
  0x001C4DBA  7661                    jbe      0x1c4e1d                       
  0x001C4DBC  6c                      insb     byte ptr es:[edi], dx          
  0x001C4DBD  6964204a50454720        imul     esp, dword ptr [eax + 0x4a], 0x20474550 
  0x001C4DC5  66696c65207374          imul     bp, word ptr [ebp + 0x20], 0x7473 
  0x001C4DCC  7275                    jb       0x1c4e43                       
  0x001C4DCE  63747572                arpl     word ptr [ebp + esi*2 + 0x72], si 
  0x001C4DD2  653a20                  cmp      ah, byte ptr gs:[eax]          
  0x001C4DD5  53                      push     ebx                            
  0x001C4DD6  4f                      dec      edi                            
                                        ; XREF: 0x001C4D66 (cond_jump)
  0x001C4DD7  53                      push     ebx                            
  0x001C4DD8  206265                  and      byte ptr [edx + 0x65], ah      
  0x001C4DDB  666f                    outsw    dx, word ptr [esi]             
  0x001C4DDD  7265                    jb       0x1c4e44                       
  0x001C4DDF  20534f                  and      byte ptr [ebx + 0x4f], dl      
  0x001C4DE2  46                      inc      esi                            
  0x001C4DE3  00496e                  add      byte ptr [ecx + 0x6e], cl      
  0x001C4DE6  7661                    jbe      0x1c4e49                       
  0x001C4DE8  6c                      insb     byte ptr es:[edi], dx          
  0x001C4DE9  6964204a50454720        imul     esp, dword ptr [eax + 0x4a], 0x20474550 
  0x001C4DF1  66696c65207374          imul     bp, word ptr [ebp + 0x20], 0x7473 
  0x001C4DF8  7275                    jb       0x1c4e6f                       
  0x001C4DFA  63747572                arpl     word ptr [ebp + esi*2 + 0x72], si 
  0x001C4DFE  653a20                  cmp      ah, byte ptr gs:[eax]          
  0x001C4E01  7477                    je       0x1c4e7a                       
  0x001C4E03  6f                      outsd    dx, dword ptr [esi]            
  0x001C4E04  20534f                  and      byte ptr [ebx + 0x4f], dl      
  0x001C4E07  49                      dec      ecx                            
  0x001C4E08  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C4E0B  726b                    jb       0x1c4e78                       
                                        ; XREF: 0x001C4DAA (cond_jump)
  0x001C4E0D  657273                  jb       0x1c4e83                       
  0x001C4E10  0000                    add      byte ptr [eax], al             
  0x001C4E12  0000                    add      byte ptr [eax], al             
  0x001C4E14  55                      push     ebp                            
  0x001C4E15  6e                      outsb    dx, byte ptr [esi]             
  0x001C4E16  7375                    jae      0x1c4e8d                       
  0x001C4E18  7070                    jo       0x1c4e8a                       
  0x001C4E1A  6f                      outsd    dx, dword ptr [esi]            
  0x001C4E1B  7274                    jb       0x1c4e91                       
                                        ; XREF: 0x001C4DBA (cond_jump)
  0x001C4E1D  6564204a50              and      byte ptr fs:[edx + 0x50], cl   
  0x001C4E22  45                      inc      ebp                            
  0x001C4E23  47                      inc      edi                            
  0x001C4E24  207072                  and      byte ptr [eax + 0x72], dh      
                                        ; XREF: 0x001C4DAC (cond_jump)
  0x001C4E27  6f                      outsd    dx, dword ptr [esi]            
  0x001C4E28  636573                  arpl     word ptr [ebp + 0x73], sp      
  0x001C4E2B  733a                    jae      0x1c4e67                       
  0x001C4E2D  20534f                  and      byte ptr [ebx + 0x4f], dl      
  0x001C4E30  46                      inc      esi                            
  0x001C4E31  20747970                and      byte ptr [ecx + edi*2 + 0x70], dh 
  0x001C4E35  652030                  and      byte ptr gs:[eax], dh          
  0x001C4E38  7825                    js       0x1c4e5f                       
  0x001C4E3A  3032                    xor      byte ptr [edx], dh             
  0x001C4E3C  7800                    js       0x1c4e3e                       
                                        ; XREF: 0x001C4E3C (cond_jump)
  0x001C4E3E  0000                    add      byte ptr [eax], al             
  0x001C4E40  49                      dec      ecx                            
  0x001C4E41  6e                      outsb    dx, byte ptr [esi]             
  0x001C4E42  7661                    jbe      0x1c4ea5                       
                                        ; XREF: 0x001C4DDD (cond_jump)
  0x001C4E44  6c                      insb     byte ptr es:[edi], dx          
  0x001C4E45  6964204a50454720        imul     esp, dword ptr [eax + 0x4a], 0x20474550 
  0x001C4E4D  66696c65207374          imul     bp, word ptr [ebp + 0x20], 0x7473 
  0x001C4E54  7275                    jb       0x1c4ecb                       
  0x001C4E56  63747572                arpl     word ptr [ebp + esi*2 + 0x72], si 
  0x001C4E5A  653a20                  cmp      ah, byte ptr gs:[eax]          
  0x001C4E5D  6d                      insd     dword ptr es:[edi], dx         
  0x001C4E5E  697373696e6720          imul     esi, dword ptr [ebx + 0x73], 0x20676e69 
  0x001C4E65  53                      push     ebx                            
  0x001C4E66  4f                      dec      edi                            
                                        ; XREF: 0x001C4E2B (cond_jump)
  0x001C4E67  53                      push     ebx                            
  0x001C4E68  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C4E6B  726b                    jb       0x1c4ed8                       
  0x001C4E6D  657200                  jb       0x1c4e70                       
                                        ; XREF: 0x001C4E6D (cond_jump)
  0x001C4E70  49                      dec      ecx                            
  0x001C4E71  6e                      outsb    dx, byte ptr [esi]             
  0x001C4E72  7661                    jbe      0x1c4ed5                       
  0x001C4E74  6c                      insb     byte ptr es:[edi], dx          
  0x001C4E75  6964204a50454720        imul     esp, dword ptr [eax + 0x4a], 0x20474550 
  0x001C4E7D  66696c65207374          imul     bp, word ptr [ebp + 0x20], 0x7473 
  0x001C4E84  7275                    jb       0x1c4efb                       
  0x001C4E86  63747572                arpl     word ptr [ebp + esi*2 + 0x72], si 
                                        ; XREF: 0x001C4E18 (cond_jump)
  0x001C4E8A  653a20                  cmp      ah, byte ptr gs:[eax]          
                                        ; XREF: 0x001C4E16 (cond_jump)
  0x001C4E8D  7477                    je       0x1c4f06                       
  0x001C4E8F  6f                      outsd    dx, dword ptr [esi]            
  0x001C4E90  20534f                  and      byte ptr [ebx + 0x4f], dl      
  0x001C4E93  46                      inc      esi                            
  0x001C4E94  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C4E97  726b                    jb       0x1c4f04                       
  0x001C4E99  657273                  jb       0x1c4f0f                       
  0x001C4E9C  0000                    add      byte ptr [eax], al             
  0x001C4E9E  0000                    add      byte ptr [eax], al             
  0x001C4EA0  43                      inc      ebx                            
  0x001C4EA1  61                      popal                                   
  0x001C4EA2  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EA3  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EA4  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C4E42 (cond_jump)
  0x001C4EA5  7420                    je       0x1c4ec7                       
  0x001C4EA7  7175                    jno      0x1c4f1e                       
  0x001C4EA9  61                      popal                                   
  0x001C4EAA  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EAB  7469                    je       0x1c4f16                       
  0x001C4EAD  7a65                    jp       0x1c4f14                       
  0x001C4EAF  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C4EB3  6d                      insd     dword ptr es:[edi], dx         
  0x001C4EB4  6f                      outsd    dx, dword ptr [esi]            
  0x001C4EB5  7265                    jb       0x1c4f1c                       
  0x001C4EB7  20746861                and      byte ptr [eax + ebp*2 + 0x61], dh 
  0x001C4EBB  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EBC  20256420636f            and      byte ptr [0x6f632064], ah      
  0x001C4EC2  6c                      insb     byte ptr es:[edi], dx          
  0x001C4EC3  6f                      outsd    dx, dword ptr [esi]            
  0x001C4EC4  7273                    jb       0x1c4f39                       
  0x001C4EC6  0000                    add      byte ptr [eax], al             
  0x001C4EC8  43                      inc      ebx                            
  0x001C4EC9  61                      popal                                   
  0x001C4ECA  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C4E54 (cond_jump)
  0x001C4ECB  6e                      outsb    dx, byte ptr [esi]             
  0x001C4ECC  6f                      outsd    dx, dword ptr [esi]            
  0x001C4ECD  7420                    je       0x1c4eef                       
  0x001C4ECF  7175                    jno      0x1c4f46                       
  0x001C4ED1  61                      popal                                   
  0x001C4ED2  6e                      outsb    dx, byte ptr [esi]             
  0x001C4ED3  7469                    je       0x1c4f3e                       
                                        ; XREF: 0x001C4E72 (cond_jump)
  0x001C4ED5  7a65                    jp       0x1c4f3c                       
  0x001C4ED7  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C4EDB  66657765                ja       0x1c4f44                       
  0x001C4EDF  7220                    jb       0x1c4f01                       
  0x001C4EE1  7468                    je       0x1c4f4b                       
  0x001C4EE3  61                      popal                                   
  0x001C4EE4  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EE5  20256420636f            and      byte ptr [0x6f632064], ah      
  0x001C4EEB  6c                      insb     byte ptr es:[edi], dx          
  0x001C4EEC  6f                      outsd    dx, dword ptr [esi]            
  0x001C4EED  7273                    jb       0x1c4f62                       
                                        ; XREF: 0x001C4ECD (cond_jump)
  0x001C4EEF  004361                  add      byte ptr [ebx + 0x61], al      
  0x001C4EF2  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EF3  6e                      outsb    dx, byte ptr [esi]             
  0x001C4EF4  6f                      outsd    dx, dword ptr [esi]            
  0x001C4EF5  7420                    je       0x1c4f17                       
  0x001C4EF7  7175                    jno      0x1c4f6e                       
  0x001C4EF9  61                      popal                                   
  0x001C4EFA  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C4E84 (cond_jump)
  0x001C4EFB  7469                    je       0x1c4f66                       
  0x001C4EFD  7a65                    jp       0x1c4f64                       
  0x001C4EFF  206d6f                  and      byte ptr [ebp + 0x6f], ch      
  0x001C4F02  7265                    jb       0x1c4f69                       
                                        ; XREF: 0x001C4E97 (cond_jump)
  0x001C4F04  20746861                and      byte ptr [eax + ebp*2 + 0x61], dh 
  0x001C4F08  6e                      outsb    dx, byte ptr [esi]             
  0x001C4F09  20256420636f            and      byte ptr [0x6f632064], ah      
                                        ; XREF: 0x001C4E99 (cond_jump)
  0x001C4F0F  6c                      insb     byte ptr es:[edi], dx          
  0x001C4F10  6f                      outsd    dx, dword ptr [esi]            
  0x001C4F11  7220                    jb       0x1c4f33                       
  0x001C4F13  636f6d                  arpl     word ptr [edi + 0x6d], bp      
                                        ; XREF: 0x001C4EAB (cond_jump)
  0x001C4F16  706f                    jo       0x1c4f87                       
  0x001C4F18  6e                      outsb    dx, byte ptr [esi]             
  0x001C4F19  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C4F1B  7473                    je       0x1c4f90                       
  0x001C4F1D  0000                    add      byte ptr [eax], al             
  0x001C4F1F  00496e                  add      byte ptr [ecx + 0x6e], cl      
  0x001C4F22  7375                    jae      0x1c4f99                       
  0x001C4F24  6666696369656e          imul     sp, word ptr [ebx + 0x69], 0x6e65 
  0x001C4F2B  7420                    je       0x1c4f4d                       
  0x001C4F2D  6d                      insd     dword ptr es:[edi], dx         
  0x001C4F2E  656d                    insd     dword ptr es:[edi], dx         
  0x001C4F30  6f                      outsd    dx, dword ptr [esi]            
  0x001C4F31  7279                    jb       0x1c4fac                       
                                        ; XREF: 0x001C4F11 (cond_jump)
  0x001C4F33  2028                    and      byte ptr [eax], ch             
  0x001C4F35  636173                  arpl     word ptr [ecx + 0x73], sp      
  0x001C4F38  65202564290000          and      byte ptr gs:[0x2964], ah       
  0x001C4F3F  004e6f                  add      byte ptr [esi + 0x6f], cl      
  0x001C4F42  7420                    je       0x1c4f64                       
                                        ; XREF: 0x001C4EDB (cond_jump)
  0x001C4F44  61                      popal                                   
  0x001C4F45  204a50                  and      byte ptr [edx + 0x50], cl      
  0x001C4F48  45                      inc      ebp                            
  0x001C4F49  47                      inc      edi                            
  0x001C4F4A  206669                  and      byte ptr [esi + 0x69], ah      
                                        ; XREF: 0x001C4F2B (cond_jump)
  0x001C4F4D  6c                      insb     byte ptr es:[edi], dx          
  0x001C4F4E  653a20                  cmp      ah, byte ptr gs:[eax]          
  0x001C4F51  7374                    jae      0x1c4fc7                       
  0x001C4F53  61                      popal                                   
  0x001C4F54  7274                    jb       0x1c4fca                       
  0x001C4F56  7320                    jae      0x1c4f78                       
  0x001C4F58  7769                    ja       0x1c4fc3                       
  0x001C4F5A  7468                    je       0x1c4fc4                       
  0x001C4F5C  2030                    and      byte ptr [eax], dh             
  0x001C4F5E  7825                    js       0x1c4f85                       
  0x001C4F60  3032                    xor      byte ptr [edx], dh             
                                        ; XREF: 0x001C4EED (cond_jump)
  0x001C4F62  7820                    js       0x1c4f84                       
                                        ; XREF: 0x001C4EFD (cond_jump), 0x001C4F42 (cond_jump)
  0x001C4F64  307825                  xor      byte ptr [eax + 0x25], bh      
  0x001C4F67  3032                    xor      byte ptr [edx], dh             
                                        ; XREF: 0x001C4F02 (cond_jump)
  0x001C4F69  7800                    js       0x1c4f6b                       
                                        ; XREF: 0x001C4F69 (cond_jump)
  0x001C4F6B  005175                  add      byte ptr [ecx + 0x75], dl      
                                        ; XREF: 0x001C4EF7 (cond_jump)
  0x001C4F6E  61                      popal                                   
  0x001C4F6F  6e                      outsb    dx, byte ptr [esi]             
  0x001C4F70  7469                    je       0x1c4fdb                       
  0x001C4F72  7a61                    jp       0x1c4fd5                       
  0x001C4F74  7469                    je       0x1c4fdf                       
  0x001C4F76  6f                      outsd    dx, dword ptr [esi]            
  0x001C4F77  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C4F56 (cond_jump)
  0x001C4F78  20746162                and      byte ptr [ecx + 0x62], dh      
  0x001C4F7C  6c                      insb     byte ptr es:[edi], dx          
  0x001C4F7D  652030                  and      byte ptr gs:[eax], dh          
  0x001C4F80  7825                    js       0x1c4fa7                       
  0x001C4F82  3032                    xor      byte ptr [edx], dh             
                                        ; XREF: 0x001C4F62 (cond_jump)
  0x001C4F84  7820                    js       0x1c4fa6                       
  0x001C4F86  7761                    ja       0x1c4fe9                       
  0x001C4F88  7320                    jae      0x1c4faa                       
  0x001C4F8A  6e                      outsb    dx, byte ptr [esi]             
  0x001C4F8B  6f                      outsd    dx, dword ptr [esi]            
  0x001C4F8C  7420                    je       0x1c4fae                       
  0x001C4F8E  646566696e656400        imul     bp, word ptr gs:[esi + 0x65], 0x64 
  0x001C4F96  0000                    add      byte ptr [eax], al             
  0x001C4F98  4a                      dec      edx                            
                                        ; XREF: 0x001C4F22 (cond_jump)
  0x001C4F99  50                      push     eax                            
  0x001C4F9A  45                      inc      ebp                            
  0x001C4F9B  47                      inc      edi                            
  0x001C4F9C  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C4FA0  61                      popal                                   
  0x001C4FA1  7374                    jae      0x1c5017                       
  0x001C4FA3  7265                    jb       0x1c500a                       
  0x001C4FA5  61                      popal                                   
                                        ; XREF: 0x001C4F84 (cond_jump)
  0x001C4FA6  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C4F80 (cond_jump)
  0x001C4FA7  20636f                  and      byte ptr [ebx + 0x6f], ah      
                                        ; XREF: 0x001C4F88 (cond_jump)
  0x001C4FAA  6e                      outsb    dx, byte ptr [esi]             
  0x001C4FAB  7461                    je       0x1c500e                       
  0x001C4FAD  696e73206e6f20          imul     ebp, dword ptr [esi + 0x73], 0x206f6e20 
  0x001C4FB4  696d6167650000          imul     ebp, dword ptr [ebp + 0x61], 0x6567 
  0x001C4FBB  004875                  add      byte ptr [eax + 0x75], cl      
  0x001C4FBE  66666d                  insw     word ptr es:[edi], dx          
  0x001C4FC1  61                      popal                                   
  0x001C4FC2  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C4F58 (cond_jump)
  0x001C4FC3  20746162                and      byte ptr [ecx + 0x62], dh      
                                        ; XREF: 0x001C4F51 (cond_jump)
  0x001C4FC7  6c                      insb     byte ptr es:[edi], dx          
  0x001C4FC8  652030                  and      byte ptr gs:[eax], dh          
  0x001C4FCB  7825                    js       0x1c4ff2                       
  0x001C4FCD  3032                    xor      byte ptr [edx], dh             
  0x001C4FCF  7820                    js       0x1c4ff1                       
  0x001C4FD1  7761                    ja       0x1c5034                       
  0x001C4FD3  7320                    jae      0x1c4ff5                       
                                        ; XREF: 0x001C4F72 (cond_jump)
  0x001C4FD5  6e                      outsb    dx, byte ptr [esi]             
  0x001C4FD6  6f                      outsd    dx, dword ptr [esi]            
  0x001C4FD7  7420                    je       0x1c4ff9                       
  0x001C4FD9  646566696e656400        imul     bp, word ptr gs:[esi + 0x65], 0x64 
  0x001C4FE1  0000                    add      byte ptr [eax], al             
  0x001C4FE3  004261                  add      byte ptr [edx + 0x61], al      
  0x001C4FE6  636b69                  arpl     word ptr [ebx + 0x69], bp      
                                        ; XREF: 0x001C4F86 (cond_jump)
  0x001C4FE9  6e                      outsb    dx, byte ptr [esi]             
  0x001C4FEA  67207374                and      byte ptr [bp + di + 0x74], dh  
  0x001C4FEE  6f                      outsd    dx, dword ptr [esi]            
  0x001C4FEF  7265                    jb       0x1c5056                       
                                        ; XREF: 0x001C4FCF (cond_jump)
  0x001C4FF1  206e6f                  and      byte ptr [esi + 0x6f], ch      
  0x001C4FF4  7420                    je       0x1c5016                       
  0x001C4FF6  7375                    jae      0x1c506d                       
  0x001C4FF8  7070                    jo       0x1c506a                       
  0x001C4FFA  6f                      outsd    dx, dword ptr [esi]            
  0x001C4FFB  7274                    jb       0x1c5071                       
  0x001C4FFD  6564005265              add      byte ptr fs:[edx + 0x65], dl   
  0x001C5002  7175                    jno      0x1c5079                       
  0x001C5004  657374                  jae      0x1c507b                       
  0x001C5007  6564206665              and      byte ptr fs:[esi + 0x65], ah   
  0x001C500C  61                      popal                                   
  0x001C500D  7475                    je       0x1c5084                       
  0x001C500F  7265                    jb       0x1c5076                       
  0x001C5011  207761                  and      byte ptr [edi + 0x61], dh      
  0x001C5014  7320                    jae      0x1c5036                       
                                        ; XREF: 0x001C4FF4 (cond_jump)
  0x001C5016  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C4FA1 (cond_jump)
  0x001C5017  6d                      insd     dword ptr es:[edi], dx         
  0x001C5018  6974746564206174        imul     esi, dword ptr [esp + esi*2 + 0x65], 0x74612064 
  0x001C5020  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C5023  6d                      insd     dword ptr es:[edi], dx         
  0x001C5024  7069                    jo       0x1c508f                       
  0x001C5026  6c                      insb     byte ptr es:[edi], dx          
  0x001C5027  652074696d              and      byte ptr gs:[ecx + ebp*2 + 0x6d], dh 
  0x001C502C  650000                  add      byte ptr gs:[eax], al          
  0x001C502F  004e6f                  add      byte ptr [esi + 0x6f], cl      
  0x001C5032  7420                    je       0x1c5054                       
                                        ; XREF: 0x001C4FD1 (cond_jump)
  0x001C5034  696d706c656d65          imul     ebp, dword ptr [ebp + 0x70], 0x656d656c 
  0x001C503B  6e                      outsb    dx, byte ptr [esi]             
  0x001C503C  7465                    je       0x1c50a3                       
  0x001C503E  64207965                and      byte ptr fs:[ecx + 0x65], bh   
  0x001C5042  7400                    je       0x1c5044                       
                                        ; XREF: 0x001C5042 (cond_jump)
  0x001C5044  49                      dec      ecx                            
  0x001C5045  6e                      outsb    dx, byte ptr [esi]             
  0x001C5046  7661                    jbe      0x1c50a9                       
  0x001C5048  6c                      insb     byte ptr es:[edi], dx          
  0x001C5049  696420636f6c6f72        imul     esp, dword ptr [eax + 0x63], 0x726f6c6f 
  0x001C5051  207175                  and      byte ptr [ecx + 0x75], dh      
                                        ; XREF: 0x001C5032 (cond_jump)
  0x001C5054  61                      popal                                   
  0x001C5055  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C4FEF (cond_jump)
  0x001C5056  7469                    je       0x1c50c1                       
  0x001C5058  7a61                    jp       0x1c50bb                       
  0x001C505A  7469                    je       0x1c50c5                       
  0x001C505C  6f                      outsd    dx, dword ptr [esi]            
  0x001C505D  6e                      outsb    dx, byte ptr [esi]             
  0x001C505E  206d6f                  and      byte ptr [ebp + 0x6f], ch      
  0x001C5061  6465206368              and      byte ptr gs:[ebx + 0x68], ah   
  0x001C5066  61                      popal                                   
  0x001C5067  6e                      outsb    dx, byte ptr [esi]             
  0x001C5068  67650000                add      byte ptr gs:[bx + si], al      
  0x001C506C  53                      push     ebx                            
                                        ; XREF: 0x001C4FF6 (cond_jump)
  0x001C506D  63616e                  arpl     word ptr [ecx + 0x6e], sp      
  0x001C5070  207363                  and      byte ptr [ebx + 0x63], dh      
  0x001C5073  7269                    jb       0x1c50de                       
  0x001C5075  7074                    jo       0x1c50eb                       
  0x001C5077  20646f65                and      byte ptr [edi + ebp*2 + 0x65], ah 
                                        ; XREF: 0x001C5004 (cond_jump)
  0x001C507B  7320                    jae      0x1c509d                       
  0x001C507D  6e                      outsb    dx, byte ptr [esi]             
  0x001C507E  6f                      outsd    dx, dword ptr [esi]            
  0x001C507F  7420                    je       0x1c50a1                       
  0x001C5081  7472                    je       0x1c50f5                       
  0x001C5083  61                      popal                                   
                                        ; XREF: 0x001C500D (cond_jump)
  0x001C5084  6e                      outsb    dx, byte ptr [esi]             
  0x001C5085  736d                    jae      0x1c50f4                       
  0x001C5087  697420616c6c2064        imul     esi, dword ptr [eax + 0x61], 0x64206c6c 
                                        ; XREF: 0x001C5024 (cond_jump)
  0x001C508F  61                      popal                                   
  0x001C5090  7461                    je       0x1c50f3                       
  0x001C5092  0000                    add      byte ptr [eax], al             
  0x001C5094  43                      inc      ebx                            
  0x001C5095  61                      popal                                   
  0x001C5096  6e                      outsb    dx, byte ptr [esi]             
  0x001C5097  6e                      outsb    dx, byte ptr [esi]             
  0x001C5098  6f                      outsd    dx, dword ptr [esi]            
  0x001C5099  7420                    je       0x1c50bb                       
  0x001C509B  7472                    je       0x1c510f                       
                                        ; XREF: 0x001C507B (cond_jump)
  0x001C509D  61                      popal                                   
  0x001C509E  6e                      outsb    dx, byte ptr [esi]             
  0x001C509F  7363                    jae      0x1c5104                       
                                        ; XREF: 0x001C507F (cond_jump)
  0x001C50A1  6f                      outsd    dx, dword ptr [esi]            
  0x001C50A2  646520647565            and      byte ptr gs:[ebp + esi*2 + 0x65], ah 
  0x001C50A8  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C50AC  6d                      insd     dword ptr es:[edi], dx         
  0x001C50AD  756c                    jne      0x1c511b                       
  0x001C50AF  7469                    je       0x1c511a                       
  0x001C50B1  706c                    jo       0x1c511f                       
  0x001C50B3  65207573                and      byte ptr gs:[ebp + 0x73], dh   
  0x001C50B7  65206f66                and      byte ptr gs:[edi + 0x66], ch   
                                        ; XREF: 0x001C5058 (cond_jump), 0x001C5099 (cond_jump)
  0x001C50BB  207175                  and      byte ptr [ecx + 0x75], dh      
  0x001C50BE  61                      popal                                   
  0x001C50BF  6e                      outsb    dx, byte ptr [esi]             
  0x001C50C0  7469                    je       0x1c512b                       
  0x001C50C2  7a61                    jp       0x1c5125                       
  0x001C50C4  7469                    je       0x1c512f                       
  0x001C50C6  6f                      outsd    dx, dword ptr [esi]            
  0x001C50C7  6e                      outsb    dx, byte ptr [esi]             
  0x001C50C8  20746162                and      byte ptr [ecx + 0x62], dh      
  0x001C50CC  6c                      insb     byte ptr es:[edi], dx          
  0x001C50CD  65202564000000          and      byte ptr gs:[0x64], ah         
  0x001C50D4  50                      push     eax                            
  0x001C50D5  7265                    jb       0x1c513c                       
  0x001C50D7  6d                      insd     dword ptr es:[edi], dx         
  0x001C50D8  61                      popal                                   
  0x001C50D9  7475                    je       0x1c5150                       
  0x001C50DB  7265                    jb       0x1c5142                       
  0x001C50DD  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C50E0  64206f66                and      byte ptr fs:[edi + 0x66], ch   
  0x001C50E4  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C50E7  7075                    jo       0x1c515e                       
  0x001C50E9  7420                    je       0x1c510b                       
                                        ; XREF: 0x001C5075 (cond_jump)
  0x001C50EB  66696c6500456d          imul     bp, word ptr [ebp], 0x6d45     
  0x001C50F2  7074                    jo       0x1c5168                       
                                        ; XREF: 0x001C5085 (cond_jump)
  0x001C50F4  7920                    jns      0x1c5116                       
  0x001C50F6  696e7075742066          imul     ebp, dword ptr [esi + 0x70], 0x66207475 
  0x001C50FD  696c65000000004d        imul     ebp, dword ptr [ebp], 0x4d000000 
  0x001C5105  61                      popal                                   
  0x001C5106  7869                    js       0x1c5171                       
  0x001C5108  6d                      insd     dword ptr es:[edi], dx         
  0x001C5109  756d                    jne      0x1c5178                       
                                        ; XREF: 0x001C50E9 (cond_jump)
  0x001C510B  207375                  and      byte ptr [ebx + 0x75], dh      
  0x001C510E  7070                    jo       0x1c5180                       
  0x001C5110  6f                      outsd    dx, dword ptr [esi]            
  0x001C5111  7274                    jb       0x1c5187                       
  0x001C5113  656420696d              and      byte ptr fs:[ecx + 0x6d], ch   
  0x001C5118  61                      popal                                   
  0x001C5119  6765206469              and      byte ptr gs:[si + 0x69], ah    
  0x001C511E  6d                      insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C50B1 (cond_jump)
  0x001C511F  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C5121  7369                    jae      0x1c518c                       
  0x001C5123  6f                      outsd    dx, dword ptr [esi]            
  0x001C5124  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C50C2 (cond_jump)
  0x001C5125  206973                  and      byte ptr [ecx + 0x73], ch      
  0x001C5128  202575207069            and      byte ptr [0x69702075], ah      
  0x001C512E  7865                    js       0x1c5195                       
  0x001C5130  6c                      insb     byte ptr es:[edi], dx          
  0x001C5131  7300                    jae      0x1c5133                       
                                        ; XREF: 0x001C5131 (cond_jump)
  0x001C5133  004d69                  add      byte ptr [ebp + 0x69], cl      
  0x001C5136  7373                    jae      0x1c51ab                       
  0x001C5138  696e6720487566          imul     ebp, dword ptr [esi + 0x67], 0x66754820 
  0x001C513F  666d                    insw     word ptr es:[edi], dx          
  0x001C5141  61                      popal                                   
                                        ; XREF: 0x001C50DB (cond_jump)
  0x001C5142  6e                      outsb    dx, byte ptr [esi]             
  0x001C5143  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C5146  646520746162            and      byte ptr gs:[ecx + 0x62], dh   
  0x001C514C  6c                      insb     byte ptr es:[edi], dx          
  0x001C514D  6520656e                and      byte ptr gs:[ebp + 0x6e], ah   
  0x001C5151  7472                    je       0x1c51c5                       
  0x001C5153  7900                    jns      0x1c5155                       
                                        ; XREF: 0x001C5153 (cond_jump)
  0x001C5155  0000                    add      byte ptr [eax], al             
  0x001C5157  004875                  add      byte ptr [eax + 0x75], cl      
  0x001C515A  66666d                  insw     word ptr es:[edi], dx          
  0x001C515D  61                      popal                                   
                                        ; XREF: 0x001C50E7 (cond_jump)
  0x001C515E  6e                      outsb    dx, byte ptr [esi]             
  0x001C515F  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C5162  6465207369              and      byte ptr gs:[ebx + 0x69], dh   
  0x001C5167  7a65                    jp       0x1c51ce                       
  0x001C5169  20746162                and      byte ptr [ecx + 0x62], dh      
  0x001C516D  6c                      insb     byte ptr es:[edi], dx          
  0x001C516E  65206f76                and      byte ptr gs:[edi + 0x76], ch   
  0x001C5172  657266                  jb       0x1c51db                       
  0x001C5175  6c                      insb     byte ptr es:[edi], dx          
  0x001C5176  6f                      outsd    dx, dword ptr [esi]            
  0x001C5177  7700                    ja       0x1c5179                       
                                        ; XREF: 0x001C5177 (cond_jump)
  0x001C5179  0000                    add      byte ptr [eax], al             
  0x001C517B  004672                  add      byte ptr [esi + 0x72], al      
  0x001C517E  61                      popal                                   
  0x001C517F  6374696f                arpl     word ptr [ecx + ebp*2 + 0x6f], si 
  0x001C5183  6e                      outsb    dx, byte ptr [esi]             
  0x001C5184  61                      popal                                   
  0x001C5185  6c                      insb     byte ptr es:[edi], dx          
  0x001C5186  207361                  and      byte ptr [ebx + 0x61], dh      
  0x001C5189  6d                      insd     dword ptr es:[edi], dx         
  0x001C518A  706c                    jo       0x1c51f8                       
                                        ; XREF: 0x001C5121 (cond_jump)
  0x001C518C  696e67206e6f74          imul     ebp, dword ptr [esi + 0x67], 0x746f6e20 
  0x001C5193  20696d                  and      byte ptr [ecx + 0x6d], ch      
  0x001C5196  706c                    jo       0x1c5204                       
  0x001C5198  656d                    insd     dword ptr es:[edi], dx         
  0x001C519A  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C519C  7465                    je       0x1c5203                       
  0x001C519E  64207965                and      byte ptr fs:[ecx + 0x65], bh   
  0x001C51A2  7400                    je       0x1c51a4                       
                                        ; XREF: 0x001C51A2 (cond_jump)
  0x001C51A4  4f                      dec      edi                            
  0x001C51A5  7574                    jne      0x1c521b                       
  0x001C51A7  7075                    jo       0x1c521e                       
  0x001C51A9  7420                    je       0x1c51cb                       
                                        ; XREF: 0x001C5136 (cond_jump)
  0x001C51AB  66696c65207772          imul     bp, word ptr [ebp + 0x20], 0x7277 
  0x001C51B2  697465206572726f        imul     esi, dword ptr [ebp + 0x20], 0x6f727265 
  0x001C51BA  7220                    jb       0x1c51dc                       
  0x001C51BC  2d2d2d206f              sub      eax, 0x6f202d2d                
  0x001C51C1  7574                    jne      0x1c5237                       
  0x001C51C3  206f66                  and      byte ptr [edi + 0x66], ch      
  0x001C51C6  20646973                and      byte ptr [ecx + ebp*2 + 0x73], ah 
  0x001C51CA  6b2073                  imul     esp, dword ptr [eax], 0x73     
  0x001C51CD  7061                    jo       0x1c5230                       
  0x001C51CF  63653f                  arpl     word ptr [ebp + 0x3f], sp      
  0x001C51D2  0000                    add      byte ptr [eax], al             
  0x001C51D4  49                      dec      ecx                            
  0x001C51D5  6e                      outsb    dx, byte ptr [esi]             
  0x001C51D6  7075                    jo       0x1c524d                       
  0x001C51D8  7420                    je       0x1c51fa                       
  0x001C51DA  66696c65207265          imul     bp, word ptr [ebp + 0x20], 0x6572 
  0x001C51E1  61                      popal                                   
  0x001C51E2  64206572                and      byte ptr fs:[ebp + 0x72], ah   
  0x001C51E6  726f                    jb       0x1c5257                       
  0x001C51E8  7200                    jb       0x1c51ea                       
                                        ; XREF: 0x001C51E8 (cond_jump)
  0x001C51EA  0000                    add      byte ptr [eax], al             
  0x001C51EC  44                      inc      esp                            
  0x001C51ED  69646e2774206578        imul     esp, dword ptr [esi + ebp*2 + 0x27], 0x78652074 
  0x001C51F5  7065                    jo       0x1c525c                       
  0x001C51F7  6374206d                arpl     word ptr [eax + 0x6d], si      
  0x001C51FB  6f                      outsd    dx, dword ptr [esi]            
  0x001C51FC  7265                    jb       0x1c5263                       
  0x001C51FE  20746861                and      byte ptr [eax + ebp*2 + 0x61], dh 
  0x001C5202  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C519C (cond_jump)
  0x001C5203  206f6e                  and      byte ptr [edi + 0x6e], ch      
  0x001C5206  65207363                and      byte ptr gs:[ebx + 0x63], dh   
  0x001C520A  61                      popal                                   
  0x001C520B  6e                      outsb    dx, byte ptr [esi]             
  0x001C520C  0000                    add      byte ptr [eax], al             
  0x001C520E  0000                    add      byte ptr [eax], al             
  0x001C5210  57                      push     edi                            
  0x001C5211  7269                    jb       0x1c527c                       
  0x001C5213  7465                    je       0x1c527a                       
  0x001C5215  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C5219  45                      inc      ebp                            
  0x001C521A  4d                      dec      ebp                            
                                        ; XREF: 0x001C51A5 (cond_jump)
  0x001C521B  53                      push     ebx                            
  0x001C521C  206661                  and      byte ptr [esi + 0x61], ah      
  0x001C521F  696c656400526561        imul     ebp, dword ptr [ebp + 0x64], 0x61655200 
  0x001C5227  64206672                and      byte ptr fs:[esi + 0x72], ah   
  0x001C522B  6f                      outsd    dx, dword ptr [esi]            
  0x001C522C  6d                      insd     dword ptr es:[edi], dx         
  0x001C522D  20454d                  and      byte ptr [ebp + 0x4d], al      
                                        ; XREF: 0x001C51CD (cond_jump)
  0x001C5230  53                      push     ebx                            
  0x001C5231  206661                  and      byte ptr [esi + 0x61], ah      
  0x001C5234  696c656400000000        imul     ebp, dword ptr [ebp + 0x64], 0 
  0x001C523C  45                      inc      ebp                            
  0x001C523D  6d                      insd     dword ptr es:[edi], dx         
  0x001C523E  7074                    jo       0x1c52b4                       
  0x001C5240  7920                    jns      0x1c5262                       
  0x001C5242  4a                      dec      edx                            
  0x001C5243  50                      push     eax                            
  0x001C5244  45                      inc      ebp                            
  0x001C5245  47                      inc      edi                            
  0x001C5246  20696d                  and      byte ptr [ecx + 0x6d], ch      
  0x001C5249  61                      popal                                   
  0x001C524A  67652028                and      byte ptr gs:[bx + si], ch      
  0x001C524E  44                      inc      esp                            
  0x001C524F  4e                      dec      esi                            
  0x001C5250  4c                      dec      esp                            
  0x001C5251  206e6f                  and      byte ptr [esi + 0x6f], ch      
  0x001C5254  7420                    je       0x1c5276                       
  0x001C5256  7375                    jae      0x1c52cd                       
  0x001C5258  7070                    jo       0x1c52ca                       
  0x001C525A  6f                      outsd    dx, dword ptr [esi]            
  0x001C525B  7274                    jb       0x1c52d1                       
  0x001C525D  65642900                sub      dword ptr fs:[eax], eax        
  0x001C5261  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C51FC (cond_jump)
  0x001C5263  00426f                  add      byte ptr [edx + 0x6f], al      
  0x001C5266  677573                  jne      0x1c52dc                       
  0x001C5269  20445154                and      byte ptr [ecx + edx*2 + 0x54], al 
  0x001C526D  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C5270  64657820                js       0x1c5294                       
  0x001C5274  2564000042              and      eax, 0x42000064                
  0x001C5279  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C5213 (cond_jump)
  0x001C527A  677573                  jne      0x1c52f0                       
  0x001C527D  20444854                and      byte ptr [eax + ecx*2 + 0x54], al 
  0x001C5281  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C5284  64657820                js       0x1c52a8                       
  0x001C5288  2564000042              and      eax, 0x42000064                
  0x001C528D  6f                      outsd    dx, dword ptr [esi]            
  0x001C528E  677573                  jne      0x1c5304                       
  0x001C5291  20444854                and      byte ptr [eax + ecx*2 + 0x54], al 
  0x001C5295  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C5298  756e                    jne      0x1c5308                       
  0x001C529A  7473                    je       0x1c530f                       
  0x001C529C  0000                    add      byte ptr [eax], al             
  0x001C529E  0000                    add      byte ptr [eax], al             
  0x001C52A0  42                      inc      edx                            
  0x001C52A1  6f                      outsd    dx, dword ptr [esi]            
  0x001C52A2  677573                  jne      0x1c5318                       
  0x001C52A5  20444143                and      byte ptr [ecx + eax*2 + 0x43], al 
  0x001C52A9  207661                  and      byte ptr [esi + 0x61], dh      
  0x001C52AC  6c                      insb     byte ptr es:[edi], dx          
  0x001C52AD  7565                    jne      0x1c5314                       
  0x001C52AF  2030                    and      byte ptr [eax], dh             
  0x001C52B1  7825                    js       0x1c52d8                       
  0x001C52B3  7800                    js       0x1c52b5                       
                                        ; XREF: 0x001C52B3 (cond_jump)
  0x001C52B5  0000                    add      byte ptr [eax], al             
  0x001C52B7  00426f                  add      byte ptr [edx + 0x6f], al      
  0x001C52BA  677573                  jne      0x1c5330                       
  0x001C52BD  20444143                and      byte ptr [ecx + eax*2 + 0x43], al 
  0x001C52C1  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C52C4  64657820                js       0x1c52e8                       
  0x001C52C8  2564000055              and      eax, 0x55000064                
                                        ; XREF: 0x001C5256 (cond_jump)
  0x001C52CD  6e                      outsb    dx, byte ptr [esi]             
  0x001C52CE  7375                    jae      0x1c5345                       
  0x001C52D0  7070                    jo       0x1c5342                       
  0x001C52D2  6f                      outsd    dx, dword ptr [esi]            
  0x001C52D3  7274                    jb       0x1c5349                       
  0x001C52D5  656420636f              and      byte ptr fs:[ebx + 0x6f], ah   
  0x001C52DA  6c                      insb     byte ptr es:[edi], dx          
  0x001C52DB  6f                      outsd    dx, dword ptr [esi]            
                                        ; XREF: 0x001C5266 (cond_jump)
  0x001C52DC  7220                    jb       0x1c52fe                       
  0x001C52DE  636f6e                  arpl     word ptr [edi + 0x6e], bp      
  0x001C52E1  7665                    jbe      0x1c5348                       
  0x001C52E3  7273                    jb       0x1c5358                       
  0x001C52E5  696f6e20726571          imul     ebp, dword ptr [edi + 0x6e], 0x71657220 
  0x001C52EC  7565                    jne      0x1c5353                       
  0x001C52EE  7374                    jae      0x1c5364                       
                                        ; XREF: 0x001C527A (cond_jump)
  0x001C52F0  0000                    add      byte ptr [eax], al             
  0x001C52F2  0000                    add      byte ptr [eax], al             
  0x001C52F4  54                      push     esp                            
  0x001C52F5  6f                      outsd    dx, dword ptr [esi]            
  0x001C52F6  6f                      outsd    dx, dword ptr [esi]            
  0x001C52F7  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C52FA  6e                      outsb    dx, byte ptr [esi]             
  0x001C52FB  7920                    jns      0x1c531d                       
  0x001C52FD  636f6c                  arpl     word ptr [edi + 0x6c], bp      
  0x001C5300  6f                      outsd    dx, dword ptr [esi]            
  0x001C5301  7220                    jb       0x1c5323                       
  0x001C5303  636f6d                  arpl     word ptr [edi + 0x6d], bp      
  0x001C5306  706f                    jo       0x1c5377                       
                                        ; XREF: 0x001C5298 (cond_jump)
  0x001C5308  6e                      outsb    dx, byte ptr [esi]             
  0x001C5309  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C530B  7473                    je       0x1c5380                       
  0x001C530D  3a20                    cmp      ah, byte ptr [eax]             
                                        ; XREF: 0x001C529A (cond_jump)
  0x001C530F  25642c206d              and      eax, 0x6d202c64                
                                        ; XREF: 0x001C52AD (cond_jump)
  0x001C5314  61                      popal                                   
  0x001C5315  7820                    js       0x1c5337                       
  0x001C5317  2564000000              and      eax, 0x64                      
  0x001C531C  43                      inc      ebx                            
                                        ; XREF: 0x001C52FB (cond_jump)
  0x001C531D  43                      inc      ebx                            
  0x001C531E  49                      dec      ecx                            
  0x001C531F  52                      push     edx                            
  0x001C5320  363031                  xor      byte ptr ss:[ecx], dh          
                                        ; XREF: 0x001C5301 (cond_jump)
  0x001C5323  207361                  and      byte ptr [ebx + 0x61], dh      
  0x001C5326  6d                      insd     dword ptr es:[edi], dx         
  0x001C5327  706c                    jo       0x1c5395                       
  0x001C5329  696e67206e6f74          imul     ebp, dword ptr [esi + 0x67], 0x746f6e20 
                                        ; XREF: 0x001C52BA (cond_jump)
  0x001C5330  20696d                  and      byte ptr [ecx + 0x6d], ch      
  0x001C5333  706c                    jo       0x1c53a1                       
  0x001C5335  656d                    insd     dword ptr es:[edi], dx         
                                        ; XREF: 0x001C5315 (cond_jump)
  0x001C5337  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C5339  7465                    je       0x1c53a0                       
  0x001C533B  64207965                and      byte ptr fs:[ecx + 0x65], bh   
  0x001C533F  7400                    je       0x1c5341                       
                                        ; XREF: 0x001C533F (cond_jump)
  0x001C5341  0000                    add      byte ptr [eax], al             
  0x001C5343  005375                  add      byte ptr [ebx + 0x75], dl      
  0x001C5346  7370                    jae      0x1c53b8                       
                                        ; XREF: 0x001C52E1 (cond_jump)
  0x001C5348  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C534A  7369                    jae      0x1c53b5                       
  0x001C534C  6f                      outsd    dx, dword ptr [esi]            
  0x001C534D  6e                      outsb    dx, byte ptr [esi]             
  0x001C534E  206e6f                  and      byte ptr [esi + 0x6f], ch      
  0x001C5351  7420                    je       0x1c5373                       
                                        ; XREF: 0x001C52EC (cond_jump)
  0x001C5353  61                      popal                                   
  0x001C5354  6c                      insb     byte ptr es:[edi], dx          
  0x001C5355  6c                      insb     byte ptr es:[edi], dx          
  0x001C5356  6f                      outsd    dx, dword ptr [esi]            
  0x001C5357  7765                    ja       0x1c53be                       
  0x001C5359  64206865                and      byte ptr fs:[eax + 0x65], ch   
  0x001C535D  7265                    jb       0x1c53c4                       
  0x001C535F  004275                  add      byte ptr [edx + 0x75], al      
  0x001C5362  6666657220              jb       0x1c5387                       
  0x001C5367  7061                    jo       0x1c53ca                       
  0x001C5369  7373                    jae      0x1c53de                       
  0x001C536B  656420746f20            and      byte ptr fs:[edi + ebp*2 + 0x20], dh 
  0x001C5371  4a                      dec      edx                            
  0x001C5372  50                      push     eax                            
                                        ; XREF: 0x001C5351 (cond_jump)
  0x001C5373  45                      inc      ebp                            
  0x001C5374  47                      inc      edi                            
  0x001C5375  206c6962                and      byte ptr [ecx + ebp*2 + 0x62], ch 
  0x001C5379  7261                    jb       0x1c53dc                       
  0x001C537B  7279                    jb       0x1c53f6                       
  0x001C537D  206973                  and      byte ptr [ecx + 0x73], ch      
                                        ; XREF: 0x001C530B (cond_jump)
  0x001C5380  20746f6f                and      byte ptr [edi + ebp*2 + 0x6f], dh 
  0x001C5384  20736d                  and      byte ptr [ebx + 0x6d], dh      
                                        ; XREF: 0x001C5362 (cond_jump)
  0x001C5387  61                      popal                                   
  0x001C5388  6c                      insb     byte ptr es:[edi], dx          
  0x001C5389  6c                      insb     byte ptr es:[edi], dx          
  0x001C538A  0000                    add      byte ptr [eax], al             
  0x001C538C  42                      inc      edx                            
  0x001C538D  6f                      outsd    dx, dword ptr [esi]            
  0x001C538E  677573                  jne      0x1c5404                       
  0x001C5391  207669                  and      byte ptr [esi + 0x69], dh      
  0x001C5394  7274                    jb       0x1c540a                       
  0x001C5396  7561                    jne      0x1c53f9                       
  0x001C5398  6c                      insb     byte ptr es:[edi], dx          
  0x001C5399  206172                  and      byte ptr [ecx + 0x72], ah      
  0x001C539C  7261                    jb       0x1c53ff                       
  0x001C539E  7920                    jns      0x1c53c0                       
                                        ; XREF: 0x001C5339 (cond_jump)
  0x001C53A0  61                      popal                                   
                                        ; XREF: 0x001C5333 (cond_jump)
  0x001C53A1  636365                  arpl     word ptr [ebx + 0x65], sp      
  0x001C53A4  7373                    jae      0x1c5419                       
  0x001C53A6  0000                    add      byte ptr [eax], al             
  0x001C53A8  4a                      dec      edx                            
  0x001C53A9  50                      push     eax                            
  0x001C53AA  45                      inc      ebp                            
  0x001C53AB  47                      inc      edi                            
  0x001C53AC  207061                  and      byte ptr [eax + 0x61], dh      
  0x001C53AF  7261                    jb       0x1c5412                       
  0x001C53B1  6d                      insd     dword ptr es:[edi], dx         
  0x001C53B2  657465                  je       0x1c541a                       
                                        ; XREF: 0x001C534A (cond_jump)
  0x001C53B5  7220                    jb       0x1c53d7                       
  0x001C53B7  7374                    jae      0x1c542d                       
  0x001C53B9  7275                    jb       0x1c5430                       
  0x001C53BB  6374206d                arpl     word ptr [eax + 0x6d], si      
  0x001C53BF  69736d61746368          imul     esi, dword ptr [ebx + 0x6d], 0x68637461 
  0x001C53C6  3a20                    cmp      ah, byte ptr [eax]             
  0x001C53C8  6c                      insb     byte ptr es:[edi], dx          
  0x001C53C9  69627261727920          imul     esp, dword ptr [edx + 0x72], 0x20797261 
  0x001C53D0  7468                    je       0x1c543a                       
  0x001C53D2  696e6b73207369          imul     ebp, dword ptr [esi + 0x6b], 0x69732073 
  0x001C53D9  7a65                    jp       0x1c5440                       
  0x001C53DB  206973                  and      byte ptr [ecx + 0x73], ch      
                                        ; XREF: 0x001C5369 (cond_jump)
  0x001C53DE  2025752c2063            and      byte ptr [0x63202c75], ah      
  0x001C53E4  61                      popal                                   
  0x001C53E5  6c                      insb     byte ptr es:[edi], dx          
  0x001C53E6  6c                      insb     byte ptr es:[edi], dx          
  0x001C53E7  657220                  jb       0x1c540a                       
  0x001C53EA  657870                  js       0x1c545d                       
  0x001C53ED  6563747320              arpl     word ptr gs:[ebx + esi*2 + 0x20], si 
  0x001C53F2  2575000000              and      eax, 0x75                      
  0x001C53F7  00496d                  add      byte ptr [ecx + 0x6d], cl      
  0x001C53FA  7072                    jo       0x1c546e                       
  0x001C53FC  6f                      outsd    dx, dword ptr [esi]            
  0x001C53FD  7065                    jo       0x1c5464                       
                                        ; XREF: 0x001C539C (cond_jump)
  0x001C53FF  7220                    jb       0x1c5421                       
  0x001C5401  63616c                  arpl     word ptr [ecx + 0x6c], sp      
                                        ; XREF: 0x001C538E (cond_jump)
  0x001C5404  6c                      insb     byte ptr es:[edi], dx          
  0x001C5405  20746f20                and      byte ptr [edi + ebp*2 + 0x20], dh 
  0x001C5409  4a                      dec      edx                            
                                        ; XREF: 0x001C5394 (cond_jump), 0x001C53E7 (cond_jump)
  0x001C540A  50                      push     eax                            
  0x001C540B  45                      inc      ebp                            
  0x001C540C  47                      inc      edi                            
  0x001C540D  206c6962                and      byte ptr [ecx + ebp*2 + 0x62], ch 
  0x001C5411  7261                    jb       0x1c5474                       
  0x001C5413  7279                    jb       0x1c548e                       
  0x001C5415  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C5418  207374                  and      byte ptr [ebx + 0x74], dh      
  0x001C541B  61                      popal                                   
  0x001C541C  7465                    je       0x1c5483                       
  0x001C541E  202564000000            and      byte ptr [0x64], ah            
  0x001C5424  49                      dec      ecx                            
  0x001C5425  6e                      outsb    dx, byte ptr [esi]             
  0x001C5426  7661                    jbe      0x1c5489                       
  0x001C5428  6c                      insb     byte ptr es:[edi], dx          
  0x001C5429  6964207363616e20        imul     esp, dword ptr [eax + 0x73], 0x206e6163 
  0x001C5431  7363                    jae      0x1c5496                       
  0x001C5433  7269                    jb       0x1c549e                       
  0x001C5435  7074                    jo       0x1c54ab                       
  0x001C5437  206174                  and      byte ptr [ecx + 0x74], ah      
                                        ; XREF: 0x001C53D0 (cond_jump)
  0x001C543A  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C543D  7472                    je       0x1c54b1                       
  0x001C543F  7920                    jns      0x1c5461                       
  0x001C5441  256400426f              and      eax, 0x6f420064                
  0x001C5446  677573                  jne      0x1c54bc                       
  0x001C5449  207361                  and      byte ptr [ebx + 0x61], dh      
  0x001C544C  6d                      insd     dword ptr es:[edi], dx         
  0x001C544D  706c                    jo       0x1c54bb                       
  0x001C544F  696e6720666163          imul     ebp, dword ptr [esi + 0x67], 0x63616620 
  0x001C5456  746f                    je       0x1c54c7                       
  0x001C5458  7273                    jb       0x1c54cd                       
  0x001C545A  0000                    add      byte ptr [eax], al             
  0x001C545C  49                      dec      ecx                            
                                        ; XREF: 0x001C53EA (cond_jump)
  0x001C545D  6e                      outsb    dx, byte ptr [esi]             
  0x001C545E  7661                    jbe      0x1c54c1                       
  0x001C5460  6c                      insb     byte ptr es:[edi], dx          
                                        ; XREF: 0x001C543F (cond_jump)
  0x001C5461  69642070726f6772        imul     esp, dword ptr [eax + 0x70], 0x72676f72 
  0x001C5469  657373                  jae      0x1c54df                       
  0x001C546C  69766520706172          imul     esi, dword ptr [esi + 0x65], 0x72617020 
  0x001C5473  61                      popal                                   
                                        ; XREF: 0x001C5411 (cond_jump)
  0x001C5474  6d                      insd     dword ptr es:[edi], dx         
  0x001C5475  657465                  je       0x1c54dd                       
  0x001C5478  7273                    jb       0x1c54ed                       
  0x001C547A  206174                  and      byte ptr [ecx + 0x74], ah      
  0x001C547D  207363                  and      byte ptr [ebx + 0x63], dh      
  0x001C5480  61                      popal                                   
  0x001C5481  6e                      outsb    dx, byte ptr [esi]             
  0x001C5482  207363                  and      byte ptr [ebx + 0x63], dh      
  0x001C5485  7269                    jb       0x1c54f0                       
  0x001C5487  7074                    jo       0x1c54fd                       
                                        ; XREF: 0x001C5426 (cond_jump)
  0x001C5489  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C548C  7472                    je       0x1c5500                       
                                        ; XREF: 0x001C5413 (cond_jump)
  0x001C548E  7920                    jns      0x1c54b0                       
  0x001C5490  2564000049              and      eax, 0x49000064                
  0x001C5495  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C5431 (cond_jump)
  0x001C5496  7661                    jbe      0x1c54f9                       
  0x001C5498  6c                      insb     byte ptr es:[edi], dx          
  0x001C5499  69642070726f6772        imul     esp, dword ptr [eax + 0x70], 0x72676f72 
  0x001C54A1  657373                  jae      0x1c5517                       
  0x001C54A4  69766520706172          imul     esi, dword ptr [esi + 0x65], 0x72617020 
                                        ; XREF: 0x001C5435 (cond_jump)
  0x001C54AB  61                      popal                                   
  0x001C54AC  6d                      insd     dword ptr es:[edi], dx         
  0x001C54AD  657465                  je       0x1c5515                       
                                        ; XREF: 0x001C548E (cond_jump)
  0x001C54B0  7273                    jb       0x1c5525                       
  0x001C54B2  205373                  and      byte ptr [ebx + 0x73], dl      
  0x001C54B5  3d25642053              cmp      eax, 0x53206425                
  0x001C54BA  653d25642041            cmp      eax, 0x41206425                
  0x001C54C0  683d256420              push     0x2064253d                     
  0x001C54C5  41                      inc      ecx                            
  0x001C54C6  6c                      insb     byte ptr es:[edi], dx          
                                        ; XREF: 0x001C5456 (cond_jump)
  0x001C54C7  3d25640000              cmp      eax, 0x6425                    
  0x001C54CC  55                      push     ebp                            
                                        ; XREF: 0x001C5458 (cond_jump)
  0x001C54CD  6e                      outsb    dx, byte ptr [esi]             
  0x001C54CE  7375                    jae      0x1c5545                       
  0x001C54D0  7070                    jo       0x1c5542                       
  0x001C54D2  6f                      outsd    dx, dword ptr [esi]            
  0x001C54D3  7274                    jb       0x1c5549                       
  0x001C54D5  6564204a50              and      byte ptr fs:[edx + 0x50], cl   
  0x001C54DA  45                      inc      ebp                            
  0x001C54DB  47                      inc      edi                            
  0x001C54DC  20646174                and      byte ptr [ecx + 0x74], ah      
  0x001C54E0  61                      popal                                   
  0x001C54E1  207072                  and      byte ptr [eax + 0x72], dh      
  0x001C54E4  65636973                arpl     word ptr gs:[ecx + 0x73], bp   
  0x001C54E8  696f6e20256400          imul     ebp, dword ptr [edi + 0x6e], 0x642520 
  0x001C54EF  00496e                  add      byte ptr [ecx + 0x6e], cl      
  0x001C54F2  7661                    jbe      0x1c5555                       
  0x001C54F4  6c                      insb     byte ptr es:[edi], dx          
  0x001C54F5  6964206d656d6f72        imul     esp, dword ptr [eax + 0x6d], 0x726f6d65 
                                        ; XREF: 0x001C5487 (cond_jump)
  0x001C54FD  7920                    jns      0x1c551f                       
  0x001C54FF  706f                    jo       0x1c5570                       
  0x001C5501  6f                      outsd    dx, dword ptr [esi]            
  0x001C5502  6c                      insb     byte ptr es:[edi], dx          
  0x001C5503  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C5506  6465202564005361        and      byte ptr gs:[0x61530064], ah   
  0x001C550E  6d                      insd     dword ptr es:[edi], dx         
  0x001C550F  706c                    jo       0x1c557d                       
  0x001C5511  696e6720666163          imul     ebp, dword ptr [esi + 0x67], 0x63616620 
  0x001C5518  746f                    je       0x1c5589                       
  0x001C551A  7273                    jb       0x1c558f                       
  0x001C551C  20746f6f                and      byte ptr [edi + ebp*2 + 0x6f], dh 
  0x001C5520  206c6172                and      byte ptr [ecx + 0x72], ch      
  0x001C5524  676520666f              and      byte ptr gs:[bp + 0x6f], ah    
  0x001C5529  7220                    jb       0x1c554b                       
  0x001C552B  696e7465726c65          imul     ebp, dword ptr [esi + 0x74], 0x656c7265 
  0x001C5532  61                      popal                                   
  0x001C5533  7665                    jbe      0x1c559a                       
  0x001C5535  64207363                and      byte ptr fs:[ebx + 0x63], dh   
  0x001C5539  61                      popal                                   
  0x001C553A  6e                      outsb    dx, byte ptr [esi]             
  0x001C553B  005772                  add      byte ptr [edi + 0x72], dl      
  0x001C553E  6f                      outsd    dx, dword ptr [esi]            
  0x001C553F  6e                      outsb    dx, byte ptr [esi]             
  0x001C5540  67204a50                and      byte ptr [bp + si + 0x50], cl  
  0x001C5544  45                      inc      ebp                            
                                        ; XREF: 0x001C54CE (cond_jump)
  0x001C5545  47                      inc      edi                            
  0x001C5546  206c6962                and      byte ptr [ecx + ebp*2 + 0x62], ch 
  0x001C554A  7261                    jb       0x1c55ad                       
  0x001C554C  7279                    jb       0x1c55c7                       
  0x001C554E  207665                  and      byte ptr [esi + 0x65], dh      
  0x001C5551  7273                    jb       0x1c55c6                       
  0x001C5553  696f6e3a206c69          imul     ebp, dword ptr [edi + 0x6e], 0x696c203a 
  0x001C555A  627261                  bound    esi, qword ptr [edx + 0x61]    
  0x001C555D  7279                    jb       0x1c55d8                       
  0x001C555F  206973                  and      byte ptr [ecx + 0x73], ch      
  0x001C5562  2025642c2063            and      byte ptr [0x63202c64], ah      
  0x001C5568  61                      popal                                   
  0x001C5569  6c                      insb     byte ptr es:[edi], dx          
  0x001C556A  6c                      insb     byte ptr es:[edi], dx          
  0x001C556B  657220                  jb       0x1c558e                       
  0x001C556E  657870                  js       0x1c55e1                       
  0x001C5571  6563747320              arpl     word ptr gs:[ebx + esi*2 + 0x20], si 
  0x001C5576  2564000000              and      eax, 0x64                      
  0x001C557B  00426f                  add      byte ptr [edx + 0x6f], al      
  0x001C557E  677573                  jne      0x1c55f4                       
  0x001C5581  206d61                  and      byte ptr [ebp + 0x61], ch      
  0x001C5584  726b                    jb       0x1c55f1                       
  0x001C5586  657220                  jb       0x1c55a9                       
                                        ; XREF: 0x001C5518 (cond_jump)
  0x001C5589  6c                      insb     byte ptr es:[edi], dx          
  0x001C558A  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C558C  677468                  je       0x1c55f7                       
                                        ; XREF: 0x001C551A (cond_jump)
  0x001C558F  00426f                  add      byte ptr [edx + 0x6f], al      
  0x001C5592  677573                  jne      0x1c5608                       
  0x001C5595  204a50                  and      byte ptr [edx + 0x50], cl      
  0x001C5598  45                      inc      ebp                            
  0x001C5599  47                      inc      edi                            
                                        ; XREF: 0x001C5533 (cond_jump)
  0x001C559A  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C559D  6c                      insb     byte ptr es:[edi], dx          
  0x001C559E  6f                      outsd    dx, dword ptr [esi]            
  0x001C559F  7273                    jb       0x1c5614                       
  0x001C55A1  7061                    jo       0x1c5604                       
  0x001C55A3  636500                  arpl     word ptr [ebp], sp             
  0x001C55A6  0000                    add      byte ptr [eax], al             
  0x001C55A8  42                      inc      edx                            
                                        ; XREF: 0x001C5586 (cond_jump)
  0x001C55A9  6f                      outsd    dx, dword ptr [esi]            
  0x001C55AA  677573                  jne      0x1c5620                       
                                        ; XREF: 0x001C554A (cond_jump)
  0x001C55AD  20696e                  and      byte ptr [ecx + 0x6e], ch      
  0x001C55B0  7075                    jo       0x1c5627                       
  0x001C55B2  7420                    je       0x1c55d4                       
  0x001C55B4  636f6c                  arpl     word ptr [edi + 0x6c], bp      
  0x001C55B7  6f                      outsd    dx, dword ptr [esi]            
  0x001C55B8  7273                    jb       0x1c562d                       
  0x001C55BA  7061                    jo       0x1c561d                       
  0x001C55BC  636500                  arpl     word ptr [ebp], sp             
  0x001C55BF  004944                  add      byte ptr [ecx + 0x44], cl      
  0x001C55C2  43                      inc      ebx                            
  0x001C55C3  54                      push     esp                            
  0x001C55C4  206f75                  and      byte ptr [edi + 0x75], ch      
                                        ; XREF: 0x001C554C (cond_jump)
  0x001C55C7  7470                    je       0x1c5639                       
  0x001C55C9  7574                    jne      0x1c563f                       
  0x001C55CB  20626c                  and      byte ptr [edx + 0x6c], ah      
  0x001C55CE  6f                      outsd    dx, dword ptr [esi]            
  0x001C55CF  636b20                  arpl     word ptr [ebx + 0x20], bp      
  0x001C55D2  7369                    jae      0x1c563d                       
                                        ; XREF: 0x001C55B2 (cond_jump)
  0x001C55D4  7a65                    jp       0x1c563b                       
  0x001C55D6  202564206e6f            and      byte ptr [0x6f6e2064], ah      
  0x001C55DC  7420                    je       0x1c55fe                       
  0x001C55DE  7375                    jae      0x1c5655                       
  0x001C55E0  7070                    jo       0x1c5652                       
  0x001C55E2  6f                      outsd    dx, dword ptr [esi]            
  0x001C55E3  7274                    jb       0x1c5659                       
  0x001C55E5  656400496e              add      byte ptr fs:[ecx + 0x6e], cl   
  0x001C55EA  7661                    jbe      0x1c564d                       
  0x001C55EC  6c                      insb     byte ptr es:[edi], dx          
  0x001C55ED  696420636f6d706f        imul     esp, dword ptr [eax + 0x63], 0x6f706d6f 
  0x001C55F5  6e                      outsb    dx, byte ptr [esi]             
  0x001C55F6  656e                    outsb    dx, byte ptr gs:[esi]          
  0x001C55F8  7420                    je       0x1c561a                       
  0x001C55FA  49                      dec      ecx                            
  0x001C55FB  44                      inc      esp                            
  0x001C55FC  20256420696e            and      byte ptr [0x6e692064], ah      
  0x001C5602  20534f                  and      byte ptr [ebx + 0x4f], dl      
  0x001C5605  53                      push     ebx                            
  0x001C5606  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C5592 (cond_jump)
  0x001C5608  42                      inc      edx                            
  0x001C5609  6f                      outsd    dx, dword ptr [esi]            
  0x001C560A  677573                  jne      0x1c5680                       
  0x001C560D  206275                  and      byte ptr [edx + 0x75], ah      
  0x001C5610  6666657220              jb       0x1c5635                       
  0x001C5615  636f6e                  arpl     word ptr [edi + 0x6e], bp      
  0x001C5618  7472                    je       0x1c568c                       
                                        ; XREF: 0x001C55F8 (cond_jump)
  0x001C561A  6f                      outsd    dx, dword ptr [esi]            
  0x001C561B  6c                      insb     byte ptr es:[edi], dx          
  0x001C561C  206d6f                  and      byte ptr [ebp + 0x6f], ch      
  0x001C561F  64650000                add      byte ptr gs:[eax], al          
  0x001C5623  004d41                  add      byte ptr [ebp + 0x41], cl      
  0x001C5626  58                      pop      eax                            
                                        ; XREF: 0x001C55B0 (cond_jump)
  0x001C5627  5f                      pop      edi                            
  0x001C5628  41                      inc      ecx                            
  0x001C5629  4c                      dec      esp                            
  0x001C562A  4c                      dec      esp                            
  0x001C562B  4f                      dec      edi                            
  0x001C562C  43                      inc      ebx                            
                                        ; XREF: 0x001C55B8 (cond_jump)
  0x001C562D  5f                      pop      edi                            
  0x001C562E  43                      inc      ebx                            
  0x001C562F  48                      dec      eax                            
  0x001C5630  55                      push     ebp                            
  0x001C5631  4e                      dec      esi                            
  0x001C5632  4b                      dec      ebx                            
  0x001C5633  206973                  and      byte ptr [ecx + 0x73], ch      
  0x001C5636  207772                  and      byte ptr [edi + 0x72], dh      
                                        ; XREF: 0x001C55C7 (cond_jump)
  0x001C5639  6f                      outsd    dx, dword ptr [esi]            
  0x001C563A  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x001C55D4 (cond_jump)
  0x001C563B  672c20                  sub      al, 0x20                       
  0x001C563E  706c                    jo       0x1c56ac                       
  0x001C5640  6561                    popal                                   
  0x001C5642  7365                    jae      0x1c56a9                       
  0x001C5644  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C5647  7800                    js       0x1c5649                       
                                        ; XREF: 0x001C5647 (cond_jump)
  0x001C5649  0000                    add      byte ptr [eax], al             
  0x001C564B  00414c                  add      byte ptr [ecx + 0x4c], al      
  0x001C564E  49                      dec      ecx                            
  0x001C564F  47                      inc      edi                            
  0x001C5650  4e                      dec      esi                            
  0x001C5651  5f                      pop      edi                            
                                        ; XREF: 0x001C55E0 (cond_jump)
  0x001C5652  54                      push     esp                            
  0x001C5653  59                      pop      ecx                            
  0x001C5654  50                      push     eax                            
                                        ; XREF: 0x001C55DE (cond_jump)
  0x001C5655  45                      inc      ebp                            
  0x001C5656  206973                  and      byte ptr [ecx + 0x73], ch      
                                        ; XREF: 0x001C55E3 (cond_jump)
  0x001C5659  207772                  and      byte ptr [edi + 0x72], dh      
  0x001C565C  6f                      outsd    dx, dword ptr [esi]            
  0x001C565D  6e                      outsb    dx, byte ptr [esi]             
  0x001C565E  672c20                  sub      al, 0x20                       
  0x001C5661  706c                    jo       0x1c56cf                       
  0x001C5663  6561                    popal                                   
  0x001C5665  7365                    jae      0x1c56cc                       
  0x001C5667  206669                  and      byte ptr [esi + 0x69], ah      
  0x001C566A  7800                    js       0x1c566c                       
                                        ; XREF: 0x001C566A (cond_jump)
  0x001C566C  53                      push     ebx                            
  0x001C566D  6f                      outsd    dx, dword ptr [esi]            
  0x001C566E  7272                    jb       0x1c56e2                       
  0x001C5670  792c                    jns      0x1c569e                       
  0x001C5672  20746865                and      byte ptr [eax + ebp*2 + 0x65], dh 
  0x001C5676  7265                    jb       0x1c56dd                       
  0x001C5678  206172                  and      byte ptr [ecx + 0x72], ah      
  0x001C567B  65206c6567              and      byte ptr gs:[ebp + 0x67], ch   
                                        ; XREF: 0x001C560A (cond_jump)
  0x001C5680  61                      popal                                   
  0x001C5681  6c                      insb     byte ptr es:[edi], dx          
  0x001C5682  207265                  and      byte ptr [edx + 0x65], dh      
  0x001C5685  7374                    jae      0x1c56fb                       
  0x001C5687  7269                    jb       0x1c56f2                       
  0x001C5689  6374696f                arpl     word ptr [ecx + ebp*2 + 0x6f], si 
  0x001C568D  6e                      outsb    dx, byte ptr [esi]             
  0x001C568E  7320                    jae      0x1c56b0                       
  0x001C5690  6f                      outsd    dx, dword ptr [esi]            
  0x001C5691  6e                      outsb    dx, byte ptr [esi]             
  0x001C5692  206172                  and      byte ptr [ecx + 0x72], ah      
  0x001C5695  6974686d65746963        imul     esi, dword ptr [eax + ebp*2 + 0x6d], 0x63697465 
  0x001C569D  20636f                  and      byte ptr [ebx + 0x6f], ah      
  0x001C56A0  64696e6700000000        imul     ebp, dword ptr fs:[esi + 0x67], 0 
  0x001C56A8  42                      inc      edx                            
                                        ; XREF: 0x001C5642 (cond_jump)
  0x001C56A9  6f                      outsd    dx, dword ptr [esi]            
  0x001C56AA  677573                  jne      0x1c5720                       
  0x001C56AD  206d65                  and      byte ptr [ebp + 0x65], ch      
                                        ; XREF: 0x001C568E (cond_jump)
  0x001C56B0  7373                    jae      0x1c5725                       
  0x001C56B2  61                      popal                                   
  0x001C56B3  676520636f              and      byte ptr gs:[bp + di + 0x6f], ah 
  0x001C56B8  6465202564000000        and      byte ptr gs:[0x64], ah         
  0x001C56C0  3031                    xor      byte ptr [ecx], dh             
  0x001C56C2  3233                    xor      dh, byte ptr [ebx]             
  0x001C56C4  3435                    xor      al, 0x35                       
  0x001C56C6  3637                    aaa                                     
  0x001C56C8  3839                    cmp      byte ptr [ecx], bh             
  0x001C56CA  41                      inc      ecx                            
  0x001C56CB  42                      inc      edx                            
                                        ; XREF: 0x001C5665 (cond_jump)
  0x001C56CC  43                      inc      ebx                            
  0x001C56CD  44                      inc      esp                            
  0x001C56CE  45                      inc      ebp                            
                                        ; XREF: 0x001C5661 (cond_jump)
  0x001C56CF  46                      inc      esi                            
  0x001C56D0  312e                    xor      dword ptr [esi], ebp           
  0x001C56D2  302e                    xor      byte ptr [esi], ch             
  0x001C56D4  3500000000              xor      eax, 0                         
  0x001C56D9  0000                    add      byte ptr [eax], al             
  0x001C56DB  008000000008            add      byte ptr [eax + 0x8000000], al 
  0x001C56E1  0000                    add      byte ptr [eax], al             
  0x001C56E3  008800000022            add      byte ptr [eax + 0x22000000], cl 
  0x001C56E9  0000                    add      byte ptr [eax], al             
  0x001C56EB  00aa00000055            add      byte ptr [edx + 0x55000000], ch 
  0x001C56F1  0000                    add      byte ptr [eax], al             
  0x001C56F3  00ff                    add      bh, bh                         
  0x001C56F5  0000                    add      byte ptr [eax], al             
  0x001C56F7  00ff                    add      bh, bh                         
  0x001C56F9  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C5685 (cond_jump)
  0x001C56FB  000f                    add      byte ptr [edi], cl             
  0x001C56FD  0000                    add      byte ptr [eax], al             
  0x001C56FF  00ff                    add      bh, bh                         
  0x001C5701  0000                    add      byte ptr [eax], al             
  0x001C5703  0033                    add      byte ptr [ebx], dh             
  0x001C5705  0000                    add      byte ptr [eax], al             
  0x001C5707  00ff                    add      bh, bh                         
  0x001C5709  0000                    add      byte ptr [eax], al             
  0x001C570B  005500                  add      byte ptr [ebp], dl             
  0x001C570E  0000                    add      byte ptr [eax], al             
  0x001C5710  ff00                    inc      dword ptr [eax]                
  0x001C5712  0000                    add      byte ptr [eax], al             
  0x001C5714  49                      dec      ecx                            
  0x001C5715  48                      dec      eax                            
  0x001C5716  44                      inc      esp                            
  0x001C5717  52                      push     edx                            
  0x001C5718  0000                    add      byte ptr [eax], al             
  0x001C571A  0000                    add      byte ptr [eax], al             
  0x001C571C  49                      dec      ecx                            
  0x001C571D  44                      inc      esp                            
  0x001C571E  41                      inc      ecx                            
  0x001C571F  54                      push     esp                            
                                        ; XREF: 0x001C56AA (cond_jump)
  0x001C5720  0000                    add      byte ptr [eax], al             
  0x001C5722  0000                    add      byte ptr [eax], al             
  0x001C5724  49                      dec      ecx                            
                                        ; XREF: 0x001C56B0 (cond_jump)
  0x001C5725  45                      inc      ebp                            
  0x001C5726  4e                      dec      esi                            
  0x001C5727  44                      inc      esp                            
  0x001C5728  0000                    add      byte ptr [eax], al             
  0x001C572A  0000                    add      byte ptr [eax], al             
  0x001C572C  50                      push     eax                            
  0x001C572D  4c                      dec      esp                            
  0x001C572E  54                      push     esp                            
  0x001C572F  45                      inc      ebp                            
  0x001C5730  0000                    add      byte ptr [eax], al             
  0x001C5732  0000                    add      byte ptr [eax], al             
  0x001C5734  6741                    inc      ecx                            
  0x001C5736  4d                      dec      ebp                            
  0x001C5737  41                      inc      ecx                            
  0x001C5738  0000                    add      byte ptr [eax], al             
  0x001C573A  0000                    add      byte ptr [eax], al             
  0x001C573C  7352                    jae      0x1c5790                       
  0x001C573E  47                      inc      edi                            
  0x001C573F  42                      inc      edx                            
  0x001C5740  0000                    add      byte ptr [eax], al             
  0x001C5742  0000                    add      byte ptr [eax], al             
  0x001C5744  7452                    je       0x1c5798                       
  0x001C5746  4e                      dec      esi                            
  0x001C5747  53                      push     ebx                            
  0x001C5748  0000                    add      byte ptr [eax], al             
  0x001C574A  0000                    add      byte ptr [eax], al             
  0x001C574C  89504e                  mov      dword ptr [eax + 0x4e], edx    
  0x001C574F  47                      inc      edi                            
  0x001C5750  0d0a1a0a00              or       eax, 0xa1a0a                   
  0x001C5755  0000                    add      byte ptr [eax], al             
  0x001C5757  0000                    add      byte ptr [eax], al             
  0x001C5759  0000                    add      byte ptr [eax], al             
  0x001C575B  0001                    add      byte ptr [ecx], al             
  0x001C575D  0000                    add      byte ptr [eax], al             
  0x001C575F  000500000006            add      byte ptr [0x6000000], al       
  0x001C5765  0000                    add      byte ptr [eax], al             
  0x001C5767  000e                    add      byte ptr [esi], cl             
  0x001C5769  0000                    add      byte ptr [eax], al             
  0x001C576B  000f                    add      byte ptr [edi], cl             
  0x001C576D  0000                    add      byte ptr [eax], al             
  0x001C576F  001b                    add      byte ptr [ebx], bl             
  0x001C5771  0000                    add      byte ptr [eax], al             
  0x001C5773  001c00                  add      byte ptr [eax + eax], bl       
  0x001C5776  0000                    add      byte ptr [eax], al             
  0x001C5778  0200                    add      al, byte ptr [eax]             
  0x001C577A  0000                    add      byte ptr [eax], al             
  0x001C577C  0400                    add      al, 0                          
  0x001C577E  0000                    add      byte ptr [eax], al             
  0x001C5780  07                      pop      es                             
  0x001C5781  0000                    add      byte ptr [eax], al             
  0x001C5783  000d00000010            add      byte ptr [0x10000000], cl      
  0x001C5789  0000                    add      byte ptr [eax], al             
  0x001C578B  001a                    add      byte ptr [edx], bl             
  0x001C578D  0000                    add      byte ptr [eax], al             
  0x001C578F  001d0000002a            add      byte ptr [0x2a000000], bl      
  0x001C5795  0000                    add      byte ptr [eax], al             
  0x001C5797  0003                    add      byte ptr [ebx], al             
  0x001C5799  0000                    add      byte ptr [eax], al             
  0x001C579B  0008                    add      byte ptr [eax], cl             
  0x001C579D  0000                    add      byte ptr [eax], al             
  0x001C579F  000c00                  add      byte ptr [eax + eax], cl       
  0x001C57A2  0000                    add      byte ptr [eax], al             
  0x001C57A4  1100                    adc      dword ptr [eax], eax           
  0x001C57A6  0000                    add      byte ptr [eax], al             
  0x001C57A8  1900                    sbb      dword ptr [eax], eax           
  0x001C57AA  0000                    add      byte ptr [eax], al             
  0x001C57AC  1e                      push     ds                             
  0x001C57AD  0000                    add      byte ptr [eax], al             
  0x001C57AF  0029                    add      byte ptr [ecx], ch             
  0x001C57B1  0000                    add      byte ptr [eax], al             
  0x001C57B3  002b                    add      byte ptr [ebx], ch             
  0x001C57B5  0000                    add      byte ptr [eax], al             
  0x001C57B7  0009                    add      byte ptr [ecx], cl             
  0x001C57B9  0000                    add      byte ptr [eax], al             
  0x001C57BB  000b                    add      byte ptr [ebx], cl             
  0x001C57BD  0000                    add      byte ptr [eax], al             
  0x001C57BF  0012                    add      byte ptr [edx], dl             
  0x001C57C1  0000                    add      byte ptr [eax], al             
  0x001C57C3  0018                    add      byte ptr [eax], bl             
  0x001C57C5  0000                    add      byte ptr [eax], al             
  0x001C57C7  001f                    add      byte ptr [edi], bl             
  0x001C57C9  0000                    add      byte ptr [eax], al             
  0x001C57CB  0028                    add      byte ptr [eax], ch             
  0x001C57CD  0000                    add      byte ptr [eax], al             
  0x001C57CF  002c00                  add      byte ptr [eax + eax], ch       
  0x001C57D2  0000                    add      byte ptr [eax], al             
  0x001C57D4  350000000a              xor      eax, 0xa000000                 
  0x001C57D9  0000                    add      byte ptr [eax], al             
  0x001C57DB  0013                    add      byte ptr [ebx], dl             
  0x001C57DD  0000                    add      byte ptr [eax], al             
  0x001C57DF  0017                    add      byte ptr [edi], dl             
  0x001C57E1  0000                    add      byte ptr [eax], al             
  0x001C57E3  0020                    add      byte ptr [eax], ah             
  0x001C57E5  0000                    add      byte ptr [eax], al             
  0x001C57E7  0027                    add      byte ptr [edi], ah             
  0x001C57E9  0000                    add      byte ptr [eax], al             
  0x001C57EB  002d00000034            add      byte ptr [0x34000000], ch      
  0x001C57F1  0000                    add      byte ptr [eax], al             
  0x001C57F3  0036                    add      byte ptr [esi], dh             
  0x001C57F5  0000                    add      byte ptr [eax], al             
  0x001C57F7  001400                  add      byte ptr [eax + eax], dl       
  0x001C57FA  0000                    add      byte ptr [eax], al             
  0x001C57FC  16                      push     ss                             
  0x001C57FD  0000                    add      byte ptr [eax], al             
  0x001C57FF  0021                    add      byte ptr [ecx], ah             
  0x001C5801  0000                    add      byte ptr [eax], al             
  0x001C5803  0026                    add      byte ptr [esi], ah             
  0x001C5805  0000                    add      byte ptr [eax], al             
  0x001C5807  002e                    add      byte ptr [esi], ch             
  0x001C5809  0000                    add      byte ptr [eax], al             
  0x001C580B  0033                    add      byte ptr [ebx], dh             
  0x001C580D  0000                    add      byte ptr [eax], al             
  0x001C580F  0037                    add      byte ptr [edi], dh             
  0x001C5811  0000                    add      byte ptr [eax], al             
  0x001C5813  003c00                  add      byte ptr [eax + eax], bh       
  0x001C5816  0000                    add      byte ptr [eax], al             
  0x001C5818  1500000022              adc      eax, 0x22000000                
  0x001C581D  0000                    add      byte ptr [eax], al             
  0x001C581F  00250000002f            add      byte ptr [0x2f000000], ah      
  0x001C5825  0000                    add      byte ptr [eax], al             
  0x001C5827  0032                    add      byte ptr [edx], dh             
  0x001C5829  0000                    add      byte ptr [eax], al             
  0x001C582B  0038                    add      byte ptr [eax], bh             
  0x001C582D  0000                    add      byte ptr [eax], al             
  0x001C582F  003b                    add      byte ptr [ebx], bh             
  0x001C5831  0000                    add      byte ptr [eax], al             
  0x001C5833  003d00000023            add      byte ptr [0x23000000], bh      
  0x001C5839  0000                    add      byte ptr [eax], al             
  0x001C583B  002400                  add      byte ptr [eax + eax], ah       
  0x001C583E  0000                    add      byte ptr [eax], al             
  0x001C5840  3000                    xor      byte ptr [eax], al             
  0x001C5842  0000                    add      byte ptr [eax], al             
  0x001C5844  3100                    xor      dword ptr [eax], eax           
  0x001C5846  0000                    add      byte ptr [eax], al             
  0x001C5848  3900                    cmp      dword ptr [eax], eax           
  0x001C584A  0000                    add      byte ptr [eax], al             
  0x001C584C  3a00                    cmp      al, byte ptr [eax]             
  0x001C584E  0000                    add      byte ptr [eax], al             
  0x001C5850  3e0000                  add      byte ptr ds:[eax], al          
  0x001C5853  003f                    add      byte ptr [edi], bh             
  0x001C5855  0000                    add      byte ptr [eax], al             
  0x001C5857  0000                    add      byte ptr [eax], al             
  0x001C5859  0000                    add      byte ptr [eax], al             
  0x001C585B  0001                    add      byte ptr [ecx], al             
  0x001C585D  0000                    add      byte ptr [eax], al             
  0x001C585F  0008                    add      byte ptr [eax], cl             
  0x001C5861  0000                    add      byte ptr [eax], al             
  0x001C5863  0010                    add      byte ptr [eax], dl             
  0x001C5865  0000                    add      byte ptr [eax], al             
  0x001C5867  0009                    add      byte ptr [ecx], cl             
  0x001C5869  0000                    add      byte ptr [eax], al             
  0x001C586B  0002                    add      byte ptr [edx], al             
  0x001C586D  0000                    add      byte ptr [eax], al             
  0x001C586F  0003                    add      byte ptr [ebx], al             
  0x001C5871  0000                    add      byte ptr [eax], al             
  0x001C5873  000a                    add      byte ptr [edx], cl             
  0x001C5875  0000                    add      byte ptr [eax], al             
  0x001C5877  0011                    add      byte ptr [ecx], dl             
  0x001C5879  0000                    add      byte ptr [eax], al             
  0x001C587B  0018                    add      byte ptr [eax], bl             
  0x001C587D  0000                    add      byte ptr [eax], al             
  0x001C587F  0020                    add      byte ptr [eax], ah             
  0x001C5881  0000                    add      byte ptr [eax], al             
  0x001C5883  0019                    add      byte ptr [ecx], bl             
  0x001C5885  0000                    add      byte ptr [eax], al             
  0x001C5887  0012                    add      byte ptr [edx], dl             
  0x001C5889  0000                    add      byte ptr [eax], al             
  0x001C588B  000b                    add      byte ptr [ebx], cl             
  0x001C588D  0000                    add      byte ptr [eax], al             
  0x001C588F  000400                  add      byte ptr [eax + eax], al       
  0x001C5892  0000                    add      byte ptr [eax], al             
  0x001C5894  050000000c              add      eax, 0xc000000                 
  0x001C5899  0000                    add      byte ptr [eax], al             
  0x001C589B  0013                    add      byte ptr [ebx], dl             
  0x001C589D  0000                    add      byte ptr [eax], al             
  0x001C589F  001a                    add      byte ptr [edx], bl             
  0x001C58A1  0000                    add      byte ptr [eax], al             
  0x001C58A3  0021                    add      byte ptr [ecx], ah             
  0x001C58A5  0000                    add      byte ptr [eax], al             
  0x001C58A7  0028                    add      byte ptr [eax], ch             
  0x001C58A9  0000                    add      byte ptr [eax], al             
  0x001C58AB  0030                    add      byte ptr [eax], dh             
  0x001C58AD  0000                    add      byte ptr [eax], al             
  0x001C58AF  0029                    add      byte ptr [ecx], ch             
  0x001C58B1  0000                    add      byte ptr [eax], al             
  0x001C58B3  0022                    add      byte ptr [edx], ah             
  0x001C58B5  0000                    add      byte ptr [eax], al             
  0x001C58B7  001b                    add      byte ptr [ebx], bl             
  0x001C58B9  0000                    add      byte ptr [eax], al             
  0x001C58BB  001400                  add      byte ptr [eax + eax], dl       
  0x001C58BE  0000                    add      byte ptr [eax], al             
  0x001C58C0  0d00000006              or       eax, 0x6000000                 
  0x001C58C5  0000                    add      byte ptr [eax], al             
  0x001C58C7  0007                    add      byte ptr [edi], al             
  0x001C58C9  0000                    add      byte ptr [eax], al             
  0x001C58CB  000e                    add      byte ptr [esi], cl             
  0x001C58CD  0000                    add      byte ptr [eax], al             
  0x001C58CF  00150000001c            add      byte ptr [0x1c000000], dl      
  0x001C58D5  0000                    add      byte ptr [eax], al             
  0x001C58D7  0023                    add      byte ptr [ebx], ah             
  0x001C58D9  0000                    add      byte ptr [eax], al             
  0x001C58DB  002a                    add      byte ptr [edx], ch             
  0x001C58DD  0000                    add      byte ptr [eax], al             
  0x001C58DF  0031                    add      byte ptr [ecx], dh             
  0x001C58E1  0000                    add      byte ptr [eax], al             
  0x001C58E3  0038                    add      byte ptr [eax], bh             
  0x001C58E5  0000                    add      byte ptr [eax], al             
  0x001C58E7  0039                    add      byte ptr [ecx], bh             
  0x001C58E9  0000                    add      byte ptr [eax], al             
  0x001C58EB  0032                    add      byte ptr [edx], dh             
  0x001C58ED  0000                    add      byte ptr [eax], al             
  0x001C58EF  002b                    add      byte ptr [ebx], ch             
  0x001C58F1  0000                    add      byte ptr [eax], al             
  0x001C58F3  002400                  add      byte ptr [eax + eax], ah       
  0x001C58F6  0000                    add      byte ptr [eax], al             
  0x001C58F8  1d00000016              sbb      eax, 0x16000000                
  0x001C58FD  0000                    add      byte ptr [eax], al             
  0x001C58FF  000f                    add      byte ptr [edi], cl             
  0x001C5901  0000                    add      byte ptr [eax], al             
  0x001C5903  0017                    add      byte ptr [edi], dl             
  0x001C5905  0000                    add      byte ptr [eax], al             
  0x001C5907  001e                    add      byte ptr [esi], bl             
  0x001C5909  0000                    add      byte ptr [eax], al             
  0x001C590B  00250000002c            add      byte ptr [0x2c000000], ah      
  0x001C5911  0000                    add      byte ptr [eax], al             
  0x001C5913  0033                    add      byte ptr [ebx], dh             
  0x001C5915  0000                    add      byte ptr [eax], al             
  0x001C5917  003a                    add      byte ptr [edx], bh             
  0x001C5919  0000                    add      byte ptr [eax], al             
  0x001C591B  003b                    add      byte ptr [ebx], bh             
  0x001C591D  0000                    add      byte ptr [eax], al             
  0x001C591F  003400                  add      byte ptr [eax + eax], dh       
  0x001C5922  0000                    add      byte ptr [eax], al             
  0x001C5924  2d00000026              sub      eax, 0x26000000                
  0x001C5929  0000                    add      byte ptr [eax], al             
  0x001C592B  001f                    add      byte ptr [edi], bl             
  0x001C592D  0000                    add      byte ptr [eax], al             
  0x001C592F  0027                    add      byte ptr [edi], ah             
  0x001C5931  0000                    add      byte ptr [eax], al             
  0x001C5933  002e                    add      byte ptr [esi], ch             
  0x001C5935  0000                    add      byte ptr [eax], al             
  0x001C5937  00350000003c            add      byte ptr [0x3c000000], dh      
  0x001C593D  0000                    add      byte ptr [eax], al             
  0x001C593F  003d00000036            add      byte ptr [0x36000000], bh      
  0x001C5945  0000                    add      byte ptr [eax], al             
  0x001C5947  002f                    add      byte ptr [edi], ch             
  0x001C5949  0000                    add      byte ptr [eax], al             
  0x001C594B  0037                    add      byte ptr [edi], dh             
  0x001C594D  0000                    add      byte ptr [eax], al             
  0x001C594F  003e                    add      byte ptr [esi], bh             
  0x001C5951  0000                    add      byte ptr [eax], al             
  0x001C5953  003f                    add      byte ptr [edi], bh             
  0x001C5955  0000                    add      byte ptr [eax], al             
  0x001C5957  003f                    add      byte ptr [edi], bh             
  0x001C5959  0000                    add      byte ptr [eax], al             
  0x001C595B  003f                    add      byte ptr [edi], bh             
  0x001C595D  0000                    add      byte ptr [eax], al             
  0x001C595F  003f                    add      byte ptr [edi], bh             
  0x001C5961  0000                    add      byte ptr [eax], al             
  0x001C5963  003f                    add      byte ptr [edi], bh             
  0x001C5965  0000                    add      byte ptr [eax], al             
  0x001C5967  003f                    add      byte ptr [edi], bh             
  0x001C5969  0000                    add      byte ptr [eax], al             
  0x001C596B  003f                    add      byte ptr [edi], bh             
  0x001C596D  0000                    add      byte ptr [eax], al             
  0x001C596F  003f                    add      byte ptr [edi], bh             
  0x001C5971  0000                    add      byte ptr [eax], al             
  0x001C5973  003f                    add      byte ptr [edi], bh             
  0x001C5975  0000                    add      byte ptr [eax], al             
  0x001C5977  003f                    add      byte ptr [edi], bh             
  0x001C5979  0000                    add      byte ptr [eax], al             
  0x001C597B  003f                    add      byte ptr [edi], bh             
  0x001C597D  0000                    add      byte ptr [eax], al             
  0x001C597F  003f                    add      byte ptr [edi], bh             
  0x001C5981  0000                    add      byte ptr [eax], al             
  0x001C5983  003f                    add      byte ptr [edi], bh             
  0x001C5985  0000                    add      byte ptr [eax], al             
  0x001C5987  003f                    add      byte ptr [edi], bh             
  0x001C5989  0000                    add      byte ptr [eax], al             
  0x001C598B  003f                    add      byte ptr [edi], bh             
  0x001C598D  0000                    add      byte ptr [eax], al             
  0x001C598F  003f                    add      byte ptr [edi], bh             
  0x001C5991  0000                    add      byte ptr [eax], al             
  0x001C5993  003f                    add      byte ptr [edi], bh             
  0x001C5995  0000                    add      byte ptr [eax], al             
  0x001C5997  004006                  add      byte ptr [eax + 6], al         
  0x001C599A  0000                    add      byte ptr [eax], al             
  0x001C599C  803e00                  cmp      byte ptr [esi], 0              
  0x001C599F  0000                    add      byte ptr [eax], al             
  0x001C59A1  0000                    add      byte ptr [eax], al             
  0x001C59A3  00881300006e            add      byte ptr [eax + 0x6e000013], cl 
  0x001C59A9  65656420646963          and      byte ptr fs:[ecx + ebp*2 + 0x63], ah 
  0x001C59B0  7469                    je       0x1c5a1b                       
  0x001C59B2  6f                      outsd    dx, dword ptr [esi]            
  0x001C59B3  6e                      outsb    dx, byte ptr [esi]             
  0x001C59B4  61                      popal                                   
  0x001C59B5  7279                    jb       0x1c5a30                       
  0x001C59B7  0000                    add      byte ptr [eax], al             
  0x001C59B9  0000                    add      byte ptr [eax], al             
  0x001C59BB  000400                  add      byte ptr [eax + eax], al       
  0x001C59BE  0000                    add      byte ptr [eax], al             
  0x001C59C0  0000                    add      byte ptr [eax], al             
  0x001C59C2  0000                    add      byte ptr [eax], al             
  0x001C59C4  0200                    add      al, byte ptr [eax]             
  0x001C59C6  0000                    add      byte ptr [eax], al             
  0x001C59C8  0000                    add      byte ptr [eax], al             
  0x001C59CA  0000                    add      byte ptr [eax], al             
  0x001C59CC  0100                    add      dword ptr [eax], eax           
  0x001C59CE  0000                    add      byte ptr [eax], al             
  0x001C59D0  0000                    add      byte ptr [eax], al             
  0x001C59D2  0000                    add      byte ptr [eax], al             
  0x001C59D4  0800                    or       byte ptr [eax], al             
  0x001C59D6  0000                    add      byte ptr [eax], al             
  0x001C59D8  0800                    or       byte ptr [eax], al             
  0x001C59DA  0000                    add      byte ptr [eax], al             
  0x001C59DC  0400                    add      al, 0                          
  0x001C59DE  0000                    add      byte ptr [eax], al             
  0x001C59E0  0400                    add      al, 0                          
  0x001C59E2  0000                    add      byte ptr [eax], al             
  0x001C59E4  0200                    add      al, byte ptr [eax]             
  0x001C59E6  0000                    add      byte ptr [eax], al             
  0x001C59E8  0200                    add      al, byte ptr [eax]             
  0x001C59EA  0000                    add      byte ptr [eax], al             
  0x001C59EC  0100                    add      dword ptr [eax], eax           
  0x001C59EE  0000                    add      byte ptr [eax], al             
  0x001C59F0  0000                    add      byte ptr [eax], al             
  0x001C59F2  0000                    add      byte ptr [eax], al             
  0x001C59F4  0000                    add      byte ptr [eax], al             
  0x001C59F6  0000                    add      byte ptr [eax], al             
  0x001C59F8  0400                    add      al, 0                          
  0x001C59FA  0000                    add      byte ptr [eax], al             
  0x001C59FC  0000                    add      byte ptr [eax], al             
  0x001C59FE  0000                    add      byte ptr [eax], al             
  0x001C5A00  0200                    add      al, byte ptr [eax]             
  0x001C5A02  0000                    add      byte ptr [eax], al             
  0x001C5A04  0000                    add      byte ptr [eax], al             
  0x001C5A06  0000                    add      byte ptr [eax], al             
  0x001C5A08  0100                    add      dword ptr [eax], eax           
  0x001C5A0A  0000                    add      byte ptr [eax], al             
  0x001C5A0C  0800                    or       byte ptr [eax], al             
  0x001C5A0E  0000                    add      byte ptr [eax], al             
  0x001C5A10  0800                    or       byte ptr [eax], al             
  0x001C5A12  0000                    add      byte ptr [eax], al             
  0x001C5A14  0800                    or       byte ptr [eax], al             
  0x001C5A16  0000                    add      byte ptr [eax], al             
  0x001C5A18  0400                    add      al, 0                          
  0x001C5A1A  0000                    add      byte ptr [eax], al             
  0x001C5A1C  0400                    add      al, 0                          
  0x001C5A1E  0000                    add      byte ptr [eax], al             
  0x001C5A20  0200                    add      al, byte ptr [eax]             
  0x001C5A22  0000                    add      byte ptr [eax], al             
  0x001C5A24  0200                    add      al, byte ptr [eax]             
  0x001C5A26  0000                    add      byte ptr [eax], al             
  0x001C5A28  49                      dec      ecx                            
  0x001C5A29  44                      inc      esp                            
  0x001C5A2A  41                      inc      ecx                            
  0x001C5A2B  54                      push     esp                            
  0x001C5A2C  0000                    add      byte ptr [eax], al             
  0x001C5A2E  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C59B5 (cond_jump)
  0x001C5A30  0000                    add      byte ptr [eax], al             
  0x001C5A32  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C5A79 (cond_jump)
  0x001C5A34  96                      xchg     esi, eax                       
  0x001C5A35  3007                    xor      byte ptr [edi], al             
  0x001C5A37  772c                    ja       0x1c5a65                       
  0x001C5A39  61                      popal                                   
  0x001C5A3A  0e                      push     cs                             
  0x001C5A3B  ee                      out      dx, al                         
  0x001C5A3C  ba51099919              mov      edx, 0x19990951                
  0x001C5A41  c46d07                  les      ebp, ptr [ebp + 7]             
  0x001C5A45  f4                      hlt                                     
  0x001C5A46  6a70                    push     0x70                           
  0x001C5A48  35a563e9a3              xor      eax, 0xa3e963a5                
  0x001C5A4D  95                      xchg     ebp, eax                       
  0x001C5A4E  649e                    sahf                                    
  0x001C5A50  3288db0ea4b8            xor      cl, byte ptr [eax - 0x475bf125] 
  0x001C5A56  dc791e                  fdivr    qword ptr [ecx + 0x1e]         
  0x001C5A59  e9d5e088d9              jmp      0xd9a53b33                     
  0x001C5A5E  d2972b4cb609            rcl      byte ptr [edi + 0x9b64c2b], cl 
  0x001C5A64  bd7cb17e07              mov      ebp, 0x77eb17c                 
  0x001C5A69  2db8e7911d              sub      eax, 0x1d91e7b8                
  0x001C5A6E  bf906410b7              mov      edi, 0xb7106490                
  0x001C5A73  1df220b06a              sbb      eax, 0x6ab020f2                
  0x001C5A78  48                      dec      eax                            
  0x001C5A79  71b9                    jno      0x1c5a34                       
  0x001C5A7B  f3de41be                fiadd    word ptr [ecx - 0x42]          
  0x001C5A7F  847dd4                  test     byte ptr [ebp - 0x2c], bh      
  0x001C5A82  da1a                    ficomp   dword ptr [edx]                
  0x001C5A84  ebe4                    jmp      0x1c5a6a                       
  0x001C5A87  6d                      insd     dword ptr es:[edi], dx         
  0x001C5A88  51                      push     ecx                            
  0x001C5A89  b5d4                    mov      ch, 0xd4                       
  0x001C5A8B  f4                      hlt                                     
  0x001C5A8C  c785d38356986c13c0a8    mov      dword ptr [ebp - 0x67a97c2d], 0xa8c0136c 
  0x001C5A96  6b647af962              imul     esp, dword ptr [edx + edi*2 - 7], 0x62 
  0x001C5A9B  fd                      std                                     
  0x001C5A9C  ec                      in       al, dx                         
  0x001C5A9D  c9                      leave                                   
  0x001C5A9E  658a4f5c                mov      cl, byte ptr gs:[edi + 0x5c]   
  0x001C5AA2  0114d9                  add      dword ptr [ecx + ebx*8], edx   
  0x001C5AA5  6c                      insb     byte ptr es:[edi], dx          
  0x001C5AA6  06                      push     es                             
  0x001C5AA7  63633d                  arpl     word ptr [ebx + 0x3d], sp      
  0x001C5AAA  0ffaf5                  psubd    mm6, mm5                       
  0x001C5AAD  0d088dc820              or       eax, 0x20c88d08                
  0x001C5AB2  6e                      outsb    dx, byte ptr [esi]             
  0x001C5AB3  3b5e10                  cmp      ebx, dword ptr [esi + 0x10]    
  0x001C5AB6  694ce44160d57271        imul     ecx, dword ptr [esp + 0x41], 0x7172d560 
  0x001C5ABE  67a2d1e4                mov      byte ptr [0xe4d1], al          
  0x001C5AC2  033c47                  add      edi, dword ptr [edi + eax*2]   
  0x001C5AC5  d404                    aam      4                              
  0x001C5AC7  4b                      dec      ebx                            
  0x001C5AC8  fd                      std                                     
  0x001C5AC9  850dd26bb50a            test     dword ptr [0xab56bd2], ecx     
  0x001C5ACF  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C5AD0  fa                      cli                                     
  0x001C5AD1  a8b5                    test     al, 0xb5                       
  0x001C5AD3  356c98b242              xor      eax, 0x42b2986c                
  0x001C5AD8  d6                      salc                                    
  0x001C5AD9  c9                      leave                                   
  0x001C5ADA  bbdb40f9bc              mov      ebx, 0xbcf940db                
  0x001C5ADF  ac                      lodsb    al, byte ptr [esi]             
  0x001C5AE0  e36c                    jecxz    0x1c5b4e                       
  0x001C5AE2  d832                    fdiv     dword ptr [edx]                
  0x001C5AE4  755c                    jne      0x1c5b42                       
  0x001C5AE6  df45cf                  fild     word ptr [ebp - 0x31]          
  0x001C5AE9  0dd6dc593d              or       eax, 0x3d59dcd6                
  0x001C5AEE  d1abac30d926            shr      dword ptr [ebx + 0x26d930ac], 1 
  0x001C5AF4  3a00                    cmp      al, byte ptr [eax]             
  0x001C5AF6  de5180                  ficom    word ptr [ecx - 0x80]          
  0x001C5AF9  51                      push     ecx                            
  0x001C5AFA  d7                      xlatb                                   
  0x001C5AFB  c81661d0                enter    0x6116, -0x30                  
  0x001C5AFF  bfb5f4b421              mov      edi, 0x21b4f4b5                
  0x001C5B04  23c4                    and      eax, esp                       
  0x001C5B06  b356                    mov      bl, 0x56                       
  0x001C5B08  99                      cdq                                     
  0x001C5B09  95                      xchg     ebp, eax                       
  0x001C5B0A  bacf0fa5bd              mov      edx, 0xbda50fcf                
  0x001C5B0F  b89eb80228              mov      eax, 0x2802b89e                
  0x001C5B14  0888055fb2d9            or       byte ptr [eax - 0x264da0fb], cl 
  0x001C5B1A  0cc6                    or       al, 0xc6                       
                                        ; XREF: 0x001C5B5F (cond_jump)
  0x001C5B1C  24e9                    and      al, 0xe9                       
  0x001C5B1E  0bb1877c6f2f            or       esi, dword ptr [ecx + 0x2f6f7c87] 
  0x001C5B24  114c6858                adc      dword ptr [eax + ebp*2 + 0x58], ecx 
  0x001C5B28  ab                      stosd    dword ptr es:[edi], eax        
  0x001C5B29  1d61c13d2d              sbb      eax, 0x2d3dc161                
  0x001C5B2E  66b690                  mov      dh, 0x90                       
  0x001C5B31  41                      inc      ecx                            
  0x001C5B32  dc7606                  fdiv     qword ptr [esi + 6]            
  0x001C5B35  71db                    jno      0x1c5b12                       
  0x001C5B37  01bc20d2982a10          add      dword ptr [eax + 0x102a98d2], edi 
  0x001C5B3E  d5ef                    aad      0xef                           
  0x001C5B40  8985b1711fb5            mov      dword ptr [ebp - 0x4ae08e4f], eax 
  0x001C5B46  b606                    mov      dh, 6                          
  0x001C5B48  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C5B49  e4bf                    in       al, 0xbf                       
  0x001C5B4B  9f                      lahf                                    
  0x001C5B4C  33d4                    xor      edx, esp                       
                                        ; XREF: 0x001C5AE0 (cond_jump)
  0x001C5B4E  b8e8a2c907              mov      eax, 0x7c9a2e8                 
  0x001C5B53  7834                    js       0x1c5b89                       
  0x001C5B55  f9                      stc                                     
  0x001C5B56  000f                    add      byte ptr [edi], cl             
  0x001C5B58  8ea809961898            mov      gs, word ptr [eax - 0x67e769f7] 
  0x001C5B5E  0e                      push     cs                             
  0x001C5B5F  e1bb                    loope    0x1c5b1c                       
  0x001C5B61  0d6a7f2d3d              or       eax, 0x3d2d7f6a                
  0x001C5B66  6d                      insd     dword ptr es:[edi], dx         
  0x001C5B67  08976c649101            or       byte ptr [edi + 0x191646c], dl 
  0x001C5B6D  5c                      pop      esp                            
  0x001C5B6E  63e6                    arpl     si, sp                         
  0x001C5B70  f4                      hlt                                     
  0x001C5B71  51                      push     ecx                            
  0x001C5B72  6b6b6261                imul     ebp, dword ptr [ebx + 0x62], 0x61 
  0x001C5B76  6c                      insb     byte ptr es:[edi], dx          
  0x001C5B77  1cd8                    sbb      al, 0xd8                       
  0x001C5B79  306585                  xor      byte ptr [ebp - 0x7b], ah      
  0x001C5B7C  4e                      dec      esi                            
  0x001C5B7D  0062f2                  add      byte ptr [edx - 0xe], ah       
  0x001C5B80  ed                      in       eax, dx                        
  0x001C5B81  95                      xchg     ebp, eax                       
  0x001C5B82  06                      push     es                             
  0x001C5B83  6c                      insb     byte ptr es:[edi], dx          
  0x001C5B84  7ba5                    jnp      0x1c5b2b                       
  0x001C5B86  011b                    add      dword ptr [ebx], ebx           
  0x001C5B88  c1f408                  sal      esp, 8                         
  0x001C5B8B  8257c40f                adc      byte ptr [edi - 0x3c], 0xf     
  0x001C5B8F  f5                      cmc                                     
  0x001C5B91  d9b06550e9b7            fnstenv  [eax - 0x4816af9b]             
  0x001C5B97  12ea                    adc      ch, dl                         
  0x001C5B99  b8be8b7c88              mov      eax, 0x887c8bbe                
  0x001C5B9E  b9fcdf1ddd              mov      ecx, 0xdd1ddffc                
  0x001C5BA3  62492d                  bound    ecx, qword ptr [ecx + 0x2d]    
  0x001C5BA6  da15f37cd38c            ficom    dword ptr [0x8cd37cf3]         
  0x001C5BAC  654c                    dec      esp                            
  0x001C5BAE  d4fb                    aam      0xfb                           
  0x001C5BB0  58                      pop      eax                            
  0x001C5BB1  61                      popal                                   
  0x001C5BB2  b24d                    mov      dl, 0x4d                       
  0x001C5BB4  ce                      into                                    
  0x001C5BB5  51                      push     ecx                            
  0x001C5BB6  b53a                    mov      ch, 0x3a                       
  0x001C5BB8  7400                    je       0x1c5bba                       
                                        ; XREF: 0x001C5BB8 (cond_jump)
  0x001C5BBA  bca3e230bb              mov      esp, 0xbb30e2a3                
  0x001C5BBF  d441                    aam      0x41                           
  0x001C5BC1  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x001C5BC2  df4ad7                  fisttp   word ptr [edx - 0x29]          
  0x001C5BC5  95                      xchg     ebp, eax                       
  0x001C5BC6  d83d6dc4d1a4            fdivr    dword ptr [0xa4d1c46d]         
  0x001C5BCC  fb                      sti                                     
  0x001C5BCD  f4                      hlt                                     
  0x001C5BCE  d6                      salc                                    
  0x001C5BCF  d36ae9                  shr      dword ptr [edx - 0x17], cl     
  0x001C5BD2  6943fcd96e3446          imul     eax, dword ptr [ebx - 4], 0x46346ed9 
  0x001C5BD9  8867ad                  mov      byte ptr [edi - 0x53], ah      
  0x001C5BDC  d0b860da732d            sar      byte ptr [eax + 0x2d73da60], 1 
  0x001C5BE2  0444                    add      al, 0x44                       
  0x001C5BE4  e51d                    in       eax, 0x1d                      
  0x001C5BE6  0333                    add      esi, dword ptr [ebx]           
  0x001C5BE8  5f                      pop      edi                            
  0x001C5BE9  4c                      dec      esp                            
  0x001C5BEA  0aaac97c0ddd            or       ch, byte ptr [edx - 0x22f28337] 
  0x001C5BF0  3c71                    cmp      al, 0x71                       
  0x001C5BF2  0550aa4102              add      eax, 0x241aa50                 
  0x001C5BF7  27                      daa                                     
  0x001C5BF8  1010                    adc      byte ptr [eax], dl             
  0x001C5BFA  0bbe86200cc9            or       edi, dword ptr [esi - 0x36f3df7a] 
  0x001C5C00  25b56857b3              and      eax, 0xb35768b5                
  0x001C5C05  856f20                  test     dword ptr [edi + 0x20], ebp    
  0x001C5C08  09d4                    or       esp, edx                       
  0x001C5C0A  66b99fe4                mov      cx, 0xe49f                     
  0x001C5C0E  61                      popal                                   
  0x001C5C0F  ce                      into                                    
  0x001C5C10  0e                      push     cs                             
  0x001C5C11  f9                      stc                                     
  0x001C5C12  de5e98                  ficomp   word ptr [esi - 0x68]          
  0x001C5C15  c9                      leave                                   
  0x001C5C16  d929                    fldcw    word ptr [ecx]                 
  0x001C5C18  2298d0b0b4a8            and      bl, byte ptr [eax - 0x574b4f30] 
  0x001C5C1E  d7                      xlatb                                   
  0x001C5C20  17                      pop      ss                             
  0x001C5C21  3db359810d              cmp      eax, 0xd8159b3                 
  0x001C5C26  b42e                    mov      ah, 0x2e                       
  0x001C5C28  3b5cbdb7                cmp      ebx, dword ptr [ebp + edi*4 - 0x49] 
  0x001C5C2C  ad                      lodsd    eax, dword ptr [esi]           
  0x001C5C2D  6c                      insb     byte ptr es:[edi], dx          
  0x001C5C2E  bac02083b8              mov      edx, 0xb88320c0                
  0x001C5C33  ed                      in       eax, dx                        
  0x001C5C34  b6b3                    mov      dh, 0xb3                       
  0x001C5C36  bf9a0ce2b6              mov      edi, 0xb6e20c9a                
  0x001C5C3B  039ad2b17439            add      ebx, dword ptr [edx + 0x3974b1d2] 
  0x001C5C41  47                      inc      edi                            
  0x001C5C42  d5ea                    aad      0xea                           
  0x001C5C44  af                      scasd    eax, dword ptr es:[edi]        
  0x001C5C45  77d2                    ja       0x1c5c19                       
  0x001C5C47  9d                      popfd                                   
  0x001C5C48  1526db0483              adc      eax, 0x8304db26                
  0x001C5C4D  16                      push     ss                             
  0x001C5C4E  dc7312                  fdiv     qword ptr [ebx + 0x12]         
  0x001C5C51  0b63e3                  or       esp, dword ptr [ebx - 0x1d]    
  0x001C5C54  843b                    test     byte ptr [ebx], bh             
  0x001C5C56  6494                    xchg     esp, eax                       
  0x001C5C58  3e6a6d                  push     0x6d                           
  0x001C5C5B  0da85a6a7a              or       eax, 0x7a6a5aa8                
  0x001C5C60  0bcf                    or       ecx, edi                       
  0x001C5C62  0e                      push     cs                             
  0x001C5C63  e49d                    in       al, 0x9d                       
  0x001C5C65  ff09                    dec      dword ptr [ecx]                
  0x001C5C67  93                      xchg     ebx, eax                       
  0x001C5C68  27                      daa                                     
  0x001C5C69  ae                      scasb    al, byte ptr es:[edi]          
  0x001C5C6A  000a                    add      byte ptr [edx], cl             
  0x001C5C6C  b19e                    mov      cl, 0x9e                       
  0x001C5C6E  07                      pop      es                             
  0x001C5C6F  7d44                    jge      0x1c5cb5                       
  0x001C5C71  93                      xchg     ebx, eax                       
  0x001C5C74  d2a3088768f2            shl      byte ptr [ebx - 0xd9778f8], cl 
  0x001C5C7A  011e                    add      dword ptr [esi], ebx           
  0x001C5C7C  fec2                    inc      dl                             
  0x001C5C7E  06                      push     es                             
  0x001C5C7F  695d5762f7cb67          imul     ebx, dword ptr [ebp + 0x57], 0x67cbf762 
  0x001C5C86  658071366c              xor      byte ptr gs:[ecx + 0x36], 0x6c 
  0x001C5C8B  19e7                    sbb      edi, esp                       
  0x001C5C8D  06                      push     es                             
  0x001C5C8E  6b6e761b                imul     ebp, dword ptr [esi + 0x76], 0x1b 
  0x001C5C92  d4fe                    aam      0xfe                           
  0x001C5C94  e02b                    loopne   0x1c5cc1                       
  0x001C5C96  d3895a7ada10            ror      dword ptr [ecx + 0x10da7a5a], cl 
  0x001C5C9C  cc                      int3                                    
  0x001C5C9D  4a                      dec      edx                            
  0x001C5C9E  dd676f                  frstor   dword ptr [edi + 0x6f]         
  0x001C5CA1  dfb9f9f9efbe            fistp    qword ptr [ecx - 0x41100607]   
  0x001C5CA7  8e43be                  mov      es, word ptr [ebx - 0x42]      
  0x001C5CAA  b717                    mov      bh, 0x17                       
                                        ; XREF: 0x001C5CEC (cond_jump)
  0x001C5CAC  d58e                    aad      0x8e                           
  0x001C5CAE  b060                    mov      al, 0x60                       
  0x001C5CB0  e8a3d6d67e              call     0x7ef33358                     
                                        ; XREF: 0x001C5C6F (cond_jump)
  0x001C5CB5  93                      xchg     ebx, eax                       
  0x001C5CB6  d1a1c4c2d838            shl      dword ptr [ecx + 0x38d8c2c4], 1 
  0x001C5CBC  52                      push     edx                            
  0x001C5CBD  f2df4ff1                fisttp   word ptr [edi - 0xf]           
                                        ; XREF: 0x001C5C94 (cond_jump)
  0x001C5CC1  67bbd16757bc            mov      ebx, 0xbc5767d1                
  0x001C5CC7  a6                      cmpsb    byte ptr [esi], byte ptr es:[edi] 
  0x001C5CC8  dd06                    fld      qword ptr [esi]                
  0x001C5CCA  b53f                    mov      ch, 0x3f                       
  0x001C5CCC  4b                      dec      ebx                            
  0x001C5CCD  36b248                  mov      dl, 0x48                       
  0x001C5CD0  da2b                    fisubr   dword ptr [ebx]                
  0x001C5CD2  0dd84c1b0a              or       eax, 0xa1b4cd8                 
  0x001C5CD7  af                      scasd    eax, dword ptr es:[edi]        
  0x001C5CD8  f64a0336                test     byte ptr [edx + 3], 0x36       
  0x001C5CDC  60                      pushal                                  
  0x001C5CDD  7a04                    jp       0x1c5ce3                       
  0x001C5CDF  41                      inc      ecx                            
  0x001C5CE0  c3                      ret                                     
  0x001C5CE1  ef                      out      dx, eax                        
  0x001C5CE2  60                      pushal                                  
                                        ; XREF: 0x001C5CDD (cond_jump)
  0x001C5CE3  df55df                  fist     word ptr [ebp - 0x21]          
  0x001C5CE6  67a8ef                  test     al, 0xef                       
  0x001C5CE9  8e6e31                  mov      gs, word ptr [esi + 0x31]      
  0x001C5CEC  79be                    jns      0x1c5cac                       
  0x001C5CEE  69468cb361cb1a          imul     eax, dword ptr [esi - 0x74], 0x1acb61b3 
  0x001C5CF5  8366bca0                and      dword ptr [esi - 0x44], 0xffffffa0 
  0x001C5CF9  d26f25                  shr      byte ptr [edi + 0x25], cl      
  0x001C5CFC  36e268                  loop     0x1c5d67                       
  0x001C5CFF  52                      push     edx                            
  0x001C5D00  95                      xchg     ebp, eax                       
  0x001C5D01  770c                    ja       0x1c5d0f                       
  0x001C5D03  cc                      int3                                    
  0x001C5D04  03470b                  add      eax, dword ptr [edi + 0xb]     
  0x001C5D07  bbb9160222              mov      ebx, 0x220216b9                
  0x001C5D0C  2f                      das                                     
  0x001C5D0D  260555be3bba            add      eax, 0xba3bbe55                
  0x001C5D13  c528                    lds      ebp, ptr [eax]                 
  0x001C5D15  0bbdb2925ab4            or       edi, dword ptr [ebp - 0x4ba56d4e] 
  0x001C5D1B  2b046a                  sub      eax, dword ptr [edx + ebp*2]   
  0x001C5D1E  b35c                    mov      bl, 0x5c                       
  0x001C5D20  a7                      cmpsd    dword ptr [esi], dword ptr es:[edi] 
  0x001C5D21  ffd7                    call     edi                            
  0x001C5D23  c231cf                  ret      0xcf31                         
  0x001C5D26  d0b58b9ed92c            sal      byte ptr [ebp + 0x2cd99e8b], 1 
  0x001C5D2C  1daede5bb0              sbb      eax, 0xb05bdeae                
  0x001C5D31  c2649b                  ret      0x9b64                         
  0x001C5D34  26f263ec                arpl     sp, bp                         
  0x001C5D38  9c                      pushfd                                  
  0x001C5D39  a36a750a93              mov      dword ptr [0x930a756a], eax    
  0x001C5D3E  6d                      insd     dword ptr es:[edi], dx         
  0x001C5D3F  02a906099c3f            add      ch, byte ptr [ecx + 0x3f9c0906] 
  0x001C5D45  360e                    push     cs                             
  0x001C5D47  eb85                    jmp      0x1c5cce                       
  0x001C5D49  6707                    pop      es                             
  0x001C5D4B  7213                    jb       0x1c5d60                       
  0x001C5D4D  57                      push     edi                            
  0x001C5D4E  0005824abf95            add      byte ptr [0x95bf4a82], al      
  0x001C5D54  147a                    adc      al, 0x7a                       
  0x001C5D56  b8e2ae2bb1              mov      eax, 0xb12baee2                
  0x001C5D5B  7b38                    jnp      0x1c5d95                       
  0x001C5D5D  1bb60c9b8ed2            sbb      esi, dword ptr [esi - 0x2d7164f4] 
  0x001C5D63  92                      xchg     edx, eax                       
  0x001C5D64  0dbed5e5b7              or       eax, 0xb7e5d5be                
  0x001C5D69  ef                      out      dx, eax                        
  0x001C5D6A  dc7c21df                fdivr    qword ptr [ecx - 0x21]         
  0x001C5D6E  db0b                    fisttp   dword ptr [ebx]                
  0x001C5D70  d4d2                    aam      0xd2                           
  0x001C5D72  d38642e2d4f1            rol      dword ptr [esi - 0xe2b1dbe], cl 
  0x001C5D78  f8                      clc                                     
  0x001C5D79  b3dd                    mov      bl, 0xdd                       
  0x001C5D7B  686e83da1f              push     0x1fda836e                     
  0x001C5D80  cd16                    int      0x16                           
  0x001C5D82  be815b26b9              mov      esi, 0xb9265b81                
  0x001C5D87  f6e1                    mul      cl                             
  0x001C5D89  77b0                    ja       0x1c5d3b                       
  0x001C5D8B  6f                      outsd    dx, dword ptr [esi]            
  0x001C5D8C  7747                    ja       0x1c5dd5                       
  0x001C5D8E  b718                    mov      bh, 0x18                       
  0x001C5D90  e65a                    out      0x5a, al                       
  0x001C5D92  0888706a0fff            or       byte ptr [eax - 0xf09590], cl  
  0x001C5D98  ca3b06                  retf     0x63b                          
  0x001C5D9B  665c                    pop      sp                             
  0x001C5D9D  0b01                    or       eax, dword ptr [ecx]           
  0x001C5D9F  11ff                    adc      edi, edi                       
  0x001C5DA1  9e                      sahf                                    
  0x001C5DA4  69ae62f8d3ff6b6145cf    imul     ebp, dword ptr [esi - 0x2c079e], 0xcf45616b 
  0x001C5DAE  6c                      insb     byte ptr es:[edi], dx          
  0x001C5DAF  16                      push     ss                             
  0x001C5DB0  78e2                    js       0x1c5d94                       
  0x001C5DB2  0aa0eed20dd7            or       ah, byte ptr [eax - 0x28f22d12] 
  0x001C5DB8  54                      push     esp                            
  0x001C5DB9  83044ec2                add      dword ptr [esi + ecx*2], -0x3e 
  0x001C5DBD  b303                    mov      bl, 3                          
  0x001C5DBF  396126                  cmp      dword ptr [ecx + 0x26], esp    
  0x001C5DC2  67a7                    cmpsd    dword ptr [si], dword ptr es:[di] 
  0x001C5DC4  f716                    not      dword ptr [esi]                
  0x001C5DC6  60                      pushal                                  
  0x001C5DC7  d04d47                  ror      byte ptr [ebp + 0x47], 1       
  0x001C5DCA  6949db776e3e4a          imul     ecx, dword ptr [ecx - 0x25], 0x4a3e6e77 
  0x001C5DD1  6ad1                    push     -0x2f                          
  0x001C5DD3  ae                      scasb    al, byte ptr es:[edi]          
  0x001C5DD4  dc5ad6                  fcomp    qword ptr [edx - 0x2a]         
  0x001C5DD7  d9660b                  fldenv   [esi + 0xb]                    
  0x001C5DDA  df40f0                  fild     word ptr [eax - 0x10]          
  0x001C5DDD  3bd8                    cmp      ebx, eax                       
  0x001C5DDF  37                      aaa                                     
  0x001C5DE0  53                      push     ebx                            
  0x001C5DE1  ae                      scasb    al, byte ptr es:[edi]          
  0x001C5DE2  bca9c59ebb              mov      esp, 0xbb9ec5a9                
  0x001C5DE7  de7fcf                  fidivr   word ptr [edi - 0x31]          
  0x001C5DEA  b247                    mov      dl, 0x47                       
  0x001C5DEC  e9ffb5301c              jmp      0x1c4d13f0                     
  0x001C5DF1  f2bdbd8ac2ba            mov      ebp, 0xbac28abd                
  0x001C5DF7  ca3093                  retf     0x9330                         
  0x001C5DFA  b353                    mov      bl, 0x53                       
  0x001C5DFC  a6                      cmpsb    byte ptr [esi], byte ptr es:[edi] 
  0x001C5DFD  a3b4240536              mov      dword ptr [0x360524b4], eax    
  0x001C5E02  d0ba9306d7cd            sar      byte ptr [edx - 0x3228f96d], 1 
  0x001C5E08  2957de                  sub      dword ptr [edi - 0x22], edx    
  0x001C5E0B  54                      push     esp                            
  0x001C5E0C  bf67d9232e              mov      edi, 0x2e23d967                
  0x001C5E11  7a66                    jp       0x1c5e79                       
  0x001C5E13  b3b8                    mov      bl, 0xb8                       
  0x001C5E15  4a                      dec      edx                            
  0x001C5E16  61                      popal                                   
  0x001C5E17  c402                    les      eax, ptr [edx]                 
  0x001C5E19  1b685d                  sbb      ebp, dword ptr [eax + 0x5d]    
  0x001C5E1C  94                      xchg     esp, eax                       
  0x001C5E1D  2b6f2a                  sub      ebp, dword ptr [edi + 0x2a]    
  0x001C5E20  37                      aaa                                     
  0x001C5E21  be0bb4a18e              mov      esi, 0x8ea1b40b                
  0x001C5E26  0cc3                    or       al, 0xc3                       
  0x001C5E28  1bdf                    sbb      ebx, edi                       
  0x001C5E2A  055a8def02              add      eax, 0x2ef8d5a                 
  0x001C5E2F  2d00000000              sub      eax, 0                         
  0x001C5E34  0100                    add      dword ptr [eax], eax           
  0x001C5E36  0000                    add      byte ptr [eax], al             
  0x001C5E38  0200                    add      al, byte ptr [eax]             
  0x001C5E3A  0000                    add      byte ptr [eax], al             
  0x001C5E3C  0400                    add      al, 0                          
  0x001C5E3E  0000                    add      byte ptr [eax], al             
  0x001C5E40  0800                    or       byte ptr [eax], al             
  0x001C5E42  0000                    add      byte ptr [eax], al             
  0x001C5E44  1000                    adc      byte ptr [eax], al             
  0x001C5E46  0000                    add      byte ptr [eax], al             
  0x001C5E48  2000                    and      byte ptr [eax], al             
  0x001C5E4A  0000                    add      byte ptr [eax], al             
  0x001C5E4C  40                      inc      eax                            
  0x001C5E4D  0000                    add      byte ptr [eax], al             
  0x001C5E4F  008000000000            add      byte ptr [eax], al             
  0x001C5E55  0100                    add      dword ptr [eax], eax           
  0x001C5E57  0000                    add      byte ptr [eax], al             
  0x001C5E59  0200                    add      al, byte ptr [eax]             
  0x001C5E5B  0000                    add      byte ptr [eax], al             
  0x001C5E5D  0400                    add      al, 0                          
  0x001C5E5F  0000                    add      byte ptr [eax], al             
  0x001C5E61  0800                    or       byte ptr [eax], al             
  0x001C5E63  0000                    add      byte ptr [eax], al             
  0x001C5E65  1000                    adc      byte ptr [eax], al             
  0x001C5E67  0000                    add      byte ptr [eax], al             
  0x001C5E69  2000                    and      byte ptr [eax], al             
  0x001C5E6B  0000                    add      byte ptr [eax], al             
  0x001C5E6D  40                      inc      eax                            
  0x001C5E6E  0000                    add      byte ptr [eax], al             
  0x001C5E70  0000                    add      byte ptr [eax], al             
  0x001C5E72  0000                    add      byte ptr [eax], al             
  0x001C5E78  fd                      std                                     
  0x001C5E7C  f9                      stc                                     
  0x001C5E7F  fff1                    push     ecx                            
  0x001C5E83  ffe1                    jmp      ecx                            
  0x001C5E87  ffc1                    inc      ecx                            
  0x001C5E8B  ff81ffffff01            inc      dword ptr [ecx + 0x1ffffff]    
  0x001C5E93  ff01                    inc      dword ptr [ecx]                
  0x001C5E97  ff01                    inc      dword ptr [ecx]                
  0x001C5E99  fc                      cld                                     
  0x001C5E9B  ff01                    inc      dword ptr [ecx]                
  0x001C5E9D  f8                      clc                                     
  0x001C5E9F  ff01                    inc      dword ptr [ecx]                
  0x001C5EA3  ff01                    inc      dword ptr [ecx]                
  0x001C5EA5  e0ff                    loopne   0x1c5ea6                       
  0x001C5EA7  ff01                    inc      dword ptr [ecx]                
  0x001C5EA9  c0ffff                  sar      bh, 0xff                       
  0x001C5EAC  0180ffff0000            add      dword ptr [eax + 0xffff], eax  
  0x001C5EB2  0000                    add      byte ptr [eax], al             
  0x001C5EB4  0100                    add      dword ptr [eax], eax           
  0x001C5EB6  0000                    add      byte ptr [eax], al             
  0x001C5EB8  0200                    add      al, byte ptr [eax]             
  0x001C5EBA  0000                    add      byte ptr [eax], al             
  0x001C5EBC  0400                    add      al, 0                          
  0x001C5EBE  0000                    add      byte ptr [eax], al             
  0x001C5EC0  0800                    or       byte ptr [eax], al             
  0x001C5EC2  0000                    add      byte ptr [eax], al             
  0x001C5EC4  1000                    adc      byte ptr [eax], al             
  0x001C5EC6  0000                    add      byte ptr [eax], al             
  0x001C5EC8  2000                    and      byte ptr [eax], al             
  0x001C5ECA  0000                    add      byte ptr [eax], al             
  0x001C5ECC  40                      inc      eax                            
  0x001C5ECD  0000                    add      byte ptr [eax], al             
  0x001C5ECF  008000000000            add      byte ptr [eax], al             
  0x001C5ED5  0100                    add      dword ptr [eax], eax           
  0x001C5ED7  0000                    add      byte ptr [eax], al             
  0x001C5ED9  0200                    add      al, byte ptr [eax]             
  0x001C5EDB  0000                    add      byte ptr [eax], al             
  0x001C5EDD  0400                    add      al, 0                          
  0x001C5EDF  0000                    add      byte ptr [eax], al             
  0x001C5EE1  0800                    or       byte ptr [eax], al             
  0x001C5EE3  0000                    add      byte ptr [eax], al             
  0x001C5EE5  0000                    add      byte ptr [eax], al             
  0x001C5EE7  00ff                    add      bh, bh                         
  0x001C5EEC  fd                      std                                     
  0x001C5EF0  f9                      stc                                     
  0x001C5EF3  fff1                    push     ecx                            
  0x001C5EF7  ffe1                    jmp      ecx                            
  0x001C5EFB  ffc1                    inc      ecx                            
  0x001C5EFF  ff81ffffff01            inc      dword ptr [ecx + 0x1ffffff]    
  0x001C5F07  ff01                    inc      dword ptr [ecx]                
  0x001C5F0B  ff01                    inc      dword ptr [ecx]                
  0x001C5F0D  fc                      cld                                     
  0x001C5F0F  ff01                    inc      dword ptr [ecx]                
  0x001C5F11  f8                      clc                                     
  0x001C5F13  ff00                    inc      dword ptr [eax]                
  0x001C5F15  0000                    add      byte ptr [eax], al             
  0x001C5F17  0000                    add      byte ptr [eax], al             
  0x001C5F19  0000                    add      byte ptr [eax], al             
  0x001C5F1B  0001                    add      byte ptr [ecx], al             
  0x001C5F1D  0000                    add      byte ptr [eax], al             
  0x001C5F1F  0002                    add      byte ptr [edx], al             
  0x001C5F21  0000                    add      byte ptr [eax], al             
  0x001C5F23  000400                  add      byte ptr [eax + eax], al       
  0x001C5F26  0000                    add      byte ptr [eax], al             
  0x001C5F28  0800                    or       byte ptr [eax], al             
  0x001C5F2A  0000                    add      byte ptr [eax], al             
  0x001C5F2C  1000                    adc      byte ptr [eax], al             
  0x001C5F2E  0000                    add      byte ptr [eax], al             
  0x001C5F30  2000                    and      byte ptr [eax], al             
  0x001C5F32  0000                    add      byte ptr [eax], al             
  0x001C5F34  40                      inc      eax                            
  0x001C5F35  0000                    add      byte ptr [eax], al             
  0x001C5F37  008000000000            add      byte ptr [eax], al             
  0x001C5F3D  0100                    add      dword ptr [eax], eax           
  0x001C5F3F  0000                    add      byte ptr [eax], al             
  0x001C5F41  0200                    add      al, byte ptr [eax]             
  0x001C5F43  0000                    add      byte ptr [eax], al             
  0x001C5F45  0400                    add      al, 0                          
  0x001C5F47  0000                    add      byte ptr [eax], al             
  0x001C5F49  0800                    or       byte ptr [eax], al             
  0x001C5F4B  0000                    add      byte ptr [eax], al             
  0x001C5F4D  1000                    adc      byte ptr [eax], al             
  0x001C5F4F  0000                    add      byte ptr [eax], al             
  0x001C5F51  2000                    and      byte ptr [eax], al             
  0x001C5F53  0000                    add      byte ptr [eax], al             
  0x001C5F55  40                      inc      eax                            
  0x001C5F56  0000                    add      byte ptr [eax], al             
  0x001C5F58  0000                    add      byte ptr [eax], al             
  0x001C5F5A  0000                    add      byte ptr [eax], al             
  0x001C5F60  fd                      std                                     
  0x001C5F64  f9                      stc                                     
  0x001C5F67  fff1                    push     ecx                            
  0x001C5F6B  ffe1                    jmp      ecx                            
  0x001C5F6F  ffc1                    inc      ecx                            
  0x001C5F73  ff81ffffff01            inc      dword ptr [ecx + 0x1ffffff]    
  0x001C5F7B  ff01                    inc      dword ptr [ecx]                
  0x001C5F7F  ff01                    inc      dword ptr [ecx]                
  0x001C5F81  fc                      cld                                     
  0x001C5F83  ff01                    inc      dword ptr [ecx]                
  0x001C5F85  f8                      clc                                     
  0x001C5F87  ff01                    inc      dword ptr [ecx]                
  0x001C5F8B  ff01                    inc      dword ptr [ecx]                
  0x001C5F8D  e0ff                    loopne   0x1c5f8e                       
  0x001C5F8F  ff01                    inc      dword ptr [ecx]                
  0x001C5F91  c0ffff                  sar      bh, 0xff                       
  0x001C5F94  0180ffff00c0            add      dword ptr [eax - 0x3fff0001], eax 
  0x001C5F9A  30f0                    xor      al, dh                         
  0x001C5F9C  0ccc                    or       al, 0xcc                       
  0x001C5F9E  3cfc                    cmp      al, 0xfc                       
  0x001C5FA0  03c3                    add      eax, ebx                       
  0x001C5FA2  33f3                    xor      esi, ebx                       
  0x001C5FA4  0fcf                    bswap    edi                            
  0x001C5FA6  3f                      aas                                     
  0x001C5FA7  ff8040b0708c            inc      dword ptr [eax - 0x738f4fc0]   
  0x001C5FAD  4c                      dec      esp                            
  0x001C5FAE  bc7c8343b3              mov      esp, 0xb343837c                
  0x001C5FB3  738f                    jae      0x1c5f44                       
  0x001C5FB5  4f                      dec      edi                            
  0x001C5FB6  bf7f20e010              mov      edi, 0x10e0207f                
  0x001C5FBB  d02cec                  shr      byte ptr [esp + ebp*8], 1      
  0x001C5FBE  1cdc                    sbb      al, 0xdc                       
  0x001C5FC0  23e3                    and      esp, ebx                       
  0x001C5FC2  13d3                    adc      edx, ebx                       
  0x001C5FC4  2f                      das                                     
  0x001C5FC5  ef                      out      dx, eax                        
  0x001C5FC6  1f                      pop      ds                             
  0x001C5FC7  dfa0609050ac            fbld     tbyte ptr [eax - 0x53af6fa0]   
  0x001C5FCD  6c                      insb     byte ptr es:[edi], dx          
  0x001C5FCE  9c                      pushfd                                  
  0x001C5FCF  5c                      pop      esp                            
  0x001C5FD0  a3639353af              mov      dword ptr [0xaf539363], eax    
  0x001C5FD5  6f                      outsd    dx, dword ptr [esi]            
  0x001C5FD6  9f                      lahf                                    
  0x001C5FD7  5f                      pop      edi                            
  0x001C5FD8  08c8                    or       al, cl                         
  0x001C5FDA  38f8                    cmp      al, bh                         
  0x001C5FDC  04c4                    add      al, 0xc4                       
  0x001C5FDE  34f4                    xor      al, 0xf4                       
  0x001C5FE0  0bcb                    or       ecx, ebx                       
  0x001C5FE2  3bfb                    cmp      edi, ebx                       
  0x001C5FE4  07                      pop      es                             
  0x001C5FE6  37                      aaa                                     
  0x001C5FE7  f78848b8788444b4748b    test     dword ptr [eax - 0x7b8747b8], 0x8b74b444 
  0x001C5FF1  4b                      dec      ebx                            
  0x001C5FF2  bb7b8747b7              mov      ebx, 0xb747877b                
  0x001C5FF7  7728                    ja       0x1c6021                       
  0x001C5FF9  e818d824e4              call     0xe4413816                     
  0x001C5FFE  14d4                    adc      al, 0xd4                       
  0x001C6000  2beb                    sub      ebp, ebx                       
  0x001C6002  1bdb                    sbb      ebx, ebx                       
  0x001C6004  27                      daa                                     
  0x001C6005  e717                    out      0x17, eax                      
  0x001C6007  d7                      xlatb                                   
  0x001C6008  a868                    test     al, 0x68                       
  0x001C600A  98                      cwde                                    
  0x001C600B  58                      pop      eax                            
  0x001C600C  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x001C600D  6494                    xchg     esp, eax                       
  0x001C600F  54                      push     esp                            
  0x001C6010  ab                      stosd    dword ptr es:[edi], eax        
  0x001C6011  6b9b5ba7679757          imul     ebx, dword ptr [ebx - 0x689858a5], 0x57 
  0x001C6018  02c2                    add      al, dl                         
  0x001C601A  32f2                    xor      dh, dl                         
  0x001C601C  0e                      push     cs                             
  0x001C601D  ce                      into                                    
  0x001C601E  3efe01                  inc      byte ptr ds:[ecx]              
                                        ; XREF: 0x001C5FF7 (cond_jump)
  0x001C6021  c131f1                  sal      dword ptr [ecx], 0xf1          
  0x001C6024  0dcd3dfd82              or       eax, 0x82fd3dcd                
  0x001C6029  42                      inc      edx                            
  0x001C602A  b272                    mov      dl, 0x72                       
  0x001C602C  8e4ebe                  mov      cs, word ptr [esi - 0x42]      
  0x001C602F  7e81                    jle      0x1c5fb2                       
  0x001C6031  41                      inc      ecx                            
  0x001C6032  b171                    mov      cl, 0x71                       
  0x001C6034  8d4dbd                  lea      ecx, [ebp - 0x43]              
  0x001C6037  7d22                    jge      0x1c605b                       
  0x001C6039  e212                    loop     0x1c604d                       
  0x001C603B  d22e                    shr      byte ptr [esi], cl             
  0x001C603D  ee                      out      dx, al                         
  0x001C603E  1e                      push     ds                             
  0x001C603F  de21                    fisub    word ptr [ecx]                 
  0x001C6041  e111                    loope    0x1c6054                       
  0x001C6043  d12ded1ddda2            shr      dword ptr [0xa2dd1ded], 1      
  0x001C6049  629252ae6e9e            bound    edx, qword ptr [edx - 0x619151ae] 
  0x001C604F  5e                      pop      esi                            
  0x001C6050  a1619151ad              mov      eax, dword ptr [0xad519161]    
  0x001C6055  6d                      insd     dword ptr es:[edi], dx         
  0x001C6056  9d                      popfd                                   
  0x001C6057  5d                      pop      ebp                            
  0x001C6058  0aca                    or       cl, dl                         
  0x001C605A  3afa                    cmp      bh, dl                         
  0x001C605C  06                      push     es                             
  0x001C605E  36f609c9                test     byte ptr ss:[ecx], -0x37       
  0x001C6062  39f9                    cmp      ecx, edi                       
  0x001C6064  05c535f58a              add      eax, 0x8af535c5                
  0x001C6069  4a                      dec      edx                            
  0x001C606A  ba7a8646b6              mov      edx, 0xb646867a                
  0x001C606F  7689                    jbe      0x1c5ffa                       
  0x001C6071  49                      dec      ecx                            
  0x001C6072  b9798545b5              mov      ecx, 0xb5458579                
  0x001C6077  752a                    jne      0x1c60a3                       
  0x001C6079  ea1ada26e616d6          ljmp     0xd616:0xe626da1a              
  0x001C6080  29e9                    sub      ecx, ebp                       
  0x001C6082  19d9                    sbb      ecx, ebx                       
  0x001C6084  25e515d5aa              and      eax, 0xaad515e5                
  0x001C6089  6a9a                    push     -0x66                          
  0x001C608B  5a                      pop      edx                            
  0x001C608C  a6                      cmpsb    byte ptr [esi], byte ptr es:[edi] 
  0x001C608D  6696                    xchg     si, ax                         
  0x001C608F  56                      push     esi                            
  0x001C6090  a9699959a5              test     eax, 0xa5599969                
  0x001C6095  6595                    xchg     ebp, eax                       
  0x001C6097  55                      push     ebp                            
  0x001C6098  1000                    adc      byte ptr [eax], al             
  0x001C609A  0000                    add      byte ptr [eax], al             
  0x001C609C  1100                    adc      dword ptr [eax], eax           
  0x001C609E  0000                    add      byte ptr [eax], al             
  0x001C60A0  1200                    adc      al, byte ptr [eax]             
  0x001C60A2  0000                    add      byte ptr [eax], al             
  0x001C60A4  0000                    add      byte ptr [eax], al             
  0x001C60A6  0000                    add      byte ptr [eax], al             
  0x001C60A8  0800                    or       byte ptr [eax], al             
  0x001C60AA  0000                    add      byte ptr [eax], al             
  0x001C60AC  07                      pop      es                             
  0x001C60AD  0000                    add      byte ptr [eax], al             
  0x001C60AF  0009                    add      byte ptr [ecx], cl             
  0x001C60B1  0000                    add      byte ptr [eax], al             
  0x001C60B3  0006                    add      byte ptr [esi], al             
  0x001C60B5  0000                    add      byte ptr [eax], al             
  0x001C60B7  000a                    add      byte ptr [edx], cl             
  0x001C60B9  0000                    add      byte ptr [eax], al             
  0x001C60BB  00050000000b            add      byte ptr [0xb000000], al       
  0x001C60C1  0000                    add      byte ptr [eax], al             
  0x001C60C3  000400                  add      byte ptr [eax + eax], al       
  0x001C60C6  0000                    add      byte ptr [eax], al             
  0x001C60C8  0c00                    or       al, 0                          
  0x001C60CA  0000                    add      byte ptr [eax], al             
  0x001C60CC  0300                    add      eax, dword ptr [eax]           
  0x001C60CE  0000                    add      byte ptr [eax], al             
  0x001C60D0  0d00000002              or       eax, 0x2000000                 
  0x001C60D5  0000                    add      byte ptr [eax], al             
  0x001C60D7  000e                    add      byte ptr [esi], cl             
  0x001C60D9  0000                    add      byte ptr [eax], al             
  0x001C60DB  0001                    add      byte ptr [ecx], al             
  0x001C60DD  0000                    add      byte ptr [eax], al             
  0x001C60DF  000f                    add      byte ptr [edi], cl             
  0x001C60E1  0000                    add      byte ptr [eax], al             
  0x001C60E3  00696e                  add      byte ptr [ecx + 0x6e], ch      
  0x001C60E6  636f6d                  arpl     word ptr [edi + 0x6d], bp      
  0x001C60E9  7061                    jo       0x1c614c                       
  0x001C60EB  7469                    je       0x1c6156                       
  0x001C60ED  626c6520                bound    ebp, qword ptr [ebp + 0x20]    
  0x001C60F1  7665                    jbe      0x1c6158                       
  0x001C60F3  7273                    jb       0x1c6168                       
  0x001C60F5  696f6e00000000          imul     ebp, dword ptr [edi + 0x6e], 0 
  0x001C60FC  627566                  bound    esi, qword ptr [ebp + 0x66]    
  0x001C60FF  66657220                jb       0x1c6123                       
  0x001C6103  657272                  jb       0x1c6178                       
  0x001C6106  6f                      outsd    dx, dword ptr [esi]            
  0x001C6107  7200                    jb       0x1c6109                       
                                        ; XREF: 0x001C6107 (cond_jump)
  0x001C6109  0000                    add      byte ptr [eax], al             
  0x001C610B  00696e                  add      byte ptr [ecx + 0x6e], ch      
  0x001C610E  7375                    jae      0x1c6185                       
  0x001C6110  6666696369656e          imul     sp, word ptr [ebx + 0x69], 0x6e65 
  0x001C6117  7420                    je       0x1c6139                       
  0x001C6119  6d                      insd     dword ptr es:[edi], dx         
  0x001C611A  656d                    insd     dword ptr es:[edi], dx         
  0x001C611C  6f                      outsd    dx, dword ptr [esi]            
  0x001C611D  7279                    jb       0x1c6198                       
  0x001C611F  00646174                add      byte ptr [ecx + 0x74], ah      
                                        ; XREF: 0x001C60FF (cond_jump)
  0x001C6123  61                      popal                                   
  0x001C6124  206572                  and      byte ptr [ebp + 0x72], ah      
  0x001C6127  726f                    jb       0x1c6198                       
  0x001C6129  7200                    jb       0x1c612b                       
                                        ; XREF: 0x001C6129 (cond_jump)
  0x001C612B  007374                  add      byte ptr [ebx + 0x74], dh      
  0x001C612E  7265                    jb       0x1c6195                       
  0x001C6130  61                      popal                                   
  0x001C6131  6d                      insd     dword ptr es:[edi], dx         
  0x001C6132  206572                  and      byte ptr [ebp + 0x72], ah      
  0x001C6135  726f                    jb       0x1c61a6                       
  0x001C6137  7200                    jb       0x1c6139                       
                                        ; XREF: 0x001C6117 (cond_jump), 0x001C6137 (cond_jump)
  0x001C6139  0000                    add      byte ptr [eax], al             
  0x001C613B  006669                  add      byte ptr [esi + 0x69], ah      
  0x001C613E  6c                      insb     byte ptr es:[edi], dx          
  0x001C613F  65206572                and      byte ptr gs:[ebp + 0x72], ah   
  0x001C6143  726f                    jb       0x1c61b4                       
  0x001C6145  7200                    jb       0x1c6147                       
                                        ; XREF: 0x001C6145 (cond_jump)
  0x001C6147  007374                  add      byte ptr [ebx + 0x74], dh      
  0x001C614A  7265                    jb       0x1c61b1                       
                                        ; XREF: 0x001C60E9 (cond_jump)
  0x001C614C  61                      popal                                   
  0x001C614D  6d                      insd     dword ptr es:[edi], dx         
  0x001C614E  20656e                  and      byte ptr [ebp + 0x6e], ah      
  0x001C6151  640000                  add      byte ptr fs:[eax], al          
  0x001C6154  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C60EB (cond_jump)
  0x001C6156  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C60F1 (cond_jump)
  0x001C6158  0300                    add      eax, dword ptr [eax]           
  0x001C615A  0000                    add      byte ptr [eax], al             
  0x001C615C  0400                    add      al, 0                          
  0x001C615E  0000                    add      byte ptr [eax], al             
  0x001C6160  0500000006              add      eax, 0x6000000                 
  0x001C6165  0000                    add      byte ptr [eax], al             
  0x001C6167  0007                    add      byte ptr [edi], al             
  0x001C6169  0000                    add      byte ptr [eax], al             
  0x001C616B  0008                    add      byte ptr [eax], cl             
  0x001C616D  0000                    add      byte ptr [eax], al             
  0x001C616F  0009                    add      byte ptr [ecx], cl             
  0x001C6171  0000                    add      byte ptr [eax], al             
  0x001C6173  000a                    add      byte ptr [edx], cl             
  0x001C6175  0000                    add      byte ptr [eax], al             
  0x001C6177  000b                    add      byte ptr [ebx], cl             
  0x001C6179  0000                    add      byte ptr [eax], al             
  0x001C617B  000d0000000f            add      byte ptr [0xf000000], cl       
  0x001C6181  0000                    add      byte ptr [eax], al             
  0x001C6183  0011                    add      byte ptr [ecx], dl             
                                        ; XREF: 0x001C610E (cond_jump)
  0x001C6185  0000                    add      byte ptr [eax], al             
  0x001C6187  0013                    add      byte ptr [ebx], dl             
  0x001C6189  0000                    add      byte ptr [eax], al             
  0x001C618B  0017                    add      byte ptr [edi], dl             
  0x001C618D  0000                    add      byte ptr [eax], al             
  0x001C618F  001b                    add      byte ptr [ebx], bl             
  0x001C6191  0000                    add      byte ptr [eax], al             
  0x001C6193  001f                    add      byte ptr [edi], bl             
                                        ; XREF: 0x001C612E (cond_jump)
  0x001C6195  0000                    add      byte ptr [eax], al             
  0x001C6197  0023                    add      byte ptr [ebx], ah             
  0x001C6199  0000                    add      byte ptr [eax], al             
  0x001C619B  002b                    add      byte ptr [ebx], ch             
  0x001C619D  0000                    add      byte ptr [eax], al             
  0x001C619F  0033                    add      byte ptr [ebx], dh             
  0x001C61A1  0000                    add      byte ptr [eax], al             
  0x001C61A3  003b                    add      byte ptr [ebx], bh             
  0x001C61A5  0000                    add      byte ptr [eax], al             
  0x001C61A7  004300                  add      byte ptr [ebx], al             
  0x001C61AA  0000                    add      byte ptr [eax], al             
  0x001C61AC  53                      push     ebx                            
  0x001C61AD  0000                    add      byte ptr [eax], al             
  0x001C61AF  006300                  add      byte ptr [ebx], ah             
  0x001C61B2  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x001C6143 (cond_jump)
  0x001C61B4  7300                    jae      0x1c61b6                       
                                        ; XREF: 0x001C61B4 (cond_jump)
  0x001C61B6  0000                    add      byte ptr [eax], al             
  0x001C61B8  830000                  add      dword ptr [eax], 0             
  0x001C61BB  00a3000000c3            add      byte ptr [ebx - 0x3d000000], ah 
  0x001C61C1  0000                    add      byte ptr [eax], al             
  0x001C61C3  00e3                    add      bl, ah                         
  0x001C61C5  0000                    add      byte ptr [eax], al             
  0x001C61C7  0002                    add      byte ptr [edx], al             
  0x001C61C9  0100                    add      dword ptr [eax], eax           
  0x001C61CB  0000                    add      byte ptr [eax], al             
  0x001C61CD  0000                    add      byte ptr [eax], al             
  0x001C61CF  0000                    add      byte ptr [eax], al             
  0x001C61D1  0000                    add      byte ptr [eax], al             
  0x001C61D3  0000                    add      byte ptr [eax], al             
  0x001C61D5  0000                    add      byte ptr [eax], al             
  0x001C61D7  0000                    add      byte ptr [eax], al             
  0x001C61D9  0000                    add      byte ptr [eax], al             
  0x001C61DB  0000                    add      byte ptr [eax], al             
  0x001C61DD  0000                    add      byte ptr [eax], al             
  0x001C61DF  0000                    add      byte ptr [eax], al             
  0x001C61E1  0000                    add      byte ptr [eax], al             
  0x001C61E3  0000                    add      byte ptr [eax], al             
  0x001C61E5  0000                    add      byte ptr [eax], al             
  0x001C61E7  0000                    add      byte ptr [eax], al             
  0x001C61E9  0000                    add      byte ptr [eax], al             
  0x001C61EB  0000                    add      byte ptr [eax], al             
  0x001C61ED  0000                    add      byte ptr [eax], al             
  0x001C61EF  0000                    add      byte ptr [eax], al             
  0x001C61F1  0000                    add      byte ptr [eax], al             
  0x001C61F3  0000                    add      byte ptr [eax], al             
  0x001C61F5  0000                    add      byte ptr [eax], al             
  0x001C61F7  0001                    add      byte ptr [ecx], al             
  0x001C61F9  0000                    add      byte ptr [eax], al             
  0x001C61FB  0001                    add      byte ptr [ecx], al             
  0x001C61FD  0000                    add      byte ptr [eax], al             
  0x001C61FF  0001                    add      byte ptr [ecx], al             
  0x001C6201  0000                    add      byte ptr [eax], al             
  0x001C6203  0001                    add      byte ptr [ecx], al             
  0x001C6205  0000                    add      byte ptr [eax], al             
  0x001C6207  0002                    add      byte ptr [edx], al             
  0x001C6209  0000                    add      byte ptr [eax], al             
  0x001C620B  0002                    add      byte ptr [edx], al             
  0x001C620D  0000                    add      byte ptr [eax], al             
  0x001C620F  0002                    add      byte ptr [edx], al             
  0x001C6211  0000                    add      byte ptr [eax], al             
  0x001C6213  0002                    add      byte ptr [edx], al             
  0x001C6215  0000                    add      byte ptr [eax], al             
  0x001C6217  0003                    add      byte ptr [ebx], al             
  0x001C6219  0000                    add      byte ptr [eax], al             
  0x001C621B  0003                    add      byte ptr [ebx], al             
  0x001C621D  0000                    add      byte ptr [eax], al             
  0x001C621F  0003                    add      byte ptr [ebx], al             
  0x001C6221  0000                    add      byte ptr [eax], al             
  0x001C6223  0003                    add      byte ptr [ebx], al             
  0x001C6225  0000                    add      byte ptr [eax], al             
  0x001C6227  000400                  add      byte ptr [eax + eax], al       
  0x001C622A  0000                    add      byte ptr [eax], al             
  0x001C622C  0400                    add      al, 0                          
  0x001C622E  0000                    add      byte ptr [eax], al             
  0x001C6230  0400                    add      al, 0                          
  0x001C6232  0000                    add      byte ptr [eax], al             
  0x001C6234  0400                    add      al, 0                          
  0x001C6236  0000                    add      byte ptr [eax], al             
  0x001C6238  0500000005              add      eax, 0x5000000                 
  0x001C623D  0000                    add      byte ptr [eax], al             
  0x001C623F  000500000005            add      byte ptr [0x5000000], al       
  0x001C6245  0000                    add      byte ptr [eax], al             
  0x001C6247  0000                    add      byte ptr [eax], al             
  0x001C6249  0000                    add      byte ptr [eax], al             
  0x001C624B  007000                  add      byte ptr [eax], dh             
  0x001C624E  0000                    add      byte ptr [eax], al             
  0x001C6250  7000                    jo       0x1c6252                       
                                        ; XREF: 0x001C6250 (cond_jump)
  0x001C6252  0000                    add      byte ptr [eax], al             
  0x001C6254  0000                    add      byte ptr [eax], al             
  0x001C6256  0000                    add      byte ptr [eax], al             
  0x001C6258  0100                    add      dword ptr [eax], eax           
  0x001C625A  0000                    add      byte ptr [eax], al             
  0x001C625C  0200                    add      al, byte ptr [eax]             
  0x001C625E  0000                    add      byte ptr [eax], al             
  0x001C6260  0300                    add      eax, dword ptr [eax]           
  0x001C6262  0000                    add      byte ptr [eax], al             
  0x001C6264  0400                    add      al, 0                          
  0x001C6266  0000                    add      byte ptr [eax], al             
  0x001C6268  0500000007              add      eax, 0x7000000                 
  0x001C626D  0000                    add      byte ptr [eax], al             
  0x001C626F  0009                    add      byte ptr [ecx], cl             
  0x001C6271  0000                    add      byte ptr [eax], al             
  0x001C6273  000d00000011            add      byte ptr [0x11000000], cl      
  0x001C6279  0000                    add      byte ptr [eax], al             
  0x001C627B  0019                    add      byte ptr [ecx], bl             
  0x001C627D  0000                    add      byte ptr [eax], al             
  0x001C627F  0021                    add      byte ptr [ecx], ah             
  0x001C6281  0000                    add      byte ptr [eax], al             
  0x001C6283  0031                    add      byte ptr [ecx], dh             
  0x001C6285  0000                    add      byte ptr [eax], al             
  0x001C6287  004100                  add      byte ptr [ecx], al             
  0x001C628A  0000                    add      byte ptr [eax], al             
  0x001C628C  61                      popal                                   
  0x001C628D  0000                    add      byte ptr [eax], al             
  0x001C628F  0081000000c1            add      byte ptr [ecx - 0x3f000000], al 
  0x001C6295  0000                    add      byte ptr [eax], al             
  0x001C6297  0001                    add      byte ptr [ecx], al             
  0x001C6299  0100                    add      dword ptr [eax], eax           
  0x001C629B  008101000001            add      byte ptr [ecx + 0x1000001], al 
  0x001C62A1  0200                    add      al, byte ptr [eax]             
  0x001C62A3  0001                    add      byte ptr [ecx], al             
  0x001C62A5  0300                    add      eax, dword ptr [eax]           
  0x001C62A7  0001                    add      byte ptr [ecx], al             
  0x001C62A9  0400                    add      al, 0                          
  0x001C62AB  0001                    add      byte ptr [ecx], al             
  0x001C62AD  06                      push     es                             
  0x001C62AE  0000                    add      byte ptr [eax], al             
  0x001C62B0  0108                    add      dword ptr [eax], ecx           
  0x001C62B2  0000                    add      byte ptr [eax], al             
  0x001C62B4  010c00                  add      dword ptr [eax + eax], ecx     
  0x001C62B7  0001                    add      byte ptr [ecx], al             
  0x001C62B9  1000                    adc      byte ptr [eax], al             
  0x001C62BB  0001                    add      byte ptr [ecx], al             
  0x001C62BD  1800                    sbb      byte ptr [eax], al             
  0x001C62BF  0001                    add      byte ptr [ecx], al             
  0x001C62C1  2000                    and      byte ptr [eax], al             
  0x001C62C3  0001                    add      byte ptr [ecx], al             
  0x001C62C5  3000                    xor      byte ptr [eax], al             
  0x001C62C7  0001                    add      byte ptr [ecx], al             
  0x001C62C9  40                      inc      eax                            
  0x001C62CA  0000                    add      byte ptr [eax], al             
  0x001C62CC  016000                  add      dword ptr [eax], esp           
  0x001C62CF  0000                    add      byte ptr [eax], al             
  0x001C62D1  0000                    add      byte ptr [eax], al             
  0x001C62D3  0000                    add      byte ptr [eax], al             
  0x001C62D5  0000                    add      byte ptr [eax], al             
  0x001C62D7  0000                    add      byte ptr [eax], al             
  0x001C62D9  0000                    add      byte ptr [eax], al             
  0x001C62DB  0000                    add      byte ptr [eax], al             
  0x001C62DD  0000                    add      byte ptr [eax], al             
  0x001C62DF  0001                    add      byte ptr [ecx], al             
  0x001C62E1  0000                    add      byte ptr [eax], al             
  0x001C62E3  0001                    add      byte ptr [ecx], al             
  0x001C62E5  0000                    add      byte ptr [eax], al             
  0x001C62E7  0002                    add      byte ptr [edx], al             
  0x001C62E9  0000                    add      byte ptr [eax], al             
  0x001C62EB  0002                    add      byte ptr [edx], al             
  0x001C62ED  0000                    add      byte ptr [eax], al             
  0x001C62EF  0003                    add      byte ptr [ebx], al             
  0x001C62F1  0000                    add      byte ptr [eax], al             
  0x001C62F3  0003                    add      byte ptr [ebx], al             
  0x001C62F5  0000                    add      byte ptr [eax], al             
  0x001C62F7  000400                  add      byte ptr [eax + eax], al       
  0x001C62FA  0000                    add      byte ptr [eax], al             
  0x001C62FC  0400                    add      al, 0                          
  0x001C62FE  0000                    add      byte ptr [eax], al             
  0x001C6300  0500000005              add      eax, 0x5000000                 
  0x001C6305  0000                    add      byte ptr [eax], al             
  0x001C6307  0006                    add      byte ptr [esi], al             
  0x001C6309  0000                    add      byte ptr [eax], al             
  0x001C630B  0006                    add      byte ptr [esi], al             
  0x001C630D  0000                    add      byte ptr [eax], al             
  0x001C630F  0007                    add      byte ptr [edi], al             
  0x001C6311  0000                    add      byte ptr [eax], al             
  0x001C6313  0007                    add      byte ptr [edi], al             
  0x001C6315  0000                    add      byte ptr [eax], al             
  0x001C6317  0008                    add      byte ptr [eax], cl             
  0x001C6319  0000                    add      byte ptr [eax], al             
  0x001C631B  0008                    add      byte ptr [eax], cl             
  0x001C631D  0000                    add      byte ptr [eax], al             
  0x001C631F  0009                    add      byte ptr [ecx], cl             
  0x001C6321  0000                    add      byte ptr [eax], al             
  0x001C6323  0009                    add      byte ptr [ecx], cl             
  0x001C6325  0000                    add      byte ptr [eax], al             
  0x001C6327  000a                    add      byte ptr [edx], cl             
  0x001C6329  0000                    add      byte ptr [eax], al             
  0x001C632B  000a                    add      byte ptr [edx], cl             
  0x001C632D  0000                    add      byte ptr [eax], al             
  0x001C632F  000b                    add      byte ptr [ebx], cl             
  0x001C6331  0000                    add      byte ptr [eax], al             
  0x001C6333  000b                    add      byte ptr [ebx], cl             
  0x001C6335  0000                    add      byte ptr [eax], al             
  0x001C6337  000c00                  add      byte ptr [eax + eax], cl       
  0x001C633A  0000                    add      byte ptr [eax], al             
  0x001C633C  0c00                    or       al, 0                          
  0x001C633E  0000                    add      byte ptr [eax], al             
  0x001C6340  0d0000000d              or       eax, 0xd000000                 
  0x001C6345  0000                    add      byte ptr [eax], al             
  0x001C6347  008e09000084            add      byte ptr [esi - 0x7bfffff7], cl 
  0x001C634F  ff5111                  call     dword ptr [ecx + 0x11]         
  0x001C6352  0000                    add      byte ptr [eax], al             
  0x001C6354  7e18                    jle      0x1c636e                       
  0x001C6356  0000                    add      byte ptr [eax], al             
  0x001C6358  33e3                    xor      esp, ebx                       
  0x001C635B  ffa12500000b            jmp      dword ptr [ecx + 0xb000025]    
  0x001C6361  3000                    xor      byte ptr [eax], al             
  0x001C6363  00df                    add      bh, bl                         
  0x001C6368  3bc1                    cmp      eax, ecx                       
  0x001C636B  ffb3410000fd            push     dword ptr [ebx - 0x2ffffbf]    
  0x001C6371  ad                      lodsd    eax, dword ptr [esi]           
  0x001C6373  ff546200                call     dword ptr [edx]                
  0x001C6377  0000                    add      byte ptr [eax], al             
  0x001C6379  0400                    add      al, 0                          
  0x001C637B  0000                    add      byte ptr [eax], al             
  0x001C637D  0002                    add      byte ptr [edx], al             
  0x001C637F  00ff                    add      bh, bh                         
  0x001C6381  0300                    add      eax, dword ptr [eax]           
  0x001C6383  0000                    add      byte ptr [eax], al             
  0x001C6385  0000                    add      byte ptr [eax], al             
  0x001C6387  008e0900008e            add      byte ptr [esi - 0x71fffff7], cl 
  0x001C638D  0900                    or       dword ptr [eax], eax           
  0x001C638F  007c0c00                add      byte ptr [esp + ecx], bh       
  0x001C6393  007c0c00                add      byte ptr [esp + ecx], bh       
  0x001C6397  005111                  add      byte ptr [ecx + 0x11], dl      
  0x001C639A  0000                    add      byte ptr [eax], al             
  0x001C639C  51                      push     ecx                            
  0x001C639D  1100                    adc      dword ptr [eax], eax           
  0x001C639F  007e18                  add      byte ptr [esi + 0x18], bh      
  0x001C63A2  0000                    add      byte ptr [eax], al             
  0x001C63A4  7e18                    jle      0x1c63be                       
  0x001C63A6  0000                    add      byte ptr [eax], al             
  0x001C63A8  cd1c                    int      0x1c                           
  0x001C63AA  0000                    add      byte ptr [eax], al             
  0x001C63AC  cd1c                    int      0x1c                           
  0x001C63AE  0000                    add      byte ptr [eax], al             
  0x001C63B0  a1250000a1              mov      eax, dword ptr [0xa1000025]    
  0x001C63B5  2500000b30              and      eax, 0x300b0000                
  0x001C63BA  0000                    add      byte ptr [eax], al             
  0x001C63BC  0b30                    or       esi, dword ptr [eax]           
                                        ; XREF: 0x001C63A4 (cond_jump)
  0x001C63BE  0000                    add      byte ptr [eax], al             
  0x001C63C0  213b                    and      dword ptr [ebx], edi           
  0x001C63C2  0000                    add      byte ptr [eax], al             
  0x001C63C4  213b                    and      dword ptr [ebx], edi           
  0x001C63C6  0000                    add      byte ptr [eax], al             
  0x001C63C8  c53e                    lds      edi, ptr [esi]                 
  0x001C63CA  0000                    add      byte ptr [eax], al             
  0x001C63CC  c53e                    lds      edi, ptr [esi]                 
  0x001C63CE  0000                    add      byte ptr [eax], al             
  0x001C63D0  b341                    mov      bl, 0x41                       
  0x001C63D2  0000                    add      byte ptr [eax], al             
  0x001C63D4  b341                    mov      bl, 0x41                       
  0x001C63D6  0000                    add      byte ptr [eax], al             
  0x001C63D8  035200                  add      edx, dword ptr [edx]           
  0x001C63DB  0003                    add      byte ptr [ebx], al             
  0x001C63DD  52                      push     edx                            
  0x001C63DE  0000                    add      byte ptr [eax], al             
  0x001C63E0  54                      push     esp                            
  0x001C63E1  6200                    bound    eax, qword ptr [eax]           
  0x001C63E3  00546200                add      byte ptr [edx], dl             
  0x001C63E7  00ff                    add      bh, bh                         
  0x001C63EF  ff01                    inc      dword ptr [ecx]                
  0x001C63F1  0000                    add      byte ptr [eax], al             
  0x001C63F3  0001                    add      byte ptr [ecx], al             
  0x001C63F5  0000                    add      byte ptr [eax], al             
  0x001C63F7  0001                    add      byte ptr [ecx], al             
  0x001C63F9  0000                    add      byte ptr [eax], al             
  0x001C63FB  0001                    add      byte ptr [ecx], al             
  0x001C63FD  0000                    add      byte ptr [eax], al             
  0x001C63FF  0000                    add      byte ptr [eax], al             
  0x001C6401  0400                    add      al, 0                          
  0x001C6403  0000                    add      byte ptr [eax], al             
  0x001C6405  0400                    add      al, 0                          
  0x001C6407  0000                    add      byte ptr [eax], al             
  0x001C6409  0002                    add      byte ptr [edx], al             
  0x001C640B  0000                    add      byte ptr [eax], al             
  0x001C640D  0002                    add      byte ptr [edx], al             
  0x001C640F  00ff                    add      bh, bh                         
  0x001C6411  0300                    add      eax, dword ptr [eax]           
  0x001C6413  00ff                    add      bh, bh                         
  0x001C6415  0300                    add      eax, dword ptr [eax]           
  0x001C6417  007e18                  add      byte ptr [esi + 0x18], bh      
  0x001C641A  0000                    add      byte ptr [eax], al             
  0x001C641C  213b                    and      dword ptr [ebx], edi           
  0x001C641E  0000                    add      byte ptr [eax], al             
  0x001C6420  0000                    add      byte ptr [eax], al             
  0x001C6422  0000                    add      byte ptr [eax], al             
  0x001C6424  51                      push     ecx                            
  0x001C6425  1100                    adc      dword ptr [eax], eax           
  0x001C6427  0000                    add      byte ptr [eax], al             
  0x001C6429  000b                    add      byte ptr [ebx], cl             
  0x001C642B  3000                    xor      byte ptr [eax], al             
  0x001C642D  00546200                add      byte ptr [edx], dl             
  0x001C6431  00b34100008e            add      byte ptr [ebx - 0x71ffffbf], dh 
  0x001C6437  0900                    or       dword ptr [eax], eax           
  0x001C6439  0003                    add      byte ptr [ebx], al             
  0x001C643B  52                      push     edx                            
  0x001C643C  0000                    add      byte ptr [eax], al             
  0x001C643E  cd1c                    int      0x1c                           
  0x001C6440  0000                    add      byte ptr [eax], al             
  0x001C6442  7c0c                    jl       0x1c6450                       
  0x001C6444  0000                    add      byte ptr [eax], al             
  0x001C6446  c53e                    lds      edi, ptr [esi]                 
  0x001C6448  0000                    add      byte ptr [eax], al             
  0x001C644A  0000                    add      byte ptr [eax], al             
  0x001C644C  0000                    add      byte ptr [eax], al             
  0x001C644E  a1256a0100              mov      eax, dword ptr [0x16a25]       
  0x001C6453  0063fd                  add      byte ptr [ebx - 3], ah         
  0x001C6457  ff15010000d9            call     dword ptr [0xd9000001]         
  0x001C645D  0100                    add      dword ptr [eax], eax           
  0x001C645F  006a01                  add      byte ptr [edx + 1], ch         
  0x001C6462  0000                    add      byte ptr [eax], al             
  0x001C6464  6a01                    push     1                              
  0x001C6466  0000                    add      byte ptr [eax], al             
  0x001C6468  63fd                    arpl     bp, di                         
  0x001C646A  0000                    add      byte ptr [eax], al             
  0x001C646C  63fd                    arpl     bp, di                         
  0x001C646E  0000                    add      byte ptr [eax], al             
  0x001C6470  1501000015              adc      eax, 0x15000001                
  0x001C6475  0100                    add      dword ptr [eax], eax           
  0x001C6477  00d9                    add      cl, bl                         
  0x001C6479  0100                    add      dword ptr [eax], eax           
  0x001C647B  00d9                    add      cl, bl                         
  0x001C647D  0100                    add      dword ptr [eax], eax           
