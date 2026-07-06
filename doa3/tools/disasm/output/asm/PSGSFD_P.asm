; ============================================================
; Section: PSGSFD_P
; VA: 0x001E5500 - 0x001E5930
; Size: 1072 bytes (1.0 KB)
; Functions: 0
; Instructions: 345
; ============================================================

  0x001E5500  83ec0c                  sub      esp, 0xc                       
  0x001E5503  53                      push     ebx                            
  0x001E5504  55                      push     ebp                            
  0x001E5505  56                      push     esi                            
  0x001E5506  57                      push     edi                            
  0x001E5507  8b7c2420                mov      edi, dword ptr [esp + 0x20]    
  0x001E550B  8b5704                  mov      edx, dword ptr [edi + 4]       
  0x001E550E  c744241401000000        mov      dword ptr [esp + 0x14], 1      
  0x001E5516  89542420                mov      dword ptr [esp + 0x20], edx    
                                        ; XREF: 0x001E58EC (jump)
  0x001E551A  8b1f                    mov      ebx, dword ptr [edi]           
  0x001E551C  8b6f08                  mov      ebp, dword ptr [edi + 8]       
  0x001E551F  8b770c                  mov      esi, dword ptr [edi + 0xc]     
  0x001E5522  8bc3                    mov      eax, ebx                       
  0x001E5524  c1e809                  shr      eax, 9                         
  0x001E5527  83fd09                  cmp      ebp, 9                         
  0x001E552A  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E552E  7e13                    jle      0x1e5543                       
  0x001E5530  b929000000              mov      ecx, 0x29                      
  0x001E5535  2bcd                    sub      ecx, ebp                       
  0x001E5537  8bc2                    mov      eax, edx                       
  0x001E5539  d3e8                    shr      eax, cl                        
  0x001E553B  8bc8                    mov      ecx, eax                       
  0x001E553D  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E5541  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E552E (cond_jump)
  0x001E5543  85c0                    test     eax, eax                       
  0x001E5545  0f84a6030000            je       0x1e58f1                       
  0x001E554B  8b879c020000            mov      eax, dword ptr [edi + 0x29c]   
  0x001E5551  89442418                mov      dword ptr [esp + 0x18], eax    
                                        ; XREF: 0x001E55E9 (cond_jump), 0x001E55FB (jump)
  0x001E5555  8bc3                    mov      eax, ebx                       
  0x001E5557  c1e815                  shr      eax, 0x15                      
  0x001E555A  83fd15                  cmp      ebp, 0x15                      
  0x001E555D  7e0f                    jle      0x1e556e                       
  0x001E555F  b935000000              mov      ecx, 0x35                      
  0x001E5564  2bcd                    sub      ecx, ebp                       
  0x001E5566  d3ea                    shr      edx, cl                        
  0x001E5568  0bc2                    or       eax, edx                       
  0x001E556A  8b542420                mov      edx, dword ptr [esp + 0x20]    
                                        ; XREF: 0x001E555D (cond_jump)
  0x001E556E  a980ffffff              test     eax, 0xffffff80                
  0x001E5573  7510                    jne      0x1e5585                       
  0x001E5575  8b0d28dcc000            mov      ecx, dword ptr [0xc0dc28]      
  0x001E557B  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E557F  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E5583  eb11                    jmp      0x1e5596                       
                                        ; XREF: 0x001E5573 (cond_jump)
  0x001E5585  8b0d24dcc000            mov      ecx, dword ptr [0xc0dc24]      
  0x001E558B  c1e806                  shr      eax, 6                         
  0x001E558E  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E5592  89442410                mov      dword ptr [esp + 0x10], eax    
                                        ; XREF: 0x001E5583 (jump)
  0x001E5596  8bc8                    mov      ecx, eax                       
  0x001E5598  83e10f                  and      ecx, 0xf                       
  0x001E559B  03e9                    add      ebp, ecx                       
  0x001E559D  83fd20                  cmp      ebp, 0x20                      
  0x001E55A0  7c37                    jl       0x1e55d9                       
  0x001E55A2  0fbe06                  movsx    eax, byte ptr [esi]            
  0x001E55A5  83ed20                  sub      ebp, 0x20                      
  0x001E55A8  8bda                    mov      ebx, edx                       
  0x001E55AA  8bcd                    mov      ecx, ebp                       
  0x001E55AC  d3e3                    shl      ebx, cl                        
  0x001E55AE  0fb64e01                movzx    ecx, byte ptr [esi + 1]        
  0x001E55B2  c1e008                  shl      eax, 8                         
  0x001E55B5  46                      inc      esi                            
  0x001E55B6  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E55BA  0bc1                    or       eax, ecx                       
  0x001E55BC  46                      inc      esi                            
  0x001E55BD  0fb64e01                movzx    ecx, byte ptr [esi + 1]        
  0x001E55C1  c1e008                  shl      eax, 8                         
  0x001E55C4  0bc2                    or       eax, edx                       
  0x001E55C6  46                      inc      esi                            
  0x001E55C7  c1e008                  shl      eax, 8                         
  0x001E55CA  0bc1                    or       eax, ecx                       
  0x001E55CC  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E55D0  8bd0                    mov      edx, eax                       
  0x001E55D2  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E55D6  46                      inc      esi                            
  0x001E55D7  eb02                    jmp      0x1e55db                       
                                        ; XREF: 0x001E55A0 (cond_jump)
  0x001E55D9  d3e3                    shl      ebx, cl                        
                                        ; XREF: 0x001E55D7 (jump)
  0x001E55DB  8bc8                    mov      ecx, eax                       
  0x001E55DD  c1e902                  shr      ecx, 2                         
  0x001E55E0  0fb6c9                  movzx    ecx, cl                        
  0x001E55E3  c1e902                  shr      ecx, 2                         
  0x001E55E6  83f922                  cmp      ecx, 0x22                      
  0x001E55E9  0f8466ffffff            je       0x1e5555                       
  0x001E55EF  83f923                  cmp      ecx, 0x23                      
  0x001E55F2  750c                    jne      0x1e5600                       
  0x001E55F4  83879c02000021          add      dword ptr [edi + 0x29c], 0x21  
  0x001E55FB  e955ffffff              jmp      0x1e5555                       
                                        ; XREF: 0x001E55F2 (cond_jump)
  0x001E5600  83f924                  cmp      ecx, 0x24                      
  0x001E5603  0f84e8020000            je       0x1e58f1                       
  0x001E5609  018f9c020000            add      dword ptr [edi + 0x29c], ecx   
  0x001E560F  8b8f9c020000            mov      ecx, dword ptr [edi + 0x29c]   
  0x001E5615  c1e80a                  shr      eax, 0xa                       
  0x001E5618  8987a4020000            mov      dword ptr [edi + 0x2a4], eax   
  0x001E561E  3b8fa0020000            cmp      ecx, dword ptr [edi + 0x2a0]   
  0x001E5624  0f8fc7020000            jg       0x1e58f1                       
  0x001E562A  2b4c2418                sub      ecx, dword ptr [esp + 0x18]    
  0x001E562E  83f9fe                  cmp      ecx, -2                        
  0x001E5631  0f84ba020000            je       0x1e58f1                       
  0x001E5637  8b442414                mov      eax, dword ptr [esp + 0x14]    
  0x001E563B  85c0                    test     eax, eax                       
  0x001E563D  7545                    jne      0x1e5684                       
  0x001E563F  83f901                  cmp      ecx, 1                         
  0x001E5642  7640                    jbe      0x1e5684                       
  0x001E5644  51                      push     ecx                            
  0x001E5645  57                      push     edi                            
  0x001E5646  ff9730020000            call     dword ptr [edi + 0x230]        
  0x001E564C  8b542428                mov      edx, dword ptr [esp + 0x28]    
  0x001E5650  83c408                  add      esp, 8                         
  0x001E5653  33c0                    xor      eax, eax                       
  0x001E5655  898764020000            mov      dword ptr [edi + 0x264], eax   
  0x001E565B  898768020000            mov      dword ptr [edi + 0x268], eax   
  0x001E5661  89876c020000            mov      dword ptr [edi + 0x26c], eax   
  0x001E5667  898770020000            mov      dword ptr [edi + 0x270], eax   
  0x001E566D  b800040000              mov      eax, 0x400                     
  0x001E5672  8987ac020000            mov      dword ptr [edi + 0x2ac], eax   
  0x001E5678  8987b4020000            mov      dword ptr [edi + 0x2b4], eax   
  0x001E567E  8987b0020000            mov      dword ptr [edi + 0x2b0], eax   
                                        ; XREF: 0x001E563D (cond_jump), 0x001E5642 (cond_jump)
  0x001E5684  f687a402000020          test     byte ptr [edi + 0x2a4], 0x20   
  0x001E568B  7575                    jne      0x1e5702                       
  0x001E568D  8bc3                    mov      eax, ebx                       
  0x001E568F  c1e81b                  shr      eax, 0x1b                      
  0x001E5692  83fd1b                  cmp      ebp, 0x1b                      
  0x001E5695  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E5699  7e13                    jle      0x1e56ae                       
  0x001E569B  b93b000000              mov      ecx, 0x3b                      
  0x001E56A0  2bcd                    sub      ecx, ebp                       
  0x001E56A2  8bc2                    mov      eax, edx                       
  0x001E56A4  d3e8                    shr      eax, cl                        
  0x001E56A6  8bc8                    mov      ecx, eax                       
  0x001E56A8  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E56AC  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E5699 (cond_jump)
  0x001E56AE  8b0d40d8c000            mov      ecx, dword ptr [0xc0d840]      
  0x001E56B4  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E56B8  8bc8                    mov      ecx, eax                       
  0x001E56BA  c1e908                  shr      ecx, 8                         
  0x001E56BD  898fa4020000            mov      dword ptr [edi + 0x2a4], ecx   
  0x001E56C3  0fb6c8                  movzx    ecx, al                        
  0x001E56C6  03e9                    add      ebp, ecx                       
  0x001E56C8  83fd20                  cmp      ebp, 0x20                      
  0x001E56CB  7c33                    jl       0x1e5700                       
  0x001E56CD  0fbe06                  movsx    eax, byte ptr [esi]            
  0x001E56D0  83ed20                  sub      ebp, 0x20                      
  0x001E56D3  8bda                    mov      ebx, edx                       
  0x001E56D5  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E56D9  8bcd                    mov      ecx, ebp                       
  0x001E56DB  d3e3                    shl      ebx, cl                        
  0x001E56DD  46                      inc      esi                            
  0x001E56DE  0fb64e01                movzx    ecx, byte ptr [esi + 1]        
  0x001E56E2  c1e008                  shl      eax, 8                         
  0x001E56E5  0bc2                    or       eax, edx                       
  0x001E56E7  46                      inc      esi                            
  0x001E56E8  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E56EC  c1e008                  shl      eax, 8                         
  0x001E56EF  0bc1                    or       eax, ecx                       
  0x001E56F1  46                      inc      esi                            
  0x001E56F2  c1e008                  shl      eax, 8                         
  0x001E56F5  0bc2                    or       eax, edx                       
  0x001E56F7  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E56FB  46                      inc      esi                            
  0x001E56FC  8bd0                    mov      edx, eax                       
  0x001E56FE  eb02                    jmp      0x1e5702                       
                                        ; XREF: 0x001E56CB (cond_jump)
  0x001E5700  d3e3                    shl      ebx, cl                        
                                        ; XREF: 0x001E568B (cond_jump), 0x001E56FE (jump)
  0x001E5702  f687a402000010          test     byte ptr [edi + 0x2a4], 0x10   
  0x001E5709  7461                    je       0x1e576c                       
  0x001E570B  83fd1b                  cmp      ebp, 0x1b                      
  0x001E570E  7c4b                    jl       0x1e575b                       
  0x001E5710  83ed1b                  sub      ebp, 0x1b                      
  0x001E5713  7416                    je       0x1e572b                       
  0x001E5715  b905000000              mov      ecx, 5                         
  0x001E571A  2bcd                    sub      ecx, ebp                       
  0x001E571C  8bc2                    mov      eax, edx                       
  0x001E571E  d3e8                    shr      eax, cl                        
  0x001E5720  8bcd                    mov      ecx, ebp                       
  0x001E5722  0bc3                    or       eax, ebx                       
  0x001E5724  c1e81b                  shr      eax, 0x1b                      
  0x001E5727  d3e2                    shl      edx, cl                        
  0x001E5729  eb05                    jmp      0x1e5730                       
                                        ; XREF: 0x001E5713 (cond_jump)
  0x001E572B  8bc3                    mov      eax, ebx                       
  0x001E572D  c1e81b                  shr      eax, 0x1b                      
                                        ; XREF: 0x001E5729 (jump)
  0x001E5730  0fbe0e                  movsx    ecx, byte ptr [esi]            
  0x001E5733  46                      inc      esi                            
  0x001E5734  c1e108                  shl      ecx, 8                         
  0x001E5737  8bda                    mov      ebx, edx                       
  0x001E5739  0fb616                  movzx    edx, byte ptr [esi]            
  0x001E573C  0bca                    or       ecx, edx                       
  0x001E573E  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E5742  46                      inc      esi                            
  0x001E5743  c1e108                  shl      ecx, 8                         
  0x001E5746  0bca                    or       ecx, edx                       
  0x001E5748  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E574C  46                      inc      esi                            
  0x001E574D  c1e108                  shl      ecx, 8                         
  0x001E5750  0bca                    or       ecx, edx                       
  0x001E5752  894c2420                mov      dword ptr [esp + 0x20], ecx    
  0x001E5756  46                      inc      esi                            
  0x001E5757  8bd1                    mov      edx, ecx                       
  0x001E5759  eb0b                    jmp      0x1e5766                       
                                        ; XREF: 0x001E570E (cond_jump)
  0x001E575B  8bc3                    mov      eax, ebx                       
  0x001E575D  83c505                  add      ebp, 5                         
  0x001E5760  c1e81b                  shr      eax, 0x1b                      
  0x001E5763  c1e305                  shl      ebx, 5                         
                                        ; XREF: 0x001E5759 (jump)
  0x001E5766  898750020000            mov      dword ptr [edi + 0x250], eax   
                                        ; XREF: 0x001E5709 (cond_jump)
  0x001E576C  f687a402000008          test     byte ptr [edi + 0x2a4], 8      
  0x001E5773  7463                    je       0x1e57d8                       
  0x001E5775  8d8764020000            lea      eax, [edi + 0x264]             
  0x001E577B  50                      push     eax                            
  0x001E577C  8d8f6c020000            lea      ecx, [edi + 0x26c]             
  0x001E5782  89770c                  mov      dword ptr [edi + 0xc], esi     
  0x001E5785  51                      push     ecx                            
  0x001E5786  8db754020000            lea      esi, [edi + 0x254]             
  0x001E578C  56                      push     esi                            
  0x001E578D  57                      push     edi                            
  0x001E578E  891f                    mov      dword ptr [edi], ebx           
  0x001E5790  895704                  mov      dword ptr [edi + 4], edx       
  0x001E5793  896f08                  mov      dword ptr [edi + 8], ebp       
  0x001E5796  e8e5f6ffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E579B  8d9768020000            lea      edx, [edi + 0x268]             
  0x001E57A1  52                      push     edx                            
  0x001E57A2  8944242c                mov      dword ptr [esp + 0x2c], eax    
  0x001E57A6  8d8770020000            lea      eax, [edi + 0x270]             
  0x001E57AC  50                      push     eax                            
  0x001E57AD  56                      push     esi                            
  0x001E57AE  57                      push     edi                            
  0x001E57AF  e8ccf6ffff              call     0x1e4e80                       ; -> sub_001E4E80
  0x001E57B4  8b4f04                  mov      ecx, dword ptr [edi + 4]       
  0x001E57B7  8b1f                    mov      ebx, dword ptr [edi]           
  0x001E57B9  8b6f08                  mov      ebp, dword ptr [edi + 8]       
  0x001E57BC  8b770c                  mov      esi, dword ptr [edi + 0xc]     
  0x001E57BF  894c2440                mov      dword ptr [esp + 0x40], ecx    
  0x001E57C3  8b4c2438                mov      ecx, dword ptr [esp + 0x38]    
  0x001E57C7  83c420                  add      esp, 0x20                      
  0x001E57CA  0bc1                    or       eax, ecx                       
  0x001E57CC  0f851f010000            jne      0x1e58f1                       
  0x001E57D2  8b542420                mov      edx, dword ptr [esp + 0x20]    
  0x001E57D6  eb1a                    jmp      0x1e57f2                       
                                        ; XREF: 0x001E5773 (cond_jump)
  0x001E57D8  33c0                    xor      eax, eax                       
  0x001E57DA  898764020000            mov      dword ptr [edi + 0x264], eax   
  0x001E57E0  898768020000            mov      dword ptr [edi + 0x268], eax   
  0x001E57E6  89876c020000            mov      dword ptr [edi + 0x26c], eax   
  0x001E57EC  898770020000            mov      dword ptr [edi + 0x270], eax   
                                        ; XREF: 0x001E57D6 (jump)
  0x001E57F2  f687a402000002          test     byte ptr [edi + 0x2a4], 2      
  0x001E57F9  747a                    je       0x1e5875                       
  0x001E57FB  8bc3                    mov      eax, ebx                       
  0x001E57FD  c1e817                  shr      eax, 0x17                      
  0x001E5800  83fd17                  cmp      ebp, 0x17                      
  0x001E5803  89442410                mov      dword ptr [esp + 0x10], eax    
  0x001E5807  7e13                    jle      0x1e581c                       
  0x001E5809  b937000000              mov      ecx, 0x37                      
  0x001E580E  2bcd                    sub      ecx, ebp                       
  0x001E5810  8bc2                    mov      eax, edx                       
  0x001E5812  d3e8                    shr      eax, cl                        
  0x001E5814  8bc8                    mov      ecx, eax                       
  0x001E5816  8b442410                mov      eax, dword ptr [esp + 0x10]    
  0x001E581A  0bc1                    or       eax, ecx                       
                                        ; XREF: 0x001E5807 (cond_jump)
  0x001E581C  8b0d64dec000            mov      ecx, dword ptr [0xc0de64]      
  0x001E5822  0fbf0441                movsx    eax, word ptr [ecx + eax*2]    
  0x001E5826  8bc8                    mov      ecx, eax                       
  0x001E5828  83e1f0                  and      ecx, 0xfffffff0                
  0x001E582B  c1e110                  shl      ecx, 0x10                      
  0x001E582E  898fa8020000            mov      dword ptr [edi + 0x2a8], ecx   
  0x001E5834  0fb6c8                  movzx    ecx, al                        
  0x001E5837  03e9                    add      ebp, ecx                       
  0x001E5839  83fd20                  cmp      ebp, 0x20                      
  0x001E583C  7c33                    jl       0x1e5871                       
  0x001E583E  0fbe06                  movsx    eax, byte ptr [esi]            
  0x001E5841  83ed20                  sub      ebp, 0x20                      
  0x001E5844  8bda                    mov      ebx, edx                       
  0x001E5846  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E584A  8bcd                    mov      ecx, ebp                       
  0x001E584C  d3e3                    shl      ebx, cl                        
  0x001E584E  46                      inc      esi                            
  0x001E584F  0fb64e01                movzx    ecx, byte ptr [esi + 1]        
  0x001E5853  c1e008                  shl      eax, 8                         
  0x001E5856  0bc2                    or       eax, edx                       
  0x001E5858  46                      inc      esi                            
  0x001E5859  0fb65601                movzx    edx, byte ptr [esi + 1]        
  0x001E585D  c1e008                  shl      eax, 8                         
  0x001E5860  0bc1                    or       eax, ecx                       
  0x001E5862  46                      inc      esi                            
  0x001E5863  c1e008                  shl      eax, 8                         
  0x001E5866  0bc2                    or       eax, edx                       
  0x001E5868  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E586C  46                      inc      esi                            
  0x001E586D  8bd0                    mov      edx, eax                       
  0x001E586F  eb0e                    jmp      0x1e587f                       
                                        ; XREF: 0x001E583C (cond_jump)
  0x001E5871  d3e3                    shl      ebx, cl                        
  0x001E5873  eb0a                    jmp      0x1e587f                       
                                        ; XREF: 0x001E57F9 (cond_jump)
  0x001E5875  c787a802000000000000    mov      dword ptr [edi + 0x2a8], 0     
                                        ; XREF: 0x001E586F (jump), 0x001E5873 (jump)
  0x001E587F  f687a402000001          test     byte ptr [edi + 0x2a4], 1      
  0x001E5886  891f                    mov      dword ptr [edi], ebx           
  0x001E5888  895704                  mov      dword ptr [edi + 4], edx       
  0x001E588B  896f08                  mov      dword ptr [edi + 8], ebp       
  0x001E588E  89770c                  mov      dword ptr [edi + 0xc], esi     
  0x001E5891  7413                    je       0x1e58a6                       
  0x001E5893  57                      push     edi                            
  0x001E5894  ff9734020000            call     dword ptr [edi + 0x234]        
  0x001E589A  57                      push     edi                            
  0x001E589B  ff973c020000            call     dword ptr [edi + 0x23c]        
  0x001E58A1  83c408                  add      esp, 8                         
  0x001E58A4  eb35                    jmp      0x1e58db                       
                                        ; XREF: 0x001E5891 (cond_jump)
  0x001E58A6  8b87a8020000            mov      eax, dword ptr [edi + 0x2a8]   
  0x001E58AC  85c0                    test     eax, eax                       
  0x001E58AE  740a                    je       0x1e58ba                       
  0x001E58B0  57                      push     edi                            
  0x001E58B1  ff9738020000            call     dword ptr [edi + 0x238]        
  0x001E58B7  83c404                  add      esp, 4                         
                                        ; XREF: 0x001E58AE (cond_jump)
  0x001E58BA  57                      push     edi                            
  0x001E58BB  ff9748020000            call     dword ptr [edi + 0x248]        
  0x001E58C1  b800040000              mov      eax, 0x400                     
  0x001E58C6  83c404                  add      esp, 4                         
  0x001E58C9  8987ac020000            mov      dword ptr [edi + 0x2ac], eax   
  0x001E58CF  8987b4020000            mov      dword ptr [edi + 0x2b4], eax   
  0x001E58D5  8987b0020000            mov      dword ptr [edi + 0x2b0], eax   
                                        ; XREF: 0x001E58A4 (jump)
  0x001E58DB  8b4704                  mov      eax, dword ptr [edi + 4]       
  0x001E58DE  89442420                mov      dword ptr [esp + 0x20], eax    
  0x001E58E2  c744241400000000        mov      dword ptr [esp + 0x14], 0      
  0x001E58EA  8bd0                    mov      edx, eax                       
  0x001E58EC  e929fcffff              jmp      0x1e551a                       
                                        ; XREF: 0x001E5545 (cond_jump), 0x001E5603 (cond_jump), 0x001E5624 (cond_jump), 0x001E5631 (cond_jump), 0x001E57CC (cond_jump)
  0x001E58F1  8b542424                mov      edx, dword ptr [esp + 0x24]    
  0x001E58F5  8b1a                    mov      ebx, dword ptr [edx]           
  0x001E58F7  83c507                  add      ebp, 7                         
  0x001E58FA  c1fd03                  sar      ebp, 3                         
  0x001E58FD  8d4c2ef8                lea      ecx, [esi + ebp - 8]           
  0x001E5901  8b74242c                mov      esi, dword ptr [esp + 0x2c]    
  0x001E5905  8b3e                    mov      edi, dword ptr [esi]           
  0x001E5907  8bc1                    mov      eax, ecx                       
  0x001E5909  2bc3                    sub      eax, ebx                       
  0x001E590B  03f8                    add      edi, eax                       
  0x001E590D  893e                    mov      dword ptr [esi], edi           
  0x001E590F  8b7c2428                mov      edi, dword ptr [esp + 0x28]    
  0x001E5913  8b2f                    mov      ebp, dword ptr [edi]           
  0x001E5915  56                      push     esi                            
  0x001E5916  2be8                    sub      ebp, eax                       
  0x001E5918  57                      push     edi                            
  0x001E5919  892f                    mov      dword ptr [edi], ebp           
  0x001E591B  52                      push     edx                            
  0x001E591C  890a                    mov      dword ptr [edx], ecx           
  0x001E591E  e89db8f9ff              call     0x1811c0                       ; -> sub_001811C0
  0x001E5923  83c40c                  add      esp, 0xc                       
  0x001E5926  5f                      pop      edi                            
  0x001E5927  5e                      pop      esi                            
  0x001E5928  5d                      pop      ebp                            
  0x001E5929  5b                      pop      ebx                            
  0x001E592A  83c40c                  add      esp, 0xc                       
  0x001E592D  c3                      ret                                     
  0x001E592E  90                      nop                                     
  0x001E592F  90                      nop                                     
