; ============================================================
; Section: DOLBY
; VA: 0x00C27F60 - 0x00C2ECF8
; Size: 28056 bytes (27.4 KB)
; Functions: 0
; Instructions: 11957
; ============================================================

  0x00C27F60  080c0500000000          or       byte ptr [eax], cl             
  0x00C27F67  0001                    add      byte ptr [ecx], al             
  0x00C27F69  0000                    add      byte ptr [eax], al             
  0x00C27F6B  0001                    add      byte ptr [ecx], al             
  0x00C27F6D  0000                    add      byte ptr [eax], al             
  0x00C27F6F  0000                    add      byte ptr [eax], al             
  0x00C27F71  0000                    add      byte ptr [eax], al             
  0x00C27F73  0000                    add      byte ptr [eax], al             
  0x00C27F75  0000                    add      byte ptr [eax], al             
  0x00C27F77  00cc                    add      ah, cl                         
  0x00C27F79  cc                      int3                                    
  0x00C27F7A  cc                      int3                                    
  0x00C27F7B  0000                    add      byte ptr [eax], al             
  0x00C27F7D  0000                    add      byte ptr [eax], al             
  0x00C27F7F  0000                    add      byte ptr [eax], al             
  0x00C27F81  002400                  add      byte ptr [eax + eax], ah       
  0x00C27F84  847007                  test     byte ptr [eax + 7], dh         
  0x00C27F87  000400                  add      byte ptr [eax + eax], al       
  0x00C27F8A  0000                    add      byte ptr [eax], al             
  0x00C27F8C  847007                  test     byte ptr [eax + 7], dh         
  0x00C27F8F  000500000032            add      byte ptr [0x32000000], al      
  0x00C27F95  f4                      hlt                                     
  0x00C27F96  07                      pop      es                             
  0x00C27F97  00ff                    add      bh, bh                         
  0x00C27F9A  ff00                    inc      dword ptr [eax]                
  0x00C27F9C  30f4                    xor      ah, dh                         
  0x00C27F9E  07                      pop      es                             
  0x00C27F9F  0001                    add      byte ptr [ecx], al             
  0x00C27FA1  0000                    add      byte ptr [eax], al             
  0x00C27FA3  0031                    add      byte ptr [ecx], dh             
  0x00C27FA5  f4                      hlt                                     
  0x00C27FA6  07                      pop      es                             
  0x00C27FA7  0001                    add      byte ptr [ecx], al             
  0x00C27FA9  0000                    add      byte ptr [eax], al             
  0x00C27FAB  00bb0005002a            add      byte ptr [ebx + 0x2a000500], bh 
  0x00C27FB1  f4                      hlt                                     
  0x00C27FB2  0500e00b00              add      eax, 0xbe000                   
  0x00C27FB7  00b820050074            add      byte ptr [eax + 0x74000520], bh 
  0x00C27FBD  fa                      cli                                     
  0x00C27FBE  0a00                    or       al, byte ptr [eax]             
  0x00C27FC0  1300                    adc      eax, dword ptr [eax]           
  0x00C27FC2  2000                    and      byte ptr [eax], al             
  0x00C27FC4  887007                  mov      byte ptr [eax + 7], dh         
  0x00C27FC7  0001                    add      byte ptr [ecx], al             
  0x00C27FC9  0000                    add      byte ptr [eax], al             
  0x00C27FCB  0008                    add      byte ptr [eax], cl             
  0x00C27FCD  0000                    add      byte ptr [eax], al             
  0x00C27FCF  008870070002            add      byte ptr [eax + 0x2000770], cl 
  0x00C27FD5  0000                    add      byte ptr [eax], al             
  0x00C27FD7  008870070003            add      byte ptr [eax + 0x3000770], cl 
  0x00C27FDD  0000                    add      byte ptr [eax], al             
  0x00C27FDF  0000                    add      byte ptr [eax], al             
  0x00C27FE1  f4                      hlt                                     
  0x00C27FE2  56                      push     esi                            
  0x00C27FE3  0000                    add      byte ptr [eax], al             
  0x00C27FE5  0000                    add      byte ptr [eax], al             
  0x00C27FE7  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C27FED  0100                    add      dword ptr [eax], eax           
  0x00C27FEF  0003                    add      byte ptr [ebx], al             
  0x00C27FF1  0020                    add      byte ptr [eax], ah             
  0x00C27FF3  004210                  add      byte ptr [edx + 0x10], al      
  0x00C27FF6  0d00a20000              or       eax, 0xa200                    
  0x00C27FFB  0085f4080002            add      byte ptr [ebp + 0x20008f4], al 
  0x00C28001  0000                    add      byte ptr [eax], al             
  0x00C28003  008ef0070007            add      byte ptr [esi + 0x70007f0], cl 
  0x00C28009  0000                    add      byte ptr [eax], al             
  0x00C2800B  00804101008e            add      byte ptr [eax - 0x71fffebf], al 
  0x00C28011  7007                    jo       0xc2801a                       
  0x00C28013  0007                    add      byte ptr [edi], al             
  0x00C28015  0000                    add      byte ptr [eax], al             
  0x00C28017  0084f408000100          add      byte ptr [esp + esi*8 + 0x10008], al 
  0x00C2801E  0000                    add      byte ptr [eax], al             
  0x00C28020  1300                    adc      eax, dword ptr [eax]           
  0x00C28022  2000                    and      byte ptr [eax], al             
  0x00C28024  80410100                add      byte ptr [ecx + 1], 0          
  0x00C28028  81850a003100000000f0    add      dword ptr [ebp + 0x31000a], 0xf0000000 
  0x00C28032  44                      inc      esp                            
  0x00C28033  00b3ffff0084            add      byte ptr [ebx - 0x7bff0001], dh 
  0x00C28039  7007                    jo       0xc28042                       
  0x00C2803B  000500000085            add      byte ptr [0x85000000], al      
  0x00C28041  f4                      hlt                                     
                                        ; XREF: 0x00C28039 (cond_jump)
  0x00C28042  0800                    or       byte ptr [eax], al             
  0x00C28044  0200                    add      al, byte ptr [eax]             
  0x00C28046  0000                    add      byte ptr [eax], al             
  0x00C2804A  07                      pop      es                             
  0x00C2804B  0001                    add      byte ptr [ecx], al             
  0x00C2804D  0000                    add      byte ptr [eax], al             
  0x00C2804F  0003                    add      byte ptr [ebx], al             
  0x00C28051  f4                      hlt                                     
  0x00C28052  60                      pushal                                  
  0x00C28053  00c0                    add      al, al                         
  0x00C28055  0b00                    or       eax, dword ptr [eax]           
  0x00C28057  0009                    add      byte ptr [ecx], cl             
  0x00C28059  2405                    and      al, 5                          
  0x00C2805B  0000                    add      byte ptr [eax], al             
  0x00C2805D  f4                      hlt                                     
  0x00C2805E  56                      push     esi                            
  0x00C2805F  000a                    add      byte ptr [edx], cl             
  0x00C28061  0000                    add      byte ptr [eax], al             
  0x00C28063  0000                    add      byte ptr [eax], al             
  0x00C28065  2038                    and      byte ptr [eax], bh             
  0x00C28067  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2806D  0100                    add      dword ptr [eax], eax           
  0x00C2806F  0003                    add      byte ptr [ebx], al             
  0x00C28071  0020                    add      byte ptr [eax], ah             
  0x00C28073  004210                  add      byte ptr [edx + 0x10], al      
  0x00C28076  0d00820000              or       eax, 0x8200                    
  0x00C2807B  0000                    add      byte ptr [eax], al             
  0x00C2807E  56                      push     esi                            
  0x00C2807F  00c1                    add      cl, al                         
  0x00C28081  0b00                    or       eax, dword ptr [eax]           
  0x00C28083  0003                    add      byte ptr [ebx], al             
  0x00C28085  f4                      hlt                                     
  0x00C28086  60                      pushal                                  
  0x00C28087  0000                    add      byte ptr [eax], al             
  0x00C28089  0300                    add      eax, dword ptr [eax]           
  0x00C2808B  0012                    add      byte ptr [edx], dl             
  0x00C2808D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2808E  050000f456              add      eax, 0x56f40000                
  0x00C28093  0001                    add      byte ptr [ecx], al             
  0x00C28095  0000                    add      byte ptr [eax], al             
  0x00C28097  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2809D  0100                    add      dword ptr [eax], eax           
  0x00C2809F  0003                    add      byte ptr [ebx], al             
  0x00C280A1  0020                    add      byte ptr [eax], ah             
  0x00C280A3  004210                  add      byte ptr [edx + 0x10], al      
  0x00C280A6  0d00760000              or       eax, 0x7600                    
  0x00C280AB  008ff0070002            add      byte ptr [edi + 0x20007f0], cl 
  0x00C280B1  0000                    add      byte ptr [eax], al             
  0x00C280B3  0000                    add      byte ptr [eax], al             
  0x00C280B5  f4                      hlt                                     
  0x00C280B6  60                      pushal                                  
  0x00C280B7  00c0                    add      al, al                         
  0x00C280B9  0b00                    or       eax, dword ptr [eax]           
  0x00C280BB  0080f00b0004            add      byte ptr [eax + 0x4000bf0], al 
  0x00C280C1  0300                    add      eax, dword ptr [eax]           
  0x00C280C3  0000                    add      byte ptr [eax], al             
  0x00C280C5  002400                  add      byte ptr [eax + eax], ah       
  0x00C280C8  847007                  test     byte ptr [eax + 7], dh         
  0x00C280CB  0002                    add      byte ptr [edx], al             
  0x00C280CD  0000                    add      byte ptr [eax], al             
  0x00C280CF  001c0c                  add      byte ptr [esp + ecx], bl       
  0x00C280D2  050000f057              add      eax, 0x57f00000                
  0x00C280D7  00c3                    add      bl, al                         
  0x00C280D9  0b00                    or       eax, dword ptr [eax]           
  0x00C280DB  000b                    add      byte ptr [ebx], cl             
  0x00C280DD  f4                      hlt                                     
  0x00C280DE  60                      pushal                                  
  0x00C280DF  0000                    add      byte ptr [eax], al             
  0x00C280E1  0300                    add      eax, dword ptr [eax]           
  0x00C280E3  0017                    add      byte ptr [edi], dl             
  0x00C280E5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C280E6  050013f444              add      eax, 0x44f41300                
  0x00C280EB  0005000000cd            add      byte ptr [0xcd000000], al      
  0x00C280F1  40                      inc      eax                            
  0x00C280F2  0100                    add      dword ptr [eax], eax           
  0x00C280F4  0100                    add      dword ptr [eax], eax           
  0x00C280F6  0000                    add      byte ptr [eax], al             
  0x00C280F8  41                      inc      ecx                            
  0x00C280F9  2a20                    sub      ah, byte ptr [eax]             
  0x00C280FB  0000                    add      byte ptr [eax], al             
  0x00C280FD  f4                      hlt                                     
  0x00C280FE  44                      inc      esp                            
  0x00C280FF  0006                    add      byte ptr [esi], al             
  0x00C28101  0000                    add      byte ptr [eax], al             
  0x00C28103  00cd                    add      ch, cl                         
  0x00C28105  40                      inc      eax                            
  0x00C28106  0100                    add      dword ptr [eax], eax           
  0x00C28108  0200                    add      al, byte ptr [eax]             
  0x00C2810A  0000                    add      byte ptr [eax], al             
  0x00C2810C  41                      inc      ecx                            
  0x00C2810D  2a20                    sub      ah, byte ptr [eax]             
  0x00C2810F  0003                    add      byte ptr [ebx], al             
  0x00C28111  0020                    add      byte ptr [eax], ah             
  0x00C28113  000b                    add      byte ptr [ebx], cl             
  0x00C28115  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C28116  050080f00b              add      eax, 0xbf08000                 
  0x00C2811B  008001000003            add      byte ptr [eax + 0x3000001], al 
  0x00C28121  0020                    add      byte ptr [eax], ah             
  0x00C28123  004210                  add      byte ptr [edx + 0x10], al      
  0x00C28126  0d00560000              or       eax, 0x5600                    
  0x00C2812B  0000                    add      byte ptr [eax], al             
  0x00C2812D  f4                      hlt                                     
  0x00C2812E  60                      pushal                                  
  0x00C2812F  00c0                    add      al, al                         
  0x00C28131  0b00                    or       eax, dword ptr [eax]           
  0x00C28133  0080f00b0004            add      byte ptr [eax + 0x4000bf0], al 
  0x00C28139  0300                    add      eax, dword ptr [eax]           
  0x00C2813B  0001                    add      byte ptr [ecx], al             
  0x00C2813D  0c05                    or       al, 5                          
  0x00C2813F  0000                    add      byte ptr [eax], al             
  0x00C28142  56                      push     esi                            
  0x00C28143  00c2                    add      dl, al                         
  0x00C28145  0b00                    or       eax, dword ptr [eax]           
  0x00C28147  0003                    add      byte ptr [ebx], al             
  0x00C28149  f4                      hlt                                     
  0x00C2814A  60                      pushal                                  
  0x00C2814B  0000                    add      byte ptr [eax], al             
  0x00C2814D  0300                    add      eax, dword ptr [eax]           
  0x00C2814F  004fa4                  add      byte ptr [edi - 0x5c], cl      
  0x00C28152  050000f456              add      eax, 0x56f40000                
  0x00C28157  0002                    add      byte ptr [edx], al             
  0x00C28159  0000                    add      byte ptr [eax], al             
  0x00C2815B  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C28161  0100                    add      dword ptr [eax], eax           
  0x00C28163  0003                    add      byte ptr [ebx], al             
  0x00C28165  0020                    add      byte ptr [eax], ah             
  0x00C28167  004210                  add      byte ptr [edx + 0x10], al      
  0x00C2816A  0d00450000              or       eax, 0x4500                    
  0x00C2816F  0000                    add      byte ptr [eax], al             
  0x00C28171  f4                      hlt                                     
  0x00C28172  60                      pushal                                  
  0x00C28173  00c0                    add      al, al                         
  0x00C28175  0b00                    or       eax, dword ptr [eax]           
  0x00C28177  008ff0070003            add      byte ptr [edi + 0x30007f0], cl 
  0x00C2817D  0000                    add      byte ptr [eax], al             
  0x00C2817F  0084f007000100          add      byte ptr [eax + esi*8 + 0x10007], al 
  0x00C28186  0000                    add      byte ptr [eax], al             
  0x00C28188  80f00b                  xor      al, 0xb                        
  0x00C2818B  000403                  add      byte ptr [ebx + eax], al       
  0x00C2818E  0000                    add      byte ptr [eax], al             
  0x00C28190  00f4                    add      ah, dh                         
  0x00C28192  60                      pushal                                  
  0x00C28193  0000                    add      byte ptr [eax], al             
  0x00C28195  0300                    add      eax, dword ptr [eax]           
  0x00C28197  0000                    add      byte ptr [eax], al             
  0x00C28199  f4                      hlt                                     
  0x00C2819A  56                      push     esi                            
  0x00C2819B  0003                    add      byte ptr [ebx], al             
  0x00C2819D  0000                    add      byte ptr [eax], al             
  0x00C2819F  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C281A5  0100                    add      dword ptr [eax], eax           
  0x00C281A7  0003                    add      byte ptr [ebx], al             
  0x00C281A9  0020                    add      byte ptr [eax], ah             
  0x00C281AB  004210                  add      byte ptr [edx + 0x10], al      
  0x00C281AE  0d00340000              or       eax, 0x3400                    
  0x00C281B3  008ff0070003            add      byte ptr [edi + 0x30007f0], cl 
  0x00C281B9  0000                    add      byte ptr [eax], al             
  0x00C281BB  0080f00b0004            add      byte ptr [eax + 0x4000bf0], al 
  0x00C281C1  0300                    add      eax, dword ptr [eax]           
  0x00C281C3  0000                    add      byte ptr [eax], al             
  0x00C281C5  f4                      hlt                                     
  0x00C281C6  60                      pushal                                  
  0x00C281C7  0000                    add      byte ptr [eax], al             
  0x00C281C9  0300                    add      eax, dword ptr [eax]           
  0x00C281CB  0000                    add      byte ptr [eax], al             
  0x00C281CD  f4                      hlt                                     
  0x00C281CE  56                      push     esi                            
  0x00C281CF  000400                  add      byte ptr [eax + eax], al       
  0x00C281D2  0000                    add      byte ptr [eax], al             
  0x00C281D4  80f00b                  xor      al, 0xb                        
  0x00C281D7  008001000003            add      byte ptr [eax + 0x3000001], al 
  0x00C281DD  0020                    add      byte ptr [eax], ah             
  0x00C281DF  004210                  add      byte ptr [edx + 0x10], al      
  0x00C281E2  0d00270000              or       eax, 0x2700                    
  0x00C281E7  008ff0070003            add      byte ptr [edi + 0x30007f0], cl 
  0x00C281ED  0000                    add      byte ptr [eax], al             
  0x00C281EF  0084f007000100          add      byte ptr [eax + esi*8 + 0x10007], al 
  0x00C281F6  0000                    add      byte ptr [eax], al             
  0x00C281F8  80f00b                  xor      al, 0xb                        
  0x00C281FB  000403                  add      byte ptr [ebx + eax], al       
  0x00C281FE  0000                    add      byte ptr [eax], al             
  0x00C28200  0000                    add      byte ptr [eax], al             
  0x00C28202  2400                    and      al, 0                          
  0x00C28204  847007                  test     byte ptr [eax + 7], dh         
  0x00C28207  0003                    add      byte ptr [ebx], al             
  0x00C28209  0000                    add      byte ptr [eax], al             
  0x00C2820B  008ef0070001            add      byte ptr [esi + 0x10007f0], cl 
  0x00C28211  0000                    add      byte ptr [eax], al             
  0x00C28213  008041010085            add      byte ptr [eax - 0x7afffebf], al 
  0x00C28219  46                      inc      esi                            
  0x00C2821A  0100                    add      dword ptr [eax], eax           
  0x00C2821C  1321                    adc      esp, dword ptr [ecx]           
  0x00C2821E  2000                    and      byte ptr [eax], al             
  0x00C28221  7007                    jo       0xc2822a                       
  0x00C28223  0001                    add      byte ptr [ecx], al             
  0x00C28225  0000                    add      byte ptr [eax], al             
  0x00C28227  0000                    add      byte ptr [eax], al             
  0x00C28229  f4                      hlt                                     
                                        ; XREF: 0x00C28221 (cond_jump)
  0x00C2822A  56                      push     esi                            
  0x00C2822B  000b                    add      byte ptr [ebx], cl             
  0x00C2822D  0000                    add      byte ptr [eax], al             
  0x00C2822F  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C28235  0100                    add      dword ptr [eax], eax           
  0x00C28237  0000                    add      byte ptr [eax], al             
  0x00C2823A  56                      push     esi                            
  0x00C2823B  00b3ffff0084            add      byte ptr [ebx - 0x7bff0001], dh 
  0x00C28242  07                      pop      es                             
  0x00C28243  000500000044            add      byte ptr [0x44000000], al      
  0x00C28249  0020                    add      byte ptr [eax], ah             
  0x00C2824B  008c7007000400          add      byte ptr [eax + esi*2 + 0x40007], cl 
  0x00C28252  0000                    add      byte ptr [eax], al             
  0x00C28254  00f4                    add      ah, dh                         
  0x00C28256  44                      inc      esp                            
  0x00C28257  00a0cd0a00f8            add      byte ptr [eax - 0x7fff533], ah 
  0x00C2825D  1f                      pop      ds                             
  0x00C2825E  0c00                    or       al, 0                          
  0x00C28260  c9                      leave                                   
  0x00C28261  96                      xchg     esi, eax                       
  0x00C28262  050000f444              add      eax, 0x44f40000                
  0x00C28267  00bbbbbb0084            add      byte ptr [ebx - 0x7bff4445], bh 
  0x00C2826D  7007                    jo       0xc28276                       
  0x00C2826F  0006                    add      byte ptr [esi], al             
  0x00C28271  0000                    add      byte ptr [eax], al             
  0x00C28273  0000                    add      byte ptr [eax], al             
  0x00C28275  0c05                    or       al, 5                          
  0x00C28277  00c3                    add      bl, al                         
  0x00C28279  0e                      push     cs                             
  0x00C2827A  0500c20e05              add      eax, 0x50ec200                 
  0x00C2827F  0000                    add      byte ptr [eax], al             
  0x00C28281  f4                      hlt                                     
  0x00C28282  6200                    bound    eax, qword ptr [eax]           
  0x00C28284  0001                    add      byte ptr [ecx], al             
  0x00C28286  0000                    add      byte ptr [eax], al             
  0x00C28288  009a21000001            add      byte ptr [edx + 0x1000021], bl 
  0x00C2828E  3d00854001              cmp      eax, 0x1408500                 
  0x00C28293  00d0                    add      al, dl                         
  0x00C28295  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C28296  0500004a20              add      eax, 0x204a0000                
  0x00C2829B  0000                    add      byte ptr [eax], al             
  0x00C2829D  4a                      dec      edx                            
  0x00C2829E  2000                    and      byte ptr [eax], al             
  0x00C282A0  91                      xchg     ecx, eax                       
  0x00C282A1  da07                    fiadd    dword ptr [edi]                
  0x00C282A3  00854e01008f            add      byte ptr [ebp - 0x70fffeb2], al 
  0x00C282A9  1405                    adc      al, 5                          
  0x00C282AB  008546010040            add      byte ptr [ebp + 0x40000146], al 
  0x00C282B1  f4                      hlt                                     
  0x00C282B2  0500854901              add      eax, 0x1498500                 
  0x00C282B7  0058a4                  add      byte ptr [eax - 0x5c], bl      
  0x00C282BA  0500854a01              add      eax, 0x14a8500                 
  0x00C282BF  0017                    add      byte ptr [edi], dl             
  0x00C282C1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C282C2  0500854b01              add      eax, 0x14b8500                 
  0x00C282C7  001da4050085            add      byte ptr [0x850005a4], bl      
  0x00C282CD  4c                      dec      esp                            
  0x00C282CE  0100                    add      dword ptr [eax], eax           
  0x00C282D0  56                      push     esi                            
  0x00C282D1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C282D2  0500854d01              add      eax, 0x14d8500                 
  0x00C282D7  0059a4                  add      byte ptr [ecx - 0x5c], bl      
  0x00C282DA  0500854801              add      eax, 0x1488500                 
  0x00C282DF  0047a4                  add      byte ptr [edi - 0x5c], al      
  0x00C282E2  05001c0c05              add      eax, 0x50c1c00                 
  0x00C282E7  0000                    add      byte ptr [eax], al             
  0x00C282E9  0000                    add      byte ptr [eax], al             
  0x00C282EB  0000                    add      byte ptr [eax], al             
  0x00C282ED  0000                    add      byte ptr [eax], al             
  0x00C282EF  0000                    add      byte ptr [eax], al             
  0x00C282F1  0000                    add      byte ptr [eax], al             
  0x00C282F3  0001                    add      byte ptr [ecx], al             
  0x00C282F5  0000                    add      byte ptr [eax], al             
  0x00C282F7  0000                    add      byte ptr [eax], al             
  0x00C282F9  0000                    add      byte ptr [eax], al             
  0x00C282FB  0000                    add      byte ptr [eax], al             
  0x00C282FD  0000                    add      byte ptr [eax], al             
  0x00C282FF  0000                    add      byte ptr [eax], al             
  0x00C28301  0000                    add      byte ptr [eax], al             
  0x00C28303  0000                    add      byte ptr [eax], al             
  0x00C28305  0000                    add      byte ptr [eax], al             
  0x00C28307  0000                    add      byte ptr [eax], al             
  0x00C28309  0000                    add      byte ptr [eax], al             
  0x00C2830B  0000                    add      byte ptr [eax], al             
  0x00C2830D  0000                    add      byte ptr [eax], al             
  0x00C2830F  0000                    add      byte ptr [eax], al             
  0x00C28311  0000                    add      byte ptr [eax], al             
  0x00C28313  0000                    add      byte ptr [eax], al             
  0x00C28315  0000                    add      byte ptr [eax], al             
  0x00C28317  0000                    add      byte ptr [eax], al             
  0x00C28319  0000                    add      byte ptr [eax], al             
  0x00C2831B  008eda070000            add      byte ptr [esi + 0x7da], cl     
  0x00C28321  0423                    add      al, 0x23                       
  0x00C28323  004598                  add      byte ptr [ebp - 0x68], al      
  0x00C28326  2100                    and      dword ptr [eax], eax           
  0x00C28328  9b                      wait                                    
  0x00C28329  080500850c05            or       byte ptr [0x50c8500], al       
  0x00C2832F  0098da070014            add      byte ptr [eax + 0x140007da], bl 
  0x00C28335  090500820c05            or       dword ptr [0x50c8200], eax     
  0x00C2833B  0084f007001601          add      byte ptr [eax + esi*8 + 0x1160007], al 
  0x00C28342  0000                    add      byte ptr [eax], al             
  0x00C28344  48                      dec      eax                            
  0x00C28345  c40b                    les      ecx, ptr [ebx]                 
  0x00C28347  00847007001601          add      byte ptr [eax + esi*2 + 0x1160007], al 
  0x00C2834E  0000                    add      byte ptr [eax], al             
  0x00C28350  5c                      pop      esp                            
  0x00C28351  0c05                    or       al, 5                          
  0x00C28353  0000                    add      byte ptr [eax], al             
  0x00C28355  2f                      das                                     
  0x00C28356  2300                    and      eax, dword ptr [eax]           
  0x00C28358  93                      xchg     ebx, eax                       
  0x00C28359  1d0c000024              sbb      eax, 0x2400000c                
  0x00C2835E  2200                    and      al, byte ptr [eax]             
  0x00C28360  48                      dec      eax                            
  0x00C28361  0020                    add      byte ptr [eax], ah             
  0x00C28363  008ef0070016            add      byte ptr [esi + 0x160007f0], cl 
  0x00C28369  0100                    add      dword ptr [eax], eax           
  0x00C2836B  0010                    add      byte ptr [eax], dl             
  0x00C2836D  0020                    add      byte ptr [eax], ah             
  0x00C2836F  0000                    add      byte ptr [eax], al             
  0x00C28371  91                      xchg     ecx, eax                       
  0x00C28372  2100                    and      dword ptr [eax], eax           
  0x00C28374  8808                    mov      byte ptr [eax], cl             
  0x00C28376  0500520c05              add      eax, 0x50c5200                 
  0x00C2837B  0000                    add      byte ptr [eax], al             
  0x00C2837D  2e2300                  and      eax, dword ptr cs:[eax]        
  0x00C28380  854001                  test     dword ptr [eax + 1], eax       
  0x00C28383  004f24                  add      byte ptr [edi + 0x24], cl      
  0x00C28386  050000013a              add      eax, 0x3a010000                
  0x00C2838B  0000                    add      byte ptr [eax], al             
  0x00C2838D  003c00                  add      byte ptr [eax + eax], bh       
  0x00C28390  95                      xchg     ebp, eax                       
  0x00C28391  0805004b0c05            or       byte ptr [0x50c4b00], al       
  0x00C28397  0000                    add      byte ptr [eax], al             
  0x00C28399  003a                    add      byte ptr [edx], bh             
  0x00C2839B  0000                    add      byte ptr [eax], al             
  0x00C2839D  003c00                  add      byte ptr [eax + eax], bh       
  0x00C283A0  91                      xchg     ecx, eax                       
  0x00C283A1  080500470c05            or       byte ptr [0x50c4700], al       
  0x00C283A7  0000                    add      byte ptr [eax], al             
  0x00C283A9  003a                    add      byte ptr [edx], bh             
  0x00C283AB  0000                    add      byte ptr [eax], al             
  0x00C283AD  013c00                  add      dword ptr [eax + eax], edi     
  0x00C283B0  0000                    add      byte ptr [eax], al             
  0x00C283B2  3d008c0805              cmp      eax, 0x5088c00                 
  0x00C283B7  00420c                  add      byte ptr [edx + 0xc], al       
  0x00C283BA  050000003a              add      eax, 0x3a000000                
  0x00C283BF  0000                    add      byte ptr [eax], al             
  0x00C283C1  003c00                  add      byte ptr [eax + eax], bh       
  0x00C283C4  8808                    mov      byte ptr [eax], cl             
  0x00C283C6  05001e0c05              add      eax, 0x50c1e00                 
  0x00C283CB  00050200000f            add      byte ptr [0xf000002], al       
  0x00C283D1  0200                    add      al, byte ptr [eax]             
  0x00C283D3  002b                    add      byte ptr [ebx], ch             
  0x00C283D5  0200                    add      al, byte ptr [eax]             
  0x00C283D7  0036                    add      byte ptr [esi], dh             
  0x00C283D9  0200                    add      al, byte ptr [eax]             
  0x00C283DB  004102                  add      byte ptr [ecx + 2], al         
  0x00C283DE  0000                    add      byte ptr [eax], al             
  0x00C283E0  4c                      dec      esp                            
  0x00C283E1  0200                    add      al, byte ptr [eax]             
  0x00C283E3  008d40010008            add      byte ptr [ebp + 0x8000140], cl 
  0x00C283E9  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C283EA  050000bc21              add      eax, 0x21bc0000                
  0x00C283EF  0000                    add      byte ptr [eax], al             
  0x00C283F1  f4                      hlt                                     
  0x00C283F2  6400d2                  add      dl, dl                         
  0x00C283F5  0100                    add      dword ptr [eax], eax           
  0x00C283F7  0000                    add      byte ptr [eax], al             
  0x00C283F9  49                      dec      ecx                            
  0x00C283FA  2000                    and      byte ptr [eax], al             
  0x00C283FC  96                      xchg     esi, eax                       
  0x00C283FD  ec                      in       al, dx                         
  0x00C283FE  07                      pop      es                             
  0x00C283FF  0080e60b000f            add      byte ptr [eax + 0xf000be6], al 
  0x00C28405  0c05                    or       al, 5                          
  0x00C28407  0000                    add      byte ptr [eax], al             
  0x00C28409  0f2300                  mov      dr0, eax                       
  0x00C2840E  07                      pop      es                             
  0x00C2840F  009b01000084            add      byte ptr [ebx - 0x7bffffff], bl 
  0x00C28416  07                      pop      es                             
  0x00C28417  009a01000014            add      byte ptr [edx + 0x14000001], bl 
  0x00C2841D  0020                    add      byte ptr [eax], ah             
  0x00C2841F  000a                    add      byte ptr [edx], cl             
  0x00C28421  94                      xchg     esp, eax                       
  0x00C28422  0500485220              add      eax, 0x20524800                
  0x00C28427  00845a0700985a          add      byte ptr [edx + ebx*2 + 0x5a980007], al 
  0x00C2842E  07                      pop      es                             
  0x00C2842F  008c7007009b01          add      byte ptr [eax + esi*2 + 0x19b0007], cl 
  0x00C28436  0000                    add      byte ptr [eax], al             
  0x00C28438  8d7007                  lea      esi, [eax + 7]                 
  0x00C2843B  009a01000013            add      byte ptr [edx + 0x13000001], bl 
  0x00C28441  0020                    add      byte ptr [eax], ah             
  0x00C28443  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28446  0000                    add      byte ptr [eax], al             
  0x00C28448  00f4                    add      ah, dh                         
  0x00C2844A  56                      push     esi                            
  0x00C2844B  000400                  add      byte ptr [eax + eax], al       
  0x00C2844E  0000                    add      byte ptr [eax], al             
  0x00C28450  0c00                    or       al, 0                          
  0x00C28452  0000                    add      byte ptr [eax], al             
  0x00C28454  84f0                    test     al, dh                         
  0x00C28456  07                      pop      es                             
  0x00C28457  001c01                  add      byte ptr [ecx + eax], bl       
  0x00C2845A  0000                    add      byte ptr [eax], al             
  0x00C2845C  847007                  test     byte ptr [eax + 7], dh         
  0x00C2845F  009a01000084            add      byte ptr [edx - 0x7bffffff], bl 
  0x00C28466  07                      pop      es                             
  0x00C28467  001d01000084            add      byte ptr [0x84000001], bl      
  0x00C2846D  7007                    jo       0xc28476                       
  0x00C2846F  009b01000013            add      byte ptr [ebx + 0x13000001], bl 
  0x00C28475  f4                      hlt                                     
                                        ; XREF: 0x00C2846D (cond_jump)
  0x00C28476  60                      pushal                                  
  0x00C28477  001c01                  add      byte ptr [ecx + eax], bl       
  0x00C2847A  0000                    add      byte ptr [eax], al             
  0x00C2847C  90                      nop                                     
  0x00C2847D  2406                    and      al, 6                          
  0x00C2847F  0002                    add      byte ptr [edx], al             
  0x00C28481  0000                    add      byte ptr [eax], al             
  0x00C28483  008e58070080            add      byte ptr [esi - 0x7ffff8a8], cl 
  0x00C28489  100d00ce0000            adc      byte ptr [0xce00], cl          
  0x00C2848F  00cc                    add      ah, cl                         
  0x00C28491  0f05                    syscall                                 
  0x00C28493  0000                    add      byte ptr [eax], al             
  0x00C28495  f4                      hlt                                     
  0x00C28496  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C2849D  0c22                    or       al, 0x22                       
  0x00C2849F  008040010000            add      byte ptr [eax + 0x140], al     
  0x00C284A5  90                      nop                                     
  0x00C284A6  2100                    and      dword ptr [eax], eax           
  0x00C284A8  80f00b                  xor      al, 0xb                        
  0x00C284AB  005702                  add      byte ptr [edi + 2], dl         
  0x00C284AE  0000                    add      byte ptr [eax], al             
  0x00C284B0  80f00b                  xor      al, 0xb                        
  0x00C284B3  00c2                    add      dl, al                         
  0x00C284B5  0200                    add      al, byte ptr [eax]             
  0x00C284B7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C284BA  0000                    add      byte ptr [eax], al             
  0x00C284BC  00f4                    add      ah, dh                         
  0x00C284BE  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C284C5  0c22                    or       al, 0x22                       
  0x00C284C7  008040010000            add      byte ptr [eax + 0x140], al     
  0x00C284CD  90                      nop                                     
  0x00C284CE  2100                    and      dword ptr [eax], eax           
  0x00C284D0  80f00b                  xor      al, 0xb                        
  0x00C284D3  006902                  add      byte ptr [ecx + 2], ch         
  0x00C284D6  0000                    add      byte ptr [eax], al             
  0x00C284D8  80f00b                  xor      al, 0xb                        
  0x00C284DB  00c2                    add      dl, al                         
  0x00C284DD  0200                    add      al, byte ptr [eax]             
  0x00C284DF  000c00                  add      byte ptr [eax + eax], cl       
  0x00C284E2  0000                    add      byte ptr [eax], al             
  0x00C284E4  00f4                    add      ah, dh                         
  0x00C284E6  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C284ED  0c22                    or       al, 0x22                       
  0x00C284EF  008040010000            add      byte ptr [eax + 0x140], al     
  0x00C284F5  90                      nop                                     
  0x00C284F6  2100                    and      dword ptr [eax], eax           
  0x00C284F8  004e23                  add      byte ptr [esi + 0x23], cl      
  0x00C284FB  008540010042            add      byte ptr [ebp + 0x42000140], al 
  0x00C28501  100d00060000            adc      byte ptr [0x600], cl           
  0x00C28507  0080f00b007b            add      byte ptr [eax + 0x7b000bf0], al 
  0x00C2850D  0200                    add      al, byte ptr [eax]             
  0x00C2850F  00c0                    add      al, al                         
  0x00C28511  100d00040000            adc      byte ptr [0x400], cl           
  0x00C28517  0080f00b0092            add      byte ptr [eax - 0x6dfff410], al 
  0x00C2851D  0200                    add      al, byte ptr [eax]             
  0x00C2851F  0080f00b00c2            add      byte ptr [eax - 0x3dfff410], al 
  0x00C28525  0200                    add      al, byte ptr [eax]             
  0x00C28527  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2852A  0000                    add      byte ptr [eax], al             
  0x00C2852C  00f4                    add      ah, dh                         
  0x00C2852E  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C28535  0c22                    or       al, 0x22                       
  0x00C28537  00c0                    add      al, al                         
  0x00C28539  40                      inc      eax                            
  0x00C2853A  0100                    add      dword ptr [eax], eax           
  0x00C2853C  0018                    add      byte ptr [eax], bl             
  0x00C2853E  0000                    add      byte ptr [eax], al             
  0x00C28540  0090210080f0            add      byte ptr [eax - 0xf7fffdf], dl 
  0x00C28546  0b00                    or       eax, dword ptr [eax]           
  0x00C28548  57                      push     edi                            
  0x00C28549  0200                    add      al, byte ptr [eax]             
  0x00C2854B  0080f00b00c2            add      byte ptr [eax - 0x3dfff410], al 
  0x00C28551  0200                    add      al, byte ptr [eax]             
  0x00C28553  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28556  0000                    add      byte ptr [eax], al             
  0x00C28558  00f4                    add      ah, dh                         
  0x00C2855A  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C28561  0c22                    or       al, 0x22                       
  0x00C28563  00c0                    add      al, al                         
  0x00C28565  40                      inc      eax                            
  0x00C28566  0100                    add      dword ptr [eax], eax           
  0x00C28568  0018                    add      byte ptr [eax], bl             
  0x00C2856A  0000                    add      byte ptr [eax], al             
  0x00C2856C  0090210080f0            add      byte ptr [eax - 0xf7fffdf], dl 
  0x00C28572  0b00                    or       eax, dword ptr [eax]           
  0x00C28574  6902000080f0            imul     eax, dword ptr [edx], 0xf0800000 
  0x00C2857A  0b00                    or       eax, dword ptr [eax]           
  0x00C2857C  c20200                  ret      2                              
  0x00C2857F  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28582  0000                    add      byte ptr [eax], al             
  0x00C28584  00f4                    add      ah, dh                         
  0x00C28586  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C2858D  0c22                    or       al, 0x22                       
  0x00C2858F  00c0                    add      al, al                         
  0x00C28591  40                      inc      eax                            
  0x00C28592  0100                    add      dword ptr [eax], eax           
  0x00C28594  0028                    add      byte ptr [eax], ch             
  0x00C28596  0000                    add      byte ptr [eax], al             
  0x00C28598  0090210080f0            add      byte ptr [eax - 0xf7fffdf], dl 
  0x00C2859E  0b00                    or       eax, dword ptr [eax]           
  0x00C285A0  57                      push     edi                            
  0x00C285A1  0200                    add      al, byte ptr [eax]             
  0x00C285A3  0080f00b00c2            add      byte ptr [eax - 0x3dfff410], al 
  0x00C285A9  0200                    add      al, byte ptr [eax]             
  0x00C285AB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C285AE  0000                    add      byte ptr [eax], al             
  0x00C285B0  00f4                    add      ah, dh                         
  0x00C285B2  64009e01000000          add      byte ptr fs:[esi + 1], bl      
  0x00C285B9  0c22                    or       al, 0x22                       
  0x00C285BB  00c0                    add      al, al                         
  0x00C285BD  40                      inc      eax                            
  0x00C285BE  0100                    add      dword ptr [eax], eax           
  0x00C285C0  0028                    add      byte ptr [eax], ch             
  0x00C285C2  0000                    add      byte ptr [eax], al             
  0x00C285C4  0090210080f0            add      byte ptr [eax - 0xf7fffdf], dl 
  0x00C285CA  0b00                    or       eax, dword ptr [eax]           
  0x00C285CC  6902000080f0            imul     eax, dword ptr [edx], 0xf0800000 
  0x00C285D2  0b00                    or       eax, dword ptr [eax]           
  0x00C285D4  c20200                  ret      2                              
  0x00C285D7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C285DA  0000                    add      byte ptr [eax], al             
  0x00C285DC  80f00b                  xor      al, 0xb                        
  0x00C285DF  00b102000000            add      byte ptr [ecx + 2], dh         
  0x00C285E5  95                      xchg     ebp, eax                       
  0x00C285E6  2200                    and      al, byte ptr [eax]             
  0x00C285E8  008c2200c64001          add      byte ptr [edx + 0x140c600], cl 
  0x00C285EF  00ff                    add      bh, bh                         
  0x00C285F1  3f                      aas                                     
  0x00C285F2  0000                    add      byte ptr [eax], al             
  0x00C285F4  c24001                  ret      0x140                          
  0x00C285F7  0000                    add      byte ptr [eax], al             
  0x00C285F9  40                      inc      eax                            
  0x00C285FA  0000                    add      byte ptr [eax], al             
  0x00C285FC  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C285FF  0000                    add      byte ptr [eax], al             
  0x00C28601  f4                      hlt                                     
  0x00C28602  54                      push     esp                            
  0x00C28603  00e0                    add      al, ah                         
  0x00C28605  5b                      pop      ebx                            
  0x00C28606  0000                    add      byte ptr [eax], al             
  0x00C28608  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C2860B  00985d070090            add      byte ptr [eax - 0x6ffff8a3], bl 
  0x00C28611  5d                      pop      ebp                            
  0x00C28612  07                      pop      es                             
  0x00C28613  0000                    add      byte ptr [eax], al             
  0x00C28615  2e2200                  and      al, byte ptr cs:[eax]          
  0x00C28618  841e                    test     byte ptr [esi], bl             
  0x00C2861A  0c00                    or       al, 0                          
  0x00C2861C  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C2861F  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28622  0000                    add      byte ptr [eax], al             
  0x00C28624  80f00b                  xor      al, 0xb                        
  0x00C28627  00b102000000            add      byte ptr [ecx + 2], dh         
  0x00C2862D  95                      xchg     ebp, eax                       
  0x00C2862E  2200                    and      al, byte ptr [eax]             
  0x00C28630  008c2200c64001          add      byte ptr [edx + 0x140c600], cl 
  0x00C28637  00ff                    add      bh, bh                         
  0x00C28639  3f                      aas                                     
  0x00C2863A  0000                    add      byte ptr [eax], al             
  0x00C2863C  c24001                  ret      0x140                          
  0x00C2863F  0000                    add      byte ptr [eax], al             
  0x00C28641  40                      inc      eax                            
  0x00C28642  0000                    add      byte ptr [eax], al             
  0x00C28644  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C28647  0000                    add      byte ptr [eax], al             
  0x00C28649  f4                      hlt                                     
  0x00C2864A  54                      push     esp                            
  0x00C2864B  00e2                    add      dl, ah                         
  0x00C2864D  5b                      pop      ebx                            
  0x00C2864E  0000                    add      byte ptr [eax], al             
  0x00C28650  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C28653  00985d070090            add      byte ptr [eax - 0x6ffff8a3], bl 
  0x00C28659  5d                      pop      ebp                            
  0x00C2865A  07                      pop      es                             
  0x00C2865B  0000                    add      byte ptr [eax], al             
  0x00C2865D  2e2200                  and      al, byte ptr cs:[eax]          
  0x00C28660  841e                    test     byte ptr [esi], bl             
  0x00C28662  0c00                    or       al, 0                          
  0x00C28664  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C28667  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2866A  0000                    add      byte ptr [eax], al             
  0x00C2866C  80f00b                  xor      al, 0xb                        
  0x00C2866F  00b102000000            add      byte ptr [ecx + 2], dh         
  0x00C28675  95                      xchg     ebp, eax                       
  0x00C28676  2200                    and      al, byte ptr [eax]             
  0x00C28678  008c2200c64001          add      byte ptr [edx + 0x140c600], cl 
  0x00C2867F  00ff                    add      bh, bh                         
  0x00C28681  3f                      aas                                     
  0x00C28682  0000                    add      byte ptr [eax], al             
  0x00C28684  c24001                  ret      0x140                          
  0x00C28687  0000                    add      byte ptr [eax], al             
  0x00C28689  40                      inc      eax                            
  0x00C2868A  0000                    add      byte ptr [eax], al             
  0x00C2868C  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C2868F  0000                    add      byte ptr [eax], al             
  0x00C28691  f4                      hlt                                     
  0x00C28692  54                      push     esp                            
  0x00C28693  0002                    add      byte ptr [edx], al             
  0x00C28695  46                      inc      esi                            
  0x00C28696  0000                    add      byte ptr [eax], al             
  0x00C28698  002f                    add      byte ptr [edi], ch             
  0x00C2869A  2200                    and      al, byte ptr [eax]             
  0x00C2869C  8b1e                    mov      ebx, dword ptr [esi]           
  0x00C2869E  0c00                    or       al, 0                          
  0x00C286A0  00e5                    add      ch, ah                         
  0x00C286A2  2100                    and      dword ptr [eax], eax           
  0x00C286A4  6200                    bound    eax, qword ptr [eax]           
  0x00C286A6  2000                    and      byte ptr [eax], al             
  0x00C286A8  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C286AB  00985d070000            add      byte ptr [eax + 0x75d], bl     
  0x00C286B1  8e23                    mov      fs, word ptr [ebx]             
  0x00C286B3  009c1e0c000004          add      byte ptr [esi + ebx + 0x400000c], bl 
  0x00C286BA  2200                    and      al, byte ptr [eax]             
  0x00C286BC  40                      inc      eax                            
  0x00C286BD  0020                    add      byte ptr [eax], ah             
  0x00C286BF  008c5d07000c00          add      byte ptr [ebp + ebx*2 + 0xc0007], cl 
  0x00C286C6  0000                    add      byte ptr [eax], al             
  0x00C286C8  80f00b                  xor      al, 0xb                        
  0x00C286CB  00b102000000            add      byte ptr [ecx + 2], dh         
  0x00C286D1  95                      xchg     ebp, eax                       
  0x00C286D2  2200                    and      al, byte ptr [eax]             
  0x00C286D4  008c2200c64001          add      byte ptr [edx + 0x140c600], cl 
  0x00C286DB  00ff                    add      bh, bh                         
  0x00C286DD  3f                      aas                                     
  0x00C286DE  0000                    add      byte ptr [eax], al             
  0x00C286E0  c24001                  ret      0x140                          
  0x00C286E3  0000                    add      byte ptr [eax], al             
  0x00C286E5  40                      inc      eax                            
  0x00C286E6  0000                    add      byte ptr [eax], al             
  0x00C286E8  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C286EB  0000                    add      byte ptr [eax], al             
  0x00C286ED  f4                      hlt                                     
  0x00C286EE  54                      push     esp                            
  0x00C286EF  0003                    add      byte ptr [ebx], al             
  0x00C286F1  06                      push     es                             
  0x00C286F2  0000                    add      byte ptr [eax], al             
  0x00C286F4  002f                    add      byte ptr [edi], ch             
  0x00C286F6  2200                    and      al, byte ptr [eax]             
  0x00C286F8  8b1e                    mov      ebx, dword ptr [esi]           
  0x00C286FA  0c00                    or       al, 0                          
  0x00C286FC  00e5                    add      ch, ah                         
  0x00C286FE  2100                    and      dword ptr [eax], eax           
  0x00C28700  6200                    bound    eax, qword ptr [eax]           
  0x00C28702  2000                    and      byte ptr [eax], al             
  0x00C28704  000f                    add      byte ptr [edi], cl             
  0x00C28706  2300                    and      eax, dword ptr [eax]           
  0x00C28708  9d                      popfd                                   
  0x00C28709  1e                      push     ds                             
  0x00C2870A  0c00                    or       al, 0                          
  0x00C2870C  00e5                    add      ch, ah                         
  0x00C2870E  2100                    and      dword ptr [eax], eax           
  0x00C28710  6200                    bound    eax, qword ptr [eax]           
  0x00C28712  2000                    and      byte ptr [eax], al             
  0x00C28714  8c5d07                  mov      word ptr [ebp + 7], ds         
  0x00C28717  0000                    add      byte ptr [eax], al             
  0x00C28719  0f2300                  mov      dr0, eax                       
  0x00C2871C  891e                    mov      dword ptr [esi], ebx           
  0x00C2871E  0c00                    or       al, 0                          
  0x00C28720  004523                  add      byte ptr [ebp + 0x23], al      
  0x00C28723  006800                  add      byte ptr [eax], ch             
  0x00C28726  2000                    and      byte ptr [eax], al             
  0x00C28728  8d5d07                  lea      ebx, [ebp + 7]                 
  0x00C2872B  0000                    add      byte ptr [eax], al             
  0x00C2872D  8e23                    mov      fs, word ptr [ebx]             
  0x00C2872F  009c1e0c000004          add      byte ptr [esi + ebx + 0x400000c], bl 
  0x00C28736  2200                    and      al, byte ptr [eax]             
  0x00C28738  40                      inc      eax                            
  0x00C28739  0020                    add      byte ptr [eax], ah             
  0x00C2873B  008c5d07000c00          add      byte ptr [ebp + ebx*2 + 0xc0007], cl 
  0x00C28742  0000                    add      byte ptr [eax], al             
  0x00C28744  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C28745  96                      xchg     esi, eax                       
  0x00C28746  0a00                    or       al, byte ptr [eax]             
  0x00C28748  b102                    mov      cl, 2                          
  0x00C2874A  0000                    add      byte ptr [eax], al             
  0x00C2874C  85f4                    test     esp, esi                       
  0x00C2874E  0800                    or       byte ptr [eax], al             
  0x00C28750  800000                  add      byte ptr [eax], 0              
  0x00C28753  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28756  0000                    add      byte ptr [eax], al             
  0x00C28758  96                      xchg     esi, eax                       
  0x00C28759  f4                      hlt                                     
  0x00C2875A  0800                    or       byte ptr [eax], al             
  0x00C2875C  0100                    add      dword ptr [eax], eax           
  0x00C2875E  0000                    add      byte ptr [eax], al             
  0x00C28760  84960a00b802            test     byte ptr [esi + 0x2b8000a], dl 
  0x00C28766  0000                    add      byte ptr [eax], al             
  0x00C28768  0c00                    or       al, 0                          
  0x00C2876A  0000                    add      byte ptr [eax], al             
  0x00C2876C  aa                      stosb    byte ptr es:[edi], al          
  0x00C2876D  850a                    test     dword ptr [edx], ecx           
  0x00C2876F  00df                    add      bh, bl                         
  0x00C28771  0200                    add      al, byte ptr [eax]             
  0x00C28773  0087850a00bb            add      byte ptr [edi - 0x44fff57b], al 
  0x00C28779  0200                    add      al, byte ptr [eax]             
  0x00C2877B  0085f4080080            add      byte ptr [ebp - 0x7ffff70c], al 
  0x00C28781  0000                    add      byte ptr [eax], al             
  0x00C28783  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28786  0000                    add      byte ptr [eax], al             
  0x00C28788  008e2200c040            add      byte ptr [esi + 0x40c00022], cl 
  0x00C2878E  0100                    add      dword ptr [eax], eax           
  0x00C28790  0028                    add      byte ptr [eax], ch             
  0x00C28792  0000                    add      byte ptr [eax], al             
  0x00C28794  14ce                    adc      al, 0xce                       
  0x00C28796  0800                    or       byte ptr [eax], al             
  0x00C28798  80f00b                  xor      al, 0xb                        
  0x00C2879B  00b60200001b            add      byte ptr [esi + 0x1b000002], dh 
  0x00C287A1  0020                    add      byte ptr [eax], ah             
  0x00C287A3  0000                    add      byte ptr [eax], al             
  0x00C287A5  af                      scasd    eax, dword ptr es:[edi]        
  0x00C287A6  2300                    and      eax, dword ptr [eax]           
  0x00C287A8  8d4001                  lea      eax, [eax + 1]                 
  0x00C287AB  004a10                  add      byte ptr [edx + 0x10], cl      
  0x00C287AE  0d00040000              or       eax, 0x400                     
  0x00C287B3  0080f00b00bb            add      byte ptr [eax - 0x44fff410], al 
  0x00C287B9  0200                    add      al, byte ptr [eax]             
  0x00C287BB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C287BE  0000                    add      byte ptr [eax], al             
  0x00C287C0  85f4                    test     esp, esi                       
  0x00C287C2  0800                    or       byte ptr [eax], al             
  0x00C287C4  ff0f                    dec      dword ptr [edi]                
  0x00C287C6  0000                    add      byte ptr [eax], al             
  0x00C287C8  84f4                    test     ah, dh                         
  0x00C287CA  0800                    or       byte ptr [eax], al             
  0x00C287CC  0100                    add      dword ptr [eax], eax           
  0x00C287CE  0000                    add      byte ptr [eax], al             
  0x00C287D0  8af4                    mov      dh, ah                         
  0x00C287D2  0800                    or       byte ptr [eax], al             
  0x00C287D4  0000                    add      byte ptr [eax], al             
  0x00C287D6  0000                    add      byte ptr [eax], al             
  0x00C287D8  00f4                    add      ah, dh                         
  0x00C287DA  44                      inc      esp                            
  0x00C287DB  0000                    add      byte ptr [eax], al             
  0x00C287DD  40                      inc      eax                            
  0x00C287DE  0000                    add      byte ptr [eax], al             
  0x00C287E0  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C287E3  00d5                    add      ch, dl                         
  0x00C287E6  ff00                    inc      dword ptr [eax]                
  0x00C287E8  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C287EB  00d4                    add      ah, dl                         
  0x00C287EE  ff00                    inc      dword ptr [eax]                
  0x00C287F0  97                      xchg     edi, eax                       
  0x00C287F1  f4                      hlt                                     
  0x00C287F2  0800                    or       byte ptr [eax], al             
  0x00C287F4  0000                    add      byte ptr [eax], al             
  0x00C287F6  0000                    add      byte ptr [eax], al             
  0x00C287F8  0c00                    or       al, 0                          
  0x00C287FA  0000                    add      byte ptr [eax], al             
  0x00C287FC  000c0500401bd0          add      byte ptr [eax - 0x2fe4c000], cl 
  0x00C28803  00b302000060            add      byte ptr [ebx + 0x60000002], dh 
  0x00C28809  0101                    add      dword ptr [ecx], eax           
  0x00C2880B  0053c2                  add      byte ptr [ebx - 0x3e], dl      
  0x00C2880E  b900400c05              mov      ecx, 0x50c4000                 
  0x00C28813  0037                    add      byte ptr [edi], dh             
  0x00C28815  0c04                    or       al, 4                          
  0x00C28817  00a78a040084            add      byte ptr [edi - 0x7bfffb76], ah 
  0x00C2881D  180500b1b705            sbb      byte ptr [0x5b7b100], al       
  0x00C28823  004a6a                  add      byte ptr [edx + 0x6a], cl      
  0x00C28826  06                      push     es                             
  0x00C28827  00ae32070085            add      byte ptr [esi - 0x7afff8ce], ch 
  0x00C2882D  1308                    adc      ecx, dword ptr [eax]           
  0x00C2882F  00cc                    add      ah, cl                         
  0x00C28831  0f09                    wbinvd                                  
  0x00C28833  00db                    add      bl, bl                         
  0x00C28835  2a0a                    sub      cl, byte ptr [edx]             
  0x00C28837  007368                  add      byte ptr [ebx + 0x68], dh      
  0x00C2883A  0b00                    or       eax, dword ptr [eax]           
  0x00C2883C  cdcc                    int      0xcc                           
  0x00C2883E  0c00                    or       al, 0                          
  0x00C28840  a15c0e003f              mov      eax, dword ptr [0x3f000e5c]    
  0x00C28845  1d10009a14              sbb      eax, 0x149a0010                
  0x00C2884A  1200                    adc      al, byte ptr [eax]             
  0x00C2884C  61                      popal                                   
  0x00C2884D  49                      dec      ecx                            
  0x00C2884E  1400                    adc      al, 0                          
  0x00C28850  11c3                    adc      ebx, eax                       
  0x00C28852  16                      push     ss                             
  0x00C28853  0013                    add      byte ptr [ebx], dl             
  0x00C28855  8a19                    mov      bl, byte ptr [ecx]             
  0x00C28857  00d7                    add      bh, dl                         
  0x00C28859  a7                      cmpsd    dword ptr [esi], dword ptr es:[edi] 
  0x00C2885A  1c00                    sbb      al, 0                          
  0x00C2885C  f3262000                and      byte ptr es:[eax], al          
  0x00C28860  47                      inc      edi                            
  0x00C28861  132400                  adc      esp, dword ptr [eax + eax]     
  0x00C28864  27                      daa                                     
  0x00C28865  7a28                    jp       0xc2888f                       
  0x00C28867  00866a2d002d            add      byte ptr [esi + 0x2d002d6a], al 
  0x00C2886D  f5                      cmc                                     
  0x00C2886E  3200                    xor      al, byte ptr [eax]             
  0x00C28870  ee                      out      dx, al                         
  0x00C28871  2c39                    sub      al, 0x39                       
  0x00C28873  00e7                    add      bh, ah                         
  0x00C28875  2640                    inc      eax                            
  0x00C28877  00cd                    add      ch, cl                         
  0x00C28879  fa                      cli                                     
  0x00C2887A  47                      inc      edi                            
  0x00C2887B  0036                    add      byte ptr [esi], dh             
  0x00C2887D  c3                      ret                                     
  0x00C2887E  50                      push     eax                            
  0x00C2887F  00f8                    add      al, bh                         
  0x00C28881  9d                      popfd                                   
  0x00C28882  5a                      pop      edx                            
  0x00C28883  008cac65008314          add      byte ptr [esp + ebp*4 + 0x14830065], cl 
  0x00C2888A  7200                    jb       0xc2888c                       
  0x00C2888E  7f00                    jg       0xc28890                       
                                        ; XREF: 0x00C2888E (cond_jump)
  0x00C28890  007060                  add      byte ptr [eax + 0x60], dh      
  0x00C28893  002e                    add      byte ptr [esi], ch             
  0x00C28895  06                      push     es                             
  0x00C28896  0000                    add      byte ptr [eax], al             
  0x00C28898  0b00                    or       eax, dword ptr [eax]           
  0x00C2889A  2000                    and      byte ptr [eax], al             
  0x00C2889C  06                      push     es                             
  0x00C2889D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2889E  050000f444              add      eax, 0x44f40000                
  0x00C288A3  0002                    add      byte ptr [edx], al             
  0x00C288A5  800000                  add      byte ptr [eax], 0              
  0x00C288A8  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C288AB  000406                  add      byte ptr [esi + eax], al       
  0x00C288AE  0000                    add      byte ptr [eax], al             
  0x00C288B0  050c050000              add      eax, 0x50c                     
  0x00C288B5  f4                      hlt                                     
  0x00C288B6  44                      inc      esp                            
  0x00C288B7  0002                    add      byte ptr [edx], al             
  0x00C288B9  0000                    add      byte ptr [eax], al             
  0x00C288BB  0000                    add      byte ptr [eax], al             
  0x00C288BD  7044                    jo       0xc28903                       
  0x00C288BF  000406                  add      byte ptr [esi + eax], al       
  0x00C288C2  0000                    add      byte ptr [eax], al             
  0x00C288C4  00f4                    add      ah, dh                         
  0x00C288C6  44                      inc      esp                            
  0x00C288C7  000a                    add      byte ptr [edx], cl             
  0x00C288C9  0000                    add      byte ptr [eax], al             
  0x00C288CB  0000                    add      byte ptr [eax], al             
  0x00C288CD  7044                    jo       0xc28913                       
  0x00C288CF  0000                    add      byte ptr [eax], al             
  0x00C288D1  06                      push     es                             
  0x00C288D2  0000                    add      byte ptr [eax], al             
  0x00C288D4  00f4                    add      ah, dh                         
  0x00C288D6  44                      inc      esp                            
  0x00C288D7  000a                    add      byte ptr [edx], cl             
  0x00C288D9  06                      push     es                             
  0x00C288DA  0000                    add      byte ptr [eax], al             
  0x00C288DC  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C288DF  0001                    add      byte ptr [ecx], al             
  0x00C288E1  06                      push     es                             
  0x00C288E2  0000                    add      byte ptr [eax], al             
  0x00C288E4  00f4                    add      ah, dh                         
  0x00C288E6  44                      inc      esp                            
  0x00C288E7  0010                    add      byte ptr [eax], dl             
  0x00C288E9  06                      push     es                             
  0x00C288EA  0000                    add      byte ptr [eax], al             
  0x00C288EC  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C288EF  0002                    add      byte ptr [edx], al             
  0x00C288F1  06                      push     es                             
  0x00C288F2  0000                    add      byte ptr [eax], al             
  0x00C288F4  00f4                    add      ah, dh                         
  0x00C288F6  44                      inc      esp                            
  0x00C288F7  0016                    add      byte ptr [esi], dl             
  0x00C288F9  06                      push     es                             
  0x00C288FA  0000                    add      byte ptr [eax], al             
  0x00C288FC  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C288FF  0003                    add      byte ptr [ebx], al             
  0x00C28901  06                      push     es                             
  0x00C28902  0000                    add      byte ptr [eax], al             
  0x00C28904  00f4                    add      ah, dh                         
  0x00C28906  44                      inc      esp                            
  0x00C28907  001c06                  add      byte ptr [esi + eax], bl       
  0x00C2890A  0000                    add      byte ptr [eax], al             
  0x00C2890C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2890F  000506000000            add      byte ptr [6], al               
  0x00C28915  f4                      hlt                                     
  0x00C28916  44                      inc      esp                            
  0x00C28917  0022                    add      byte ptr [edx], ah             
  0x00C28919  06                      push     es                             
  0x00C2891A  0000                    add      byte ptr [eax], al             
  0x00C2891C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2891F  0006                    add      byte ptr [esi], al             
  0x00C28921  06                      push     es                             
  0x00C28922  0000                    add      byte ptr [eax], al             
  0x00C28924  00f4                    add      ah, dh                         
  0x00C28926  44                      inc      esp                            
  0x00C28927  0028                    add      byte ptr [eax], ch             
  0x00C28929  06                      push     es                             
  0x00C2892A  0000                    add      byte ptr [eax], al             
  0x00C2892C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2892F  0007                    add      byte ptr [edi], al             
  0x00C28931  06                      push     es                             
  0x00C28932  0000                    add      byte ptr [eax], al             
  0x00C28934  00f4                    add      ah, dh                         
  0x00C28936  44                      inc      esp                            
  0x00C28937  0000                    add      byte ptr [eax], al             
  0x00C28939  0000                    add      byte ptr [eax], al             
  0x00C2893B  0000                    add      byte ptr [eax], al             
  0x00C2893D  7044                    jo       0xc28983                       
  0x00C2893F  0008                    add      byte ptr [eax], cl             
  0x00C28941  06                      push     es                             
  0x00C28942  0000                    add      byte ptr [eax], al             
  0x00C28944  00f4                    add      ah, dh                         
  0x00C28946  44                      inc      esp                            
  0x00C28947  0000                    add      byte ptr [eax], al             
  0x00C28949  0100                    add      dword ptr [eax], eax           
  0x00C2894B  0000                    add      byte ptr [eax], al             
  0x00C2894D  7044                    jo       0xc28993                       
  0x00C2894F  0009                    add      byte ptr [ecx], cl             
  0x00C28951  06                      push     es                             
  0x00C28952  0000                    add      byte ptr [eax], al             
  0x00C28954  00f4                    add      ah, dh                         
  0x00C28956  60                      pushal                                  
  0x00C28957  000a                    add      byte ptr [edx], cl             
  0x00C28959  06                      push     es                             
  0x00C2895A  0000                    add      byte ptr [eax], al             
  0x00C2895C  00f4                    add      ah, dh                         
  0x00C2895E  44                      inc      esp                            
  0x00C2895F  0000                    add      byte ptr [eax], al             
  0x00C28961  0000                    add      byte ptr [eax], al             
  0x00C28963  0000                    add      byte ptr [eax], al             
  0x00C28965  58                      pop      eax                            
  0x00C28966  44                      inc      esp                            
  0x00C28967  0000                    add      byte ptr [eax], al             
  0x00C28969  f4                      hlt                                     
  0x00C2896A  44                      inc      esp                            
  0x00C2896B  0000                    add      byte ptr [eax], al             
  0x00C2896D  0100                    add      dword ptr [eax], eax           
  0x00C2896F  0000                    add      byte ptr [eax], al             
  0x00C28971  58                      pop      eax                            
  0x00C28972  44                      inc      esp                            
  0x00C28973  0000                    add      byte ptr [eax], al             
  0x00C28975  f4                      hlt                                     
  0x00C28976  44                      inc      esp                            
  0x00C28977  0000                    add      byte ptr [eax], al             
  0x00C28979  0200                    add      al, byte ptr [eax]             
  0x00C2897B  0000                    add      byte ptr [eax], al             
  0x00C2897D  58                      pop      eax                            
  0x00C2897E  44                      inc      esp                            
  0x00C2897F  0000                    add      byte ptr [eax], al             
  0x00C28981  f4                      hlt                                     
  0x00C28982  44                      inc      esp                            
                                        ; XREF: 0x00C2893D (cond_jump)
  0x00C28983  0000                    add      byte ptr [eax], al             
  0x00C28985  0300                    add      eax, dword ptr [eax]           
  0x00C28987  0000                    add      byte ptr [eax], al             
  0x00C28989  58                      pop      eax                            
  0x00C2898A  44                      inc      esp                            
  0x00C2898B  0000                    add      byte ptr [eax], al             
  0x00C2898D  f4                      hlt                                     
  0x00C2898E  44                      inc      esp                            
  0x00C2898F  0000                    add      byte ptr [eax], al             
  0x00C28991  0400                    add      al, 0                          
                                        ; XREF: 0x00C2894D (cond_jump)
  0x00C28993  0000                    add      byte ptr [eax], al             
  0x00C28995  58                      pop      eax                            
  0x00C28996  44                      inc      esp                            
  0x00C28997  0000                    add      byte ptr [eax], al             
  0x00C28999  f4                      hlt                                     
  0x00C2899A  44                      inc      esp                            
  0x00C2899B  00ff                    add      bh, bh                         
  0x00C2899E  ff00                    inc      dword ptr [eax]                
  0x00C289A0  006044                  add      byte ptr [eax + 0x44], ah      
  0x00C289A3  0000                    add      byte ptr [eax], al             
  0x00C289A5  f4                      hlt                                     
  0x00C289A6  60                      pushal                                  
  0x00C289A7  0010                    add      byte ptr [eax], dl             
  0x00C289A9  06                      push     es                             
  0x00C289AA  0000                    add      byte ptr [eax], al             
  0x00C289AC  00f4                    add      ah, dh                         
  0x00C289AE  44                      inc      esp                            
  0x00C289AF  0001                    add      byte ptr [ecx], al             
  0x00C289B1  0000                    add      byte ptr [eax], al             
  0x00C289B3  0000                    add      byte ptr [eax], al             
  0x00C289B5  58                      pop      eax                            
  0x00C289B6  44                      inc      esp                            
  0x00C289B7  0000                    add      byte ptr [eax], al             
  0x00C289B9  58                      pop      eax                            
  0x00C289BA  44                      inc      esp                            
  0x00C289BB  0000                    add      byte ptr [eax], al             
  0x00C289BD  58                      pop      eax                            
  0x00C289BE  44                      inc      esp                            
  0x00C289BF  0000                    add      byte ptr [eax], al             
  0x00C289C1  58                      pop      eax                            
  0x00C289C2  44                      inc      esp                            
  0x00C289C3  0000                    add      byte ptr [eax], al             
  0x00C289C5  58                      pop      eax                            
  0x00C289C6  44                      inc      esp                            
  0x00C289C7  0000                    add      byte ptr [eax], al             
  0x00C289C9  002400                  add      byte ptr [eax + eax], ah       
  0x00C289CC  006044                  add      byte ptr [eax + 0x44], ah      
  0x00C289CF  0000                    add      byte ptr [eax], al             
  0x00C289D1  f4                      hlt                                     
  0x00C289D2  60                      pushal                                  
  0x00C289D3  0016                    add      byte ptr [esi], dl             
  0x00C289D5  06                      push     es                             
  0x00C289D6  0000                    add      byte ptr [eax], al             
  0x00C289D8  00f4                    add      ah, dh                         
  0x00C289DA  44                      inc      esp                            
  0x00C289DB  00ff                    add      bh, bh                         
  0x00C289DE  ff00                    inc      dword ptr [eax]                
  0x00C289E0  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C289E3  0000                    add      byte ptr [eax], al             
  0x00C289E5  58                      pop      eax                            
  0x00C289E6  44                      inc      esp                            
  0x00C289E7  0000                    add      byte ptr [eax], al             
  0x00C289E9  58                      pop      eax                            
  0x00C289EA  44                      inc      esp                            
  0x00C289EB  0000                    add      byte ptr [eax], al             
  0x00C289ED  58                      pop      eax                            
  0x00C289EE  44                      inc      esp                            
  0x00C289EF  0000                    add      byte ptr [eax], al             
  0x00C289F1  58                      pop      eax                            
  0x00C289F2  44                      inc      esp                            
  0x00C289F3  0000                    add      byte ptr [eax], al             
  0x00C289F5  60                      pushal                                  
  0x00C289F6  44                      inc      esp                            
  0x00C289F7  0000                    add      byte ptr [eax], al             
  0x00C289F9  f4                      hlt                                     
  0x00C289FA  60                      pushal                                  
  0x00C289FB  001c06                  add      byte ptr [esi + eax], bl       
  0x00C289FE  0000                    add      byte ptr [eax], al             
  0x00C28A00  00f4                    add      ah, dh                         
  0x00C28A02  44                      inc      esp                            
  0x00C28A03  0000                    add      byte ptr [eax], al             
  0x00C28A05  0400                    add      al, 0                          
  0x00C28A07  0000                    add      byte ptr [eax], al             
  0x00C28A09  58                      pop      eax                            
  0x00C28A0A  44                      inc      esp                            
  0x00C28A0B  0000                    add      byte ptr [eax], al             
  0x00C28A0D  f4                      hlt                                     
  0x00C28A0E  44                      inc      esp                            
  0x00C28A0F  00ff                    add      bh, bh                         
  0x00C28A12  ff00                    inc      dword ptr [eax]                
  0x00C28A14  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A17  0000                    add      byte ptr [eax], al             
  0x00C28A19  f4                      hlt                                     
  0x00C28A1A  44                      inc      esp                            
  0x00C28A1B  0000                    add      byte ptr [eax], al             
  0x00C28A1D  0500000058              add      eax, 0x58000000                
  0x00C28A22  44                      inc      esp                            
  0x00C28A23  0000                    add      byte ptr [eax], al             
  0x00C28A25  f4                      hlt                                     
  0x00C28A26  44                      inc      esp                            
  0x00C28A27  00ff                    add      bh, bh                         
  0x00C28A2A  ff00                    inc      dword ptr [eax]                
  0x00C28A2C  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A2F  0000                    add      byte ptr [eax], al             
  0x00C28A31  f4                      hlt                                     
  0x00C28A32  44                      inc      esp                            
  0x00C28A33  00ff                    add      bh, bh                         
  0x00C28A36  ff00                    inc      dword ptr [eax]                
  0x00C28A38  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A3B  0000                    add      byte ptr [eax], al             
  0x00C28A3D  f4                      hlt                                     
  0x00C28A3E  44                      inc      esp                            
  0x00C28A3F  00ff                    add      bh, bh                         
  0x00C28A42  ff00                    inc      dword ptr [eax]                
  0x00C28A44  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A47  0000                    add      byte ptr [eax], al             
  0x00C28A49  f4                      hlt                                     
  0x00C28A4A  60                      pushal                                  
  0x00C28A4B  0022                    add      byte ptr [edx], ah             
  0x00C28A4D  06                      push     es                             
  0x00C28A4E  0000                    add      byte ptr [eax], al             
  0x00C28A50  00f4                    add      ah, dh                         
  0x00C28A52  44                      inc      esp                            
  0x00C28A53  0001                    add      byte ptr [ecx], al             
  0x00C28A55  0000                    add      byte ptr [eax], al             
  0x00C28A57  0000                    add      byte ptr [eax], al             
  0x00C28A59  58                      pop      eax                            
  0x00C28A5A  44                      inc      esp                            
  0x00C28A5B  0000                    add      byte ptr [eax], al             
  0x00C28A5D  002400                  add      byte ptr [eax + eax], ah       
  0x00C28A60  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A63  0000                    add      byte ptr [eax], al             
  0x00C28A65  f4                      hlt                                     
  0x00C28A66  44                      inc      esp                            
  0x00C28A67  0001                    add      byte ptr [ecx], al             
  0x00C28A69  0000                    add      byte ptr [eax], al             
  0x00C28A6B  0000                    add      byte ptr [eax], al             
  0x00C28A6D  58                      pop      eax                            
  0x00C28A6E  44                      inc      esp                            
  0x00C28A6F  0000                    add      byte ptr [eax], al             
  0x00C28A71  002400                  add      byte ptr [eax + eax], ah       
  0x00C28A74  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A77  0000                    add      byte ptr [eax], al             
  0x00C28A79  002400                  add      byte ptr [eax + eax], ah       
  0x00C28A7C  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A7F  0000                    add      byte ptr [eax], al             
  0x00C28A81  002400                  add      byte ptr [eax + eax], ah       
  0x00C28A84  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A87  0000                    add      byte ptr [eax], al             
  0x00C28A89  f4                      hlt                                     
  0x00C28A8A  60                      pushal                                  
  0x00C28A8B  0028                    add      byte ptr [eax], ch             
  0x00C28A8D  06                      push     es                             
  0x00C28A8E  0000                    add      byte ptr [eax], al             
  0x00C28A90  00f4                    add      ah, dh                         
  0x00C28A92  44                      inc      esp                            
  0x00C28A93  00ff                    add      bh, bh                         
  0x00C28A96  ff00                    inc      dword ptr [eax]                
  0x00C28A98  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C28A9B  0000                    add      byte ptr [eax], al             
  0x00C28A9D  58                      pop      eax                            
  0x00C28A9E  44                      inc      esp                            
  0x00C28A9F  0000                    add      byte ptr [eax], al             
  0x00C28AA1  58                      pop      eax                            
  0x00C28AA2  44                      inc      esp                            
  0x00C28AA3  0000                    add      byte ptr [eax], al             
  0x00C28AA5  58                      pop      eax                            
  0x00C28AA6  44                      inc      esp                            
  0x00C28AA7  0000                    add      byte ptr [eax], al             
  0x00C28AA9  58                      pop      eax                            
  0x00C28AAA  44                      inc      esp                            
  0x00C28AAB  0000                    add      byte ptr [eax], al             
  0x00C28AAD  58                      pop      eax                            
  0x00C28AAE  44                      inc      esp                            
  0x00C28AAF  0000                    add      byte ptr [eax], al             
  0x00C28AB1  f4                      hlt                                     
  0x00C28AB2  56                      push     esi                            
  0x00C28AB3  0007                    add      byte ptr [edi], al             
  0x00C28AB5  0000                    add      byte ptr [eax], al             
  0x00C28AB7  0000                    add      byte ptr [eax], al             
  0x00C28AB9  f4                      hlt                                     
  0x00C28ABA  60                      pushal                                  
  0x00C28ABB  0000                    add      byte ptr [eax], al             
  0x00C28ABD  0000                    add      byte ptr [eax], al             
  0x00C28ABF  0000                    add      byte ptr [eax], al             
  0x00C28AC1  f4                      hlt                                     
  0x00C28AC2  7000                    jo       0xc28ac4                       
                                        ; XREF: 0x00C28AC2 (cond_jump)
  0x00C28AC4  0001                    add      byte ptr [ecx], al             
  0x00C28AC6  0000                    add      byte ptr [eax], al             
  0x00C28AC8  0000                    add      byte ptr [eax], al             
  0x00C28ACA  3900                    cmp      dword ptr [eax], eax           
  0x00C28ACC  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28ACF  0000                    add      byte ptr [eax], al             
  0x00C28AD1  f4                      hlt                                     
  0x00C28AD2  56                      push     esi                            
  0x00C28AD3  0007                    add      byte ptr [edi], al             
  0x00C28AD5  0000                    add      byte ptr [eax], al             
  0x00C28AD7  0000                    add      byte ptr [eax], al             
  0x00C28AD9  f4                      hlt                                     
  0x00C28ADA  60                      pushal                                  
  0x00C28ADB  0000                    add      byte ptr [eax], al             
  0x00C28ADD  0100                    add      dword ptr [eax], eax           
  0x00C28ADF  0000                    add      byte ptr [eax], al             
  0x00C28AE1  f4                      hlt                                     
  0x00C28AE2  7000                    jo       0xc28ae4                       
                                        ; XREF: 0x00C28AE2 (cond_jump)
  0x00C28AE4  0001                    add      byte ptr [ecx], al             
  0x00C28AE6  0000                    add      byte ptr [eax], al             
  0x00C28AE8  0001                    add      byte ptr [ecx], al             
  0x00C28AEA  3900                    cmp      dword ptr [eax], eax           
  0x00C28AEC  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28AEF  0000                    add      byte ptr [eax], al             
  0x00C28AF1  f4                      hlt                                     
  0x00C28AF2  56                      push     esi                            
  0x00C28AF3  0007                    add      byte ptr [edi], al             
  0x00C28AF5  0000                    add      byte ptr [eax], al             
  0x00C28AF7  0000                    add      byte ptr [eax], al             
  0x00C28AF9  f4                      hlt                                     
  0x00C28AFA  60                      pushal                                  
  0x00C28AFB  0000                    add      byte ptr [eax], al             
  0x00C28AFD  0200                    add      al, byte ptr [eax]             
  0x00C28AFF  0000                    add      byte ptr [eax], al             
  0x00C28B01  f4                      hlt                                     
  0x00C28B02  7000                    jo       0xc28b04                       
                                        ; XREF: 0x00C28B02 (cond_jump)
  0x00C28B04  0001                    add      byte ptr [ecx], al             
  0x00C28B06  0000                    add      byte ptr [eax], al             
  0x00C28B08  0002                    add      byte ptr [edx], al             
  0x00C28B0A  3900                    cmp      dword ptr [eax], eax           
  0x00C28B0C  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28B0F  0000                    add      byte ptr [eax], al             
  0x00C28B11  f4                      hlt                                     
  0x00C28B12  56                      push     esi                            
  0x00C28B13  0007                    add      byte ptr [edi], al             
  0x00C28B15  0000                    add      byte ptr [eax], al             
  0x00C28B17  0000                    add      byte ptr [eax], al             
  0x00C28B19  f4                      hlt                                     
  0x00C28B1A  60                      pushal                                  
  0x00C28B1B  0000                    add      byte ptr [eax], al             
  0x00C28B1D  0300                    add      eax, dword ptr [eax]           
  0x00C28B1F  0000                    add      byte ptr [eax], al             
  0x00C28B21  f4                      hlt                                     
  0x00C28B22  7000                    jo       0xc28b24                       
                                        ; XREF: 0x00C28B22 (cond_jump)
  0x00C28B24  0001                    add      byte ptr [ecx], al             
  0x00C28B26  0000                    add      byte ptr [eax], al             
  0x00C28B28  0003                    add      byte ptr [ebx], al             
  0x00C28B2A  3900                    cmp      dword ptr [eax], eax           
  0x00C28B2C  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28B2F  0000                    add      byte ptr [eax], al             
  0x00C28B31  f4                      hlt                                     
  0x00C28B32  56                      push     esi                            
  0x00C28B33  0007                    add      byte ptr [edi], al             
  0x00C28B35  0000                    add      byte ptr [eax], al             
  0x00C28B37  0000                    add      byte ptr [eax], al             
  0x00C28B39  f4                      hlt                                     
  0x00C28B3A  60                      pushal                                  
  0x00C28B3B  0000                    add      byte ptr [eax], al             
  0x00C28B3D  0400                    add      al, 0                          
  0x00C28B3F  0000                    add      byte ptr [eax], al             
  0x00C28B41  f4                      hlt                                     
  0x00C28B42  7000                    jo       0xc28b44                       
                                        ; XREF: 0x00C28B42 (cond_jump)
  0x00C28B44  0001                    add      byte ptr [ecx], al             
  0x00C28B46  0000                    add      byte ptr [eax], al             
  0x00C28B48  000439                  add      byte ptr [ecx + edi], al       
  0x00C28B4B  0080010d0013            add      byte ptr [eax + 0x13000d01], al 
  0x00C28B52  6200                    bound    eax, qword ptr [eax]           
  0x00C28B54  2e06                    push     es                             
  0x00C28B56  0000                    add      byte ptr [eax], al             
  0x00C28B58  dc1a                    fcomp    qword ptr [edx]                
  0x00C28B5A  0200                    add      al, byte ptr [eax]             
  0x00C28B5C  00f4                    add      ah, dh                         
  0x00C28B5E  44                      inc      esp                            
  0x00C28B5F  0001                    add      byte ptr [ecx], al             
  0x00C28B61  0000                    add      byte ptr [eax], al             
  0x00C28B63  004500                  add      byte ptr [ebp], al             
  0x00C28B66  2000                    and      byte ptr [eax], al             
  0x00C28B68  41                      inc      ecx                            
  0x00C28B69  2920                    sub      dword ptr [eax], esp           
  0x00C28B6B  0000                    add      byte ptr [eax], al             
  0x00C28B6D  f4                      hlt                                     
  0x00C28B6E  44                      inc      esp                            
  0x00C28B6F  001f                    add      byte ptr [edi], bl             
  0x00C28B71  0000                    add      byte ptr [eax], al             
  0x00C28B73  004500                  add      byte ptr [ebp], al             
  0x00C28B76  2000                    and      byte ptr [eax], al             
  0x00C28B78  41                      inc      ecx                            
  0x00C28B79  27                      daa                                     
  0x00C28B7A  2000                    and      byte ptr [eax], al             
  0x00C28B7C  0098210000f4            add      byte ptr [eax - 0xbffffdf], bl 
  0x00C28B82  60                      pushal                                  
  0x00C28B83  000503000085            add      byte ptr [0x85000003], al      
  0x00C28B89  e807001808              call     0x8da8b95                      
  0x00C28B8E  050013f460              add      eax, 0x60f41300                
  0x00C28B93  0000                    add      byte ptr [eax], al             
  0x00C28B95  06                      push     es                             
  0x00C28B96  0000                    add      byte ptr [eax], al             
  0x00C28B98  00f4                    add      ah, dh                         
  0x00C28B9A  57                      push     edi                            
  0x00C28B9B  0016                    add      byte ptr [esi], dl             
  0x00C28B9D  0000                    add      byte ptr [eax], al             
  0x00C28B9F  0080100d001c            add      byte ptr [eax + 0x1c000d10], al 
  0x00C28BA5  0000                    add      byte ptr [eax], al             
  0x00C28BA7  0000                    add      byte ptr [eax], al             
  0x00C28BA9  f4                      hlt                                     
  0x00C28BAA  56                      push     esi                            
  0x00C28BAB  0008                    add      byte ptr [eax], cl             
  0x00C28BAD  0000                    add      byte ptr [eax], al             
  0x00C28BAF  0000                    add      byte ptr [eax], al             
  0x00C28BB1  f4                      hlt                                     
  0x00C28BB2  60                      pushal                                  
  0x00C28BB3  0000                    add      byte ptr [eax], al             
  0x00C28BB5  0400                    add      al, 0                          
  0x00C28BB7  0000                    add      byte ptr [eax], al             
  0x00C28BB9  f4                      hlt                                     
  0x00C28BBA  7000                    jo       0xc28bbc                       
                                        ; XREF: 0x00C28BBA (cond_jump)
  0x00C28BBC  0001                    add      byte ptr [ecx], al             
  0x00C28BBE  0000                    add      byte ptr [eax], al             
  0x00C28BC0  0000                    add      byte ptr [eax], al             
  0x00C28BC2  3900                    cmp      dword ptr [eax], eax           
  0x00C28BC4  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28BC7  0000                    add      byte ptr [eax], al             
  0x00C28BC9  f4                      hlt                                     
  0x00C28BCA  56                      push     esi                            
  0x00C28BCB  0008                    add      byte ptr [eax], cl             
  0x00C28BCD  0000                    add      byte ptr [eax], al             
  0x00C28BCF  0000                    add      byte ptr [eax], al             
  0x00C28BD1  f4                      hlt                                     
  0x00C28BD2  60                      pushal                                  
  0x00C28BD3  0000                    add      byte ptr [eax], al             
  0x00C28BD5  05000000f4              add      eax, 0xf4000000                
  0x00C28BDA  7000                    jo       0xc28bdc                       
                                        ; XREF: 0x00C28BDA (cond_jump)
  0x00C28BDC  0001                    add      byte ptr [ecx], al             
  0x00C28BDE  0000                    add      byte ptr [eax], al             
  0x00C28BE0  0001                    add      byte ptr [ecx], al             
  0x00C28BE2  3900                    cmp      dword ptr [eax], eax           
  0x00C28BE4  80010d                  add      byte ptr [ecx], 0xd            
  0x00C28BE7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28BEA  0000                    add      byte ptr [eax], al             
  0x00C28BEC  00f4                    add      ah, dh                         
  0x00C28BEE  60                      pushal                                  
  0x00C28BEF  0000                    add      byte ptr [eax], al             
  0x00C28BF1  0000                    add      byte ptr [eax], al             
  0x00C28BF3  009280060005            add      byte ptr [edx + 0x5000680], dl 
  0x00C28BF9  0000                    add      byte ptr [eax], al             
  0x00C28BFB  0000                    add      byte ptr [eax], al             
  0x00C28BFD  d84400a1                fadd     dword ptr [eax + eax - 0x5f]   
  0x00C28C01  d04600                  rol      byte ptr [esi], 1              
  0x00C28C04  e958560000              jmp      0xc2e261                       
  0x00C28C09  58                      pop      eax                            
  0x00C28C0A  57                      push     edi                            
  0x00C28C0B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28C0E  0000                    add      byte ptr [eax], al             
  0x00C28C10  20f4                    and      ah, dh                         
  0x00C28C12  0500ffffff              add      eax, 0xffffff00                
  0x00C28C17  00a0610400a0            add      byte ptr [eax - 0x5ffffb9f], ah 
  0x00C28C1D  620400                  bound    eax, qword ptr [eax + eax]     
  0x00C28C20  a0640400a0              mov      al, byte ptr [0xa0000464]      
  0x00C28C25  650400                  add      al, 0                          
  0x00C28C28  a0660400b8              mov      al, byte ptr [0xb8000466]      
  0x00C28C2D  f30000                  add      byte ptr [eax], al             
  0x00C28C30  00f4                    add      ah, dh                         
  0x00C28C32  44                      inc      esp                            
  0x00C28C33  0016                    add      byte ptr [esi], dl             
  0x00C28C35  0000                    add      byte ptr [eax], al             
  0x00C28C37  004d00                  add      byte ptr [ebp], cl             
  0x00C28C3A  2000                    and      byte ptr [eax], al             
  0x00C28C3C  4a                      dec      edx                            
  0x00C28C3D  100d00080000            adc      byte ptr [0x800], cl           
  0x00C28C43  0000                    add      byte ptr [eax], al             
  0x00C28C45  0030                    add      byte ptr [eax], dh             
  0x00C28C47  0000                    add      byte ptr [eax], al             
  0x00C28C49  f4                      hlt                                     
  0x00C28C4A  56                      push     esi                            
  0x00C28C4B  0000                    add      byte ptr [eax], al             
  0x00C28C4D  0000                    add      byte ptr [eax], al             
  0x00C28C4F  0000                    add      byte ptr [eax], al             
  0x00C28C51  f4                      hlt                                     
  0x00C28C52  57                      push     edi                            
  0x00C28C53  00ff                    add      bh, bh                         
  0x00C28C56  ff00                    inc      dword ptr [eax]                
  0x00C28C58  0c00                    or       al, 0                          
  0x00C28C5A  0000                    add      byte ptr [eax], al             
  0x00C28C5C  80100d                  adc      byte ptr [eax], 0xd            
  0x00C28C5F  00b800000000            add      byte ptr [eax], bh             
  0x00C28C66  56                      push     esi                            
  0x00C28C67  0032                    add      byte ptr [edx], dh             
  0x00C28C69  06                      push     es                             
  0x00C28C6A  0000                    add      byte ptr [eax], al             
  0x00C28C6C  0300                    add      eax, dword ptr [eax]           
  0x00C28C6E  2000                    and      byte ptr [eax], al             
  0x00C28C70  06                      push     es                             
  0x00C28C71  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C28C72  050080100d              add      eax, 0xd108000                 
  0x00C28C77  005001                  add      byte ptr [eax + 1], dl         
  0x00C28C7A  0000                    add      byte ptr [eax], al             
  0x00C28C7C  80100d                  adc      byte ptr [eax], 0xd            
  0x00C28C7F  002f                    add      byte ptr [edi], ch             
  0x00C28C81  0100                    add      dword ptr [eax], eax           
  0x00C28C83  0003                    add      byte ptr [ebx], al             
  0x00C28C85  0c05                    or       al, 5                          
  0x00C28C87  0080100d0053            add      byte ptr [eax + 0x53000d10], al 
  0x00C28C8D  0100                    add      dword ptr [eax], eax           
  0x00C28C8F  0080100d0030            add      byte ptr [eax + 0x30000d10], al 
  0x00C28C95  0100                    add      dword ptr [eax], eax           
  0x00C28C97  0000                    add      byte ptr [eax], al             
  0x00C28C9A  56                      push     esi                            
  0x00C28C9B  0033                    add      byte ptr [ebx], dh             
  0x00C28C9D  06                      push     es                             
  0x00C28C9E  0000                    add      byte ptr [eax], al             
  0x00C28CA0  854001                  test     dword ptr [eax + 1], eax       
  0x00C28CA3  0017                    add      byte ptr [edi], dl             
  0x00C28CA5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C28CA6  050000f066              add      eax, 0x66f00000                
  0x00C28CAB  002f                    add      byte ptr [edi], ch             
  0x00C28CAD  06                      push     es                             
  0x00C28CAE  0000                    add      byte ptr [eax], al             
  0x00C28CB0  0003                    add      byte ptr [ebx], al             
  0x00C28CB2  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28CB5  ee                      out      dx, al                         
  0x00C28CB6  60                      pushal                                  
  0x00C28CB7  0000                    add      byte ptr [eax], al             
  0x00C28CB9  043e                    add      al, 0x3e                       
  0x00C28CBB  0000                    add      byte ptr [eax], al             
  0x00C28CBD  ee                      out      dx, al                         
  0x00C28CBE  61                      popal                                   
  0x00C28CBF  0000                    add      byte ptr [eax], al             
  0x00C28CC1  f0660030                lock add byte ptr [eax], dh             
  0x00C28CC5  06                      push     es                             
  0x00C28CC6  0000                    add      byte ptr [eax], al             
  0x00C28CC8  0003                    add      byte ptr [ebx], al             
  0x00C28CCA  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28CCD  ee                      out      dx, al                         
  0x00C28CCE  7000                    jo       0xc28cd0                       
                                        ; XREF: 0x00C28CCE (cond_jump)
  0x00C28CD0  00043e                  add      byte ptr [esi + edi], al       
  0x00C28CD3  0000                    add      byte ptr [eax], al             
  0x00C28CD5  ee                      out      dx, al                         
  0x00C28CD6  7100                    jno      0xc28cd8                       
                                        ; XREF: 0x00C28CD6 (cond_jump)
  0x00C28CD8  00f4                    add      ah, dh                         
  0x00C28CDA  46                      inc      esi                            
  0x00C28CDB  007a82                  add      byte ptr [edx - 0x7e], bh      
  0x00C28CDE  5a                      pop      edx                            
  0x00C28CDF  0000                    add      byte ptr [eax], al             
  0x00C28CE2  6200                    bound    eax, qword ptr [eax]           
  0x00C28CE4  3806                    cmp      byte ptr [esi], al             
  0x00C28CE6  0000                    add      byte ptr [eax], al             
  0x00C28CE8  10d2                    adc      dl, dl                         
  0x00C28CEA  06                      push     es                             
  0x00C28CEB  000500000000            add      byte ptr [0], al               
  0x00C28CF1  e044                    loopne   0xc28d37                       
  0x00C28CF3  00d0                    add      al, dl                         
  0x00C28CF5  c9                      leave                                   
  0x00C28CF6  44                      inc      esp                            
  0x00C28CF7  00d3                    add      bl, dl                         
  0x00C28CF9  0020                    add      byte ptr [eax], ah             
  0x00C28CFB  0000                    add      byte ptr [eax], al             
  0x00C28CFD  48                      dec      eax                            
  0x00C28CFE  56                      push     esi                            
  0x00C28CFF  0000                    add      byte ptr [eax], al             
  0x00C28D01  f066002f                lock add byte ptr [edi], ch             
  0x00C28D05  06                      push     es                             
  0x00C28D06  0000                    add      byte ptr [eax], al             
  0x00C28D08  0000                    add      byte ptr [eax], al             
  0x00C28D0A  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28D0D  ee                      out      dx, al                         
  0x00C28D0E  60                      pushal                                  
  0x00C28D0F  0000                    add      byte ptr [eax], al             
  0x00C28D11  023e                    add      bh, byte ptr [esi]             
  0x00C28D13  0000                    add      byte ptr [eax], al             
  0x00C28D15  ee                      out      dx, al                         
  0x00C28D16  61                      popal                                   
  0x00C28D17  0000                    add      byte ptr [eax], al             
  0x00C28D19  013e                    add      dword ptr [esi], edi           
  0x00C28D1B  0000                    add      byte ptr [eax], al             
  0x00C28D1D  ee                      out      dx, al                         
  0x00C28D1E  6200                    bound    eax, qword ptr [eax]           
  0x00C28D20  00f0                    add      al, dh                         
  0x00C28D22  66003406                add      byte ptr [esi + eax], dh       
  0x00C28D26  0000                    add      byte ptr [eax], al             
  0x00C28D28  0000                    add      byte ptr [eax], al             
  0x00C28D2A  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28D2D  ee                      out      dx, al                         
  0x00C28D2E  640000                  add      byte ptr fs:[eax], al          
  0x00C28D31  023e                    add      bh, byte ptr [esi]             
  0x00C28D33  0000                    add      byte ptr [eax], al             
  0x00C28D35  ee                      out      dx, al                         
  0x00C28D36  650000                  add      byte ptr gs:[eax], al          
  0x00C28D39  f0660030                lock add byte ptr [eax], dh             
  0x00C28D3D  06                      push     es                             
  0x00C28D3E  0000                    add      byte ptr [eax], al             
  0x00C28D40  0000                    add      byte ptr [eax], al             
  0x00C28D42  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28D45  ee                      out      dx, al                         
  0x00C28D46  7000                    jo       0xc28d48                       
                                        ; XREF: 0x00C28D46 (cond_jump)
  0x00C28D48  0002                    add      byte ptr [edx], al             
  0x00C28D4A  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28D4D  ee                      out      dx, al                         
  0x00C28D4E  7100                    jno      0xc28d50                       
                                        ; XREF: 0x00C28D4E (cond_jump)
  0x00C28D50  0001                    add      byte ptr [ecx], al             
  0x00C28D52  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28D55  ee                      out      dx, al                         
  0x00C28D56  7200                    jb       0xc28d58                       
                                        ; XREF: 0x00C28D56 (cond_jump)
  0x00C28D58  00f0                    add      al, dh                         
  0x00C28D5A  66003506000000          add      byte ptr [6], dh               
  0x00C28D61  003e                    add      byte ptr [esi], bh             
  0x00C28D63  0000                    add      byte ptr [eax], al             
  0x00C28D65  ee                      out      dx, al                         
  0x00C28D66  7400                    je       0xc28d68                       
                                        ; XREF: 0x00C28D66 (cond_jump)
  0x00C28D68  00f4                    add      ah, dh                         
  0x00C28D6A  7600                    jbe      0xc28d6c                       
                                        ; XREF: 0x00C28D6A (cond_jump)
  0x00C28D6C  0200                    add      al, byte ptr [eax]             
  0x00C28D6E  0000                    add      byte ptr [eax], al             
  0x00C28D70  00ee                    add      dh, ch                         
  0x00C28D72  7500                    jne      0xc28d74                       
                                        ; XREF: 0x00C28D72 (cond_jump)
  0x00C28D74  00f4                    add      ah, dh                         
  0x00C28D76  45                      inc      ebp                            
  0x00C28D77  007a82                  add      byte ptr [edx - 0x7e], bh      
  0x00C28D7A  5a                      pop      edx                            
  0x00C28D7B  0000                    add      byte ptr [eax], al             
  0x00C28D7D  f0660038                lock add byte ptr [eax], bh             
  0x00C28D81  06                      push     es                             
  0x00C28D82  0000                    add      byte ptr [eax], al             
  0x00C28D84  00d6                    add      dh, dl                         
  0x00C28D86  06                      push     es                             
  0x00C28D87  006704                  add      byte ptr [edi + 4], ah         
  0x00C28D8A  0000                    add      byte ptr [eax], al             
  0x00C28D8C  00ca                    add      dl, cl                         
  0x00C28D8E  44                      inc      esp                            
  0x00C28D8F  0000                    add      byte ptr [eax], al             
  0x00C28D91  c85600a3                enter    0x56, -0x5d                    
  0x00C28D95  c9                      leave                                   
  0x00C28D96  57                      push     edi                            
  0x00C28D97  00ab4c560000            add      byte ptr [ebx + 0x564c], ch    
  0x00C28D9D  4d                      dec      ebp                            
  0x00C28D9E  57                      push     edi                            
  0x00C28D9F  0000                    add      byte ptr [eax], al             
  0x00C28DA1  f4                      hlt                                     
  0x00C28DA2  61                      popal                                   
  0x00C28DA3  0039                    add      byte ptr [ecx], bh             
  0x00C28DA5  06                      push     es                             
  0x00C28DA6  0000                    add      byte ptr [eax], al             
  0x00C28DA8  00f0                    add      al, dh                         
  0x00C28DAA  65008706000000          add      byte ptr gs:[edi + 6], al      
  0x00C28DB1  f4                      hlt                                     
  0x00C28DB2  6200                    bound    eax, qword ptr [eax]           
  0x00C28DB4  6d                      insd     dword ptr es:[edi], dx         
  0x00C28DB5  06                      push     es                             
  0x00C28DB6  0000                    add      byte ptr [eax], al             
  0x00C28DB8  00f0                    add      al, dh                         
  0x00C28DBA  66003406                add      byte ptr [esi + eax], dh       
  0x00C28DBE  0000                    add      byte ptr [eax], al             
  0x00C28DC0  0000                    add      byte ptr [eax], al             
  0x00C28DC2  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28DC5  ee                      out      dx, al                         
  0x00C28DC6  60                      pushal                                  
  0x00C28DC7  0000                    add      byte ptr [eax], al             
  0x00C28DC9  1422                    adc      al, 0x22                       
  0x00C28DCB  0000                    add      byte ptr [eax], al             
  0x00C28DCD  f066003506000000        lock add byte ptr [6], dh               
  0x00C28DD5  ee                      out      dx, al                         
  0x00C28DD6  7000                    jo       0xc28dd8                       
                                        ; XREF: 0x00C28DD6 (cond_jump)
  0x00C28DD8  001c23                  add      byte ptr [ebx], bl             
  0x00C28DDB  0000                    add      byte ptr [eax], al             
  0x00C28DDE  50                      push     eax                            
  0x00C28DDF  0038                    add      byte ptr [eax], bh             
  0x00C28DE1  06                      push     es                             
  0x00C28DE2  0000                    add      byte ptr [eax], al             
  0x00C28DE4  0a00                    or       al, byte ptr [eax]             
  0x00C28DE6  0000                    add      byte ptr [eax], al             
  0x00C28DE8  001e                    add      byte ptr [esi], bl             
  0x00C28DEA  2100                    and      dword ptr [eax], eax           
  0x00C28DEC  00f4                    add      ah, dh                         
  0x00C28DEE  7200                    jb       0xc28df0                       
                                        ; XREF: 0x00C28DEE (cond_jump)
  0x00C28DF0  0400                    add      al, 0                          
  0x00C28DF2  0000                    add      byte ptr [eax], al             
  0x00C28DF4  80f00b                  xor      al, 0xb                        
  0x00C28DF7  008b05000000            add      byte ptr [ebx + 5], cl         
  0x00C28DFD  f4                      hlt                                     
  0x00C28DFE  61                      popal                                   
  0x00C28DFF  004906                  add      byte ptr [ecx + 6], cl         
  0x00C28E02  0000                    add      byte ptr [eax], al             
  0x00C28E04  00f0                    add      al, dh                         
  0x00C28E06  65008706000000          add      byte ptr gs:[edi + 6], al      
  0x00C28E0D  f4                      hlt                                     
  0x00C28E0E  6200                    bound    eax, qword ptr [eax]           
  0x00C28E10  7506                    jne      0xc28e18                       
  0x00C28E12  0000                    add      byte ptr [eax], al             
  0x00C28E14  00f0                    add      al, dh                         
  0x00C28E16  66003406                add      byte ptr [esi + eax], dh       
  0x00C28E1A  0000                    add      byte ptr [eax], al             
  0x00C28E1C  0002                    add      byte ptr [edx], al             
  0x00C28E1E  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28E21  ee                      out      dx, al                         
  0x00C28E22  60                      pushal                                  
  0x00C28E23  0000                    add      byte ptr [eax], al             
  0x00C28E25  1422                    adc      al, 0x22                       
  0x00C28E27  0000                    add      byte ptr [eax], al             
  0x00C28E29  f066003506000000        lock add byte ptr [6], dh               
  0x00C28E31  ee                      out      dx, al                         
  0x00C28E32  7000                    jo       0xc28e34                       
                                        ; XREF: 0x00C28E32 (cond_jump)
  0x00C28E34  001c23                  add      byte ptr [ebx], bl             
  0x00C28E37  0000                    add      byte ptr [eax], al             
  0x00C28E3A  50                      push     eax                            
  0x00C28E3B  0038                    add      byte ptr [eax], bh             
  0x00C28E3D  06                      push     es                             
  0x00C28E3E  0000                    add      byte ptr [eax], al             
  0x00C28E40  0a00                    or       al, byte ptr [eax]             
  0x00C28E42  0000                    add      byte ptr [eax], al             
  0x00C28E44  001e                    add      byte ptr [esi], bl             
  0x00C28E46  2100                    and      dword ptr [eax], eax           
  0x00C28E48  00f4                    add      ah, dh                         
  0x00C28E4A  7200                    jb       0xc28e4c                       
                                        ; XREF: 0x00C28E4A (cond_jump)
  0x00C28E4C  0400                    add      al, 0                          
  0x00C28E4E  0000                    add      byte ptr [eax], al             
  0x00C28E50  80f00b                  xor      al, 0xb                        
  0x00C28E53  008b05000000            add      byte ptr [ebx + 5], cl         
  0x00C28E59  f4                      hlt                                     
  0x00C28E5A  61                      popal                                   
  0x00C28E5B  005906                  add      byte ptr [ecx + 6], bl         
  0x00C28E5E  0000                    add      byte ptr [eax], al             
  0x00C28E60  00f0                    add      al, dh                         
  0x00C28E62  65008806000000          add      byte ptr gs:[eax + 6], cl      
  0x00C28E69  f4                      hlt                                     
  0x00C28E6A  6200                    bound    eax, qword ptr [eax]           
  0x00C28E6C  7d06                    jge      0xc28e74                       
  0x00C28E6E  0000                    add      byte ptr [eax], al             
  0x00C28E70  00f0                    add      al, dh                         
  0x00C28E72  66002f                  add      byte ptr [edi], ch             
  0x00C28E75  06                      push     es                             
  0x00C28E76  0000                    add      byte ptr [eax], al             
  0x00C28E78  0003                    add      byte ptr [ebx], al             
  0x00C28E7A  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28E7D  ee                      out      dx, al                         
  0x00C28E7E  60                      pushal                                  
  0x00C28E7F  0000                    add      byte ptr [eax], al             
  0x00C28E81  1422                    adc      al, 0x22                       
  0x00C28E83  0000                    add      byte ptr [eax], al             
  0x00C28E85  f0660030                lock add byte ptr [eax], dh             
  0x00C28E89  06                      push     es                             
  0x00C28E8A  0000                    add      byte ptr [eax], al             
  0x00C28E8C  00ee                    add      dh, ch                         
  0x00C28E8E  7000                    jo       0xc28e90                       
                                        ; XREF: 0x00C28E8E (cond_jump)
  0x00C28E90  001c23                  add      byte ptr [ebx], bl             
  0x00C28E93  0000                    add      byte ptr [eax], al             
  0x00C28E96  50                      push     eax                            
  0x00C28E97  0038                    add      byte ptr [eax], bh             
  0x00C28E99  06                      push     es                             
  0x00C28E9A  0000                    add      byte ptr [eax], al             
  0x00C28E9C  0a00                    or       al, byte ptr [eax]             
  0x00C28E9E  0000                    add      byte ptr [eax], al             
  0x00C28EA0  001e                    add      byte ptr [esi], bl             
  0x00C28EA2  2100                    and      dword ptr [eax], eax           
  0x00C28EA4  00f4                    add      ah, dh                         
  0x00C28EA6  7200                    jb       0xc28ea8                       
                                        ; XREF: 0x00C28EA6 (cond_jump)
  0x00C28EA8  0500000080              add      eax, 0x80000000                
  0x00C28EAD  f00b00                  lock or  eax, dword ptr [eax]           
  0x00C28EB0  8b05000000f0            mov      eax, dword ptr [0xf0000000]    
  0x00C28EB6  66003406                add      byte ptr [esi + eax], dh       
  0x00C28EBA  0000                    add      byte ptr [eax], al             
  0x00C28EBC  0000                    add      byte ptr [eax], al             
  0x00C28EBE  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28EC1  ee                      out      dx, al                         
  0x00C28EC2  60                      pushal                                  
  0x00C28EC3  0000                    add      byte ptr [eax], al             
  0x00C28EC5  023e                    add      bh, byte ptr [esi]             
  0x00C28EC7  0000                    add      byte ptr [eax], al             
  0x00C28EC9  ee                      out      dx, al                         
  0x00C28ECA  61                      popal                                   
  0x00C28ECB  0000                    add      byte ptr [eax], al             
  0x00C28ECD  f066002f                lock add byte ptr [edi], ch             
  0x00C28ED1  06                      push     es                             
  0x00C28ED2  0000                    add      byte ptr [eax], al             
  0x00C28ED4  0003                    add      byte ptr [ebx], al             
  0x00C28ED6  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28ED9  ee                      out      dx, al                         
  0x00C28EDA  6200                    bound    eax, qword ptr [eax]           
  0x00C28EDC  00f0                    add      al, dh                         
  0x00C28EDE  66003506000000          add      byte ptr [6], dh               
  0x00C28EE5  003e                    add      byte ptr [esi], bh             
  0x00C28EE7  0000                    add      byte ptr [eax], al             
  0x00C28EE9  ee                      out      dx, al                         
  0x00C28EEA  7000                    jo       0xc28eec                       
                                        ; XREF: 0x00C28EEA (cond_jump)
  0x00C28EEC  0002                    add      byte ptr [edx], al             
  0x00C28EEE  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28EF1  ee                      out      dx, al                         
  0x00C28EF2  7100                    jno      0xc28ef4                       
                                        ; XREF: 0x00C28EF2 (cond_jump)
  0x00C28EF4  00f0                    add      al, dh                         
  0x00C28EF6  660030                  add      byte ptr [eax], dh             
  0x00C28EF9  06                      push     es                             
  0x00C28EFA  0000                    add      byte ptr [eax], al             
  0x00C28EFC  0003                    add      byte ptr [ebx], al             
  0x00C28EFE  3e0000                  add      byte ptr ds:[eax], al          
  0x00C28F01  ee                      out      dx, al                         
  0x00C28F02  7200                    jb       0xc28f04                       
                                        ; XREF: 0x00C28F02 (cond_jump)
  0x00C28F04  00f4                    add      ah, dh                         
  0x00C28F06  45                      inc      ebp                            
  0x00C28F07  007a82                  add      byte ptr [edx - 0x7e], bh      
  0x00C28F0A  5a                      pop      edx                            
  0x00C28F0B  0000                    add      byte ptr [eax], al             
  0x00C28F0D  f0640038                lock add byte ptr fs:[eax], bh          
  0x00C28F11  06                      push     es                             
  0x00C28F12  0000                    add      byte ptr [eax], al             
  0x00C28F14  00d4                    add      ah, dl                         
  0x00C28F16  06                      push     es                             
  0x00C28F17  00cb                    add      bl, cl                         
  0x00C28F19  0400                    add      al, 0                          
  0x00C28F1B  0000                    add      byte ptr [eax], al             
  0x00C28F1D  ca4400                  retf     0x44                           
  0x00C28F20  00e0                    add      al, ah                         
  0x00C28F22  56                      push     esi                            
  0x00C28F23  00a3e15700af            add      byte ptr [ebx - 0x50ffa81f], ah 
  0x00C28F29  48                      dec      eax                            
  0x00C28F2A  56                      push     esi                            
  0x00C28F2B  0000                    add      byte ptr [eax], al             
  0x00C28F2D  49                      dec      ecx                            
  0x00C28F2E  57                      push     edi                            
  0x00C28F2F  0080100d00b4            add      byte ptr [eax - 0x4bfff2f0], al 
  0x00C28F35  0000                    add      byte ptr [eax], al             
  0x00C28F37  000c00                  add      byte ptr [eax + eax], cl       
  0x00C28F3A  0000                    add      byte ptr [eax], al             
  0x00C28F3C  005820                  add      byte ptr [eax + 0x20], bl      
  0x00C28F3F  0000                    add      byte ptr [eax], al             
  0x00C28F41  d8440000                fadd     dword ptr [eax + eax]          
  0x00C28F45  7044                    jo       0xc28f8b                       
  0x00C28F47  002f                    add      byte ptr [edi], ch             
  0x00C28F49  06                      push     es                             
  0x00C28F4A  0000                    add      byte ptr [eax], al             
  0x00C28F4C  00d8                    add      al, bl                         
  0x00C28F4E  44                      inc      esp                            
  0x00C28F4F  0000                    add      byte ptr [eax], al             
  0x00C28F51  7044                    jo       0xc28f97                       
  0x00C28F53  0030                    add      byte ptr [eax], dh             
  0x00C28F55  06                      push     es                             
  0x00C28F56  0000                    add      byte ptr [eax], al             
  0x00C28F58  00d8                    add      al, bl                         
  0x00C28F5A  44                      inc      esp                            
  0x00C28F5B  0000                    add      byte ptr [eax], al             
  0x00C28F5D  7044                    jo       0xc28fa3                       
  0x00C28F5F  0031                    add      byte ptr [ecx], dh             
  0x00C28F61  06                      push     es                             
  0x00C28F62  0000                    add      byte ptr [eax], al             
  0x00C28F64  00d8                    add      al, bl                         
  0x00C28F66  57                      push     edi                            
  0x00C28F67  0090180c0027            add      byte ptr [eax + 0x27000c18], dl 
  0x00C28F6D  1000                    adc      byte ptr [eax], al             
  0x00C28F6F  0000                    add      byte ptr [eax], al             
  0x00C28F71  7050                    jo       0xc28fc3                       
  0x00C28F73  0032                    add      byte ptr [edx], dh             
  0x00C28F75  06                      push     es                             
  0x00C28F76  0000                    add      byte ptr [eax], al             
  0x00C28F78  90                      nop                                     
  0x00C28F79  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C28F7C  1910                    sbb      dword ptr [eax], edx           
  0x00C28F7E  0000                    add      byte ptr [eax], al             
  0x00C28F80  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C28F83  0033                    add      byte ptr [ebx], dh             
  0x00C28F85  06                      push     es                             
  0x00C28F86  0000                    add      byte ptr [eax], al             
  0x00C28F88  00d8                    add      al, bl                         
  0x00C28F8A  44                      inc      esp                            
                                        ; XREF: 0x00C28F45 (cond_jump)
  0x00C28F8B  0000                    add      byte ptr [eax], al             
  0x00C28F8D  7044                    jo       0xc28fd3                       
  0x00C28F8F  003406                  add      byte ptr [esi + eax], dh       
  0x00C28F92  0000                    add      byte ptr [eax], al             
  0x00C28F94  00d8                    add      al, bl                         
  0x00C28F96  44                      inc      esp                            
                                        ; XREF: 0x00C28F51 (cond_jump)
  0x00C28F97  0000                    add      byte ptr [eax], al             
  0x00C28F99  7044                    jo       0xc28fdf                       
  0x00C28F9B  003506000000            add      byte ptr [6], dh               
  0x00C28FA1  d8440000                fadd     dword ptr [eax + eax]          
  0x00C28FA5  7044                    jo       0xc28feb                       
  0x00C28FA7  0036                    add      byte ptr [esi], dh             
  0x00C28FA9  06                      push     es                             
  0x00C28FAA  0000                    add      byte ptr [eax], al             
  0x00C28FAC  00d8                    add      al, bl                         
  0x00C28FAE  57                      push     edi                            
  0x00C28FAF  0090180c0024            add      byte ptr [eax + 0x24000c18], dl 
  0x00C28FB5  2000                    and      byte ptr [eax], al             
  0x00C28FB7  0000                    add      byte ptr [eax], al             
  0x00C28FB9  7050                    jo       0xc2900b                       
  0x00C28FBB  0037                    add      byte ptr [edi], dh             
  0x00C28FBD  06                      push     es                             
  0x00C28FBE  0000                    add      byte ptr [eax], al             
  0x00C28FC0  00d8                    add      al, bl                         
  0x00C28FC2  44                      inc      esp                            
                                        ; XREF: 0x00C28F71 (cond_jump)
  0x00C28FC3  0000                    add      byte ptr [eax], al             
  0x00C28FC5  7044                    jo       0xc2900b                       
  0x00C28FC7  0038                    add      byte ptr [eax], bh             
  0x00C28FC9  06                      push     es                             
  0x00C28FCA  0000                    add      byte ptr [eax], al             
  0x00C28FCC  0c00                    or       al, 0                          
  0x00C28FCE  0000                    add      byte ptr [eax], al             
  0x00C28FD0  8d95c0000000            lea      edx, [ebp + 0xc0]              
  0x00C28FD6  0000                    add      byte ptr [eax], al             
  0x00C28FD8  e5d4                    in       eax, 0xd4                      
  0x00C28FDA  7e00                    jle      0xc28fdc                       
                                        ; XREF: 0x00C28FDA (cond_jump)
  0x00C28FDC  0000                    add      byte ptr [eax], al             
  0x00C28FDE  c00000                  rol      byte ptr [eax], 0              
  0x00C28FE1  0000                    add      byte ptr [eax], al             
  0x00C28FE3  004ae2                  add      byte ptr [edx - 0x1e], cl      
  0x00C28FE6  4f                      dec      edi                            
  0x00C28FE7  00cc                    add      ah, cl                         
  0x00C28FE9  673f                    aas                                     
                                        ; XREF: 0x00C28FA5 (cond_jump)
  0x00C28FEB  00cc                    add      ah, cl                         
  0x00C28FED  673f                    aas                                     
  0x00C28FEF  004ae2                  add      byte ptr [edx - 0x1e], cl      
  0x00C28FF2  4f                      dec      edi                            
  0x00C28FF3  00ff                    add      bh, bh                         
  0x00C28FF6  7f00                    jg       0xc28ff8                       
                                        ; XREF: 0x00C28FF6 (cond_jump)
  0x00C28FF8  e85b850038              call     0x38c31558                     
  0x00C28FFD  667500                  jne      0xc29000                       
                                        ; XREF: 0x00C28FFD (cond_jump)
  0x00C29000  386675                  cmp      byte ptr [esi + 0x75], ah      
  0x00C29003  00e8                    add      al, ch                         
  0x00C29005  5b                      pop      ebx                            
  0x00C29006  8500                    test     dword ptr [eax], eax           
  0x00C2900A  7f00                    jg       0xc2900c                       
                                        ; XREF: 0x00C2900A (cond_jump)
  0x00C2900C  92                      xchg     edx, eax                       
  0x00C2900D  1f                      pop      ds                             
  0x00C2900E  ea004b40e2004b          ljmp     0x4b00:0xe2404b00              
  0x00C29015  40                      inc      eax                            
  0x00C29016  e200                    loop     0xc29018                       
                                        ; XREF: 0x00C29016 (cond_jump)
  0x00C29018  92                      xchg     edx, eax                       
  0x00C29019  1f                      pop      ds                             
  0x00C2901A  ea00ffff7f001b          ljmp     0x1b00:0x7fffff00              
  0x00C29021  2b810085ac7d            sub      eax, dword ptr [ecx + 0x7dac8500] 
  0x00C29027  0094d57e006c2a          add      byte ptr [ebp + edx*8 + 0x2a6c007e], dl 
  0x00C2902E  810094d57e00            add      dword ptr [eax], 0x7ed594      
  0x00C29034  4a                      dec      edx                            
  0x00C29035  e24f                    loop     0xc29086                       
  0x00C29037  00cc                    add      ah, cl                         
  0x00C29039  673f                    aas                                     
  0x00C2903B  0026                    add      byte ptr [esi], ah             
  0x00C2903D  94                      xchg     esp, eax                       
  0x00C2903E  57                      push     edi                            
  0x00C2903F  007fff                  add      byte ptr [edi - 1], bh         
  0x00C29042  55                      push     ebp                            
  0x00C29043  0026                    add      byte ptr [esi], ah             
  0x00C29045  94                      xchg     esp, eax                       
  0x00C29046  57                      push     edi                            
  0x00C29047  004ae2                  add      byte ptr [edx - 0x1e], cl      
  0x00C2904A  4f                      dec      edi                            
  0x00C2904B  00cc                    add      ah, cl                         
  0x00C2904D  673f                    aas                                     
  0x00C2904F  0026                    add      byte ptr [esi], ah             
  0x00C29051  94                      xchg     esp, eax                       
  0x00C29052  57                      push     edi                            
  0x00C29053  007fff                  add      byte ptr [edi - 1], bh         
  0x00C29056  55                      push     ebp                            
  0x00C29057  0026                    add      byte ptr [esi], ah             
  0x00C29059  94                      xchg     esp, eax                       
  0x00C2905A  57                      push     edi                            
  0x00C2905B  0022                    add      byte ptr [edx], ah             
  0x00C2905D  3e82006d                add      byte ptr ds:[eax], 0x6d        
  0x00C29061  877b00                  xchg     dword ptr [ebx], edi           
  0x00C29064  6d                      insd     dword ptr es:[edi], dx         
  0x00C29065  877b00                  xchg     dword ptr [ebx], edi           
  0x00C29068  223e                    and      bh, byte ptr [esi]             
  0x00C2906A  8200ff                  add      byte ptr [eax], 0xff           
  0x00C2906E  7f00                    jg       0xc29070                       
                                        ; XREF: 0x00C2906E (cond_jump)
  0x00C29070  5e                      pop      esi                            
  0x00C29071  3bb2004ff727            cmp      esi, dword ptr [edx + 0x27f74f00] 
  0x00C29077  004ff7                  add      byte ptr [edi - 9], cl         
  0x00C2907A  27                      daa                                     
  0x00C2907B  005e3b                  add      byte ptr [esi + 0x3b], bl      
  0x00C2907E  b200                    mov      dl, 0                          
  0x00C29082  7f00                    jg       0xc29084                       
                                        ; XREF: 0x00C29082 (cond_jump)
  0x00C29084  7489                    je       0xc2900f                       
                                        ; XREF: 0x00C29035 (cond_jump)
  0x00C29086  c00000                  rol      byte ptr [eax], 0              
  0x00C29089  0000                    add      byte ptr [eax], al             
  0x00C2908B  0019                    add      byte ptr [ecx], bl             
  0x00C2908D  ed                      in       eax, dx                        
  0x00C2908E  7e00                    jle      0xc29090                       
                                        ; XREF: 0x00C2908E (cond_jump)
  0x00C29090  0000                    add      byte ptr [eax], al             
  0x00C29092  c00000                  rol      byte ptr [eax], 0              
  0x00C29095  0000                    add      byte ptr [eax], al             
  0x00C29097  00f8                    add      al, bh                         
  0x00C29099  2a4600                  sub      al, byte ptr [esi]             
  0x00C2909C  208637002086            and      byte ptr [esi - 0x79dfffc9], al 
  0x00C290A2  37                      aaa                                     
  0x00C290A3  00f8                    add      al, bh                         
  0x00C290A5  2a4600                  sub      al, byte ptr [esi]             
  0x00C290AA  7f00                    jg       0xc290ac                       
                                        ; XREF: 0x00C290AA (cond_jump)
  0x00C290AC  9e                      sahf                                    
  0x00C290AD  ef                      out      dx, eax                        
  0x00C290AE  8400                    test     byte ptr [eax], al             
  0x00C290B0  353a760035              xor      eax, 0x3500763a                
  0x00C290B5  3a7600                  cmp      dh, byte ptr [esi]             
  0x00C290B8  9e                      sahf                                    
  0x00C290B9  ef                      out      dx, eax                        
  0x00C290BA  8400                    test     byte ptr [eax], al             
  0x00C290BE  7f00                    jg       0xc290c0                       
                                        ; XREF: 0x00C290BE (cond_jump)
  0x00C290C0  fe48e6                  dec      byte ptr [eax - 0x1a]          
  0x00C290C3  008ab7e4008a            add      byte ptr [edx - 0x75ff1b49], cl 
  0x00C290C9  b7e4                    mov      bh, 0xe4                       
  0x00C290CB  00fe                    add      dh, bh                         
  0x00C290CD  48                      dec      eax                            
  0x00C290CE  e600                    out      0, al                          
  0x00C290D2  7f00                    jg       0xc290d4                       
                                        ; XREF: 0x00C290D2 (cond_jump)
  0x00C290D4  e712                    out      0x12, eax                      
  0x00C290D6  81007fdc7d00            add      dword ptr [eax], 0x7ddc7f      
  0x00C290DC  ac                      lodsb    al, byte ptr [esi]             
  0x00C290DD  ed                      in       eax, dx                        
  0x00C290DE  7e00                    jle      0xc290e0                       
                                        ; XREF: 0x00C290DE (cond_jump)
  0x00C290E0  54                      push     esp                            
  0x00C290E1  128100aced7e            adc      al, byte ptr [ecx + 0x7eedac00] 
  0x00C290E7  00f8                    add      al, bh                         
  0x00C290E9  2a4600                  sub      al, byte ptr [esi]             
  0x00C290EC  20863700f31d            and      byte ptr [esi + 0x1df30037], al 
  0x00C290F2  51                      push     ecx                            
  0x00C290F3  0090f54e00f3            add      byte ptr [eax - 0xcffb10b], dl 
  0x00C290F9  1d5100f82a              sbb      eax, 0x2af80051                
  0x00C290FE  46                      inc      esi                            
  0x00C290FF  0020                    add      byte ptr [eax], ah             
  0x00C29101  8637                    xchg     byte ptr [edi], dh             
  0x00C29103  00f3                    add      bl, dh                         
  0x00C29105  1d510090f5              sbb      eax, 0xf5900051                
  0x00C2910A  4e                      dec      esi                            
  0x00C2910B  00f3                    add      bl, dh                         
  0x00C2910D  1d51001a10              sbb      eax, 0x101a0051                
  0x00C29112  8200ed                  add      byte ptr [eax], 0xed           
  0x00C29115  e27b                    loop     0xc29192                       
  0x00C29117  00ed                    add      ch, ch                         
  0x00C29119  e27b                    loop     0xc29196                       
  0x00C2911B  001a                    add      byte ptr [edx], bl             
  0x00C2911D  108200ffff7f            adc      byte ptr [edx + 0x7fffff00], al 
  0x00C29123  00fc                    add      ah, bh                         
  0x00C29125  2eaf                    scasd    eax, dword ptr es:[edi]        
  0x00C29127  0000                    add      byte ptr [eax], al             
  0x00C29129  782c                    js       0xc29157                       
  0x00C2912B  0000                    add      byte ptr [eax], al             
  0x00C2912D  782c                    js       0xc2915b                       
  0x00C2912F  00fc                    add      ah, bh                         
  0x00C29131  2eaf                    scasd    eax, dword ptr es:[edi]        
  0x00C29133  00ff                    add      bh, bh                         
  0x00C29136  7f00                    jg       0xc29138                       
                                        ; XREF: 0x00C29136 (cond_jump)
  0x00C29138  13f4                    adc      esi, esp                       
  0x00C2913A  61                      popal                                   
  0x00C2913B  0039                    add      byte ptr [ecx], bh             
  0x00C2913D  06                      push     es                             
  0x00C2913E  0000                    add      byte ptr [eax], al             
  0x00C29140  90                      nop                                     
  0x00C29141  4e                      dec      esi                            
  0x00C29142  06                      push     es                             
  0x00C29143  0002                    add      byte ptr [edx], al             
  0x00C29145  0000                    add      byte ptr [eax], al             
  0x00C29147  0000                    add      byte ptr [eax], al             
  0x00C29149  59                      pop      ecx                            
  0x00C2914A  56                      push     esi                            
  0x00C2914B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2914E  0000                    add      byte ptr [eax], al             
  0x00C29150  00f4                    add      ah, dh                         
  0x00C29152  60                      pushal                                  
  0x00C29153  00f4                    add      ah, dh                         
  0x00C29155  0400                    add      al, 0                          
                                        ; XREF: 0x00C29129 (cond_jump)
  0x00C29157  0000                    add      byte ptr [eax], al             
  0x00C29159  f4                      hlt                                     
  0x00C2915A  61                      popal                                   
                                        ; XREF: 0x00C2912D (cond_jump)
  0x00C2915B  0000                    add      byte ptr [eax], al             
  0x00C2915D  0000                    add      byte ptr [eax], al             
  0x00C2915F  00905a060003            add      byte ptr [eax + 0x300065a], dl 
  0x00C29165  0000                    add      byte ptr [eax], al             
  0x00C29167  0084d807000059          add      byte ptr [eax + ebx*8 + 0x59000007], al 
  0x00C2916E  4c                      dec      esp                            
  0x00C2916F  0000                    add      byte ptr [eax], al             
  0x00C29172  56                      push     esi                            
  0x00C29173  0037                    add      byte ptr [edi], dh             
  0x00C29175  06                      push     es                             
  0x00C29176  0000                    add      byte ptr [eax], al             
  0x00C29178  0000                    add      byte ptr [eax], al             
  0x00C2917A  2400                    and      al, 0                          
  0x00C2917C  00f4                    add      ah, dh                         
  0x00C2917E  60                      pushal                                  
  0x00C2917F  002d00000045            add      byte ptr [0x45000000], ch      
  0x00C29185  f4                      hlt                                     
  0x00C29186  61                      popal                                   
  0x00C29187  004100                  add      byte ptr [ecx], al             
  0x00C2918A  0000                    add      byte ptr [eax], al             
  0x00C2918C  05a4050000              add      eax, 0x5a4                     
  0x00C29191  f4                      hlt                                     
                                        ; XREF: 0x00C29115 (cond_jump)
  0x00C29192  60                      pushal                                  
  0x00C29193  0000                    add      byte ptr [eax], al             
  0x00C29195  0000                    add      byte ptr [eax], al             
  0x00C29197  0000                    add      byte ptr [eax], al             
  0x00C29199  f4                      hlt                                     
  0x00C2919A  61                      popal                                   
  0x00C2919B  001400                  add      byte ptr [eax + eax], dl       
  0x00C2919E  0000                    add      byte ptr [eax], al             
  0x00C291A0  007060                  add      byte ptr [eax + 0x60], dh      
  0x00C291A3  008706000000            add      byte ptr [edi + 6], al         
  0x00C291A9  7061                    jo       0xc2920c                       
  0x00C291AB  00880600000c            add      byte ptr [eax + 0xc000006], cl 
  0x00C291B1  0000                    add      byte ptr [eax], al             
  0x00C291B3  0000                    add      byte ptr [eax], al             
  0x00C291B5  f4                      hlt                                     
  0x00C291B6  56                      push     esi                            
  0x00C291B7  000e                    add      byte ptr [esi], cl             
  0x00C291B9  0000                    add      byte ptr [eax], al             
  0x00C291BB  0000                    add      byte ptr [eax], al             
  0x00C291BD  f4                      hlt                                     
  0x00C291BE  57                      push     edi                            
  0x00C291BF  0000                    add      byte ptr [eax], al             
  0x00C291C1  0000                    add      byte ptr [eax], al             
  0x00C291C3  0000                    add      byte ptr [eax], al             
  0x00C291C5  4e                      dec      esi                            
  0x00C291C6  3800                    cmp      byte ptr [eax], al             
  0x00C291C8  80f00b                  xor      al, 0xb                        
  0x00C291CB  00800100000c            add      byte ptr [eax + 0xc000001], al 
  0x00C291D1  0000                    add      byte ptr [eax], al             
  0x00C291D3  0000                    add      byte ptr [eax], al             
  0x00C291D5  f4                      hlt                                     
  0x00C291D6  56                      push     esi                            
  0x00C291D7  000e                    add      byte ptr [esi], cl             
  0x00C291D9  0000                    add      byte ptr [eax], al             
  0x00C291DB  0000                    add      byte ptr [eax], al             
  0x00C291DD  f4                      hlt                                     
  0x00C291DE  57                      push     edi                            
  0x00C291DF  0001                    add      byte ptr [ecx], al             
  0x00C291E1  0000                    add      byte ptr [eax], al             
  0x00C291E3  0000                    add      byte ptr [eax], al             
  0x00C291E5  f4                      hlt                                     
  0x00C291E6  60                      pushal                                  
  0x00C291E7  0039                    add      byte ptr [ecx], bh             
  0x00C291E9  06                      push     es                             
  0x00C291EA  0000                    add      byte ptr [eax], al             
  0x00C291EC  004e38                  add      byte ptr [esi + 0x38], cl      
  0x00C291EF  0000                    add      byte ptr [eax], al             
  0x00C291F1  0039                    add      byte ptr [ecx], bh             
  0x00C291F3  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C291F9  0100                    add      dword ptr [eax], eax           
  0x00C291FB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C291FE  0000                    add      byte ptr [eax], al             
  0x00C29200  00f4                    add      ah, dh                         
  0x00C29202  56                      push     esi                            
  0x00C29203  000e                    add      byte ptr [esi], cl             
  0x00C29205  0000                    add      byte ptr [eax], al             
  0x00C29207  0000                    add      byte ptr [eax], al             
  0x00C29209  f4                      hlt                                     
  0x00C2920A  57                      push     edi                            
  0x00C2920B  0002                    add      byte ptr [edx], al             
  0x00C2920D  0000                    add      byte ptr [eax], al             
  0x00C2920F  0000                    add      byte ptr [eax], al             
  0x00C29211  f4                      hlt                                     
  0x00C29212  60                      pushal                                  
  0x00C29213  0039                    add      byte ptr [ecx], bh             
  0x00C29215  06                      push     es                             
  0x00C29216  0000                    add      byte ptr [eax], al             
  0x00C29218  004e38                  add      byte ptr [esi + 0x38], cl      
  0x00C2921B  0000                    add      byte ptr [eax], al             
  0x00C2921D  0039                    add      byte ptr [ecx], bh             
  0x00C2921F  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C29225  0100                    add      dword ptr [eax], eax           
  0x00C29227  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2922A  0000                    add      byte ptr [eax], al             
  0x00C2922C  00f4                    add      ah, dh                         
  0x00C2922E  7100                    jno      0xc29230                       
  0x00C29232  ff00                    inc      dword ptr [eax]                
  0x00C29234  00f4                    add      ah, dh                         
  0x00C29236  7500                    jne      0xc29238                       
                                        ; XREF: 0x00C29236 (cond_jump)
  0x00C29238  fc                      cld                                     
  0x00C2923A  ff00                    inc      dword ptr [eax]                
  0x00C2923C  0096220010da            add      byte ptr [esi - 0x25efffde], dl 
  0x00C29242  06                      push     es                             
  0x00C29243  0021                    add      byte ptr [ecx], ah             
  0x00C29245  0000                    add      byte ptr [eax], al             
  0x00C29247  0000                    add      byte ptr [eax], al             
  0x00C29249  da5700                  ficom    dword ptr [edi]                
  0x00C2924C  00d2                    add      dl, dl                         
  0x00C2924E  51                      push     ecx                            
  0x00C2924F  0000                    add      byte ptr [eax], al             
  0x00C29251  b9f00010de              mov      ecx, 0xde1000f0                
  0x00C29256  06                      push     es                             
  0x00C29257  000b                    add      byte ptr [ebx], cl             
  0x00C29259  0000                    add      byte ptr [eax], al             
  0x00C2925B  00d4                    add      ah, dl                         
  0x00C2925D  e145                    loope    0xc292a4                       
  0x00C2925F  00d6                    add      dh, dl                         
  0x00C29261  39f0                    cmp      eax, esi                       
  0x00C29263  00e6                    add      dh, ah                         
  0x00C29265  a8f0                    test     al, 0xf0                       
  0x00C29267  00d2                    add      dl, dl                         
  0x00C29269  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C2926E  44                      inc      esp                            
  0x00C2926F  00e2                    add      dl, ah                         
  0x00C29271  a1d000d249              mov      eax, dword ptr [0x49d200d0]    
  0x00C29276  45                      inc      ebp                            
  0x00C29277  0010                    add      byte ptr [eax], dl             
  0x00C29279  0020                    add      byte ptr [eax], ah             
  0x00C2927B  0009                    add      byte ptr [ecx], cl             
  0x00C2927D  dd10                    fst      qword ptr [eax]                
  0x00C2927F  004c4c44                add      byte ptr [esp + ecx*2 + 0x44], cl 
  0x00C29283  00d4                    add      ah, dl                         
  0x00C29285  e145                    loope    0xc292cc                       
  0x00C29287  00d6                    add      dh, dl                         
  0x00C29289  39f0                    cmp      eax, esi                       
  0x00C2928B  00e6                    add      dh, ah                         
  0x00C2928D  a8f0                    test     al, 0xf0                       
  0x00C2928F  00d2                    add      dl, dl                         
  0x00C29291  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C29296  44                      inc      esp                            
  0x00C29297  00e2                    add      dl, ah                         
  0x00C29299  a1f000d259              mov      eax, dword ptr [0x59d200f0]    
  0x00C2929E  45                      inc      ebp                            
  0x00C2929F  0010                    add      byte ptr [eax], dl             
  0x00C292A1  0020                    add      byte ptr [eax], ah             
  0x00C292A3  0009                    add      byte ptr [ecx], cl             
  0x00C292A5  c421                    les      esp, ptr [ecx]                 
  0x00C292A7  004c4c44                add      byte ptr [esp + ecx*2 + 0x44], cl 
  0x00C292AB  0084f10300005a          add      byte ptr [ecx + esi*8 + 0x5a000003], al 
  0x00C292B2  55                      push     ebp                            
  0x00C292B3  0000                    add      byte ptr [eax], al             
  0x00C292B5  5a                      pop      edx                            
  0x00C292B6  51                      push     ecx                            
  0x00C292B7  0000                    add      byte ptr [eax], al             
  0x00C292B9  d422                    aam      0x22                           
  0x00C292BB  0000                    add      byte ptr [eax], al             
  0x00C292BD  90                      nop                                     
  0x00C292BE  2200                    and      al, byte ptr [eax]             
  0x00C292C0  00982300a460            add      byte ptr [eax + 0x60a40023], bl 
  0x00C292C6  0400                    add      al, 0                          
  0x00C292C8  0c00                    or       al, 0                          
  0x00C292CA  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29285 (cond_jump)
  0x00C292CC  0000                    add      byte ptr [eax], al             
  0x00C292CE  0000                    add      byte ptr [eax], al             
  0x00C292D0  40                      inc      eax                            
  0x00C292D1  1bd0                    sbb      edx, eax                       
  0x00C292D3  00440800                add      byte ptr [eax + ecx], al       
  0x00C292D7  005001                  add      byte ptr [eax + 1], dl         
  0x00C292DA  0200                    add      al, byte ptr [eax]             
  0x00C292DC  09e8                    or       eax, ebp                       
  0x00C292DE  7200                    jb       0xc292e0                       
                                        ; XREF: 0x00C292DE (cond_jump)
  0x00C292E0  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C292E3  005f09                  add      byte ptr [edi + 9], bl         
  0x00C292E6  0000                    add      byte ptr [eax], al             
  0x00C292E8  007060                  add      byte ptr [eax + 0x60], dh      
  0x00C292EB  006209                  add      byte ptr [edx + 9], ah         
  0x00C292EE  0000                    add      byte ptr [eax], al             
  0x00C292F0  0b00                    or       eax, dword ptr [eax]           
  0x00C292F2  2000                    and      byte ptr [eax], al             
  0x00C292F4  07                      pop      es                             
  0x00C292F5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C292F6  0500df0805              add      eax, 0x508df00                 
  0x00C292FB  0080100d00ba            add      byte ptr [eax - 0x45fff2f0], al 
  0x00C29301  07                      pop      es                             
  0x00C29302  0000                    add      byte ptr [eax], al             
  0x00C29304  80100d                  adc      byte ptr [eax], 0xd            
  0x00C29307  00ed                    add      ch, ch                         
  0x00C29309  07                      pop      es                             
  0x00C2930A  0000                    add      byte ptr [eax], al             
  0x00C2930C  050c050080              add      eax, 0x8000050c                
  0x00C29311  100d00c00700            adc      byte ptr [0x7c000], cl         
  0x00C29317  0080100d00da            add      byte ptr [eax - 0x25fff2f0], al 
  0x00C2931D  07                      pop      es                             
  0x00C2931E  0000                    add      byte ptr [eax], al             
  0x00C29321  08050000f062            or       byte ptr [0x62f00000], al      
  0x00C29327  006209                  add      byte ptr [edx + 9], ah         
  0x00C2932A  0000                    add      byte ptr [eax], al             
  0x00C2932C  00f4                    add      ah, dh                         
  0x00C2932E  60                      pushal                                  
  0x00C2932F  00c2                    add      dl, al                         
  0x00C29331  0f0000                  sldt     word ptr [eax]                 
  0x00C29334  d8720a                  fdiv     dword ptr [edx + 0xa]          
  0x00C29337  000500000000            add      byte ptr [0], al               
  0x00C2933D  002400                  add      byte ptr [eax + eax], ah       
  0x00C29340  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C29343  006009                  add      byte ptr [eax + 9], ah         
  0x00C29346  0000                    add      byte ptr [eax], al             
  0x00C29348  00e8                    add      al, ch                         
  0x00C2934A  5e                      pop      esi                            
  0x00C2934B  009f1a02000b            add      byte ptr [edi + 0xb00021a], bl 
  0x00C29351  0020                    add      byte ptr [eax], ah             
  0x00C29353  0002                    add      byte ptr [edx], al             
  0x00C29355  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C29356  0500804101              add      eax, 0x1418000                 
  0x00C2935B  0000                    add      byte ptr [eax], al             
  0x00C2935D  7054                    jo       0xc293b3                       
  0x00C2935F  006109                  add      byte ptr [ecx + 9], ah         
  0x00C29362  0000                    add      byte ptr [eax], al             
  0x00C29364  00f0                    add      al, dh                         
  0x00C29366  44                      inc      esp                            
  0x00C29367  006009                  add      byte ptr [eax + 9], ah         
  0x00C2936A  0000                    add      byte ptr [eax], al             
  0x00C2936C  52                      push     edx                            
  0x00C2936D  090500110805            or       dword ptr [0x5081100], eax     
  0x00C29373  0000                    add      byte ptr [eax], al             
  0x00C29376  44                      inc      esp                            
  0x00C29377  006009                  add      byte ptr [eax + 9], ah         
  0x00C2937A  0000                    add      byte ptr [eax], al             
  0x00C2937C  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2937F  00e4                    add      ah, ah                         
  0x00C29381  07                      pop      es                             
  0x00C29382  0000                    add      byte ptr [eax], al             
  0x00C29384  00f0                    add      al, dh                         
  0x00C29386  56                      push     esi                            
  0x00C29387  006009                  add      byte ptr [eax + 9], ah         
  0x00C2938A  0000                    add      byte ptr [eax], al             
  0x00C2938C  80410100                add      byte ptr [ecx + 1], 0          
  0x00C29390  00f0                    add      al, dh                         
  0x00C29392  44                      inc      esp                            
  0x00C29393  006109                  add      byte ptr [ecx + 9], ah         
  0x00C29396  0000                    add      byte ptr [eax], al             
  0x00C29398  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2939B  006009                  add      byte ptr [eax + 9], ah         
  0x00C2939E  0000                    add      byte ptr [eax], al             
  0x00C293A0  45                      inc      ebp                            
  0x00C293A1  0020                    add      byte ptr [eax], ah             
  0x00C293A3  00d0                    add      al, dl                         
  0x00C293A5  97                      xchg     edi, eax                       
  0x00C293A6  050080100d              add      eax, 0xd108000                 
  0x00C293AB  00a80700000c            add      byte ptr [eax + 0xc000007], ch 
  0x00C293B1  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2935D (cond_jump)
  0x00C293B3  0000                    add      byte ptr [eax], al             
  0x00C293B6  56                      push     esi                            
  0x00C293B7  006009                  add      byte ptr [eax + 9], ah         
  0x00C293BA  0000                    add      byte ptr [eax], al             
  0x00C293BC  00f0                    add      al, dh                         
  0x00C293BE  44                      inc      esp                            
  0x00C293BF  005f09                  add      byte ptr [edi + 9], bl         
  0x00C293C2  0000                    add      byte ptr [eax], al             
  0x00C293C4  40                      inc      eax                            
  0x00C293C5  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C293C8  208000000070            and      byte ptr [eax + 0x70000000], al 
  0x00C293CE  54                      push     esp                            
  0x00C293CF  003d09000000            add      byte ptr [9], bh               
  0x00C293D6  56                      push     esi                            
  0x00C293D7  006009                  add      byte ptr [eax + 9], ah         
  0x00C293DA  0000                    add      byte ptr [eax], al             
  0x00C293DC  0300                    add      eax, dword ptr [eax]           
  0x00C293DE  2000                    and      byte ptr [eax], al             
  0x00C293E0  5a                      pop      edx                            
  0x00C293E1  2405                    and      al, 5                          
  0x00C293E3  0000                    add      byte ptr [eax], al             
  0x00C293E6  6200                    bound    eax, qword ptr [eax]           
  0x00C293E8  6209                    bound    ecx, qword ptr [ecx]           
  0x00C293EA  0000                    add      byte ptr [eax], al             
  0x00C293EC  00f4                    add      ah, dh                         
  0x00C293EE  60                      pushal                                  
  0x00C293EF  004d09                  add      byte ptr [ebp + 9], cl         
  0x00C293F2  0000                    add      byte ptr [eax], al             
  0x00C293F4  00f4                    add      ah, dh                         
  0x00C293F6  44                      inc      esp                            
  0x00C293F7  008000000090            add      byte ptr [eax - 0x70000000], al 
  0x00C293FD  06                      push     es                             
  0x00C293FE  06                      push     es                             
  0x00C293FF  0002                    add      byte ptr [edx], al             
  0x00C29401  0000                    add      byte ptr [eax], al             
  0x00C29403  0000                    add      byte ptr [eax], al             
  0x00C29405  58                      pop      eax                            
  0x00C29406  44                      inc      esp                            
  0x00C29407  00de                    add      dh, bl                         
  0x00C29409  1202                    adc      al, byte ptr [edx]             
  0x00C2940B  00941a02004019          add      byte ptr [edx + ebx + 0x19400002], dl 
  0x00C29412  0c00                    or       al, 0                          
  0x00C29414  1b10                    sbb      edx, dword ptr [eax]           
  0x00C29416  0000                    add      byte ptr [eax], al             
  0x00C29418  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2941B  0030                    add      byte ptr [eax], dh             
  0x00C2941D  0900                    or       dword ptr [eax], eax           
  0x00C2941F  0013                    add      byte ptr [ebx], dl             
  0x00C29421  f4                      hlt                                     
  0x00C29422  44                      inc      esp                            
  0x00C29423  0012                    add      byte ptr [edx], dl             
  0x00C29425  0000                    add      byte ptr [eax], al             
  0x00C29427  004019                  add      byte ptr [eax + 0x19], al      
  0x00C2942A  0c00                    or       al, 0                          
  0x00C2942C  215000                  and      dword ptr [eax], edx           
  0x00C2942F  0000                    add      byte ptr [eax], al             
  0x00C29431  7054                    jo       0xc29487                       
  0x00C29433  003409                  add      byte ptr [ecx + ecx], dh       
  0x00C29436  0000                    add      byte ptr [eax], al             
  0x00C29438  9e                      sahf                                    
  0x00C29439  2202                    and      al, byte ptr [edx]             
  0x00C2943B  00d4                    add      ah, dl                         
  0x00C2943D  2a02                    sub      al, byte ptr [edx]             
  0x00C2943F  004019                  add      byte ptr [eax + 0x19], al      
  0x00C29442  0c00                    or       al, 0                          
  0x00C29444  2110                    and      dword ptr [eax], edx           
  0x00C29446  0000                    add      byte ptr [eax], al             
  0x00C29448  94                      xchg     esp, eax                       
  0x00C29449  2a02                    sub      al, byte ptr [edx]             
  0x00C2944B  004019                  add      byte ptr [eax + 0x19], al      
  0x00C2944E  0c00                    or       al, 0                          
  0x00C29450  2210                    and      dl, byte ptr [eax]             
  0x00C29452  0000                    add      byte ptr [eax], al             
  0x00C29454  d422                    aam      0x22                           
  0x00C29456  0200                    add      al, byte ptr [eax]             
  0x00C29458  40                      inc      eax                            
  0x00C29459  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C2945C  2310                    and      edx, dword ptr [eax]           
  0x00C2945E  0000                    add      byte ptr [eax], al             
  0x00C29460  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C29463  003509000013            add      byte ptr [0x13000009], dh      
  0x00C29469  0020                    add      byte ptr [eax], ah             
  0x00C2946B  00944a02004019          add      byte ptr [edx + ecx*2 + 0x19400002], dl 
  0x00C29472  0c00                    or       al, 0                          
  0x00C29474  1a20                    sbb      ah, byte ptr [eax]             
  0x00C29476  0000                    add      byte ptr [eax], al             
  0x00C29478  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2947B  004109                  add      byte ptr [ecx + 9], al         
  0x00C2947E  0000                    add      byte ptr [eax], al             
  0x00C29480  d41a                    aam      0x1a                           
  0x00C29482  0200                    add      al, byte ptr [eax]             
  0x00C29484  007044                  add      byte ptr [eax + 0x44], dh      
                                        ; XREF: 0x00C29431 (cond_jump)
  0x00C29487  004209                  add      byte ptr [edx + 9], al         
  0x00C2948A  0000                    add      byte ptr [eax], al             
  0x00C2948C  1300                    adc      eax, dword ptr [eax]           
  0x00C2948E  2000                    and      byte ptr [eax], al             
  0x00C29490  94                      xchg     esp, eax                       
  0x00C29491  3a02                    cmp      al, byte ptr [edx]             
  0x00C29493  004019                  add      byte ptr [eax + 0x19], al      
  0x00C29496  0c00                    or       al, 0                          
  0x00C29498  1810                    sbb      byte ptr [eax], dl             
  0x00C2949A  0000                    add      byte ptr [eax], al             
  0x00C2949C  94                      xchg     esp, eax                       
  0x00C2949D  3202                    xor      al, byte ptr [edx]             
  0x00C2949F  004019                  add      byte ptr [eax + 0x19], al      
  0x00C294A2  0c00                    or       al, 0                          
  0x00C294A4  1910                    sbb      dword ptr [eax], edx           
  0x00C294A6  0000                    add      byte ptr [eax], al             
  0x00C294A8  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C294AB  003e                    add      byte ptr [esi], bh             
  0x00C294AD  0900                    or       dword ptr [eax], eax           
  0x00C294AF  00d4                    add      ah, dl                         
  0x00C294B1  3a02                    cmp      al, byte ptr [edx]             
  0x00C294B3  0000                    add      byte ptr [eax], al             
  0x00C294B5  7044                    jo       0xc294fb                       
  0x00C294B7  004009                  add      byte ptr [eax + 9], al         
  0x00C294BA  0000                    add      byte ptr [eax], al             
  0x00C294BC  d432                    aam      0x32                           
  0x00C294BE  0200                    add      al, byte ptr [eax]             
  0x00C294C0  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C294C3  003f                    add      byte ptr [edi], bh             
  0x00C294C5  0900                    or       dword ptr [eax], eax           
  0x00C294C7  0013                    add      byte ptr [ebx], dl             
  0x00C294C9  f4                      hlt                                     
  0x00C294CA  60                      pushal                                  
  0x00C294CB  002c09                  add      byte ptr [ecx + ecx], ch       
  0x00C294CE  0000                    add      byte ptr [eax], al             
  0x00C294D0  00f4                    add      ah, dh                         
  0x00C294D2  57                      push     edi                            
  0x00C294D3  0010                    add      byte ptr [eax], dl             
  0x00C294D5  0000                    add      byte ptr [eax], al             
  0x00C294D7  0080100d00a9            add      byte ptr [eax - 0x56fff2f0], al 
  0x00C294DD  0200                    add      al, byte ptr [eax]             
  0x00C294DF  0000                    add      byte ptr [eax], al             
  0x00C294E1  f4                      hlt                                     
  0x00C294E2  44                      inc      esp                            
  0x00C294E3  0000                    add      byte ptr [eax], al             
  0x00C294E5  0000                    add      byte ptr [eax], al             
  0x00C294E7  004500                  add      byte ptr [ebp], al             
  0x00C294EA  2000                    and      byte ptr [eax], al             
  0x00C294EC  00740500                add      byte ptr [ebp + eax], dh       
  0x00C294F0  0c00                    or       al, 0                          
  0x00C294F2  0000                    add      byte ptr [eax], al             
  0x00C294F4  1b00                    sbb      eax, dword ptr [eax]           
  0x00C294F6  3000                    xor      byte ptr [eax], al             
  0x00C294F8  80100d                  adc      byte ptr [eax], 0xd            
                                        ; XREF: 0x00C294B5 (cond_jump)
  0x00C294FB  00a10200000c            add      byte ptr [ecx + 0xc000002], ah 
  0x00C29501  0000                    add      byte ptr [eax], al             
  0x00C29503  0000                    add      byte ptr [eax], al             
  0x00C29505  f4                      hlt                                     
  0x00C29506  44                      inc      esp                            
  0x00C29507  001500000000            add      byte ptr [0], dl               
  0x00C2950D  7044                    jo       0xc29553                       
  0x00C2950F  002c09                  add      byte ptr [ecx + ecx], ch       
  0x00C29512  0000                    add      byte ptr [eax], al             
  0x00C29514  00f4                    add      ah, dh                         
  0x00C29516  44                      inc      esp                            
  0x00C29517  004d09                  add      byte ptr [ebp + 9], cl         
  0x00C2951A  0000                    add      byte ptr [eax], al             
  0x00C2951C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2951F  002d09000000            add      byte ptr [9], ch               
  0x00C29525  f4                      hlt                                     
  0x00C29526  44                      inc      esp                            
  0x00C29527  005909                  add      byte ptr [ecx + 9], bl         
  0x00C2952A  0000                    add      byte ptr [eax], al             
  0x00C2952C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2952F  002e                    add      byte ptr [esi], ch             
  0x00C29531  0900                    or       dword ptr [eax], eax           
  0x00C29533  0000                    add      byte ptr [eax], al             
  0x00C29535  f4                      hlt                                     
  0x00C29536  44                      inc      esp                            
  0x00C29537  005309                  add      byte ptr [ebx + 9], dl         
  0x00C2953A  0000                    add      byte ptr [eax], al             
  0x00C2953C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2953F  002f                    add      byte ptr [edi], ch             
  0x00C29541  0900                    or       dword ptr [eax], eax           
  0x00C29543  0000                    add      byte ptr [eax], al             
  0x00C29545  f4                      hlt                                     
  0x00C29546  44                      inc      esp                            
  0x00C29547  00ff                    add      bh, bh                         
  0x00C29549  ff00                    inc      dword ptr [eax]                
  0x00C2954B  0000                    add      byte ptr [eax], al             
  0x00C2954D  7044                    jo       0xc29593                       
  0x00C2954F  0033                    add      byte ptr [ebx], dh             
  0x00C29551  0900                    or       dword ptr [eax], eax           
                                        ; XREF: 0x00C2950D (cond_jump)
  0x00C29553  0000                    add      byte ptr [eax], al             
  0x00C29555  f4                      hlt                                     
  0x00C29556  44                      inc      esp                            
  0x00C29557  004109                  add      byte ptr [ecx + 9], al         
  0x00C2955A  0000                    add      byte ptr [eax], al             
  0x00C2955C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2955F  0036                    add      byte ptr [esi], dh             
  0x00C29561  0900                    or       dword ptr [eax], eax           
  0x00C29563  0000                    add      byte ptr [eax], al             
  0x00C29565  002400                  add      byte ptr [eax + eax], ah       
  0x00C29568  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2956B  0031                    add      byte ptr [ecx], dh             
  0x00C2956D  0900                    or       dword ptr [eax], eax           
  0x00C2956F  0000                    add      byte ptr [eax], al             
  0x00C29571  7044                    jo       0xc295b7                       
  0x00C29573  0032                    add      byte ptr [edx], dh             
  0x00C29575  0900                    or       dword ptr [eax], eax           
  0x00C29577  0000                    add      byte ptr [eax], al             
  0x00C29579  7044                    jo       0xc295bf                       
  0x00C2957B  0037                    add      byte ptr [edi], dh             
  0x00C2957D  0900                    or       dword ptr [eax], eax           
  0x00C2957F  0000                    add      byte ptr [eax], al             
  0x00C29581  7044                    jo       0xc295c7                       
  0x00C29583  0038                    add      byte ptr [eax], bh             
  0x00C29585  0900                    or       dword ptr [eax], eax           
  0x00C29587  0000                    add      byte ptr [eax], al             
  0x00C29589  7044                    jo       0xc295cf                       
  0x00C2958B  0039                    add      byte ptr [ecx], bh             
  0x00C2958D  0900                    or       dword ptr [eax], eax           
  0x00C2958F  0000                    add      byte ptr [eax], al             
  0x00C29591  7044                    jo       0xc295d7                       
                                        ; XREF: 0x00C2954D (cond_jump)
  0x00C29593  003a                    add      byte ptr [edx], bh             
  0x00C29595  0900                    or       dword ptr [eax], eax           
  0x00C29597  0000                    add      byte ptr [eax], al             
  0x00C29599  7044                    jo       0xc295df                       
  0x00C2959B  003b                    add      byte ptr [ebx], bh             
  0x00C2959D  0900                    or       dword ptr [eax], eax           
  0x00C2959F  0000                    add      byte ptr [eax], al             
  0x00C295A1  7044                    jo       0xc295e7                       
  0x00C295A3  003c09                  add      byte ptr [ecx + ecx], bh       
  0x00C295A6  0000                    add      byte ptr [eax], al             
  0x00C295A8  00f4                    add      ah, dh                         
  0x00C295AA  60                      pushal                                  
  0x00C295AB  004709                  add      byte ptr [edi + 9], al         
  0x00C295AE  0000                    add      byte ptr [eax], al             
  0x00C295B0  00f4                    add      ah, dh                         
  0x00C295B2  44                      inc      esp                            
  0x00C295B3  0000                    add      byte ptr [eax], al             
  0x00C295B5  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29571 (cond_jump)
  0x00C295B7  0000                    add      byte ptr [eax], al             
  0x00C295B9  58                      pop      eax                            
  0x00C295BA  44                      inc      esp                            
  0x00C295BB  0000                    add      byte ptr [eax], al             
  0x00C295BD  f4                      hlt                                     
  0x00C295BE  44                      inc      esp                            
                                        ; XREF: 0x00C29579 (cond_jump)
  0x00C295BF  0002                    add      byte ptr [edx], al             
  0x00C295C1  0000                    add      byte ptr [eax], al             
  0x00C295C3  0000                    add      byte ptr [eax], al             
  0x00C295C5  58                      pop      eax                            
  0x00C295C6  44                      inc      esp                            
                                        ; XREF: 0x00C29581 (cond_jump)
  0x00C295C7  0000                    add      byte ptr [eax], al             
  0x00C295C9  f4                      hlt                                     
  0x00C295CA  44                      inc      esp                            
  0x00C295CB  0003                    add      byte ptr [ebx], al             
  0x00C295CD  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29589 (cond_jump)
  0x00C295CF  0000                    add      byte ptr [eax], al             
  0x00C295D1  58                      pop      eax                            
  0x00C295D2  44                      inc      esp                            
  0x00C295D3  0000                    add      byte ptr [eax], al             
  0x00C295D5  f4                      hlt                                     
  0x00C295D6  44                      inc      esp                            
                                        ; XREF: 0x00C29591 (cond_jump)
  0x00C295D7  000400                  add      byte ptr [eax + eax], al       
  0x00C295DA  0000                    add      byte ptr [eax], al             
  0x00C295DC  005844                  add      byte ptr [eax + 0x44], bl      
                                        ; XREF: 0x00C29599 (cond_jump)
  0x00C295DF  0000                    add      byte ptr [eax], al             
  0x00C295E1  f4                      hlt                                     
  0x00C295E2  44                      inc      esp                            
  0x00C295E3  0001                    add      byte ptr [ecx], al             
  0x00C295E5  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C295A1 (cond_jump)
  0x00C295E7  0000                    add      byte ptr [eax], al             
  0x00C295E9  58                      pop      eax                            
  0x00C295EA  44                      inc      esp                            
  0x00C295EB  0000                    add      byte ptr [eax], al             
  0x00C295ED  f4                      hlt                                     
  0x00C295EE  44                      inc      esp                            
  0x00C295EF  000500000000            add      byte ptr [0], al               
  0x00C295F5  58                      pop      eax                            
  0x00C295F6  44                      inc      esp                            
  0x00C295F7  0000                    add      byte ptr [eax], al             
  0x00C295F9  f4                      hlt                                     
  0x00C295FA  60                      pushal                                  
  0x00C295FB  005909                  add      byte ptr [ecx + 9], bl         
  0x00C295FE  0000                    add      byte ptr [eax], al             
  0x00C29600  00f4                    add      ah, dh                         
  0x00C29602  44                      inc      esp                            
  0x00C29603  0001                    add      byte ptr [ecx], al             
  0x00C29605  0000                    add      byte ptr [eax], al             
  0x00C29607  009006060002            add      byte ptr [eax + 0x2000606], dl 
  0x00C2960D  0000                    add      byte ptr [eax], al             
  0x00C2960F  0000                    add      byte ptr [eax], al             
  0x00C29611  58                      pop      eax                            
  0x00C29612  44                      inc      esp                            
  0x00C29613  0000                    add      byte ptr [eax], al             
  0x00C29615  f4                      hlt                                     
  0x00C29616  60                      pushal                                  
  0x00C29617  005309                  add      byte ptr [ebx + 9], dl         
  0x00C2961A  0000                    add      byte ptr [eax], al             
  0x00C2961C  00f4                    add      ah, dh                         
  0x00C2961E  44                      inc      esp                            
  0x00C2961F  00ff                    add      bh, bh                         
  0x00C29621  ff00                    inc      dword ptr [eax]                
  0x00C29623  009006060002            add      byte ptr [eax + 0x2000606], dl 
  0x00C29629  0000                    add      byte ptr [eax], al             
  0x00C2962B  0000                    add      byte ptr [eax], al             
  0x00C2962D  58                      pop      eax                            
  0x00C2962E  44                      inc      esp                            
  0x00C2962F  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29632  0000                    add      byte ptr [eax], al             
  0x00C29634  00f0                    add      al, dh                         
  0x00C29636  6200                    bound    eax, qword ptr [eax]           
  0x00C29638  6209                    bound    ecx, qword ptr [ecx]           
  0x00C2963A  0000                    add      byte ptr [eax], al             
  0x00C2963C  00f4                    add      ah, dh                         
  0x00C2963E  45                      inc      ebp                            
  0x00C2963F  0003                    add      byte ptr [ebx], al             
  0x00C29641  0000                    add      byte ptr [eax], al             
  0x00C29643  00d6                    add      dh, dl                         
  0x00C29645  1202                    adc      al, byte ptr [edx]             
  0x00C29647  00e0                    add      al, ah                         
  0x00C29649  0020                    add      byte ptr [eax], ah             
  0x00C2964B  0000                    add      byte ptr [eax], al             
  0x00C2964D  f4                      hlt                                     
  0x00C2964E  6200                    bound    eax, qword ptr [eax]           
  0x00C29650  92                      xchg     edx, eax                       
  0x00C29651  0f0000                  sldt     word ptr [eax]                 
  0x00C29654  000e                    add      byte ptr [esi], cl             
  0x00C29656  2100                    and      dword ptr [eax], eax           
  0x00C29658  40                      inc      eax                            
  0x00C29659  0020                    add      byte ptr [eax], ah             
  0x00C2965B  0000                    add      byte ptr [eax], al             
  0x00C2965D  f4                      hlt                                     
  0x00C2965E  60                      pushal                                  
  0x00C2965F  008000000000            add      byte ptr [eax], al             
  0x00C29665  9a210000f47000          lcall    0x70, 0xf4000021               
  0x00C2966C  0001                    add      byte ptr [ecx], al             
  0x00C2966E  0000                    add      byte ptr [eax], al             
  0x00C29670  00f4                    add      ah, dh                         
  0x00C29672  56                      push     esi                            
  0x00C29673  0007                    add      byte ptr [edi], al             
  0x00C29675  0000                    add      byte ptr [eax], al             
  0x00C29677  0000                    add      byte ptr [eax], al             
  0x00C29679  ea790080010d00          ljmp     0xd:0x1800079                  
  0x00C29680  0300                    add      eax, dword ptr [eax]           
  0x00C29682  2000                    and      byte ptr [eax], al             
  0x00C29684  002405000c0000          add      byte ptr [eax + 0xc00], ah     
  0x00C2968B  0000                    add      byte ptr [eax], al             
  0x00C2968D  0823                    or       byte ptr [ebx], ah             
  0x00C2968F  000a                    add      byte ptr [edx], cl             
  0x00C29691  0000                    add      byte ptr [eax], al             
  0x00C29693  00a0c80400a0            add      byte ptr [eax - 0x5ffffb38], ah 
  0x00C29699  61                      popal                                   
  0x00C2969A  0400                    add      al, 0                          
  0x00C2969C  a0640400a0              mov      al, byte ptr [0xa0000464]      
  0x00C296A1  650400                  add      al, 0                          
  0x00C296A4  f8                      clc                                     
  0x00C296A5  0400                    add      al, 0                          
  0x00C296A7  0000                    add      byte ptr [eax], al             
  0x00C296A9  0e                      push     cs                             
  0x00C296AA  2300                    and      eax, dword ptr [eax]           
  0x00C296AC  2200                    and      al, byte ptr [eax]             
  0x00C296AE  2000                    and      byte ptr [eax], al             
  0x00C296B0  009821000014            add      byte ptr [eax + 0x14000021], bl 
  0x00C296B6  2200                    and      al, byte ptr [eax]             
  0x00C296B8  114804                  adc      dword ptr [eax + 4], ecx       
  0x00C296BB  0000                    add      byte ptr [eax], al             
  0x00C296BD  35220000e0              xor      eax, 0xe0000022                
  0x00C296C2  5f                      pop      edi                            
  0x00C296C3  0000                    add      byte ptr [eax], al             
  0x00C296C5  e14f                    loope    0xc29716                       
  0x00C296C7  0078e0                  add      byte ptr [eax - 0x20], bh      
  0x00C296CA  5e                      pop      esi                            
  0x00C296CB  0010                    add      byte ptr [eax], dl             
  0x00C296CD  d806                    fadd     dword ptr [esi]                
  0x00C296CF  0009                    add      byte ptr [ecx], cl             
  0x00C296D1  0000                    add      byte ptr [eax], al             
  0x00C296D3  0019                    add      byte ptr [ecx], bl             
  0x00C296D5  d94500                  fld      dword ptr [ebp]                
  0x00C296D8  16                      push     ss                             
  0x00C296D9  0020                    add      byte ptr [eax], ah             
  0x00C296DB  0000                    add      byte ptr [eax], al             
  0x00C296DD  808f0068b88a00          or       byte ptr [edi - 0x75479800], 0 
  0x00C296E4  19e1                    sbb      ecx, esp                       
  0x00C296E6  4f                      dec      edi                            
  0x00C296E7  0016                    add      byte ptr [esi], dl             
  0x00C296E9  0020                    add      byte ptr [eax], ah             
  0x00C296EB  0000                    add      byte ptr [eax], al             
  0x00C296ED  1ccf                    sbb      al, 0xcf                       
  0x00C296EF  00781d                  add      byte ptr [eax + 0x1d], bh      
  0x00C296F2  ca0000                  retf     0                              
  0x00C296F5  0e                      push     cs                             
  0x00C296F6  2300                    and      eax, dword ptr [eax]           
  0x00C296F8  2230                    and      dh, byte ptr [eax]             
  0x00C296FA  2200                    and      al, byte ptr [eax]             
  0x00C296FC  009821000014            add      byte ptr [eax + 0x14000021], bl 
  0x00C29702  2200                    and      al, byte ptr [eax]             
  0x00C29704  114804                  adc      dword ptr [eax + 4], ecx       
  0x00C29707  0000                    add      byte ptr [eax], al             
  0x00C29709  35220000e0              xor      eax, 0xe0000022                
  0x00C2970E  5f                      pop      edi                            
  0x00C2970F  0000                    add      byte ptr [eax], al             
  0x00C29711  e14f                    loope    0xc29762                       
  0x00C29713  0078e0                  add      byte ptr [eax - 0x20], bh      
                                        ; XREF: 0x00C296C5 (cond_jump)
  0x00C29716  5e                      pop      esi                            
  0x00C29717  0010                    add      byte ptr [eax], dl             
  0x00C29719  d806                    fadd     dword ptr [esi]                
  0x00C2971B  0009                    add      byte ptr [ecx], cl             
  0x00C2971D  0000                    add      byte ptr [eax], al             
  0x00C2971F  0019                    add      byte ptr [ecx], bl             
  0x00C29721  d94500                  fld      dword ptr [ebp]                
  0x00C29724  16                      push     ss                             
  0x00C29725  0020                    add      byte ptr [eax], ah             
  0x00C29727  0000                    add      byte ptr [eax], al             
  0x00C29729  808f0068b88a00          or       byte ptr [edi - 0x75479800], 0 
  0x00C29730  19e1                    sbb      ecx, esp                       
  0x00C29732  4f                      dec      edi                            
  0x00C29733  0016                    add      byte ptr [esi], dl             
  0x00C29735  0020                    add      byte ptr [eax], ah             
  0x00C29737  0000                    add      byte ptr [eax], al             
  0x00C29739  1ccf                    sbb      al, 0xcf                       
  0x00C2973B  00781d                  add      byte ptr [eax + 0x1d], bh      
  0x00C2973E  ca0000                  retf     0                              
  0x00C29741  3022                    xor      byte ptr [edx], ah             
  0x00C29743  0000                    add      byte ptr [eax], al             
  0x00C29745  1422                    adc      al, 0x22                       
  0x00C29747  0011                    add      byte ptr [ecx], dl             
  0x00C29749  48                      dec      eax                            
  0x00C2974A  0400                    add      al, 0                          
  0x00C2974C  0035220000e0            add      byte ptr [0xe0000022], dh      
  0x00C29752  5f                      pop      edi                            
  0x00C29753  0000                    add      byte ptr [eax], al             
  0x00C29755  e145                    loope    0xc2979c                       
  0x00C29757  006ce05e                add      byte ptr [eax + 0x5e], ch      
  0x00C2975B  0010                    add      byte ptr [eax], dl             
  0x00C2975D  d806                    fadd     dword ptr [esi]                
  0x00C2975F  0009                    add      byte ptr [ecx], cl             
  0x00C29761  0000                    add      byte ptr [eax], al             
  0x00C29763  0019                    add      byte ptr [ecx], bl             
  0x00C29766  4f                      dec      edi                            
  0x00C29767  0016                    add      byte ptr [esi], dl             
  0x00C29769  0020                    add      byte ptr [eax], ah             
  0x00C2976B  0000                    add      byte ptr [eax], al             
  0x00C2976D  808f0078b88a00          or       byte ptr [edi - 0x75478800], 0 
  0x00C29774  19e1                    sbb      ecx, esp                       
  0x00C29776  45                      inc      ebp                            
  0x00C29777  0016                    add      byte ptr [esi], dl             
  0x00C29779  0020                    add      byte ptr [eax], ah             
  0x00C2977B  0000                    add      byte ptr [eax], al             
  0x00C2977D  1ccf                    sbb      al, 0xcf                       
  0x00C2977F  006c1dca                add      byte ptr [ebp + ebx - 0x36], ch 
  0x00C29783  0000                    add      byte ptr [eax], al             
  0x00C29785  0e                      push     cs                             
  0x00C29786  2300                    and      eax, dword ptr [eax]           
  0x00C29788  2202                    and      al, byte ptr [edx]             
  0x00C2978A  3a00                    cmp      al, byte ptr [eax]             
  0x00C2978C  0030                    add      byte ptr [eax], dh             
  0x00C2978E  2200                    and      al, byte ptr [eax]             
  0x00C29790  009921000011            add      byte ptr [ecx + 0x11000021], bl 
  0x00C29796  2200                    and      al, byte ptr [eax]             
  0x00C29798  0032                    add      byte ptr [edx], dh             
  0x00C2979A  2300                    and      eax, dword ptr [eax]           
                                        ; XREF: 0x00C29755 (cond_jump)
  0x00C2979C  001422                  add      byte ptr [edx], dl             
  0x00C2979F  0000                    add      byte ptr [eax], al             
  0x00C297A1  f4                      hlt                                     
  0x00C297A2  6600520f                add      byte ptr [edx + 0xf], dl       
  0x00C297A6  0000                    add      byte ptr [eax], al             
  0x00C297A8  004920                  add      byte ptr [ecx + 0x20], cl      
  0x00C297AB  0000                    add      byte ptr [eax], al             
  0x00C297AD  352200185a              xor      eax, 0x5a180022                
  0x00C297B2  0400                    add      al, 0                          
  0x00C297B4  001c23                  add      byte ptr [ebx], bl             
  0x00C297B7  0000                    add      byte ptr [eax], al             
  0x00C297B9  1d23000052              sbb      eax, 0x52000023                
  0x00C297BE  2000                    and      byte ptr [eax], al             
  0x00C297C0  00e0                    add      al, ah                         
  0x00C297C2  5f                      pop      edi                            
  0x00C297C3  0000                    add      byte ptr [eax], al             
  0x00C297C5  c1f400                  sal      esp, 0                         
  0x00C297C8  00de                    add      dh, bl                         
  0x00C297CA  4c                      dec      esp                            
  0x00C297CB  00aed94f00bf            add      byte ptr [esi - 0x40ffb027], ch 
  0x00C297D1  e05e                    loopne   0xc29831                       
  0x00C297D3  0010                    add      byte ptr [eax], dl             
  0x00C297D5  da06                    fiadd    dword ptr [esi]                
  0x00C297D7  0020                    add      byte ptr [eax], ah             
  0x00C297D9  0000                    add      byte ptr [eax], al             
  0x00C297DB  0010                    add      byte ptr [eax], dl             
  0x00C297DD  d206                    rol      byte ptr [esi], cl             
  0x00C297DF  0007                    add      byte ptr [edi], al             
  0x00C297E1  0000                    add      byte ptr [eax], al             
  0x00C297E3  0016                    add      byte ptr [esi], dl             
  0x00C297E5  808f00eee14500          or       byte ptr [edi + 0x45e1ee00], 0 
  0x00C297EC  cb                      retf                                    
  0x00C297ED  b88a00161c              mov      eax, 0x1c16008a                
  0x00C297F2  cf                      iretd                                   
  0x00C297F3  00aed94f00bf            add      byte ptr [esi - 0x40ffb027], ch 
  0x00C297F9  1dca000049              sbb      eax, 0x490000ca                
  0x00C297FE  2000                    and      byte ptr [eax], al             
  0x00C29800  16                      push     ss                             
  0x00C29801  808f00eea88a00          or       byte ptr [edi - 0x75571200], 0 
  0x00C29808  cb                      retf                                    
  0x00C29809  e145                    loope    0xc29850                       
  0x00C2980B  0016                    add      byte ptr [esi], dl             
  0x00C2980D  0ccf                    or       al, 0xcf                       
  0x00C2980F  00ea                    add      dl, ch                         
  0x00C29812  4f                      dec      edi                            
  0x00C29813  00cf                    add      bh, cl                         
  0x00C29815  0dca0010d2              or       eax, 0xd21000ca                
  0x00C2981A  06                      push     es                             
  0x00C2981B  0007                    add      byte ptr [edi], al             
  0x00C2981D  0000                    add      byte ptr [eax], al             
  0x00C2981F  0016                    add      byte ptr [esi], dl             
  0x00C29821  808f00aee14500          or       byte ptr [edi + 0x45e1ae00], 0 
  0x00C29828  bfb88a0016              mov      edi, 0x16008ab8                
  0x00C2982D  1ccf                    sbb      al, 0xcf                       
  0x00C2982F  00ea                    add      dl, ch                         
  0x00C29832  4f                      dec      edi                            
  0x00C29833  00cf                    add      bh, cl                         
  0x00C29835  1dca000049              sbb      eax, 0x490000ca                
  0x00C2983A  2000                    and      byte ptr [eax], al             
  0x00C2983C  16                      push     ss                             
  0x00C2983D  808f00aea88a00          or       byte ptr [edi - 0x75575200], 0 
  0x00C29844  bfc1f40000              mov      edi, 0xf4c1                    
  0x00C29849  de4c0016                fimul    word ptr [eax + eax + 0x16]    
  0x00C2984D  0ccf                    or       al, 0xcf                       
  0x00C2984F  00aed94f00bf            add      byte ptr [esi - 0x40ffb027], ch 
  0x00C29855  0dca00002f              or       eax, 0x2f0000ca                
  0x00C2985A  2300                    and      eax, dword ptr [eax]           
  0x00C2985C  2a4e23                  sub      cl, byte ptr [esi + 0x23]      
  0x00C2985F  0032                    add      byte ptr [edx], dh             
  0x00C29861  0020                    add      byte ptr [eax], ah             
  0x00C29863  0000                    add      byte ptr [eax], al             
  0x00C29865  b92100009a              mov      ecx, 0x9a000021                
  0x00C2986A  2100                    and      dword ptr [eax], eax           
  0x00C2986C  80cd0c                  or       ch, 0xc                        
  0x00C2986F  00ca                    add      dl, cl                         
  0x00C29872  ff00                    inc      dword ptr [eax]                
  0x00C29874  0002                    add      byte ptr [edx], al             
  0x00C29876  3800                    cmp      byte ptr [eax], al             
  0x00C29878  001422                  add      byte ptr [edx], dl             
  0x00C2987B  0000                    add      byte ptr [eax], al             
  0x00C2987D  1c23                    sbb      al, 0x23                       
  0x00C2987F  0000                    add      byte ptr [eax], al             
  0x00C29881  52                      push     edx                            
  0x00C29882  2300                    and      eax, dword ptr [eax]           
  0x00C29884  00f4                    add      ah, dh                         
  0x00C29886  6600520f                add      byte ptr [edx + 0xf], dl       
  0x00C2988A  0000                    add      byte ptr [eax], al             
  0x00C2988C  115804                  adc      dword ptr [eax + 4], ebx       
  0x00C2988F  0000                    add      byte ptr [eax], al             
  0x00C29891  1923                    sbb      dword ptr [ebx], esp           
  0x00C29893  0000                    add      byte ptr [eax], al             
  0x00C29895  352200001d              xor      eax, 0x1d000022                
  0x00C2989A  2300                    and      eax, dword ptr [eax]           
  0x00C2989C  005220                  add      byte ptr [edx + 0x20], dl      
  0x00C2989F  0000                    add      byte ptr [eax], al             
  0x00C298A1  e05f                    loopne   0xc29902                       
  0x00C298A3  0000                    add      byte ptr [eax], al             
  0x00C298A5  c1f400                  sal      esp, 0                         
  0x00C298A8  00de                    add      dh, bl                         
  0x00C298AA  4c                      dec      esp                            
  0x00C298AB  00aec94f00bf            add      byte ptr [esi - 0x40ffb037], ch 
  0x00C298B1  e05e                    loopne   0xc29911                       
  0x00C298B3  0016                    add      byte ptr [esi], dl             
  0x00C298B5  0020                    add      byte ptr [eax], ah             
  0x00C298B7  0000                    add      byte ptr [eax], al             
  0x00C298B9  808f00eea88a00          or       byte ptr [edi - 0x75571200], 0 
  0x00C298C0  cb                      retf                                    
  0x00C298C1  e145                    loope    0xc29908                       
  0x00C298C3  0016                    add      byte ptr [esi], dl             
  0x00C298C5  0ccf                    or       al, 0xcf                       
  0x00C298C7  0010                    add      byte ptr [eax], dl             
  0x00C298C9  d206                    rol      byte ptr [esi], cl             
  0x00C298CB  0010                    add      byte ptr [eax], dl             
  0x00C298CD  0000                    add      byte ptr [eax], al             
  0x00C298CF  00ea                    add      dl, ch                         
  0x00C298D1  c9                      leave                                   
  0x00C298D2  4f                      dec      edi                            
  0x00C298D3  00cf                    add      bh, cl                         
  0x00C298D5  0dca001600              or       eax, 0x1600ca                  
  0x00C298DA  2000                    and      byte ptr [eax], al             
  0x00C298DC  00808f00aea8            add      byte ptr [eax - 0x5751ff71], al 
  0x00C298E2  8a00                    mov      al, byte ptr [eax]             
  0x00C298E4  bfc1f40000              mov      edi, 0xf4c1                    
  0x00C298E9  de4c0016                fimul    word ptr [eax + eax + 0x16]    
  0x00C298ED  0ccf                    or       al, 0xcf                       
  0x00C298EF  00aec94f00bf            add      byte ptr [esi - 0x40ffb037], ch 
  0x00C298F5  0dca001600              or       eax, 0x1600ca                  
  0x00C298FA  2000                    and      byte ptr [eax], al             
  0x00C298FC  00808f00eea8            add      byte ptr [eax - 0x5711ff71], al 
                                        ; XREF: 0x00C298A1 (cond_jump)
  0x00C29902  8a00                    mov      al, byte ptr [eax]             
  0x00C29904  cb                      retf                                    
  0x00C29905  e145                    loope    0xc2994c                       
  0x00C29907  0016                    add      byte ptr [esi], dl             
  0x00C29909  0ccf                    or       al, 0xcf                       
  0x00C2990B  00ea                    add      dl, ch                         
  0x00C2990D  c9                      leave                                   
  0x00C2990E  4f                      dec      edi                            
  0x00C2990F  00cf                    add      bh, cl                         
                                        ; XREF: 0x00C298B1 (cond_jump)
  0x00C29911  0dca001600              or       eax, 0x1600ca                  
  0x00C29916  2000                    and      byte ptr [eax], al             
  0x00C29918  00808f00aea8            add      byte ptr [eax - 0x5751ff71], al 
  0x00C2991E  8a00                    mov      al, byte ptr [eax]             
  0x00C29920  bf00200020              mov      edi, 0x20002000                
  0x00C29925  f4                      hlt                                     
  0x00C29926  0500ffff00              add      eax, 0xffff00                  
  0x00C2992B  0016                    add      byte ptr [esi], dl             
  0x00C2992D  4c                      dec      esp                            
  0x00C2992E  57                      push     edi                            
  0x00C2992F  00a061040000            add      byte ptr [eax + 0x461], ah     
  0x00C29935  4d                      dec      ebp                            
  0x00C29936  56                      push     esi                            
  0x00C29937  00a0640400a0            add      byte ptr [eax - 0x5ffffb9c], ah 
  0x00C2993D  650400                  add      al, 0                          
  0x00C29940  b8f300000c              mov      eax, 0xc0000f3                 
  0x00C29945  0000                    add      byte ptr [eax], al             
  0x00C29947  0000                    add      byte ptr [eax], al             
  0x00C29949  f4                      hlt                                     
  0x00C2994A  7100                    jno      0xc2994c                       
  0x00C2994E  ff00                    inc      dword ptr [eax]                
  0x00C29950  00f4                    add      ah, dh                         
  0x00C29952  7500                    jne      0xc29954                       
                                        ; XREF: 0x00C29952 (cond_jump)
  0x00C29954  fc                      cld                                     
  0x00C29956  ff00                    inc      dword ptr [eax]                
  0x00C29958  0096220010da            add      byte ptr [esi - 0x25efffde], dl 
  0x00C2995E  06                      push     es                             
  0x00C2995F  001a                    add      byte ptr [edx], bl             
  0x00C29961  0000                    add      byte ptr [eax], al             
  0x00C29963  0000                    add      byte ptr [eax], al             
  0x00C29965  b9f00010de              mov      ecx, 0xde1000f0                
  0x00C2996A  06                      push     es                             
  0x00C2996B  000a                    add      byte ptr [edx], cl             
  0x00C2996D  0000                    add      byte ptr [eax], al             
  0x00C2996F  00d4                    add      ah, dl                         
  0x00C29971  e145                    loope    0xc299b8                       
  0x00C29973  00d6                    add      dh, dl                         
  0x00C29975  39f0                    cmp      eax, esi                       
  0x00C29977  00e6                    add      dh, ah                         
  0x00C29979  a8f0                    test     al, 0xf0                       
  0x00C2997B  00d2                    add      dl, dl                         
  0x00C2997D  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C29982  44                      inc      esp                            
  0x00C29983  00e2                    add      dl, ah                         
  0x00C29985  a1d000d349              mov      eax, dword ptr [0x49d300d0]    
  0x00C2998A  45                      inc      ebp                            
  0x00C2998B  0000                    add      byte ptr [eax], al             
  0x00C2998D  dd10                    fst      qword ptr [eax]                
  0x00C2998F  0000                    add      byte ptr [eax], al             
  0x00C29991  4c                      dec      esp                            
  0x00C29992  44                      inc      esp                            
  0x00C29993  00d4                    add      ah, dl                         
  0x00C29995  e145                    loope    0xc299dc                       
  0x00C29997  00d6                    add      dh, dl                         
  0x00C29999  39f0                    cmp      eax, esi                       
  0x00C2999B  00e6                    add      dh, ah                         
  0x00C2999D  a8f0                    test     al, 0xf0                       
  0x00C2999F  00d2                    add      dl, dl                         
  0x00C299A1  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C299A6  44                      inc      esp                            
  0x00C299A7  00e2                    add      dl, ah                         
  0x00C299A9  a1f000d359              mov      eax, dword ptr [0x59d300f0]    
  0x00C299AE  45                      inc      ebp                            
  0x00C299AF  0000                    add      byte ptr [eax], al             
  0x00C299B1  4c                      dec      esp                            
  0x00C299B2  56                      push     esi                            
  0x00C299B3  008ef1030000            add      byte ptr [esi + 0x3f1], cl     
  0x00C299B9  d422                    aam      0x22                           
  0x00C299BB  0000                    add      byte ptr [eax], al             
  0x00C299BD  90                      nop                                     
  0x00C299BE  2200                    and      al, byte ptr [eax]             
  0x00C299C0  00982300a460            add      byte ptr [eax + 0x60a40023], bl 
  0x00C299C6  0400                    add      al, 0                          
  0x00C299C8  0c00                    or       al, 0                          
  0x00C299CA  0000                    add      byte ptr [eax], al             
  0x00C299CC  00f4                    add      ah, dh                         
  0x00C299CE  7100                    jno      0xc299d0                       
  0x00C299D2  ff00                    inc      dword ptr [eax]                
  0x00C299D4  00f4                    add      ah, dh                         
  0x00C299D6  7500                    jne      0xc299d8                       
                                        ; XREF: 0x00C299D6 (cond_jump)
  0x00C299D8  fc                      cld                                     
  0x00C299DA  ff00                    inc      dword ptr [eax]                
                                        ; XREF: 0x00C29995 (cond_jump)
  0x00C299DC  0096220010da            add      byte ptr [esi - 0x25efffde], dl 
  0x00C299E2  06                      push     es                             
  0x00C299E3  0021                    add      byte ptr [ecx], ah             
  0x00C299E5  0000                    add      byte ptr [eax], al             
  0x00C299E7  0000                    add      byte ptr [eax], al             
  0x00C299E9  da5700                  ficom    dword ptr [edi]                
  0x00C299EC  00d2                    add      dl, dl                         
  0x00C299EE  51                      push     ecx                            
  0x00C299EF  0000                    add      byte ptr [eax], al             
  0x00C299F1  b9f00010de              mov      ecx, 0xde1000f0                
  0x00C299F6  06                      push     es                             
  0x00C299F7  000b                    add      byte ptr [ebx], cl             
  0x00C299F9  0000                    add      byte ptr [eax], al             
  0x00C299FB  00d4                    add      ah, dl                         
  0x00C299FD  e145                    loope    0xc29a44                       
  0x00C299FF  00d6                    add      dh, dl                         
  0x00C29A01  39f0                    cmp      eax, esi                       
  0x00C29A03  00e6                    add      dh, ah                         
  0x00C29A05  a8f0                    test     al, 0xf0                       
  0x00C29A07  00d2                    add      dl, dl                         
  0x00C29A09  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C29A0E  44                      inc      esp                            
  0x00C29A0F  00e2                    add      dl, ah                         
  0x00C29A11  a1d000d249              mov      eax, dword ptr [0x49d200d0]    
  0x00C29A16  45                      inc      ebp                            
  0x00C29A17  0010                    add      byte ptr [eax], dl             
  0x00C29A19  0020                    add      byte ptr [eax], ah             
  0x00C29A1B  0009                    add      byte ptr [ecx], cl             
  0x00C29A1D  dd10                    fst      qword ptr [eax]                
  0x00C29A1F  004c4c44                add      byte ptr [esp + ecx*2 + 0x44], cl 
  0x00C29A23  00d4                    add      ah, dl                         
  0x00C29A25  e145                    loope    0xc29a6c                       
  0x00C29A27  00d6                    add      dh, dl                         
  0x00C29A29  39f0                    cmp      eax, esi                       
  0x00C29A2B  00e6                    add      dh, ah                         
  0x00C29A2D  a8f0                    test     al, 0xf0                       
  0x00C29A2F  00d2                    add      dl, dl                         
  0x00C29A31  a1f400e259              mov      eax, dword ptr [0x59e200f4]    
  0x00C29A36  44                      inc      esp                            
  0x00C29A37  00e2                    add      dl, ah                         
  0x00C29A39  a1f000d259              mov      eax, dword ptr [0x59d200f0]    
  0x00C29A3E  45                      inc      ebp                            
  0x00C29A3F  0010                    add      byte ptr [eax], dl             
  0x00C29A41  0020                    add      byte ptr [eax], ah             
  0x00C29A43  0009                    add      byte ptr [ecx], cl             
  0x00C29A45  c421                    les      esp, ptr [ecx]                 
  0x00C29A47  004c4c44                add      byte ptr [esp + ecx*2 + 0x44], cl 
  0x00C29A4B  0084f10300005a          add      byte ptr [ecx + esi*8 + 0x5a000003], al 
  0x00C29A52  55                      push     ebp                            
  0x00C29A53  0000                    add      byte ptr [eax], al             
  0x00C29A55  5a                      pop      edx                            
  0x00C29A56  51                      push     ecx                            
  0x00C29A57  0000                    add      byte ptr [eax], al             
  0x00C29A59  d422                    aam      0x22                           
  0x00C29A5B  0000                    add      byte ptr [eax], al             
  0x00C29A5D  90                      nop                                     
  0x00C29A5E  2200                    and      al, byte ptr [eax]             
  0x00C29A60  00982300a460            add      byte ptr [eax + 0x60a40023], bl 
  0x00C29A66  0400                    add      al, 0                          
  0x00C29A68  0c00                    or       al, 0                          
  0x00C29A6A  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29A25 (cond_jump)
  0x00C29A6C  00c8                    add      al, cl                         
  0x00C29A6E  44                      inc      esp                            
  0x00C29A6F  00a000200014            add      byte ptr [eax + 0x14002000], ah 
  0x00C29A75  c8440011                enter    0x44, 0x11                     
  0x00C29A79  0020                    add      byte ptr [eax], ah             
  0x00C29A7B  0010                    add      byte ptr [eax], dl             
  0x00C29A7D  de06                    fiadd    word ptr [esi]                 
  0x00C29A7F  0005000000a0            add      byte ptr [0xa0000000], al      
  0x00C29A85  0c18                    or       al, 0x18                       
  0x00C29A87  00bac8440014            add      byte ptr [edx + 0x140044c8], bh 
  0x00C29A8D  0020                    add      byte ptr [eax], ah             
  0x00C29A8F  0011                    add      byte ptr [ecx], dl             
  0x00C29A91  0020                    add      byte ptr [eax], ah             
  0x00C29A93  0000                    add      byte ptr [eax], al             
  0x00C29A95  2418                    and      al, 0x18                       
  0x00C29A97  00ba0020000c            add      byte ptr [edx + 0xc002000], bh 
  0x00C29A9D  0000                    add      byte ptr [eax], al             
  0x00C29A9F  0013                    add      byte ptr [ebx], dl             
  0x00C29AA1  c84600e1                enter    0x46, -0x1f                    
  0x00C29AA5  0020                    add      byte ptr [eax], ah             
  0x00C29AA7  0010                    add      byte ptr [eax], dl             
  0x00C29AA9  de06                    fiadd    word ptr [esi]                 
  0x00C29AAB  0003                    add      byte ptr [ebx], al             
  0x00C29AAD  0000                    add      byte ptr [eax], al             
  0x00C29AAF  0000                    add      byte ptr [eax], al             
  0x00C29AB1  c84600e1                enter    0x46, -0x1f                    
  0x00C29AB5  4c                      dec      esp                            
  0x00C29AB6  56                      push     esi                            
  0x00C29AB7  0000                    add      byte ptr [eax], al             
  0x00C29AB9  6456                    push     esi                            
  0x00C29ABB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29ABE  0000                    add      byte ptr [eax], al             
  0x00C29AC0  004039                  add      byte ptr [eax + 0x39], al      
  0x00C29AC3  0000                    add      byte ptr [eax], al             
  0x00C29AC5  3d23000049              cmp      eax, 0x49000023                
  0x00C29ACA  2000                    and      byte ptr [eax], al             
  0x00C29ACC  004d20                  add      byte ptr [ebp + 0x20], cl      
  0x00C29ACF  0012                    add      byte ptr [edx], dl             
  0x00C29AD1  51                      push     ecx                            
  0x00C29AD2  0400                    add      al, 0                          
  0x00C29AD4  16                      push     ss                             
  0x00C29AD5  55                      push     ebp                            
  0x00C29AD6  0400                    add      al, 0                          
  0x00C29AD8  10d9                    adc      cl, bl                         
  0x00C29ADA  06                      push     es                             
  0x00C29ADB  000400                  add      byte ptr [eax + eax], al       
  0x00C29ADE  0000                    add      byte ptr [eax], al             
  0x00C29AE0  00d9                    add      cl, bl                         
  0x00C29AE2  46                      inc      esi                            
  0x00C29AE3  0000                    add      byte ptr [eax], al             
  0x00C29AE5  b2b0                    mov      dl, 0xb0                       
  0x00C29AE7  0000                    add      byte ptr [eax], al             
  0x00C29AE9  56                      push     esi                            
  0x00C29AEA  44                      inc      esp                            
  0x00C29AEB  0000                    add      byte ptr [eax], al             
  0x00C29AEE  3800                    cmp      byte ptr [eax], al             
  0x00C29AF0  001c23                  add      byte ptr [ebx], bl             
  0x00C29AF3  0000                    add      byte ptr [eax], al             
  0x00C29AF5  41                      inc      ecx                            
  0x00C29AF6  2000                    and      byte ptr [eax], al             
  0x00C29AF8  004520                  add      byte ptr [ebp + 0x20], al      
  0x00C29AFB  0012                    add      byte ptr [edx], dl             
  0x00C29AFD  48                      dec      eax                            
  0x00C29AFE  0400                    add      al, 0                          
  0x00C29B00  16                      push     ss                             
  0x00C29B01  4c                      dec      esp                            
  0x00C29B02  0400                    add      al, 0                          
  0x00C29B04  0002                    add      byte ptr [edx], al             
  0x00C29B06  3800                    cmp      byte ptr [eax], al             
  0x00C29B08  00f4                    add      ah, dh                         
  0x00C29B0A  7200                    jb       0xc29b0c                       
  0x00C29B0E  ff00                    inc      dword ptr [eax]                
  0x00C29B10  0002                    add      byte ptr [edx], al             
  0x00C29B12  3c00                    cmp      al, 0                          
  0x00C29B14  00f4                    add      ah, dh                         
  0x00C29B16  7600                    jbe      0xc29b18                       
  0x00C29B1A  ff00                    inc      dword ptr [eax]                
  0x00C29B1C  0088d000d4ca            add      byte ptr [eax - 0x352bff30], cl 
  0x00C29B22  d500                    aad      0                              
  0x00C29B24  f30020                  add      byte ptr [eax], ah             
  0x00C29B27  00c8                    add      al, cl                         
  0x00C29B29  59                      pop      ecx                            
  0x00C29B2A  56                      push     esi                            
  0x00C29B2B  00eb                    add      bl, ch                         
  0x00C29B2D  88d0                    mov      al, dl                         
  0x00C29B2F  00903f060005            add      byte ptr [eax + 0x500063f], dl 
  0x00C29B35  0000                    add      byte ptr [eax], al             
  0x00C29B37  00d4                    add      ah, dl                         
  0x00C29B39  cad500                  retf     0xd5                           
  0x00C29B3C  f35d                    pop      ebp                            
  0x00C29B3E  57                      push     edi                            
  0x00C29B3F  00c8                    add      al, cl                         
  0x00C29B41  59                      pop      ecx                            
  0x00C29B42  56                      push     esi                            
  0x00C29B43  00eb                    add      bl, ch                         
  0x00C29B45  88d0                    mov      al, dl                         
  0x00C29B47  0000                    add      byte ptr [eax], al             
  0x00C29B49  5d                      pop      ebp                            
  0x00C29B4A  57                      push     edi                            
  0x00C29B4B  0000                    add      byte ptr [eax], al             
  0x00C29B4D  40                      inc      eax                            
  0x00C29B4E  2000                    and      byte ptr [eax], al             
  0x00C29B50  00442000                add      byte ptr [eax], al             
  0x00C29B54  007f38                  add      byte ptr [edi + 0x38], bh      
  0x00C29B57  0000                    add      byte ptr [eax], al             
  0x00C29B59  1a23                    sbb      ah, byte ptr [ebx]             
  0x00C29B5B  0000                    add      byte ptr [eax], al             
  0x00C29B5D  1c23                    sbb      al, 0x23                       
  0x00C29B5F  0000                    add      byte ptr [eax], al             
  0x00C29B61  1e                      push     ds                             
  0x00C29B62  2300                    and      eax, dword ptr [eax]           
  0x00C29B64  004120                  add      byte ptr [ecx + 0x20], al      
  0x00C29B67  0000                    add      byte ptr [eax], al             
  0x00C29B69  45                      inc      ebp                            
  0x00C29B6A  2000                    and      byte ptr [eax], al             
  0x00C29B6C  004020                  add      byte ptr [eax + 0x20], al      
  0x00C29B6F  0000                    add      byte ptr [eax], al             
  0x00C29B71  4a                      dec      edx                            
  0x00C29B72  2000                    and      byte ptr [eax], al             
  0x00C29B74  00442000                add      byte ptr [eax], al             
  0x00C29B78  004e20                  add      byte ptr [esi + 0x20], cl      
  0x00C29B7B  0000                    add      byte ptr [eax], al             
  0x00C29B7D  0238                    add      bh, byte ptr [eax]             
  0x00C29B7F  0000                    add      byte ptr [eax], al             
  0x00C29B81  f4                      hlt                                     
  0x00C29B82  7200                    jb       0xc29b84                       
  0x00C29B86  ff00                    inc      dword ptr [eax]                
  0x00C29B88  0002                    add      byte ptr [edx], al             
  0x00C29B8A  3c00                    cmp      al, 0                          
  0x00C29B8C  00f4                    add      ah, dh                         
  0x00C29B8E  7600                    jbe      0xc29b90                       
  0x00C29B92  ff00                    inc      dword ptr [eax]                
  0x00C29B94  0088d000d4ca            add      byte ptr [eax - 0x352bff30], cl 
  0x00C29B9A  d500                    aad      0                              
  0x00C29B9C  f30020                  add      byte ptr [eax], ah             
  0x00C29B9F  00c8                    add      al, cl                         
  0x00C29BA1  7956                    jns      0xc29bf9                       
  0x00C29BA3  00eb                    add      bl, ch                         
  0x00C29BA5  88d0                    mov      al, dl                         
  0x00C29BA7  00903f060005            add      byte ptr [eax + 0x500063f], dl 
  0x00C29BAD  0000                    add      byte ptr [eax], al             
  0x00C29BAF  00d4                    add      ah, dl                         
  0x00C29BB1  cad500                  retf     0xd5                           
  0x00C29BB4  f37d5f                  jge      0xc29c16                       
  0x00C29BB7  00c8                    add      al, cl                         
  0x00C29BB9  7956                    jns      0xc29c11                       
  0x00C29BBB  00eb                    add      bl, ch                         
  0x00C29BBD  88d0                    mov      al, dl                         
  0x00C29BBF  0000                    add      byte ptr [eax], al             
  0x00C29BC1  7d5f                    jge      0xc29c22                       
  0x00C29BC3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29BC6  0000                    add      byte ptr [eax], al             
  0x00C29BC8  00c0                    add      al, al                         
  0x00C29BCA  f1                      int1                                    
  0x00C29BCB  0000                    add      byte ptr [eax], al             
  0x00C29BCD  da4d00                  fimul    dword ptr [ebp]                
  0x00C29BD0  c8d84e00                enter    0x4ed8, 0                      
  0x00C29BD4  eb00                    jmp      0xc29bd6                       
                                        ; XREF: 0x00C29BD4 (jump)
  0x00C29BD6  2000                    and      byte ptr [eax], al             
  0x00C29BD8  b064                    mov      al, 0x64                       
  0x00C29BDA  5f                      pop      edi                            
  0x00C29BDB  0010                    add      byte ptr [eax], dl             
  0x00C29BDD  da06                    fiadd    dword ptr [esi]                
  0x00C29BDF  0006                    add      byte ptr [esi], al             
  0x00C29BE1  0000                    add      byte ptr [eax], al             
  0x00C29BE3  00a7c0f10000            add      byte ptr [edi + 0xf1c0], ah    
  0x00C29BE9  da4d00                  fimul    dword ptr [ebp]                
  0x00C29BEC  c8d84e00                enter    0x4ed8, 0                      
  0x00C29BF0  eb5c                    jmp      0xc29c4e                       
  0x00C29BF2  56                      push     esi                            
  0x00C29BF3  00b0645f00a7            add      byte ptr [eax - 0x58ffa09c], dh 
                                        ; XREF: 0x00C29BA1 (cond_jump)
  0x00C29BF9  0020                    add      byte ptr [eax], ah             
  0x00C29BFB  0000                    add      byte ptr [eax], al             
  0x00C29BFD  5c                      pop      esp                            
  0x00C29BFE  56                      push     esi                            
  0x00C29BFF  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29C02  0000                    add      byte ptr [eax], al             
  0x00C29C04  00c0                    add      al, al                         
  0x00C29C06  f1                      int1                                    
  0x00C29C07  0000                    add      byte ptr [eax], al             
  0x00C29C09  da4d00                  fimul    dword ptr [ebp]                
  0x00C29C0C  c8e14e00                enter    0x4ee1, 0                      
  0x00C29C10  eb00                    jmp      0xc29c12                       
                                        ; XREF: 0x00C29C10 (jump)
  0x00C29C12  2000                    and      byte ptr [eax], al             
  0x00C29C14  b0d8                    mov      al, 0xd8                       
                                        ; XREF: 0x00C29BB4 (cond_jump)
  0x00C29C16  4e                      dec      esi                            
  0x00C29C17  00a7d94400c8            add      byte ptr [edi - 0x37ffbb27], ah 
  0x00C29C1D  645f                    pop      edi                            
  0x00C29C1F  00eb                    add      bl, ch                         
  0x00C29C21  5c                      pop      esp                            
                                        ; XREF: 0x00C29BC1 (cond_jump)
  0x00C29C22  56                      push     esi                            
  0x00C29C23  00b0655f0010            add      byte ptr [eax + 0x10005f65], dh 
  0x00C29C29  da06                    fiadd    dword ptr [esi]                
  0x00C29C2B  000a                    add      byte ptr [edx], cl             
  0x00C29C2D  0000                    add      byte ptr [eax], al             
  0x00C29C2F  00a7c0f10000            add      byte ptr [edi + 0xf1c0], ah    
  0x00C29C35  da4d00                  fimul    dword ptr [ebp]                
  0x00C29C38  c8e14e00                enter    0x4ee1, 0                      
  0x00C29C3C  eb5d                    jmp      0xc29c9b                       
  0x00C29C3E  56                      push     esi                            
  0x00C29C3F  00b0d84e00a7            add      byte ptr [eax - 0x58ffb128], dh 
  0x00C29C45  d94400c8                fld      dword ptr [eax + eax - 0x38]   
  0x00C29C49  645f                    pop      edi                            
  0x00C29C4B  00eb                    add      bl, ch                         
  0x00C29C4D  5c                      pop      esp                            
                                        ; XREF: 0x00C29BF0 (jump)
  0x00C29C4E  56                      push     esi                            
  0x00C29C4F  00b0655f00a7            add      byte ptr [eax - 0x58ffa09b], dh 
  0x00C29C55  0020                    add      byte ptr [eax], ah             
  0x00C29C57  0000                    add      byte ptr [eax], al             
  0x00C29C59  5d                      pop      ebp                            
  0x00C29C5A  56                      push     esi                            
  0x00C29C5B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29C5E  0000                    add      byte ptr [eax], al             
  0x00C29C60  00c0                    add      al, al                         
  0x00C29C62  f1                      int1                                    
  0x00C29C63  0000                    add      byte ptr [eax], al             
  0x00C29C65  da4d00                  fimul    dword ptr [ebp]                
  0x00C29C68  a8c8                    test     al, 0xc8                       
  0x00C29C6A  4e                      dec      esi                            
  0x00C29C6B  00bb002000e0            add      byte ptr [ebx - 0x1fffe000], bh 
  0x00C29C71  4d                      dec      ebp                            
  0x00C29C72  57                      push     edi                            
  0x00C29C73  0010                    add      byte ptr [eax], dl             
  0x00C29C75  da06                    fiadd    dword ptr [esi]                
  0x00C29C77  0006                    add      byte ptr [esi], al             
  0x00C29C79  0000                    add      byte ptr [eax], al             
  0x00C29C7B  00c7                    add      bh, al                         
  0x00C29C7D  c0f100                  sal      cl, 0                          
  0x00C29C80  00da                    add      dl, bl                         
  0x00C29C82  4d                      dec      ebp                            
  0x00C29C83  00a8c84e00bb            add      byte ptr [eax - 0x44ffb138], ch 
  0x00C29C89  4c                      dec      esp                            
  0x00C29C8A  56                      push     esi                            
  0x00C29C8B  00e0                    add      al, ah                         
  0x00C29C8D  4d                      dec      ebp                            
  0x00C29C8E  57                      push     edi                            
  0x00C29C8F  00c7                    add      bh, al                         
  0x00C29C91  0020                    add      byte ptr [eax], ah             
  0x00C29C93  0000                    add      byte ptr [eax], al             
  0x00C29C95  4c                      dec      esp                            
  0x00C29C96  56                      push     esi                            
  0x00C29C97  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29C9A  0000                    add      byte ptr [eax], al             
  0x00C29C9C  00c1                    add      cl, al                         
  0x00C29C9E  f1                      int1                                    
  0x00C29C9F  0000                    add      byte ptr [eax], al             
  0x00C29CA1  da4d00                  fimul    dword ptr [ebp]                
  0x00C29CA4  a8e1                    test     al, 0xe1                       
  0x00C29CA6  4e                      dec      esi                            
  0x00C29CA7  00bbe04e00e0            add      byte ptr [ebx - 0x1fffb120], bh 
  0x00C29CAD  c84400c7                enter    0x44, -0x39                    
  0x00C29CB1  55                      push     ebp                            
  0x00C29CB2  57                      push     edi                            
  0x00C29CB3  00b8e14e00ab            add      byte ptr [eax - 0x54ffb11f], bh 
  0x00C29CB9  5c                      pop      esp                            
  0x00C29CBA  56                      push     esi                            
  0x00C29CBB  00e0                    add      al, ah                         
  0x00C29CBD  c9                      leave                                   
  0x00C29CBE  44                      inc      esp                            
  0x00C29CBF  00c7                    add      bh, al                         
  0x00C29CC1  4d                      dec      ebp                            
  0x00C29CC2  57                      push     edi                            
  0x00C29CC3  0010                    add      byte ptr [eax], dl             
  0x00C29CC5  da06                    fiadd    dword ptr [esi]                
  0x00C29CC7  000b                    add      byte ptr [ebx], cl             
  0x00C29CC9  0000                    add      byte ptr [eax], al             
  0x00C29CCB  0000                    add      byte ptr [eax], al             
  0x00C29CCD  c1f100                  sal      ecx, 0                         
  0x00C29CD0  00da                    add      dl, bl                         
  0x00C29CD2  4d                      dec      ebp                            
  0x00C29CD3  00a8e14e00bb            add      byte ptr [eax - 0x44ffb11f], ch 
  0x00C29CD9  0cc8                    or       al, 0xc8                       
  0x00C29CDB  00e0                    add      al, ah                         
  0x00C29CDD  c84400c7                enter    0x44, -0x39                    
  0x00C29CE1  55                      push     ebp                            
  0x00C29CE2  57                      push     edi                            
  0x00C29CE3  00b8e14e00ab            add      byte ptr [eax - 0x54ffb11f], bh 
  0x00C29CE9  5c                      pop      esp                            
  0x00C29CEA  56                      push     esi                            
  0x00C29CEB  00e0                    add      al, ah                         
  0x00C29CED  c9                      leave                                   
  0x00C29CEE  44                      inc      esp                            
  0x00C29CEF  00c7                    add      bh, al                         
  0x00C29CF1  4d                      dec      ebp                            
  0x00C29CF2  57                      push     edi                            
  0x00C29CF3  0000                    add      byte ptr [eax], al             
  0x00C29CF5  4c                      dec      esp                            
  0x00C29CF6  56                      push     esi                            
  0x00C29CF7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29CFA  0000                    add      byte ptr [eax], al             
  0x00C29CFC  00d8                    add      al, bl                         
  0x00C29CFE  56                      push     esi                            
  0x00C29CFF  0010                    add      byte ptr [eax], dl             
  0x00C29D01  d906                    fld      dword ptr [esi]                
  0x00C29D03  0007                    add      byte ptr [edi], al             
  0x00C29D05  0000                    add      byte ptr [eax], al             
  0x00C29D07  0001                    add      byte ptr [ecx], al             
  0x00C29D09  1e                      push     ds                             
  0x00C29D0A  0c00                    or       al, 0                          
  0x00C29D0C  3e0020                  add      byte ptr ds:[eax], ah          
  0x00C29D0F  0003                    add      byte ptr [ebx], al             
  0x00C29D11  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C29D12  2300                    and      eax, dword ptr [eax]           
  0x00C29D14  48                      dec      eax                            
  0x00C29D15  a0020000d8              mov      al, byte ptr [0xd8000002]      
  0x00C29D1A  56                      push     esi                            
  0x00C29D1B  0000                    add      byte ptr [eax], al             
  0x00C29D1D  59                      pop      ecx                            
  0x00C29D1E  57                      push     edi                            
  0x00C29D1F  0000                    add      byte ptr [eax], al             
  0x00C29D21  50                      push     eax                            
  0x00C29D22  2000                    and      byte ptr [eax], al             
  0x00C29D24  0c00                    or       al, 0                          
  0x00C29D26  0000                    add      byte ptr [eax], al             
  0x00C29D28  00f4                    add      ah, dh                         
  0x00C29D2A  46                      inc      esi                            
  0x00C29D2B  0001                    add      byte ptr [ecx], al             
  0x00C29D2D  0000                    add      byte ptr [eax], al             
  0x00C29D2F  0000                    add      byte ptr [eax], al             
  0x00C29D31  ae                      scasb    al, byte ptr es:[edi]          
  0x00C29D32  2300                    and      eax, dword ptr [eax]           
  0x00C29D34  55                      push     ebp                            
  0x00C29D35  3522000da4              xor      eax, 0xa40d0022                
  0x00C29D3A  050000b422              add      eax, 0x22b40000                
  0x00C29D3F  0010                    add      byte ptr [eax], dl             
  0x00C29D41  dc06                    fadd     qword ptr [esi]                
  0x00C29D43  0009                    add      byte ptr [ecx], cl             
  0x00C29D45  0000                    add      byte ptr [eax], al             
  0x00C29D47  0000                    add      byte ptr [eax], al             
  0x00C29D49  f4                      hlt                                     
  0x00C29D4A  56                      push     esi                            
  0x00C29D4B  00ff                    add      bh, bh                         
  0x00C29D4E  7f00                    jg       0xc29d50                       
                                        ; XREF: 0x00C29D4E (cond_jump)
  0x00C29D50  10dd                    adc      ch, bl                         
  0x00C29D52  06                      push     es                             
  0x00C29D53  000400                  add      byte ptr [eax + eax], al       
  0x00C29D56  0000                    add      byte ptr [eax], al             
  0x00C29D58  00dc                    add      ah, bl                         
  0x00C29D5A  44                      inc      esp                            
  0x00C29D5B  004500                  add      byte ptr [ebp], al             
  0x00C29D5E  2000                    and      byte ptr [eax], al             
  0x00C29D60  40                      inc      eax                            
  0x00C29D61  7002                    jo       0xc29d65                       
  0x00C29D63  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29D61 (cond_jump)
  0x00C29D65  4d                      dec      ebp                            
  0x00C29D66  54                      push     esp                            
  0x00C29D67  0000                    add      byte ptr [eax], al             
  0x00C29D69  352200004f              xor      eax, 0x4f000022                
  0x00C29D6E  2300                    and      eax, dword ptr [eax]           
  0x00C29D70  0be2                    or       esp, edx                       
  0x00C29D72  56                      push     esi                            
  0x00C29D73  0006                    add      byte ptr [esi], al             
  0x00C29D75  2405                    and      al, 5                          
  0x00C29D77  0000                    add      byte ptr [eax], al             
  0x00C29D79  f4                      hlt                                     
  0x00C29D7A  44                      inc      esp                            
  0x00C29D7B  000f                    add      byte ptr [edi], cl             
  0x00C29D7D  0000                    add      byte ptr [eax], al             
  0x00C29D7F  004500                  add      byte ptr [ebp], al             
  0x00C29D82  2000                    and      byte ptr [eax], al             
  0x00C29D84  40                      inc      eax                            
  0x00C29D85  7002                    jo       0xc29d89                       
  0x00C29D87  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29D85 (cond_jump)
  0x00C29D89  62540000                bound    edx, qword ptr [eax + eax]     
  0x00C29D8D  8521                    test     dword ptr [ecx], esp           
  0x00C29D8F  0010                    add      byte ptr [eax], dl             
  0x00C29D91  dc06                    fadd     qword ptr [esi]                
  0x00C29D93  000400                  add      byte ptr [eax + eax], al       
  0x00C29D96  0000                    add      byte ptr [eax], al             
  0x00C29D98  00e5                    add      ch, ah                         
  0x00C29D9A  56                      push     esi                            
  0x00C29D9B  00648521                add      byte ptr [ebp + eax*4 + 0x21], ah 
  0x00C29D9F  0000                    add      byte ptr [eax], al             
  0x00C29DA1  4d                      dec      ebp                            
  0x00C29DA2  54                      push     esp                            
  0x00C29DA3  0000                    add      byte ptr [eax], al             
  0x00C29DA5  3522005987              xor      eax, 0x87590022                
  0x00C29DAA  2300                    and      eax, dword ptr [eax]           
  0x00C29DAC  00f4                    add      ah, dh                         
  0x00C29DAE  45                      inc      ebp                            
  0x00C29DAF  0002                    add      byte ptr [edx], al             
  0x00C29DB1  0000                    add      byte ptr [eax], al             
  0x00C29DB3  0000                    add      byte ptr [eax], al             
  0x00C29DB5  e556                    in       eax, 0x56                      
  0x00C29DB7  0065f4                  add      byte ptr [ebp - 0xc], ah       
  0x00C29DBA  45                      inc      ebp                            
  0x00C29DBB  00fe                    add      dh, bh                         
  0x00C29DBE  ff00                    inc      dword ptr [eax]                
  0x00C29DC0  17                      pop      ss                             
  0x00C29DC1  7405                    je       0xc29dc8                       
  0x00C29DC3  0065f4                  add      byte ptr [ebp - 0xc], ah       
  0x00C29DC6  45                      inc      ebp                            
  0x00C29DC7  0002                    add      byte ptr [edx], al             
  0x00C29DC9  0000                    add      byte ptr [eax], al             
  0x00C29DCB  0011                    add      byte ptr [ecx], dl             
  0x00C29DCD  94                      xchg     esp, eax                       
  0x00C29DCE  0500584d20              add      eax, 0x204d5800                
  0x00C29DD3  007d00                  add      byte ptr [ebp], bh             
  0x00C29DD6  2000                    and      byte ptr [eax], al             
  0x00C29DD8  4d                      dec      ebp                            
  0x00C29DD9  7405                    je       0xc29de0                       
  0x00C29DDB  00d6                    add      dh, dl                         
  0x00C29DDD  97                      xchg     edi, eax                       
  0x00C29DDE  050000e556              add      eax, 0x56e50000                
  0x00C29DE3  0065f4                  add      byte ptr [ebp - 0xc], ah       
  0x00C29DE6  45                      inc      ebp                            
  0x00C29DE7  00fe                    add      dh, bh                         
  0x00C29DEA  ff00                    inc      dword ptr [eax]                
  0x00C29DEC  13740500                adc      esi, dword ptr [ebp + eax]     
  0x00C29DF0  65f4                    hlt                                     
  0x00C29DF2  45                      inc      ebp                            
  0x00C29DF3  0002                    add      byte ptr [edx], al             
  0x00C29DF5  0000                    add      byte ptr [eax], al             
  0x00C29DF7  0006                    add      byte ptr [esi], al             
  0x00C29DF9  94                      xchg     esp, eax                       
  0x00C29DFA  0500584d20              add      eax, 0x204d5800                
  0x00C29DFF  007d00                  add      byte ptr [ebp], bh             
  0x00C29E02  2000                    and      byte ptr [eax], al             
  0x00C29E04  42                      inc      edx                            
  0x00C29E05  7405                    je       0xc29e0c                       
  0x00C29E07  00cb                    add      bl, cl                         
  0x00C29E09  97                      xchg     edi, eax                       
  0x00C29E0A  0500d5a705              add      eax, 0x5a7d500                 
  0x00C29E0F  005c4520                add      byte ptr [ebp + eax*2 + 0x20], bl 
  0x00C29E13  000da4050000            add      byte ptr [0x5a4], cl           
  0x00C29E19  e556                    in       eax, 0x56                      
  0x00C29E1B  00540020                add      byte ptr [eax + eax + 0x20], dl 
  0x00C29E1F  0000                    add      byte ptr [eax], al             
  0x00C29E21  4d                      dec      ebp                            
  0x00C29E22  54                      push     esp                            
  0x00C29E23  0000                    add      byte ptr [eax], al             
  0x00C29E25  e556                    in       eax, 0x56                      
  0x00C29E27  0050f4                  add      byte ptr [eax - 0xc], dl       
  0x00C29E2A  45                      inc      ebp                            
  0x00C29E2B  0002                    add      byte ptr [edx], al             
  0x00C29E2D  0000                    add      byte ptr [eax], al             
  0x00C29E2F  0000                    add      byte ptr [eax], al             
  0x00C29E31  45                      inc      ebp                            
  0x00C29E32  54                      push     esp                            
  0x00C29E33  00c0                    add      al, al                         
  0x00C29E35  0f05                    syscall                                 
  0x00C29E37  0054f445                add      byte ptr [esp + esi*8 + 0x45], dl 
  0x00C29E3B  0002                    add      byte ptr [edx], al             
  0x00C29E3D  0000                    add      byte ptr [eax], al             
  0x00C29E3F  0000                    add      byte ptr [eax], al             
  0x00C29E41  6554                    push     esp                            
  0x00C29E43  00c7                    add      bh, al                         
  0x00C29E45  0f05                    syscall                                 
  0x00C29E47  0000                    add      byte ptr [eax], al             
  0x00C29E49  4e                      dec      esi                            
  0x00C29E4A  2300                    and      eax, dword ptr [eax]           
  0x00C29E4C  034d20                  add      ecx, dword ptr [ebp + 0x20]    
  0x00C29E4F  0007                    add      byte ptr [edi], al             
  0x00C29E51  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C29E52  050000e256              add      eax, 0x56e20000                
  0x00C29E57  00540020                add      byte ptr [eax + eax + 0x20], dl 
  0x00C29E5B  0000                    add      byte ptr [eax], al             
  0x00C29E5D  62540000                bound    edx, qword ptr [eax + eax]     
  0x00C29E61  e556                    in       eax, 0x56                      
  0x00C29E63  005000                  add      byte ptr [eax], dl             
  0x00C29E66  2000                    and      byte ptr [eax], al             
  0x00C29E68  006554                  add      byte ptr [ebp + 0x54], ah      
  0x00C29E6B  0000                    add      byte ptr [eax], al             
  0x00C29E6D  e256                    loop     0xc29ec5                       
  0x00C29E6F  00540020                add      byte ptr [eax + eax + 0x20], dl 
  0x00C29E73  0000                    add      byte ptr [eax], al             
  0x00C29E75  62540000                bound    edx, qword ptr [eax + eax]     
  0x00C29E79  e556                    in       eax, 0x56                      
  0x00C29E7B  0050f4                  add      byte ptr [eax - 0xc], dl       
  0x00C29E7E  45                      inc      ebp                            
  0x00C29E7F  0002                    add      byte ptr [edx], al             
  0x00C29E81  0000                    add      byte ptr [eax], al             
  0x00C29E83  005865                  add      byte ptr [eax + 0x65], bl      
  0x00C29E86  54                      push     esp                            
  0x00C29E87  008b0f050000            add      byte ptr [ebx + 0x50f], cl     
  0x00C29E8D  35220000e2              xor      eax, 0xe2000022                
  0x00C29E92  45                      inc      ebp                            
  0x00C29E93  0010                    add      byte ptr [eax], dl             
  0x00C29E95  dc06                    fadd     qword ptr [esi]                
  0x00C29E97  000500000000            add      byte ptr [0], al               
  0x00C29E9D  e556                    in       eax, 0x56                      
  0x00C29E9F  006000                  add      byte ptr [eax], ah             
  0x00C29EA2  2000                    and      byte ptr [eax], al             
  0x00C29EA4  00852100004d            add      byte ptr [ebp + 0x4d000021], al 
  0x00C29EAA  54                      push     esp                            
  0x00C29EAB  0000                    add      byte ptr [eax], al             
  0x00C29EAD  ae                      scasb    al, byte ptr es:[edi]          
  0x00C29EAE  2300                    and      eax, dword ptr [eax]           
  0x00C29EB0  55                      push     ebp                            
  0x00C29EB1  35220009a4              xor      eax, 0xa4090022                
  0x00C29EB6  050000b422              add      eax, 0x22b40000                
  0x00C29EBB  0010                    add      byte ptr [eax], dl             
  0x00C29EBD  dc06                    fadd     qword ptr [esi]                
  0x00C29EBF  0006                    add      byte ptr [esi], al             
  0x00C29EC1  0000                    add      byte ptr [eax], al             
  0x00C29EC3  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29E6D (cond_jump)
  0x00C29EC5  cd44                    int      0x44                           
  0x00C29EC7  0010                    add      byte ptr [eax], dl             
  0x00C29EC9  dd06                    fld      qword ptr [esi]                
  0x00C29ECB  0002                    add      byte ptr [edx], al             
  0x00C29ECD  0000                    add      byte ptr [eax], al             
  0x00C29ECF  0000                    add      byte ptr [eax], al             
  0x00C29ED1  5c                      pop      esp                            
  0x00C29ED2  44                      inc      esp                            
  0x00C29ED3  0000                    add      byte ptr [eax], al             
  0x00C29ED5  0000                    add      byte ptr [eax], al             
  0x00C29ED7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29EDA  0000                    add      byte ptr [eax], al             
  0x00C29EDC  00f0                    add      al, dh                         
  0x00C29EDE  44                      inc      esp                            
  0x00C29EDF  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C29EE2  0000                    add      byte ptr [eax], al             
  0x00C29EE4  00f0                    add      al, dh                         
  0x00C29EE6  56                      push     esi                            
  0x00C29EE7  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C29EED  0020                    add      byte ptr [eax], ah             
  0x00C29EEF  0013                    add      byte ptr [ebx], dl             
  0x00C29EF1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C29EF2  0500009620              add      eax, 0x20960000                
  0x00C29EF7  0000                    add      byte ptr [eax], al             
  0x00C29EF9  f4                      hlt                                     
  0x00C29EFA  60                      pushal                                  
  0x00C29EFB  008001000000            add      byte ptr [eax + 1], al         
  0x00C29F01  f4                      hlt                                     
  0x00C29F02  61                      popal                                   
  0x00C29F03  004102                  add      byte ptr [ecx + 2], al         
  0x00C29F06  0000                    add      byte ptr [eax], al             
  0x00C29F08  00f4                    add      ah, dh                         
  0x00C29F0A  56                      push     esi                            
  0x00C29F0B  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C29F11  c422                    les      esp, ptr [edx]                 
  0x00C29F13  004000                  add      byte ptr [eax], al             
  0x00C29F16  2000                    and      byte ptr [eax], al             
  0x00C29F18  0092210000e2            add      byte ptr [edx - 0x1dffffdf], dl 
  0x00C29F1E  7100                    jno      0xc29f20                       
                                        ; XREF: 0x00C29F1E (cond_jump)
  0x00C29F20  10d9                    adc      cl, bl                         
  0x00C29F22  06                      push     es                             
  0x00C29F23  000500000000            add      byte ptr [0], al               
  0x00C29F29  d9440000                fld      dword ptr [eax + eax]          
  0x00C29F2D  e056                    loopne   0xc29f85                       
  0x00C29F2F  00481e                  add      byte ptr [eax + 0x1e], cl      
  0x00C29F32  0c00                    or       al, 0                          
  0x00C29F34  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C29F37  0010                    add      byte ptr [eax], dl             
  0x00C29F39  0c05                    or       al, 5                          
  0x00C29F3B  0000                    add      byte ptr [eax], al             
  0x00C29F3E  56                      push     esi                            
  0x00C29F3F  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C29F42  0000                    add      byte ptr [eax], al             
  0x00C29F44  0300                    add      eax, dword ptr [eax]           
  0x00C29F46  2000                    and      byte ptr [eax], al             
  0x00C29F48  0ca4                    or       al, 0xa4                       
  0x00C29F4A  050000f460              add      eax, 0x60f40000                
  0x00C29F4F  003502000000            add      byte ptr [2], dh               
  0x00C29F55  f4                      hlt                                     
  0x00C29F56  61                      popal                                   
  0x00C29F57  00f6                    add      dh, dh                         
  0x00C29F59  0200                    add      al, byte ptr [eax]             
  0x00C29F5B  0000                    add      byte ptr [eax], al             
  0x00C29F5D  07                      pop      es                             
  0x00C29F5E  3900                    cmp      dword ptr [eax], eax           
  0x00C29F60  10d9                    adc      cl, bl                         
  0x00C29F62  06                      push     es                             
  0x00C29F63  000500000000            add      byte ptr [0], al               
  0x00C29F69  d9440000                fld      dword ptr [eax + eax]          
  0x00C29F6D  e056                    loopne   0xc29fc5                       
  0x00C29F6F  00481e                  add      byte ptr [eax + 0x1e], cl      
  0x00C29F72  0c00                    or       al, 0                          
  0x00C29F74  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C29F77  000c00                  add      byte ptr [eax + eax], cl       
  0x00C29F7A  0000                    add      byte ptr [eax], al             
  0x00C29F7C  20f4                    and      ah, dh                         
  0x00C29F7E  0500ffffff              add      eax, 0xffffff00                
  0x00C29F83  00a0610400a0            add      byte ptr [eax - 0x5ffffb9f], ah 
  0x00C29F89  620400                  bound    eax, qword ptr [eax + eax]     
  0x00C29F8C  a0640400a0              mov      al, byte ptr [0xa0000464]      
  0x00C29F91  650400                  add      al, 0                          
  0x00C29F94  a0660400b8              mov      al, byte ptr [0xb8000466]      
  0x00C29F99  f30000                  add      byte ptr [eax], al             
  0x00C29F9C  00f4                    add      ah, dh                         
  0x00C29F9E  44                      inc      esp                            
  0x00C29F9F  0000                    add      byte ptr [eax], al             
  0x00C29FA1  0000                    add      byte ptr [eax], al             
  0x00C29FA3  004d00                  add      byte ptr [ebp], cl             
  0x00C29FA6  2000                    and      byte ptr [eax], al             
  0x00C29FA8  0ca4                    or       al, 0xa4                       
  0x00C29FAA  050000f444              add      eax, 0x44f40000                
  0x00C29FAF  0010                    add      byte ptr [eax], dl             
  0x00C29FB1  0000                    add      byte ptr [eax], al             
  0x00C29FB3  004d00                  add      byte ptr [ebp], cl             
  0x00C29FB6  2000                    and      byte ptr [eax], al             
  0x00C29FB8  4a                      dec      edx                            
  0x00C29FB9  100d00110000            adc      byte ptr [0x1100], cl          
  0x00C29FBF  0000                    add      byte ptr [eax], al             
  0x00C29FC1  0030                    add      byte ptr [eax], dh             
  0x00C29FC3  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C29F6D (cond_jump)
  0x00C29FC5  f4                      hlt                                     
  0x00C29FC6  56                      push     esi                            
  0x00C29FC7  0000                    add      byte ptr [eax], al             
  0x00C29FC9  0000                    add      byte ptr [eax], al             
  0x00C29FCB  0000                    add      byte ptr [eax], al             
  0x00C29FCD  f4                      hlt                                     
  0x00C29FCE  57                      push     edi                            
  0x00C29FCF  00ff                    add      bh, bh                         
  0x00C29FD2  ff00                    inc      dword ptr [eax]                
  0x00C29FD4  0c00                    or       al, 0                          
  0x00C29FD6  0000                    add      byte ptr [eax], al             
  0x00C29FD8  1300                    adc      eax, dword ptr [eax]           
  0x00C29FDA  2000                    and      byte ptr [eax], al             
  0x00C29FDC  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C29FDF  0012                    add      byte ptr [edx], dl             
  0x00C29FE1  0900                    or       dword ptr [eax], eax           
  0x00C29FE3  0000                    add      byte ptr [eax], al             
  0x00C29FE5  0030                    add      byte ptr [eax], dh             
  0x00C29FE7  0000                    add      byte ptr [eax], al             
  0x00C29FE9  f4                      hlt                                     
  0x00C29FEA  56                      push     esi                            
  0x00C29FEB  0000                    add      byte ptr [eax], al             
  0x00C29FED  0000                    add      byte ptr [eax], al             
  0x00C29FEF  0000                    add      byte ptr [eax], al             
  0x00C29FF1  f4                      hlt                                     
  0x00C29FF2  57                      push     edi                            
  0x00C29FF3  0008                    add      byte ptr [eax], cl             
  0x00C29FF5  06                      push     es                             
  0x00C29FF6  0000                    add      byte ptr [eax], al             
  0x00C29FF8  0c00                    or       al, 0                          
  0x00C29FFA  0000                    add      byte ptr [eax], al             
  0x00C29FFC  5c                      pop      esp                            
  0x00C29FFD  08050080100d            or       byte ptr [0xd108000], al       
  0x00C2A003  009600000000            add      byte ptr [esi], dl             
  0x00C2A00A  56                      push     esi                            
  0x00C2A00B  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2A011  0020                    add      byte ptr [eax], ah             
  0x00C2A013  005374                  add      byte ptr [ebx + 0x74], dl      
  0x00C2A016  050080100d              add      eax, 0xd108000                 
  0x00C2A01B  00c4                    add      ah, al                         
  0x00C2A01D  0000                    add      byte ptr [eax], al             
  0x00C2A01F  0000                    add      byte ptr [eax], al             
  0x00C2A022  56                      push     esi                            
  0x00C2A023  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2A029  0020                    add      byte ptr [eax], ah             
  0x00C2A02B  004d74                  add      byte ptr [ebp + 0x74], cl      
  0x00C2A02E  050080100d              add      eax, 0xd108000                 
  0x00C2A033  006e01                  add      byte ptr [esi + 1], ch         
  0x00C2A036  0000                    add      byte ptr [eax], al             
  0x00C2A038  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2A03B  00b101000080            add      byte ptr [ecx - 0x7fffffff], dh 
  0x00C2A041  100d00f40100            adc      byte ptr [0x1f400], cl         
  0x00C2A047  0000                    add      byte ptr [eax], al             
  0x00C2A049  002400                  add      byte ptr [eax + eax], ah       
  0x00C2A04C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2A04F  002b                    add      byte ptr [ebx], ch             
  0x00C2A051  0900                    or       dword ptr [eax], eax           
  0x00C2A053  0000                    add      byte ptr [eax], al             
  0x00C2A056  56                      push     esi                            
  0x00C2A057  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A05A  0000                    add      byte ptr [eax], al             
  0x00C2A05C  00f0                    add      al, dh                         
  0x00C2A05E  44                      inc      esp                            
  0x00C2A05F  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2A065  0020                    add      byte ptr [eax], ah             
  0x00C2A067  0009                    add      byte ptr [ecx], cl             
  0x00C2A069  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A06A  050080100d              add      eax, 0xd108000                 
  0x00C2A06F  004601                  add      byte ptr [esi + 1], al         
  0x00C2A072  0000                    add      byte ptr [eax], al             
  0x00C2A074  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2A077  001b                    add      byte ptr [ebx], bl             
  0x00C2A079  0200                    add      al, byte ptr [eax]             
  0x00C2A07B  0000                    add      byte ptr [eax], al             
  0x00C2A07D  7055                    jo       0xc2a0d4                       
  0x00C2A07F  002b                    add      byte ptr [ebx], ch             
  0x00C2A081  0900                    or       dword ptr [eax], eax           
  0x00C2A083  0080100d0003            add      byte ptr [eax + 0x3000d10], al 
  0x00C2A089  0300                    add      eax, dword ptr [eax]           
  0x00C2A08B  0080100d001b            add      byte ptr [eax + 0x1b000d10], al 
  0x00C2A091  0300                    add      eax, dword ptr [eax]           
  0x00C2A093  0080100d002a            add      byte ptr [eax + 0x2a000d10], al 
  0x00C2A099  0300                    add      eax, dword ptr [eax]           
  0x00C2A09B  0080100d0085            add      byte ptr [eax - 0x7afff2f0], al 
  0x00C2A0A1  0300                    add      eax, dword ptr [eax]           
  0x00C2A0A3  0080100d0041            add      byte ptr [eax + 0x41000d10], al 
  0x00C2A0A9  0300                    add      eax, dword ptr [eax]           
  0x00C2A0AB  0000                    add      byte ptr [eax], al             
  0x00C2A0AE  56                      push     esi                            
  0x00C2A0AF  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A0B2  0000                    add      byte ptr [eax], al             
  0x00C2A0B4  0300                    add      eax, dword ptr [eax]           
  0x00C2A0B6  2000                    and      byte ptr [eax], al             
  0x00C2A0B8  0a10                    or       dl, byte ptr [eax]             
  0x00C2A0BA  0d002c0400              or       eax, 0x42c00                   
  0x00C2A0BF  0080100d008e            add      byte ptr [eax - 0x71fff2f0], al 
  0x00C2A0C5  0300                    add      eax, dword ptr [eax]           
  0x00C2A0C7  0080100d00bb            add      byte ptr [eax - 0x44fff2f0], al 
  0x00C2A0CD  0300                    add      eax, dword ptr [eax]           
  0x00C2A0CF  0080100d00d6            add      byte ptr [eax - 0x29fff2f0], al 
  0x00C2A0D5  0300                    add      eax, dword ptr [eax]           
  0x00C2A0D7  0080100d0081            add      byte ptr [eax - 0x7efff2f0], al 
  0x00C2A0DE  ff00                    inc      dword ptr [eax]                
  0x00C2A0E0  1300                    adc      eax, dword ptr [eax]           
  0x00C2A0E2  2000                    and      byte ptr [eax], al             
  0x00C2A0E4  1b10                    sbb      edx, dword ptr [eax]           
  0x00C2A0E6  2100                    and      dword ptr [eax], eax           
  0x00C2A0E8  0c00                    or       al, 0                          
  0x00C2A0EA  0000                    add      byte ptr [eax], al             
  0x00C2A0EC  005820                  add      byte ptr [eax + 0x20], bl      
  0x00C2A0EF  0000                    add      byte ptr [eax], al             
  0x00C2A0F1  d8440000                fadd     dword ptr [eax + eax]          
  0x00C2A0F5  7044                    jo       0xc2a13b                       
  0x00C2A0F7  00420b                  add      byte ptr [edx + 0xb], al       
  0x00C2A0FA  0000                    add      byte ptr [eax], al             
  0x00C2A0FC  00d8                    add      al, bl                         
  0x00C2A0FE  44                      inc      esp                            
  0x00C2A0FF  0000                    add      byte ptr [eax], al             
  0x00C2A101  7044                    jo       0xc2a147                       
  0x00C2A103  00430b                  add      byte ptr [ebx + 0xb], al       
  0x00C2A106  0000                    add      byte ptr [eax], al             
  0x00C2A108  00d8                    add      al, bl                         
  0x00C2A10A  44                      inc      esp                            
  0x00C2A10B  0000                    add      byte ptr [eax], al             
  0x00C2A10D  7044                    jo       0xc2a153                       
  0x00C2A10F  00440b00                add      byte ptr [ebx + ecx], al       
  0x00C2A113  0000                    add      byte ptr [eax], al             
  0x00C2A115  d85700                  fcom     dword ptr [edi]                
  0x00C2A118  90                      nop                                     
  0x00C2A119  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A11C  2420                    and      al, 0x20                       
  0x00C2A11E  0000                    add      byte ptr [eax], al             
  0x00C2A120  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A123  007b0b                  add      byte ptr [ebx + 0xb], bh       
  0x00C2A126  0000                    add      byte ptr [eax], al             
  0x00C2A128  90                      nop                                     
  0x00C2A129  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A12C  1b10                    sbb      edx, dword ptr [eax]           
  0x00C2A12E  0000                    add      byte ptr [eax], al             
  0x00C2A130  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A133  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2A136  0000                    add      byte ptr [eax], al             
  0x00C2A138  90                      nop                                     
  0x00C2A139  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A13C  1830                    sbb      byte ptr [eax], dh             
  0x00C2A13E  0000                    add      byte ptr [eax], al             
  0x00C2A140  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A143  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2A146  0000                    add      byte ptr [eax], al             
  0x00C2A148  00d8                    add      al, bl                         
  0x00C2A14A  44                      inc      esp                            
  0x00C2A14B  0000                    add      byte ptr [eax], al             
  0x00C2A14D  7044                    jo       0xc2a193                       
  0x00C2A14F  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2A152  0000                    add      byte ptr [eax], al             
  0x00C2A154  00d8                    add      al, bl                         
  0x00C2A156  44                      inc      esp                            
  0x00C2A157  0000                    add      byte ptr [eax], al             
  0x00C2A159  7044                    jo       0xc2a19f                       
  0x00C2A15B  00460b                  add      byte ptr [esi + 0xb], al       
  0x00C2A15E  0000                    add      byte ptr [eax], al             
  0x00C2A160  00d8                    add      al, bl                         
  0x00C2A162  44                      inc      esp                            
  0x00C2A163  0000                    add      byte ptr [eax], al             
  0x00C2A165  7044                    jo       0xc2a1ab                       
  0x00C2A167  00470b                  add      byte ptr [edi + 0xb], al       
  0x00C2A16A  0000                    add      byte ptr [eax], al             
  0x00C2A16C  00d8                    add      al, bl                         
  0x00C2A16E  57                      push     edi                            
  0x00C2A16F  0090180c0020            add      byte ptr [eax + 0x20000c18], dl 
  0x00C2A175  60                      pushal                                  
  0x00C2A176  0000                    add      byte ptr [eax], al             
  0x00C2A178  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A17B  007c0b00                add      byte ptr [ebx + ecx], bh       
  0x00C2A17F  0000                    add      byte ptr [eax], al             
  0x00C2A181  d85700                  fcom     dword ptr [edi]                
  0x00C2A184  90                      nop                                     
  0x00C2A185  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A188  2310                    and      edx, dword ptr [eax]           
  0x00C2A18A  0000                    add      byte ptr [eax], al             
  0x00C2A18C  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A18F  003d02000090            add      byte ptr [0x90000002], bh      
  0x00C2A195  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A198  2210                    and      dl, byte ptr [eax]             
  0x00C2A19A  0000                    add      byte ptr [eax], al             
  0x00C2A19C  007050                  add      byte ptr [eax + 0x50], dh      
                                        ; XREF: 0x00C2A159 (cond_jump)
  0x00C2A19F  003e                    add      byte ptr [esi], bh             
  0x00C2A1A1  0200                    add      al, byte ptr [eax]             
  0x00C2A1A3  0090180c0021            add      byte ptr [eax + 0x21000c18], dl 
  0x00C2A1A9  1000                    adc      byte ptr [eax], al             
                                        ; XREF: 0x00C2A165 (cond_jump)
  0x00C2A1AB  0000                    add      byte ptr [eax], al             
  0x00C2A1AD  7050                    jo       0xc2a1ff                       
  0x00C2A1AF  003f                    add      byte ptr [edi], bh             
  0x00C2A1B1  0200                    add      al, byte ptr [eax]             
  0x00C2A1B3  0090180c0018            add      byte ptr [eax + 0x18000c18], dl 
  0x00C2A1B9  40                      inc      eax                            
  0x00C2A1BA  0000                    add      byte ptr [eax], al             
  0x00C2A1BC  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A1BF  004002                  add      byte ptr [eax + 2], al         
  0x00C2A1C2  0000                    add      byte ptr [eax], al             
  0x00C2A1C4  00d8                    add      al, bl                         
  0x00C2A1C6  61                      popal                                   
  0x00C2A1C7  0000                    add      byte ptr [eax], al             
  0x00C2A1C9  06                      push     es                             
  0x00C2A1CA  3800                    cmp      byte ptr [eax], al             
  0x00C2A1CC  004820                  add      byte ptr [eax + 0x20], cl      
  0x00C2A1CF  0000                    add      byte ptr [eax], al             
  0x00C2A1D1  d95700                  fst      dword ptr [edi]                
  0x00C2A1D4  90                      nop                                     
  0x00C2A1D5  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A1D8  1a20                    sbb      ah, byte ptr [eax]             
  0x00C2A1DA  0000                    add      byte ptr [eax], al             
  0x00C2A1DC  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A1DF  004e0b                  add      byte ptr [esi + 0xb], cl       
  0x00C2A1E2  0000                    add      byte ptr [eax], al             
  0x00C2A1E4  00d9                    add      cl, bl                         
  0x00C2A1E6  57                      push     edi                            
  0x00C2A1E7  008e5f010000            add      byte ptr [esi + 0x15f], cl     
  0x00C2A1ED  7057                    jo       0xc2a246                       
  0x00C2A1EF  00490b                  add      byte ptr [ecx + 0xb], cl       
  0x00C2A1F2  0000                    add      byte ptr [eax], al             
  0x00C2A1F4  00d8                    add      al, bl                         
  0x00C2A1F6  57                      push     edi                            
  0x00C2A1F7  0090180c0018            add      byte ptr [eax + 0x18000c18], dl 
  0x00C2A1FD  800000                  add      byte ptr [eax], 0              
  0x00C2A200  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2A203  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A206  0000                    add      byte ptr [eax], al             
  0x00C2A208  90                      nop                                     
  0x00C2A209  180c00                  sbb      byte ptr [eax + eax], cl       
  0x00C2A20C  208000000070            and      byte ptr [eax + 0x70000000], al 
  0x00C2A212  50                      push     eax                            
  0x00C2A213  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2A216  0000                    add      byte ptr [eax], al             
  0x00C2A218  00d8                    add      al, bl                         
  0x00C2A21A  57                      push     edi                            
  0x00C2A21B  0090180c0018            add      byte ptr [eax + 0x18000c18], dl 
  0x00C2A221  1000                    adc      byte ptr [eax], al             
  0x00C2A223  0000                    add      byte ptr [eax], al             
  0x00C2A225  7050                    jo       0xc2a277                       
  0x00C2A227  004c0b00                add      byte ptr [ebx + ecx], cl       
  0x00C2A22B  0090180c0019            add      byte ptr [eax + 0x19000c18], dl 
  0x00C2A231  1000                    adc      byte ptr [eax], al             
  0x00C2A233  0000                    add      byte ptr [eax], al             
  0x00C2A235  7050                    jo       0xc2a287                       
  0x00C2A237  004a0b                  add      byte ptr [edx + 0xb], cl       
  0x00C2A23A  0000                    add      byte ptr [eax], al             
  0x00C2A23C  00d8                    add      al, bl                         
  0x00C2A23E  57                      push     edi                            
  0x00C2A23F  0000                    add      byte ptr [eax], al             
  0x00C2A241  7057                    jo       0xc2a29a                       
  0x00C2A243  004b0b                  add      byte ptr [ebx + 0xb], cl       
                                        ; XREF: 0x00C2A1ED (cond_jump)
  0x00C2A246  0000                    add      byte ptr [eax], al             
  0x00C2A248  00e0                    add      al, ah                         
  0x00C2A24A  57                      push     edi                            
  0x00C2A24B  0000                    add      byte ptr [eax], al             
  0x00C2A24D  7057                    jo       0xc2a2a6                       
  0x00C2A24F  004d0b                  add      byte ptr [ebp + 0xb], cl       
  0x00C2A252  0000                    add      byte ptr [eax], al             
  0x00C2A254  0c00                    or       al, 0                          
  0x00C2A256  0000                    add      byte ptr [eax], al             
  0x00C2A258  00f4                    add      ah, dh                         
  0x00C2A25A  44                      inc      esp                            
  0x00C2A25B  0000                    add      byte ptr [eax], al             
  0x00C2A25D  0000                    add      byte ptr [eax], al             
  0x00C2A25F  0000                    add      byte ptr [eax], al             
  0x00C2A261  7044                    jo       0xc2a2a7                       
  0x00C2A263  00960b000000            add      byte ptr [esi + 0xb], dl       
  0x00C2A26A  56                      push     esi                            
  0x00C2A26B  004002                  add      byte ptr [eax + 2], al         
  0x00C2A26E  0000                    add      byte ptr [eax], al             
  0x00C2A270  00f4                    add      ah, dh                         
  0x00C2A272  44                      inc      esp                            
  0x00C2A273  0009                    add      byte ptr [ecx], cl             
  0x00C2A275  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2A225 (cond_jump)
  0x00C2A277  004500                  add      byte ptr [ebp], al             
  0x00C2A27A  2000                    and      byte ptr [eax], al             
  0x00C2A27C  41                      inc      ecx                            
  0x00C2A27D  27                      daa                                     
  0x00C2A27E  2000                    and      byte ptr [eax], al             
  0x00C2A280  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2A283  004002                  add      byte ptr [eax + 2], al         
  0x00C2A286  0000                    add      byte ptr [eax], al             
  0x00C2A288  00f0                    add      al, dh                         
  0x00C2A28A  56                      push     esi                            
  0x00C2A28B  00490b                  add      byte ptr [ecx + 0xb], cl       
  0x00C2A28E  0000                    add      byte ptr [eax], al             
  0x00C2A290  00f4                    add      ah, dh                         
  0x00C2A292  44                      inc      esp                            
  0x00C2A293  001f                    add      byte ptr [edi], bl             
  0x00C2A295  0000                    add      byte ptr [eax], al             
  0x00C2A297  0045f4                  add      byte ptr [ebp - 0xc], al       
                                        ; XREF: 0x00C2A241 (cond_jump)
  0x00C2A29A  45                      inc      ebp                            
  0x00C2A29B  0000                    add      byte ptr [eax], al             
  0x00C2A29D  0000                    add      byte ptr [eax], al             
  0x00C2A29F  004127                  add      byte ptr [ecx + 0x27], al      
  0x00C2A2A2  2000                    and      byte ptr [eax], al             
  0x00C2A2A4  650020                  add      byte ptr gs:[eax], ah          
                                        ; XREF: 0x00C2A261 (cond_jump)
  0x00C2A2A7  006129                  add      byte ptr [ecx + 0x29], ah      
  0x00C2A2AA  2000                    and      byte ptr [eax], al             
  0x00C2A2AC  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2A2AF  00490b                  add      byte ptr [ecx + 0xb], cl       
  0x00C2A2B2  0000                    add      byte ptr [eax], al             
  0x00C2A2B4  00f0                    add      al, dh                         
  0x00C2A2B6  56                      push     esi                            
  0x00C2A2B7  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2A2BA  0000                    add      byte ptr [eax], al             
  0x00C2A2BC  00f4                    add      ah, dh                         
  0x00C2A2BE  44                      inc      esp                            
  0x00C2A2BF  0007                    add      byte ptr [edi], al             
  0x00C2A2C1  0000                    add      byte ptr [eax], al             
  0x00C2A2C3  0045f4                  add      byte ptr [ebp - 0xc], al       
  0x00C2A2C6  45                      inc      ebp                            
  0x00C2A2C7  0006                    add      byte ptr [esi], al             
  0x00C2A2C9  0000                    add      byte ptr [eax], al             
  0x00C2A2CB  0014a4                  add      byte ptr [esp], dl             
  0x00C2A2CE  050065f444              add      eax, 0x44f46500                
  0x00C2A2D3  0003                    add      byte ptr [ebx], al             
  0x00C2A2D5  0000                    add      byte ptr [eax], al             
  0x00C2A2D7  0011                    add      byte ptr [ecx], dl             
  0x00C2A2D9  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A2DA  050045f445              add      eax, 0x45f44500                
  0x00C2A2DF  0002                    add      byte ptr [edx], al             
  0x00C2A2E1  0000                    add      byte ptr [eax], al             
  0x00C2A2E3  000e                    add      byte ptr [esi], cl             
  0x00C2A2E5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A2E6  050065f444              add      eax, 0x44f46500                
  0x00C2A2EB  000400                  add      byte ptr [eax + eax], al       
  0x00C2A2EE  0000                    add      byte ptr [eax], al             
  0x00C2A2F0  0ba4050045f445          or       esp, dword ptr [ebp + eax + 0x45f44500] 
  0x00C2A2F7  000500000008            add      byte ptr [0x8000000], al       
  0x00C2A2FD  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A2FE  050065f444              add      eax, 0x44f46500                
  0x00C2A303  0001                    add      byte ptr [ecx], al             
  0x00C2A305  0000                    add      byte ptr [eax], al             
  0x00C2A307  0005a4050000            add      byte ptr [0x5a4], al           
  0x00C2A30D  f4                      hlt                                     
  0x00C2A30E  44                      inc      esp                            
  0x00C2A30F  0002                    add      byte ptr [edx], al             
  0x00C2A311  0000                    add      byte ptr [eax], al             
  0x00C2A313  0000                    add      byte ptr [eax], al             
  0x00C2A315  7044                    jo       0xc2a35b                       
  0x00C2A317  00960b000000            add      byte ptr [esi + 0xb], dl       
  0x00C2A31D  7054                    jo       0xc2a373                       
  0x00C2A31F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2A322  0000                    add      byte ptr [eax], al             
  0x00C2A324  0c00                    or       al, 0                          
  0x00C2A326  0000                    add      byte ptr [eax], al             
  0x00C2A328  00f0                    add      al, dh                         
  0x00C2A32A  56                      push     esi                            
  0x00C2A32B  0012                    add      byte ptr [edx], dl             
  0x00C2A32D  0900                    or       dword ptr [eax], eax           
  0x00C2A32F  0000                    add      byte ptr [eax], al             
  0x00C2A331  f4                      hlt                                     
  0x00C2A332  44                      inc      esp                            
  0x00C2A333  006507                  add      byte ptr [ebp + 7], ah         
  0x00C2A336  0200                    add      al, byte ptr [eax]             
  0x00C2A338  45                      inc      ebp                            
  0x00C2A339  0020                    add      byte ptr [eax], ah             
  0x00C2A33B  0006                    add      byte ptr [esi], al             
  0x00C2A33D  2405                    and      al, 5                          
  0x00C2A33F  0000                    add      byte ptr [eax], al             
  0x00C2A342  56                      push     esi                            
  0x00C2A343  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2A346  0000                    add      byte ptr [eax], al             
  0x00C2A348  0300                    add      eax, dword ptr [eax]           
  0x00C2A34A  2000                    and      byte ptr [eax], al             
  0x00C2A34C  5e                      pop      esi                            
  0x00C2A34D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A34E  05000c0000              add      eax, 0xc00                     
  0x00C2A353  0013                    add      byte ptr [ebx], dl             
  0x00C2A355  f4                      hlt                                     
  0x00C2A356  60                      pushal                                  
  0x00C2A357  00fd                    add      ch, bh                         
  0x00C2A359  0400                    add      al, 0                          
                                        ; XREF: 0x00C2A315 (cond_jump)
  0x00C2A35B  009006060003            add      byte ptr [eax + 0x3000606], dl 
  0x00C2A361  0000                    add      byte ptr [eax], al             
  0x00C2A363  0000                    add      byte ptr [eax], al             
  0x00C2A365  58                      pop      eax                            
  0x00C2A366  54                      push     esp                            
  0x00C2A367  0000                    add      byte ptr [eax], al             
  0x00C2A369  58                      pop      eax                            
  0x00C2A36A  54                      push     esp                            
  0x00C2A36B  0013                    add      byte ptr [ebx], dl             
  0x00C2A36D  f4                      hlt                                     
  0x00C2A36E  60                      pushal                                  
  0x00C2A36F  00a805000090            add      byte ptr [eax - 0x6ffffffb], ch 
  0x00C2A375  0506000200              add      eax, 0x20006                   
  0x00C2A37A  0000                    add      byte ptr [eax], al             
  0x00C2A37C  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C2A37F  0013                    add      byte ptr [ebx], dl             
  0x00C2A381  f4                      hlt                                     
  0x00C2A382  60                      pushal                                  
  0x00C2A383  007b05                  add      byte ptr [ebx + 5], bh         
  0x00C2A386  0000                    add      byte ptr [eax], al             
  0x00C2A388  90                      nop                                     
  0x00C2A389  2806                    sub      byte ptr [esi], al             
  0x00C2A38B  0002                    add      byte ptr [edx], al             
  0x00C2A38D  0000                    add      byte ptr [eax], al             
  0x00C2A38F  0000                    add      byte ptr [eax], al             
  0x00C2A391  58                      pop      eax                            
  0x00C2A392  54                      push     esp                            
  0x00C2A393  0013                    add      byte ptr [ebx], dl             
  0x00C2A395  f4                      hlt                                     
  0x00C2A396  60                      pushal                                  
  0x00C2A397  00ae05000090            add      byte ptr [esi - 0x6ffffffb], ch 
  0x00C2A39D  5a                      pop      edx                            
  0x00C2A39E  06                      push     es                             
  0x00C2A39F  0002                    add      byte ptr [edx], al             
  0x00C2A3A1  0000                    add      byte ptr [eax], al             
  0x00C2A3A3  0000                    add      byte ptr [eax], al             
  0x00C2A3A5  58                      pop      eax                            
  0x00C2A3A6  54                      push     esp                            
  0x00C2A3A7  0013                    add      byte ptr [ebx], dl             
  0x00C2A3A9  f4                      hlt                                     
  0x00C2A3AA  60                      pushal                                  
  0x00C2A3AB  0008                    add      byte ptr [eax], cl             
  0x00C2A3AD  06                      push     es                             
  0x00C2A3AE  0000                    add      byte ptr [eax], al             
  0x00C2A3B0  90                      nop                                     
  0x00C2A3B1  0506000200              add      eax, 0x20006                   
  0x00C2A3B6  0000                    add      byte ptr [eax], al             
  0x00C2A3B8  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C2A3BB  0013                    add      byte ptr [ebx], dl             
  0x00C2A3BD  f4                      hlt                                     
  0x00C2A3BE  60                      pushal                                  
  0x00C2A3BF  000d06000090            add      byte ptr [0x90000006], cl      
  0x00C2A3C5  0506000200              add      eax, 0x20006                   
  0x00C2A3CA  0000                    add      byte ptr [eax], al             
  0x00C2A3CC  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C2A3CF  0013                    add      byte ptr [ebx], dl             
  0x00C2A3D1  f4                      hlt                                     
  0x00C2A3D2  60                      pushal                                  
  0x00C2A3D3  0009                    add      byte ptr [ecx], cl             
  0x00C2A3D5  0500009010              add      eax, 0x10900000                
  0x00C2A3DA  06                      push     es                             
  0x00C2A3DB  0002                    add      byte ptr [edx], al             
  0x00C2A3DD  0000                    add      byte ptr [eax], al             
  0x00C2A3DF  0000                    add      byte ptr [eax], al             
  0x00C2A3E1  58                      pop      eax                            
  0x00C2A3E2  54                      push     esp                            
  0x00C2A3E3  0013                    add      byte ptr [ebx], dl             
  0x00C2A3E5  f4                      hlt                                     
  0x00C2A3E6  60                      pushal                                  
  0x00C2A3E7  0019                    add      byte ptr [ecx], bl             
  0x00C2A3E9  0500009008              add      eax, 0x8900000                 
  0x00C2A3EE  06                      push     es                             
  0x00C2A3EF  0002                    add      byte ptr [edx], al             
  0x00C2A3F1  0000                    add      byte ptr [eax], al             
  0x00C2A3F3  0000                    add      byte ptr [eax], al             
  0x00C2A3F5  58                      pop      eax                            
  0x00C2A3F6  54                      push     esp                            
  0x00C2A3F7  0013                    add      byte ptr [ebx], dl             
  0x00C2A3F9  f4                      hlt                                     
  0x00C2A3FA  60                      pushal                                  
  0x00C2A3FB  0021                    add      byte ptr [ecx], ah             
  0x00C2A3FD  050000903c              add      eax, 0x3c900000                
  0x00C2A402  06                      push     es                             
  0x00C2A403  0002                    add      byte ptr [edx], al             
  0x00C2A405  0000                    add      byte ptr [eax], al             
  0x00C2A407  0000                    add      byte ptr [eax], al             
  0x00C2A409  58                      pop      eax                            
  0x00C2A40A  54                      push     esp                            
  0x00C2A40B  0013                    add      byte ptr [ebx], dl             
  0x00C2A40D  f4                      hlt                                     
  0x00C2A40E  60                      pushal                                  
  0x00C2A40F  005d05                  add      byte ptr [ebp + 5], bl         
  0x00C2A412  0000                    add      byte ptr [eax], al             
  0x00C2A414  90                      nop                                     
  0x00C2A415  1e                      push     ds                             
  0x00C2A416  06                      push     es                             
  0x00C2A417  0002                    add      byte ptr [edx], al             
  0x00C2A419  0000                    add      byte ptr [eax], al             
  0x00C2A41B  0000                    add      byte ptr [eax], al             
  0x00C2A41D  58                      pop      eax                            
  0x00C2A41E  54                      push     esp                            
  0x00C2A41F  0013                    add      byte ptr [ebx], dl             
  0x00C2A421  f4                      hlt                                     
  0x00C2A422  60                      pushal                                  
  0x00C2A423  0012                    add      byte ptr [edx], dl             
  0x00C2A425  06                      push     es                             
  0x00C2A426  0000                    add      byte ptr [eax], al             
  0x00C2A428  93                      xchg     ebx, eax                       
  0x00C2A429  0006                    add      byte ptr [esi], al             
  0x00C2A42B  0002                    add      byte ptr [edx], al             
  0x00C2A42D  0000                    add      byte ptr [eax], al             
  0x00C2A42F  0000                    add      byte ptr [eax], al             
  0x00C2A431  58                      pop      eax                            
  0x00C2A432  54                      push     esp                            
  0x00C2A433  0000                    add      byte ptr [eax], al             
  0x00C2A435  f4                      hlt                                     
  0x00C2A436  44                      inc      esp                            
  0x00C2A437  006507                  add      byte ptr [ebp + 7], ah         
  0x00C2A43A  0200                    add      al, byte ptr [eax]             
  0x00C2A43C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2A43F  0012                    add      byte ptr [edx], dl             
  0x00C2A441  0900                    or       dword ptr [eax], eax           
  0x00C2A443  0000                    add      byte ptr [eax], al             
  0x00C2A445  f4                      hlt                                     
  0x00C2A446  44                      inc      esp                            
  0x00C2A447  0000                    add      byte ptr [eax], al             
  0x00C2A449  0000                    add      byte ptr [eax], al             
  0x00C2A44B  0000                    add      byte ptr [eax], al             
  0x00C2A44D  7044                    jo       0xc2a493                       
  0x00C2A44F  00960b000000            add      byte ptr [esi + 0xb], dl       
  0x00C2A455  f4                      hlt                                     
  0x00C2A456  61                      popal                                   
  0x00C2A457  00c2                    add      dl, al                         
  0x00C2A459  0f0000                  sldt     word ptr [eax]                 
  0x00C2A45C  00f0                    add      al, dh                         
  0x00C2A45E  7100                    jno      0xc2a460                       
                                        ; XREF: 0x00C2A45E (cond_jump)
  0x00C2A460  7d0b                    jge      0xc2a46d                       
  0x00C2A462  0000                    add      byte ptr [eax], al             
  0x00C2A464  00f0                    add      al, dh                         
  0x00C2A466  44                      inc      esp                            
  0x00C2A467  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2A46A  0000                    add      byte ptr [eax], al             
  0x00C2A46C  00e9                    add      cl, ch                         
  0x00C2A46E  5e                      pop      esi                            
  0x00C2A46F  004070                  add      byte ptr [eax + 0x70], al      
  0x00C2A472  54                      push     esp                            
  0x00C2A473  00970b000000            add      byte ptr [edi + 0xb], dl       
  0x00C2A479  7054                    jo       0xc2a4cf                       
  0x00C2A47B  00980b00001b            add      byte ptr [eax + 0x1b00000b], bl 
  0x00C2A482  44                      inc      esp                            
  0x00C2A483  00970b000013            add      byte ptr [edi + 0x1300000b], dl 
  0x00C2A489  052d004d02              add      eax, 0x24d002d                 
  0x00C2A48E  2c00                    sub      al, 0                          
  0x00C2A490  5a                      pop      edx                            
  0x00C2A491  94                      xchg     esp, eax                       
  0x00C2A492  05001bf044              add      eax, 0x44f01b00                
  0x00C2A497  00980b000013            add      byte ptr [eax + 0x1300000b], bl 
  0x00C2A49D  06                      push     es                             
  0x00C2A49E  2d004d022c              sub      eax, 0x2c024d00                
  0x00C2A4A3  005594                  add      byte ptr [ebp - 0x6c], dl      
  0x00C2A4A6  050000f056              add      eax, 0x56f00000                
  0x00C2A4AB  007c0b00                add      byte ptr [ebx + ecx], bh       
  0x00C2A4AF  0023                    add      byte ptr [ebx], ah             
  0x00C2A4B1  0020                    add      byte ptr [eax], ah             
  0x00C2A4B3  0000                    add      byte ptr [eax], al             
  0x00C2A4B5  7054                    jo       0xc2a50b                       
  0x00C2A4B7  00990b00001b            add      byte ptr [ecx + 0x1b00000b], bl 
  0x00C2A4BE  44                      inc      esp                            
  0x00C2A4BF  007b0b                  add      byte ptr [ebx + 0xb], bh       
  0x00C2A4C2  0000                    add      byte ptr [eax], al             
  0x00C2A4C4  1303                    adc      eax, dword ptr [ebx]           
  0x00C2A4C6  2d004d042c              sub      eax, 0x2c044d00                
  0x00C2A4CB  004b94                  add      byte ptr [ebx - 0x6c], cl      
  0x00C2A4CE  05001bf044              add      eax, 0x44f01b00                
  0x00C2A4D3  00990b000013            add      byte ptr [ecx + 0x1300000b], bl 
  0x00C2A4D9  132d004d032c            adc      ebp, dword ptr [0x2c034d00]    
  0x00C2A4DF  004694                  add      byte ptr [esi - 0x6c], al      
  0x00C2A4E2  050000f056              add      eax, 0x56f00000                
  0x00C2A4E7  007c0b00                add      byte ptr [ebx + ecx], bh       
  0x00C2A4EB  00c4                    add      ah, al                         
  0x00C2A4ED  40                      inc      eax                            
  0x00C2A4EE  0100                    add      dword ptr [eax], eax           
  0x00C2A4F0  2400                    and      al, 0                          
  0x00C2A4F2  0000                    add      byte ptr [eax], al             
  0x00C2A4F4  00da                    add      dl, bl                         
  0x00C2A4F6  2100                    and      dword ptr [eax], eax           
  0x00C2A4F8  00f0                    add      al, dh                         
  0x00C2A4FA  44                      inc      esp                            
  0x00C2A4FB  007b0b                  add      byte ptr [ebx + 0xb], bh       
  0x00C2A4FE  0000                    add      byte ptr [eax], al             
  0x00C2A500  00f4                    add      ah, dh                         
  0x00C2A502  46                      inc      esi                            
  0x00C2A503  0006                    add      byte ptr [esi], al             
  0x00C2A505  0000                    add      byte ptr [eax], al             
  0x00C2A507  00d0                    add      al, dl                         
  0x00C2A509  44                      inc      esp                            
  0x00C2A50A  2300                    and      eax, dword ptr [eax]           
  0x00C2A50C  2e1d0c0040f4            sbb      eax, 0xf440000c                
  0x00C2A512  44                      inc      esp                            
  0x00C2A513  004c0f00                add      byte ptr [edi + ecx], cl       
  0x00C2A517  004000                  add      byte ptr [eax], al             
  0x00C2A51A  2000                    and      byte ptr [eax], al             
  0x00C2A51C  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2A522  5e                      pop      esi                            
  0x00C2A523  0022                    add      byte ptr [edx], ah             
  0x00C2A525  cf                      iretd                                   
  0x00C2A526  2100                    and      dword ptr [eax], eax           
  0x00C2A528  22842100220020          and      al, byte ptr [ecx + 0x20002200] 
  0x00C2A52F  004070                  add      byte ptr [eax + 0x70], al      
  0x00C2A532  57                      push     edi                            
  0x00C2A533  009a0b000000            add      byte ptr [edx + 0xb], bl       
  0x00C2A539  8521                    test     dword ptr [ecx], esp           
  0x00C2A53B  006ce421                add      byte ptr [esp + 0x21], ch      
  0x00C2A53F  0000                    add      byte ptr [eax], al             
  0x00C2A541  f4                      hlt                                     
  0x00C2A542  46                      inc      esi                            
  0x00C2A543  0008                    add      byte ptr [eax], cl             
  0x00C2A545  0000                    add      byte ptr [eax], al             
  0x00C2A547  00d0                    add      al, dl                         
  0x00C2A549  a7                      cmpsd    dword ptr [esi], dword ptr es:[edi] 
  0x00C2A54A  2100                    and      dword ptr [eax], eax           
  0x00C2A54C  e87050009d              call     0x9dc2f5c1                     
  0x00C2A551  0b00                    or       eax, dword ptr [eax]           
  0x00C2A553  0000                    add      byte ptr [eax], al             
  0x00C2A555  7045                    jo       0xc2a59c                       
  0x00C2A557  009b0b0000b0            add      byte ptr [ebx - 0x4ffffff5], bl 
  0x00C2A55D  7051                    jo       0xc2a5b0                       
  0x00C2A55F  009e0b000000            add      byte ptr [esi + 0xb], bl       
  0x00C2A565  7047                    jo       0xc2a5ae                       
  0x00C2A567  009c0b00000070          add      byte ptr [ebx + ecx + 0x70000000], bl 
  0x00C2A56E  50                      push     eax                            
  0x00C2A56F  009f0b000003            add      byte ptr [edi + 0x300000b], bl 
  0x00C2A575  0c05                    or       al, 5                          
  0x00C2A577  0000                    add      byte ptr [eax], al             
  0x00C2A579  7054                    jo       0xc2a5cf                       
  0x00C2A57B  00960b00000c            add      byte ptr [esi + 0xc00000b], dl 
  0x00C2A581  0000                    add      byte ptr [eax], al             
  0x00C2A583  0000                    add      byte ptr [eax], al             
  0x00C2A585  f4                      hlt                                     
  0x00C2A586  56                      push     esi                            
  0x00C2A587  001409                  add      byte ptr [ecx + ecx], dl       
  0x00C2A58A  0000                    add      byte ptr [eax], al             
  0x00C2A58C  00f0                    add      al, dh                         
  0x00C2A58E  44                      inc      esp                            
  0x00C2A58F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A592  0000                    add      byte ptr [eax], al             
  0x00C2A594  40                      inc      eax                            
  0x00C2A595  0020                    add      byte ptr [eax], ah             
  0x00C2A597  0000                    add      byte ptr [eax], al             
  0x00C2A599  91                      xchg     ecx, eax                       
  0x00C2A59A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2A555 (cond_jump)
  0x00C2A59C  00e1                    add      cl, ah                         
  0x00C2A59E  56                      push     esi                            
  0x00C2A59F  0001                    add      byte ptr [ecx], al             
  0x00C2A5A1  1e                      push     ds                             
  0x00C2A5A2  0c00                    or       al, 0                          
  0x00C2A5A4  3ef4                    hlt                                     
  0x00C2A5A6  44                      inc      esp                            
  0x00C2A5A7  0001                    add      byte ptr [ecx], al             
  0x00C2A5A9  0000                    add      byte ptr [eax], al             
  0x00C2A5AB  004c0020                add      byte ptr [eax + eax + 0x20], cl 
  0x00C2A5AF  001b                    add      byte ptr [ebx], bl             
  0x00C2A5B1  2920                    sub      dword ptr [eax], esp           
  0x00C2A5B3  0003                    add      byte ptr [ebx], al             
  0x00C2A5B5  f4                      hlt                                     
  0x00C2A5B6  45                      inc      ebp                            
  0x00C2A5B7  0003                    add      byte ptr [ebx], al             
  0x00C2A5B9  0000                    add      byte ptr [eax], al             
  0x00C2A5BB  0068a0                  add      byte ptr [eax - 0x60], ch      
  0x00C2A5BE  0200                    add      al, byte ptr [eax]             
  0x00C2A5C0  6d                      insd     dword ptr es:[edi], dx         
  0x00C2A5C1  0020                    add      byte ptr [eax], ah             
  0x00C2A5C3  006870                  add      byte ptr [eax + 0x70], ch      
  0x00C2A5C6  0200                    add      al, byte ptr [eax]             
  0x00C2A5C8  00f4                    add      ah, dh                         
  0x00C2A5CA  56                      push     esi                            
  0x00C2A5CB  00610b                  add      byte ptr [ecx + 0xb], ah       
  0x00C2A5CE  0000                    add      byte ptr [eax], al             
  0x00C2A5D0  00f0                    add      al, dh                         
  0x00C2A5D2  44                      inc      esp                            
  0x00C2A5D3  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A5D6  0000                    add      byte ptr [eax], al             
  0x00C2A5D8  40                      inc      eax                            
  0x00C2A5D9  0020                    add      byte ptr [eax], ah             
  0x00C2A5DB  0000                    add      byte ptr [eax], al             
  0x00C2A5DD  90                      nop                                     
  0x00C2A5DE  2100                    and      dword ptr [eax], eax           
  0x00C2A5E0  006055                  add      byte ptr [eax + 0x55], ah      
  0x00C2A5E3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2A5E6  0000                    add      byte ptr [eax], al             
  0x00C2A5E8  00f0                    add      al, dh                         
  0x00C2A5EA  44                      inc      esp                            
  0x00C2A5EB  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2A5EE  0000                    add      byte ptr [eax], al             
  0x00C2A5F0  00f4                    add      ah, dh                         
  0x00C2A5F2  46                      inc      esi                            
  0x00C2A5F3  0006                    add      byte ptr [esi], al             
  0x00C2A5F5  0000                    add      byte ptr [eax], al             
  0x00C2A5F7  00d0                    add      al, dl                         
  0x00C2A5FA  44                      inc      esp                            
  0x00C2A5FB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A5FE  0000                    add      byte ptr [eax], al             
  0x00C2A600  2e1d0c0040f4            sbb      eax, 0xf440000c                
  0x00C2A606  44                      inc      esp                            
  0x00C2A607  00920f000040            add      byte ptr [edx + 0x4000000f], dl 
  0x00C2A60D  0020                    add      byte ptr [eax], ah             
  0x00C2A60F  0000                    add      byte ptr [eax], al             
  0x00C2A611  94                      xchg     esp, eax                       
  0x00C2A612  2100                    and      dword ptr [eax], eax           
  0x00C2A614  00f0                    add      al, dh                         
  0x00C2A616  56                      push     esi                            
  0x00C2A617  00440b00                add      byte ptr [ebx + ecx], al       
  0x00C2A61B  0000                    add      byte ptr [eax], al             
  0x00C2A61D  e44c                    in       al, 0x4c                       
  0x00C2A61F  004000                  add      byte ptr [eax], al             
  0x00C2A622  2000                    and      byte ptr [eax], al             
  0x00C2A624  0091210020e1            add      byte ptr [ecx - 0x1edfffdf], dl 
  0x00C2A62A  050000f056              add      eax, 0x56f00000                
  0x00C2A62F  00420b                  add      byte ptr [edx + 0xb], al       
  0x00C2A632  0000                    add      byte ptr [eax], al             
  0x00C2A634  00e4                    add      ah, ah                         
  0x00C2A636  4c                      dec      esp                            
  0x00C2A637  004000                  add      byte ptr [eax], al             
  0x00C2A63A  2000                    and      byte ptr [eax], al             
  0x00C2A63C  0091210000f0            add      byte ptr [ecx - 0xfffffdf], dl 
  0x00C2A642  56                      push     esi                            
  0x00C2A643  00430b                  add      byte ptr [ebx + 0xb], al       
  0x00C2A646  0000                    add      byte ptr [eax], al             
  0x00C2A648  00e4                    add      ah, ah                         
  0x00C2A64A  4c                      dec      esp                            
  0x00C2A64B  004000                  add      byte ptr [eax], al             
  0x00C2A64E  2000                    and      byte ptr [eax], al             
  0x00C2A650  0092210000f4            add      byte ptr [edx - 0xbffffdf], dl 
  0x00C2A656  44                      inc      esp                            
  0x00C2A657  0000                    add      byte ptr [eax], al             
  0x00C2A659  0100                    add      dword ptr [eax], eax           
  0x00C2A65B  0000                    add      byte ptr [eax], al             
  0x00C2A65D  e246                    loop     0xc2a6a5                       
  0x00C2A65F  00d0                    add      al, dl                         
  0x00C2A661  0020                    add      byte ptr [eax], ah             
  0x00C2A663  0022                    add      byte ptr [edx], ah             
  0x00C2A665  002400                  add      byte ptr [eax + eax], ah       
  0x00C2A668  0006                    add      byte ptr [esi], al             
  0x00C2A66A  2100                    and      dword ptr [eax], eax           
  0x00C2A66C  d000                    rol      byte ptr [eax], 1              
  0x00C2A66E  2400                    and      al, 0                          
  0x00C2A670  00e2                    add      dl, ah                         
  0x00C2A672  46                      inc      esi                            
  0x00C2A673  00d2                    add      dl, dl                         
  0x00C2A675  002400                  add      byte ptr [eax + eax], ah       
  0x00C2A678  2e1d0c0040e1            sbb      eax, 0xe140000c                
  0x00C2A67E  44                      inc      esp                            
  0x00C2A67F  004000                  add      byte ptr [eax], al             
  0x00C2A682  2000                    and      byte ptr [eax], al             
  0x00C2A684  0090210000e2            add      byte ptr [eax - 0x1dffffdf], dl 
  0x00C2A68A  7000                    jo       0xc2a68c                       
                                        ; XREF: 0x00C2A68A (cond_jump)
  0x00C2A68C  00f4                    add      ah, dh                         
  0x00C2A68E  6400fd                  add      ch, bh                         
  0x00C2A691  0200                    add      al, byte ptr [eax]             
  0x00C2A693  0000                    add      byte ptr [eax], al             
  0x00C2A695  013c00                  add      dword ptr [eax + eax], edi     
  0x00C2A698  00ff                    add      bh, bh                         
  0x00C2A69A  3e0000                  add      byte ptr ds:[eax], al          
  0x00C2A69D  f4                      hlt                                     
  0x00C2A69E  45                      inc      ebp                            
  0x00C2A69F  00cf                    add      bh, cl                         
  0x00C2A6A1  f73f                    idiv     dword ptr [edi]                
  0x00C2A6A3  0000                    add      byte ptr [eax], al             
  0x00C2A6A6  56                      push     esi                            
  0x00C2A6A7  003f                    add      byte ptr [edi], bh             
  0x00C2A6A9  0200                    add      al, byte ptr [eax]             
  0x00C2A6AB  0003                    add      byte ptr [ebx], al             
  0x00C2A6AD  0020                    add      byte ptr [eax], ah             
  0x00C2A6AF  000f                    add      byte ptr [edi], cl             
  0x00C2A6B1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A6B2  050000f056              add      eax, 0x56f00000                
  0x00C2A6B7  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A6BA  0000                    add      byte ptr [eax], al             
  0x00C2A6BC  32f4                    xor      dh, ah                         
  0x00C2A6BE  44                      inc      esp                            
  0x00C2A6BF  00fd                    add      ch, bh                         
  0x00C2A6C1  0400                    add      al, 0                          
  0x00C2A6C3  004000                  add      byte ptr [eax], al             
  0x00C2A6C6  2000                    and      byte ptr [eax], al             
  0x00C2A6C8  0091210000f4            add      byte ptr [ecx - 0xbffffdf], dl 
  0x00C2A6CE  47                      inc      edi                            
  0x00C2A6CF  004703                  add      byte ptr [edi + 3], al         
  0x00C2A6D2  0000                    add      byte ptr [eax], al             
  0x00C2A6D4  00d9                    add      cl, bl                         
  0x00C2A6D6  57                      push     edi                            
  0x00C2A6D7  0000                    add      byte ptr [eax], al             
  0x00C2A6D9  d15100                  rcl      dword ptr [ecx]                
  0x00C2A6DC  e704                    out      4, eax                         
  0x00C2A6DE  0d00005955              or       eax, 0x55590000                
  0x00C2A6E3  0000                    add      byte ptr [eax], al             
  0x00C2A6E5  61                      popal                                   
  0x00C2A6E6  51                      push     ecx                            
  0x00C2A6E7  0002                    add      byte ptr [edx], al             
  0x00C2A6E9  0c05                    or       al, 5                          
  0x00C2A6EB  00f4                    add      ah, dh                         
  0x00C2A6ED  040d                    add      al, 0xd                        
  0x00C2A6EF  0020                    add      byte ptr [eax], ah             
  0x00C2A6F1  f4                      hlt                                     
  0x00C2A6F2  0500ffff00              add      eax, 0xffff00                  
  0x00C2A6F7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2A6FA  0000                    add      byte ptr [eax], al             
  0x00C2A6FC  00f0                    add      al, dh                         
  0x00C2A6FE  56                      push     esi                            
  0x00C2A6FF  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A702  0000                    add      byte ptr [eax], al             
  0x00C2A704  00f0                    add      al, dh                         
  0x00C2A706  44                      inc      esp                            
  0x00C2A707  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2A70D  0020                    add      byte ptr [eax], ah             
  0x00C2A70F  004da4                  add      byte ptr [ebp - 0x5c], cl      
  0x00C2A712  050000f056              add      eax, 0x56f00000                
  0x00C2A717  003d02000003            add      byte ptr [0x3000002], bh       
  0x00C2A71D  0020                    add      byte ptr [eax], ah             
  0x00C2A71F  005ba4                  add      byte ptr [ebx - 0x5c], bl      
  0x00C2A722  050000f460              add      eax, 0x60f40000                
  0x00C2A727  00fd                    add      ch, bh                         
  0x00C2A729  0200                    add      al, byte ptr [eax]             
  0x00C2A72B  0000                    add      byte ptr [eax], al             
  0x00C2A72D  1422                    adc      al, 0x22                       
  0x00C2A72F  0000                    add      byte ptr [eax], al             
  0x00C2A731  0138                    add      dword ptr [eax], edi           
  0x00C2A733  0000                    add      byte ptr [eax], al             
  0x00C2A735  1c23                    sbb      al, 0x23                       
  0x00C2A737  0000                    add      byte ptr [eax], al             
  0x00C2A73A  44                      inc      esp                            
  0x00C2A73B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A73E  0000                    add      byte ptr [eax], al             
  0x00C2A740  00f4                    add      ah, dh                         
  0x00C2A742  46                      inc      esi                            
  0x00C2A743  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2A746  0000                    add      byte ptr [eax], al             
  0x00C2A748  d0f4                    sal      ah, 1                          
  0x00C2A74A  44                      inc      esp                            
  0x00C2A74B  0021                    add      byte ptr [ecx], ah             
  0x00C2A74D  0500002e1d              add      eax, 0x1d2e0000                
  0x00C2A752  0c00                    or       al, 0                          
  0x00C2A754  40                      inc      eax                            
  0x00C2A755  0020                    add      byte ptr [eax], ah             
  0x00C2A757  0000                    add      byte ptr [eax], al             
  0x00C2A759  91                      xchg     ecx, eax                       
  0x00C2A75A  2100                    and      dword ptr [eax], eax           
  0x00C2A75C  00f0                    add      al, dh                         
  0x00C2A75E  44                      inc      esp                            
  0x00C2A75F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A762  0000                    add      byte ptr [eax], al             
  0x00C2A764  00f4                    add      ah, dh                         
  0x00C2A766  46                      inc      esi                            
  0x00C2A767  0006                    add      byte ptr [esi], al             
  0x00C2A769  0000                    add      byte ptr [eax], al             
  0x00C2A76B  00d0                    add      al, dl                         
  0x00C2A76D  f4                      hlt                                     
  0x00C2A76E  44                      inc      esp                            
  0x00C2A76F  005d05                  add      byte ptr [ebp + 5], bl         
  0x00C2A772  0000                    add      byte ptr [eax], al             
  0x00C2A774  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2A77A  2000                    and      byte ptr [eax], al             
  0x00C2A77C  0092210000f0            add      byte ptr [edx - 0xfffffdf], dl 
  0x00C2A782  56                      push     esi                            
  0x00C2A783  004002                  add      byte ptr [eax + 2], al         
  0x00C2A786  0000                    add      byte ptr [eax], al             
  0x00C2A788  c44001                  les      eax, ptr [eax + 1]             
  0x00C2A78B  0007                    add      byte ptr [edi], al             
  0x00C2A78D  0000                    add      byte ptr [eax], al             
  0x00C2A78F  0000                    add      byte ptr [eax], al             
  0x00C2A791  da21                    fisub    dword ptr [ecx]                
  0x00C2A793  0000                    add      byte ptr [eax], al             
  0x00C2A795  44                      inc      esp                            
  0x00C2A796  2300                    and      eax, dword ptr [eax]           
  0x00C2A798  00f4                    add      ah, dh                         
  0x00C2A79A  46                      inc      esi                            
  0x00C2A79B  000f                    add      byte ptr [edi], cl             
  0x00C2A79D  0000                    add      byte ptr [eax], al             
  0x00C2A79F  00d0                    add      al, dl                         
  0x00C2A7A1  f4                      hlt                                     
  0x00C2A7A2  44                      inc      esp                            
  0x00C2A7A3  001408                  add      byte ptr [eax + ecx], dl       
  0x00C2A7A6  0000                    add      byte ptr [eax], al             
  0x00C2A7A8  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2A7AE  2000                    and      byte ptr [eax], al             
  0x00C2A7B0  009521000003            add      byte ptr [ebp + 0x3000021], dl 
  0x00C2A7B6  3a00                    cmp      al, byte ptr [eax]             
  0x00C2A7B8  00ff                    add      bh, bh                         
  0x00C2A7BA  3e009e040d0013          add      byte ptr ds:[esi + 0x13000d04], bl 
  0x00C2A7C1  0c05                    or       al, 5                          
  0x00C2A7C3  0000                    add      byte ptr [eax], al             
  0x00C2A7C6  56                      push     esi                            
  0x00C2A7C7  003e                    add      byte ptr [esi], bh             
  0x00C2A7C9  0200                    add      al, byte ptr [eax]             
  0x00C2A7CB  0003                    add      byte ptr [ebx], al             
  0x00C2A7CD  0020                    add      byte ptr [eax], ah             
  0x00C2A7CF  000f                    add      byte ptr [edi], cl             
  0x00C2A7D1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2A7D2  050000f460              add      eax, 0x60f40000                
  0x00C2A7D7  00fd                    add      ch, bh                         
  0x00C2A7D9  0200                    add      al, byte ptr [eax]             
  0x00C2A7DB  0000                    add      byte ptr [eax], al             
  0x00C2A7DD  1422                    adc      al, 0x22                       
  0x00C2A7DF  0000                    add      byte ptr [eax], al             
  0x00C2A7E1  0138                    add      dword ptr [eax], edi           
  0x00C2A7E3  0000                    add      byte ptr [eax], al             
  0x00C2A7E5  1c23                    sbb      al, 0x23                       
  0x00C2A7E7  0000                    add      byte ptr [eax], al             
  0x00C2A7E9  f4                      hlt                                     
  0x00C2A7EA  61                      popal                                   
  0x00C2A7EB  0009                    add      byte ptr [ecx], cl             
  0x00C2A7ED  05000000f4              add      eax, 0xf4000000                
  0x00C2A7F2  6200                    bound    eax, qword ptr [eax]           
  0x00C2A7F4  1905000000f4            sbb      dword ptr [0xf4000000], eax    
  0x00C2A7FA  650000                  add      byte ptr gs:[eax], al          
  0x00C2A7FD  0800                    or       byte ptr [eax], al             
  0x00C2A7FF  0000                    add      byte ptr [eax], al             
  0x00C2A801  043a                    add      al, 0x3a                       
  0x00C2A803  0000                    add      byte ptr [eax], al             
  0x00C2A806  3e00bf040d000c          add      byte ptr ds:[edi + 0xc000d04], bh 
  0x00C2A80D  0000                    add      byte ptr [eax], al             
  0x00C2A80F  0000                    add      byte ptr [eax], al             
  0x00C2A812  44                      inc      esp                            
  0x00C2A813  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2A816  0000                    add      byte ptr [eax], al             
  0x00C2A818  00f4                    add      ah, dh                         
  0x00C2A81A  46                      inc      esi                            
  0x00C2A81B  0006                    add      byte ptr [esi], al             
  0x00C2A81D  0000                    add      byte ptr [eax], al             
  0x00C2A81F  00d0                    add      al, dl                         
  0x00C2A822  44                      inc      esp                            
  0x00C2A823  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A826  0000                    add      byte ptr [eax], al             
  0x00C2A828  2e1d0c0040f4            sbb      eax, 0xf440000c                
  0x00C2A82E  44                      inc      esp                            
  0x00C2A82F  00920f000040            add      byte ptr [edx + 0x4000000f], dl 
  0x00C2A835  0020                    add      byte ptr [eax], ah             
  0x00C2A837  0000                    add      byte ptr [eax], al             
  0x00C2A839  91                      xchg     ecx, eax                       
  0x00C2A83A  2100                    and      dword ptr [eax], eax           
  0x00C2A83C  00e1                    add      cl, ah                         
  0x00C2A83E  4c                      dec      esp                            
  0x00C2A83F  0000                    add      byte ptr [eax], al             
  0x00C2A841  7044                    jo       0xc2a887                       
  0x00C2A843  0013                    add      byte ptr [ebx], dl             
  0x00C2A845  0900                    or       dword ptr [eax], eax           
  0x00C2A847  0000                    add      byte ptr [eax], al             
  0x00C2A849  f4                      hlt                                     
  0x00C2A84A  61                      popal                                   
  0x00C2A84B  00fd                    add      ch, bh                         
  0x00C2A84D  0200                    add      al, byte ptr [eax]             
  0x00C2A84F  0013                    add      byte ptr [ebx], dl             
  0x00C2A851  0020                    add      byte ptr [eax], ah             
  0x00C2A853  001b                    add      byte ptr [ebx], bl             
  0x00C2A855  d9440091                fld      dword ptr [eax + eax - 0x6f]   
  0x00C2A859  0006                    add      byte ptr [esi], al             
  0x00C2A85B  000400                  add      byte ptr [eax + eax], al       
  0x00C2A85E  0000                    add      byte ptr [eax], al             
  0x00C2A860  47                      inc      edi                            
  0x00C2A861  0020                    add      byte ptr [eax], ah             
  0x00C2A863  004090                  add      byte ptr [eax - 0x70], al      
  0x00C2A866  0200                    add      al, byte ptr [eax]             
  0x00C2A868  8ad9                    mov      bl, cl                         
  0x00C2A86A  44                      inc      esp                            
  0x00C2A86B  0000                    add      byte ptr [eax], al             
  0x00C2A86D  f4                      hlt                                     
  0x00C2A86E  60                      pushal                                  
  0x00C2A86F  00a805000000            add      byte ptr [eax + 5], ch         
  0x00C2A876  7000                    jo       0xc2a878                       
                                        ; XREF: 0x00C2A876 (cond_jump)
  0x00C2A878  41                      inc      ecx                            
  0x00C2A879  0b00                    or       eax, dword ptr [eax]           
  0x00C2A87B  0032                    add      byte ptr [edx], dh             
  0x00C2A87D  0020                    add      byte ptr [eax], ah             
  0x00C2A87F  0026                    add      byte ptr [esi], ah             
  0x00C2A881  e844004768              call     0x6909a8ca                     
  0x00C2A886  56                      push     esi                            
                                        ; XREF: 0x00C2A841 (cond_jump)
  0x00C2A887  004090                  add      byte ptr [eax - 0x70], al      
  0x00C2A88A  0200                    add      al, byte ptr [eax]             
  0x00C2A88C  00c7                    add      bh, al                         
  0x00C2A88E  2100                    and      dword ptr [eax], eax           
  0x00C2A890  00f4                    add      ah, dh                         
  0x00C2A892  56                      push     esi                            
  0x00C2A893  001409                  add      byte ptr [ecx + ecx], dl       
  0x00C2A896  0000                    add      byte ptr [eax], al             
  0x00C2A898  00f0                    add      al, dh                         
  0x00C2A89A  44                      inc      esp                            
  0x00C2A89B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A89E  0000                    add      byte ptr [eax], al             
  0x00C2A8A0  40                      inc      eax                            
  0x00C2A8A1  0020                    add      byte ptr [eax], ah             
  0x00C2A8A3  0000                    add      byte ptr [eax], al             
  0x00C2A8A5  90                      nop                                     
  0x00C2A8A6  2100                    and      dword ptr [eax], eax           
  0x00C2A8A8  006047                  add      byte ptr [eax + 0x47], ah      
  0x00C2A8AB  00911c0c0000            add      byte ptr [ecx + 0xc1c], dl     
  0x00C2A8B2  44                      inc      esp                            
  0x00C2A8B3  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A8B6  0000                    add      byte ptr [eax], al             
  0x00C2A8B8  00f4                    add      ah, dh                         
  0x00C2A8BA  46                      inc      esi                            
  0x00C2A8BB  0002                    add      byte ptr [edx], al             
  0x00C2A8BD  0000                    add      byte ptr [eax], al             
  0x00C2A8BF  00d0                    add      al, dl                         
  0x00C2A8C1  f4                      hlt                                     
  0x00C2A8C2  44                      inc      esp                            
  0x00C2A8C3  001a                    add      byte ptr [edx], bl             
  0x00C2A8C5  0900                    or       dword ptr [eax], eax           
  0x00C2A8C7  002e                    add      byte ptr [esi], ch             
  0x00C2A8C9  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2A8CE  2000                    and      byte ptr [eax], al             
  0x00C2A8D0  009021000058            add      byte ptr [eax + 0x58000021], dl 
  0x00C2A8D6  55                      push     ebp                            
  0x00C2A8D7  0000                    add      byte ptr [eax], al             
  0x00C2A8D9  60                      pushal                                  
  0x00C2A8DA  51                      push     ecx                            
  0x00C2A8DB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2A8DE  0000                    add      byte ptr [eax], al             
  0x00C2A8E0  00f4                    add      ah, dh                         
  0x00C2A8E2  60                      pushal                                  
  0x00C2A8E3  00fd                    add      ch, bh                         
  0x00C2A8E5  0200                    add      al, byte ptr [eax]             
  0x00C2A8E7  0000                    add      byte ptr [eax], al             
  0x00C2A8E9  f4                      hlt                                     
  0x00C2A8EA  6400fd                  add      ch, bh                         
  0x00C2A8ED  0300                    add      eax, dword ptr [eax]           
  0x00C2A8EF  0000                    add      byte ptr [eax], al             
  0x00C2A8F1  0138                    add      dword ptr [eax], edi           
  0x00C2A8F3  0000                    add      byte ptr [eax], al             
  0x00C2A8F5  1c23                    sbb      al, 0x23                       
  0x00C2A8F7  0000                    add      byte ptr [eax], al             
  0x00C2A8FA  44                      inc      esp                            
  0x00C2A8FB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A8FE  0000                    add      byte ptr [eax], al             
  0x00C2A900  00f4                    add      ah, dh                         
  0x00C2A902  46                      inc      esi                            
  0x00C2A903  0008                    add      byte ptr [eax], cl             
  0x00C2A905  0000                    add      byte ptr [eax], al             
  0x00C2A907  00d0                    add      al, dl                         
  0x00C2A909  f4                      hlt                                     
  0x00C2A90A  44                      inc      esp                            
  0x00C2A90B  007b05                  add      byte ptr [ebx + 5], bh         
  0x00C2A90E  0000                    add      byte ptr [eax], al             
  0x00C2A910  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2A916  2000                    and      byte ptr [eax], al             
  0x00C2A918  0091210000f4            add      byte ptr [ecx - 0xbffffdf], dl 
  0x00C2A91E  6500a208000000          add      byte ptr gs:[edx + 8], ah      
  0x00C2A925  023a                    add      bh, byte ptr [edx]             
  0x00C2A927  0000                    add      byte ptr [eax], al             
  0x00C2A92A  3e009e040d0000          add      byte ptr ds:[esi + 0xd04], bl  
  0x00C2A932  44                      inc      esp                            
  0x00C2A933  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A936  0000                    add      byte ptr [eax], al             
  0x00C2A938  00f4                    add      ah, dh                         
  0x00C2A93A  46                      inc      esi                            
  0x00C2A93B  0012                    add      byte ptr [edx], dl             
  0x00C2A93D  0000                    add      byte ptr [eax], al             
  0x00C2A93F  00d0                    add      al, dl                         
  0x00C2A941  f4                      hlt                                     
  0x00C2A942  44                      inc      esp                            
  0x00C2A943  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2A949  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2A94E  2000                    and      byte ptr [eax], al             
  0x00C2A950  00902100000e            add      byte ptr [eax + 0xe000021], dl 
  0x00C2A956  3800                    cmp      byte ptr [eax], al             
  0x00C2A958  00f4                    add      ah, dh                         
  0x00C2A95A  61                      popal                                   
  0x00C2A95B  00fd                    add      ch, bh                         
  0x00C2A95D  0300                    add      eax, dword ptr [eax]           
  0x00C2A95F  0000                    add      byte ptr [eax], al             
  0x00C2A961  48                      dec      eax                            
  0x00C2A962  2000                    and      byte ptr [eax], al             
  0x00C2A964  90                      nop                                     
  0x00C2A965  0406                    add      al, 6                          
  0x00C2A967  0009                    add      byte ptr [ecx], cl             
  0x00C2A969  0000                    add      byte ptr [eax], al             
  0x00C2A96B  0013                    add      byte ptr [ebx], dl             
  0x00C2A96D  0020                    add      byte ptr [eax], ah             
  0x00C2A96F  009040060004            add      byte ptr [eax + 0x4000640], dl 
  0x00C2A975  0000                    add      byte ptr [eax], al             
  0x00C2A977  0000                    add      byte ptr [eax], al             
  0x00C2A979  d9440047                fld      dword ptr [eax + eax + 0x47]   
  0x00C2A97D  0020                    add      byte ptr [eax], ah             
  0x00C2A97F  004090                  add      byte ptr [eax - 0x70], al      
  0x00C2A982  0200                    add      al, byte ptr [eax]             
  0x00C2A984  260020                  add      byte ptr es:[eax], ah          
  0x00C2A987  0000                    add      byte ptr [eax], al             
  0x00C2A989  58                      pop      eax                            
  0x00C2A98A  56                      push     esi                            
  0x00C2A98B  0000                    add      byte ptr [eax], al             
  0x00C2A98E  44                      inc      esp                            
  0x00C2A98F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A992  0000                    add      byte ptr [eax], al             
  0x00C2A994  00f4                    add      ah, dh                         
  0x00C2A996  46                      inc      esi                            
  0x00C2A997  0012                    add      byte ptr [edx], dl             
  0x00C2A999  0000                    add      byte ptr [eax], al             
  0x00C2A99B  00d0                    add      al, dl                         
  0x00C2A99D  f4                      hlt                                     
  0x00C2A99E  44                      inc      esp                            
  0x00C2A99F  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2A9A5  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2A9AA  2000                    and      byte ptr [eax], al             
  0x00C2A9AC  009021000008            add      byte ptr [eax + 0x8000021], dl 
  0x00C2A9B2  3800                    cmp      byte ptr [eax], al             
  0x00C2A9B4  00f4                    add      ah, dh                         
  0x00C2A9B6  57                      push     edi                            
  0x00C2A9B7  0002                    add      byte ptr [edx], al             
  0x00C2A9B9  0000                    add      byte ptr [eax], al             
  0x00C2A9BB  0000                    add      byte ptr [eax], al             
  0x00C2A9BD  48                      dec      eax                            
  0x00C2A9BE  2000                    and      byte ptr [eax], al             
  0x00C2A9C0  0006                    add      byte ptr [esi], al             
  0x00C2A9C2  3800                    cmp      byte ptr [eax], al             
  0x00C2A9C4  90                      nop                                     
  0x00C2A9C5  0206                    add      al, byte ptr [esi]             
  0x00C2A9C7  000b                    add      byte ptr [ebx], cl             
  0x00C2A9C9  0000                    add      byte ptr [eax], al             
  0x00C2A9CB  0000                    add      byte ptr [eax], al             
  0x00C2A9CD  1122                    adc      dword ptr [edx], esp           
  0x00C2A9CF  0012                    add      byte ptr [edx], dl             
  0x00C2A9D1  48                      dec      eax                            
  0x00C2A9D2  0400                    add      al, 0                          
  0x00C2A9D4  10cd                    adc      ch, cl                         
  0x00C2A9D6  06                      push     es                             
  0x00C2A9D7  0006                    add      byte ptr [esi], al             
  0x00C2A9D9  0000                    add      byte ptr [eax], al             
  0x00C2A9DB  0000                    add      byte ptr [eax], al             
  0x00C2A9DD  da440000                fiadd    dword ptr [eax + eax]          
  0x00C2A9E1  da5600                  ficom    dword ptr [esi]                
  0x00C2A9E4  45                      inc      ebp                            
  0x00C2A9E5  0020                    add      byte ptr [eax], ah             
  0x00C2A9E7  004090                  add      byte ptr [eax - 0x70], al      
  0x00C2A9EA  0200                    add      al, byte ptr [eax]             
  0x00C2A9EC  005956                  add      byte ptr [ecx + 0x56], bl      
  0x00C2A9EF  002a                    add      byte ptr [edx], ch             
  0x00C2A9F1  40                      inc      eax                            
  0x00C2A9F2  2000                    and      byte ptr [eax], al             
  0x00C2A9F4  00f0                    add      al, dh                         
  0x00C2A9F6  44                      inc      esp                            
  0x00C2A9F7  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2A9FA  0000                    add      byte ptr [eax], al             
  0x00C2A9FC  00f4                    add      ah, dh                         
  0x00C2A9FE  46                      inc      esi                            
  0x00C2A9FF  0012                    add      byte ptr [edx], dl             
  0x00C2AA01  0000                    add      byte ptr [eax], al             
  0x00C2AA03  00d0                    add      al, dl                         
  0x00C2AA05  f4                      hlt                                     
  0x00C2AA06  44                      inc      esp                            
  0x00C2AA07  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2AA0D  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2AA12  2000                    and      byte ptr [eax], al             
  0x00C2AA14  009021000006            add      byte ptr [eax + 0x6000021], dl 
  0x00C2AA1A  3800                    cmp      byte ptr [eax], al             
  0x00C2AA1C  00f4                    add      ah, dh                         
  0x00C2AA1E  6200                    bound    eax, qword ptr [eax]           
  0x00C2AA20  af                      scasd    eax, dword ptr es:[edi]        
  0x00C2AA21  0800                    or       byte ptr [eax], al             
  0x00C2AA23  0000                    add      byte ptr [eax], al             
  0x00C2AA25  0239                    add      bh, byte ptr [ecx]             
  0x00C2AA27  001b                    add      byte ptr [ebx], bl             
  0x00C2AA29  f4                      hlt                                     
  0x00C2AA2A  45                      inc      ebp                            
  0x00C2AA2B  0001                    add      byte ptr [ecx], al             
  0x00C2AA2D  0000                    add      byte ptr [eax], al             
  0x00C2AA2F  0000                    add      byte ptr [eax], al             
  0x00C2AA31  a6                      cmpsb    byte ptr [esi], byte ptr es:[edi] 
  0x00C2AA32  2000                    and      byte ptr [eax], al             
  0x00C2AA34  90                      nop                                     
  0x00C2AA35  0306                    add      eax, dword ptr [esi]           
  0x00C2AA37  000d00000000            add      byte ptr [0], cl               
  0x00C2AA3D  1122                    adc      dword ptr [edx], esp           
  0x00C2AA3F  0000                    add      byte ptr [eax], al             
  0x00C2AA41  da4f00                  fimul    dword ptr [edi]                
  0x00C2AA44  004920                  add      byte ptr [ecx + 0x20], cl      
  0x00C2AA47  0000                    add      byte ptr [eax], al             
  0x00C2AA49  d1440010                rol      dword ptr [eax + eax + 0x10], 1 
  0x00C2AA4D  c60600                  mov      byte ptr [esi], 0              
  0x00C2AA50  0400                    add      al, 0                          
  0x00C2AA52  0000                    add      byte ptr [eax], al             
  0x00C2AA54  c0c944                  ror      cl, 0x44                       
  0x00C2AA57  0045d1                  add      byte ptr [ebp - 0x2f], al      
  0x00C2AA5A  44                      inc      esp                            
  0x00C2AA5B  006870                  add      byte ptr [eax + 0x70], ch      
  0x00C2AA5E  0200                    add      al, byte ptr [eax]             
  0x00C2AA60  00ce                    add      dh, cl                         
  0x00C2AA62  2000                    and      byte ptr [eax], al             
  0x00C2AA64  324820                  xor      cl, byte ptr [eax + 0x20]      
  0x00C2AA67  0000                    add      byte ptr [eax], al             
  0x00C2AA69  8621                    xchg     byte ptr [ecx], ah             
  0x00C2AA6B  0000                    add      byte ptr [eax], al             
  0x00C2AA6E  44                      inc      esp                            
  0x00C2AA6F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AA72  0000                    add      byte ptr [eax], al             
  0x00C2AA74  00f4                    add      ah, dh                         
  0x00C2AA76  46                      inc      esi                            
  0x00C2AA77  0012                    add      byte ptr [edx], dl             
  0x00C2AA79  0000                    add      byte ptr [eax], al             
  0x00C2AA7B  00d0                    add      al, dl                         
  0x00C2AA7D  f4                      hlt                                     
  0x00C2AA7E  44                      inc      esp                            
  0x00C2AA7F  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2AA85  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2AA8A  2000                    and      byte ptr [eax], al             
  0x00C2AA8C  009021000002            add      byte ptr [eax + 0x2000021], dl 
  0x00C2AA92  3800                    cmp      byte ptr [eax], al             
  0x00C2AA94  00f4                    add      ah, dh                         
  0x00C2AA96  44                      inc      esp                            
  0x00C2AA97  0000                    add      byte ptr [eax], al             
  0x00C2AA99  3200                    xor      al, byte ptr [eax]             
  0x00C2AA9B  0000                    add      byte ptr [eax], al             
  0x00C2AA9D  e856004500              call     0x107aaf8                      
  0x00C2AAA2  2000                    and      byte ptr [eax], al             
  0x00C2AAA4  1b29                    sbb      ebp, dword ptr [ecx]           
  0x00C2AAA6  2000                    and      byte ptr [eax], al             
  0x00C2AAA8  00f0                    add      al, dh                         
  0x00C2AAAA  44                      inc      esp                            
  0x00C2AAAB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AAAE  0000                    add      byte ptr [eax], al             
  0x00C2AAB0  00f4                    add      ah, dh                         
  0x00C2AAB2  46                      inc      esi                            
  0x00C2AAB3  0002                    add      byte ptr [edx], al             
  0x00C2AAB5  0000                    add      byte ptr [eax], al             
  0x00C2AAB7  00d0                    add      al, dl                         
  0x00C2AAB9  f4                      hlt                                     
  0x00C2AABA  44                      inc      esp                            
  0x00C2AABB  001a                    add      byte ptr [edx], bl             
  0x00C2AABD  0900                    or       dword ptr [eax], eax           
  0x00C2AABF  002e                    add      byte ptr [esi], ch             
  0x00C2AAC1  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2AAC6  2000                    and      byte ptr [eax], al             
  0x00C2AAC8  0091210000f4            add      byte ptr [ecx - 0xbffffdf], dl 
  0x00C2AACE  56                      push     esi                            
  0x00C2AACF  0008                    add      byte ptr [eax], cl             
  0x00C2AAD1  06                      push     es                             
  0x00C2AAD2  0000                    add      byte ptr [eax], al             
  0x00C2AAD4  00f0                    add      al, dh                         
  0x00C2AAD6  44                      inc      esp                            
  0x00C2AAD7  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AADA  0000                    add      byte ptr [eax], al             
  0x00C2AADC  40                      inc      eax                            
  0x00C2AADD  0020                    add      byte ptr [eax], ah             
  0x00C2AADF  0000                    add      byte ptr [eax], al             
  0x00C2AAE1  90                      nop                                     
  0x00C2AAE2  2100                    and      dword ptr [eax], eax           
  0x00C2AAE4  00e1                    add      cl, ah                         
  0x00C2AAE6  44                      inc      esp                            
  0x00C2AAE7  0000                    add      byte ptr [eax], al             
  0x00C2AAE9  f4                      hlt                                     
  0x00C2AAEA  46                      inc      esi                            
  0x00C2AAEB  00ff                    add      bh, bh                         
  0x00C2AAEE  7f00                    jg       0xc2aaf0                       
                                        ; XREF: 0x00C2AAEE (cond_jump)
  0x00C2AAF0  d0e0                    shl      al, 1                          
  0x00C2AAF2  44                      inc      esp                            
  0x00C2AAF3  004500                  add      byte ptr [ebp], al             
  0x00C2AAF6  2000                    and      byte ptr [eax], al             
  0x00C2AAF8  1b29                    sbb      ebp, dword ptr [ecx]           
  0x00C2AAFA  2000                    and      byte ptr [eax], al             
  0x00C2AAFC  00f4                    add      ah, dh                         
  0x00C2AAFE  56                      push     esi                            
  0x00C2AAFF  0026                    add      byte ptr [esi], ah             
  0x00C2AB01  0900                    or       dword ptr [eax], eax           
  0x00C2AB03  0000                    add      byte ptr [eax], al             
  0x00C2AB06  44                      inc      esp                            
  0x00C2AB07  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AB0A  0000                    add      byte ptr [eax], al             
  0x00C2AB0C  40                      inc      eax                            
  0x00C2AB0D  0020                    add      byte ptr [eax], ah             
  0x00C2AB0F  0000                    add      byte ptr [eax], al             
  0x00C2AB11  90                      nop                                     
  0x00C2AB12  2100                    and      dword ptr [eax], eax           
  0x00C2AB14  006055                  add      byte ptr [eax + 0x55], ah      
  0x00C2AB17  0000                    add      byte ptr [eax], al             
  0x00C2AB1A  44                      inc      esp                            
  0x00C2AB1B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AB1E  0000                    add      byte ptr [eax], al             
  0x00C2AB20  00f4                    add      ah, dh                         
  0x00C2AB22  46                      inc      esi                            
  0x00C2AB23  0012                    add      byte ptr [edx], dl             
  0x00C2AB25  0000                    add      byte ptr [eax], al             
  0x00C2AB27  00d0                    add      al, dl                         
  0x00C2AB29  f4                      hlt                                     
  0x00C2AB2A  44                      inc      esp                            
  0x00C2AB2B  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2AB31  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2AB36  2000                    and      byte ptr [eax], al             
  0x00C2AB38  009021000006            add      byte ptr [eax + 0x6000021], dl 
  0x00C2AB3E  3800                    cmp      byte ptr [eax], al             
  0x00C2AB40  00f4                    add      ah, dh                         
  0x00C2AB42  6200                    bound    eax, qword ptr [eax]           
  0x00C2AB44  ac                      lodsb    al, byte ptr [esi]             
  0x00C2AB45  0800                    or       byte ptr [eax], al             
  0x00C2AB47  0000                    add      byte ptr [eax], al             
  0x00C2AB49  0239                    add      bh, byte ptr [ecx]             
  0x00C2AB4B  001b                    add      byte ptr [ebx], bl             
  0x00C2AB4D  a6                      cmpsb    byte ptr [esi], byte ptr es:[edi] 
  0x00C2AB4E  2000                    and      byte ptr [eax], al             
  0x00C2AB50  90                      nop                                     
  0x00C2AB51  0306                    add      eax, dword ptr [esi]           
  0x00C2AB53  000d00000000            add      byte ptr [0], cl               
  0x00C2AB59  1122                    adc      dword ptr [edx], esp           
  0x00C2AB5B  0000                    add      byte ptr [eax], al             
  0x00C2AB5D  da4f00                  fimul    dword ptr [edi]                
  0x00C2AB60  004920                  add      byte ptr [ecx + 0x20], cl      
  0x00C2AB63  0000                    add      byte ptr [eax], al             
  0x00C2AB65  d1440010                rol      dword ptr [eax + eax + 0x10], 1 
  0x00C2AB69  c60600                  mov      byte ptr [esi], 0              
  0x00C2AB6C  0400                    add      al, 0                          
  0x00C2AB6E  0000                    add      byte ptr [eax], al             
  0x00C2AB70  c0c944                  ror      cl, 0x44                       
  0x00C2AB73  0045d1                  add      byte ptr [ebp - 0x2f], al      
  0x00C2AB76  44                      inc      esp                            
  0x00C2AB77  006870                  add      byte ptr [eax + 0x70], ch      
  0x00C2AB7A  0200                    add      al, byte ptr [eax]             
  0x00C2AB7C  00ce                    add      dh, cl                         
  0x00C2AB7E  2000                    and      byte ptr [eax], al             
  0x00C2AB80  324820                  xor      cl, byte ptr [eax + 0x20]      
  0x00C2AB83  0000                    add      byte ptr [eax], al             
  0x00C2AB85  8621                    xchg     byte ptr [ecx], ah             
  0x00C2AB87  0000                    add      byte ptr [eax], al             
  0x00C2AB8A  44                      inc      esp                            
  0x00C2AB8B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AB8E  0000                    add      byte ptr [eax], al             
  0x00C2AB90  00f4                    add      ah, dh                         
  0x00C2AB92  46                      inc      esi                            
  0x00C2AB93  0012                    add      byte ptr [edx], dl             
  0x00C2AB95  0000                    add      byte ptr [eax], al             
  0x00C2AB97  00d0                    add      al, dl                         
  0x00C2AB99  f4                      hlt                                     
  0x00C2AB9A  44                      inc      esp                            
  0x00C2AB9B  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2ABA1  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2ABA6  2000                    and      byte ptr [eax], al             
  0x00C2ABA8  009021000002            add      byte ptr [eax + 0x2000021], dl 
  0x00C2ABAE  3800                    cmp      byte ptr [eax], al             
  0x00C2ABB0  00f4                    add      ah, dh                         
  0x00C2ABB2  44                      inc      esp                            
  0x00C2ABB3  0000                    add      byte ptr [eax], al             
  0x00C2ABB5  3200                    xor      al, byte ptr [eax]             
  0x00C2ABB7  0000                    add      byte ptr [eax], al             
  0x00C2ABB9  e856004500              call     0x107ac14                      
  0x00C2ABBE  2000                    and      byte ptr [eax], al             
  0x00C2ABC0  1b29                    sbb      ebp, dword ptr [ecx]           
  0x00C2ABC2  2000                    and      byte ptr [eax], al             
  0x00C2ABC4  00f0                    add      al, dh                         
  0x00C2ABC6  44                      inc      esp                            
  0x00C2ABC7  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2ABCA  0000                    add      byte ptr [eax], al             
  0x00C2ABCC  00f4                    add      ah, dh                         
  0x00C2ABCE  46                      inc      esi                            
  0x00C2ABCF  0002                    add      byte ptr [edx], al             
  0x00C2ABD1  0000                    add      byte ptr [eax], al             
  0x00C2ABD3  00d0                    add      al, dl                         
  0x00C2ABD5  f4                      hlt                                     
  0x00C2ABD6  44                      inc      esp                            
  0x00C2ABD7  001a                    add      byte ptr [edx], bl             
  0x00C2ABD9  0900                    or       dword ptr [eax], eax           
  0x00C2ABDB  002e                    add      byte ptr [esi], ch             
  0x00C2ABDD  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2ABE2  2000                    and      byte ptr [eax], al             
  0x00C2ABE4  0091210000f4            add      byte ptr [ecx - 0xbffffdf], dl 
  0x00C2ABEA  56                      push     esi                            
  0x00C2ABEB  0008                    add      byte ptr [eax], cl             
  0x00C2ABED  06                      push     es                             
  0x00C2ABEE  0000                    add      byte ptr [eax], al             
  0x00C2ABF0  00f0                    add      al, dh                         
  0x00C2ABF2  44                      inc      esp                            
  0x00C2ABF3  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2ABF6  0000                    add      byte ptr [eax], al             
  0x00C2ABF8  40                      inc      eax                            
  0x00C2ABF9  0020                    add      byte ptr [eax], ah             
  0x00C2ABFB  0000                    add      byte ptr [eax], al             
  0x00C2ABFD  90                      nop                                     
  0x00C2ABFE  2100                    and      dword ptr [eax], eax           
  0x00C2AC00  00e1                    add      cl, ah                         
  0x00C2AC02  44                      inc      esp                            
  0x00C2AC03  0000                    add      byte ptr [eax], al             
  0x00C2AC05  f4                      hlt                                     
  0x00C2AC06  46                      inc      esi                            
  0x00C2AC07  0000                    add      byte ptr [eax], al             
  0x00C2AC09  004000                  add      byte ptr [eax], al             
  0x00C2AC0C  d0e0                    shl      al, 1                          
  0x00C2AC0E  46                      inc      esi                            
  0x00C2AC0F  005560                  add      byte ptr [ebp + 0x60], dl      
  0x00C2AC12  44                      inc      esp                            
  0x00C2AC13  001b                    add      byte ptr [ebx], bl             
  0x00C2AC15  2920                    sub      dword ptr [eax], esp           
  0x00C2AC17  0000                    add      byte ptr [eax], al             
  0x00C2AC19  f4                      hlt                                     
  0x00C2AC1A  56                      push     esi                            
  0x00C2AC1B  007f0b                  add      byte ptr [edi + 0xb], bh       
  0x00C2AC1E  0000                    add      byte ptr [eax], al             
  0x00C2AC20  00f0                    add      al, dh                         
  0x00C2AC22  44                      inc      esp                            
  0x00C2AC23  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AC26  0000                    add      byte ptr [eax], al             
  0x00C2AC28  40                      inc      eax                            
  0x00C2AC29  0020                    add      byte ptr [eax], ah             
  0x00C2AC2B  0000                    add      byte ptr [eax], al             
  0x00C2AC2D  90                      nop                                     
  0x00C2AC2E  2100                    and      dword ptr [eax], eax           
  0x00C2AC30  006055                  add      byte ptr [eax + 0x55], ah      
  0x00C2AC33  0000                    add      byte ptr [eax], al             
  0x00C2AC36  44                      inc      esp                            
  0x00C2AC37  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AC3A  0000                    add      byte ptr [eax], al             
  0x00C2AC3C  00f4                    add      ah, dh                         
  0x00C2AC3E  46                      inc      esi                            
  0x00C2AC3F  0012                    add      byte ptr [edx], dl             
  0x00C2AC41  0000                    add      byte ptr [eax], al             
  0x00C2AC43  00d0                    add      al, dl                         
  0x00C2AC45  f4                      hlt                                     
  0x00C2AC46  44                      inc      esp                            
  0x00C2AC47  00ae0500002e            add      byte ptr [esi + 0x2e000005], ch 
  0x00C2AC4D  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2AC52  2000                    and      byte ptr [eax], al             
  0x00C2AC54  009021000006            add      byte ptr [eax + 0x6000021], dl 
  0x00C2AC5A  3800                    cmp      byte ptr [eax], al             
  0x00C2AC5C  00ae20009003            add      byte ptr [esi + 0x3900020], ch 
  0x00C2AC62  06                      push     es                             
  0x00C2AC63  000a                    add      byte ptr [edx], cl             
  0x00C2AC65  0000                    add      byte ptr [eax], al             
  0x00C2AC67  0000                    add      byte ptr [eax], al             
  0x00C2AC69  1122                    adc      dword ptr [edx], esp           
  0x00C2AC6B  0000                    add      byte ptr [eax], al             
  0x00C2AC6D  99                      cdq                                     
  0x00C2AC6E  2100                    and      dword ptr [eax], eax           
  0x00C2AC70  0012                    add      byte ptr [edx], dl             
  0x00C2AC72  2200                    and      al, byte ptr [eax]             
  0x00C2AC74  004920                  add      byte ptr [ecx + 0x20], cl      
  0x00C2AC77  0000                    add      byte ptr [eax], al             
  0x00C2AC79  d9440000                fld      dword ptr [eax + eax]          
  0x00C2AC7D  5a                      pop      edx                            
  0x00C2AC7E  44                      inc      esp                            
  0x00C2AC7F  0000                    add      byte ptr [eax], al             
  0x00C2AC81  d9440000                fld      dword ptr [eax + eax]          
  0x00C2AC85  5a                      pop      edx                            
  0x00C2AC86  44                      inc      esp                            
  0x00C2AC87  0032                    add      byte ptr [edx], dh             
  0x00C2AC89  48                      dec      eax                            
  0x00C2AC8A  2000                    and      byte ptr [eax], al             
  0x00C2AC8C  0c00                    or       al, 0                          
  0x00C2AC8E  0000                    add      byte ptr [eax], al             
  0x00C2AC90  00f4                    add      ah, dh                         
  0x00C2AC92  56                      push     esi                            
  0x00C2AC93  007f0b                  add      byte ptr [edi + 0xb], bh       
  0x00C2AC96  0000                    add      byte ptr [eax], al             
  0x00C2AC98  00f0                    add      al, dh                         
  0x00C2AC9A  44                      inc      esp                            
  0x00C2AC9B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AC9E  0000                    add      byte ptr [eax], al             
  0x00C2ACA0  40                      inc      eax                            
  0x00C2ACA1  0020                    add      byte ptr [eax], ah             
  0x00C2ACA3  0000                    add      byte ptr [eax], al             
  0x00C2ACA5  90                      nop                                     
  0x00C2ACA6  2100                    and      dword ptr [eax], eax           
  0x00C2ACA8  00f4                    add      ah, dh                         
  0x00C2ACAA  56                      push     esi                            
  0x00C2ACAB  000d06000000            add      byte ptr [6], cl               
  0x00C2ACB2  44                      inc      esp                            
  0x00C2ACB3  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2ACB6  0000                    add      byte ptr [eax], al             
  0x00C2ACB8  40                      inc      eax                            
  0x00C2ACB9  0020                    add      byte ptr [eax], ah             
  0x00C2ACBB  0000                    add      byte ptr [eax], al             
  0x00C2ACBD  91                      xchg     ecx, eax                       
  0x00C2ACBE  2100                    and      dword ptr [eax], eax           
  0x00C2ACC0  00f4                    add      ah, dh                         
  0x00C2ACC2  56                      push     esi                            
  0x00C2ACC3  00840b000000f0          add      byte ptr [ebx + ecx - 0x10000000], al 
  0x00C2ACCA  44                      inc      esp                            
  0x00C2ACCB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2ACCE  0000                    add      byte ptr [eax], al             
  0x00C2ACD0  40                      inc      eax                            
  0x00C2ACD1  0020                    add      byte ptr [eax], ah             
  0x00C2ACD3  0000                    add      byte ptr [eax], al             
  0x00C2ACD5  92                      xchg     edx, eax                       
  0x00C2ACD6  2100                    and      dword ptr [eax], eax           
  0x00C2ACD8  1be0                    sbb      esp, eax                       
  0x00C2ACDA  44                      inc      esp                            
  0x00C2ACDB  0000                    add      byte ptr [eax], al             
  0x00C2ACDD  e156                    loope    0xc2ad35                       
  0x00C2ACDF  0042f4                  add      byte ptr [edx - 0xc], al       
  0x00C2ACE2  45                      inc      ebp                            
  0x00C2ACE3  0001                    add      byte ptr [ecx], al             
  0x00C2ACE5  0000                    add      byte ptr [eax], al             
  0x00C2ACE7  0068a0                  add      byte ptr [eax - 0x60], ch      
  0x00C2ACEA  0200                    add      al, byte ptr [eax]             
  0x00C2ACEC  006257                  add      byte ptr [edx + 0x57], ah      
  0x00C2ACEF  0000                    add      byte ptr [eax], al             
  0x00C2ACF1  61                      popal                                   
  0x00C2ACF2  44                      inc      esp                            
  0x00C2ACF3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2ACF6  0000                    add      byte ptr [eax], al             
  0x00C2ACF8  00f4                    add      ah, dh                         
  0x00C2ACFA  60                      pushal                                  
  0x00C2ACFB  00fd                    add      ch, bh                         
  0x00C2ACFD  0200                    add      al, byte ptr [eax]             
  0x00C2ACFF  0000                    add      byte ptr [eax], al             
  0x00C2AD02  44                      inc      esp                            
  0x00C2AD03  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AD06  0000                    add      byte ptr [eax], al             
  0x00C2AD08  00f4                    add      ah, dh                         
  0x00C2AD0A  46                      inc      esi                            
  0x00C2AD0B  0080000000d0            add      byte ptr [eax - 0x30000000], al 
  0x00C2AD11  f4                      hlt                                     
  0x00C2AD12  44                      inc      esp                            
  0x00C2AD13  0012                    add      byte ptr [edx], dl             
  0x00C2AD15  06                      push     es                             
  0x00C2AD16  0000                    add      byte ptr [eax], al             
  0x00C2AD18  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2AD1E  2000                    and      byte ptr [eax], al             
  0x00C2AD20  0091210000f4            add      byte ptr [ecx - 0xbffffdf], dl 
  0x00C2AD26  6400b208000000          add      byte ptr fs:[edx + 8], dh      
  0x00C2AD2D  f4                      hlt                                     
  0x00C2AD2E  650000                  add      byte ptr gs:[eax], al          
  0x00C2AD31  0000                    add      byte ptr [eax], al             
  0x00C2AD33  00fc                    add      ah, bh                         
                                        ; XREF: 0x00C2ACDD (cond_jump)
  0x00C2AD35  040d                    add      al, 0xd                        
  0x00C2AD37  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2AD3A  0000                    add      byte ptr [eax], al             
  0x00C2AD3C  00f0                    add      al, dh                         
  0x00C2AD3E  56                      push     esi                            
  0x00C2AD3F  002b                    add      byte ptr [ebx], ch             
  0x00C2AD41  0900                    or       dword ptr [eax], eax           
  0x00C2AD43  0003                    add      byte ptr [ebx], al             
  0x00C2AD45  0020                    add      byte ptr [eax], ah             
  0x00C2AD47  000e                    add      byte ptr [esi], cl             
  0x00C2AD49  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AD4A  050000f460              add      eax, 0x60f40000                
  0x00C2AD4F  0000                    add      byte ptr [eax], al             
  0x00C2AD51  0000                    add      byte ptr [eax], al             
  0x00C2AD53  0000                    add      byte ptr [eax], al             
  0x00C2AD55  f4                      hlt                                     
  0x00C2AD56  61                      popal                                   
  0x00C2AD57  004000                  add      byte ptr [eax], al             
  0x00C2AD5A  0000                    add      byte ptr [eax], al             
  0x00C2AD5C  001422                  add      byte ptr [edx], dl             
  0x00C2AD5F  0000                    add      byte ptr [eax], al             
  0x00C2AD61  35220000f4              xor      eax, 0xf4000022                
  0x00C2AD66  6200                    bound    eax, qword ptr [eax]           
  0x00C2AD68  b20a                    mov      dl, 0xa                        
  0x00C2AD6A  0000                    add      byte ptr [eax], al             
  0x00C2AD6C  00f4                    add      ah, dh                         
  0x00C2AD6E  6600f2                  add      dl, dh                         
  0x00C2AD71  0a00                    or       al, byte ptr [eax]             
  0x00C2AD73  0000                    add      byte ptr [eax], al             
  0x00C2AD75  3f                      aas                                     
  0x00C2AD76  3a00                    cmp      al, byte ptr [eax]             
  0x00C2AD78  4d                      dec      ebp                            
  0x00C2AD79  050d000a0c              add      eax, 0xc0a000d                 
  0x00C2AD7E  050000f460              add      eax, 0x60f40000                
  0x00C2AD83  0000                    add      byte ptr [eax], al             
  0x00C2AD85  0000                    add      byte ptr [eax], al             
  0x00C2AD87  0000                    add      byte ptr [eax], al             
  0x00C2AD89  1422                    adc      al, 0x22                       
  0x00C2AD8B  0000                    add      byte ptr [eax], al             
  0x00C2AD8D  f4                      hlt                                     
  0x00C2AD8E  6200                    bound    eax, qword ptr [eax]           
  0x00C2AD90  b209                    mov      dl, 9                          
  0x00C2AD92  0000                    add      byte ptr [eax], al             
  0x00C2AD94  00f4                    add      ah, dh                         
  0x00C2AD96  660032                  add      byte ptr [edx], dh             
  0x00C2AD99  0a00                    or       al, byte ptr [eax]             
  0x00C2AD9B  0000                    add      byte ptr [eax], al             
  0x00C2AD9D  7f3a                    jg       0xc2add9                       
  0x00C2AD9F  003e                    add      byte ptr [esi], bh             
  0x00C2ADA1  050d000c00              add      eax, 0xc000d                   
  0x00C2ADA6  0000                    add      byte ptr [eax], al             
  0x00C2ADA8  a0000500a0              mov      al, byte ptr [0xa0000500]      
  0x00C2ADAD  61                      popal                                   
  0x00C2ADAE  0400                    add      al, 0                          
  0x00C2ADB0  00f0                    add      al, dh                         
  0x00C2ADB2  56                      push     esi                            
  0x00C2ADB3  002b                    add      byte ptr [ebx], ch             
  0x00C2ADB5  0900                    or       dword ptr [eax], eax           
  0x00C2ADB7  0003                    add      byte ptr [ebx], al             
  0x00C2ADB9  0020                    add      byte ptr [eax], ah             
  0x00C2ADBB  0015a4050000            add      byte ptr [0x5a4], dl           
  0x00C2ADC1  f4                      hlt                                     
  0x00C2ADC2  60                      pushal                                  
  0x00C2ADC3  0000                    add      byte ptr [eax], al             
  0x00C2ADC5  0000                    add      byte ptr [eax], al             
  0x00C2ADC7  0000                    add      byte ptr [eax], al             
  0x00C2ADC9  f4                      hlt                                     
  0x00C2ADCA  61                      popal                                   
  0x00C2ADCB  004000                  add      byte ptr [eax], al             
  0x00C2ADCE  0000                    add      byte ptr [eax], al             
  0x00C2ADD0  00f4                    add      ah, dh                         
  0x00C2ADD2  6400fd                  add      ch, bh                         
  0x00C2ADD5  0300                    add      eax, dword ptr [eax]           
  0x00C2ADD7  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2AD9D (cond_jump)
  0x00C2ADD9  f4                      hlt                                     
  0x00C2ADDA  6500fc                  add      ah, bh                         
  0x00C2ADDD  0400                    add      al, 0                          
  0x00C2ADDF  0000                    add      byte ptr [eax], al             
  0x00C2ADE1  f4                      hlt                                     
  0x00C2ADE2  6200                    bound    eax, qword ptr [eax]           
  0x00C2ADE4  b20a                    mov      dl, 0xa                        
  0x00C2ADE6  0000                    add      byte ptr [eax], al             
  0x00C2ADE8  00f4                    add      ah, dh                         
  0x00C2ADEA  6600f2                  add      dl, dh                         
  0x00C2ADED  0a00                    or       al, byte ptr [eax]             
  0x00C2ADEF  0000                    add      byte ptr [eax], al             
  0x00C2ADF1  2038                    and      byte ptr [eax], bh             
  0x00C2ADF3  0000                    add      byte ptr [eax], al             
  0x00C2ADF5  1923                    sbb      dword ptr [ebx], esp           
  0x00C2ADF7  0000                    add      byte ptr [eax], al             
  0x00C2ADF9  3f                      aas                                     
  0x00C2ADFA  3a00                    cmp      al, byte ptr [eax]             
  0x00C2ADFC  0003                    add      byte ptr [ebx], al             
  0x00C2ADFE  3c00                    cmp      al, 0                          
  0x00C2AE00  00f4                    add      ah, dh                         
  0x00C2AE02  7500                    jne      0xc2ae04                       
                                        ; XREF: 0x00C2AE02 (cond_jump)
  0x00C2AE04  fd                      std                                     
  0x00C2AE06  ff00                    inc      dword ptr [eax]                
  0x00C2AE08  7305                    jae      0xc2ae0f                       
  0x00C2AE0A  0d00110c05              or       eax, 0x50c1100                 
                                        ; XREF: 0x00C2AE08 (cond_jump)
  0x00C2AE0F  0000                    add      byte ptr [eax], al             
  0x00C2AE11  f4                      hlt                                     
  0x00C2AE12  60                      pushal                                  
  0x00C2AE13  0000                    add      byte ptr [eax], al             
  0x00C2AE15  0000                    add      byte ptr [eax], al             
  0x00C2AE17  0000                    add      byte ptr [eax], al             
  0x00C2AE19  f4                      hlt                                     
  0x00C2AE1A  6400fd                  add      ch, bh                         
  0x00C2AE1D  0300                    add      eax, dword ptr [eax]           
  0x00C2AE1F  0000                    add      byte ptr [eax], al             
  0x00C2AE21  f4                      hlt                                     
  0x00C2AE22  6500fc                  add      ah, bh                         
  0x00C2AE25  0400                    add      al, 0                          
  0x00C2AE27  0000                    add      byte ptr [eax], al             
  0x00C2AE29  f4                      hlt                                     
  0x00C2AE2A  6200                    bound    eax, qword ptr [eax]           
  0x00C2AE2C  b209                    mov      dl, 9                          
  0x00C2AE2E  0000                    add      byte ptr [eax], al             
  0x00C2AE30  00f4                    add      ah, dh                         
  0x00C2AE32  660032                  add      byte ptr [edx], dh             
  0x00C2AE35  0a00                    or       al, byte ptr [eax]             
  0x00C2AE37  0000                    add      byte ptr [eax], al             
  0x00C2AE39  40                      inc      eax                            
  0x00C2AE3A  3800                    cmp      byte ptr [eax], al             
  0x00C2AE3C  007f3a                  add      byte ptr [edi + 0x3a], bh      
  0x00C2AE3F  0000                    add      byte ptr [eax], al             
  0x00C2AE41  023c00                  add      bh, byte ptr [eax + eax]       
  0x00C2AE44  00f4                    add      ah, dh                         
  0x00C2AE46  7500                    jne      0xc2ae48                       
  0x00C2AE4A  ff00                    inc      dword ptr [eax]                
  0x00C2AE4C  64050d0020f4            add      eax, 0xf420000d                
  0x00C2AE52  0500ffff00              add      eax, 0xffff00                  
  0x00C2AE57  00a061040000            add      byte ptr [eax + 0x461], ah     
  0x00C2AE5E  56                      push     esi                            
  0x00C2AE5F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AE62  0000                    add      byte ptr [eax], al             
  0x00C2AE64  00f0                    add      al, dh                         
  0x00C2AE66  44                      inc      esp                            
  0x00C2AE67  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2AE6D  f4                      hlt                                     
  0x00C2AE6E  60                      pushal                                  
  0x00C2AE6F  00fd                    add      ch, bh                         
  0x00C2AE71  0300                    add      eax, dword ptr [eax]           
  0x00C2AE73  0008                    add      byte ptr [eax], cl             
  0x00C2AE75  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AE76  050000f461              add      eax, 0x61f40000                
  0x00C2AE7B  008001000090            add      byte ptr [eax - 0x6fffffff], al 
  0x00C2AE81  b506                    mov      ch, 6                          
  0x00C2AE83  0003                    add      byte ptr [ebx], al             
  0x00C2AE85  0000                    add      byte ptr [eax], al             
  0x00C2AE87  0000                    add      byte ptr [eax], al             
  0x00C2AE89  d8440000                fadd     dword ptr [eax + eax]          
  0x00C2AE8D  59                      pop      ecx                            
  0x00C2AE8E  44                      inc      esp                            
  0x00C2AE8F  0007                    add      byte ptr [edi], al             
  0x00C2AE91  0c05                    or       al, 5                          
  0x00C2AE93  0000                    add      byte ptr [eax], al             
  0x00C2AE95  f4                      hlt                                     
  0x00C2AE96  61                      popal                                   
  0x00C2AE97  003502000090            add      byte ptr [0x90000002], dh      
  0x00C2AE9D  07                      pop      es                             
  0x00C2AE9E  06                      push     es                             
  0x00C2AE9F  0003                    add      byte ptr [ebx], al             
  0x00C2AEA1  0000                    add      byte ptr [eax], al             
  0x00C2AEA3  0000                    add      byte ptr [eax], al             
  0x00C2AEA5  d8440000                fadd     dword ptr [eax + eax]          
  0x00C2AEA9  59                      pop      ecx                            
  0x00C2AEAA  44                      inc      esp                            
  0x00C2AEAB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2AEAE  0000                    add      byte ptr [eax], al             
  0x00C2AEB0  00f0                    add      al, dh                         
  0x00C2AEB2  56                      push     esi                            
  0x00C2AEB3  002b                    add      byte ptr [ebx], ch             
  0x00C2AEB5  0900                    or       dword ptr [eax], eax           
  0x00C2AEB7  0003                    add      byte ptr [ebx], al             
  0x00C2AEB9  0020                    add      byte ptr [eax], ah             
  0x00C2AEBB  000a                    add      byte ptr [edx], cl             
  0x00C2AEBD  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AEBE  050000f460              add      eax, 0x60f40000                
  0x00C2AEC3  0000                    add      byte ptr [eax], al             
  0x00C2AEC5  0000                    add      byte ptr [eax], al             
  0x00C2AEC7  0000                    add      byte ptr [eax], al             
  0x00C2AEC9  40                      inc      eax                            
  0x00C2AECA  3800                    cmp      byte ptr [eax], al             
  0x00C2AECC  ef                      out      dx, eax                        
  0x00C2AECD  030d0000f460            add      ecx, dword ptr [0x60f40000]    
  0x00C2AED3  004000                  add      byte ptr [eax], al             
  0x00C2AED6  0000                    add      byte ptr [eax], al             
  0x00C2AED8  004038                  add      byte ptr [eax + 0x38], al      
  0x00C2AEDB  00ef                    add      bh, ch                         
  0x00C2AEDD  030d00050c05            add      ecx, dword ptr [0x50c0500]     
  0x00C2AEE3  0000                    add      byte ptr [eax], al             
  0x00C2AEE5  f4                      hlt                                     
  0x00C2AEE6  60                      pushal                                  
  0x00C2AEE7  0000                    add      byte ptr [eax], al             
  0x00C2AEE9  0000                    add      byte ptr [eax], al             
  0x00C2AEEB  0000                    add      byte ptr [eax], al             
  0x00C2AEED  803800                  cmp      byte ptr [eax], 0              
  0x00C2AEF0  ef                      out      dx, eax                        
  0x00C2AEF1  030d000c0000            add      ecx, dword ptr [0xc00]         
  0x00C2AEF7  0000                    add      byte ptr [eax], al             
  0x00C2AEFA  56                      push     esi                            
  0x00C2AEFB  00970b000000            add      byte ptr [edi + 0xb], dl       
  0x00C2AF02  44                      inc      esp                            
  0x00C2AF03  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AF06  0000                    add      byte ptr [eax], al             
  0x00C2AF08  45                      inc      ebp                            
  0x00C2AF09  f4                      hlt                                     
  0x00C2AF0A  45                      inc      ebp                            
  0x00C2AF0B  0001                    add      byte ptr [ecx], al             
  0x00C2AF0D  0000                    add      byte ptr [eax], al             
  0x00C2AF0F  0003                    add      byte ptr [ebx], al             
  0x00C2AF11  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AF12  05000d0805              add      eax, 0x5080d00                 
  0x00C2AF17  0003                    add      byte ptr [ebx], al             
  0x00C2AF19  0c05                    or       al, 5                          
  0x00C2AF1B  0000                    add      byte ptr [eax], al             
  0x00C2AF1D  7045                    jo       0xc2af64                       
  0x00C2AF1F  008f0b000000            add      byte ptr [edi + 0xb], cl       
  0x00C2AF25  f4                      hlt                                     
  0x00C2AF26  60                      pushal                                  
  0x00C2AF27  007f0b                  add      byte ptr [edi + 0xb], bh       
  0x00C2AF2A  0000                    add      byte ptr [eax], al             
  0x00C2AF2C  00f4                    add      ah, dh                         
  0x00C2AF2E  61                      popal                                   
  0x00C2AF2F  00a305000090            add      byte ptr [ebx - 0x6ffffffb], ah 
  0x00C2AF35  0506000300              add      eax, 0x30006                   
  0x00C2AF3A  0000                    add      byte ptr [eax], al             
  0x00C2AF3C  00d8                    add      al, bl                         
  0x00C2AF3E  44                      inc      esp                            
  0x00C2AF3F  0000                    add      byte ptr [eax], al             
  0x00C2AF41  59                      pop      ecx                            
  0x00C2AF42  44                      inc      esp                            
  0x00C2AF43  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2AF46  0000                    add      byte ptr [eax], al             
  0x00C2AF48  0003                    add      byte ptr [ebx], al             
  0x00C2AF4A  2900                    sub      dword ptr [eax], eax           
  0x00C2AF4C  00f0                    add      al, dh                         
  0x00C2AF4E  7000                    jo       0xc2af50                       
                                        ; XREF: 0x00C2AF4E (cond_jump)
  0x00C2AF50  41                      inc      ecx                            
  0x00C2AF51  0b00                    or       eax, dword ptr [eax]           
  0x00C2AF53  0000                    add      byte ptr [eax], al             
  0x00C2AF55  f4                      hlt                                     
  0x00C2AF56  60                      pushal                                  
  0x00C2AF57  007f0b                  add      byte ptr [edi + 0xb], bh       
  0x00C2AF5A  0000                    add      byte ptr [eax], al             
  0x00C2AF5C  00e8                    add      al, ch                         
  0x00C2AF5E  56                      push     esi                            
  0x00C2AF5F  008541010010            add      byte ptr [ebp + 0x10000141], al 
  0x00C2AF65  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AF66  050000f460              add      eax, 0x60f40000                
  0x00C2AF6B  0026                    add      byte ptr [esi], ah             
  0x00C2AF6D  0900                    or       dword ptr [eax], eax           
  0x00C2AF6F  0000                    add      byte ptr [eax], al             
  0x00C2AF71  e856008541              call     0x4247afcc                     
  0x00C2AF76  0100                    add      dword ptr [eax], eax           
  0x00C2AF78  0ba4050000f056          or       esp, dword ptr [ebp + eax + 0x56f00000] 
  0x00C2AF7F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2AF82  0000                    add      byte ptr [eax], al             
  0x00C2AF84  854001                  test     dword ptr [eax + 1], eax       
  0x00C2AF87  0006                    add      byte ptr [esi], al             
  0x00C2AF89  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AF8A  050000f460              add      eax, 0x60f40000                
  0x00C2AF8F  00a305000000            add      byte ptr [ebx + 5], ah         
  0x00C2AF95  e856008541              call     0x4247aff0                     
  0x00C2AF9A  0100                    add      dword ptr [eax], eax           
  0x00C2AF9C  02a40500000229          add      ah, byte ptr [ebp + eax + 0x29020000] 
  0x00C2AFA3  0000                    add      byte ptr [eax], al             
  0x00C2AFA5  f4                      hlt                                     
  0x00C2AFA6  60                      pushal                                  
  0x00C2AFA7  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2AFAD  6851000c00              push     0xc0051                        
  0x00C2AFB2  0000                    add      byte ptr [eax], al             
  0x00C2AFB4  0018                    add      byte ptr [eax], bl             
  0x00C2AFB6  3d0000f044              cmp      eax, 0x44f00000                
  0x00C2AFBB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2AFBE  0000                    add      byte ptr [eax], al             
  0x00C2AFC0  00f0                    add      al, dh                         
  0x00C2AFC2  56                      push     esi                            
  0x00C2AFC3  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2AFC9  f4                      hlt                                     
  0x00C2AFCA  60                      pushal                                  
  0x00C2AFCB  00800100000c            add      byte ptr [eax + 0xc000001], al 
  0x00C2AFD1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2AFD2  0500009620              add      eax, 0x20960000                
  0x00C2AFD7  0000                    add      byte ptr [eax], al             
  0x00C2AFD9  f4                      hlt                                     
  0x00C2AFDA  61                      popal                                   
  0x00C2AFDB  004102                  add      byte ptr [ecx + 2], al         
  0x00C2AFDE  0000                    add      byte ptr [eax], al             
  0x00C2AFE0  00f4                    add      ah, dh                         
  0x00C2AFE2  56                      push     esi                            
  0x00C2AFE3  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2AFE9  c422                    les      esp, ptr [edx]                 
  0x00C2AFEB  004000                  add      byte ptr [eax], al             
  0x00C2AFEE  2000                    and      byte ptr [eax], al             
  0x00C2AFF0  0092210000e2            add      byte ptr [edx - 0x1dffffdf], dl 
  0x00C2AFF6  7100                    jno      0xc2aff8                       
                                        ; XREF: 0x00C2AFF6 (cond_jump)
  0x00C2AFF8  8b050d000a0c            mov      eax, dword ptr [0xc0a000d]     
  0x00C2AFFE  050000f056              add      eax, 0x56f00000                
  0x00C2B003  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2B006  0000                    add      byte ptr [eax], al             
  0x00C2B008  03f4                    add      esi, esp                       
  0x00C2B00A  60                      pushal                                  
  0x00C2B00B  003502000005            add      byte ptr [0x5000002], dh       
  0x00C2B011  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2B012  050000f461              add      eax, 0x61f40000                
  0x00C2B017  00f6                    add      dh, dh                         
  0x00C2B019  0200                    add      al, byte ptr [eax]             
  0x00C2B01B  0000                    add      byte ptr [eax], al             
  0x00C2B01D  07                      pop      es                             
  0x00C2B01E  3900                    cmp      dword ptr [eax], eax           
  0x00C2B020  8b050d000c00            mov      eax, dword ptr [0xc000d]       
  0x00C2B026  0000                    add      byte ptr [eax], al             
  0x00C2B028  00f0                    add      al, dh                         
  0x00C2B02A  44                      inc      esp                            
  0x00C2B02B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2B02E  0000                    add      byte ptr [eax], al             
  0x00C2B030  00f0                    add      al, dh                         
  0x00C2B032  56                      push     esi                            
  0x00C2B033  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2B039  f4                      hlt                                     
  0x00C2B03A  61                      popal                                   
  0x00C2B03B  004102                  add      byte ptr [ecx + 2], al         
  0x00C2B03E  0000                    add      byte ptr [eax], al             
  0x00C2B040  59                      pop      ecx                            
  0x00C2B041  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2B042  050000f456              add      eax, 0x56f40000                
  0x00C2B047  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2B04E  44                      inc      esp                            
  0x00C2B04F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2B052  0000                    add      byte ptr [eax], al             
  0x00C2B054  40                      inc      eax                            
  0x00C2B055  0020                    add      byte ptr [eax], ah             
  0x00C2B057  0000                    add      byte ptr [eax], al             
  0x00C2B059  90                      nop                                     
  0x00C2B05A  2100                    and      dword ptr [eax], eax           
  0x00C2B05C  00f4                    add      ah, dh                         
  0x00C2B05E  56                      push     esi                            
  0x00C2B05F  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2B066  44                      inc      esp                            
  0x00C2B067  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2B06A  0000                    add      byte ptr [eax], al             
  0x00C2B06C  40                      inc      eax                            
  0x00C2B06D  0020                    add      byte ptr [eax], ah             
  0x00C2B06F  0000                    add      byte ptr [eax], al             
  0x00C2B071  92                      xchg     edx, eax                       
  0x00C2B072  2100                    and      dword ptr [eax], eax           
  0x00C2B074  00e0                    add      al, ah                         
  0x00C2B076  56                      push     esi                            
  0x00C2B077  0000                    add      byte ptr [eax], al             
  0x00C2B079  e271                    loop     0xc2b0ec                       
  0x00C2B07B  0000                    add      byte ptr [eax], al             
  0x00C2B07D  94                      xchg     esp, eax                       
  0x00C2B07E  2100                    and      dword ptr [eax], eax           
  0x00C2B080  0036                    add      byte ptr [esi], dh             
  0x00C2B082  2200                    and      al, byte ptr [eax]             
  0x00C2B084  00f4                    add      ah, dh                         
  0x00C2B086  56                      push     esi                            
  0x00C2B087  005c0b00                add      byte ptr [ebx + ecx], bl       
  0x00C2B08B  0000                    add      byte ptr [eax], al             
  0x00C2B08E  44                      inc      esp                            
  0x00C2B08F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2B092  0000                    add      byte ptr [eax], al             
  0x00C2B094  40                      inc      eax                            
  0x00C2B095  0020                    add      byte ptr [eax], ah             
  0x00C2B097  0000                    add      byte ptr [eax], al             
  0x00C2B099  90                      nop                                     
  0x00C2B09A  2100                    and      dword ptr [eax], eax           
  0x00C2B09C  00f4                    add      ah, dh                         
  0x00C2B09E  56                      push     esi                            
  0x00C2B09F  00910b000000            add      byte ptr [ecx + 0xb], dl       
  0x00C2B0A6  44                      inc      esp                            
  0x00C2B0A7  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2B0AA  0000                    add      byte ptr [eax], al             
  0x00C2B0AC  40                      inc      eax                            
  0x00C2B0AD  0020                    add      byte ptr [eax], ah             
  0x00C2B0AF  0000                    add      byte ptr [eax], al             
  0x00C2B0B1  92                      xchg     edx, eax                       
  0x00C2B0B2  2100                    and      dword ptr [eax], eax           
  0x00C2B0B4  002e                    add      byte ptr [esi], ch             
  0x00C2B0B6  2300                    and      eax, dword ptr [eax]           
  0x00C2B0B8  844101                  test     byte ptr [ecx + 1], al         
  0x00C2B0BB  00c4                    add      ah, al                         
  0x00C2B0BD  740b                    je       0xc2b0ca                       
  0x00C2B0BF  0016                    add      byte ptr [esi], dl             
  0x00C2B0C1  0f0000                  sldt     word ptr [eax]                 
  0x00C2B0C4  00852100adf4            add      byte ptr [ebp - 0xb52ffdf], al 
                                        ; XREF: 0x00C2B0BD (cond_jump)
  0x00C2B0CA  47                      inc      edi                            
  0x00C2B0CB  0001                    add      byte ptr [ecx], al             
  0x00C2B0CD  0000                    add      byte ptr [eax], al             
  0x00C2B0CF  00c4                    add      ah, al                         
  0x00C2B0D1  740b                    je       0xc2b0de                       
  0x00C2B0D3  0012                    add      byte ptr [edx], dl             
  0x00C2B0D5  0f0000                  sldt     word ptr [eax]                 
  0x00C2B0D8  00e6                    add      dh, ah                         
  0x00C2B0DA  2100                    and      dword ptr [eax], eax           
  0x00C2B0DC  d09d20002e1d            rcr      byte ptr [ebp + 0x1d2e0020], 1 
  0x00C2B0E2  0c00                    or       al, 0                          
  0x00C2B0E4  65f4                    hlt                                     
  0x00C2B0E6  46                      inc      esi                            
  0x00C2B0E7  00abaa2a0078            add      byte ptr [ebx + 0x78002aaa], ch 
  0x00C2B0ED  2920                    sub      dword ptr [eax], esp           
  0x00C2B0EF  0000                    add      byte ptr [eax], al             
  0x00C2B0F1  60                      pushal                                  
  0x00C2B0F2  55                      push     ebp                            
  0x00C2B0F3  0000                    add      byte ptr [eax], al             
  0x00C2B0F5  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x00C2B0F6  2100                    and      dword ptr [eax], eax           
  0x00C2B0F8  e9bc210082              jmp      0x82c2d2b9                     
  0x00C2B0FD  1d0c001000              sbb      eax, 0x10000c                  
  0x00C2B102  2000                    and      byte ptr [eax], al             
  0x00C2B104  650020                  add      byte ptr gs:[eax], ah          
  0x00C2B107  007829                  add      byte ptr [eax + 0x29], bh      
  0x00C2B10A  2000                    and      byte ptr [eax], al             
  0x00C2B10C  006255                  add      byte ptr [edx + 0x55], ah      
  0x00C2B10F  0000                    add      byte ptr [eax], al             
  0x00C2B111  3222                    xor      ah, byte ptr [edx]             
  0x00C2B113  0000                    add      byte ptr [eax], al             
  0x00C2B115  59                      pop      ecx                            
  0x00C2B116  2000                    and      byte ptr [eax], al             
  0x00C2B118  0000                    add      byte ptr [eax], al             
  0x00C2B11A  3a00                    cmp      al, byte ptr [eax]             
  0x00C2B11C  96                      xchg     esi, eax                       
  0x00C2B11D  050d00110c              add      eax, 0xc11000d                 
  0x00C2B122  050000f056              add      eax, 0x56f00000                
  0x00C2B127  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2B12A  0000                    add      byte ptr [eax], al             
  0x00C2B12C  03f4                    add      esi, esp                       
  0x00C2B12E  60                      pushal                                  
  0x00C2B12F  008f0b00000c            add      byte ptr [edi + 0xc00000b], cl 
  0x00C2B135  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2B136  050000f461              add      eax, 0x61f40000                
  0x00C2B13B  00f6                    add      dh, dh                         
  0x00C2B13D  0200                    add      al, byte ptr [eax]             
  0x00C2B13F  0000                    add      byte ptr [eax], al             
  0x00C2B141  07                      pop      es                             
  0x00C2B142  3900                    cmp      dword ptr [eax], eax           
  0x00C2B144  0036                    add      byte ptr [esi], dh             
  0x00C2B146  2200                    and      al, byte ptr [eax]             
  0x00C2B148  0032                    add      byte ptr [edx], dh             
  0x00C2B14A  2200                    and      al, byte ptr [eax]             
  0x00C2B14C  005920                  add      byte ptr [ecx + 0x20], bl      
  0x00C2B14F  0000                    add      byte ptr [eax], al             
  0x00C2B151  003a                    add      byte ptr [edx], bh             
  0x00C2B153  0000                    add      byte ptr [eax], al             
  0x00C2B155  06                      push     es                             
  0x00C2B156  3c00                    cmp      al, 0                          
  0x00C2B158  00f0                    add      al, dh                         
  0x00C2B15A  7d00                    jge      0xc2b15c                       
                                        ; XREF: 0x00C2B15A (cond_jump)
  0x00C2B15C  130f                    adc      ecx, dword ptr [edi]           
  0x00C2B15E  0000                    add      byte ptr [eax], al             
  0x00C2B160  96                      xchg     esi, eax                       
  0x00C2B161  050d000c00              add      eax, 0xc000d                   
  0x00C2B166  0000                    add      byte ptr [eax], al             
  0x00C2B168  00f0                    add      al, dh                         
  0x00C2B16A  56                      push     esi                            
  0x00C2B16B  004002                  add      byte ptr [eax + 2], al         
  0x00C2B16E  0000                    add      byte ptr [eax], al             
  0x00C2B170  041d                    add      al, 0x1d                       
  0x00C2B172  0c00                    or       al, 0                          
  0x00C2B174  00c7                    add      bh, al                         
  0x00C2B176  2100                    and      dword ptr [eax], eax           
  0x00C2B178  00f4                    add      ah, dh                         
  0x00C2B17A  46                      inc      esi                            
  0x00C2B17B  0003                    add      byte ptr [ebx], al             
  0x00C2B17D  0000                    add      byte ptr [eax], al             
  0x00C2B17F  00b00020002e            add      byte ptr [eax + 0x2e002000], dh 
  0x00C2B185  1d0c00c040              sbb      eax, 0x40c0000c                
  0x00C2B18A  0100                    add      dword ptr [eax], eax           
  0x00C2B18C  49                      dec      ecx                            
  0x00C2B18D  0000                    add      byte ptr [eax], al             
  0x00C2B18F  0000                    add      byte ptr [eax], al             
  0x00C2B192  2100                    and      dword ptr [eax], eax           
  0x00C2B194  00f4                    add      ah, dh                         
  0x00C2B196  61                      popal                                   
  0x00C2B197  00a00b000000            add      byte ptr [eax + 0xb], ah       
  0x00C2B19D  f4                      hlt                                     
  0x00C2B19E  6200                    bound    eax, qword ptr [eax]           
  0x00C2B1A0  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x00C2B1A1  0b00                    or       eax, dword ptr [eax]           
  0x00C2B1A3  0000                    add      byte ptr [eax], al             
  0x00C2B1A6  45                      inc      ebp                            
  0x00C2B1A7  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2B1AD  c506                    lds      eax, ptr [esi]                 
  0x00C2B1AF  0003                    add      byte ptr [ebx], al             
  0x00C2B1B1  0000                    add      byte ptr [eax], al             
  0x00C2B1B3  0000                    add      byte ptr [eax], al             
  0x00C2B1B5  59                      pop      ecx                            
  0x00C2B1B6  47                      inc      edi                            
  0x00C2B1B7  0000                    add      byte ptr [eax], al             
  0x00C2B1B9  5a                      pop      edx                            
  0x00C2B1BA  46                      inc      esi                            
  0x00C2B1BB  0000                    add      byte ptr [eax], al             
  0x00C2B1BD  f4                      hlt                                     
  0x00C2B1BE  57                      push     edi                            
  0x00C2B1BF  0001                    add      byte ptr [ecx], al             
  0x00C2B1C1  0000                    add      byte ptr [eax], al             
  0x00C2B1C3  0000                    add      byte ptr [eax], al             
  0x00C2B1C6  56                      push     esi                            
  0x00C2B1C7  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2B1CA  0000                    add      byte ptr [eax], al             
  0x00C2B1CC  0300                    add      eax, dword ptr [eax]           
  0x00C2B1CE  2000                    and      byte ptr [eax], al             
  0x00C2B1D0  02a405001b0020          add      ah, byte ptr [ebp + eax + 0x20001b00] 
  0x00C2B1D7  0000                    add      byte ptr [eax], al             
  0x00C2B1D9  7057                    jo       0xc2b232                       
  0x00C2B1DB  00900b00000c            add      byte ptr [eax + 0xc00000b], dl 
  0x00C2B1E1  0000                    add      byte ptr [eax], al             
  0x00C2B1E3  0000                    add      byte ptr [eax], al             
  0x00C2B1E5  f4                      hlt                                     
  0x00C2B1E6  56                      push     esi                            
  0x00C2B1E7  000f                    add      byte ptr [edi], cl             
  0x00C2B1E9  0000                    add      byte ptr [eax], al             
  0x00C2B1EB  0000                    add      byte ptr [eax], al             
  0x00C2B1ED  f4                      hlt                                     
  0x00C2B1EE  57                      push     edi                            
  0x00C2B1EF  0000                    add      byte ptr [eax], al             
  0x00C2B1F1  0000                    add      byte ptr [eax], al             
  0x00C2B1F3  0000                    add      byte ptr [eax], al             
  0x00C2B1F5  f4                      hlt                                     
  0x00C2B1F6  7000                    jo       0xc2b1f8                       
                                        ; XREF: 0x00C2B1F6 (cond_jump)
  0x00C2B1F8  16                      push     ss                             
  0x00C2B1F9  0400                    add      al, 0                          
  0x00C2B1FB  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B201  0100                    add      dword ptr [eax], eax           
  0x00C2B203  0003                    add      byte ptr [ebx], al             
  0x00C2B205  0020                    add      byte ptr [eax], ah             
  0x00C2B207  0000                    add      byte ptr [eax], al             
  0x00C2B209  2405                    and      al, 5                          
  0x00C2B20B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B20E  0000                    add      byte ptr [eax], al             
  0x00C2B210  00f4                    add      ah, dh                         
  0x00C2B212  56                      push     esi                            
  0x00C2B213  000f                    add      byte ptr [edi], cl             
  0x00C2B215  0000                    add      byte ptr [eax], al             
  0x00C2B217  0000                    add      byte ptr [eax], al             
  0x00C2B219  f4                      hlt                                     
  0x00C2B21A  57                      push     edi                            
  0x00C2B21B  0001                    add      byte ptr [ecx], al             
  0x00C2B21D  0000                    add      byte ptr [eax], al             
  0x00C2B21F  0000                    add      byte ptr [eax], al             
  0x00C2B221  f4                      hlt                                     
  0x00C2B222  60                      pushal                                  
  0x00C2B223  00fd                    add      ch, bh                         
  0x00C2B225  0400                    add      al, 0                          
  0x00C2B227  0000                    add      byte ptr [eax], al             
  0x00C2B229  f4                      hlt                                     
  0x00C2B22A  7000                    jo       0xc2b22c                       
                                        ; XREF: 0x00C2B22A (cond_jump)
  0x00C2B22C  16                      push     ss                             
  0x00C2B22D  0400                    add      al, 0                          
  0x00C2B22F  0000                    add      byte ptr [eax], al             
  0x00C2B231  0039                    add      byte ptr [ecx], bh             
  0x00C2B233  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B239  0100                    add      dword ptr [eax], eax           
  0x00C2B23B  0003                    add      byte ptr [ebx], al             
  0x00C2B23D  0020                    add      byte ptr [eax], ah             
  0x00C2B23F  0000                    add      byte ptr [eax], al             
  0x00C2B241  2405                    and      al, 5                          
  0x00C2B243  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B246  0000                    add      byte ptr [eax], al             
  0x00C2B248  00f4                    add      ah, dh                         
  0x00C2B24A  56                      push     esi                            
  0x00C2B24B  000f                    add      byte ptr [edi], cl             
  0x00C2B24D  0000                    add      byte ptr [eax], al             
  0x00C2B24F  0000                    add      byte ptr [eax], al             
  0x00C2B251  f4                      hlt                                     
  0x00C2B252  57                      push     edi                            
  0x00C2B253  0002                    add      byte ptr [edx], al             
  0x00C2B255  0000                    add      byte ptr [eax], al             
  0x00C2B257  0000                    add      byte ptr [eax], al             
  0x00C2B259  f4                      hlt                                     
  0x00C2B25A  60                      pushal                                  
  0x00C2B25B  00fd                    add      ch, bh                         
  0x00C2B25D  0400                    add      al, 0                          
  0x00C2B25F  0000                    add      byte ptr [eax], al             
  0x00C2B261  f4                      hlt                                     
  0x00C2B262  7000                    jo       0xc2b264                       
                                        ; XREF: 0x00C2B262 (cond_jump)
  0x00C2B264  16                      push     ss                             
  0x00C2B265  0400                    add      al, 0                          
  0x00C2B267  0000                    add      byte ptr [eax], al             
  0x00C2B269  0039                    add      byte ptr [ecx], bh             
  0x00C2B26B  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B271  0100                    add      dword ptr [eax], eax           
  0x00C2B273  0003                    add      byte ptr [ebx], al             
  0x00C2B275  0020                    add      byte ptr [eax], ah             
  0x00C2B277  0000                    add      byte ptr [eax], al             
  0x00C2B279  2405                    and      al, 5                          
  0x00C2B27B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B27E  0000                    add      byte ptr [eax], al             
  0x00C2B280  00f4                    add      ah, dh                         
  0x00C2B282  56                      push     esi                            
  0x00C2B283  0016                    add      byte ptr [esi], dl             
  0x00C2B285  0000                    add      byte ptr [eax], al             
  0x00C2B287  0000                    add      byte ptr [eax], al             
  0x00C2B289  f4                      hlt                                     
  0x00C2B28A  57                      push     edi                            
  0x00C2B28B  0001                    add      byte ptr [ecx], al             
  0x00C2B28D  0000                    add      byte ptr [eax], al             
  0x00C2B28F  0000                    add      byte ptr [eax], al             
  0x00C2B291  0039                    add      byte ptr [ecx], bh             
  0x00C2B293  0000                    add      byte ptr [eax], al             
  0x00C2B295  f4                      hlt                                     
  0x00C2B296  7000                    jo       0xc2b298                       
                                        ; XREF: 0x00C2B296 (cond_jump)
  0x00C2B298  800000                  add      byte ptr [eax], 0              
  0x00C2B29B  0000                    add      byte ptr [eax], al             
  0x00C2B29D  f4                      hlt                                     
  0x00C2B29E  60                      pushal                                  
  0x00C2B29F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2B2A2  0000                    add      byte ptr [eax], al             
  0x00C2B2A4  80f00b                  xor      al, 0xb                        
  0x00C2B2A7  008001000003            add      byte ptr [eax + 0x3000001], al 
  0x00C2B2AD  0020                    add      byte ptr [eax], ah             
  0x00C2B2AF  0000                    add      byte ptr [eax], al             
  0x00C2B2B1  2405                    and      al, 5                          
  0x00C2B2B3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B2B6  0000                    add      byte ptr [eax], al             
  0x00C2B2B8  00f4                    add      ah, dh                         
  0x00C2B2BA  56                      push     esi                            
  0x00C2B2BB  0012                    add      byte ptr [edx], dl             
  0x00C2B2BD  0000                    add      byte ptr [eax], al             
  0x00C2B2BF  0000                    add      byte ptr [eax], al             
  0x00C2B2C1  f4                      hlt                                     
  0x00C2B2C2  57                      push     edi                            
  0x00C2B2C3  0000                    add      byte ptr [eax], al             
  0x00C2B2C5  0000                    add      byte ptr [eax], al             
  0x00C2B2C7  0000                    add      byte ptr [eax], al             
  0x00C2B2C9  f4                      hlt                                     
  0x00C2B2CA  7000                    jo       0xc2b2cc                       
                                        ; XREF: 0x00C2B2CA (cond_jump)
  0x00C2B2CC  90                      nop                                     
  0x00C2B2CD  0300                    add      eax, dword ptr [eax]           
  0x00C2B2CF  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B2D5  0100                    add      dword ptr [eax], eax           
  0x00C2B2D7  0003                    add      byte ptr [ebx], al             
  0x00C2B2D9  0020                    add      byte ptr [eax], ah             
  0x00C2B2DB  0000                    add      byte ptr [eax], al             
  0x00C2B2DD  2405                    and      al, 5                          
  0x00C2B2DF  0000                    add      byte ptr [eax], al             
  0x00C2B2E1  f4                      hlt                                     
  0x00C2B2E2  56                      push     esi                            
  0x00C2B2E3  0013                    add      byte ptr [ebx], dl             
  0x00C2B2E5  0000                    add      byte ptr [eax], al             
  0x00C2B2E7  0000                    add      byte ptr [eax], al             
  0x00C2B2E9  f4                      hlt                                     
  0x00C2B2EA  57                      push     edi                            
  0x00C2B2EB  0000                    add      byte ptr [eax], al             
  0x00C2B2ED  0000                    add      byte ptr [eax], al             
  0x00C2B2EF  0000                    add      byte ptr [eax], al             
  0x00C2B2F1  f4                      hlt                                     
  0x00C2B2F2  7000                    jo       0xc2b2f4                       
                                        ; XREF: 0x00C2B2F2 (cond_jump)
  0x00C2B2F4  90                      nop                                     
  0x00C2B2F5  0300                    add      eax, dword ptr [eax]           
  0x00C2B2F7  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B2FD  0100                    add      dword ptr [eax], eax           
  0x00C2B2FF  0003                    add      byte ptr [ebx], al             
  0x00C2B301  0020                    add      byte ptr [eax], ah             
  0x00C2B303  0000                    add      byte ptr [eax], al             
  0x00C2B305  2405                    and      al, 5                          
  0x00C2B307  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B30A  0000                    add      byte ptr [eax], al             
  0x00C2B30C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2B30F  006309                  add      byte ptr [ebx + 9], ah         
  0x00C2B312  0000                    add      byte ptr [eax], al             
  0x00C2B314  00f0                    add      al, dh                         
  0x00C2B316  56                      push     esi                            
  0x00C2B317  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2B31D  0020                    add      byte ptr [eax], ah             
  0x00C2B31F  0007                    add      byte ptr [edi], al             
  0x00C2B321  2405                    and      al, 5                          
  0x00C2B323  0000                    add      byte ptr [eax], al             
  0x00C2B325  f4                      hlt                                     
  0x00C2B326  7100                    jno      0xc2b328                       
                                        ; XREF: 0x00C2B326 (cond_jump)
  0x00C2B328  8903                    mov      dword ptr [ebx], eax           
  0x00C2B32A  0000                    add      byte ptr [eax], al             
  0x00C2B32C  0007                    add      byte ptr [edi], al             
  0x00C2B32E  3800                    cmp      byte ptr [eax], al             
  0x00C2B330  00f4                    add      ah, dh                         
  0x00C2B332  60                      pushal                                  
  0x00C2B333  003502000007            add      byte ptr [0x7000002], dh       
  0x00C2B339  0c05                    or       al, 5                          
  0x00C2B33B  0000                    add      byte ptr [eax], al             
  0x00C2B33D  f4                      hlt                                     
  0x00C2B33E  46                      inc      esi                            
  0x00C2B33F  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2B345  d820                    fsub     dword ptr [eax]                
  0x00C2B347  0022                    add      byte ptr [edx], ah             
  0x00C2B349  f4                      hlt                                     
  0x00C2B34A  60                      pushal                                  
  0x00C2B34B  008001000000            add      byte ptr [eax + 1], al         
  0x00C2B351  1921                    sbb      dword ptr [ecx], esp           
  0x00C2B353  0000                    add      byte ptr [eax], al             
  0x00C2B355  f4                      hlt                                     
  0x00C2B356  56                      push     esi                            
  0x00C2B357  0012                    add      byte ptr [edx], dl             
  0x00C2B359  0000                    add      byte ptr [eax], al             
  0x00C2B35B  0000                    add      byte ptr [eax], al             
  0x00C2B35D  f4                      hlt                                     
  0x00C2B35E  57                      push     edi                            
  0x00C2B35F  0002                    add      byte ptr [edx], al             
  0x00C2B361  0000                    add      byte ptr [eax], al             
  0x00C2B363  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B369  0100                    add      dword ptr [eax], eax           
  0x00C2B36B  0003                    add      byte ptr [ebx], al             
  0x00C2B36D  0020                    add      byte ptr [eax], ah             
  0x00C2B36F  0000                    add      byte ptr [eax], al             
  0x00C2B371  2405                    and      al, 5                          
  0x00C2B373  0000                    add      byte ptr [eax], al             
  0x00C2B376  44                      inc      esp                            
  0x00C2B377  006309                  add      byte ptr [ebx + 9], ah         
  0x00C2B37A  0000                    add      byte ptr [eax], al             
  0x00C2B37C  00f0                    add      al, dh                         
  0x00C2B37E  56                      push     esi                            
  0x00C2B37F  00970b000045            add      byte ptr [edi + 0x4500000b], dl 
  0x00C2B385  0020                    add      byte ptr [eax], ah             
  0x00C2B387  0007                    add      byte ptr [edi], al             
  0x00C2B389  2405                    and      al, 5                          
  0x00C2B38B  0000                    add      byte ptr [eax], al             
  0x00C2B38D  f4                      hlt                                     
  0x00C2B38E  7100                    jno      0xc2b390                       
                                        ; XREF: 0x00C2B38E (cond_jump)
  0x00C2B390  8903                    mov      dword ptr [ebx], eax           
  0x00C2B392  0000                    add      byte ptr [eax], al             
  0x00C2B394  0007                    add      byte ptr [edi], al             
  0x00C2B396  3800                    cmp      byte ptr [eax], al             
  0x00C2B398  00f4                    add      ah, dh                         
  0x00C2B39A  60                      pushal                                  
  0x00C2B39B  00f6                    add      dh, dh                         
  0x00C2B39D  0200                    add      al, byte ptr [eax]             
  0x00C2B39F  0007                    add      byte ptr [edi], al             
  0x00C2B3A1  0c05                    or       al, 5                          
  0x00C2B3A3  0000                    add      byte ptr [eax], al             
  0x00C2B3A5  f4                      hlt                                     
  0x00C2B3A6  46                      inc      esi                            
  0x00C2B3A7  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2B3AD  d820                    fsub     dword ptr [eax]                
  0x00C2B3AF  0022                    add      byte ptr [edx], ah             
  0x00C2B3B1  f4                      hlt                                     
  0x00C2B3B2  60                      pushal                                  
  0x00C2B3B3  004102                  add      byte ptr [ecx + 2], al         
  0x00C2B3B6  0000                    add      byte ptr [eax], al             
  0x00C2B3B8  0019                    add      byte ptr [ecx], bl             
  0x00C2B3BA  2100                    and      dword ptr [eax], eax           
  0x00C2B3BC  00f4                    add      ah, dh                         
  0x00C2B3BE  56                      push     esi                            
  0x00C2B3BF  0013                    add      byte ptr [ebx], dl             
  0x00C2B3C1  0000                    add      byte ptr [eax], al             
  0x00C2B3C3  0000                    add      byte ptr [eax], al             
  0x00C2B3C5  f4                      hlt                                     
  0x00C2B3C6  57                      push     edi                            
  0x00C2B3C7  0002                    add      byte ptr [edx], al             
  0x00C2B3C9  0000                    add      byte ptr [eax], al             
  0x00C2B3CB  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2B3D1  0100                    add      dword ptr [eax], eax           
  0x00C2B3D3  0003                    add      byte ptr [ebx], al             
  0x00C2B3D5  0020                    add      byte ptr [eax], ah             
  0x00C2B3D7  0000                    add      byte ptr [eax], al             
  0x00C2B3D9  2405                    and      al, 5                          
  0x00C2B3DB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2B3DE  0000                    add      byte ptr [eax], al             
  0x00C2B3E0  40                      inc      eax                            
  0x00C2B3E1  1bd0                    sbb      edx, eax                       
  0x00C2B3E3  005206                  add      byte ptr [edx + 6], dl         
  0x00C2B3E6  0000                    add      byte ptr [eax], al             
  0x00C2B3E8  50                      push     eax                            
  0x00C2B3E9  0103                    add      dword ptr [ebx], eax           
  0x00C2B3EB  00750b                  add      byte ptr [ebp + 0xb], dh       
  0x00C2B3EE  8c00                    mov      word ptr [eax], es             
  0x00C2B3F0  0b00                    or       eax, dword ptr [eax]           
  0x00C2B3F2  2000                    and      byte ptr [eax], al             
  0x00C2B3F4  0210                    add      dl, byte ptr [eax]             
  0x00C2B3F6  0d004b0600              or       eax, 0x64b00                   
  0x00C2B3FB  0080100d003b            add      byte ptr [eax + 0x3b000d10], al 
  0x00C2B401  06                      push     es                             
  0x00C2B402  0000                    add      byte ptr [eax], al             
  0x00C2B404  00f4                    add      ah, dh                         
  0x00C2B406  57                      push     edi                            
  0x00C2B407  0010                    add      byte ptr [eax], dl             
  0x00C2B409  0000                    add      byte ptr [eax], al             
  0x00C2B40B  0000                    add      byte ptr [eax], al             
  0x00C2B40D  0030                    add      byte ptr [eax], dh             
  0x00C2B40F  0080100d0033            add      byte ptr [eax + 0x33000d10], al 
  0x00C2B415  0200                    add      al, byte ptr [eax]             
  0x00C2B417  0000                    add      byte ptr [eax], al             
  0x00C2B419  f4                      hlt                                     
  0x00C2B41A  44                      inc      esp                            
  0x00C2B41B  0000                    add      byte ptr [eax], al             
  0x00C2B41D  0000                    add      byte ptr [eax], al             
  0x00C2B41F  004500                  add      byte ptr [ebp], al             
  0x00C2B422  2000                    and      byte ptr [eax], al             
  0x00C2B424  00740500                add      byte ptr [ebp + eax], dh       
  0x00C2B428  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2B42B  003f                    add      byte ptr [edi], bh             
  0x00C2B42D  06                      push     es                             
  0x00C2B42E  0000                    add      byte ptr [eax], al             
  0x00C2B430  0c00                    or       al, 0                          
  0x00C2B432  0000                    add      byte ptr [eax], al             
  0x00C2B434  61                      popal                                   
  0x00C2B435  f4                      hlt                                     
  0x00C2B436  46                      inc      esi                            
  0x00C2B437  0010                    add      byte ptr [eax], dl             
  0x00C2B439  0000                    add      byte ptr [eax], al             
  0x00C2B43B  0000                    add      byte ptr [eax], al             
  0x00C2B43D  07                      pop      es                             
  0x00C2B43E  2300                    and      eax, dword ptr [eax]           
  0x00C2B440  10d9                    adc      cl, bl                         
  0x00C2B442  06                      push     es                             
  0x00C2B443  000a                    add      byte ptr [edx], cl             
  0x00C2B445  0000                    add      byte ptr [eax], al             
  0x00C2B447  007cd950                add      byte ptr [ecx + ebx*8 + 0x50], bh 
  0x00C2B44B  0007                    add      byte ptr [edi], al             
  0x00C2B44D  7405                    je       0xc2b454                       
  0x00C2B44F  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B452  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B44D (cond_jump)
  0x00C2B454  46                      inc      esi                            
  0x00C2B455  1e                      push     ds                             
  0x00C2B456  0c00                    or       al, 0                          
  0x00C2B458  90                      nop                                     
  0x00C2B459  1e                      push     ds                             
  0x00C2B45A  0c00                    or       al, 0                          
  0x00C2B45C  49                      dec      ecx                            
  0x00C2B45D  e421                    in       al, 0x21                       
  0x00C2B45F  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B462  54                      push     esp                            
  0x00C2B463  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B466  0c00                    or       al, 0                          
  0x00C2B468  4e                      dec      esi                            
  0x00C2B469  1e                      push     ds                             
  0x00C2B46A  0c00                    or       al, 0                          
  0x00C2B46C  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B472  0000                    add      byte ptr [eax], al             
  0x00C2B474  61                      popal                                   
  0x00C2B475  f4                      hlt                                     
                                        ; XREF: 0x00C2B4C8 (cond_jump)
  0x00C2B476  46                      inc      esi                            
  0x00C2B477  0010                    add      byte ptr [eax], dl             
  0x00C2B479  0000                    add      byte ptr [eax], al             
  0x00C2B47B  0000                    add      byte ptr [eax], al             
  0x00C2B47D  07                      pop      es                             
  0x00C2B47E  2300                    and      eax, dword ptr [eax]           
  0x00C2B480  7cd9                    jl       0xc2b45b                       
  0x00C2B482  50                      push     eax                            
  0x00C2B483  0007                    add      byte ptr [edi], al             
  0x00C2B485  7405                    je       0xc2b48c                       
  0x00C2B487  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B48A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B485 (cond_jump)
  0x00C2B48C  46                      inc      esi                            
  0x00C2B48D  1e                      push     ds                             
  0x00C2B48E  0c00                    or       al, 0                          
  0x00C2B490  90                      nop                                     
  0x00C2B491  1e                      push     ds                             
  0x00C2B492  0c00                    or       al, 0                          
  0x00C2B494  49                      dec      ecx                            
  0x00C2B495  e421                    in       al, 0x21                       
  0x00C2B497  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B49A  54                      push     esp                            
  0x00C2B49B  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B49E  0c00                    or       al, 0                          
  0x00C2B4A0  4e                      dec      esi                            
  0x00C2B4A1  1e                      push     ds                             
  0x00C2B4A2  0c00                    or       al, 0                          
  0x00C2B4A4  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B4AA  0000                    add      byte ptr [eax], al             
  0x00C2B4AC  00f4                    add      ah, dh                         
  0x00C2B4AE  46                      inc      esi                            
  0x00C2B4AF  0010                    add      byte ptr [eax], dl             
  0x00C2B4B1  0000                    add      byte ptr [eax], al             
  0x00C2B4B3  0000                    add      byte ptr [eax], al             
  0x00C2B4B5  07                      pop      es                             
  0x00C2B4B6  2300                    and      eax, dword ptr [eax]           
  0x00C2B4B8  10d9                    adc      cl, bl                         
  0x00C2B4BA  06                      push     es                             
  0x00C2B4BB  000d00000000            add      byte ptr [0], cl               
  0x00C2B4C1  d95600                  fst      dword ptr [esi]                
  0x00C2B4C4  6e                      outsb    dx, byte ptr [esi]             
  0x00C2B4C5  1e                      push     ds                             
  0x00C2B4C6  0c00                    or       al, 0                          
  0x00C2B4C8  7cac                    jl       0xc2b476                       
  0x00C2B4CA  2000                    and      byte ptr [eax], al             
  0x00C2B4CC  07                      pop      es                             
  0x00C2B4CD  7405                    je       0xc2b4d4                       
  0x00C2B4CF  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B4D2  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B4CD (cond_jump)
  0x00C2B4D4  46                      inc      esi                            
  0x00C2B4D5  1e                      push     ds                             
  0x00C2B4D6  0c00                    or       al, 0                          
  0x00C2B4D8  90                      nop                                     
  0x00C2B4D9  1e                      push     ds                             
  0x00C2B4DA  0c00                    or       al, 0                          
  0x00C2B4DC  49                      dec      ecx                            
  0x00C2B4DD  e421                    in       al, 0x21                       
  0x00C2B4DF  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B4E2  54                      push     esp                            
  0x00C2B4E3  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B4E6  0c00                    or       al, 0                          
  0x00C2B4E8  4e                      dec      esi                            
  0x00C2B4E9  1e                      push     ds                             
  0x00C2B4EA  0c00                    or       al, 0                          
  0x00C2B4EC  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B4F2  0000                    add      byte ptr [eax], al             
  0x00C2B4F4  00f4                    add      ah, dh                         
  0x00C2B4F6  46                      inc      esi                            
  0x00C2B4F7  0010                    add      byte ptr [eax], dl             
  0x00C2B4F9  0000                    add      byte ptr [eax], al             
  0x00C2B4FB  0000                    add      byte ptr [eax], al             
  0x00C2B4FD  07                      pop      es                             
                                        ; XREF: 0x00C2B550 (cond_jump)
  0x00C2B4FE  2300                    and      eax, dword ptr [eax]           
  0x00C2B500  10d9                    adc      cl, bl                         
  0x00C2B502  06                      push     es                             
  0x00C2B503  000d00000000            add      byte ptr [0], cl               
  0x00C2B509  d95e00                  fstp     dword ptr [esi]                
  0x00C2B50C  6e                      outsb    dx, byte ptr [esi]             
  0x00C2B50D  1e                      push     ds                             
  0x00C2B50E  0c00                    or       al, 0                          
  0x00C2B510  7cac                    jl       0xc2b4be                       
  0x00C2B512  2000                    and      byte ptr [eax], al             
  0x00C2B514  07                      pop      es                             
  0x00C2B515  7405                    je       0xc2b51c                       
  0x00C2B517  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B51A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B515 (cond_jump)
  0x00C2B51C  46                      inc      esi                            
  0x00C2B51D  1e                      push     ds                             
  0x00C2B51E  0c00                    or       al, 0                          
  0x00C2B520  90                      nop                                     
  0x00C2B521  1e                      push     ds                             
  0x00C2B522  0c00                    or       al, 0                          
  0x00C2B524  49                      dec      ecx                            
  0x00C2B525  e421                    in       al, 0x21                       
  0x00C2B527  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B52A  54                      push     esp                            
  0x00C2B52B  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B52E  0c00                    or       al, 0                          
  0x00C2B530  4e                      dec      esi                            
  0x00C2B531  1e                      push     ds                             
  0x00C2B532  0c00                    or       al, 0                          
  0x00C2B534  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B53A  0000                    add      byte ptr [eax], al             
  0x00C2B53C  00f4                    add      ah, dh                         
                                        ; XREF: 0x00C2B590 (cond_jump)
  0x00C2B53E  46                      inc      esi                            
  0x00C2B53F  0010                    add      byte ptr [eax], dl             
  0x00C2B541  0000                    add      byte ptr [eax], al             
  0x00C2B543  0000                    add      byte ptr [eax], al             
  0x00C2B545  07                      pop      es                             
  0x00C2B546  2300                    and      eax, dword ptr [eax]           
  0x00C2B548  00d9                    add      cl, bl                         
  0x00C2B54A  56                      push     esi                            
  0x00C2B54B  006e1e                  add      byte ptr [esi + 0x1e], ch      
  0x00C2B54E  0c00                    or       al, 0                          
  0x00C2B550  7cac                    jl       0xc2b4fe                       
  0x00C2B552  2000                    and      byte ptr [eax], al             
  0x00C2B554  07                      pop      es                             
  0x00C2B555  7405                    je       0xc2b55c                       
  0x00C2B557  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B55A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B555 (cond_jump)
  0x00C2B55C  46                      inc      esi                            
  0x00C2B55D  1e                      push     ds                             
  0x00C2B55E  0c00                    or       al, 0                          
  0x00C2B560  90                      nop                                     
  0x00C2B561  1e                      push     ds                             
  0x00C2B562  0c00                    or       al, 0                          
  0x00C2B564  49                      dec      ecx                            
  0x00C2B565  e421                    in       al, 0x21                       
  0x00C2B567  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B56A  54                      push     esp                            
  0x00C2B56B  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B56E  0c00                    or       al, 0                          
  0x00C2B570  4e                      dec      esi                            
  0x00C2B571  1e                      push     ds                             
  0x00C2B572  0c00                    or       al, 0                          
  0x00C2B574  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B57A  0000                    add      byte ptr [eax], al             
  0x00C2B57C  00f4                    add      ah, dh                         
  0x00C2B57E  46                      inc      esi                            
  0x00C2B57F  0010                    add      byte ptr [eax], dl             
  0x00C2B581  0000                    add      byte ptr [eax], al             
  0x00C2B583  0000                    add      byte ptr [eax], al             
  0x00C2B585  07                      pop      es                             
  0x00C2B586  2300                    and      eax, dword ptr [eax]           
  0x00C2B588  00d9                    add      cl, bl                         
  0x00C2B58A  5e                      pop      esi                            
  0x00C2B58B  006e1e                  add      byte ptr [esi + 0x1e], ch      
  0x00C2B58E  0c00                    or       al, 0                          
  0x00C2B590  7cac                    jl       0xc2b53e                       
  0x00C2B592  2000                    and      byte ptr [eax], al             
  0x00C2B594  07                      pop      es                             
  0x00C2B595  7405                    je       0xc2b59c                       
  0x00C2B597  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2B59A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2B595 (cond_jump)
  0x00C2B59C  46                      inc      esi                            
  0x00C2B59D  1e                      push     ds                             
  0x00C2B59E  0c00                    or       al, 0                          
  0x00C2B5A0  90                      nop                                     
  0x00C2B5A1  1e                      push     ds                             
  0x00C2B5A2  0c00                    or       al, 0                          
  0x00C2B5A4  49                      dec      ecx                            
  0x00C2B5A5  e421                    in       al, 0x21                       
  0x00C2B5A7  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2B5AA  54                      push     esp                            
  0x00C2B5AB  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2B5AE  0c00                    or       al, 0                          
  0x00C2B5B0  4e                      dec      esi                            
  0x00C2B5B1  1e                      push     ds                             
  0x00C2B5B2  0c00                    or       al, 0                          
  0x00C2B5B4  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2B5BA  0000                    add      byte ptr [eax], al             
  0x00C2B5BC  00f4                    add      ah, dh                         
  0x00C2B5BE  61                      popal                                   
  0x00C2B5BF  0012                    add      byte ptr [edx], dl             
  0x00C2B5C1  0d000000f4              or       eax, 0xf4000000                
  0x00C2B5C6  46                      inc      esi                            
  0x00C2B5C7  00ff                    add      bh, bh                         
  0x00C2B5C9  0000                    add      byte ptr [eax], al             
  0x00C2B5CB  0010                    add      byte ptr [eax], dl             
  0x00C2B5CD  d806                    fadd     dword ptr [esi]                
  0x00C2B5CF  000e                    add      byte ptr [esi], cl             
  0x00C2B5D1  0000                    add      byte ptr [eax], al             
  0x00C2B5D3  00901c0c0056            add      byte ptr [eax + 0x56000c1c], dl 
  0x00C2B5D9  0020                    add      byte ptr [eax], ah             
  0x00C2B5DB  0000                    add      byte ptr [eax], al             
  0x00C2B5DD  d85100                  fcom     dword ptr [ecx]                
  0x00C2B5E0  00992100911d            add      byte ptr [ecx + 0x1d910021], bl 
  0x00C2B5E6  0c00                    or       al, 0                          
  0x00C2B5E8  00e9                    add      cl, ch                         
  0x00C2B5EA  4c                      dec      esp                            
  0x00C2B5EB  004b00                  add      byte ptr [ebx], cl             
  0x00C2B5EE  2000                    and      byte ptr [eax], al             
  0x00C2B5F0  90                      nop                                     
  0x00C2B5F1  1c0c                    sbb      al, 0xc                        
  0x00C2B5F3  005600                  add      byte ptr [esi], dl             
  0x00C2B5F6  2000                    and      byte ptr [eax], al             
  0x00C2B5F8  00992100911d            add      byte ptr [ecx + 0x1d910021], bl 
  0x00C2B5FE  0c00                    or       al, 0                          
  0x00C2B600  00e9                    add      cl, ch                         
  0x00C2B602  4c                      dec      esp                            
  0x00C2B603  004b00                  add      byte ptr [ebx], cl             
  0x00C2B606  2000                    and      byte ptr [eax], al             
  0x00C2B608  91                      xchg     ecx, eax                       
  0x00C2B609  1e                      push     ds                             
  0x00C2B60A  0c00                    or       al, 0                          
  0x00C2B60C  00ae2100111c            add      byte ptr [esi + 0x1c110021], ch 
  0x00C2B612  0c00                    or       al, 0                          
  0x00C2B614  0c00                    or       al, 0                          
  0x00C2B616  0000                    add      byte ptr [eax], al             
  0x00C2B618  1bf4                    sbb      esi, esp                       
  0x00C2B61A  61                      popal                                   
  0x00C2B61B  0012                    add      byte ptr [edx], dl             
  0x00C2B61D  0e                      push     cs                             
  0x00C2B61E  0000                    add      byte ptr [eax], al             
  0x00C2B620  00f4                    add      ah, dh                         
  0x00C2B622  46                      inc      esi                            
  0x00C2B623  00ff                    add      bh, bh                         
  0x00C2B625  0000                    add      byte ptr [eax], al             
  0x00C2B627  0000                    add      byte ptr [eax], al             
  0x00C2B629  48                      dec      eax                            
  0x00C2B62A  2000                    and      byte ptr [eax], al             
  0x00C2B62C  10d8                    adc      al, bl                         
  0x00C2B62E  06                      push     es                             
  0x00C2B62F  000d0000005e            add      byte ptr [0x5e000000], cl      
  0x00C2B635  ae                      scasb    al, byte ptr es:[edi]          
  0x00C2B636  2100                    and      dword ptr [eax], eax           
  0x00C2B638  00f8                    add      al, bh                         
  0x00C2B63A  44                      inc      esp                            
  0x00C2B63B  0000                    add      byte ptr [eax], al             
  0x00C2B63D  b92100d01e              mov      ecx, 0x1ed00021                
  0x00C2B642  0c00                    or       al, 0                          
  0x00C2B644  42                      inc      edx                            
  0x00C2B645  0020                    add      byte ptr [eax], ah             
  0x00C2B647  0000                    add      byte ptr [eax], al             
  0x00C2B649  e94c004300              jmp      0x105b69a                      
  0x00C2B64E  2000                    and      byte ptr [eax], al             
  0x00C2B650  56                      push     esi                            
  0x00C2B652  2100                    and      dword ptr [eax], eax           
  0x00C2B654  00992100d11e            add      byte ptr [ecx + 0x1ed10021], bl 
  0x00C2B65A  0c00                    or       al, 0                          
  0x00C2B65C  00e9                    add      cl, ch                         
  0x00C2B65E  4c                      dec      esp                            
  0x00C2B65F  004b00                  add      byte ptr [ebx], cl             
  0x00C2B662  2000                    and      byte ptr [eax], al             
  0x00C2B664  91                      xchg     ecx, eax                       
  0x00C2B665  1e                      push     ds                             
  0x00C2B666  0c00                    or       al, 0                          
  0x00C2B668  00ae2100111c            add      byte ptr [esi + 0x1c110021], ch 
  0x00C2B66E  0c00                    or       al, 0                          
  0x00C2B670  0c00                    or       al, 0                          
  0x00C2B672  0000                    add      byte ptr [eax], al             
  0x00C2B674  180400                  sbb      byte ptr [eax + eax], al       
  0x00C2B677  0018                    add      byte ptr [eax], bl             
  0x00C2B679  0400                    add      al, 0                          
  0x00C2B67B  0018                    add      byte ptr [eax], bl             
  0x00C2B67D  0400                    add      al, 0                          
  0x00C2B67F  002a                    add      byte ptr [edx], ch             
  0x00C2B681  0400                    add      al, 0                          
  0x00C2B683  002a                    add      byte ptr [edx], ch             
  0x00C2B685  0400                    add      al, 0                          
  0x00C2B687  002a                    add      byte ptr [edx], ch             
  0x00C2B689  0400                    add      al, 0                          
  0x00C2B68B  002504000042            add      byte ptr [0x42000004], ah      
  0x00C2B691  0400                    add      al, 0                          
  0x00C2B693  004204                  add      byte ptr [edx + 4], al         
  0x00C2B696  0000                    add      byte ptr [eax], al             
  0x00C2B698  42                      inc      edx                            
  0x00C2B699  0400                    add      al, 0                          
  0x00C2B69B  004204                  add      byte ptr [edx + 4], al         
  0x00C2B69E  0000                    add      byte ptr [eax], al             
  0x00C2B6A0  42                      inc      edx                            
  0x00C2B6A1  0400                    add      al, 0                          
  0x00C2B6A3  004204                  add      byte ptr [edx + 4], al         
  0x00C2B6A6  0000                    add      byte ptr [eax], al             
  0x00C2B6A8  42                      inc      edx                            
  0x00C2B6A9  0400                    add      al, 0                          
  0x00C2B6AB  004204                  add      byte ptr [edx + 4], al         
  0x00C2B6AE  0000                    add      byte ptr [eax], al             
  0x00C2B6B0  42                      inc      edx                            
  0x00C2B6B1  0400                    add      al, 0                          
  0x00C2B6B3  004204                  add      byte ptr [edx + 4], al         
  0x00C2B6B6  0000                    add      byte ptr [eax], al             
  0x00C2B6B8  42                      inc      edx                            
  0x00C2B6B9  0400                    add      al, 0                          
  0x00C2B6BB  004204                  add      byte ptr [edx + 4], al         
  0x00C2B6BE  0000                    add      byte ptr [eax], al             
  0x00C2B6C0  42                      inc      edx                            
  0x00C2B6C1  0400                    add      al, 0                          
  0x00C2B6C3  004e04                  add      byte ptr [esi + 4], cl         
  0x00C2B6C6  0000                    add      byte ptr [eax], al             
  0x00C2B6C8  4e                      dec      esi                            
  0x00C2B6C9  0400                    add      al, 0                          
  0x00C2B6CB  004e04                  add      byte ptr [esi + 4], cl         
  0x00C2B6CE  0000                    add      byte ptr [eax], al             
  0x00C2B6D0  5f                      pop      edi                            
  0x00C2B6D1  0400                    add      al, 0                          
  0x00C2B6D3  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6D6  0000                    add      byte ptr [eax], al             
  0x00C2B6D8  5f                      pop      edi                            
  0x00C2B6D9  0400                    add      al, 0                          
  0x00C2B6DB  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6DE  0000                    add      byte ptr [eax], al             
  0x00C2B6E0  5f                      pop      edi                            
  0x00C2B6E1  0400                    add      al, 0                          
  0x00C2B6E3  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6E6  0000                    add      byte ptr [eax], al             
  0x00C2B6E8  5f                      pop      edi                            
  0x00C2B6E9  0400                    add      al, 0                          
  0x00C2B6EB  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6EE  0000                    add      byte ptr [eax], al             
  0x00C2B6F0  5f                      pop      edi                            
  0x00C2B6F1  0400                    add      al, 0                          
  0x00C2B6F3  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6F6  0000                    add      byte ptr [eax], al             
  0x00C2B6F8  5f                      pop      edi                            
  0x00C2B6F9  0400                    add      al, 0                          
  0x00C2B6FB  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B6FE  0000                    add      byte ptr [eax], al             
  0x00C2B700  5f                      pop      edi                            
  0x00C2B701  0400                    add      al, 0                          
  0x00C2B703  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B706  0000                    add      byte ptr [eax], al             
  0x00C2B708  5f                      pop      edi                            
  0x00C2B709  0400                    add      al, 0                          
  0x00C2B70B  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B70E  0000                    add      byte ptr [eax], al             
  0x00C2B710  5f                      pop      edi                            
  0x00C2B711  0400                    add      al, 0                          
  0x00C2B713  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B716  0000                    add      byte ptr [eax], al             
  0x00C2B718  5f                      pop      edi                            
  0x00C2B719  0400                    add      al, 0                          
  0x00C2B71B  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B71E  0000                    add      byte ptr [eax], al             
  0x00C2B720  5f                      pop      edi                            
  0x00C2B721  0400                    add      al, 0                          
  0x00C2B723  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B726  0000                    add      byte ptr [eax], al             
  0x00C2B728  5f                      pop      edi                            
  0x00C2B729  0400                    add      al, 0                          
  0x00C2B72B  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B72E  0000                    add      byte ptr [eax], al             
  0x00C2B730  5f                      pop      edi                            
  0x00C2B731  0400                    add      al, 0                          
  0x00C2B733  005f04                  add      byte ptr [edi + 4], bl         
  0x00C2B736  0000                    add      byte ptr [eax], al             
  0x00C2B738  5f                      pop      edi                            
  0x00C2B739  0400                    add      al, 0                          
  0x00C2B73B  0000                    add      byte ptr [eax], al             
  0x00C2B73D  b122                    mov      cl, 0x22                       
  0x00C2B73F  0000                    add      byte ptr [eax], al             
  0x00C2B741  1923                    sbb      dword ptr [ebx], esp           
  0x00C2B743  0000                    add      byte ptr [eax], al             
  0x00C2B745  48                      dec      eax                            
  0x00C2B746  2000                    and      byte ptr [eax], al             
  0x00C2B748  004920                  add      byte ptr [ecx + 0x20], cl      
  0x00C2B74B  001b                    add      byte ptr [ebx], bl             
  0x00C2B74D  f4                      hlt                                     
  0x00C2B74E  45                      inc      ebp                            
  0x00C2B74F  004000                  add      byte ptr [eax], al             
  0x00C2B752  0000                    add      byte ptr [eax], al             
  0x00C2B754  00f4                    add      ah, dh                         
  0x00C2B756  51                      push     ecx                            
  0x00C2B757  0000                    add      byte ptr [eax], al             
  0x00C2B759  0c00                    or       al, 0                          
  0x00C2B75B  0001                    add      byte ptr [ecx], al             
  0x00C2B75D  d8440010                fadd     dword ptr [eax + eax + 0x10]   
  0x00C2B761  dc06                    fadd     qword ptr [esi]                
  0x00C2B763  0003                    add      byte ptr [ebx], al             
  0x00C2B765  0000                    add      byte ptr [eax], al             
  0x00C2B767  00a6d8440001            add      byte ptr [esi + 0x10044d8], ah 
  0x00C2B76D  59                      pop      ecx                            
  0x00C2B76E  50                      push     eax                            
  0x00C2B76F  0000                    add      byte ptr [eax], al             
  0x00C2B771  002400                  add      byte ptr [eax + eax], ah       
  0x00C2B774  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2B777  009204000000            add      byte ptr [edx + 4], dl         
  0x00C2B77D  002400                  add      byte ptr [eax + eax], ah       
  0x00C2B780  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2B783  009104000000            add      byte ptr [ecx + 4], dl         
  0x00C2B789  1023                    adc      byte ptr [ebx], ah             
  0x00C2B78B  0000                    add      byte ptr [eax], al             
  0x00C2B78D  b8220000f4              mov      eax, 0xf4000022                
  0x00C2B792  7400                    je       0xc2b794                       
                                        ; XREF: 0x00C2B792 (cond_jump)
  0x00C2B794  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x00C2B795  0300                    add      eax, dword ptr [eax]           
  0x00C2B797  0000                    add      byte ptr [eax], al             
  0x00C2B799  f4                      hlt                                     
  0x00C2B79A  650032                  add      byte ptr gs:[edx], dh          
  0x00C2B79D  0b00                    or       eax, dword ptr [eax]           
  0x00C2B79F  0000                    add      byte ptr [eax], al             
  0x00C2B7A2  44                      inc      esp                            
  0x00C2B7A3  007b0b                  add      byte ptr [ebx + 0xb], bh       
  0x00C2B7A6  0000                    add      byte ptr [eax], al             
  0x00C2B7A8  00f4                    add      ah, dh                         
  0x00C2B7AA  46                      inc      esi                            
  0x00C2B7AB  0032                    add      byte ptr [edx], dh             
  0x00C2B7AD  0000                    add      byte ptr [eax], al             
  0x00C2B7AF  00d0                    add      al, dl                         
  0x00C2B7B1  44                      inc      esp                            
  0x00C2B7B2  2200                    and      al, byte ptr [eax]             
  0x00C2B7B4  2e1d0c0040f4            sbb      eax, 0xf440000c                
  0x00C2B7BA  44                      inc      esp                            
  0x00C2B7BB  001c0c                  add      byte ptr [esp + ecx], bl       
  0x00C2B7BE  0000                    add      byte ptr [eax], al             
  0x00C2B7C0  40                      inc      eax                            
  0x00C2B7C1  0020                    add      byte ptr [eax], ah             
  0x00C2B7C3  0000                    add      byte ptr [eax], al             
  0x00C2B7C5  96                      xchg     esi, eax                       
  0x00C2B7C6  2100                    and      dword ptr [eax], eax           
  0x00C2B7C8  0001                    add      byte ptr [ecx], al             
  0x00C2B7CA  3900                    cmp      dword ptr [eax], eax           
  0x00C2B7CC  ce                      into                                    
  0x00C2B7CD  720b                    jb       0xc2b7da                       
  0x00C2B7CF  001a                    add      byte ptr [edx], bl             
  0x00C2B7D1  0f0000                  sldt     word ptr [eax]                 
  0x00C2B7D4  00c4                    add      ah, al                         
  0x00C2B7D6  2300                    and      eax, dword ptr [eax]           
  0x00C2B7D8  45                      inc      ebp                            
  0x00C2B7D9  07                      pop      es                             
                                        ; XREF: 0x00C2B7CD (cond_jump)
  0x00C2B7DA  2200                    and      al, byte ptr [eax]             
  0x00C2B7DC  40                      inc      eax                            
  0x00C2B7DD  7002                    jo       0xc2b7e1                       
  0x00C2B7DF  00742423                add      byte ptr [esp + 0x23], dh      
  0x00C2B7E3  0044e857                add      byte ptr [eax + ebp*8 + 0x57], al 
  0x00C2B7E7  0000                    add      byte ptr [eax], al             
  0x00C2B7E9  58                      pop      eax                            
  0x00C2B7EA  2000                    and      byte ptr [eax], al             
  0x00C2B7EC  00e8                    add      al, ch                         
  0x00C2B7EE  45                      inc      ebp                            
  0x00C2B7EF  000da4050000            add      byte ptr [0x5a4], cl           
  0x00C2B7F5  f4                      hlt                                     
  0x00C2B7F6  47                      inc      edi                            
  0x00C2B7F7  00d1                    add      cl, dl                         
  0x00C2B7F9  0000                    add      byte ptr [eax], al             
  0x00C2B7FB  0010                    add      byte ptr [eax], dl             
  0x00C2B7FD  cc                      int3                                    
  0x00C2B7FE  06                      push     es                             
  0x00C2B7FF  0009                    add      byte ptr [ecx], cl             
  0x00C2B801  0000                    add      byte ptr [eax], al             
  0x00C2B803  006cee21                add      byte ptr [esi + ebp*8 + 0x21], ch 
  0x00C2B807  006090                  add      byte ptr [eax - 0x70], ah      
  0x00C2B80A  0200                    add      al, byte ptr [eax]             
  0x00C2B80C  2e58                    pop      eax                            
  0x00C2B80E  2000                    and      byte ptr [eax], al             
  0x00C2B810  2be8                    sub      ebp, eax                       
  0x00C2B812  45                      inc      ebp                            
  0x00C2B813  007dbd                  add      byte ptr [ebp - 0x43], bh      
  0x00C2B816  2100                    and      dword ptr [eax], eax           
  0x00C2B818  00ed                    add      ch, ch                         
  0x00C2B81A  4c                      dec      esp                            
  0x00C2B81B  00402f                  add      byte ptr [eax + 0x2f], al      
  0x00C2B81E  2000                    and      byte ptr [eax], al             
  0x00C2B820  00cf                    add      bh, cl                         
  0x00C2B822  2100                    and      dword ptr [eax], eax           
  0x00C2B824  00542200                add      byte ptr [edx], dl             
  0x00C2B828  61                      popal                                   
  0x00C2B829  f4                      hlt                                     
  0x00C2B82A  44                      inc      esp                            
  0x00C2B82B  0000                    add      byte ptr [eax], al             
  0x00C2B82D  0100                    add      dword ptr [eax], eax           
  0x00C2B82F  0094ec070044f0          add      byte ptr [esp + ebp*8 - 0xfbbfff9], dl 
  0x00C2B836  47                      inc      edi                            
  0x00C2B837  009104000080            add      byte ptr [ecx - 0x7ffffffc], dl 
  0x00C2B83D  e40a                    in       al, 0xa                        
  0x00C2B83F  000d70570093            add      byte ptr [0x93005770], cl      
  0x00C2B845  0400                    add      al, 0                          
  0x00C2B847  0008                    add      byte ptr [eax], cl             
  0x00C2B849  f4                      hlt                                     
  0x00C2B84A  05006dee20              add      eax, 0x20ee6d00                
  0x00C2B84F  0058f4                  add      byte ptr [eax - 0xc], bl       
  0x00C2B852  0500c44001              add      eax, 0x140c400                 
  0x00C2B857  004000                  add      byte ptr [eax], al             
  0x00C2B85A  0000                    add      byte ptr [eax], al             
  0x00C2B85C  1329                    adc      ebp, dword ptr [ecx]           
  0x00C2B85E  2000                    and      byte ptr [eax], al             
  0x00C2B860  00872100530c            add      byte ptr [edi + 0xc530021], al 
  0x00C2B866  050000f447              add      eax, 0x47f40000                
  0x00C2B86B  008001000050            add      byte ptr [eax + 0x50000001], al 
  0x00C2B871  0c05                    or       al, 5                          
  0x00C2B873  0000                    add      byte ptr [eax], al             
  0x00C2B875  8621                    xchg     byte ptr [ecx], ah             
  0x00C2B877  0000                    add      byte ptr [eax], al             
  0x00C2B879  ce                      into                                    
  0x00C2B87A  2300                    and      eax, dword ptr [eax]           
  0x00C2B87C  854701                  test     dword ptr [edi + 1], eax       
  0x00C2B87F  000da4050000            add      byte ptr [0x5a4], cl           
  0x00C2B885  ce                      into                                    
  0x00C2B886  2000                    and      byte ptr [eax], al             
  0x00C2B888  0d00200008              or       eax, 0x8002000                 
  0x00C2B88D  f4                      hlt                                     
  0x00C2B88E  05006dee20              add      eax, 0x20ee6d00                
  0x00C2B893  0008                    add      byte ptr [eax], cl             
  0x00C2B895  f4                      hlt                                     
  0x00C2B896  0500c44001              add      eax, 0x140c400                 
  0x00C2B89B  004000                  add      byte ptr [eax], al             
  0x00C2B89E  0000                    add      byte ptr [eax], al             
  0x00C2B8A0  1329                    adc      ebp, dword ptr [ecx]           
  0x00C2B8A2  2000                    and      byte ptr [eax], al             
  0x00C2B8A4  00872100030c            add      byte ptr [edi + 0xc030021], al 
  0x00C2B8AA  050000f447              add      eax, 0x47f40000                
  0x00C2B8AF  008001000000            add      byte ptr [eax + 1], al         
  0x00C2B8B6  44                      inc      esp                            
  0x00C2B8B7  00930400004d            add      byte ptr [ebx + 0x4d000004], dl 
  0x00C2B8BE  56                      push     esi                            
  0x00C2B8BF  009204000000            add      byte ptr [edx + 4], dl         
  0x00C2B8C5  7055                    jo       0xc2b91c                       
  0x00C2B8C7  009304000004            add      byte ptr [ebx + 0x4000004], dl 
  0x00C2B8CD  94                      xchg     esp, eax                       
  0x00C2B8CE  0500002e23              add      eax, 0x232e0000                
  0x00C2B8D3  0000                    add      byte ptr [eax], al             
  0x00C2B8D5  7071                    jo       0xc2b948                       
  0x00C2B8D7  009204000003            add      byte ptr [edx + 0x3000004], dl 
  0x00C2B8DD  0020                    add      byte ptr [eax], ah             
  0x00C2B8DF  0014a4                  add      byte ptr [esp], dl             
  0x00C2B8E2  05001e0c05              add      eax, 0x50c1e00                 
  0x00C2B8E7  000d00200008            add      byte ptr [0x8002000], cl       
  0x00C2B8ED  f4                      hlt                                     
  0x00C2B8EE  05006dee20              add      eax, 0x20ee6d00                
  0x00C2B8F3  001a                    add      byte ptr [edx], bl             
  0x00C2B8F5  f4                      hlt                                     
  0x00C2B8F6  0500c44001              add      eax, 0x140c400                 
  0x00C2B8FB  004000                  add      byte ptr [eax], al             
  0x00C2B8FE  0000                    add      byte ptr [eax], al             
  0x00C2B900  1329                    adc      ebp, dword ptr [ecx]           
  0x00C2B902  2000                    and      byte ptr [eax], al             
  0x00C2B904  00872100150c            add      byte ptr [edi + 0xc150021], al 
  0x00C2B90A  050000f447              add      eax, 0x47f40000                
  0x00C2B90F  004001                  add      byte ptr [eax + 1], al         
  0x00C2B912  0000                    add      byte ptr [eax], al             
  0x00C2B914  120c0500710020          adc      cl, byte ptr [eax + 0x20007100] 
  0x00C2B91B  00c4                    add      ah, al                         
  0x00C2B91D  40                      inc      eax                            
  0x00C2B91E  0100                    add      dword ptr [eax], eax           
  0x00C2B920  800000                  add      byte ptr [eax], 0              
  0x00C2B923  0013                    add      byte ptr [ebx], dl             
  0x00C2B925  2920                    sub      dword ptr [eax], esp           
  0x00C2B927  0000                    add      byte ptr [eax], al             
  0x00C2B929  8721                    xchg     dword ptr [ecx], esp           
  0x00C2B92B  000c0c                  add      byte ptr [esp + ecx], cl       
  0x00C2B92E  050001f044              add      eax, 0x44f00100                
  0x00C2B933  008f04000044            add      byte ptr [edi + 0x44000004], cl 
  0x00C2B93A  44                      inc      esp                            
  0x00C2B93B  008e04000001            add      byte ptr [esi + 0x1000004], cl 
  0x00C2B941  7054                    jo       0xc2b997                       
  0x00C2B943  008b04000044            add      byte ptr [ebx + 0x44000004], cl 
  0x00C2B949  7047                    jo       0xc2b992                       
  0x00C2B94B  009104000074            add      byte ptr [ecx + 0x74000004], dl 
  0x00C2B951  7054                    jo       0xc2b9a7                       
  0x00C2B953  008a0400001b            add      byte ptr [edx + 0x1b000004], cl 
  0x00C2B959  0c05                    or       al, 5                          
  0x00C2B95B  0000                    add      byte ptr [eax], al             
  0x00C2B95E  56                      push     esi                            
  0x00C2B95F  008b04000000            add      byte ptr [ebx + 4], cl         
  0x00C2B966  44                      inc      esp                            
  0x00C2B967  008d04000044            add      byte ptr [ebp + 0x44000004], cl 
  0x00C2B96E  44                      inc      esp                            
  0x00C2B96F  008f04000001            add      byte ptr [edi + 0x1000004], cl 
  0x00C2B975  8621                    xchg     byte ptr [ecx], ah             
  0x00C2B977  0044f045                add      byte ptr [eax + esi*8 + 0x45], al 
  0x00C2B97B  008a04000055            add      byte ptr [edx + 0x55000004], cl 
  0x00C2B982  44                      inc      esp                            
  0x00C2B983  008c0400005090          add      byte ptr [esp + eax - 0x6fb00000], cl 
  0x00C2B98A  0200                    add      al, byte ptr [eax]             
  0x00C2B98C  61                      popal                                   
  0x00C2B98D  7054                    jo       0xc2b9e3                       
  0x00C2B98F  008b04000044            add      byte ptr [ebx + 0x44000004], cl 
  0x00C2B996  44                      inc      esp                            
                                        ; XREF: 0x00C2B941 (cond_jump)
  0x00C2B997  008e04000001            add      byte ptr [esi + 0x1000004], cl 
  0x00C2B99D  8621                    xchg     byte ptr [ecx], ah             
  0x00C2B99F  00447047                add      byte ptr [eax + esi*2 + 0x47], al 
  0x00C2B9A3  009104000055            add      byte ptr [ecx + 0x55000004], dl 
  0x00C2B9AA  44                      inc      esp                            
  0x00C2B9AB  008b04000050            add      byte ptr [ebx + 0x50000004], cl 
  0x00C2B9B1  90                      nop                                     
  0x00C2B9B2  0200                    add      al, byte ptr [eax]             
  0x00C2B9B4  7470                    je       0xc2ba26                       
  0x00C2B9B6  54                      push     esp                            
  0x00C2B9B7  008a04000045            add      byte ptr [edx + 0x45000004], cl 
  0x00C2B9BD  0020                    add      byte ptr [eax], ah             
  0x00C2B9BF  004090                  add      byte ptr [eax - 0x70], al      
  0x00C2B9C2  0200                    add      al, byte ptr [eax]             
  0x00C2B9C4  00f0                    add      al, dh                         
  0x00C2B9C6  44                      inc      esp                            
  0x00C2B9C7  00900400004c            add      byte ptr [eax + 0x4c000004], dl 
  0x00C2B9CD  de4e00                  fimul    word ptr [esi]                 
  0x00C2B9D0  851c0c                  test     dword ptr [esp + ecx], ebx     
  0x00C2B9D3  001429                  add      byte ptr [ecx + ebp], dl       
  0x00C2B9D6  2000                    and      byte ptr [eax], al             
  0x00C2B9D8  55                      push     ebp                            
  0x00C2B9D9  0020                    add      byte ptr [eax], ah             
  0x00C2B9DB  005090                  add      byte ptr [eax - 0x70], dl      
  0x00C2B9DE  0200                    add      al, byte ptr [eax]             
  0x00C2B9E0  006a54                  add      byte ptr [edx + 0x54], ch      
                                        ; XREF: 0x00C2B98D (cond_jump)
  0x00C2B9E3  0000                    add      byte ptr [eax], al             
  0x00C2B9E5  0e                      push     cs                             
  0x00C2B9E6  2200                    and      al, byte ptr [eax]             
  0x00C2B9E8  00c4                    add      ah, al                         
  0x00C2B9EA  2300                    and      eax, dword ptr [eax]           
  0x00C2B9EC  45                      inc      ebp                            
  0x00C2B9ED  5a                      pop      edx                            
  0x00C2B9EE  2000                    and      byte ptr [eax], al             
  0x00C2B9F0  d7                      xlatb                                   
  0x00C2B9F1  96                      xchg     esi, eax                       
  0x00C2B9F2  05000c0000              add      eax, 0xc00                     
  0x00C2B9F7  0000                    add      byte ptr [eax], al             
  0x00C2B9FA  56                      push     esi                            
  0x00C2B9FB  00b704000003            add      byte ptr [edi + 0x3000004], dh 
  0x00C2BA02  44                      inc      esp                            
  0x00C2BA03  00a204000007            add      byte ptr [edx + 0x7000004], ah 
  0x00C2BA09  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2BA0A  050000ee20              add      eax, 0x20ee0000                
  0x00C2BA0F  00640024                add      byte ptr [eax + eax + 0x24], ah 
  0x00C2BA13  0010                    add      byte ptr [eax], dl             
  0x00C2BA15  cc                      int3                                    
  0x00C2BA16  06                      push     es                             
  0x00C2BA17  0002                    add      byte ptr [edx], al             
  0x00C2BA19  0000                    add      byte ptr [eax], al             
  0x00C2BA1B  0000                    add      byte ptr [eax], al             
  0x00C2BA1D  59                      pop      ecx                            
  0x00C2BA1E  44                      inc      esp                            
  0x00C2BA1F  004d0c                  add      byte ptr [ebp + 0xc], cl       
  0x00C2BA22  050000f464              add      eax, 0x64f40000                
  0x00C2BA27  00ba0c000000            add      byte ptr [edx + 0xc], bh       
  0x00C2BA2D  f4                      hlt                                     
  0x00C2BA2E  6600a504000000          add      byte ptr [ebp + 4], ah         
  0x00C2BA35  da5700                  ficom    dword ptr [edi]                
  0x00C2BA38  4c                      dec      esp                            
  0x00C2BA3A  46                      inc      esi                            
  0x00C2BA3B  00bf0400005c            add      byte ptr [edi + 0x5c000004], bh 
  0x00C2BA41  0020                    add      byte ptr [eax], ah             
  0x00C2BA43  001b                    add      byte ptr [ebx], bl             
  0x00C2BA45  2920                    sub      dword ptr [eax], esp           
  0x00C2BA47  00ce                    add      dh, cl                         
  0x00C2BA49  40                      inc      eax                            
  0x00C2BA4A  0100                    add      dword ptr [eax], eax           
  0x00C2BA4C  e01f                    loopne   0xc2ba6d                       
  0x00C2BA4E  0000                    add      byte ptr [eax], al             
  0x00C2BA50  58                      pop      eax                            
  0x00C2BA51  dd5e00                  fstp     qword ptr [esi]                
  0x00C2BA54  7500                    jne      0xc2ba56                       
                                        ; XREF: 0x00C2BA54 (cond_jump)
  0x00C2BA56  2000                    and      byte ptr [eax], al             
  0x00C2BA58  7070                    jo       0xc2baca                       
  0x00C2BA5A  0200                    add      al, byte ptr [eax]             
  0x00C2BA5C  64c521                  lds      esp, ptr fs:[ecx]              
  0x00C2BA5F  0084410100009e          add      byte ptr [ecx + eax*2 - 0x61ffffff], al 
  0x00C2BA66  2100                    and      dword ptr [eax], eax           
  0x00C2BA68  00d8                    add      al, bl                         
  0x00C2BA6A  56                      push     esi                            
  0x00C2BA6B  0014f4                  add      byte ptr [esp + esi*8], dl     
  0x00C2BA6E  46                      inc      esi                            
  0x00C2BA6F  003f                    add      byte ptr [edi], bh             
  0x00C2BA71  0000                    add      byte ptr [eax], al             
  0x00C2BA73  0013                    add      byte ptr [ebx], dl             
  0x00C2BA75  2920                    sub      dword ptr [eax], esp           
  0x00C2BA77  00ca                    add      dl, cl                         
  0x00C2BA79  1e                      push     ds                             
  0x00C2BA7A  0c00                    or       al, 0                          
  0x00C2BA7C  55                      push     ebp                            
  0x00C2BA7D  0020                    add      byte ptr [eax], ah             
  0x00C2BA7F  005070                  add      byte ptr [eax + 0x70], dl      
  0x00C2BA82  0200                    add      al, byte ptr [eax]             
  0x00C2BA84  009c210010de06          add      byte ptr [ecx + 0x6de1000], bl 
  0x00C2BA8B  000b                    add      byte ptr [ebx], cl             
  0x00C2BA8D  0000                    add      byte ptr [eax], al             
  0x00C2BA8F  0000                    add      byte ptr [eax], al             
  0x00C2BA91  d85600                  fcom     dword ptr [esi]                
  0x00C2BA94  14ec                    adc      al, 0xec                       
  0x00C2BA96  7e00                    jle      0xc2ba98                       
                                        ; XREF: 0x00C2BA96 (cond_jump)
  0x00C2BA98  1329                    adc      ebp, dword ptr [ecx]           
  0x00C2BA9A  2000                    and      byte ptr [eax], al             
  0x00C2BA9C  ca1e0c                  retf     0xc1e                          
  0x00C2BA9F  005559                  add      byte ptr [ebp + 0x59], dl      
  0x00C2BAA2  7600                    jbe      0xc2baa4                       
                                        ; XREF: 0x00C2BAA2 (cond_jump)
  0x00C2BAA4  50                      push     eax                            
  0x00C2BAA5  7002                    jo       0xc2baa9                       
  0x00C2BAA7  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2BAA5 (cond_jump)
  0x00C2BAA9  9c                      pushfd                                  
  0x00C2BAAA  2100                    and      dword ptr [eax], eax           
  0x00C2BAAC  00ee                    add      dh, ch                         
  0x00C2BAAE  56                      push     esi                            
  0x00C2BAAF  008041010000            add      byte ptr [eax + 0x141], al     
  0x00C2BAB5  6e                      outsb    dx, byte ptr [esi]             
  0x00C2BAB6  54                      push     esp                            
  0x00C2BAB7  0000                    add      byte ptr [eax], al             
  0x00C2BAB9  ec                      in       al, dx                         
  0x00C2BABA  7e00                    jle      0xc2babc                       
                                        ; XREF: 0x00C2BABA (cond_jump)
  0x00C2BABC  005976                  add      byte ptr [ecx + 0x76], bl      
  0x00C2BABF  0000                    add      byte ptr [eax], al             
  0x00C2BAC1  ee                      out      dx, al                         
  0x00C2BAC2  56                      push     esi                            
  0x00C2BAC3  008041010071            add      byte ptr [eax + 0x71000141], al 
  0x00C2BAC9  6e                      outsb    dx, byte ptr [esi]             
                                        ; XREF: 0x00C2BA58 (cond_jump)
  0x00C2BACA  54                      push     esp                            
  0x00C2BACB  006500                  add      byte ptr [ebp], ah             
  0x00C2BACE  2000                    and      byte ptr [eax], al             
  0x00C2BAD0  99                      cdq                                     
  0x00C2BAD1  7705                    ja       0xc2bad8                       
  0x00C2BAD3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2BAD6  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2BAD1 (cond_jump)
  0x00C2BAD8  00f4                    add      ah, dh                         
  0x00C2BADA  60                      pushal                                  
  0x00C2BADB  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2BADE  0000                    add      byte ptr [eax], al             
  0x00C2BAE0  00f0                    add      al, dh                         
  0x00C2BAE2  7000                    jo       0xc2bae4                       
                                        ; XREF: 0x00C2BAE2 (cond_jump)
  0x00C2BAE4  40                      inc      eax                            
  0x00C2BAE5  0b00                    or       eax, dword ptr [eax]           
  0x00C2BAE7  0000                    add      byte ptr [eax], al             
  0x00C2BAE9  e8570000f0              call     0xf0c2bb45                     
  0x00C2BAEE  44                      inc      esp                            
  0x00C2BAEF  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2BAF2  0000                    add      byte ptr [eax], al             
  0x00C2BAF4  4c                      dec      esp                            
  0x00C2BAF5  0020                    add      byte ptr [eax], ah             
  0x00C2BAF7  000b                    add      byte ptr [ebx], cl             
  0x00C2BAF9  0020                    add      byte ptr [eax], ah             
  0x00C2BAFB  000c14                  add      byte ptr [esp + edx], cl       
  0x00C2BAFE  0500130020              add      eax, 0x20001300                
  0x00C2BB03  0000                    add      byte ptr [eax], al             
  0x00C2BB05  7056                    jo       0xc2bb5d                       
  0x00C2BB07  00660b                  add      byte ptr [esi + 0xb], ah       
  0x00C2BB0A  0000                    add      byte ptr [eax], al             
  0x00C2BB0C  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2BB0F  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2BB12  0000                    add      byte ptr [eax], al             
  0x00C2BB14  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2BB17  00a40400000070          add      byte ptr [esp + eax + 0x70000000], ah 
  0x00C2BB1E  56                      push     esi                            
  0x00C2BB1F  006e0b                  add      byte ptr [esi + 0xb], ch       
  0x00C2BB22  0000                    add      byte ptr [eax], al             
  0x00C2BB24  c0100d                  rcl      byte ptr [eax], 0xd            
  0x00C2BB27  0027                    add      byte ptr [edi], ah             
  0x00C2BB29  0000                    add      byte ptr [eax], al             
  0x00C2BB2B  0013                    add      byte ptr [ebx], dl             
  0x00C2BB2D  0020                    add      byte ptr [eax], ah             
  0x00C2BB2F  0000                    add      byte ptr [eax], al             
  0x00C2BB31  d821                    fsub     dword ptr [ecx]                
  0x00C2BB33  0000                    add      byte ptr [eax], al             
  0x00C2BB36  44                      inc      esp                            
  0x00C2BB37  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2BB3A  0000                    add      byte ptr [eax], al             
  0x00C2BB3C  45                      inc      ebp                            
  0x00C2BB3D  0020                    add      byte ptr [eax], ah             
  0x00C2BB3F  000494                  add      byte ptr [esp + edx*4], al     
  0x00C2BB42  050000f456              add      eax, 0x56f40000                
  0x00C2BB47  0009                    add      byte ptr [ecx], cl             
  0x00C2BB49  0000                    add      byte ptr [eax], al             
  0x00C2BB4B  0000                    add      byte ptr [eax], al             
  0x00C2BB4D  d821                    fsub     dword ptr [ecx]                
  0x00C2BB4F  000500200009            add      byte ptr [0x9002000], al       
  0x00C2BB55  f4                      hlt                                     
  0x00C2BB56  0500130020              add      eax, 0x20001300                
  0x00C2BB5B  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2BB05 (cond_jump)
  0x00C2BB5D  7056                    jo       0xc2bbb5                       
  0x00C2BB5F  00660b                  add      byte ptr [esi + 0xb], ah       
  0x00C2BB62  0000                    add      byte ptr [eax], al             
  0x00C2BB64  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2BB67  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2BB6A  0000                    add      byte ptr [eax], al             
  0x00C2BB6C  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2BB6F  00a4040000130c          add      byte ptr [esp + eax + 0xc130000], ah 
  0x00C2BB76  050000f456              add      eax, 0x56f40000                
  0x00C2BB7B  0001                    add      byte ptr [ecx], al             
  0x00C2BB7D  0000                    add      byte ptr [eax], al             
  0x00C2BB7F  0000                    add      byte ptr [eax], al             
  0x00C2BB81  7056                    jo       0xc2bbd9                       
  0x00C2BB83  00660b                  add      byte ptr [esi + 0xb], ah       
  0x00C2BB86  0000                    add      byte ptr [eax], al             
  0x00C2BB88  00ee                    add      dh, ch                         
  0x00C2BB8A  2100                    and      dword ptr [eax], eax           
  0x00C2BB8C  000423                  add      byte ptr [ebx], al             
  0x00C2BB8F  00440020                add      byte ptr [eax + eax + 0x20], al 
  0x00C2BB93  0006                    add      byte ptr [esi], al             
  0x00C2BB95  1c0c                    sbb      al, 0xc                        
  0x00C2BB97  0000                    add      byte ptr [eax], al             
  0x00C2BB99  0028                    add      byte ptr [eax], ch             
  0x00C2BB9B  0000                    add      byte ptr [eax], al             
  0x00C2BB9D  7056                    jo       0xc2bbf5                       
  0x00C2BB9F  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2BBA2  0000                    add      byte ptr [eax], al             
  0x00C2BBA4  06                      push     es                             
  0x00C2BBA5  1d0c000004              sbb      eax, 0x400000c                 
  0x00C2BBAA  2300                    and      eax, dword ptr [eax]           
  0x00C2BBAC  40                      inc      eax                            
  0x00C2BBAD  0020                    add      byte ptr [eax], ah             
  0x00C2BBAF  0000                    add      byte ptr [eax], al             
  0x00C2BBB1  7056                    jo       0xc2bc09                       
  0x00C2BBB3  00a404000000c4          add      byte ptr [esp + eax - 0x3c000000], ah 
  0x00C2BBBA  2100                    and      dword ptr [eax], eax           
  0x00C2BBBC  4c                      dec      esp                            
  0x00C2BBBD  0020                    add      byte ptr [eax], ah             
  0x00C2BBBF  0000                    add      byte ptr [eax], al             
  0x00C2BBC2  56                      push     esi                            
  0x00C2BBC3  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2BBC6  0000                    add      byte ptr [eax], al             
  0x00C2BBC8  00f4                    add      ah, dh                         
  0x00C2BBCA  44                      inc      esp                            
  0x00C2BBCB  000500000045            add      byte ptr [0x45000000], al      
  0x00C2BBD1  0020                    add      byte ptr [eax], ah             
  0x00C2BBD3  0013                    add      byte ptr [ebx], dl             
  0x00C2BBD5  2405                    and      al, 5                          
  0x00C2BBD7  0000                    add      byte ptr [eax], al             
  0x00C2BBDA  56                      push     esi                            
  0x00C2BBDB  009f0b000000            add      byte ptr [edi + 0xb], bl       
  0x00C2BBE2  44                      inc      esp                            
  0x00C2BBE3  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2BBE6  0000                    add      byte ptr [eax], al             
  0x00C2BBE8  44                      inc      esp                            
  0x00C2BBE9  0020                    add      byte ptr [eax], ah             
  0x00C2BBEB  0000                    add      byte ptr [eax], al             
  0x00C2BBEE  44                      inc      esp                            
  0x00C2BBEF  00530b                  add      byte ptr [ebx + 0xb], dl       
  0x00C2BBF2  0000                    add      byte ptr [eax], al             
  0x00C2BBF4  44                      inc      esp                            
                                        ; XREF: 0x00C2BB9D (cond_jump)
  0x00C2BBF5  0020                    add      byte ptr [eax], ah             
  0x00C2BBF7  0000                    add      byte ptr [eax], al             
  0x00C2BBF9  d921                    fldenv   [ecx]                          
  0x00C2BBFB  0000                    add      byte ptr [eax], al             
  0x00C2BBFD  7057                    jo       0xc2bc56                       
  0x00C2BBFF  006e0b                  add      byte ptr [esi + 0xb], ch       
  0x00C2BC02  0000                    add      byte ptr [eax], al             
  0x00C2BC04  0300                    add      eax, dword ptr [eax]           
  0x00C2BC06  2000                    and      byte ptr [eax], al             
  0x00C2BC08  0494                    add      al, 0x94                       
  0x00C2BC0A  0500050020              add      eax, 0x20000500                
  0x00C2BC0F  0002                    add      byte ptr [edx], al             
  0x00C2BC11  f4                      hlt                                     
  0x00C2BC12  0500030c05              add      eax, 0x50c0300                 
  0x00C2BC17  0000                    add      byte ptr [eax], al             
  0x00C2BC19  2423                    and      al, 0x23                       
  0x00C2BC1B  0000                    add      byte ptr [eax], al             
  0x00C2BC1E  2000                    and      byte ptr [eax], al             
  0x00C2BC20  00f0                    add      al, dh                         
  0x00C2BC22  56                      push     esi                            
  0x00C2BC23  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2BC26  0000                    add      byte ptr [eax], al             
  0x00C2BC28  0300                    add      eax, dword ptr [eax]           
  0x00C2BC2A  2000                    and      byte ptr [eax], al             
  0x00C2BC2C  0af4                    or       dh, ah                         
  0x00C2BC2E  050000f444              add      eax, 0x44f40000                
  0x00C2BC33  0001                    add      byte ptr [ecx], al             
  0x00C2BC35  0000                    add      byte ptr [eax], al             
  0x00C2BC37  0000                    add      byte ptr [eax], al             
  0x00C2BC39  7044                    jo       0xc2bc7f                       
  0x00C2BC3B  00660b                  add      byte ptr [esi + 0xb], ah       
  0x00C2BC3E  0000                    add      byte ptr [eax], al             
  0x00C2BC40  00f0                    add      al, dh                         
  0x00C2BC42  44                      inc      esp                            
  0x00C2BC43  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2BC46  0000                    add      byte ptr [eax], al             
  0x00C2BC48  40                      inc      eax                            
  0x00C2BC49  0020                    add      byte ptr [eax], ah             
  0x00C2BC4B  0000                    add      byte ptr [eax], al             
  0x00C2BC4D  7056                    jo       0xc2bca5                       
  0x00C2BC4F  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2BC52  0000                    add      byte ptr [eax], al             
  0x00C2BC54  0c00                    or       al, 0                          
                                        ; XREF: 0x00C2BBFD (cond_jump)
  0x00C2BC56  0000                    add      byte ptr [eax], al             
  0x00C2BC58  0011                    add      byte ptr [ecx], dl             
  0x00C2BC5A  2200                    and      al, byte ptr [eax]             
  0x00C2BC5C  00b2220069f4            add      byte ptr [edx - 0xb96ffde], dh 
  0x00C2BC62  46                      inc      esi                            
  0x00C2BC63  0002                    add      byte ptr [edx], al             
  0x00C2BC65  0000                    add      byte ptr [eax], al             
  0x00C2BC67  0010                    add      byte ptr [eax], dl             
  0x00C2BC69  d806                    fadd     dword ptr [esi]                
  0x00C2BC6B  000500000000            add      byte ptr [0], al               
  0x00C2BC71  c9                      leave                                   
  0x00C2BC72  56                      push     esi                            
  0x00C2BC73  00148f                  add      byte ptr [edi + ecx*4], dl     
  0x00C2BC76  2100                    and      dword ptr [eax], eax           
  0x00C2BC78  50                      push     eax                            
  0x00C2BC79  0020                    add      byte ptr [eax], ah             
  0x00C2BC7B  0000                    add      byte ptr [eax], al             
  0x00C2BC7D  5a                      pop      edx                            
  0x00C2BC7E  54                      push     esp                            
                                        ; XREF: 0x00C2BC39 (cond_jump)
  0x00C2BC7F  0000                    add      byte ptr [eax], al             
  0x00C2BC81  4e                      dec      esi                            
  0x00C2BC82  2300                    and      eax, dword ptr [eax]           
  0x00C2BC84  32442300                xor      al, byte ptr [ebx]             
  0x00C2BC88  40                      inc      eax                            
  0x00C2BC89  0423                    add      al, 0x23                       
  0x00C2BC8B  00440024                add      byte ptr [eax + eax + 0x24], al 
  0x00C2BC8F  0004a4                  add      byte ptr [esp], al             
  0x00C2BC92  050010cc06              add      eax, 0x6cc1000                 
  0x00C2BC97  0002                    add      byte ptr [edx], al             
  0x00C2BC99  0000                    add      byte ptr [eax], al             
  0x00C2BC9B  0000                    add      byte ptr [eax], al             
  0x00C2BC9D  5a                      pop      edx                            
  0x00C2BC9E  44                      inc      esp                            
  0x00C2BC9F  0000                    add      byte ptr [eax], al             
  0x00C2BCA1  b022                    mov      al, 0x22                       
  0x00C2BCA3  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2BC4D (cond_jump)
  0x00C2BCA5  91                      xchg     ecx, eax                       
  0x00C2BCA6  2200                    and      al, byte ptr [eax]             
  0x00C2BCA8  00f4                    add      ah, dh                         
  0x00C2BCAA  65000d0d000000          add      byte ptr gs:[0xd], cl          
  0x00C2BCB1  f4                      hlt                                     
  0x00C2BCB2  7500                    jne      0xc2bcb4                       
  0x00C2BCB6  ff00                    inc      dword ptr [eax]                
  0x00C2BCB8  10da                    adc      dl, bl                         
  0x00C2BCBA  06                      push     es                             
  0x00C2BCBB  0007                    add      byte ptr [edi], al             
  0x00C2BCBD  0000                    add      byte ptr [eax], al             
  0x00C2BCBF  0000                    add      byte ptr [eax], al             
  0x00C2BCC1  b8f000d0b8              mov      eax, 0xb8d000f0                
  0x00C2BCC7  00d2                    add      dl, dl                         
  0x00C2BCC9  b8d000d200              mov      eax, 0xd200d0                  
  0x00C2BCCE  2000                    and      byte ptr [eax], al             
  0x00C2BCD0  2200                    and      al, byte ptr [eax]             
  0x00C2BCD2  2000                    and      byte ptr [eax], al             
  0x00C2BCD4  005958                  add      byte ptr [ecx + 0x58], bl      
  0x00C2BCD7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2BCDA  0000                    add      byte ptr [eax], al             
  0x00C2BCDC  20f4                    and      ah, dh                         
  0x00C2BCDE  0500ffffff              add      eax, 0xffffff00                
  0x00C2BCE3  00a0610400a0            add      byte ptr [eax - 0x5ffffb9f], ah 
  0x00C2BCE9  620400                  bound    eax, qword ptr [eax + eax]     
  0x00C2BCEC  a0640400a0              mov      al, byte ptr [0xa0000464]      
  0x00C2BCF1  650400                  add      al, 0                          
  0x00C2BCF4  a0660400b8              mov      al, byte ptr [0xb8000466]      
  0x00C2BCF9  f30000                  add      byte ptr [eax], al             
  0x00C2BCFC  00f4                    add      ah, dh                         
  0x00C2BCFE  44                      inc      esp                            
  0x00C2BCFF  0000                    add      byte ptr [eax], al             
  0x00C2BD01  0000                    add      byte ptr [eax], al             
  0x00C2BD03  004d00                  add      byte ptr [ebp], cl             
  0x00C2BD06  2000                    and      byte ptr [eax], al             
  0x00C2BD08  0ca4                    or       al, 0xa4                       
  0x00C2BD0A  050000f444              add      eax, 0x44f40000                
  0x00C2BD0F  0010                    add      byte ptr [eax], dl             
  0x00C2BD11  0000                    add      byte ptr [eax], al             
  0x00C2BD13  004d00                  add      byte ptr [ebp], cl             
  0x00C2BD16  2000                    and      byte ptr [eax], al             
  0x00C2BD18  4a                      dec      edx                            
  0x00C2BD19  100d000f0000            adc      byte ptr [0xf00], cl           
  0x00C2BD1F  0000                    add      byte ptr [eax], al             
  0x00C2BD21  0030                    add      byte ptr [eax], dh             
  0x00C2BD23  0000                    add      byte ptr [eax], al             
  0x00C2BD25  f4                      hlt                                     
  0x00C2BD26  56                      push     esi                            
  0x00C2BD27  0000                    add      byte ptr [eax], al             
  0x00C2BD29  0000                    add      byte ptr [eax], al             
  0x00C2BD2B  0000                    add      byte ptr [eax], al             
  0x00C2BD2D  f4                      hlt                                     
  0x00C2BD2E  57                      push     edi                            
  0x00C2BD2F  00ff                    add      bh, bh                         
  0x00C2BD32  ff00                    inc      dword ptr [eax]                
  0x00C2BD34  0c00                    or       al, 0                          
  0x00C2BD36  0000                    add      byte ptr [eax], al             
  0x00C2BD38  1300                    adc      eax, dword ptr [eax]           
  0x00C2BD3A  2000                    and      byte ptr [eax], al             
  0x00C2BD3C  0000                    add      byte ptr [eax], al             
  0x00C2BD3E  3000                    xor      byte ptr [eax], al             
  0x00C2BD40  00f4                    add      ah, dh                         
  0x00C2BD42  56                      push     esi                            
  0x00C2BD43  0000                    add      byte ptr [eax], al             
  0x00C2BD45  0000                    add      byte ptr [eax], al             
  0x00C2BD47  0000                    add      byte ptr [eax], al             
  0x00C2BD49  f4                      hlt                                     
  0x00C2BD4A  57                      push     edi                            
  0x00C2BD4B  0008                    add      byte ptr [eax], cl             
  0x00C2BD4D  06                      push     es                             
  0x00C2BD4E  0000                    add      byte ptr [eax], al             
  0x00C2BD50  0c00                    or       al, 0                          
  0x00C2BD52  0000                    add      byte ptr [eax], al             
  0x00C2BD54  00f0                    add      al, dh                         
  0x00C2BD56  56                      push     esi                            
  0x00C2BD57  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2BD5D  0020                    add      byte ptr [eax], ah             
  0x00C2BD5F  001e                    add      byte ptr [esi], bl             
  0x00C2BD61  7405                    je       0xc2bd68                       
  0x00C2BD63  0000                    add      byte ptr [eax], al             
  0x00C2BD66  56                      push     esi                            
  0x00C2BD67  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2BD6A  0000                    add      byte ptr [eax], al             
  0x00C2BD6C  0300                    add      eax, dword ptr [eax]           
  0x00C2BD6E  2e0002                  add      byte ptr cs:[edx], al          
  0x00C2BD71  2405                    and      al, 5                          
  0x00C2BD73  008041010000            add      byte ptr [eax + 0x141], al     
  0x00C2BD79  7056                    jo       0xc2bdd1                       
  0x00C2BD7B  00890b000080            add      byte ptr [ecx - 0x7ffffff5], cl 
  0x00C2BD81  100d008b0300            adc      byte ptr [0x38b00], cl         
  0x00C2BD87  0000                    add      byte ptr [eax], al             
  0x00C2BD89  f4                      hlt                                     
  0x00C2BD8A  44                      inc      esp                            
  0x00C2BD8B  00b007000000            add      byte ptr [eax + 7], dh         
  0x00C2BD91  7044                    jo       0xc2bdd7                       
  0x00C2BD93  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2BD96  0000                    add      byte ptr [eax], al             
  0x00C2BD98  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2BD9B  001400                  add      byte ptr [eax + eax], dl       
  0x00C2BD9E  0000                    add      byte ptr [eax], al             
  0x00C2BDA0  00f0                    add      al, dh                         
  0x00C2BDA2  56                      push     esi                            
  0x00C2BDA3  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2BDA6  0000                    add      byte ptr [eax], al             
  0x00C2BDA8  0300                    add      eax, dword ptr [eax]           
  0x00C2BDAA  2e0003                  add      byte ptr cs:[ebx], al          
  0x00C2BDAD  2405                    and      al, 5                          
  0x00C2BDAF  0080100d0053            add      byte ptr [eax + 0x53000d10], al 
  0x00C2BDB5  0300                    add      eax, dword ptr [eax]           
  0x00C2BDB7  0080100d009d            add      byte ptr [eax - 0x62fff2f0], al 
  0x00C2BDBD  0000                    add      byte ptr [eax], al             
  0x00C2BDBF  0000                    add      byte ptr [eax], al             
  0x00C2BDC2  56                      push     esi                            
  0x00C2BDC3  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2BDC9  0020                    add      byte ptr [eax], ah             
  0x00C2BDCB  0003                    add      byte ptr [ebx], al             
  0x00C2BDCD  2405                    and      al, 5                          
  0x00C2BDCF  0080100d009c            add      byte ptr [eax - 0x63fff2f0], al 
  0x00C2BDD5  0100                    add      dword ptr [eax], eax           
                                        ; XREF: 0x00C2BD91 (cond_jump)
  0x00C2BDD7  0013                    add      byte ptr [ebx], dl             
  0x00C2BDD9  0020                    add      byte ptr [eax], ah             
  0x00C2BDDB  001b                    add      byte ptr [ebx], bl             
  0x00C2BDDD  1021                    adc      byte ptr [ecx], ah             
  0x00C2BDDF  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2BDE2  0000                    add      byte ptr [eax], al             
  0x00C2BDE4  0c00                    or       al, 0                          
  0x00C2BDE6  0000                    add      byte ptr [eax], al             
  0x00C2BDE8  00f4                    add      ah, dh                         
  0x00C2BDEA  44                      inc      esp                            
  0x00C2BDEB  0001                    add      byte ptr [ecx], al             
  0x00C2BDED  0000                    add      byte ptr [eax], al             
  0x00C2BDEF  0000                    add      byte ptr [eax], al             
  0x00C2BDF1  7044                    jo       0xc2be37                       
  0x00C2BDF3  006f0b                  add      byte ptr [edi + 0xb], ch       
  0x00C2BDF6  0000                    add      byte ptr [eax], al             
  0x00C2BDF8  1bf0                    sbb      esi, eax                       
  0x00C2BDFA  56                      push     esi                            
  0x00C2BDFB  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2BDFE  0000                    add      byte ptr [eax], al             
  0x00C2BE00  0300                    add      eax, dword ptr [eax]           
  0x00C2BE02  2000                    and      byte ptr [eax], al             
  0x00C2BE04  02240500090000          add      ah, byte ptr [eax + 0x900]     
  0x00C2BE0B  0000                    add      byte ptr [eax], al             
  0x00C2BE0D  7051                    jo       0xc2be60                       
  0x00C2BE0F  00c0                    add      al, al                         
  0x00C2BE11  0400                    add      al, 0                          
  0x00C2BE13  0000                    add      byte ptr [eax], al             
  0x00C2BE15  0230                    add      dh, byte ptr [eax]             
  0x00C2BE17  0000                    add      byte ptr [eax], al             
  0x00C2BE19  0131                    add      dword ptr [ecx], esi           
  0x00C2BE1B  0000                    add      byte ptr [eax], al             
  0x00C2BE1D  0132                    add      dword ptr [edx], esi           
  0x00C2BE1F  0000                    add      byte ptr [eax], al             
  0x00C2BE21  023500c4700b            add      dh, byte ptr [0xb70c400]       
  0x00C2BE27  0008                    add      byte ptr [eax], cl             
  0x00C2BE29  0c00                    or       al, 0                          
  0x00C2BE2B  0000                    add      byte ptr [eax], al             
  0x00C2BE2D  7044                    jo       0xc2be73                       
  0x00C2BE2F  008d040000c4            add      byte ptr [ebp - 0x3bfffffc], cl 
  0x00C2BE35  710b                    jno      0xc2be42                       
                                        ; XREF: 0x00C2BDF1 (cond_jump)
  0x00C2BE37  00040c                  add      byte ptr [esp + ecx], al       
  0x00C2BE3A  0000                    add      byte ptr [eax], al             
  0x00C2BE3C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BE3F  008c040000c472          add      byte ptr [esp + eax + 0x72c40000], cl 
  0x00C2BE46  0b00                    or       eax, dword ptr [eax]           
  0x00C2BE48  140c                    adc      al, 0xc                        
  0x00C2BE4A  0000                    add      byte ptr [eax], al             
  0x00C2BE4C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BE4F  008f040000c4            add      byte ptr [edi - 0x3bfffffc], cl 
  0x00C2BE55  750b                    jne      0xc2be62                       
  0x00C2BE57  0018                    add      byte ptr [eax], bl             
  0x00C2BE59  0c00                    or       al, 0                          
  0x00C2BE5B  0000                    add      byte ptr [eax], al             
  0x00C2BE5D  7044                    jo       0xc2bea3                       
  0x00C2BE5F  009004000000            add      byte ptr [eax + 4], dl         
  0x00C2BE65  0036                    add      byte ptr [esi], dh             
  0x00C2BE67  0000                    add      byte ptr [eax], al             
  0x00C2BE6A  44                      inc      esp                            
  0x00C2BE6B  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2BE71  c406                    les      eax, ptr [esi]                 
                                        ; XREF: 0x00C2BE2D (cond_jump)
  0x00C2BE73  004e00                  add      byte ptr [esi], cl             
  0x00C2BE76  0000                    add      byte ptr [eax], al             
  0x00C2BE78  0001                    add      byte ptr [ecx], al             
  0x00C2BE7A  2800                    sub      byte ptr [eax], al             
  0x00C2BE7C  007050                  add      byte ptr [eax + 0x50], dh      
  0x00C2BE7F  00c0                    add      al, al                         
  0x00C2BE81  0400                    add      al, 0                          
  0x00C2BE83  0000                    add      byte ptr [eax], al             
  0x00C2BE85  0430                    add      al, 0x30                       
  0x00C2BE87  00c4                    add      ah, al                         
  0x00C2BE89  700b                    jo       0xc2be96                       
  0x00C2BE8B  000c0c                  add      byte ptr [esp + ecx], cl       
  0x00C2BE8E  0000                    add      byte ptr [eax], al             
  0x00C2BE90  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BE93  008e04000000            add      byte ptr [esi + 4], cl         
  0x00C2BE99  f4                      hlt                                     
  0x00C2BE9A  44                      inc      esp                            
  0x00C2BE9B  0000                    add      byte ptr [eax], al             
  0x00C2BE9D  80ff00                  cmp      bh, 0                          
  0x00C2BEA0  007044                  add      byte ptr [eax + 0x44], dh      
                                        ; XREF: 0x00C2BE5D (cond_jump)
  0x00C2BEA3  008a04000000            add      byte ptr [edx + 4], cl         
  0x00C2BEA9  f4                      hlt                                     
  0x00C2BEAA  44                      inc      esp                            
  0x00C2BEAB  0000                    add      byte ptr [eax], al             
  0x00C2BEAD  80ff00                  cmp      bh, 0                          
  0x00C2BEB0  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BEB3  008b04000000            add      byte ptr [ebx + 4], cl         
  0x00C2BEB9  c422                    les      esp, ptr [edx]                 
  0x00C2BEBB  0000                    add      byte ptr [eax], al             
  0x00C2BEBD  f4                      hlt                                     
  0x00C2BEBE  46                      inc      esi                            
  0x00C2BEBF  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2BEC5  f4                      hlt                                     
  0x00C2BEC6  44                      inc      esp                            
  0x00C2BEC7  00fa                    add      dl, bh                         
  0x00C2BEC9  0000                    add      byte ptr [eax], al             
  0x00C2BECB  002e                    add      byte ptr [esi], ch             
  0x00C2BECD  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2BED2  2000                    and      byte ptr [eax], al             
  0x00C2BED4  0090210000c4            add      byte ptr [eax - 0x3bffffdf], dl 
  0x00C2BEDA  2200                    and      al, byte ptr [eax]             
  0x00C2BEDC  00f4                    add      ah, dh                         
  0x00C2BEDE  46                      inc      esi                            
  0x00C2BEDF  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2BEE5  f4                      hlt                                     
  0x00C2BEE6  44                      inc      esp                            
  0x00C2BEE7  00fa                    add      dl, bh                         
  0x00C2BEE9  0000                    add      byte ptr [eax], al             
  0x00C2BEEB  002e                    add      byte ptr [esi], ch             
  0x00C2BEED  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2BEF2  2000                    and      byte ptr [eax], al             
  0x00C2BEF4  0095210000c4            add      byte ptr [ebp - 0x3bffffdf], dl 
  0x00C2BEFA  2200                    and      al, byte ptr [eax]             
  0x00C2BEFC  00f4                    add      ah, dh                         
  0x00C2BEFE  46                      inc      esi                            
  0x00C2BEFF  0032                    add      byte ptr [edx], dh             
  0x00C2BF01  0000                    add      byte ptr [eax], al             
  0x00C2BF03  00d0                    add      al, dl                         
  0x00C2BF05  f4                      hlt                                     
  0x00C2BF06  44                      inc      esp                            
  0x00C2BF07  0000                    add      byte ptr [eax], al             
  0x00C2BF09  0000                    add      byte ptr [eax], al             
  0x00C2BF0B  002e                    add      byte ptr [esi], ch             
  0x00C2BF0D  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2BF12  2000                    and      byte ptr [eax], al             
  0x00C2BF14  009a21000000            add      byte ptr [edx + 0x21], bl      
  0x00C2BF1A  3800                    cmp      byte ptr [eax], al             
  0x00C2BF1C  00f4                    add      ah, dh                         
  0x00C2BF1E  56                      push     esi                            
  0x00C2BF1F  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2BF25  c422                    les      esp, ptr [edx]                 
  0x00C2BF27  004000                  add      byte ptr [eax], al             
  0x00C2BF2A  2000                    and      byte ptr [eax], al             
  0x00C2BF2C  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2BF32  7400                    je       0xc2bf34                       
                                        ; XREF: 0x00C2BF32 (cond_jump)
  0x00C2BF34  00e1                    add      cl, ah                         
  0x00C2BF36  7600                    jbe      0xc2bf38                       
                                        ; XREF: 0x00C2BF36 (cond_jump)
  0x00C2BF38  0000                    add      byte ptr [eax], al             
  0x00C2BF3A  3200                    xor      al, byte ptr [eax]             
  0x00C2BF3C  007066                  add      byte ptr [eax + 0x66], dh      
  0x00C2BF3F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2BF42  0000                    add      byte ptr [eax], al             
  0x00C2BF44  d7                      xlatb                                   
  0x00C2BF45  030d0000f066            add      ecx, dword ptr [0x66f00000]    
  0x00C2BF4B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2BF4E  0000                    add      byte ptr [eax], al             
  0x00C2BF50  00f4                    add      ah, dh                         
  0x00C2BF52  56                      push     esi                            
  0x00C2BF53  00c1                    add      cl, al                         
  0x00C2BF55  0400                    add      al, 0                          
  0x00C2BF57  0000                    add      byte ptr [eax], al             
  0x00C2BF59  c422                    les      esp, ptr [edx]                 
  0x00C2BF5B  004000                  add      byte ptr [eax], al             
  0x00C2BF5E  2000                    and      byte ptr [eax], al             
  0x00C2BF60  009021000060            add      byte ptr [eax + 0x60000021], dl 
  0x00C2BF66  6200                    bound    eax, qword ptr [eax]           
  0x00C2BF68  00f4                    add      ah, dh                         
  0x00C2BF6A  56                      push     esi                            
  0x00C2BF6B  009404000000c4          add      byte ptr [esp + eax - 0x3c000000], dl 
  0x00C2BF72  2200                    and      al, byte ptr [eax]             
  0x00C2BF74  40                      inc      eax                            
  0x00C2BF75  0020                    add      byte ptr [eax], ah             
  0x00C2BF77  0000                    add      byte ptr [eax], al             
  0x00C2BF79  90                      nop                                     
  0x00C2BF7A  2100                    and      dword ptr [eax], eax           
  0x00C2BF7C  00f0                    add      al, dh                         
  0x00C2BF7E  44                      inc      esp                            
  0x00C2BF7F  008a04000000            add      byte ptr [edx + 4], cl         
  0x00C2BF85  60                      pushal                                  
  0x00C2BF86  44                      inc      esp                            
  0x00C2BF87  0000                    add      byte ptr [eax], al             
  0x00C2BF89  f4                      hlt                                     
  0x00C2BF8A  56                      push     esi                            
  0x00C2BF8B  009904000000            add      byte ptr [ecx + 4], bl         
  0x00C2BF91  c422                    les      esp, ptr [edx]                 
  0x00C2BF93  004000                  add      byte ptr [eax], al             
  0x00C2BF96  2000                    and      byte ptr [eax], al             
  0x00C2BF98  0090210000f0            add      byte ptr [eax - 0xfffffdf], dl 
  0x00C2BF9E  44                      inc      esp                            
  0x00C2BF9F  008b04000000            add      byte ptr [ebx + 4], cl         
  0x00C2BFA5  60                      pushal                                  
  0x00C2BFA6  44                      inc      esp                            
  0x00C2BFA7  0000                    add      byte ptr [eax], al             
  0x00C2BFA9  5e                      pop      esi                            
  0x00C2BFAA  2000                    and      byte ptr [eax], al             
  0x00C2BFAC  00f0                    add      al, dh                         
  0x00C2BFAE  56                      push     esi                            
  0x00C2BFAF  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2BFB2  0000                    add      byte ptr [eax], al             
  0x00C2BFB4  0300                    add      eax, dword ptr [eax]           
  0x00C2BFB6  2000                    and      byte ptr [eax], al             
  0x00C2BFB8  1ca4                    sbb      al, 0xa4                       
  0x00C2BFBA  0500000128              add      eax, 0x28010000                
  0x00C2BFBF  0000                    add      byte ptr [eax], al             
  0x00C2BFC1  7050                    jo       0xc2c013                       
  0x00C2BFC3  00c0                    add      al, al                         
  0x00C2BFC5  0400                    add      al, 0                          
  0x00C2BFC7  0000                    add      byte ptr [eax], al             
  0x00C2BFC9  0430                    add      al, 0x30                       
  0x00C2BFCB  00c4                    add      ah, al                         
  0x00C2BFCD  700b                    jo       0xc2bfda                       
  0x00C2BFCF  000c0c                  add      byte ptr [esp + ecx], cl       
  0x00C2BFD2  0000                    add      byte ptr [eax], al             
  0x00C2BFD4  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BFD7  008e04000000            add      byte ptr [esi + 4], cl         
  0x00C2BFDD  f4                      hlt                                     
  0x00C2BFDE  44                      inc      esp                            
  0x00C2BFDF  0000                    add      byte ptr [eax], al             
  0x00C2BFE1  80ff00                  cmp      bh, 0                          
  0x00C2BFE4  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BFE7  008a04000000            add      byte ptr [edx + 4], cl         
  0x00C2BFED  f4                      hlt                                     
  0x00C2BFEE  44                      inc      esp                            
  0x00C2BFEF  0000                    add      byte ptr [eax], al             
  0x00C2BFF1  80ff00                  cmp      bh, 0                          
  0x00C2BFF4  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2BFF7  008b04000000            add      byte ptr [ebx + 4], cl         
  0x00C2BFFD  f4                      hlt                                     
  0x00C2BFFE  60                      pushal                                  
  0x00C2BFFF  008304000000            add      byte ptr [ebx + 4], al         
  0x00C2C005  f4                      hlt                                     
  0x00C2C006  65008304000000          add      byte ptr gs:[ebx + 4], al      
  0x00C2C00D  f4                      hlt                                     
  0x00C2C00E  7200                    jb       0xc2c010                       
                                        ; XREF: 0x00C2C00E (cond_jump)
  0x00C2C010  b804000000              mov      eax, 4                         
  0x00C2C015  0038                    add      byte ptr [eax], bh             
  0x00C2C017  0000                    add      byte ptr [eax], al             
  0x00C2C019  07                      pop      es                             
  0x00C2C01A  3c00                    cmp      al, 0                          
  0x00C2C01C  0007                    add      byte ptr [edi], al             
  0x00C2C01E  3e0000                  add      byte ptr ds:[eax], al          
  0x00C2C021  0032                    add      byte ptr [edx], dh             
  0x00C2C023  00d7                    add      bh, dl                         
  0x00C2C025  030d000c0000            add      ecx, dword ptr [0xc00]         
  0x00C2C02B  0000                    add      byte ptr [eax], al             
  0x00C2C02E  56                      push     esi                            
  0x00C2C02F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C032  0000                    add      byte ptr [eax], al             
  0x00C2C034  0300                    add      eax, dword ptr [eax]           
  0x00C2C036  2000                    and      byte ptr [eax], al             
  0x00C2C038  0424                    add      al, 0x24                       
  0x00C2C03A  0500000024              add      eax, 0x24000000                
  0x00C2C03F  0000                    add      byte ptr [eax], al             
  0x00C2C041  7044                    jo       0xc2c087                       
  0x00C2C043  006e0b                  add      byte ptr [esi + 0xb], ch       
  0x00C2C046  0000                    add      byte ptr [eax], al             
  0x00C2C048  0000                    add      byte ptr [eax], al             
  0x00C2C04A  3400                    xor      al, 0                          
  0x00C2C04C  1b00                    sbb      eax, dword ptr [eax]           
  0x00C2C04E  2000                    and      byte ptr [eax], al             
  0x00C2C050  00f0                    add      al, dh                         
  0x00C2C052  44                      inc      esp                            
  0x00C2C053  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C059  c406                    les      eax, ptr [esi]                 
  0x00C2C05B  0003                    add      byte ptr [ebx], al             
  0x00C2C05D  0000                    add      byte ptr [eax], al             
  0x00C2C05F  008841010088            add      byte ptr [eax - 0x77fffebf], cl 
  0x00C2C065  41                      inc      ecx                            
  0x00C2C066  0100                    add      dword ptr [eax], eax           
  0x00C2C068  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2C06B  0000                    add      byte ptr [eax], al             
  0x00C2C06E  56                      push     esi                            
  0x00C2C06F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2C072  0000                    add      byte ptr [eax], al             
  0x00C2C074  0300                    add      eax, dword ptr [eax]           
  0x00C2C076  2000                    and      byte ptr [eax], al             
  0x00C2C078  02240500884101          add      ah, byte ptr [eax + 0x1418800] 
  0x00C2C07F  0000                    add      byte ptr [eax], al             
  0x00C2C082  56                      push     esi                            
  0x00C2C083  004a0b                  add      byte ptr [edx + 0xb], cl       
  0x00C2C086  0000                    add      byte ptr [eax], al             
  0x00C2C088  03f4                    add      esi, esp                       
  0x00C2C08A  44                      inc      esp                            
  0x00C2C08B  0008                    add      byte ptr [eax], cl             
  0x00C2C08D  0000                    add      byte ptr [eax], al             
  0x00C2C08F  0002                    add      byte ptr [edx], al             
  0x00C2C091  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C092  0500480020              add      eax, 0x20004800                
  0x00C2C097  008841010000            add      byte ptr [eax + 0x141], cl     
  0x00C2C09E  56                      push     esi                            
  0x00C2C09F  00890b000003            add      byte ptr [ecx + 0x300000b], cl 
  0x00C2C0A5  0020                    add      byte ptr [eax], ah             
  0x00C2C0A7  0002                    add      byte ptr [edx], al             
  0x00C2C0A9  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C0AA  0500884101              add      eax, 0x1418800                 
  0x00C2C0AF  0000                    add      byte ptr [eax], al             
  0x00C2C0B2  56                      push     esi                            
  0x00C2C0B3  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2C0B6  0000                    add      byte ptr [eax], al             
  0x00C2C0B8  854201                  test     dword ptr [edx + 1], eax       
  0x00C2C0BB  0007                    add      byte ptr [edi], al             
  0x00C2C0BD  2405                    and      al, 5                          
  0x00C2C0BF  008841010000            add      byte ptr [eax + 0x141], cl     
  0x00C2C0C6  56                      push     esi                            
  0x00C2C0C7  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C0CA  0000                    add      byte ptr [eax], al             
  0x00C2C0CC  03f4                    add      esi, esp                       
  0x00C2C0CE  44                      inc      esp                            
  0x00C2C0CF  000400                  add      byte ptr [eax + eax], al       
  0x00C2C0D2  0000                    add      byte ptr [eax], al             
  0x00C2C0D4  48                      dec      eax                            
  0x00C2C0D5  2a20                    sub      ah, byte ptr [eax]             
  0x00C2C0D7  0000                    add      byte ptr [eax], al             
  0x00C2C0DA  44                      inc      esp                            
  0x00C2C0DB  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C0E1  c406                    les      eax, ptr [esi]                 
  0x00C2C0E3  0002                    add      byte ptr [edx], al             
  0x00C2C0E5  0000                    add      byte ptr [eax], al             
  0x00C2C0E7  008842010000            add      byte ptr [eax + 0x142], cl     
  0x00C2C0EE  56                      push     esi                            
  0x00C2C0EF  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2C0F2  0000                    add      byte ptr [eax], al             
  0x00C2C0F4  0300                    add      eax, dword ptr [eax]           
  0x00C2C0F6  2000                    and      byte ptr [eax], al             
  0x00C2C0F8  02a40500884101          add      ah, byte ptr [ebp + eax + 0x1418800] 
  0x00C2C0FF  0000                    add      byte ptr [eax], al             
  0x00C2C101  f4                      hlt                                     
  0x00C2C102  56                      push     esi                            
  0x00C2C103  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2C109  002400                  add      byte ptr [eax + eax], ah       
  0x00C2C10C  40                      inc      eax                            
  0x00C2C10D  0020                    add      byte ptr [eax], ah             
  0x00C2C10F  0000                    add      byte ptr [eax], al             
  0x00C2C111  90                      nop                                     
  0x00C2C112  2100                    and      dword ptr [eax], eax           
  0x00C2C114  00f0                    add      al, dh                         
  0x00C2C116  44                      inc      esp                            
  0x00C2C117  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C11D  c406                    les      eax, ptr [esi]                 
  0x00C2C11F  0006                    add      byte ptr [esi], al             
  0x00C2C121  0000                    add      byte ptr [eax], al             
  0x00C2C123  0000                    add      byte ptr [eax], al             
  0x00C2C125  d85600                  fcom     dword ptr [esi]                
  0x00C2C128  0300                    add      eax, dword ptr [eax]           
  0x00C2C12A  2000                    and      byte ptr [eax], al             
  0x00C2C12C  02a40500884601          add      ah, byte ptr [ebp + eax + 0x1468800] 
  0x00C2C133  0000                    add      byte ptr [eax], al             
  0x00C2C135  0000                    add      byte ptr [eax], al             
  0x00C2C137  0000                    add      byte ptr [eax], al             
  0x00C2C139  f4                      hlt                                     
  0x00C2C13A  60                      pushal                                  
  0x00C2C13B  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2C141  f4                      hlt                                     
  0x00C2C142  61                      popal                                   
  0x00C2C143  00910b000000            add      byte ptr [ecx + 0xb], dl       
  0x00C2C149  f4                      hlt                                     
  0x00C2C14A  46                      inc      esi                            
  0x00C2C14B  0007                    add      byte ptr [edi], al             
  0x00C2C14D  0000                    add      byte ptr [eax], al             
  0x00C2C14F  0000                    add      byte ptr [eax], al             
  0x00C2C152  44                      inc      esp                            
  0x00C2C153  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C159  c406                    les      eax, ptr [esi]                 
  0x00C2C15B  000a                    add      byte ptr [edx], cl             
  0x00C2C15D  0000                    add      byte ptr [eax], al             
  0x00C2C15F  0000                    add      byte ptr [eax], al             
  0x00C2C161  d85600                  fcom     dword ptr [esi]                
  0x00C2C164  03d9                    add      ebx, ecx                       
  0x00C2C166  44                      inc      esp                            
  0x00C2C167  0006                    add      byte ptr [esi], al             
  0x00C2C169  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C16A  0500884401              add      eax, 0x1448800                 
  0x00C2C16F  00d0                    add      al, dl                         
  0x00C2C171  0020                    add      byte ptr [eax], ah             
  0x00C2C173  002e                    add      byte ptr [esi], ch             
  0x00C2C175  1d0c001800              sbb      eax, 0x18000c                  
  0x00C2C17A  2000                    and      byte ptr [eax], al             
  0x00C2C17C  884201                  mov      byte ptr [edx + 1], al         
  0x00C2C17F  0000                    add      byte ptr [eax], al             
  0x00C2C181  0000                    add      byte ptr [eax], al             
  0x00C2C183  0000                    add      byte ptr [eax], al             
  0x00C2C186  56                      push     esi                            
  0x00C2C187  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2C18A  0000                    add      byte ptr [eax], al             
  0x00C2C18C  0300                    add      eax, dword ptr [eax]           
  0x00C2C18E  2000                    and      byte ptr [eax], al             
  0x00C2C190  08a4050000f056          or       byte ptr [ebp + eax + 0x56f00000], ah 
  0x00C2C197  008f0b000003            add      byte ptr [edi + 0x300000b], cl 
  0x00C2C19D  f4                      hlt                                     
  0x00C2C19E  44                      inc      esp                            
  0x00C2C19F  000e                    add      byte ptr [esi], cl             
  0x00C2C1A1  0000                    add      byte ptr [eax], al             
  0x00C2C1A3  0003                    add      byte ptr [ebx], al             
  0x00C2C1A5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C1A6  0500884401              add      eax, 0x1448800                 
  0x00C2C1AB  004800                  add      byte ptr [eax], cl             
  0x00C2C1AE  2000                    and      byte ptr [eax], al             
  0x00C2C1B0  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2C1B3  0000                    add      byte ptr [eax], al             
  0x00C2C1B6  56                      push     esi                            
  0x00C2C1B7  00900b000003            add      byte ptr [eax + 0x300000b], dl 
  0x00C2C1BD  0020                    add      byte ptr [eax], ah             
  0x00C2C1BF  0006                    add      byte ptr [esi], al             
  0x00C2C1C1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C1C2  0500884201              add      eax, 0x1428800                 
  0x00C2C1C7  008842010088            add      byte ptr [eax - 0x77fffebe], cl 
  0x00C2C1CD  42                      inc      edx                            
  0x00C2C1CE  0100                    add      dword ptr [eax], eax           
  0x00C2C1D0  884201                  mov      byte ptr [edx + 1], al         
  0x00C2C1D3  008843010088            add      byte ptr [eax - 0x77fffebd], cl 
  0x00C2C1D9  41                      inc      ecx                            
  0x00C2C1DA  0100                    add      dword ptr [eax], eax           
  0x00C2C1DC  00f0                    add      al, dh                         
  0x00C2C1DE  56                      push     esi                            
  0x00C2C1DF  006f0b                  add      byte ptr [edi + 0xb], ch       
  0x00C2C1E2  0000                    add      byte ptr [eax], al             
  0x00C2C1E4  0300                    add      eax, dword ptr [eax]           
  0x00C2C1E6  2000                    and      byte ptr [eax], al             
  0x00C2C1E8  0e                      push     cs                             
  0x00C2C1E9  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C1EA  0500884601              add      eax, 0x1468800                 
  0x00C2C1EF  0000                    add      byte ptr [eax], al             
  0x00C2C1F2  44                      inc      esp                            
  0x00C2C1F3  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C1F9  c406                    les      eax, ptr [esi]                 
  0x00C2C1FB  0003                    add      byte ptr [ebx], al             
  0x00C2C1FD  0000                    add      byte ptr [eax], al             
  0x00C2C1FF  008844010088            add      byte ptr [eax - 0x77fffebc], cl 
  0x00C2C205  43                      inc      ebx                            
  0x00C2C206  0100                    add      dword ptr [eax], eax           
  0x00C2C208  00f0                    add      al, dh                         
  0x00C2C20A  56                      push     esi                            
  0x00C2C20B  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2C20E  0000                    add      byte ptr [eax], al             
  0x00C2C210  0300                    add      eax, dword ptr [eax]           
  0x00C2C212  2000                    and      byte ptr [eax], al             
  0x00C2C214  03a40500884401          add      esp, dword ptr [ebp + eax + 0x1448800] 
  0x00C2C21B  008843010088            add      byte ptr [eax - 0x77fffebd], cl 
  0x00C2C221  41                      inc      ecx                            
  0x00C2C222  0100                    add      dword ptr [eax], eax           
  0x00C2C224  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2C227  001b                    add      byte ptr [ebx], bl             
  0x00C2C229  e721                    out      0x21, eax                      
  0x00C2C22B  0000                    add      byte ptr [eax], al             
  0x00C2C22E  56                      push     esi                            
  0x00C2C22F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C232  0000                    add      byte ptr [eax], al             
  0x00C2C234  c54001                  lds      eax, ptr [eax + 1]             
  0x00C2C237  0003                    add      byte ptr [ebx], al             
  0x00C2C239  0000                    add      byte ptr [eax], al             
  0x00C2C23B  004210                  add      byte ptr [edx + 0x10], al      
  0x00C2C23E  0d000d0000              or       eax, 0xd00                     
  0x00C2C243  0079e7                  add      byte ptr [ecx - 0x19], bh      
  0x00C2C246  2100                    and      dword ptr [eax], eax           
  0x00C2C248  884901                  mov      byte ptr [ecx + 1], cl         
  0x00C2C24B  0079e7                  add      byte ptr [ecx - 0x19], bh      
  0x00C2C24E  2100                    and      dword ptr [eax], eax           
  0x00C2C250  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2C253  008841010000            add      byte ptr [eax + 0x141], cl     
  0x00C2C25A  56                      push     esi                            
  0x00C2C25B  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C25E  0000                    add      byte ptr [eax], al             
  0x00C2C260  c54001                  lds      eax, ptr [eax + 1]             
  0x00C2C263  0003                    add      byte ptr [ebx], al             
  0x00C2C265  0000                    add      byte ptr [eax], al             
  0x00C2C267  0002                    add      byte ptr [edx], al             
  0x00C2C269  2405                    and      al, 5                          
  0x00C2C26B  00886f010088            add      byte ptr [eax - 0x77fffe91], cl 
  0x00C2C271  47                      inc      edi                            
  0x00C2C272  0100                    add      dword ptr [eax], eax           
  0x00C2C275  1e                      push     ds                             
  0x00C2C276  0c00                    or       al, 0                          
  0x00C2C278  007055                  add      byte ptr [eax + 0x55], dh      
  0x00C2C27B  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2C27E  0000                    add      byte ptr [eax], al             
  0x00C2C280  871e                    xchg     dword ptr [esi], ebx           
  0x00C2C282  0c00                    or       al, 0                          
  0x00C2C284  79e4                    jns      0xc2c26a                       
  0x00C2C286  2100                    and      dword ptr [eax], eax           
  0x00C2C288  48                      dec      eax                            
  0x00C2C289  0020                    add      byte ptr [eax], ah             
  0x00C2C28B  0000                    add      byte ptr [eax], al             
  0x00C2C28D  7055                    jo       0xc2c2e4                       
  0x00C2C28F  00710b                  add      byte ptr [ecx + 0xb], dh       
  0x00C2C292  0000                    add      byte ptr [eax], al             
  0x00C2C294  00f0                    add      al, dh                         
  0x00C2C296  56                      push     esi                            
  0x00C2C297  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C29A  0000                    add      byte ptr [eax], al             
  0x00C2C29C  0300                    add      eax, dword ptr [eax]           
  0x00C2C29E  2000                    and      byte ptr [eax], al             
  0x00C2C2A0  07                      pop      es                             
  0x00C2C2A1  2405                    and      al, 5                          
  0x00C2C2A3  001b                    add      byte ptr [ebx], bl             
  0x00C2C2A5  0020                    add      byte ptr [eax], ah             
  0x00C2C2A7  008841010088            add      byte ptr [eax - 0x77fffebf], cl 
  0x00C2C2AD  41                      inc      ecx                            
  0x00C2C2AE  0100                    add      dword ptr [eax], eax           
  0x00C2C2B0  885001                  mov      byte ptr [eax + 1], dl         
  0x00C2C2B3  0000                    add      byte ptr [eax], al             
  0x00C2C2B5  7055                    jo       0xc2c30c                       
  0x00C2C2B7  00530b                  add      byte ptr [ebx + 0xb], dl       
  0x00C2C2BA  0000                    add      byte ptr [eax], al             
  0x00C2C2BC  00f0                    add      al, dh                         
  0x00C2C2BE  56                      push     esi                            
  0x00C2C2BF  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C2C2  0000                    add      byte ptr [eax], al             
  0x00C2C2C4  0300                    add      eax, dword ptr [eax]           
  0x00C2C2C6  2000                    and      byte ptr [eax], al             
  0x00C2C2C8  8c24050000f057          mov      word ptr [eax + 0x57f00000], fs 
  0x00C2C2CF  00510b                  add      byte ptr [ecx + 0xb], dl       
  0x00C2C2D2  0000                    add      byte ptr [eax], al             
  0x00C2C2D4  00f0                    add      al, dh                         
  0x00C2C2D6  44                      inc      esp                            
  0x00C2C2D7  00530b                  add      byte ptr [ebx + 0xb], dl       
  0x00C2C2DA  0000                    add      byte ptr [eax], al             
  0x00C2C2DC  48                      dec      eax                            
  0x00C2C2DD  0020                    add      byte ptr [eax], ah             
  0x00C2C2DF  0000                    add      byte ptr [eax], al             
  0x00C2C2E2  44                      inc      esp                            
  0x00C2C2E3  009a0b000000            add      byte ptr [edx + 0xb], bl       
  0x00C2C2E9  f4                      hlt                                     
  0x00C2C2EA  46                      inc      esi                            
  0x00C2C2EB  0008                    add      byte ptr [eax], cl             
  0x00C2C2ED  0000                    add      byte ptr [eax], al             
  0x00C2C2EF  00d0                    add      al, dl                         
  0x00C2C2F1  0020                    add      byte ptr [eax], ah             
  0x00C2C2F3  0000                    add      byte ptr [eax], al             
  0x00C2C2F5  0e                      push     cs                             
  0x00C2C2F6  2100                    and      dword ptr [eax], eax           
  0x00C2C2F8  1400                    adc      al, 0                          
  0x00C2C2FA  2000                    and      byte ptr [eax], al             
  0x00C2C2FC  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2C2FF  00520b                  add      byte ptr [edx + 0xb], dl       
  0x00C2C302  0000                    add      byte ptr [eax], al             
  0x00C2C304  00f0                    add      al, dh                         
  0x00C2C306  56                      push     esi                            
  0x00C2C307  00530b                  add      byte ptr [ebx + 0xb], dl       
  0x00C2C30A  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2C2B5 (cond_jump)
  0x00C2C30C  00f0                    add      al, dh                         
  0x00C2C30E  44                      inc      esp                            
  0x00C2C30F  009f0b000045            add      byte ptr [edi + 0x4500000b], bl 
  0x00C2C315  0020                    add      byte ptr [eax], ah             
  0x00C2C317  00857405001b            add      byte ptr [ebp + 0x1b000574], al 
  0x00C2C31D  f4                      hlt                                     
  0x00C2C31E  44                      inc      esp                            
  0x00C2C31F  005555                  add      byte ptr [ebp + 0x55], dl      
  0x00C2C322  150000f056              adc      eax, 0x56f00000                
  0x00C2C327  00520b                  add      byte ptr [edx + 0xb], dl       
  0x00C2C32A  0000                    add      byte ptr [eax], al             
  0x00C2C32C  c44001                  les      eax, ptr [eax + 1]             
  0x00C2C32F  002f                    add      byte ptr [edi], ch             
  0x00C2C331  0000                    add      byte ptr [eax], al             
  0x00C2C333  0000                    add      byte ptr [eax], al             
  0x00C2C335  8521                    test     dword ptr [ecx], esp           
  0x00C2C337  00a800200000            add      byte ptr [eax + 0x2000], ch    
  0x00C2C33D  af                      scasd    eax, dword ptr es:[edi]        
  0x00C2C33E  2100                    and      dword ptr [eax], eax           
  0x00C2C340  00f0                    add      al, dh                         
  0x00C2C342  44                      inc      esp                            
  0x00C2C343  00710b                  add      byte ptr [ecx + 0xb], dh       
  0x00C2C346  0000                    add      byte ptr [eax], al             
  0x00C2C348  4d                      dec      ebp                            
  0x00C2C349  0020                    add      byte ptr [eax], ah             
  0x00C2C34B  0058f4                  add      byte ptr [eax - 0xc], bl       
  0x00C2C34E  050000a521              add      eax, 0x21a50000                
  0x00C2C353  0000                    add      byte ptr [eax], al             
  0x00C2C355  f4                      hlt                                     
  0x00C2C356  44                      inc      esp                            
  0x00C2C357  0006                    add      byte ptr [esi], al             
  0x00C2C359  0000                    add      byte ptr [eax], al             
  0x00C2C35B  00a00020002e            add      byte ptr [eax + 0x2e002000], ah 
  0x00C2C361  1d0c0036f0              sbb      eax, 0xf036000c                
  0x00C2C366  44                      inc      esp                            
  0x00C2C367  00520b                  add      byte ptr [edx + 0xb], dl       
  0x00C2C36A  0000                    add      byte ptr [eax], al             
  0x00C2C36C  40                      inc      eax                            
  0x00C2C36D  0020                    add      byte ptr [eax], ah             
  0x00C2C36F  00c4                    add      ah, al                         
  0x00C2C371  40                      inc      eax                            
  0x00C2C372  0100                    add      dword ptr [eax], eax           
  0x00C2C374  2f                      das                                     
  0x00C2C375  0000                    add      byte ptr [eax], al             
  0x00C2C377  0000                    add      byte ptr [eax], al             
  0x00C2C37A  2100                    and      dword ptr [eax], eax           
  0x00C2C37C  c8400100                enter    0x140, 0                       
  0x00C2C380  0100                    add      dword ptr [eax], eax           
  0x00C2C382  0000                    add      byte ptr [eax], al             
  0x00C2C384  00f4                    add      ah, dh                         
  0x00C2C386  56                      push     esi                            
  0x00C2C387  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2C38A  0000                    add      byte ptr [eax], al             
  0x00C2C38C  0000                    add      byte ptr [eax], al             
  0x00C2C38E  2400                    and      al, 0                          
  0x00C2C390  40                      inc      eax                            
  0x00C2C391  0020                    add      byte ptr [eax], ah             
  0x00C2C393  0000                    add      byte ptr [eax], al             
  0x00C2C395  90                      nop                                     
  0x00C2C396  2100                    and      dword ptr [eax], eax           
  0x00C2C398  00f8                    add      al, bh                         
  0x00C2C39A  2000                    and      byte ptr [eax], al             
  0x00C2C39C  10d8                    adc      al, bl                         
  0x00C2C39E  06                      push     es                             
  0x00C2C39F  0002                    add      byte ptr [edx], al             
  0x00C2C3A1  0000                    add      byte ptr [eax], al             
  0x00C2C3A3  0000                    add      byte ptr [eax], al             
  0x00C2C3A5  58                      pop      eax                            
  0x00C2C3A6  57                      push     edi                            
  0x00C2C3A7  00cc                    add      ah, cl                         
  0x00C2C3A9  40                      inc      eax                            
  0x00C2C3AA  0100                    add      dword ptr [eax], eax           
  0x00C2C3AC  0100                    add      dword ptr [eax], eax           
  0x00C2C3AE  0000                    add      byte ptr [eax], al             
  0x00C2C3B0  00f4                    add      ah, dh                         
  0x00C2C3B2  56                      push     esi                            
  0x00C2C3B3  0006                    add      byte ptr [esi], al             
  0x00C2C3B5  0000                    add      byte ptr [eax], al             
  0x00C2C3B7  00740020                add      byte ptr [eax + eax + 0x20], dh 
  0x00C2C3BB  0003                    add      byte ptr [ebx], al             
  0x00C2C3BD  0020                    add      byte ptr [eax], ah             
  0x00C2C3BF  0005f4050000            add      byte ptr [0x5f4], al           
  0x00C2C3C5  d821                    fsub     dword ptr [ecx]                
  0x00C2C3C7  0010                    add      byte ptr [eax], dl             
  0x00C2C3C9  d806                    fadd     dword ptr [esi]                
  0x00C2C3CB  0002                    add      byte ptr [edx], al             
  0x00C2C3CD  0000                    add      byte ptr [eax], al             
  0x00C2C3CF  0000                    add      byte ptr [eax], al             
  0x00C2C3D1  58                      pop      eax                            
  0x00C2C3D2  57                      push     edi                            
  0x00C2C3D3  0000                    add      byte ptr [eax], al             
  0x00C2C3D5  f4                      hlt                                     
  0x00C2C3D6  56                      push     esi                            
  0x00C2C3D7  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2C3DA  0000                    add      byte ptr [eax], al             
  0x00C2C3DC  00f4                    add      ah, dh                         
  0x00C2C3DE  44                      inc      esp                            
  0x00C2C3DF  0003                    add      byte ptr [ebx], al             
  0x00C2C3E1  0000                    add      byte ptr [eax], al             
  0x00C2C3E3  004000                  add      byte ptr [eax], al             
  0x00C2C3E6  2000                    and      byte ptr [eax], al             
  0x00C2C3E8  0090210000e0            add      byte ptr [eax - 0x1fffffdf], dl 
  0x00C2C3EE  56                      push     esi                            
  0x00C2C3EF  00806f010000            add      byte ptr [eax + 0x16f], al     
  0x00C2C3F5  60                      pushal                                  
  0x00C2C3F6  56                      push     esi                            
  0x00C2C3F7  0000                    add      byte ptr [eax], al             
  0x00C2C3F9  f4                      hlt                                     
  0x00C2C3FA  56                      push     esi                            
  0x00C2C3FB  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2C3FE  0000                    add      byte ptr [eax], al             
  0x00C2C400  0000                    add      byte ptr [eax], al             
  0x00C2C402  2400                    and      al, 0                          
  0x00C2C404  40                      inc      eax                            
  0x00C2C405  0020                    add      byte ptr [eax], ah             
  0x00C2C407  0000                    add      byte ptr [eax], al             
  0x00C2C409  90                      nop                                     
  0x00C2C40A  2100                    and      dword ptr [eax], eax           
  0x00C2C40C  00f0                    add      al, dh                         
  0x00C2C40E  7000                    jo       0xc2c410                       
                                        ; XREF: 0x00C2C40E (cond_jump)
  0x00C2C410  40                      inc      eax                            
  0x00C2C411  0b00                    or       eax, dword ptr [eax]           
  0x00C2C413  0000                    add      byte ptr [eax], al             
  0x00C2C415  e8560000f0              call     0xf0c2c470                     
  0x00C2C41A  44                      inc      esp                            
  0x00C2C41B  00710b                  add      byte ptr [ecx + 0xb], dh       
  0x00C2C41E  0000                    add      byte ptr [eax], al             
  0x00C2C420  44                      inc      esp                            
  0x00C2C421  0020                    add      byte ptr [eax], ah             
  0x00C2C423  0000                    add      byte ptr [eax], al             
  0x00C2C425  6856000c00              push     0xc0056                        
  0x00C2C42A  0000                    add      byte ptr [eax], al             
  0x00C2C42C  00f4                    add      ah, dh                         
  0x00C2C42E  44                      inc      esp                            
  0x00C2C42F  0001                    add      byte ptr [ecx], al             
  0x00C2C431  0000                    add      byte ptr [eax], al             
  0x00C2C433  0000                    add      byte ptr [eax], al             
  0x00C2C435  7044                    jo       0xc2c47b                       
  0x00C2C437  00960b00000c            add      byte ptr [esi + 0xc00000b], dl 
  0x00C2C43D  0000                    add      byte ptr [eax], al             
  0x00C2C43F  0080100d0023            add      byte ptr [eax + 0x23000d10], al 
  0x00C2C445  0000                    add      byte ptr [eax], al             
  0x00C2C447  0003                    add      byte ptr [ebx], al             
  0x00C2C449  0020                    add      byte ptr [eax], ah             
  0x00C2C44B  001b                    add      byte ptr [ebx], bl             
  0x00C2C44D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C44E  050080100d              add      eax, 0xd108000                 
  0x00C2C453  00a2fdff0000            add      byte ptr [edx + 0xfffd], ah    
  0x00C2C459  f4                      hlt                                     
  0x00C2C45A  56                      push     esi                            
  0x00C2C45B  000500000000            add      byte ptr [0], al               
  0x00C2C462  44                      inc      esp                            
  0x00C2C463  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C466  0000                    add      byte ptr [eax], al             
  0x00C2C468  45                      inc      ebp                            
  0x00C2C469  0020                    add      byte ptr [eax], ah             
  0x00C2C46B  0017                    add      byte ptr [edi], dl             
  0x00C2C46D  f4                      hlt                                     
  0x00C2C46E  050000f456              add      eax, 0x56f40000                
  0x00C2C473  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2C476  0000                    add      byte ptr [eax], al             
  0x00C2C478  00f0                    add      al, dh                         
  0x00C2C47A  44                      inc      esp                            
                                        ; XREF: 0x00C2C435 (cond_jump)
  0x00C2C47B  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2C47E  0000                    add      byte ptr [eax], al             
  0x00C2C480  40                      inc      eax                            
  0x00C2C481  0020                    add      byte ptr [eax], ah             
  0x00C2C483  00c0                    add      al, al                         
  0x00C2C485  40                      inc      eax                            
  0x00C2C486  0100                    add      dword ptr [eax], eax           
  0x00C2C488  0100                    add      dword ptr [eax], eax           
  0x00C2C48A  0000                    add      byte ptr [eax], al             
  0x00C2C48C  00d0                    add      al, dl                         
  0x00C2C48E  2100                    and      dword ptr [eax], eax           
  0x00C2C490  00d0                    add      al, dl                         
  0x00C2C492  56                      push     esi                            
  0x00C2C493  0000                    add      byte ptr [eax], al             
  0x00C2C495  d8440040                fadd     dword ptr [eax + eax + 0x40]   
  0x00C2C499  0020                    add      byte ptr [eax], ah             
  0x00C2C49B  0000                    add      byte ptr [eax], al             
  0x00C2C49E  44                      inc      esp                            
  0x00C2C49F  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2C4A2  0000                    add      byte ptr [eax], al             
  0x00C2C4A4  44                      inc      esp                            
  0x00C2C4A6  45                      inc      ebp                            
  0x00C2C4A7  00a40400006400          add      byte ptr [esp + eax + 0x640000], ah 
  0x00C2C4AE  2000                    and      byte ptr [eax], al             
  0x00C2C4B0  006056                  add      byte ptr [eax + 0x56], ah      
  0x00C2C4B3  00050c050080            add      byte ptr [0x8000050c], al      
  0x00C2C4B9  100d00580100            adc      byte ptr [0x15800], cl         
  0x00C2C4BF  0080100d0086            add      byte ptr [eax - 0x79fff2f0], al 
  0x00C2C4C5  fd                      std                                     
  0x00C2C4C6  ff00                    inc      dword ptr [eax]                
  0x00C2C4C8  0c00                    or       al, 0                          
  0x00C2C4CA  0000                    add      byte ptr [eax], al             
  0x00C2C4CC  00f4                    add      ah, dh                         
  0x00C2C4CE  45                      inc      ebp                            
  0x00C2C4CF  0090ffff0000            add      byte ptr [eax + 0xffff], dl    
  0x00C2C4D5  7045                    jo       0xc2c51c                       
  0x00C2C4D7  009f04000080            add      byte ptr [edi - 0x7ffffffc], bl 
  0x00C2C4DD  100d007c0000            adc      byte ptr [0x7c00], cl          
  0x00C2C4E3  0000                    add      byte ptr [eax], al             
  0x00C2C4E5  f4                      hlt                                     
  0x00C2C4E6  44                      inc      esp                            
  0x00C2C4E7  0008                    add      byte ptr [eax], cl             
  0x00C2C4E9  0000                    add      byte ptr [eax], al             
  0x00C2C4EB  0000                    add      byte ptr [eax], al             
  0x00C2C4ED  7044                    jo       0xc2c533                       
  0x00C2C4EF  009e04000000            add      byte ptr [esi + 4], bl         
  0x00C2C4F5  002400                  add      byte ptr [eax + eax], ah       
  0x00C2C4F8  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2C4FB  00b504000000            add      byte ptr [ebp + 4], dh         
  0x00C2C502  50                      push     eax                            
  0x00C2C503  009e0400000a            add      byte ptr [esi + 0xa000004], bl 
  0x00C2C509  0000                    add      byte ptr [eax], al             
  0x00C2C50B  0000                    add      byte ptr [eax], al             
  0x00C2C50D  7050                    jo       0xc2c55f                       
  0x00C2C50F  009e04000080            add      byte ptr [esi - 0x7ffffffc], bl 
  0x00C2C515  100d00870000            adc      byte ptr [0x8700], cl          
  0x00C2C51B  000b                    add      byte ptr [ebx], cl             
  0x00C2C51D  0020                    add      byte ptr [eax], ah             
  0x00C2C51F  0009                    add      byte ptr [ecx], cl             
  0x00C2C521  94                      xchg     esp, eax                       
  0x00C2C522  050000f444              add      eax, 0x44f40000                
  0x00C2C527  0001                    add      byte ptr [ecx], al             
  0x00C2C529  0000                    add      byte ptr [eax], al             
  0x00C2C52B  0000                    add      byte ptr [eax], al             
  0x00C2C52D  7044                    jo       0xc2c573                       
  0x00C2C52F  00b504000000            add      byte ptr [ebp + 4], dh         
  0x00C2C536  44                      inc      esp                            
  0x00C2C537  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C53D  7044                    jo       0xc2c583                       
  0x00C2C53F  00b604000000            add      byte ptr [esi + 4], dh         
  0x00C2C546  56                      push     esi                            
  0x00C2C547  00b504000003            add      byte ptr [ebp + 0x3000004], dh 
  0x00C2C54D  0020                    add      byte ptr [eax], ah             
  0x00C2C54F  000f                    add      byte ptr [edi], cl             
  0x00C2C551  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C552  050000f456              add      eax, 0x56f40000                
  0x00C2C557  0010                    add      byte ptr [eax], dl             
  0x00C2C559  0000                    add      byte ptr [eax], al             
  0x00C2C55B  0000                    add      byte ptr [eax], al             
  0x00C2C55D  c421                    les      esp, ptr [ecx]                 
                                        ; XREF: 0x00C2C50D (cond_jump)
  0x00C2C55F  0000                    add      byte ptr [eax], al             
  0x00C2C561  7056                    jo       0xc2c5b9                       
  0x00C2C563  00a004000000            add      byte ptr [eax + 4], ah         
  0x00C2C56A  56                      push     esi                            
  0x00C2C56B  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C571  7056                    jo       0xc2c5c9                       
                                        ; XREF: 0x00C2C52D (cond_jump)
  0x00C2C573  00a104000040            add      byte ptr [ecx + 0x40000004], ah 
  0x00C2C579  0020                    add      byte ptr [eax], ah             
  0x00C2C57B  0022                    add      byte ptr [edx], ah             
  0x00C2C57D  0020                    add      byte ptr [eax], ah             
  0x00C2C57F  0000                    add      byte ptr [eax], al             
  0x00C2C581  7056                    jo       0xc2c5d9                       
                                        ; XREF: 0x00C2C53D (cond_jump)
  0x00C2C583  009f0400000e            add      byte ptr [edi + 0xe000004], bl 
  0x00C2C589  0c05                    or       al, 5                          
  0x00C2C58B  0000                    add      byte ptr [eax], al             
  0x00C2C58D  f4                      hlt                                     
  0x00C2C58E  56                      push     esi                            
  0x00C2C58F  0010                    add      byte ptr [eax], dl             
  0x00C2C592  ff00                    inc      dword ptr [eax]                
  0x00C2C594  00c4                    add      ah, al                         
  0x00C2C596  2100                    and      dword ptr [eax], eax           
  0x00C2C598  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2C59B  00a104000000            add      byte ptr [ecx + 4], ah         
  0x00C2C5A2  56                      push     esi                            
  0x00C2C5A3  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C5A9  7056                    jo       0xc2c601                       
  0x00C2C5AB  00a004000040            add      byte ptr [eax + 0x40000004], ah 
  0x00C2C5B1  0020                    add      byte ptr [eax], ah             
  0x00C2C5B3  0022                    add      byte ptr [edx], ah             
  0x00C2C5B5  0020                    add      byte ptr [eax], ah             
  0x00C2C5B7  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2C561 (cond_jump)
  0x00C2C5B9  7056                    jo       0xc2c611                       
  0x00C2C5BB  009f04000080            add      byte ptr [edi - 0x7ffffffc], bl 
  0x00C2C5C1  100d00430000            adc      byte ptr [0x4300], cl          
  0x00C2C5C7  0080100d005a            add      byte ptr [eax + 0x5a000d10], al 
  0x00C2C5CD  0000                    add      byte ptr [eax], al             
  0x00C2C5CF  000b                    add      byte ptr [ebx], cl             
  0x00C2C5D1  0020                    add      byte ptr [eax], ah             
  0x00C2C5D3  000e                    add      byte ptr [esi], cl             
  0x00C2C5D5  94                      xchg     esp, eax                       
  0x00C2C5D6  050000f044              add      eax, 0x44f00000                
  0x00C2C5DB  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C5E1  7044                    jo       0xc2c627                       
  0x00C2C5E3  00a104000000            add      byte ptr [ecx + 4], ah         
  0x00C2C5E9  f4                      hlt                                     
  0x00C2C5EA  44                      inc      esp                            
  0x00C2C5EB  0001                    add      byte ptr [ecx], al             
  0x00C2C5ED  0000                    add      byte ptr [eax], al             
  0x00C2C5EF  0000                    add      byte ptr [eax], al             
  0x00C2C5F1  7044                    jo       0xc2c637                       
  0x00C2C5F3  00b504000000            add      byte ptr [ebp + 4], dh         
  0x00C2C5FA  44                      inc      esp                            
  0x00C2C5FB  009f04000000            add      byte ptr [edi + 4], bl         
                                        ; XREF: 0x00C2C5A9 (cond_jump)
  0x00C2C601  7044                    jo       0xc2c647                       
  0x00C2C603  00b604000005            add      byte ptr [esi + 0x5000004], dh 
  0x00C2C609  0c05                    or       al, 5                          
  0x00C2C60B  0000                    add      byte ptr [eax], al             
  0x00C2C60E  44                      inc      esp                            
  0x00C2C60F  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C615  7044                    jo       0xc2c65b                       
  0x00C2C617  00a004000000            add      byte ptr [eax + 4], ah         
  0x00C2C61E  56                      push     esi                            
  0x00C2C61F  00a004000000            add      byte ptr [eax + 4], ah         
  0x00C2C626  44                      inc      esp                            
                                        ; XREF: 0x00C2C5E1 (cond_jump)
  0x00C2C627  00a104000044            add      byte ptr [ecx + 0x44000004], ah 
  0x00C2C62E  2100                    and      dword ptr [eax], eax           
  0x00C2C630  c54001                  lds      eax, ptr [eax + 1]             
  0x00C2C633  0001                    add      byte ptr [ecx], al             
  0x00C2C635  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2C5F1 (cond_jump)
  0x00C2C637  0008                    add      byte ptr [eax], cl             
  0x00C2C639  2405                    and      al, 5                          
  0x00C2C63B  0080100d0028            add      byte ptr [eax + 0x28000d10], al 
  0x00C2C641  0100                    add      dword ptr [eax], eax           
  0x00C2C643  0000                    add      byte ptr [eax], al             
  0x00C2C645  f4                      hlt                                     
  0x00C2C646  44                      inc      esp                            
                                        ; XREF: 0x00C2C601 (cond_jump)
  0x00C2C647  0001                    add      byte ptr [ecx], al             
  0x00C2C649  0000                    add      byte ptr [eax], al             
  0x00C2C64B  0000                    add      byte ptr [eax], al             
  0x00C2C64D  7044                    jo       0xc2c693                       
  0x00C2C64F  00b50400001b            add      byte ptr [ebp + 0x1b000004], dh 
  0x00C2C655  0c05                    or       al, 5                          
  0x00C2C657  005100                  add      byte ptr [ecx], dl             
  0x00C2C65A  2000                    and      byte ptr [eax], al             
  0x00C2C65C  40                      inc      eax                            
  0x00C2C65D  0020                    add      byte ptr [eax], ah             
  0x00C2C65F  0022                    add      byte ptr [edx], ah             
  0x00C2C661  0020                    add      byte ptr [eax], ah             
  0x00C2C663  004500                  add      byte ptr [ebp], al             
  0x00C2C666  2000                    and      byte ptr [eax], al             
  0x00C2C668  0474                    add      al, 0x74                       
  0x00C2C66A  0500008e20              add      eax, 0x208e0000                
  0x00C2C66F  008041010005            add      byte ptr [eax + 0x5000141], al 
  0x00C2C675  0c05                    or       al, 5                          
  0x00C2C677  005500                  add      byte ptr [ebp], dl             
  0x00C2C67A  2000                    and      byte ptr [eax], al             
  0x00C2C67C  0394050000ce20          add      edx, dword ptr [ebp + eax + 0x20ce0000] 
  0x00C2C683  00844101000070          add      byte ptr [ecx + eax*2 + 0x70000001], al 
  0x00C2C68A  54                      push     esp                            
  0x00C2C68B  009f04000000            add      byte ptr [edi + 4], bl         
  0x00C2C692  56                      push     esi                            
                                        ; XREF: 0x00C2C64D (cond_jump)
  0x00C2C693  009e04000084            add      byte ptr [esi - 0x7bfffffc], bl 
  0x00C2C699  41                      inc      ecx                            
  0x00C2C69A  0100                    add      dword ptr [eax], eax           
  0x00C2C69C  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2C69F  009e04000087            add      byte ptr [esi - 0x78fffffc], bl 
  0x00C2C6A5  7705                    ja       0xc2c6ac                       
  0x00C2C6A7  0000                    add      byte ptr [eax], al             
  0x00C2C6AA  56                      push     esi                            
  0x00C2C6AB  00b504000085            add      byte ptr [ebp - 0x7afffffc], dh 
  0x00C2C6B1  41                      inc      ecx                            
  0x00C2C6B2  0100                    add      dword ptr [eax], eax           
  0x00C2C6B4  0324050080100d          add      esp, dword ptr [eax + 0xd108000] 
  0x00C2C6BB  0009                    add      byte ptr [ecx], cl             
  0x00C2C6BD  0100                    add      dword ptr [eax], eax           
  0x00C2C6BF  0000                    add      byte ptr [eax], al             
  0x00C2C6C2  56                      push     esi                            
  0x00C2C6C3  00b50400000c            add      byte ptr [ebp + 0xc000004], dh 
  0x00C2C6C9  0000                    add      byte ptr [eax], al             
  0x00C2C6CB  0000                    add      byte ptr [eax], al             
  0x00C2C6CE  56                      push     esi                            
  0x00C2C6CF  009f040000c0            add      byte ptr [edi - 0x3ffffffc], bl 
  0x00C2C6D5  40                      inc      eax                            
  0x00C2C6D6  0100                    add      dword ptr [eax], eax           
  0x00C2C6D8  f00000                  lock add byte ptr [eax], al             
  0x00C2C6DB  0008                    add      byte ptr [eax], cl             
  0x00C2C6DD  1c0c                    sbb      al, 0xc                        
  0x00C2C6DF  0000                    add      byte ptr [eax], al             
  0x00C2C6E1  8421                    test     byte ptr [ecx], ah             
  0x00C2C6E3  0000                    add      byte ptr [eax], al             
  0x00C2C6E5  002c00                  add      byte ptr [eax + eax], ch       
  0x00C2C6E8  081d0c000086            or       byte ptr [0x8600000c], bl      
  0x00C2C6EE  2100                    and      dword ptr [eax], eax           
  0x00C2C6F0  00f4                    add      ah, dh                         
  0x00C2C6F2  60                      pushal                                  
  0x00C2C6F3  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2C6F6  0000                    add      byte ptr [eax], al             
  0x00C2C6F8  00f4                    add      ah, dh                         
  0x00C2C6FA  6200                    bound    eax, qword ptr [eax]           
  0x00C2C6FC  790b                    jns      0xc2c709                       
  0x00C2C6FE  0000                    add      byte ptr [eax], al             
  0x00C2C700  00f4                    add      ah, dh                         
  0x00C2C702  6400740b00              add      byte ptr fs:[ebx + ecx], dh    
  0x00C2C707  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2C6FC (cond_jump)
  0x00C2C709  053c0000f0              add      eax, 0xf000003c                
  0x00C2C70E  7000                    jo       0xc2c710                       
                                        ; XREF: 0x00C2C70E (cond_jump)
  0x00C2C710  97                      xchg     edi, eax                       
  0x00C2C711  0b00                    or       eax, dword ptr [eax]           
  0x00C2C713  0000                    add      byte ptr [eax], al             
  0x00C2C715  95                      xchg     ebp, eax                       
  0x00C2C716  2200                    and      al, byte ptr [eax]             
  0x00C2C718  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C2C71B  0000                    add      byte ptr [eax], al             
  0x00C2C71D  5a                      pop      edx                            
  0x00C2C71E  46                      inc      esi                            
  0x00C2C71F  0010                    add      byte ptr [eax], dl             
  0x00C2C721  d806                    fadd     dword ptr [esi]                
  0x00C2C723  0002                    add      byte ptr [edx], al             
  0x00C2C725  0000                    add      byte ptr [eax], al             
  0x00C2C727  0000                    add      byte ptr [eax], al             
  0x00C2C729  5d                      pop      ebp                            
  0x00C2C72A  46                      inc      esi                            
  0x00C2C72B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2C72E  0000                    add      byte ptr [eax], al             
  0x00C2C730  00f0                    add      al, dh                         
  0x00C2C732  7000                    jo       0xc2c734                       
                                        ; XREF: 0x00C2C732 (cond_jump)
  0x00C2C734  40                      inc      eax                            
  0x00C2C735  0b00                    or       eax, dword ptr [eax]           
  0x00C2C737  0000                    add      byte ptr [eax], al             
  0x00C2C739  f4                      hlt                                     
  0x00C2C73A  60                      pushal                                  
  0x00C2C73B  00680b                  add      byte ptr [eax + 0xb], ch       
  0x00C2C73E  0000                    add      byte ptr [eax], al             
  0x00C2C740  00e8                    add      al, ch                         
  0x00C2C742  57                      push     edi                            
  0x00C2C743  0000                    add      byte ptr [eax], al             
  0x00C2C745  fa                      cli                                     
  0x00C2C746  2100                    and      dword ptr [eax], eax           
  0x00C2C748  00f0                    add      al, dh                         
  0x00C2C74A  56                      push     esi                            
  0x00C2C74B  00c0                    add      al, al                         
  0x00C2C74D  0400                    add      al, 0                          
  0x00C2C74F  0003                    add      byte ptr [ebx], al             
  0x00C2C751  0020                    add      byte ptr [eax], ah             
  0x00C2C753  0045a5                  add      byte ptr [ebp - 0x5b], al      
  0x00C2C756  050000f456              add      eax, 0x56f40000                
  0x00C2C75B  0001                    add      byte ptr [ecx], al             
  0x00C2C75D  0000                    add      byte ptr [eax], al             
  0x00C2C75F  0000                    add      byte ptr [eax], al             
  0x00C2C761  7056                    jo       0xc2c7b9                       
  0x00C2C763  00b704000000            add      byte ptr [edi + 4], dh         
  0x00C2C769  f4                      hlt                                     
  0x00C2C76A  56                      push     esi                            
  0x00C2C76B  0000                    add      byte ptr [eax], al             
  0x00C2C76D  0000                    add      byte ptr [eax], al             
  0x00C2C76F  0000                    add      byte ptr [eax], al             
  0x00C2C772  44                      inc      esp                            
  0x00C2C773  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2C776  0000                    add      byte ptr [eax], al             
  0x00C2C778  45                      inc      ebp                            
  0x00C2C779  0020                    add      byte ptr [eax], ah             
  0x00C2C77B  0004a4                  add      byte ptr [esp], al             
  0x00C2C77E  0500000024              add      eax, 0x24000000                
  0x00C2C783  0000                    add      byte ptr [eax], al             
  0x00C2C785  7044                    jo       0xc2c7cb                       
  0x00C2C787  00b704000000            add      byte ptr [edi + 4], dh         
  0x00C2C78D  f4                      hlt                                     
  0x00C2C78E  46                      inc      esi                            
  0x00C2C78F  0000                    add      byte ptr [eax], al             
  0x00C2C791  0000                    add      byte ptr [eax], al             
  0x00C2C793  0000                    add      byte ptr [eax], al             
  0x00C2C795  f4                      hlt                                     
  0x00C2C796  60                      pushal                                  
  0x00C2C797  00740b00                add      byte ptr [ebx + ecx], dh       
  0x00C2C79B  0000                    add      byte ptr [eax], al             
  0x00C2C79E  44                      inc      esp                            
  0x00C2C79F  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C7A5  c406                    les      eax, ptr [esi]                 
  0x00C2C7A7  0008                    add      byte ptr [eax], cl             
  0x00C2C7A9  0000                    add      byte ptr [eax], al             
  0x00C2C7AB  0000                    add      byte ptr [eax], al             
  0x00C2C7AD  d85600                  fcom     dword ptr [esi]                
  0x00C2C7B0  55                      push     ebp                            
  0x00C2C7B1  0020                    add      byte ptr [eax], ah             
  0x00C2C7B3  0004a4                  add      byte ptr [esp], al             
  0x00C2C7B6  0500130020              add      eax, 0x20001300                
  0x00C2C7BB  0000                    add      byte ptr [eax], al             
  0x00C2C7BD  7056                    jo       0xc2c815                       
  0x00C2C7BF  00b704000000            add      byte ptr [edi + 4], dh         
  0x00C2C7C5  0000                    add      byte ptr [eax], al             
  0x00C2C7C7  0000                    add      byte ptr [eax], al             
  0x00C2C7CA  56                      push     esi                            
                                        ; XREF: 0x00C2C785 (cond_jump)
  0x00C2C7CB  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2C7CE  0000                    add      byte ptr [eax], al             
  0x00C2C7D0  0300                    add      eax, dword ptr [eax]           
  0x00C2C7D2  2000                    and      byte ptr [eax], al             
  0x00C2C7D4  08a4050000f056          or       byte ptr [ebp + eax + 0x56f00000], ah 
  0x00C2C7DB  00790b                  add      byte ptr [ecx + 0xb], bh       
  0x00C2C7DE  0000                    add      byte ptr [eax], al             
  0x00C2C7E0  55                      push     ebp                            
  0x00C2C7E1  0020                    add      byte ptr [eax], ah             
  0x00C2C7E3  0004a4                  add      byte ptr [esp], al             
  0x00C2C7E6  0500130020              add      eax, 0x20001300                
  0x00C2C7EB  0000                    add      byte ptr [eax], al             
  0x00C2C7ED  7056                    jo       0xc2c845                       
  0x00C2C7EF  00b704000000            add      byte ptr [edi + 4], dh         
  0x00C2C7F5  07                      pop      es                             
  0x00C2C7F6  3000                    xor      byte ptr [eax], al             
  0x00C2C7F8  c4700b                  les      esi, ptr [eax + 0xb]           
  0x00C2C7FB  00b20c000000            add      byte ptr [edx + 0xc], dh       
  0x00C2C801  7044                    jo       0xc2c847                       
  0x00C2C803  00bf04000013            add      byte ptr [edi + 0x13000004], bh 
  0x00C2C809  f4                      hlt                                     
  0x00C2C80A  60                      pushal                                  
  0x00C2C80B  00a504000090            add      byte ptr [ebp - 0x6ffffffc], ah 
  0x00C2C811  1006                    adc      byte ptr [esi], al             
  0x00C2C813  0002                    add      byte ptr [edx], al             
                                        ; XREF: 0x00C2C7BD (cond_jump)
  0x00C2C815  0000                    add      byte ptr [eax], al             
  0x00C2C817  0000                    add      byte ptr [eax], al             
  0x00C2C819  58                      pop      eax                            
  0x00C2C81A  56                      push     esi                            
  0x00C2C81B  0000                    add      byte ptr [eax], al             
  0x00C2C81D  0036                    add      byte ptr [esi], dh             
  0x00C2C81F  0000                    add      byte ptr [eax], al             
  0x00C2C822  44                      inc      esp                            
  0x00C2C823  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2C829  c406                    les      eax, ptr [esi]                 
  0x00C2C82B  0036                    add      byte ptr [esi], dh             
  0x00C2C82D  0000                    add      byte ptr [eax], al             
  0x00C2C82F  0000                    add      byte ptr [eax], al             
  0x00C2C831  f4                      hlt                                     
  0x00C2C832  56                      push     esi                            
  0x00C2C833  00740b00                add      byte ptr [ebx + ecx], dh       
  0x00C2C837  0000                    add      byte ptr [eax], al             
  0x00C2C839  c422                    les      esp, ptr [edx]                 
  0x00C2C83B  004000                  add      byte ptr [eax], al             
  0x00C2C83E  2000                    and      byte ptr [eax], al             
  0x00C2C840  0090210000f0            add      byte ptr [eax - 0xfffffdf], dl 
  0x00C2C846  56                      push     esi                            
                                        ; XREF: 0x00C2C801 (cond_jump)
  0x00C2C847  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2C84A  0000                    add      byte ptr [eax], al             
  0x00C2C84C  00e0                    add      al, ah                         
  0x00C2C84E  44                      inc      esp                            
  0x00C2C84F  00844f0100081d          add      byte ptr [edi + ecx*2 + 0x1d080001], al 
  0x00C2C856  0c00                    or       al, 0                          
  0x00C2C858  40                      inc      eax                            
  0x00C2C859  0020                    add      byte ptr [eax], ah             
  0x00C2C85B  00041d0c000070          add      byte ptr [ebx + 0x7000000c], al 
  0x00C2C862  54                      push     esp                            
  0x00C2C863  00a204000000            add      byte ptr [edx + 4], ah         
  0x00C2C869  f4                      hlt                                     
  0x00C2C86A  56                      push     esi                            
  0x00C2C86B  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2C871  c422                    les      esp, ptr [edx]                 
  0x00C2C873  004000                  add      byte ptr [eax], al             
  0x00C2C876  2000                    and      byte ptr [eax], al             
  0x00C2C878  009021000000            add      byte ptr [eax + 0x21], dl      
  0x00C2C87E  250000e047              and      eax, 0x47e00000                
  0x00C2C883  0000                    add      byte ptr [eax], al             
  0x00C2C885  c422                    les      esp, ptr [edx]                 
  0x00C2C887  0000                    add      byte ptr [eax], al             
  0x00C2C889  f4                      hlt                                     
  0x00C2C88A  46                      inc      esi                            
  0x00C2C88B  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2C891  f4                      hlt                                     
  0x00C2C892  44                      inc      esp                            
  0x00C2C893  00fa                    add      dl, bh                         
  0x00C2C895  0000                    add      byte ptr [eax], al             
  0x00C2C897  002e                    add      byte ptr [esi], ch             
  0x00C2C899  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2C89E  2000                    and      byte ptr [eax], al             
  0x00C2C8A0  0090210000c4            add      byte ptr [eax - 0x3bffffdf], dl 
  0x00C2C8A6  2200                    and      al, byte ptr [eax]             
  0x00C2C8A8  00f4                    add      ah, dh                         
  0x00C2C8AA  46                      inc      esi                            
  0x00C2C8AB  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2C8B2  44                      inc      esp                            
  0x00C2C8B3  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2C8B6  0000                    add      byte ptr [eax], al             
  0x00C2C8B8  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2C8BE  2000                    and      byte ptr [eax], al             
  0x00C2C8C0  0091210000c4            add      byte ptr [ecx - 0x3bffffdf], dl 
  0x00C2C8C6  2200                    and      al, byte ptr [eax]             
  0x00C2C8C8  00f4                    add      ah, dh                         
  0x00C2C8CA  46                      inc      esi                            
  0x00C2C8CB  0032                    add      byte ptr [edx], dh             
  0x00C2C8CD  0000                    add      byte ptr [eax], al             
  0x00C2C8CF  00d0                    add      al, dl                         
  0x00C2C8D1  f4                      hlt                                     
  0x00C2C8D2  44                      inc      esp                            
  0x00C2C8D3  0000                    add      byte ptr [eax], al             
  0x00C2C8D5  0000                    add      byte ptr [eax], al             
  0x00C2C8D7  002e                    add      byte ptr [esi], ch             
  0x00C2C8D9  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2C8DE  2000                    and      byte ptr [eax], al             
  0x00C2C8E0  0092210000f4            add      byte ptr [edx - 0xbffffdf], dl 
  0x00C2C8E6  65001a                  add      byte ptr gs:[edx], bl          
  0x00C2C8E9  0f0000                  sldt     word ptr [eax]                 
  0x00C2C8EC  007066                  add      byte ptr [eax + 0x66], dh      
  0x00C2C8EF  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2C8F2  0000                    add      byte ptr [eax], al             
  0x00C2C8F4  86040d0000f066          xchg     byte ptr [ecx + 0x66f00000], al 
  0x00C2C8FB  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2C8FE  0000                    add      byte ptr [eax], al             
  0x00C2C900  005e20                  add      byte ptr [esi + 0x20], bl      
  0x00C2C903  0000                    add      byte ptr [eax], al             
  0x00C2C906  56                      push     esi                            
  0x00C2C907  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2C90A  0000                    add      byte ptr [eax], al             
  0x00C2C90C  0300                    add      eax, dword ptr [eax]           
  0x00C2C90E  2000                    and      byte ptr [eax], al             
  0x00C2C910  17                      pop      ss                             
  0x00C2C911  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2C912  050000f056              add      eax, 0x56f00000                
  0x00C2C917  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2C91A  0000                    add      byte ptr [eax], al             
  0x00C2C91C  00f0                    add      al, dh                         
  0x00C2C91E  44                      inc      esp                            
  0x00C2C91F  00790b                  add      byte ptr [ecx + 0xb], bh       
  0x00C2C922  0000                    add      byte ptr [eax], al             
  0x00C2C924  844f01                  test     byte ptr [edi + 1], cl         
  0x00C2C927  0008                    add      byte ptr [eax], cl             
  0x00C2C929  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2C92E  2000                    and      byte ptr [eax], al             
  0x00C2C930  041d                    add      al, 0x1d                       
  0x00C2C932  0c00                    or       al, 0                          
  0x00C2C934  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2C937  00a204000000            add      byte ptr [edx + 4], ah         
  0x00C2C93D  00250000f447            add      byte ptr [0x47f40000], ah      
  0x00C2C943  0007                    add      byte ptr [edi], al             
  0x00C2C945  0000                    add      byte ptr [eax], al             
  0x00C2C947  0000                    add      byte ptr [eax], al             
  0x00C2C949  f4                      hlt                                     
  0x00C2C94A  60                      pushal                                  
  0x00C2C94B  008304000000            add      byte ptr [ebx + 4], al         
  0x00C2C951  f4                      hlt                                     
  0x00C2C952  61                      popal                                   
  0x00C2C953  0039                    add      byte ptr [ecx], bh             
  0x00C2C955  0b00                    or       eax, dword ptr [eax]           
  0x00C2C957  0000                    add      byte ptr [eax], al             
  0x00C2C959  f4                      hlt                                     
  0x00C2C95A  6200                    bound    eax, qword ptr [eax]           
  0x00C2C95C  b804000000              mov      eax, 4                         
  0x00C2C961  f4                      hlt                                     
  0x00C2C962  65001a                  add      byte ptr gs:[edx], bl          
  0x00C2C965  0f0000                  sldt     word ptr [eax]                 
  0x00C2C968  86040d0000f460          xchg     byte ptr [ecx + 0x60f40000], al 
  0x00C2C96F  00a60400001b            add      byte ptr [esi + 0x1b000004], ah 
  0x00C2C975  f4                      hlt                                     
  0x00C2C976  6600fb                  add      bl, bh                         
  0x00C2C979  0c00                    or       al, 0                          
  0x00C2C97B  0000                    add      byte ptr [eax], al             
  0x00C2C97D  d8440013                fadd     dword ptr [eax + eax + 0x13]   
  0x00C2C981  f4                      hlt                                     
  0x00C2C982  47                      inc      edi                            
  0x00C2C983  005555                  add      byte ptr [ebp + 0x55], dl      
  0x00C2C986  d500                    aad      0                              
  0x00C2C988  00e8                    add      al, ch                         
  0x00C2C98A  2000                    and      byte ptr [eax], al             
  0x00C2C98D  de4e00                  fimul    word ptr [esi]                 
  0x00C2C990  13842100dad844          adc      eax, dword ptr [ecx + 0x44d8da00] 
  0x00C2C997  0000                    add      byte ptr [eax], al             
  0x00C2C999  e82000c6de              call     0xdf88c9be                     
  0x00C2C99E  4e                      dec      esi                            
  0x00C2C99F  0000                    add      byte ptr [eax], al             
  0x00C2C9A1  8421                    test     byte ptr [ecx], ah             
  0x00C2C9A3  00da                    add      dl, bl                         
  0x00C2C9A5  d8f0                    fdiv     st(0)                          
  0x00C2C9A7  00da                    add      dl, bl                         
  0x00C2C9A9  d8440013                fadd     dword ptr [eax + eax + 0x13]   
  0x00C2C9AD  f4                      hlt                                     
  0x00C2C9AE  47                      inc      edi                            
  0x00C2C9AF  0000                    add      byte ptr [eax], al             
  0x00C2C9B1  00c0                    add      al, al                         
  0x00C2C9B3  0000                    add      byte ptr [eax], al             
  0x00C2C9B5  e82000c6de              call     0xdf88c9da                     
  0x00C2C9BA  4e                      dec      esi                            
  0x00C2C9BB  0000                    add      byte ptr [eax], al             
  0x00C2C9BD  8421                    test     byte ptr [ecx], ah             
  0x00C2C9BF  00da                    add      dl, bl                         
  0x00C2C9C1  0020                    add      byte ptr [eax], ah             
  0x00C2C9C3  0000                    add      byte ptr [eax], al             
  0x00C2C9C5  d8f0                    fdiv     st(0)                          
  0x00C2C9C7  00900a060002            add      byte ptr [eax + 0x200060a], dl 
  0x00C2C9CD  0000                    add      byte ptr [eax], al             
  0x00C2C9CF  00da                    add      dl, bl                         
  0x00C2C9D1  d8f0                    fdiv     st(0)                          
  0x00C2C9D3  00da                    add      dl, bl                         
  0x00C2C9D5  0020                    add      byte ptr [eax], ah             
  0x00C2C9D7  00ae1d0c0000            add      byte ptr [esi + 0xc1d], ch     
  0x00C2C9DD  7056                    jo       0xc2ca35                       
  0x00C2C9DF  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2C9E2  0000                    add      byte ptr [eax], al             
  0x00C2C9E4  020c0500000c05          add      cl, byte ptr [eax + 0x50c0000] 
  0x00C2C9EB  001b                    add      byte ptr [ebx], bl             
  0x00C2C9EE  44                      inc      esp                            
  0x00C2C9EF  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2C9F2  0000                    add      byte ptr [eax], al             
  0x00C2C9F4  004f23                  add      byte ptr [edi + 0x23], cl      
  0x00C2C9F7  004c0020                add      byte ptr [eax + eax + 0x20], cl 
  0x00C2C9FB  0000                    add      byte ptr [eax], al             
  0x00C2C9FD  fa                      cli                                     
  0x00C2C9FE  2100                    and      dword ptr [eax], eax           
  0x00C2CA00  0b00                    or       eax, dword ptr [eax]           
  0x00C2CA02  2000                    and      byte ptr [eax], al             
  0x00C2CA04  02140500030c05          add      dl, byte ptr [eax + 0x50c0300] 
  0x00C2CA0B  0080100d0033            add      byte ptr [eax + 0x33000d10], al 
  0x00C2CA11  fc                      cld                                     
  0x00C2CA12  ff00                    inc      dword ptr [eax]                
  0x00C2CA14  0c00                    or       al, 0                          
  0x00C2CA16  0000                    add      byte ptr [eax], al             
  0x00C2CA18  1bf4                    sbb      esi, esp                       
  0x00C2CA1A  60                      pushal                                  
  0x00C2CA1B  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2CA1E  0000                    add      byte ptr [eax], al             
  0x00C2CA20  006057                  add      byte ptr [eax + 0x57], ah      
  0x00C2CA23  0000                    add      byte ptr [eax], al             
  0x00C2CA25  f4                      hlt                                     
  0x00C2CA26  60                      pushal                                  
  0x00C2CA27  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2CA2A  0000                    add      byte ptr [eax], al             
  0x00C2CA2C  00f4                    add      ah, dh                         
  0x00C2CA2E  6200                    bound    eax, qword ptr [eax]           
  0x00C2CA30  790b                    jns      0xc2ca3d                       
  0x00C2CA32  0000                    add      byte ptr [eax], al             
  0x00C2CA34  00f4                    add      ah, dh                         
  0x00C2CA36  6400740b00              add      byte ptr fs:[ebx + ecx], dh    
  0x00C2CA3B  0000                    add      byte ptr [eax], al             
  0x00C2CA3E  7000                    jo       0xc2ca40                       
                                        ; XREF: 0x00C2CA3E (cond_jump)
  0x00C2CA40  97                      xchg     edi, eax                       
  0x00C2CA41  0b00                    or       eax, dword ptr [eax]           
  0x00C2CA43  0000                    add      byte ptr [eax], al             
  0x00C2CA45  95                      xchg     ebp, eax                       
  0x00C2CA46  2200                    and      al, byte ptr [eax]             
  0x00C2CA48  006057                  add      byte ptr [eax + 0x57], ah      
  0x00C2CA4B  0000                    add      byte ptr [eax], al             
  0x00C2CA4D  625700                  bound    edx, qword ptr [edi]           
  0x00C2CA50  10d8                    adc      al, bl                         
  0x00C2CA52  06                      push     es                             
  0x00C2CA53  0002                    add      byte ptr [edx], al             
  0x00C2CA55  0000                    add      byte ptr [eax], al             
  0x00C2CA57  0000                    add      byte ptr [eax], al             
  0x00C2CA59  5d                      pop      ebp                            
  0x00C2CA5A  57                      push     edi                            
  0x00C2CA5B  0000                    add      byte ptr [eax], al             
  0x00C2CA5D  0036                    add      byte ptr [esi], dh             
  0x00C2CA5F  0000                    add      byte ptr [eax], al             
  0x00C2CA62  44                      inc      esp                            
  0x00C2CA63  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2CA69  c406                    les      eax, ptr [esi]                 
  0x00C2CA6B  0012                    add      byte ptr [edx], dl             
  0x00C2CA6D  0000                    add      byte ptr [eax], al             
  0x00C2CA6F  0000                    add      byte ptr [eax], al             
  0x00C2CA71  c422                    les      esp, ptr [edx]                 
  0x00C2CA73  0000                    add      byte ptr [eax], al             
  0x00C2CA75  f4                      hlt                                     
  0x00C2CA76  46                      inc      esi                            
  0x00C2CA77  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2CA7E  44                      inc      esp                            
  0x00C2CA7F  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2CA82  0000                    add      byte ptr [eax], al             
  0x00C2CA84  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2CA8A  2000                    and      byte ptr [eax], al             
  0x00C2CA8C  0090210000f4            add      byte ptr [eax - 0xbffffdf], dl 
  0x00C2CA92  56                      push     esi                            
  0x00C2CA93  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2CA99  c422                    les      esp, ptr [edx]                 
  0x00C2CA9B  004000                  add      byte ptr [eax], al             
  0x00C2CA9E  2000                    and      byte ptr [eax], al             
  0x00C2CAA0  009221001062            add      byte ptr [edx + 0x62100021], dl 
  0x00C2CAA6  06                      push     es                             
  0x00C2CAA7  0002                    add      byte ptr [edx], al             
  0x00C2CAA9  0000                    add      byte ptr [eax], al             
  0x00C2CAAB  0000                    add      byte ptr [eax], al             
  0x00C2CAAD  58                      pop      eax                            
  0x00C2CAAE  57                      push     edi                            
  0x00C2CAAF  0000                    add      byte ptr [eax], al             
  0x00C2CAB1  5e                      pop      esi                            
  0x00C2CAB2  2000                    and      byte ptr [eax], al             
  0x00C2CAB4  00f0                    add      al, dh                         
  0x00C2CAB6  56                      push     esi                            
  0x00C2CAB7  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2CABA  0000                    add      byte ptr [eax], al             
  0x00C2CABC  0300                    add      eax, dword ptr [eax]           
  0x00C2CABE  2000                    and      byte ptr [eax], al             
  0x00C2CAC0  06                      push     es                             
  0x00C2CAC1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CAC2  050000f460              add      eax, 0x60f40000                
  0x00C2CAC7  0039                    add      byte ptr [ecx], bh             
  0x00C2CAC9  0b00                    or       eax, dword ptr [eax]           
  0x00C2CACB  009007060002            add      byte ptr [eax + 0x2000607], dl 
  0x00C2CAD1  0000                    add      byte ptr [eax], al             
  0x00C2CAD3  0000                    add      byte ptr [eax], al             
  0x00C2CAD5  58                      pop      eax                            
  0x00C2CAD6  57                      push     edi                            
  0x00C2CAD7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2CADA  0000                    add      byte ptr [eax], al             
  0x00C2CADC  00f0                    add      al, dh                         
  0x00C2CADE  44                      inc      esp                            
  0x00C2CADF  00b604000000            add      byte ptr [esi + 4], dh         
  0x00C2CAE5  7044                    jo       0xc2cb2b                       
  0x00C2CAE7  009f04000080            add      byte ptr [edi - 0x7ffffffc], bl 
  0x00C2CAED  100d00f8feff            adc      byte ptr [0xfffef800], cl      
  0x00C2CAF3  000f                    add      byte ptr [edi], cl             
  0x00C2CAF5  0a05000c0000            or       al, byte ptr [0xc00]           
  0x00C2CAFB  001b                    add      byte ptr [ebx], bl             
  0x00C2CAFD  0020                    add      byte ptr [eax], ah             
  0x00C2CAFF  008850010088            add      byte ptr [eax - 0x77fffeb0], cl 
  0x00C2CB05  50                      push     eax                            
  0x00C2CB06  0100                    add      dword ptr [eax], eax           
  0x00C2CB08  884201                  mov      byte ptr [edx + 1], al         
  0x00C2CB0B  008846010088            add      byte ptr [eax - 0x77fffeba], cl 
  0x00C2CB11  45                      inc      ebp                            
  0x00C2CB12  0100                    add      dword ptr [eax], eax           
  0x00C2CB14  884301                  mov      byte ptr [ebx + 1], al         
  0x00C2CB17  008843010000            add      byte ptr [eax + 0x143], cl     
  0x00C2CB1E  56                      push     esi                            
  0x00C2CB1F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2CB22  0000                    add      byte ptr [eax], al             
  0x00C2CB24  854101                  test     dword ptr [ecx + 1], eax       
  0x00C2CB27  0004a4                  add      byte ptr [esp], al             
  0x00C2CB2A  0500864101              add      eax, 0x1418600                 
  0x00C2CB2F  0002                    add      byte ptr [edx], al             
  0x00C2CB31  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CB32  0500884201              add      eax, 0x1428800                 
  0x00C2CB37  0000                    add      byte ptr [eax], al             
  0x00C2CB3A  56                      push     esi                            
  0x00C2CB3B  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2CB3E  0000                    add      byte ptr [eax], al             
  0x00C2CB40  86440100                xchg     byte ptr [ecx + eax], al       
  0x00C2CB44  02a40500884201          add      ah, byte ptr [ebp + eax + 0x1428800] 
  0x00C2CB4B  0000                    add      byte ptr [eax], al             
  0x00C2CB4E  56                      push     esi                            
  0x00C2CB4F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2CB52  0000                    add      byte ptr [eax], al             
  0x00C2CB54  854201                  test     dword ptr [edx + 1], eax       
  0x00C2CB57  0002                    add      byte ptr [edx], al             
  0x00C2CB59  2405                    and      al, 5                          
  0x00C2CB5B  008842010088            add      byte ptr [eax - 0x77fffebe], cl 
  0x00C2CB61  41                      inc      ecx                            
  0x00C2CB62  0100                    add      dword ptr [eax], eax           
  0x00C2CB64  884501                  mov      byte ptr [ebp + 1], al         
  0x00C2CB67  008841010000            add      byte ptr [eax + 0x141], cl     
  0x00C2CB6E  56                      push     esi                            
  0x00C2CB6F  004c0b00                add      byte ptr [ebx + ecx], cl       
  0x00C2CB73  0003                    add      byte ptr [ebx], al             
  0x00C2CB75  f4                      hlt                                     
  0x00C2CB76  44                      inc      esp                            
  0x00C2CB77  0008                    add      byte ptr [eax], cl             
  0x00C2CB79  0000                    add      byte ptr [eax], al             
  0x00C2CB7B  0002                    add      byte ptr [edx], al             
  0x00C2CB7D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CB7E  0500480020              add      eax, 0x20004800                
  0x00C2CB83  008841010088            add      byte ptr [eax - 0x77fffebf], cl 
  0x00C2CB89  41                      inc      ecx                            
  0x00C2CB8A  0100                    add      dword ptr [eax], eax           
  0x00C2CB8C  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2CB8F  008841010088            add      byte ptr [eax - 0x77fffebf], cl 
  0x00C2CB95  41                      inc      ecx                            
  0x00C2CB96  0100                    add      dword ptr [eax], eax           
  0x00C2CB98  884101                  mov      byte ptr [ecx + 1], al         
  0x00C2CB9B  008841010000            add      byte ptr [eax + 0x141], cl     
  0x00C2CBA1  7057                    jo       0xc2cbfa                       
  0x00C2CBA3  00510b                  add      byte ptr [ecx + 0xb], dl       
  0x00C2CBA6  0000                    add      byte ptr [eax], al             
  0x00C2CBA8  0c00                    or       al, 0                          
  0x00C2CBAA  0000                    add      byte ptr [eax], al             
  0x00C2CBAC  0000                    add      byte ptr [eax], al             
  0x00C2CBAE  360000                  add      byte ptr ss:[eax], al          
  0x00C2CBB2  44                      inc      esp                            
  0x00C2CBB3  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2CBB9  c406                    les      eax, ptr [esi]                 
  0x00C2CBBB  003400                  add      byte ptr [eax + eax], dh       
  0x00C2CBBE  0000                    add      byte ptr [eax], al             
  0x00C2CBC0  00f4                    add      ah, dh                         
  0x00C2CBC2  56                      push     esi                            
  0x00C2CBC3  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2CBC9  c422                    les      esp, ptr [edx]                 
  0x00C2CBCB  004000                  add      byte ptr [eax], al             
  0x00C2CBCE  2000                    and      byte ptr [eax], al             
  0x00C2CBD0  0090210000e0            add      byte ptr [eax - 0x1fffffdf], dl 
  0x00C2CBD6  56                      push     esi                            
  0x00C2CBD7  0003                    add      byte ptr [ebx], al             
  0x00C2CBD9  92                      xchg     edx, eax                       
  0x00C2CBDA  2100                    and      dword ptr [eax], eax           
  0x00C2CBDC  4b                      dec      ebx                            
  0x00C2CBDD  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CBDE  050000c422              add      eax, 0x22c40000                
  0x00C2CBE3  0000                    add      byte ptr [eax], al             
  0x00C2CBE5  f4                      hlt                                     
  0x00C2CBE6  46                      inc      esi                            
  0x00C2CBE7  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2CBED  f4                      hlt                                     
  0x00C2CBEE  44                      inc      esp                            
  0x00C2CBEF  00fa                    add      dl, bh                         
  0x00C2CBF1  0000                    add      byte ptr [eax], al             
  0x00C2CBF3  002e                    add      byte ptr [esi], ch             
  0x00C2CBF5  1d0c004000              sbb      eax, 0x40000c                  
                                        ; XREF: 0x00C2CBA1 (cond_jump)
  0x00C2CBFA  2000                    and      byte ptr [eax], al             
  0x00C2CBFC  0090210000f4            add      byte ptr [eax - 0xbffffdf], dl 
  0x00C2CC02  56                      push     esi                            
  0x00C2CC03  005c0b00                add      byte ptr [ebx + ecx], bl       
  0x00C2CC07  0000                    add      byte ptr [eax], al             
  0x00C2CC09  c422                    les      esp, ptr [edx]                 
  0x00C2CC0B  004000                  add      byte ptr [eax], al             
  0x00C2CC0E  2000                    and      byte ptr [eax], al             
  0x00C2CC10  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2CC16  7000                    jo       0xc2cc18                       
                                        ; XREF: 0x00C2CC16 (cond_jump)
  0x00C2CC18  d9720b                  fnstenv  [edx + 0xb]                    
  0x00C2CC1B  0012                    add      byte ptr [edx], dl             
  0x00C2CC1D  0f0000                  sldt     word ptr [eax]                 
  0x00C2CC20  00f4                    add      ah, dh                         
  0x00C2CC22  56                      push     esi                            
  0x00C2CC23  00910b000000            add      byte ptr [ecx + 0xb], dl       
  0x00C2CC29  c422                    les      esp, ptr [edx]                 
  0x00C2CC2B  004000                  add      byte ptr [eax], al             
  0x00C2CC2E  2000                    and      byte ptr [eax], al             
  0x00C2CC30  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2CC36  7200                    jb       0xc2cc38                       
                                        ; XREF: 0x00C2CC36 (cond_jump)
  0x00C2CC38  00d8                    add      al, bl                         
  0x00C2CC3A  45                      inc      ebp                            
  0x00C2CC3B  0000                    add      byte ptr [eax], al             
  0x00C2CC3D  c422                    les      esp, ptr [edx]                 
  0x00C2CC3F  0000                    add      byte ptr [eax], al             
  0x00C2CC41  f4                      hlt                                     
  0x00C2CC42  46                      inc      esi                            
  0x00C2CC43  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2CC49  f4                      hlt                                     
  0x00C2CC4A  44                      inc      esp                            
  0x00C2CC4B  00b00700002e            add      byte ptr [eax + 0x2e000007], dh 
  0x00C2CC51  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2CC56  2000                    and      byte ptr [eax], al             
  0x00C2CC58  00952100005d            add      byte ptr [ebp + 0x5d000021], dl 
  0x00C2CC5E  45                      inc      ebp                            
  0x00C2CC5F  0000                    add      byte ptr [eax], al             
  0x00C2CC61  c422                    les      esp, ptr [edx]                 
  0x00C2CC63  0000                    add      byte ptr [eax], al             
  0x00C2CC65  f4                      hlt                                     
  0x00C2CC66  46                      inc      esi                            
  0x00C2CC67  001f                    add      byte ptr [edi], bl             
  0x00C2CC69  0000                    add      byte ptr [eax], al             
  0x00C2CC6B  00d0                    add      al, dl                         
  0x00C2CC6D  f4                      hlt                                     
  0x00C2CC6E  44                      inc      esp                            
  0x00C2CC6F  0000                    add      byte ptr [eax], al             
  0x00C2CC71  0000                    add      byte ptr [eax], al             
  0x00C2CC73  002e                    add      byte ptr [esi], ch             
  0x00C2CC75  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2CC7A  2000                    and      byte ptr [eax], al             
  0x00C2CC7C  00942100005c4d          add      byte ptr [ecx + 0x4d5c0000], dl 
  0x00C2CC83  001e                    add      byte ptr [esi], bl             
  0x00C2CC85  050d00005e              add      eax, 0x5e00000d                
  0x00C2CC8A  2000                    and      byte ptr [eax], al             
  0x00C2CC8C  00f0                    add      al, dh                         
  0x00C2CC8E  56                      push     esi                            
  0x00C2CC8F  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2CC92  0000                    add      byte ptr [eax], al             
  0x00C2CC94  0300                    add      eax, dword ptr [eax]           
  0x00C2CC96  2000                    and      byte ptr [eax], al             
  0x00C2CC98  13a4050000f056          adc      esp, dword ptr [ebp + eax + 0x56f00000] 
  0x00C2CC9F  008f0b000003            add      byte ptr [edi + 0x300000b], cl 
  0x00C2CCA5  0020                    add      byte ptr [eax], ah             
  0x00C2CCA7  000f                    add      byte ptr [edi], cl             
  0x00C2CCA9  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CCAA  050000f460              add      eax, 0x60f40000                
  0x00C2CCAF  008304000000            add      byte ptr [ebx + 4], al         
  0x00C2CCB5  06                      push     es                             
  0x00C2CCB6  3800                    cmp      byte ptr [eax], al             
  0x00C2CCB8  00f0                    add      al, dh                         
  0x00C2CCBA  7900                    jns      0xc2ccbc                       
                                        ; XREF: 0x00C2CCBA (cond_jump)
  0x00C2CCBC  130f                    adc      ecx, dword ptr [edi]           
  0x00C2CCBE  0000                    add      byte ptr [eax], al             
  0x00C2CCC0  0002                    add      byte ptr [edx], al             
  0x00C2CCC2  3a00                    cmp      al, byte ptr [eax]             
  0x00C2CCC4  00d8                    add      al, bl                         
  0x00C2CCC6  45                      inc      ebp                            
  0x00C2CCC7  0000                    add      byte ptr [eax], al             
  0x00C2CCC9  f4                      hlt                                     
  0x00C2CCCA  650039                  add      byte ptr gs:[ecx], bh          
  0x00C2CCCD  0b00                    or       eax, dword ptr [eax]           
  0x00C2CCCF  0000                    add      byte ptr [eax], al             
  0x00C2CCD1  5d                      pop      ebp                            
  0x00C2CCD2  45                      inc      ebp                            
  0x00C2CCD3  0000                    add      byte ptr [eax], al             
  0x00C2CCD5  f4                      hlt                                     
  0x00C2CCD6  64009b00000000          add      byte ptr fs:[ebx], bl          
  0x00C2CCDD  5c                      pop      esp                            
  0x00C2CCDE  4d                      dec      ebp                            
  0x00C2CCDF  001e                    add      byte ptr [esi], bl             
  0x00C2CCE1  050d000c00              add      eax, 0xc000d                   
  0x00C2CCE6  0000                    add      byte ptr [eax], al             
  0x00C2CCE8  00f4                    add      ah, dh                         
  0x00C2CCEA  56                      push     esi                            
  0x00C2CCEB  0013                    add      byte ptr [ebx], dl             
  0x00C2CCED  0000                    add      byte ptr [eax], al             
  0x00C2CCEF  0000                    add      byte ptr [eax], al             
  0x00C2CCF1  f4                      hlt                                     
  0x00C2CCF2  57                      push     edi                            
  0x00C2CCF3  0001                    add      byte ptr [ecx], al             
  0x00C2CCF5  0000                    add      byte ptr [eax], al             
  0x00C2CCF7  0000                    add      byte ptr [eax], al             
  0x00C2CCF9  f4                      hlt                                     
  0x00C2CCFA  7000                    jo       0xc2ccfc                       
                                        ; XREF: 0x00C2CCFA (cond_jump)
  0x00C2CCFC  90                      nop                                     
  0x00C2CCFD  0300                    add      eax, dword ptr [eax]           
  0x00C2CCFF  0000                    add      byte ptr [eax], al             
  0x00C2CD01  0039                    add      byte ptr [ecx], bh             
  0x00C2CD03  0000                    add      byte ptr [eax], al             
  0x00C2CD05  f4                      hlt                                     
  0x00C2CD06  60                      pushal                                  
  0x00C2CD07  00fa                    add      dl, bh                         
  0x00C2CD09  0000                    add      byte ptr [eax], al             
  0x00C2CD0B  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2CD11  0100                    add      dword ptr [eax], eax           
  0x00C2CD13  0003                    add      byte ptr [ebx], al             
  0x00C2CD15  0020                    add      byte ptr [eax], ah             
  0x00C2CD17  0000                    add      byte ptr [eax], al             
  0x00C2CD19  2405                    and      al, 5                          
  0x00C2CD1B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2CD1E  0000                    add      byte ptr [eax], al             
  0x00C2CD20  0c00                    or       al, 0                          
  0x00C2CD22  0000                    add      byte ptr [eax], al             
  0x00C2CD24  0c00                    or       al, 0                          
  0x00C2CD26  0000                    add      byte ptr [eax], al             
  0x00C2CD28  40                      inc      eax                            
  0x00C2CD29  1bd0                    sbb      edx, eax                       
  0x00C2CD2B  00d3                    add      bl, dl                         
  0x00C2CD2D  06                      push     es                             
  0x00C2CD2E  0000                    add      byte ptr [eax], al             
  0x00C2CD30  50                      push     eax                            
  0x00C2CD31  010400                  add      dword ptr [eax + eax], eax     
  0x00C2CD34  ed                      in       eax, dx                        
  0x00C2CD36  0f0000                  sldt     word ptr [eax]                 
  0x00C2CD39  7044                    jo       0xc2cd7f                       
  0x00C2CD3B  00fb                    add      bl, bh                         
  0x00C2CD3D  0000                    add      byte ptr [eax], al             
  0x00C2CD3F  000b                    add      byte ptr [ebx], cl             
  0x00C2CD41  0020                    add      byte ptr [eax], ah             
  0x00C2CD43  0003                    add      byte ptr [ebx], al             
  0x00C2CD45  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2CD46  050080100d              add      eax, 0xd108000                 
  0x00C2CD4B  00c0                    add      al, al                         
  0x00C2CD4D  06                      push     es                             
  0x00C2CD4E  0000                    add      byte ptr [eax], al             
  0x00C2CD50  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2CD53  006c0600                add      byte ptr [esi + eax], ch       
  0x00C2CD57  0000                    add      byte ptr [eax], al             
  0x00C2CD5A  57                      push     edi                            
  0x00C2CD5B  00fb                    add      bl, bh                         
  0x00C2CD5D  0000                    add      byte ptr [eax], al             
  0x00C2CD5F  000b                    add      byte ptr [ebx], cl             
  0x00C2CD61  f4                      hlt                                     
  0x00C2CD62  60                      pushal                                  
  0x00C2CD63  001f                    add      byte ptr [edi], bl             
  0x00C2CD65  0000                    add      byte ptr [eax], al             
  0x00C2CD67  0012                    add      byte ptr [edx], dl             
  0x00C2CD69  2405                    and      al, 5                          
  0x00C2CD6B  0000                    add      byte ptr [eax], al             
  0x00C2CD6D  002400                  add      byte ptr [eax + eax], ah       
  0x00C2CD70  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2CD73  004f0b                  add      byte ptr [edi + 0xb], cl       
  0x00C2CD76  0000                    add      byte ptr [eax], al             
  0x00C2CD78  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2CD7B  00500b                  add      byte ptr [eax + 0xb], dl       
  0x00C2CD7E  0000                    add      byte ptr [eax], al             
  0x00C2CD80  00f4                    add      ah, dh                         
  0x00C2CD82  44                      inc      esp                            
  0x00C2CD83  0000                    add      byte ptr [eax], al             
  0x00C2CD85  72f8                    jb       0xc2cd7f                       
  0x00C2CD87  0000                    add      byte ptr [eax], al             
  0x00C2CD89  58                      pop      eax                            
  0x00C2CD8A  44                      inc      esp                            
  0x00C2CD8B  0000                    add      byte ptr [eax], al             
  0x00C2CD8D  f4                      hlt                                     
  0x00C2CD8E  44                      inc      esp                            
  0x00C2CD8F  0000                    add      byte ptr [eax], al             
  0x00C2CD91  1f                      pop      ds                             
  0x00C2CD92  4e                      dec      esi                            
  0x00C2CD93  0000                    add      byte ptr [eax], al             
  0x00C2CD95  58                      pop      eax                            
  0x00C2CD96  44                      inc      esp                            
  0x00C2CD97  0000                    add      byte ptr [eax], al             
  0x00C2CD99  f4                      hlt                                     
  0x00C2CD9A  44                      inc      esp                            
  0x00C2CD9B  0000                    add      byte ptr [eax], al             
  0x00C2CD9D  0100                    add      dword ptr [eax], eax           
  0x00C2CD9F  0000                    add      byte ptr [eax], al             
  0x00C2CDA1  58                      pop      eax                            
  0x00C2CDA2  44                      inc      esp                            
  0x00C2CDA3  0000                    add      byte ptr [eax], al             
  0x00C2CDA5  f4                      hlt                                     
  0x00C2CDA6  44                      inc      esp                            
  0x00C2CDA7  0000                    add      byte ptr [eax], al             
  0x00C2CDA9  005000                  add      byte ptr [eax], dl             
  0x00C2CDAC  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C2CDAF  0000                    add      byte ptr [eax], al             
  0x00C2CDB2  56                      push     esi                            
  0x00C2CDB3  004f0b                  add      byte ptr [edi + 0xb], cl       
  0x00C2CDB6  0000                    add      byte ptr [eax], al             
  0x00C2CDB8  03f0                    add      esi, eax                       
  0x00C2CDBA  44                      inc      esp                            
  0x00C2CDBB  00500b                  add      byte ptr [eax + 0xb], dl       
  0x00C2CDBE  0000                    add      byte ptr [eax], al             
  0x00C2CDC0  02a40500005844          add      ah, byte ptr [ebp + eax + 0x44580000] 
  0x00C2CDC7  0000                    add      byte ptr [eax], al             
  0x00C2CDC9  f4                      hlt                                     
  0x00C2CDCA  57                      push     edi                            
  0x00C2CDCB  0010                    add      byte ptr [eax], dl             
  0x00C2CDCD  0000                    add      byte ptr [eax], al             
  0x00C2CDCF  0080100d00a6            add      byte ptr [eax - 0x59fff2f0], al 
  0x00C2CDD5  0100                    add      dword ptr [eax], eax           
  0x00C2CDD7  0000                    add      byte ptr [eax], al             
  0x00C2CDD9  f4                      hlt                                     
  0x00C2CDDA  44                      inc      esp                            
  0x00C2CDDB  0000                    add      byte ptr [eax], al             
  0x00C2CDDD  0000                    add      byte ptr [eax], al             
  0x00C2CDDF  004500                  add      byte ptr [ebp], al             
  0x00C2CDE2  2000                    and      byte ptr [eax], al             
  0x00C2CDE4  00740500                add      byte ptr [ebp + eax], dh       
  0x00C2CDE8  005820                  add      byte ptr [eax + 0x20], bl      
  0x00C2CDEB  0000                    add      byte ptr [eax], al             
  0x00C2CDED  d85600                  fcom     dword ptr [esi]                
  0x00C2CDF0  00f0                    add      al, dh                         
  0x00C2CDF2  57                      push     edi                            
  0x00C2CDF3  00fb                    add      bl, bh                         
  0x00C2CDF5  0000                    add      byte ptr [eax], al             
  0x00C2CDF7  000b                    add      byte ptr [ebx], cl             
  0x00C2CDF9  f4                      hlt                                     
  0x00C2CDFA  44                      inc      esp                            
  0x00C2CDFB  000400                  add      byte ptr [eax + eax], al       
  0x00C2CDFE  0000                    add      byte ptr [eax], al             
  0x00C2CE00  40                      inc      eax                            
  0x00C2CE01  2a20                    sub      ah, byte ptr [eax]             
  0x00C2CE03  0000                    add      byte ptr [eax], al             
  0x00C2CE06  57                      push     edi                            
  0x00C2CE07  004f0b                  add      byte ptr [edi + 0xb], cl       
  0x00C2CE0A  0000                    add      byte ptr [eax], al             
  0x00C2CE0C  0bf4                    or       esi, esp                       
  0x00C2CE0E  44                      inc      esp                            
  0x00C2CE0F  0001                    add      byte ptr [ecx], al             
  0x00C2CE11  0000                    add      byte ptr [eax], al             
  0x00C2CE13  004022                  add      byte ptr [eax + 0x22], al      
  0x00C2CE16  2000                    and      byte ptr [eax], al             
  0x00C2CE18  0000                    add      byte ptr [eax], al             
  0x00C2CE1A  2400                    and      al, 0                          
  0x00C2CE1C  0000                    add      byte ptr [eax], al             
  0x00C2CE1E  250000f460              and      eax, 0x60f40000                
  0x00C2CE23  001f                    add      byte ptr [edi], bl             
  0x00C2CE25  0000                    add      byte ptr [eax], al             
  0x00C2CE27  0080cc0c0007            add      byte ptr [eax + 0x7000ccc], al 
  0x00C2CE2D  0000                    add      byte ptr [eax], al             
  0x00C2CE2F  0040cc                  add      byte ptr [eax - 0x34], al      
  0x00C2CE32  0a00                    or       al, byte ptr [eax]             
  0x00C2CE34  0098210000f4            add      byte ptr [eax - 0xbffffdf], bl 
  0x00C2CE3A  44                      inc      esp                            
  0x00C2CE3B  0001                    add      byte ptr [ecx], al             
  0x00C2CE3D  0000                    add      byte ptr [eax], al             
  0x00C2CE3F  0000                    add      byte ptr [eax], al             
  0x00C2CE41  e845000070              call     0x70c2ce8b                     
  0x00C2CE46  44                      inc      esp                            
  0x00C2CE47  004f0b                  add      byte ptr [edi + 0xb], cl       
  0x00C2CE4A  0000                    add      byte ptr [eax], al             
  0x00C2CE4C  007045                  add      byte ptr [eax + 0x45], dh      
  0x00C2CE4F  00500b                  add      byte ptr [eax + 0xb], dl       
  0x00C2CE52  0000                    add      byte ptr [eax], al             
  0x00C2CE54  0084210000f056          add      byte ptr [ecx + 0x56f00000], al 
  0x00C2CE5B  00fb                    add      bl, bh                         
  0x00C2CE5D  0000                    add      byte ptr [eax], al             
  0x00C2CE5F  0080100d0036            add      byte ptr [eax + 0x36000d10], al 
  0x00C2CE65  06                      push     es                             
  0x00C2CE66  0000                    add      byte ptr [eax], al             
  0x00C2CE68  0c00                    or       al, 0                          
  0x00C2CE6A  0000                    add      byte ptr [eax], al             
  0x00C2CE6C  61                      popal                                   
  0x00C2CE6D  f4                      hlt                                     
  0x00C2CE6E  46                      inc      esi                            
  0x00C2CE6F  0010                    add      byte ptr [eax], dl             
  0x00C2CE71  0000                    add      byte ptr [eax], al             
  0x00C2CE73  0000                    add      byte ptr [eax], al             
  0x00C2CE75  07                      pop      es                             
  0x00C2CE76  2300                    and      eax, dword ptr [eax]           
  0x00C2CE78  10d9                    adc      cl, bl                         
  0x00C2CE7A  06                      push     es                             
  0x00C2CE7B  000a                    add      byte ptr [edx], cl             
  0x00C2CE7D  0000                    add      byte ptr [eax], al             
  0x00C2CE7F  007cd950                add      byte ptr [ecx + ebx*8 + 0x50], bh 
  0x00C2CE83  0007                    add      byte ptr [edi], al             
  0x00C2CE85  7405                    je       0xc2ce8c                       
  0x00C2CE87  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CE8A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CE85 (cond_jump)
  0x00C2CE8C  46                      inc      esi                            
  0x00C2CE8D  1e                      push     ds                             
  0x00C2CE8E  0c00                    or       al, 0                          
  0x00C2CE90  90                      nop                                     
  0x00C2CE91  1e                      push     ds                             
  0x00C2CE92  0c00                    or       al, 0                          
  0x00C2CE94  49                      dec      ecx                            
  0x00C2CE95  e421                    in       al, 0x21                       
  0x00C2CE97  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CE9A  54                      push     esp                            
  0x00C2CE9B  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CE9E  0c00                    or       al, 0                          
  0x00C2CEA0  4e                      dec      esi                            
  0x00C2CEA1  1e                      push     ds                             
  0x00C2CEA2  0c00                    or       al, 0                          
  0x00C2CEA4  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CEAA  0000                    add      byte ptr [eax], al             
  0x00C2CEAC  61                      popal                                   
  0x00C2CEAD  f4                      hlt                                     
                                        ; XREF: 0x00C2CF00 (cond_jump)
  0x00C2CEAE  46                      inc      esi                            
  0x00C2CEAF  0010                    add      byte ptr [eax], dl             
  0x00C2CEB1  0000                    add      byte ptr [eax], al             
  0x00C2CEB3  0000                    add      byte ptr [eax], al             
  0x00C2CEB5  07                      pop      es                             
  0x00C2CEB6  2300                    and      eax, dword ptr [eax]           
  0x00C2CEB8  7cd9                    jl       0xc2ce93                       
  0x00C2CEBA  50                      push     eax                            
  0x00C2CEBB  0007                    add      byte ptr [edi], al             
  0x00C2CEBD  7405                    je       0xc2cec4                       
  0x00C2CEBF  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CEC2  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CEBD (cond_jump)
  0x00C2CEC4  46                      inc      esi                            
  0x00C2CEC5  1e                      push     ds                             
  0x00C2CEC6  0c00                    or       al, 0                          
  0x00C2CEC8  90                      nop                                     
  0x00C2CEC9  1e                      push     ds                             
  0x00C2CECA  0c00                    or       al, 0                          
  0x00C2CECC  49                      dec      ecx                            
  0x00C2CECD  e421                    in       al, 0x21                       
  0x00C2CECF  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CED2  54                      push     esp                            
  0x00C2CED3  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CED6  0c00                    or       al, 0                          
  0x00C2CED8  4e                      dec      esi                            
  0x00C2CED9  1e                      push     ds                             
  0x00C2CEDA  0c00                    or       al, 0                          
  0x00C2CEDC  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CEE2  0000                    add      byte ptr [eax], al             
  0x00C2CEE4  00f4                    add      ah, dh                         
  0x00C2CEE6  46                      inc      esi                            
  0x00C2CEE7  0010                    add      byte ptr [eax], dl             
  0x00C2CEE9  0000                    add      byte ptr [eax], al             
  0x00C2CEEB  0000                    add      byte ptr [eax], al             
  0x00C2CEED  07                      pop      es                             
  0x00C2CEEE  2300                    and      eax, dword ptr [eax]           
  0x00C2CEF0  10d9                    adc      cl, bl                         
  0x00C2CEF2  06                      push     es                             
  0x00C2CEF3  000d00000000            add      byte ptr [0], cl               
  0x00C2CEF9  d95600                  fst      dword ptr [esi]                
  0x00C2CEFC  6e                      outsb    dx, byte ptr [esi]             
  0x00C2CEFD  1e                      push     ds                             
  0x00C2CEFE  0c00                    or       al, 0                          
  0x00C2CF00  7cac                    jl       0xc2ceae                       
  0x00C2CF02  2000                    and      byte ptr [eax], al             
  0x00C2CF04  07                      pop      es                             
  0x00C2CF05  7405                    je       0xc2cf0c                       
  0x00C2CF07  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CF0A  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CF05 (cond_jump)
  0x00C2CF0C  46                      inc      esi                            
  0x00C2CF0D  1e                      push     ds                             
  0x00C2CF0E  0c00                    or       al, 0                          
  0x00C2CF10  90                      nop                                     
  0x00C2CF11  1e                      push     ds                             
  0x00C2CF12  0c00                    or       al, 0                          
  0x00C2CF14  49                      dec      ecx                            
  0x00C2CF15  e421                    in       al, 0x21                       
  0x00C2CF17  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CF1A  54                      push     esp                            
  0x00C2CF1B  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CF1E  0c00                    or       al, 0                          
  0x00C2CF20  4e                      dec      esi                            
  0x00C2CF21  1e                      push     ds                             
  0x00C2CF22  0c00                    or       al, 0                          
  0x00C2CF24  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CF2A  0000                    add      byte ptr [eax], al             
  0x00C2CF2C  00f4                    add      ah, dh                         
  0x00C2CF2E  46                      inc      esi                            
  0x00C2CF2F  0010                    add      byte ptr [eax], dl             
  0x00C2CF31  0000                    add      byte ptr [eax], al             
  0x00C2CF33  0000                    add      byte ptr [eax], al             
  0x00C2CF35  07                      pop      es                             
                                        ; XREF: 0x00C2CF88 (cond_jump)
  0x00C2CF36  2300                    and      eax, dword ptr [eax]           
  0x00C2CF38  10d9                    adc      cl, bl                         
  0x00C2CF3A  06                      push     es                             
  0x00C2CF3B  000d00000000            add      byte ptr [0], cl               
  0x00C2CF41  d95e00                  fstp     dword ptr [esi]                
  0x00C2CF44  6e                      outsb    dx, byte ptr [esi]             
  0x00C2CF45  1e                      push     ds                             
  0x00C2CF46  0c00                    or       al, 0                          
  0x00C2CF48  7cac                    jl       0xc2cef6                       
  0x00C2CF4A  2000                    and      byte ptr [eax], al             
  0x00C2CF4C  07                      pop      es                             
  0x00C2CF4D  7405                    je       0xc2cf54                       
  0x00C2CF4F  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CF52  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CF4D (cond_jump)
  0x00C2CF54  46                      inc      esi                            
  0x00C2CF55  1e                      push     ds                             
  0x00C2CF56  0c00                    or       al, 0                          
  0x00C2CF58  90                      nop                                     
  0x00C2CF59  1e                      push     ds                             
  0x00C2CF5A  0c00                    or       al, 0                          
  0x00C2CF5C  49                      dec      ecx                            
  0x00C2CF5D  e421                    in       al, 0x21                       
  0x00C2CF5F  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CF62  54                      push     esp                            
  0x00C2CF63  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CF66  0c00                    or       al, 0                          
  0x00C2CF68  4e                      dec      esi                            
  0x00C2CF69  1e                      push     ds                             
  0x00C2CF6A  0c00                    or       al, 0                          
  0x00C2CF6C  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CF72  0000                    add      byte ptr [eax], al             
  0x00C2CF74  00f4                    add      ah, dh                         
                                        ; XREF: 0x00C2CFC8 (cond_jump)
  0x00C2CF76  46                      inc      esi                            
  0x00C2CF77  0010                    add      byte ptr [eax], dl             
  0x00C2CF79  0000                    add      byte ptr [eax], al             
  0x00C2CF7B  0000                    add      byte ptr [eax], al             
  0x00C2CF7D  07                      pop      es                             
  0x00C2CF7E  2300                    and      eax, dword ptr [eax]           
  0x00C2CF80  00d9                    add      cl, bl                         
  0x00C2CF82  56                      push     esi                            
  0x00C2CF83  006e1e                  add      byte ptr [esi + 0x1e], ch      
  0x00C2CF86  0c00                    or       al, 0                          
  0x00C2CF88  7cac                    jl       0xc2cf36                       
  0x00C2CF8A  2000                    and      byte ptr [eax], al             
  0x00C2CF8C  07                      pop      es                             
  0x00C2CF8D  7405                    je       0xc2cf94                       
  0x00C2CF8F  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CF92  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CF8D (cond_jump)
  0x00C2CF94  46                      inc      esi                            
  0x00C2CF95  1e                      push     ds                             
  0x00C2CF96  0c00                    or       al, 0                          
  0x00C2CF98  90                      nop                                     
  0x00C2CF99  1e                      push     ds                             
  0x00C2CF9A  0c00                    or       al, 0                          
  0x00C2CF9C  49                      dec      ecx                            
  0x00C2CF9D  e421                    in       al, 0x21                       
  0x00C2CF9F  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CFA2  54                      push     esp                            
  0x00C2CFA3  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CFA6  0c00                    or       al, 0                          
  0x00C2CFA8  4e                      dec      esi                            
  0x00C2CFA9  1e                      push     ds                             
  0x00C2CFAA  0c00                    or       al, 0                          
  0x00C2CFAC  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CFB2  0000                    add      byte ptr [eax], al             
  0x00C2CFB4  00f4                    add      ah, dh                         
  0x00C2CFB6  46                      inc      esi                            
  0x00C2CFB7  0010                    add      byte ptr [eax], dl             
  0x00C2CFB9  0000                    add      byte ptr [eax], al             
  0x00C2CFBB  0000                    add      byte ptr [eax], al             
  0x00C2CFBD  07                      pop      es                             
  0x00C2CFBE  2300                    and      eax, dword ptr [eax]           
  0x00C2CFC0  00d9                    add      cl, bl                         
  0x00C2CFC2  5e                      pop      esi                            
  0x00C2CFC3  006e1e                  add      byte ptr [esi + 0x1e], ch      
  0x00C2CFC6  0c00                    or       al, 0                          
  0x00C2CFC8  7cac                    jl       0xc2cf76                       
  0x00C2CFCA  2000                    and      byte ptr [eax], al             
  0x00C2CFCC  07                      pop      es                             
  0x00C2CFCD  7405                    je       0xc2cfd4                       
  0x00C2CFCF  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2CFD2  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2CFCD (cond_jump)
  0x00C2CFD4  46                      inc      esi                            
  0x00C2CFD5  1e                      push     ds                             
  0x00C2CFD6  0c00                    or       al, 0                          
  0x00C2CFD8  90                      nop                                     
  0x00C2CFD9  1e                      push     ds                             
  0x00C2CFDA  0c00                    or       al, 0                          
  0x00C2CFDC  49                      dec      ecx                            
  0x00C2CFDD  e421                    in       al, 0x21                       
  0x00C2CFDF  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2CFE2  54                      push     esp                            
  0x00C2CFE3  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2CFE6  0c00                    or       al, 0                          
  0x00C2CFE8  4e                      dec      esi                            
  0x00C2CFE9  1e                      push     ds                             
  0x00C2CFEA  0c00                    or       al, 0                          
  0x00C2CFEC  008521000c00            add      byte ptr [ebp + 0xc0021], al   
  0x00C2CFF2  0000                    add      byte ptr [eax], al             
  0x00C2CFF4  00f4                    add      ah, dh                         
  0x00C2CFF6  61                      popal                                   
  0x00C2CFF7  0012                    add      byte ptr [edx], dl             
  0x00C2CFF9  0d000000f4              or       eax, 0xf4000000                
  0x00C2CFFE  46                      inc      esi                            
  0x00C2CFFF  00ff                    add      bh, bh                         
  0x00C2D001  0000                    add      byte ptr [eax], al             
  0x00C2D003  0010                    add      byte ptr [eax], dl             
  0x00C2D005  d806                    fadd     dword ptr [esi]                
  0x00C2D007  000e                    add      byte ptr [esi], cl             
  0x00C2D009  0000                    add      byte ptr [eax], al             
  0x00C2D00B  00901c0c0056            add      byte ptr [eax + 0x56000c1c], dl 
  0x00C2D011  0020                    add      byte ptr [eax], ah             
  0x00C2D013  0000                    add      byte ptr [eax], al             
  0x00C2D015  d85100                  fcom     dword ptr [ecx]                
  0x00C2D018  00992100911d            add      byte ptr [ecx + 0x1d910021], bl 
  0x00C2D01E  0c00                    or       al, 0                          
  0x00C2D020  00e9                    add      cl, ch                         
  0x00C2D022  4c                      dec      esp                            
  0x00C2D023  004b00                  add      byte ptr [ebx], cl             
  0x00C2D026  2000                    and      byte ptr [eax], al             
  0x00C2D028  90                      nop                                     
  0x00C2D029  1c0c                    sbb      al, 0xc                        
  0x00C2D02B  005600                  add      byte ptr [esi], dl             
  0x00C2D02E  2000                    and      byte ptr [eax], al             
  0x00C2D030  00992100911d            add      byte ptr [ecx + 0x1d910021], bl 
  0x00C2D036  0c00                    or       al, 0                          
  0x00C2D038  00e9                    add      cl, ch                         
  0x00C2D03A  4c                      dec      esp                            
  0x00C2D03B  004b00                  add      byte ptr [ebx], cl             
  0x00C2D03E  2000                    and      byte ptr [eax], al             
  0x00C2D040  91                      xchg     ecx, eax                       
  0x00C2D041  1e                      push     ds                             
  0x00C2D042  0c00                    or       al, 0                          
  0x00C2D044  00ae2100111c            add      byte ptr [esi + 0x1c110021], ch 
  0x00C2D04A  0c00                    or       al, 0                          
  0x00C2D04C  0c00                    or       al, 0                          
  0x00C2D04E  0000                    add      byte ptr [eax], al             
  0x00C2D050  1bf4                    sbb      esi, esp                       
  0x00C2D052  61                      popal                                   
  0x00C2D053  0012                    add      byte ptr [edx], dl             
  0x00C2D055  0e                      push     cs                             
  0x00C2D056  0000                    add      byte ptr [eax], al             
  0x00C2D058  00f4                    add      ah, dh                         
  0x00C2D05A  46                      inc      esi                            
  0x00C2D05B  00ff                    add      bh, bh                         
  0x00C2D05D  0000                    add      byte ptr [eax], al             
  0x00C2D05F  0000                    add      byte ptr [eax], al             
  0x00C2D061  48                      dec      eax                            
  0x00C2D062  2000                    and      byte ptr [eax], al             
  0x00C2D064  10d8                    adc      al, bl                         
  0x00C2D066  06                      push     es                             
  0x00C2D067  000d0000005e            add      byte ptr [0x5e000000], cl      
  0x00C2D06D  ae                      scasb    al, byte ptr es:[edi]          
  0x00C2D06E  2100                    and      dword ptr [eax], eax           
  0x00C2D070  00f8                    add      al, bh                         
  0x00C2D072  44                      inc      esp                            
  0x00C2D073  0000                    add      byte ptr [eax], al             
  0x00C2D075  b92100d01e              mov      ecx, 0x1ed00021                
  0x00C2D07A  0c00                    or       al, 0                          
  0x00C2D07C  42                      inc      edx                            
  0x00C2D07D  0020                    add      byte ptr [eax], ah             
  0x00C2D07F  0000                    add      byte ptr [eax], al             
  0x00C2D081  e94c004300              jmp      0x105d0d2                      
  0x00C2D086  2000                    and      byte ptr [eax], al             
  0x00C2D088  56                      push     esi                            
  0x00C2D08A  2100                    and      dword ptr [eax], eax           
  0x00C2D08C  00992100d11e            add      byte ptr [ecx + 0x1ed10021], bl 
  0x00C2D092  0c00                    or       al, 0                          
  0x00C2D094  00e9                    add      cl, ch                         
  0x00C2D096  4c                      dec      esp                            
  0x00C2D097  004b00                  add      byte ptr [ebx], cl             
  0x00C2D09A  2000                    and      byte ptr [eax], al             
  0x00C2D09C  91                      xchg     ecx, eax                       
  0x00C2D09D  1e                      push     ds                             
  0x00C2D09E  0c00                    or       al, 0                          
  0x00C2D0A0  00ae2100111c            add      byte ptr [esi + 0x1c110021], ch 
  0x00C2D0A6  0c00                    or       al, 0                          
  0x00C2D0A8  0c00                    or       al, 0                          
  0x00C2D0AA  0000                    add      byte ptr [eax], al             
  0x00C2D0AC  7904                    jns      0xc2d0b2                       
  0x00C2D0AE  0000                    add      byte ptr [eax], al             
  0x00C2D0B0  fa                      cli                                     
  0x00C2D0B1  0300                    add      eax, dword ptr [eax]           
  0x00C2D0B3  0017                    add      byte ptr [edi], dl             
  0x00C2D0B5  0400                    add      al, 0                          
  0x00C2D0B7  003404                  add      byte ptr [esp + eax], dh       
  0x00C2D0BA  0000                    add      byte ptr [eax], al             
  0x00C2D0BC  3b0400                  cmp      eax, dword ptr [eax + eax]     
  0x00C2D0BF  00540400                add      byte ptr [esp + eax], dl       
  0x00C2D0C3  005b04                  add      byte ptr [ebx + 4], bl         
  0x00C2D0C6  0000                    add      byte ptr [eax], al             
  0x00C2D0C8  5e                      pop      esi                            
  0x00C2D0C9  0400                    add      al, 0                          
  0x00C2D0CB  006104                  add      byte ptr [ecx + 4], ah         
  0x00C2D0CE  0000                    add      byte ptr [eax], al             
  0x00C2D0D0  640400                  add      al, 0                          
  0x00C2D0D3  006704                  add      byte ptr [edi + 4], ah         
  0x00C2D0D6  0000                    add      byte ptr [eax], al             
  0x00C2D0D8  6a04                    push     4                              
  0x00C2D0DA  0000                    add      byte ptr [eax], al             
  0x00C2D0DC  6d                      insd     dword ptr es:[edi], dx         
  0x00C2D0DD  0400                    add      al, 0                          
  0x00C2D0DF  007004                  add      byte ptr [eax + 4], dh         
  0x00C2D0E2  0000                    add      byte ptr [eax], al             
  0x00C2D0E4  7304                    jae      0xc2d0ea                       
  0x00C2D0E6  0000                    add      byte ptr [eax], al             
  0x00C2D0E8  7604                    jbe      0xc2d0ee                       
                                        ; XREF: 0x00C2D0E4 (cond_jump)
  0x00C2D0EA  0000                    add      byte ptr [eax], al             
  0x00C2D0EC  00f4                    add      ah, dh                         
                                        ; XREF: 0x00C2D0E8 (cond_jump)
  0x00C2D0EE  7400                    je       0xc2d0f0                       
                                        ; XREF: 0x00C2D0EE (cond_jump)
  0x00C2D0F0  e103                    loope    0xc2d0f5                       
  0x00C2D0F2  0000                    add      byte ptr [eax], al             
  0x00C2D0F4  10d8                    adc      al, bl                         
  0x00C2D0F6  06                      push     es                             
  0x00C2D0F7  008600000000            add      byte ptr [esi], al             
  0x00C2D0FD  dd640000                frstor   dword ptr [eax + eax]          
  0x00C2D101  e056                    loopne   0xc2d159                       
  0x00C2D103  0096ec070000            add      byte ptr [esi + 0x7ec], dl     
  0x00C2D109  8521                    test     dword ptr [ecx], esp           
  0x00C2D10B  0080e60a0000            add      byte ptr [eax + 0xae6], al     
  0x00C2D111  f4                      hlt                                     
  0x00C2D112  44                      inc      esp                            
  0x00C2D113  0003                    add      byte ptr [ebx], al             
  0x00C2D115  0000                    add      byte ptr [eax], al             
  0x00C2D117  00a0f4620005            add      byte ptr [eax + 0x50062f4], ah 
  0x00C2D11D  0000                    add      byte ptr [eax], al             
  0x00C2D11F  0040f0                  add      byte ptr [eax - 0x10], al      
  0x00C2D122  7200                    jb       0xc2d124                       
                                        ; XREF: 0x00C2D122 (cond_jump)
  0x00C2D124  0200                    add      al, byte ptr [eax]             
  0x00C2D126  0000                    add      byte ptr [eax], al             
  0x00C2D128  224f23                  and      cl, byte ptr [edi + 0x23]      
  0x00C2D12B  000b                    add      byte ptr [ebx], cl             
  0x00C2D12D  0139                    add      dword ptr [ecx], edi           
  0x00C2D12F  0000                    add      byte ptr [eax], al             
  0x00C2D131  6a54                    push     0x54                           
  0x00C2D133  000424                  add      byte ptr [esp], al             
  0x00C2D136  0500007060              add      eax, 0x60700000                
  0x00C2D13B  000d0000000e            add      byte ptr [0xe000000], cl       
  0x00C2D141  0c05                    or       al, 5                          
  0x00C2D143  0000                    add      byte ptr [eax], al             
  0x00C2D145  f4                      hlt                                     
  0x00C2D146  66000a                  add      byte ptr [edx], cl             
  0x00C2D149  0d00000024              or       eax, 0x24000000                
  0x00C2D14E  2300                    and      eax, dword ptr [eax]           
  0x00C2D150  4d                      dec      ebp                            
  0x00C2D151  0239                    add      bh, byte ptr [ecx]             
  0x00C2D153  0009                    add      byte ptr [ecx], cl             
  0x00C2D155  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D156  050000daf0              add      eax, 0xf0da0000                
  0x00C2D15B  00d0                    add      al, dl                         
  0x00C2D15F  00d2                    add      dl, dl                         
  0x00C2D163  00d2                    add      dl, dl                         
  0x00C2D165  f066000d00000024        lock add byte ptr [0x24000000], cl      
  0x00C2D16D  1d0c000000              sbb      eax, 0xc                       
  0x00C2D172  3900                    cmp      dword ptr [eax], eax           
  0x00C2D174  006650                  add      byte ptr [esi + 0x50], ah      
  0x00C2D177  0013                    add      byte ptr [ebx], dl             
  0x00C2D179  7071                    jo       0xc2d1ec                       
  0x00C2D17B  0002                    add      byte ptr [edx], al             
  0x00C2D17D  0000                    add      byte ptr [eax], al             
  0x00C2D17F  00c3                    add      bl, al                         
  0x00C2D181  0c05                    or       al, 5                          
  0x00C2D183  0000                    add      byte ptr [eax], al             
  0x00C2D185  f4                      hlt                                     
  0x00C2D186  44                      inc      esp                            
  0x00C2D187  0005000000a0            add      byte ptr [0xa0000000], al      
  0x00C2D18D  f4                      hlt                                     
  0x00C2D18E  6200                    bound    eax, qword ptr [eax]           
  0x00C2D190  0800                    or       byte ptr [eax], al             
  0x00C2D192  0000                    add      byte ptr [eax], al             
  0x00C2D194  40                      inc      eax                            
  0x00C2D196  7200                    jb       0xc2d198                       
                                        ; XREF: 0x00C2D196 (cond_jump)
  0x00C2D198  0300                    add      eax, dword ptr [eax]           
  0x00C2D19A  0000                    add      byte ptr [eax], al             
  0x00C2D19C  224f23                  and      cl, byte ptr [edi + 0x23]      
  0x00C2D19F  000b                    add      byte ptr [ebx], cl             
  0x00C2D1A1  0139                    add      dword ptr [ecx], edi           
  0x00C2D1A3  0000                    add      byte ptr [eax], al             
  0x00C2D1A5  6a54                    push     0x54                           
  0x00C2D1A7  000424                  add      byte ptr [esp], al             
  0x00C2D1AA  0500007060              add      eax, 0x60700000                
  0x00C2D1AF  000e                    add      byte ptr [esi], cl             
  0x00C2D1B1  0000                    add      byte ptr [eax], al             
  0x00C2D1B3  000e                    add      byte ptr [esi], cl             
  0x00C2D1B5  0c05                    or       al, 5                          
  0x00C2D1B7  0000                    add      byte ptr [eax], al             
  0x00C2D1B9  f4                      hlt                                     
  0x00C2D1BA  66000d0d000000          add      byte ptr [0xd], cl             
  0x00C2D1C1  2423                    and      al, 0x23                       
  0x00C2D1C3  004d02                  add      byte ptr [ebp + 2], cl         
  0x00C2D1C6  3900                    cmp      dword ptr [eax], eax           
  0x00C2D1C8  09a4050000daf0          or       dword ptr [ebp + eax - 0xf260000], esp 
  0x00C2D1CF  00d0                    add      al, dl                         
  0x00C2D1D3  00d2                    add      dl, dl                         
  0x00C2D1D7  00d2                    add      dl, dl                         
  0x00C2D1D9  f066000e                lock add byte ptr [esi], cl             
  0x00C2D1DD  0000                    add      byte ptr [eax], al             
  0x00C2D1DF  0020                    add      byte ptr [eax], ah             
  0x00C2D1E1  1d0c000000              sbb      eax, 0xc                       
  0x00C2D1E6  3900                    cmp      dword ptr [eax], eax           
  0x00C2D1E8  006650                  add      byte ptr [esi + 0x50], ah      
  0x00C2D1EB  0013                    add      byte ptr [ebx], dl             
  0x00C2D1ED  7071                    jo       0xc2d260                       
  0x00C2D1EF  0003                    add      byte ptr [ebx], al             
  0x00C2D1F1  0000                    add      byte ptr [eax], al             
  0x00C2D1F3  00860c050000            add      byte ptr [esi + 0x50c], al     
  0x00C2D1F9  f4                      hlt                                     
  0x00C2D1FA  44                      inc      esp                            
  0x00C2D1FB  0007                    add      byte ptr [edi], al             
  0x00C2D1FD  0000                    add      byte ptr [eax], al             
  0x00C2D1FF  00a000200040            add      byte ptr [eax + 0x40002000], ah 
  0x00C2D205  0020                    add      byte ptr [eax], ah             
  0x00C2D207  0038                    add      byte ptr [eax], bh             
  0x00C2D209  1d0c00101c              sbb      eax, 0x1c10000c                
  0x00C2D20E  0c00                    or       al, 0                          
  0x00C2D210  5f                      pop      edi                            
  0x00C2D211  0c05                    or       al, 5                          
  0x00C2D213  0000                    add      byte ptr [eax], al             
  0x00C2D215  f4                      hlt                                     
  0x00C2D216  44                      inc      esp                            
  0x00C2D217  000b                    add      byte ptr [ebx], cl             
  0x00C2D219  0000                    add      byte ptr [eax], al             
  0x00C2D21B  00a0f462000b            add      byte ptr [eax + 0xb0062f4], ah 
  0x00C2D221  0000                    add      byte ptr [eax], al             
  0x00C2D223  0040f0                  add      byte ptr [eax - 0x10], al      
  0x00C2D226  7200                    jb       0xc2d228                       
                                        ; XREF: 0x00C2D226 (cond_jump)
  0x00C2D228  0400                    add      al, 0                          
  0x00C2D22A  0000                    add      byte ptr [eax], al             
  0x00C2D22C  224f23                  and      cl, byte ptr [edi + 0x23]      
  0x00C2D22F  000b                    add      byte ptr [ebx], cl             
  0x00C2D231  0139                    add      dword ptr [ecx], edi           
  0x00C2D233  0000                    add      byte ptr [eax], al             
  0x00C2D235  f4                      hlt                                     
  0x00C2D236  660010                  add      byte ptr [eax], dl             
  0x00C2D239  0d0000006a              or       eax, 0x6a000000                
  0x00C2D23E  54                      push     esp                            
  0x00C2D23F  000424                  add      byte ptr [esp], al             
  0x00C2D242  0500007060              add      eax, 0x60700000                
  0x00C2D247  000f                    add      byte ptr [edi], cl             
  0x00C2D249  0000                    add      byte ptr [eax], al             
  0x00C2D24B  0008                    add      byte ptr [eax], cl             
  0x00C2D24D  0c05                    or       al, 5                          
  0x00C2D24F  0000                    add      byte ptr [eax], al             
  0x00C2D253  00d0                    add      al, dl                         
  0x00C2D257  00d2                    add      dl, dl                         
  0x00C2D259  f066000f                lock add byte ptr [edi], cl             
  0x00C2D25D  0000                    add      byte ptr [eax], al             
  0x00C2D25F  0020                    add      byte ptr [eax], ah             
  0x00C2D261  1d0c000000              sbb      eax, 0xc                       
  0x00C2D266  3900                    cmp      dword ptr [eax], eax           
  0x00C2D268  006650                  add      byte ptr [esi + 0x50], ah      
  0x00C2D26B  0013                    add      byte ptr [ebx], dl             
  0x00C2D26D  7071                    jo       0xc2d2e0                       
  0x00C2D26F  000400                  add      byte ptr [eax + eax], al       
  0x00C2D272  0000                    add      byte ptr [eax], al             
  0x00C2D274  46                      inc      esi                            
  0x00C2D275  0c05                    or       al, 5                          
  0x00C2D277  0000                    add      byte ptr [eax], al             
  0x00C2D279  f4                      hlt                                     
  0x00C2D27A  44                      inc      esp                            
  0x00C2D27B  000f                    add      byte ptr [edi], cl             
  0x00C2D27D  0000                    add      byte ptr [eax], al             
  0x00C2D27F  00a000200040            add      byte ptr [eax + 0x40002000], ah 
  0x00C2D285  0020                    add      byte ptr [eax], ah             
  0x00C2D287  0036                    add      byte ptr [esi], dh             
  0x00C2D289  1d0c00101c              sbb      eax, 0x1c10000c                
  0x00C2D28E  0c00                    or       al, 0                          
  0x00C2D290  1f                      pop      ds                             
  0x00C2D291  0c05                    or       al, 5                          
  0x00C2D293  0000                    add      byte ptr [eax], al             
  0x00C2D295  f4                      hlt                                     
  0x00C2D296  56                      push     esi                            
  0x00C2D297  0000                    add      byte ptr [eax], al             
  0x00C2D299  000400                  add      byte ptr [eax + eax], al       
  0x00C2D29C  1b0c050000f456          sbb      ecx, dword ptr [eax + 0x56f40000] 
  0x00C2D2A3  0000                    add      byte ptr [eax], al             
  0x00C2D2A5  0002                    add      byte ptr [edx], al             
  0x00C2D2A7  0018                    add      byte ptr [eax], bl             
  0x00C2D2A9  0c05                    or       al, 5                          
  0x00C2D2AB  0000                    add      byte ptr [eax], al             
  0x00C2D2AD  f4                      hlt                                     
  0x00C2D2AE  56                      push     esi                            
  0x00C2D2AF  0000                    add      byte ptr [eax], al             
  0x00C2D2B1  0001                    add      byte ptr [ecx], al             
  0x00C2D2B3  00150c050000            add      byte ptr [0x50c], dl           
  0x00C2D2B9  f4                      hlt                                     
  0x00C2D2BA  56                      push     esi                            
  0x00C2D2BB  0000                    add      byte ptr [eax], al             
  0x00C2D2BD  800000                  add      byte ptr [eax], 0              
  0x00C2D2C0  120c050000f456          adc      cl, byte ptr [eax + 0x56f40000] 
  0x00C2D2C7  0000                    add      byte ptr [eax], al             
  0x00C2D2C9  40                      inc      eax                            
  0x00C2D2CA  0000                    add      byte ptr [eax], al             
  0x00C2D2CD  0c05                    or       al, 5                          
  0x00C2D2CF  0000                    add      byte ptr [eax], al             
  0x00C2D2D1  f4                      hlt                                     
  0x00C2D2D2  56                      push     esi                            
  0x00C2D2D3  0000                    add      byte ptr [eax], al             
  0x00C2D2D5  2000                    and      byte ptr [eax], al             
  0x00C2D2D7  000c0c                  add      byte ptr [esp + ecx], cl       
  0x00C2D2DA  050000f456              add      eax, 0x56f40000                
  0x00C2D2DF  0000                    add      byte ptr [eax], al             
  0x00C2D2E1  1000                    adc      byte ptr [eax], al             
  0x00C2D2E3  0009                    add      byte ptr [ecx], cl             
  0x00C2D2E5  0c05                    or       al, 5                          
  0x00C2D2E7  0000                    add      byte ptr [eax], al             
  0x00C2D2E9  f4                      hlt                                     
  0x00C2D2EA  56                      push     esi                            
  0x00C2D2EB  0000                    add      byte ptr [eax], al             
  0x00C2D2ED  0800                    or       byte ptr [eax], al             
  0x00C2D2EF  0006                    add      byte ptr [esi], al             
  0x00C2D2F1  0c05                    or       al, 5                          
  0x00C2D2F3  0000                    add      byte ptr [eax], al             
  0x00C2D2F5  f4                      hlt                                     
  0x00C2D2F6  56                      push     esi                            
  0x00C2D2F7  0000                    add      byte ptr [eax], al             
  0x00C2D2F9  0400                    add      al, 0                          
  0x00C2D2FB  0003                    add      byte ptr [ebx], al             
  0x00C2D2FD  0c05                    or       al, 5                          
  0x00C2D2FF  0000                    add      byte ptr [eax], al             
  0x00C2D301  f4                      hlt                                     
  0x00C2D302  56                      push     esi                            
  0x00C2D303  0000                    add      byte ptr [eax], al             
  0x00C2D305  0100                    add      dword ptr [eax], eax           
  0x00C2D307  006000                  add      byte ptr [eax], ah             
  0x00C2D30A  2000                    and      byte ptr [eax], al             
  0x00C2D30C  005856                  add      byte ptr [eax + 0x56], bl      
  0x00C2D30F  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2D312  0000                    add      byte ptr [eax], al             
  0x00C2D314  c6040000                mov      byte ptr [eax + eax], 0        
  0x00C2D318  b204                    mov      dl, 4                          
  0x00C2D31A  0000                    add      byte ptr [eax], al             
  0x00C2D31C  a804                    test     al, 4                          
  0x00C2D31E  0000                    add      byte ptr [eax], al             
  0x00C2D320  bb0400009e              mov      ebx, 0x9e000004                
  0x00C2D325  0400                    add      al, 0                          
  0x00C2D327  00bb040000bb            add      byte ptr [ebx - 0x44fffffc], bh 
  0x00C2D32D  0400                    add      al, 0                          
  0x00C2D32F  00bb040000bb            add      byte ptr [ebx - 0x44fffffc], bh 
  0x00C2D335  0400                    add      al, 0                          
  0x00C2D337  00bb040000bb            add      byte ptr [ebx - 0x44fffffc], bh 
  0x00C2D33D  0400                    add      al, 0                          
  0x00C2D33F  00bb040000bb            add      byte ptr [ebx - 0x44fffffc], bh 
  0x00C2D345  0400                    add      al, 0                          
  0x00C2D347  00bb040000bb            add      byte ptr [ebx - 0x44fffffc], bh 
  0x00C2D34D  0400                    add      al, 0                          
  0x00C2D34F  00bb04000000            add      byte ptr [ebx + 4], bh         
  0x00C2D356  6200                    bound    eax, qword ptr [eax]           
  0x00C2D358  55                      push     ebp                            
  0x00C2D359  0b00                    or       eax, dword ptr [eax]           
  0x00C2D35B  0022                    add      byte ptr [edx], ah             
  0x00C2D35E  0500470b00              add      eax, 0xb4700                   
  0x00C2D363  0000                    add      byte ptr [eax], al             
  0x00C2D366  56                      push     esi                            
  0x00C2D367  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2D36A  0000                    add      byte ptr [eax], al             
  0x00C2D36C  00f0                    add      al, dh                         
  0x00C2D36E  45                      inc      ebp                            
  0x00C2D36F  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2D372  0000                    add      byte ptr [eax], al             
  0x00C2D374  00f4                    add      ah, dh                         
  0x00C2D376  46                      inc      esi                            
  0x00C2D377  0010                    add      byte ptr [eax], dl             
  0x00C2D379  0000                    add      byte ptr [eax], al             
  0x00C2D37B  0000                    add      byte ptr [eax], al             
  0x00C2D37D  f4                      hlt                                     
  0x00C2D37E  7400                    je       0xc2d380                       
                                        ; XREF: 0x00C2D37E (cond_jump)
  0x00C2D380  7b04                    jnp      0xc2d386                       
  0x00C2D382  0000                    add      byte ptr [eax], al             
  0x00C2D384  10d8                    adc      al, bl                         
                                        ; XREF: 0x00C2D380 (cond_jump)
  0x00C2D386  06                      push     es                             
  0x00C2D387  002f                    add      byte ptr [edi], ch             
  0x00C2D389  0000                    add      byte ptr [eax], al             
  0x00C2D38B  0000                    add      byte ptr [eax], al             
  0x00C2D38D  dd640096                frstor   dword ptr [eax + eax - 0x6a]   
  0x00C2D391  ec                      in       al, dx                         
  0x00C2D392  07                      pop      es                             
  0x00C2D393  00c7                    add      bh, al                         
  0x00C2D395  740b                    je       0xc2d3a2                       
  0x00C2D397  00fa                    add      dl, bh                         
  0x00C2D399  0c00                    or       al, 0                          
  0x00C2D39B  0080e60a0000            add      byte ptr [eax + 0xae6], al     
                                        ; XREF: 0x00C2D395 (cond_jump)
  0x00C2D3A2  57                      push     edi                            
  0x00C2D3A3  000400                  add      byte ptr [eax + eax], al       
  0x00C2D3A6  0000                    add      byte ptr [eax], al             
  0x00C2D3A8  8c4101                  mov      word ptr [ecx + 1], es         
  0x00C2D3AB  0000                    add      byte ptr [eax], al             
  0x00C2D3AD  7055                    jo       0xc2d404                       
  0x00C2D3AF  000400                  add      byte ptr [eax + eax], al       
  0x00C2D3B2  0000                    add      byte ptr [eax], al             
  0x00C2D3B4  43                      inc      ebx                            
  0x00C2D3B5  2405                    and      al, 5                          
  0x00C2D3B7  0000                    add      byte ptr [eax], al             
  0x00C2D3B9  0239                    add      bh, byte ptr [ecx]             
  0x00C2D3BB  0000                    add      byte ptr [eax], al             
  0x00C2D3BD  7071                    jo       0xc2d430                       
  0x00C2D3BF  000400                  add      byte ptr [eax + eax], al       
  0x00C2D3C2  0000                    add      byte ptr [eax], al             
  0x00C2D3C4  140c                    adc      al, 0xc                        
  0x00C2D3C6  050000f057              add      eax, 0x57f00000                
  0x00C2D3CB  0003                    add      byte ptr [ebx], al             
  0x00C2D3CD  0000                    add      byte ptr [eax], al             
  0x00C2D3CF  008c4101000070          add      byte ptr [ecx + eax*2 + 0x70000001], cl 
  0x00C2D3D6  55                      push     ebp                            
  0x00C2D3D7  0003                    add      byte ptr [ebx], al             
  0x00C2D3D9  0000                    add      byte ptr [eax], al             
  0x00C2D3DB  0019                    add      byte ptr [ecx], bl             
  0x00C2D3DD  2405                    and      al, 5                          
  0x00C2D3DF  0000                    add      byte ptr [eax], al             
  0x00C2D3E1  0339                    add      edi, dword ptr [ecx]           
  0x00C2D3E3  0000                    add      byte ptr [eax], al             
  0x00C2D3E5  7071                    jo       0xc2d458                       
  0x00C2D3E7  0003                    add      byte ptr [ebx], al             
  0x00C2D3E9  0000                    add      byte ptr [eax], al             
  0x00C2D3EB  000a                    add      byte ptr [edx], cl             
  0x00C2D3ED  0c05                    or       al, 5                          
  0x00C2D3EF  0000                    add      byte ptr [eax], al             
  0x00C2D3F2  57                      push     edi                            
  0x00C2D3F3  0002                    add      byte ptr [edx], al             
  0x00C2D3F5  0000                    add      byte ptr [eax], al             
  0x00C2D3F7  008c4101000070          add      byte ptr [ecx + eax*2 + 0x70000001], cl 
  0x00C2D3FE  55                      push     ebp                            
  0x00C2D3FF  0002                    add      byte ptr [edx], al             
  0x00C2D401  0000                    add      byte ptr [eax], al             
  0x00C2D403  000f                    add      byte ptr [edi], cl             
  0x00C2D405  2405                    and      al, 5                          
  0x00C2D407  0000                    add      byte ptr [eax], al             
  0x00C2D409  0339                    add      edi, dword ptr [ecx]           
  0x00C2D40B  0000                    add      byte ptr [eax], al             
  0x00C2D40D  7071                    jo       0xc2d480                       
  0x00C2D40F  0002                    add      byte ptr [edx], al             
  0x00C2D411  0000                    add      byte ptr [eax], al             
  0x00C2D413  006900                  add      byte ptr [ecx], ch             
  0x00C2D416  2000                    and      byte ptr [eax], al             
  0x00C2D418  7ce0                    jl       0xc2d3fa                       
  0x00C2D41A  50                      push     eax                            
  0x00C2D41B  0007                    add      byte ptr [edi], al             
  0x00C2D41D  7405                    je       0xc2d424                       
  0x00C2D41F  0078e4                  add      byte ptr [eax - 0x1c], bh      
  0x00C2D422  2100                    and      dword ptr [eax], eax           
                                        ; XREF: 0x00C2D41D (cond_jump)
  0x00C2D424  46                      inc      esi                            
  0x00C2D425  1e                      push     ds                             
  0x00C2D426  0c00                    or       al, 0                          
  0x00C2D428  90                      nop                                     
  0x00C2D429  1e                      push     ds                             
  0x00C2D42A  0c00                    or       al, 0                          
  0x00C2D42C  49                      dec      ecx                            
  0x00C2D42D  e421                    in       al, 0x21                       
  0x00C2D42F  00585a                  add      byte ptr [eax + 0x5a], bl      
  0x00C2D432  54                      push     esp                            
  0x00C2D433  00681e                  add      byte ptr [eax + 0x1e], ch      
  0x00C2D436  0c00                    or       al, 0                          
  0x00C2D438  4e                      dec      esi                            
  0x00C2D439  1e                      push     ds                             
  0x00C2D43A  0c00                    or       al, 0                          
  0x00C2D43C  00a521000058            add      byte ptr [ebp + 0x58000021], ah 
  0x00C2D442  2000                    and      byte ptr [eax], al             
  0x00C2D444  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2D447  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2D44A  0000                    add      byte ptr [eax], al             
  0x00C2D44C  007045                  add      byte ptr [eax + 0x45], dh      
  0x00C2D44F  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2D452  0000                    add      byte ptr [eax], al             
  0x00C2D454  007062                  add      byte ptr [eax + 0x62], dh      
  0x00C2D457  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D45A  0000                    add      byte ptr [eax], al             
  0x00C2D45C  22f4                    and      dh, ah                         
  0x00C2D45E  0500ffff00              add      eax, 0xffff00                  
  0x00C2D463  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2D466  0000                    add      byte ptr [eax], al             
  0x00C2D468  20f4                    and      ah, dh                         
  0x00C2D46A  0500ffffff              add      eax, 0xffffff00                
  0x00C2D46F  00a0610400a0            add      byte ptr [eax - 0x5ffffb9f], ah 
  0x00C2D475  620400                  bound    eax, qword ptr [eax + eax]     
  0x00C2D478  a0640400a0              mov      al, byte ptr [0xa0000464]      
  0x00C2D47D  650400                  add      al, 0                          
                                        ; XREF: 0x00C2D40D (cond_jump)
  0x00C2D480  a0660400b8              mov      al, byte ptr [0xb8000466]      
  0x00C2D485  f30000                  add      byte ptr [eax], al             
  0x00C2D488  00f4                    add      ah, dh                         
  0x00C2D48A  44                      inc      esp                            
  0x00C2D48B  0000                    add      byte ptr [eax], al             
  0x00C2D48D  0000                    add      byte ptr [eax], al             
  0x00C2D48F  004d00                  add      byte ptr [ebp], cl             
  0x00C2D492  2000                    and      byte ptr [eax], al             
  0x00C2D494  0ca4                    or       al, 0xa4                       
  0x00C2D496  050000f444              add      eax, 0x44f40000                
  0x00C2D49B  0010                    add      byte ptr [eax], dl             
  0x00C2D49D  0000                    add      byte ptr [eax], al             
  0x00C2D49F  004d00                  add      byte ptr [ebp], cl             
  0x00C2D4A2  2000                    and      byte ptr [eax], al             
  0x00C2D4A4  4a                      dec      edx                            
  0x00C2D4A5  100d000f0000            adc      byte ptr [0xf00], cl           
  0x00C2D4AB  0000                    add      byte ptr [eax], al             
  0x00C2D4AD  0030                    add      byte ptr [eax], dh             
  0x00C2D4AF  0000                    add      byte ptr [eax], al             
  0x00C2D4B1  f4                      hlt                                     
  0x00C2D4B2  56                      push     esi                            
  0x00C2D4B3  0000                    add      byte ptr [eax], al             
  0x00C2D4B5  0000                    add      byte ptr [eax], al             
  0x00C2D4B7  0000                    add      byte ptr [eax], al             
  0x00C2D4B9  f4                      hlt                                     
  0x00C2D4BA  57                      push     edi                            
  0x00C2D4BB  00ff                    add      bh, bh                         
  0x00C2D4BE  ff00                    inc      dword ptr [eax]                
  0x00C2D4C0  0c00                    or       al, 0                          
  0x00C2D4C2  0000                    add      byte ptr [eax], al             
  0x00C2D4C4  1300                    adc      eax, dword ptr [eax]           
  0x00C2D4C6  2000                    and      byte ptr [eax], al             
  0x00C2D4C8  0000                    add      byte ptr [eax], al             
  0x00C2D4CA  3000                    xor      byte ptr [eax], al             
  0x00C2D4CC  00f4                    add      ah, dh                         
  0x00C2D4CE  56                      push     esi                            
  0x00C2D4CF  0000                    add      byte ptr [eax], al             
  0x00C2D4D1  0000                    add      byte ptr [eax], al             
  0x00C2D4D3  0000                    add      byte ptr [eax], al             
  0x00C2D4D5  f4                      hlt                                     
  0x00C2D4D6  57                      push     edi                            
  0x00C2D4D7  0008                    add      byte ptr [eax], cl             
  0x00C2D4D9  06                      push     es                             
  0x00C2D4DA  0000                    add      byte ptr [eax], al             
  0x00C2D4DC  0c00                    or       al, 0                          
  0x00C2D4DE  0000                    add      byte ptr [eax], al             
  0x00C2D4E0  00f0                    add      al, dh                         
  0x00C2D4E2  56                      push     esi                            
  0x00C2D4E3  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2D4E9  0020                    add      byte ptr [eax], ah             
  0x00C2D4EB  005874                  add      byte ptr [eax + 0x74], bl      
  0x00C2D4EE  0500007060              add      eax, 0x60700000                
  0x00C2D4F3  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2D4F6  0000                    add      byte ptr [eax], al             
  0x00C2D4F8  007060                  add      byte ptr [eax + 0x60], dh      
  0x00C2D4FB  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D4FE  0000                    add      byte ptr [eax], al             
  0x00C2D500  00f4                    add      ah, dh                         
  0x00C2D502  45                      inc      ebp                            
  0x00C2D503  00b007000000            add      byte ptr [eax + 7], dh         
  0x00C2D509  7045                    jo       0xc2d550                       
  0x00C2D50B  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2D50E  0000                    add      byte ptr [eax], al             
  0x00C2D510  00f0                    add      al, dh                         
  0x00C2D512  56                      push     esi                            
  0x00C2D513  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2D516  0000                    add      byte ptr [eax], al             
  0x00C2D518  0300                    add      eax, dword ptr [eax]           
  0x00C2D51A  2400                    and      al, 0                          
  0x00C2D51C  09240500007044          or       dword ptr [eax + 0x44700000], esp 
  0x00C2D523  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2D526  0000                    add      byte ptr [eax], al             
  0x00C2D528  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2D52B  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2D52E  0000                    add      byte ptr [eax], al             
  0x00C2D530  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2D533  009d0b000080            add      byte ptr [ebp - 0x7ffffff5], bl 
  0x00C2D539  100d008c0000            adc      byte ptr [0x8c00], cl          
  0x00C2D53F  0080100d0029            add      byte ptr [eax + 0x29000d10], al 
  0x00C2D545  0100                    add      dword ptr [eax], eax           
  0x00C2D547  0080100d009e            add      byte ptr [eax - 0x61fff2f0], al 
  0x00C2D54D  0100                    add      dword ptr [eax], eax           
  0x00C2D54F  0080100d0066            add      byte ptr [eax + 0x66000d10], al 
  0x00C2D555  0300                    add      eax, dword ptr [eax]           
  0x00C2D557  0000                    add      byte ptr [eax], al             
  0x00C2D55A  56                      push     esi                            
  0x00C2D55B  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2D55E  0000                    add      byte ptr [eax], al             
  0x00C2D560  854501                  test     dword ptr [ebp + 1], eax       
  0x00C2D563  0003                    add      byte ptr [ebx], al             
  0x00C2D565  2405                    and      al, 5                          
  0x00C2D567  0080100d0093            add      byte ptr [eax - 0x6cfff2f0], al 
  0x00C2D56D  0300                    add      eax, dword ptr [eax]           
  0x00C2D56F  0000                    add      byte ptr [eax], al             
  0x00C2D572  56                      push     esi                            
  0x00C2D573  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D576  0000                    add      byte ptr [eax], al             
  0x00C2D578  00f0                    add      al, dh                         
  0x00C2D57A  44                      inc      esp                            
  0x00C2D57B  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2D57E  0000                    add      byte ptr [eax], al             
  0x00C2D580  44                      inc      esp                            
  0x00C2D581  0020                    add      byte ptr [eax], ah             
  0x00C2D583  0000                    add      byte ptr [eax], al             
  0x00C2D585  7054                    jo       0xc2d5db                       
  0x00C2D587  00580b                  add      byte ptr [eax + 0xb], bl       
  0x00C2D58A  0000                    add      byte ptr [eax], al             
  0x00C2D58C  80100d                  adc      byte ptr [eax], 0xd            
  0x00C2D58F  00d0                    add      al, dl                         
  0x00C2D591  0300                    add      eax, dword ptr [eax]           
  0x00C2D593  0000                    add      byte ptr [eax], al             
  0x00C2D596  56                      push     esi                            
  0x00C2D597  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2D59A  0000                    add      byte ptr [eax], al             
  0x00C2D59C  854501                  test     dword ptr [ebp + 1], eax       
  0x00C2D59F  000b                    add      byte ptr [ebx], cl             
  0x00C2D5A1  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D5A2  050000f044              add      eax, 0x44f00000                
  0x00C2D5A7  00580b                  add      byte ptr [eax + 0xb], bl       
  0x00C2D5AA  0000                    add      byte ptr [eax], al             
  0x00C2D5AC  00f4                    add      ah, dh                         
  0x00C2D5AE  45                      inc      ebp                            
  0x00C2D5AF  0010                    add      byte ptr [eax], dl             
  0x00C2D5B1  0000                    add      byte ptr [eax], al             
  0x00C2D5B3  00a0f044009d            add      byte ptr [eax - 0x62ffbb10], ah 
  0x00C2D5B9  0b00                    or       eax, dword ptr [eax]           
  0x00C2D5BB  002e                    add      byte ptr [esi], ch             
  0x00C2D5BD  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2D5C2  2000                    and      byte ptr [eax], al             
  0x00C2D5C4  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2D5C7  009d0b000080            add      byte ptr [ebp - 0x7ffffff5], bl 
  0x00C2D5CD  100d00080000            adc      byte ptr [0x800], cl           
  0x00C2D5D3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2D5D6  0000                    add      byte ptr [eax], al             
  0x00C2D5D8  00f4                    add      ah, dh                         
  0x00C2D5DA  44                      inc      esp                            
                                        ; XREF: 0x00C2D585 (cond_jump)
  0x00C2D5DB  0000                    add      byte ptr [eax], al             
  0x00C2D5DD  0100                    add      dword ptr [eax], eax           
  0x00C2D5DF  0000                    add      byte ptr [eax], al             
  0x00C2D5E1  7044                    jo       0xc2d627                       
  0x00C2D5E3  0010                    add      byte ptr [eax], dl             
  0x00C2D5E5  0000                    add      byte ptr [eax], al             
  0x00C2D5E7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2D5EA  0000                    add      byte ptr [eax], al             
  0x00C2D5EC  00f0                    add      al, dh                         
  0x00C2D5EE  56                      push     esi                            
  0x00C2D5EF  00960b000003            add      byte ptr [esi + 0x300000b], dl 
  0x00C2D5F5  0020                    add      byte ptr [eax], ah             
  0x00C2D5F7  0007                    add      byte ptr [edi], al             
  0x00C2D5F9  f4                      hlt                                     
  0x00C2D5FA  050013f044              add      eax, 0x44f01300                
  0x00C2D5FF  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2D602  0000                    add      byte ptr [eax], al             
  0x00C2D604  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2D607  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D60A  0000                    add      byte ptr [eax], al             
  0x00C2D60C  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2D60F  009a0b000000            add      byte ptr [edx + 0xb], bl       
  0x00C2D615  f4                      hlt                                     
  0x00C2D616  60                      pushal                                  
  0x00C2D617  0011                    add      byte ptr [ecx], dl             
  0x00C2D619  0000                    add      byte ptr [eax], al             
  0x00C2D61B  0000                    add      byte ptr [eax], al             
  0x00C2D61D  f4                      hlt                                     
  0x00C2D61E  44                      inc      esp                            
  0x00C2D61F  000d00000000            add      byte ptr [0], cl               
  0x00C2D625  58                      pop      eax                            
  0x00C2D626  44                      inc      esp                            
                                        ; XREF: 0x00C2D5E1 (cond_jump)
  0x00C2D627  0000                    add      byte ptr [eax], al             
  0x00C2D62A  56                      push     esi                            
  0x00C2D62B  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D62E  0000                    add      byte ptr [eax], al             
  0x00C2D630  00f0                    add      al, dh                         
  0x00C2D632  44                      inc      esp                            
  0x00C2D633  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2D636  0000                    add      byte ptr [eax], al             
  0x00C2D638  44                      inc      esp                            
  0x00C2D639  0020                    add      byte ptr [eax], ah             
  0x00C2D63B  0000                    add      byte ptr [eax], al             
  0x00C2D63D  58                      pop      eax                            
  0x00C2D63E  54                      push     esp                            
  0x00C2D63F  0000                    add      byte ptr [eax], al             
  0x00C2D642  44                      inc      esp                            
  0x00C2D643  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D646  0000                    add      byte ptr [eax], al             
  0x00C2D648  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C2D64B  0000                    add      byte ptr [eax], al             
  0x00C2D64D  002400                  add      byte ptr [eax + eax], ah       
  0x00C2D650  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C2D653  0000                    add      byte ptr [eax], al             
  0x00C2D655  58                      pop      eax                            
  0x00C2D656  44                      inc      esp                            
  0x00C2D657  0000                    add      byte ptr [eax], al             
  0x00C2D659  58                      pop      eax                            
  0x00C2D65A  44                      inc      esp                            
  0x00C2D65B  0000                    add      byte ptr [eax], al             
  0x00C2D65D  58                      pop      eax                            
  0x00C2D65E  44                      inc      esp                            
  0x00C2D65F  0013                    add      byte ptr [ebx], dl             
  0x00C2D661  f4                      hlt                                     
  0x00C2D662  44                      inc      esp                            
  0x00C2D663  0009                    add      byte ptr [ecx], cl             
  0x00C2D665  0000                    add      byte ptr [eax], al             
  0x00C2D667  0000                    add      byte ptr [eax], al             
  0x00C2D669  7044                    jo       0xc2d6af                       
  0x00C2D66B  001e                    add      byte ptr [esi], bl             
  0x00C2D66D  0000                    add      byte ptr [eax], al             
  0x00C2D66F  0000                    add      byte ptr [eax], al             
  0x00C2D672  44                      inc      esp                            
  0x00C2D673  001e                    add      byte ptr [esi], bl             
  0x00C2D675  0000                    add      byte ptr [eax], al             
  0x00C2D677  004019                  add      byte ptr [eax + 0x19], al      
  0x00C2D67A  0c00                    or       al, 0                          
  0x00C2D67C  184000                  sbb      byte ptr [eax], al             
  0x00C2D67F  0000                    add      byte ptr [eax], al             
  0x00C2D681  58                      pop      eax                            
  0x00C2D682  54                      push     esp                            
  0x00C2D683  0000                    add      byte ptr [eax], al             
  0x00C2D685  002400                  add      byte ptr [eax + eax], ah       
  0x00C2D688  005844                  add      byte ptr [eax + 0x44], bl      
  0x00C2D68B  001b                    add      byte ptr [ebx], bl             
  0x00C2D68D  0020                    add      byte ptr [eax], ah             
  0x00C2D68F  0013                    add      byte ptr [ebx], dl             
  0x00C2D691  0020                    add      byte ptr [eax], ah             
  0x00C2D693  00df                    add      bh, bl                         
  0x00C2D695  1e                      push     ds                             
  0x00C2D696  0c00                    or       al, 0                          
  0x00C2D698  00a4210040190c          add      byte ptr [ecx + 0xc194000], ah 
  0x00C2D69F  0020                    add      byte ptr [eax], ah             
  0x00C2D6A1  800000                  add      byte ptr [eax], 0              
  0x00C2D6A4  1b00                    sbb      eax, dword ptr [eax]           
  0x00C2D6A6  2000                    and      byte ptr [eax], al             
  0x00C2D6A8  df1e                    fistp    word ptr [esi]                 
  0x00C2D6AA  0c00                    or       al, 0                          
  0x00C2D6AC  00a4210040190c          add      byte ptr [ecx + 0xc194000], ah 
  0x00C2D6B3  0018                    add      byte ptr [eax], bl             
  0x00C2D6B5  800000                  add      byte ptr [eax], 0              
  0x00C2D6B8  005854                  add      byte ptr [eax + 0x54], bl      
  0x00C2D6BB  0013                    add      byte ptr [ebx], dl             
  0x00C2D6BE  57                      push     edi                            
  0x00C2D6BF  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D6C2  0000                    add      byte ptr [eax], al             
  0x00C2D6C4  0bf4                    or       esi, esp                       
  0x00C2D6C6  45                      inc      ebp                            
  0x00C2D6C7  008000000007            add      byte ptr [eax + 0x7000000], al 
  0x00C2D6CD  2405                    and      al, 5                          
  0x00C2D6CF  001b                    add      byte ptr [ebx], bl             
  0x00C2D6D1  0020                    add      byte ptr [eax], ah             
  0x00C2D6D3  00a11c0c0068            add      byte ptr [ecx + 0x68000c1c], ah 
  0x00C2D6D9  0020                    add      byte ptr [eax], ah             
  0x00C2D6DB  0000                    add      byte ptr [eax], al             
  0x00C2D6DD  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D6DE  2100                    and      dword ptr [eax], eax           
  0x00C2D6E0  40                      inc      eax                            
  0x00C2D6E1  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C2D6E4  208000001b00            and      byte ptr [eax + 0x1b0000], al  
  0x00C2D6EA  2000                    and      byte ptr [eax], al             
  0x00C2D6EC  a11c0c0068              mov      eax, dword ptr [0x68000c1c]    
  0x00C2D6F1  0020                    add      byte ptr [eax], ah             
  0x00C2D6F3  0000                    add      byte ptr [eax], al             
  0x00C2D6F5  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D6F6  2100                    and      dword ptr [eax], eax           
  0x00C2D6F8  40                      inc      eax                            
  0x00C2D6F9  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C2D6FC  188000000058            sbb      byte ptr [eax + 0x58000000], al 
  0x00C2D702  54                      push     esp                            
  0x00C2D703  0013                    add      byte ptr [ebx], dl             
  0x00C2D706  57                      push     edi                            
  0x00C2D707  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D70A  0000                    add      byte ptr [eax], al             
  0x00C2D70C  0b00                    or       eax, dword ptr [eax]           
  0x00C2D70E  2000                    and      byte ptr [eax], al             
  0x00C2D710  07                      pop      es                             
  0x00C2D711  2405                    and      al, 5                          
  0x00C2D713  001b                    add      byte ptr [ebx], bl             
  0x00C2D715  0020                    add      byte ptr [eax], ah             
  0x00C2D717  00a11c0c0068            add      byte ptr [ecx + 0x68000c1c], ah 
  0x00C2D71D  0020                    add      byte ptr [eax], ah             
  0x00C2D71F  0000                    add      byte ptr [eax], al             
  0x00C2D721  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D722  2100                    and      dword ptr [eax], eax           
  0x00C2D724  40                      inc      eax                            
  0x00C2D725  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C2D728  20800000a11c            and      byte ptr [eax + 0x1ca10000], al 
  0x00C2D72E  0c00                    or       al, 0                          
  0x00C2D730  6800200000              push     0x2000                         
  0x00C2D735  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D736  2100                    and      dword ptr [eax], eax           
  0x00C2D738  40                      inc      eax                            
  0x00C2D739  190c00                  sbb      dword ptr [eax + eax], ecx     
  0x00C2D73C  188000000058            sbb      byte ptr [eax + 0x58000000], al 
  0x00C2D742  54                      push     esp                            
  0x00C2D743  0013                    add      byte ptr [ebx], dl             
  0x00C2D745  0020                    add      byte ptr [eax], ah             
  0x00C2D747  0000                    add      byte ptr [eax], al             
  0x00C2D749  58                      pop      eax                            
  0x00C2D74A  54                      push     esp                            
  0x00C2D74B  0000                    add      byte ptr [eax], al             
  0x00C2D74D  f4                      hlt                                     
  0x00C2D74E  60                      pushal                                  
  0x00C2D74F  0011                    add      byte ptr [ecx], dl             
  0x00C2D751  0000                    add      byte ptr [eax], al             
  0x00C2D753  0000                    add      byte ptr [eax], al             
  0x00C2D756  56                      push     esi                            
  0x00C2D757  00960b000000            add      byte ptr [esi + 0xb], dl       
  0x00C2D75D  f4                      hlt                                     
  0x00C2D75E  57                      push     edi                            
  0x00C2D75F  0008                    add      byte ptr [eax], cl             
  0x00C2D761  06                      push     es                             
  0x00C2D762  0000                    add      byte ptr [eax], al             
  0x00C2D764  0c00                    or       al, 0                          
  0x00C2D766  0000                    add      byte ptr [eax], al             
  0x00C2D768  00f0                    add      al, dh                         
  0x00C2D76A  6200                    bound    eax, qword ptr [eax]           
  0x00C2D76C  45                      inc      ebp                            
  0x00C2D76D  0b00                    or       eax, dword ptr [eax]           
  0x00C2D76F  0022                    add      byte ptr [edx], ah             
  0x00C2D772  0500470b00              add      eax, 0xb4700                   
  0x00C2D777  0000                    add      byte ptr [eax], al             
  0x00C2D779  f4                      hlt                                     
  0x00C2D77A  57                      push     edi                            
  0x00C2D77B  0010                    add      byte ptr [eax], dl             
  0x00C2D77D  0000                    add      byte ptr [eax], al             
  0x00C2D77F  0000                    add      byte ptr [eax], al             
  0x00C2D781  00250000f444            add      byte ptr [0x44f40000], ah      
  0x00C2D787  00770b                  add      byte ptr [edi + 0xb], dh       
  0x00C2D78A  0000                    add      byte ptr [eax], al             
  0x00C2D78C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2D78F  0000                    add      byte ptr [eax], al             
  0x00C2D791  0000                    add      byte ptr [eax], al             
  0x00C2D793  0000                    add      byte ptr [eax], al             
  0x00C2D795  f4                      hlt                                     
  0x00C2D796  44                      inc      esp                            
  0x00C2D797  0000                    add      byte ptr [eax], al             
  0x00C2D799  0000                    add      byte ptr [eax], al             
  0x00C2D79B  0000                    add      byte ptr [eax], al             
  0x00C2D79D  7044                    jo       0xc2d7e3                       
  0x00C2D79F  00540b00                add      byte ptr [ebx + ecx], dl       
  0x00C2D7A3  0000                    add      byte ptr [eax], al             
  0x00C2D7A5  f4                      hlt                                     
  0x00C2D7A6  61                      popal                                   
  0x00C2D7A7  0000                    add      byte ptr [eax], al             
  0x00C2D7A9  0000                    add      byte ptr [eax], al             
  0x00C2D7AB  0000                    add      byte ptr [eax], al             
  0x00C2D7AD  1038                    adc      byte ptr [eax], bh             
  0x00C2D7AF  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D7B5  f4                      hlt                                     
  0x00C2D7B6  61                      popal                                   
  0x00C2D7B7  00540b00                add      byte ptr [ebx + ecx], dl       
  0x00C2D7BB  0000                    add      byte ptr [eax], al             
  0x00C2D7BD  1038                    adc      byte ptr [eax], bh             
  0x00C2D7BF  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D7C5  f4                      hlt                                     
  0x00C2D7C6  61                      popal                                   
  0x00C2D7C7  007b0b                  add      byte ptr [ebx + 0xb], bh       
  0x00C2D7CA  0000                    add      byte ptr [eax], al             
  0x00C2D7CC  0002                    add      byte ptr [edx], al             
  0x00C2D7CE  3800                    cmp      byte ptr [eax], al             
  0x00C2D7D0  93                      xchg     ebx, eax                       
  0x00C2D7D1  030d0000f461            add      ecx, dword ptr [0x61f40000]    
  0x00C2D7D7  007c0b00                add      byte ptr [ebx + ecx], bh       
  0x00C2D7DB  0000                    add      byte ptr [eax], al             
  0x00C2D7DD  06                      push     es                             
  0x00C2D7DE  3800                    cmp      byte ptr [eax], al             
  0x00C2D7E0  93                      xchg     ebx, eax                       
  0x00C2D7E1  030d00000428            add      ecx, dword ptr [0x28040000]    
  0x00C2D7E7  0000                    add      byte ptr [eax], al             
  0x00C2D7E9  7050                    jo       0xc2d83b                       
  0x00C2D7EB  001e                    add      byte ptr [esi], bl             
  0x00C2D7ED  0000                    add      byte ptr [eax], al             
  0x00C2D7EF  0000                    add      byte ptr [eax], al             
  0x00C2D7F1  f4                      hlt                                     
  0x00C2D7F2  61                      popal                                   
  0x00C2D7F3  001e                    add      byte ptr [esi], bl             
  0x00C2D7F5  0000                    add      byte ptr [eax], al             
  0x00C2D7F7  0000                    add      byte ptr [eax], al             
  0x00C2D7F9  0538009303              add      eax, 0x3930038                 
  0x00C2D7FE  0d00000028              or       eax, 0x28000000                
  0x00C2D803  0000                    add      byte ptr [eax], al             
  0x00C2D805  7050                    jo       0xc2d857                       
  0x00C2D807  001e                    add      byte ptr [esi], bl             
  0x00C2D809  0000                    add      byte ptr [eax], al             
  0x00C2D80B  0000                    add      byte ptr [eax], al             
  0x00C2D80D  f4                      hlt                                     
  0x00C2D80E  61                      popal                                   
  0x00C2D80F  001e                    add      byte ptr [esi], bl             
  0x00C2D811  0000                    add      byte ptr [eax], al             
  0x00C2D813  0000                    add      byte ptr [eax], al             
  0x00C2D815  0338                    add      edi, dword ptr [eax]           
  0x00C2D817  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D81D  f4                      hlt                                     
  0x00C2D81E  61                      popal                                   
  0x00C2D81F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D822  0000                    add      byte ptr [eax], al             
  0x00C2D824  0003                    add      byte ptr [ebx], al             
  0x00C2D826  3800                    cmp      byte ptr [eax], al             
  0x00C2D828  93                      xchg     ebx, eax                       
  0x00C2D829  030d0000f056            add      ecx, dword ptr [0x56f00000]    
  0x00C2D82F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D832  0000                    add      byte ptr [eax], al             
  0x00C2D834  854101                  test     dword ptr [ecx + 1], eax       
  0x00C2D837  000a                    add      byte ptr [edx], cl             
  0x00C2D839  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D83A  0500864101              add      eax, 0x1418600                 
  0x00C2D83F  0008                    add      byte ptr [eax], cl             
  0x00C2D841  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2D842  0500000028              add      eax, 0x28000000                
  0x00C2D847  0000                    add      byte ptr [eax], al             
  0x00C2D849  7050                    jo       0xc2d89b                       
  0x00C2D84B  001e                    add      byte ptr [esi], bl             
  0x00C2D84D  0000                    add      byte ptr [eax], al             
  0x00C2D84F  0000                    add      byte ptr [eax], al             
  0x00C2D851  f4                      hlt                                     
  0x00C2D852  61                      popal                                   
  0x00C2D853  001e                    add      byte ptr [esi], bl             
  0x00C2D855  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2D805 (cond_jump)
  0x00C2D857  0000                    add      byte ptr [eax], al             
  0x00C2D859  0238                    add      bh, byte ptr [eax]             
  0x00C2D85B  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D862  56                      push     esi                            
  0x00C2D863  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D866  0000                    add      byte ptr [eax], al             
  0x00C2D868  86440100                xchg     byte ptr [ecx + eax], al       
  0x00C2D86C  08a40500000028          or       byte ptr [ebp + eax + 0x28000000], ah 
  0x00C2D873  0000                    add      byte ptr [eax], al             
  0x00C2D875  7050                    jo       0xc2d8c7                       
  0x00C2D877  001e                    add      byte ptr [esi], bl             
  0x00C2D879  0000                    add      byte ptr [eax], al             
  0x00C2D87B  0000                    add      byte ptr [eax], al             
  0x00C2D87D  f4                      hlt                                     
  0x00C2D87E  61                      popal                                   
  0x00C2D87F  001e                    add      byte ptr [esi], bl             
  0x00C2D881  0000                    add      byte ptr [eax], al             
  0x00C2D883  0000                    add      byte ptr [eax], al             
  0x00C2D885  0238                    add      bh, byte ptr [eax]             
  0x00C2D887  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D88E  56                      push     esi                            
  0x00C2D88F  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2D892  0000                    add      byte ptr [eax], al             
  0x00C2D894  854201                  test     dword ptr [edx + 1], eax       
  0x00C2D897  000524050000            add      byte ptr [0x524], al           
  0x00C2D89D  f4                      hlt                                     
  0x00C2D89E  61                      popal                                   
  0x00C2D89F  004e0b                  add      byte ptr [esi + 0xb], cl       
  0x00C2D8A2  0000                    add      byte ptr [eax], al             
  0x00C2D8A4  0002                    add      byte ptr [edx], al             
  0x00C2D8A6  3800                    cmp      byte ptr [eax], al             
  0x00C2D8A8  93                      xchg     ebx, eax                       
  0x00C2D8A9  030d0000f461            add      ecx, dword ptr [0x61f40000]    
  0x00C2D8AF  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2D8B2  0000                    add      byte ptr [eax], al             
  0x00C2D8B4  0001                    add      byte ptr [ecx], al             
  0x00C2D8B6  3800                    cmp      byte ptr [eax], al             
  0x00C2D8B8  93                      xchg     ebx, eax                       
  0x00C2D8B9  030d0000f461            add      ecx, dword ptr [0x61f40000]    
  0x00C2D8BF  00490b                  add      byte ptr [ecx + 0xb], cl       
  0x00C2D8C2  0000                    add      byte ptr [eax], al             
  0x00C2D8C4  000538009303            add      byte ptr [0x3930038], al       
  0x00C2D8CA  0d0000f461              or       eax, 0x61f40000                
  0x00C2D8CF  004c0b00                add      byte ptr [ebx + ecx], cl       
  0x00C2D8D3  0000                    add      byte ptr [eax], al             
  0x00C2D8D5  0138                    add      dword ptr [eax], edi           
  0x00C2D8D7  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D8DE  56                      push     esi                            
  0x00C2D8DF  004c0b00                add      byte ptr [ebx + ecx], cl       
  0x00C2D8E3  0003                    add      byte ptr [ebx], al             
  0x00C2D8E5  0020                    add      byte ptr [eax], ah             
  0x00C2D8E7  0005a4050000            add      byte ptr [0x5a4], al           
  0x00C2D8ED  f4                      hlt                                     
  0x00C2D8EE  61                      popal                                   
  0x00C2D8EF  004d0b                  add      byte ptr [ebp + 0xb], cl       
  0x00C2D8F2  0000                    add      byte ptr [eax], al             
  0x00C2D8F4  0008                    add      byte ptr [eax], cl             
  0x00C2D8F6  3800                    cmp      byte ptr [eax], al             
  0x00C2D8F8  93                      xchg     ebx, eax                       
  0x00C2D8F9  030d00000028            add      ecx, dword ptr [0x28000000]    
  0x00C2D8FF  0000                    add      byte ptr [eax], al             
  0x00C2D901  7050                    jo       0xc2d953                       
  0x00C2D903  001e                    add      byte ptr [esi], bl             
  0x00C2D905  0000                    add      byte ptr [eax], al             
  0x00C2D907  0000                    add      byte ptr [eax], al             
  0x00C2D909  f4                      hlt                                     
  0x00C2D90A  61                      popal                                   
  0x00C2D90B  001e                    add      byte ptr [esi], bl             
  0x00C2D90D  0000                    add      byte ptr [eax], al             
  0x00C2D90F  0000                    add      byte ptr [eax], al             
  0x00C2D911  0138                    add      dword ptr [eax], edi           
  0x00C2D913  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D919  0028                    add      byte ptr [eax], ch             
  0x00C2D91B  0000                    add      byte ptr [eax], al             
  0x00C2D91D  7050                    jo       0xc2d96f                       
  0x00C2D91F  001e                    add      byte ptr [esi], bl             
  0x00C2D921  0000                    add      byte ptr [eax], al             
  0x00C2D923  0000                    add      byte ptr [eax], al             
  0x00C2D925  f4                      hlt                                     
  0x00C2D926  61                      popal                                   
  0x00C2D927  001e                    add      byte ptr [esi], bl             
  0x00C2D929  0000                    add      byte ptr [eax], al             
  0x00C2D92B  0000                    add      byte ptr [eax], al             
  0x00C2D92D  0138                    add      dword ptr [eax], edi           
  0x00C2D92F  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D935  0028                    add      byte ptr [eax], ch             
  0x00C2D937  0000                    add      byte ptr [eax], al             
  0x00C2D939  7050                    jo       0xc2d98b                       
  0x00C2D93B  001e                    add      byte ptr [esi], bl             
  0x00C2D93D  0000                    add      byte ptr [eax], al             
  0x00C2D93F  0000                    add      byte ptr [eax], al             
  0x00C2D941  f4                      hlt                                     
  0x00C2D942  61                      popal                                   
  0x00C2D943  001e                    add      byte ptr [esi], bl             
  0x00C2D945  0000                    add      byte ptr [eax], al             
  0x00C2D947  0000                    add      byte ptr [eax], al             
  0x00C2D949  0138                    add      dword ptr [eax], edi           
  0x00C2D94B  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D951  0128                    add      dword ptr [eax], ebp           
                                        ; XREF: 0x00C2D901 (cond_jump)
  0x00C2D953  0000                    add      byte ptr [eax], al             
  0x00C2D955  7050                    jo       0xc2d9a7                       
  0x00C2D957  001e                    add      byte ptr [esi], bl             
  0x00C2D959  0000                    add      byte ptr [eax], al             
  0x00C2D95B  0000                    add      byte ptr [eax], al             
  0x00C2D95D  f4                      hlt                                     
  0x00C2D95E  61                      popal                                   
  0x00C2D95F  001e                    add      byte ptr [esi], bl             
  0x00C2D961  0000                    add      byte ptr [eax], al             
  0x00C2D963  0000                    add      byte ptr [eax], al             
  0x00C2D965  0138                    add      dword ptr [eax], edi           
  0x00C2D967  0093030d0013            add      byte ptr [ebx + 0x13000d03], dl 
  0x00C2D96D  0020                    add      byte ptr [eax], ah             
                                        ; XREF: 0x00C2D91D (cond_jump)
  0x00C2D96F  0000                    add      byte ptr [eax], al             
  0x00C2D971  7056                    jo       0xc2d9c9                       
  0x00C2D973  001e                    add      byte ptr [esi], bl             
  0x00C2D975  0000                    add      byte ptr [eax], al             
  0x00C2D977  0000                    add      byte ptr [eax], al             
  0x00C2D979  f4                      hlt                                     
  0x00C2D97A  61                      popal                                   
  0x00C2D97B  001e                    add      byte ptr [esi], bl             
  0x00C2D97D  0000                    add      byte ptr [eax], al             
  0x00C2D97F  0000                    add      byte ptr [eax], al             
  0x00C2D981  0138                    add      dword ptr [eax], edi           
  0x00C2D983  0093030d0013            add      byte ptr [ebx + 0x13000d03], dl 
  0x00C2D989  0020                    add      byte ptr [eax], ah             
                                        ; XREF: 0x00C2D939 (cond_jump)
  0x00C2D98B  0000                    add      byte ptr [eax], al             
  0x00C2D98D  7056                    jo       0xc2d9e5                       
  0x00C2D98F  001e                    add      byte ptr [esi], bl             
  0x00C2D991  0000                    add      byte ptr [eax], al             
  0x00C2D993  0000                    add      byte ptr [eax], al             
  0x00C2D995  f4                      hlt                                     
  0x00C2D996  61                      popal                                   
  0x00C2D997  001e                    add      byte ptr [esi], bl             
  0x00C2D999  0000                    add      byte ptr [eax], al             
  0x00C2D99B  0000                    add      byte ptr [eax], al             
  0x00C2D99D  0138                    add      dword ptr [eax], edi           
  0x00C2D99F  0093030d0013            add      byte ptr [ebx + 0x13000d03], dl 
  0x00C2D9A5  0020                    add      byte ptr [eax], ah             
                                        ; XREF: 0x00C2D955 (cond_jump)
  0x00C2D9A7  0000                    add      byte ptr [eax], al             
  0x00C2D9A9  7050                    jo       0xc2d9fb                       
  0x00C2D9AB  001e                    add      byte ptr [esi], bl             
  0x00C2D9AD  0000                    add      byte ptr [eax], al             
  0x00C2D9AF  0000                    add      byte ptr [eax], al             
  0x00C2D9B1  f4                      hlt                                     
  0x00C2D9B2  61                      popal                                   
  0x00C2D9B3  001e                    add      byte ptr [esi], bl             
  0x00C2D9B5  0000                    add      byte ptr [eax], al             
  0x00C2D9B7  0000                    add      byte ptr [eax], al             
  0x00C2D9B9  0138                    add      dword ptr [eax], edi           
  0x00C2D9BB  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2D9C1  7045                    jo       0xc2da08                       
  0x00C2D9C3  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2D9C6  0000                    add      byte ptr [eax], al             
  0x00C2D9C8  007057                  add      byte ptr [eax + 0x57], dh      
  0x00C2D9CB  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2D9CE  0000                    add      byte ptr [eax], al             
  0x00C2D9D0  007062                  add      byte ptr [eax + 0x62], dh      
  0x00C2D9D3  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2D9D6  0000                    add      byte ptr [eax], al             
  0x00C2D9D8  22f4                    and      dh, ah                         
  0x00C2D9DA  0500ffff00              add      eax, 0xffff00                  
  0x00C2D9DF  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2D9E2  0000                    add      byte ptr [eax], al             
  0x00C2D9E4  1300                    adc      eax, dword ptr [eax]           
  0x00C2D9E6  2000                    and      byte ptr [eax], al             
  0x00C2D9E8  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2D9EB  0002                    add      byte ptr [edx], al             
  0x00C2D9ED  0000                    add      byte ptr [eax], al             
  0x00C2D9EF  0000                    add      byte ptr [eax], al             
  0x00C2D9F1  7056                    jo       0xc2da49                       
  0x00C2D9F3  0003                    add      byte ptr [ebx], al             
  0x00C2D9F5  0000                    add      byte ptr [eax], al             
  0x00C2D9F7  0000                    add      byte ptr [eax], al             
  0x00C2D9F9  7056                    jo       0xc2da51                       
                                        ; XREF: 0x00C2D9A9 (cond_jump)
  0x00C2D9FB  000400                  add      byte ptr [eax + eax], al       
  0x00C2D9FE  0000                    add      byte ptr [eax], al             
  0x00C2DA00  0000                    add      byte ptr [eax], al             
  0x00C2DA02  360000                  add      byte ptr ss:[eax], al          
  0x00C2DA06  44                      inc      esp                            
  0x00C2DA07  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2DA0D  c406                    les      eax, ptr [esi]                 
  0x00C2DA0F  001d00000000            add      byte ptr [0], bl               
  0x00C2DA15  f4                      hlt                                     
  0x00C2DA16  56                      push     esi                            
  0x00C2DA17  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2DA1D  c422                    les      esp, ptr [edx]                 
  0x00C2DA1F  004000                  add      byte ptr [eax], al             
  0x00C2DA22  2000                    and      byte ptr [eax], al             
  0x00C2DA24  0090210000e0            add      byte ptr [eax - 0x1fffffdf], dl 
  0x00C2DA2A  7000                    jo       0xc2da2c                       
                                        ; XREF: 0x00C2DA2A (cond_jump)
  0x00C2DA2C  00c4                    add      ah, al                         
  0x00C2DA2E  2200                    and      al, byte ptr [eax]             
  0x00C2DA30  00f4                    add      ah, dh                         
  0x00C2DA32  46                      inc      esi                            
  0x00C2DA33  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2DA39  f4                      hlt                                     
  0x00C2DA3A  44                      inc      esp                            
  0x00C2DA3B  0000                    add      byte ptr [eax], al             
  0x00C2DA3D  0100                    add      dword ptr [eax], eax           
  0x00C2DA3F  002e                    add      byte ptr [esi], ch             
  0x00C2DA41  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2DA46  2000                    and      byte ptr [eax], al             
  0x00C2DA48  0090210000c4            add      byte ptr [eax - 0x3bffffdf], dl 
  0x00C2DA4E  2200                    and      al, byte ptr [eax]             
  0x00C2DA50  00f4                    add      ah, dh                         
  0x00C2DA52  46                      inc      esi                            
  0x00C2DA53  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2DA5A  44                      inc      esp                            
  0x00C2DA5B  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2DA5E  0000                    add      byte ptr [eax], al             
  0x00C2DA60  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2DA66  2000                    and      byte ptr [eax], al             
  0x00C2DA68  009521000070            add      byte ptr [ebp + 0x70000021], dl 
  0x00C2DA6E  6600410b                add      byte ptr [ecx + 0xb], al       
  0x00C2DA72  0000                    add      byte ptr [eax], al             
  0x00C2DA74  f1                      int1                                    
  0x00C2DA75  030d0000f066            add      ecx, dword ptr [0x66f00000]    
  0x00C2DA7B  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2DA7E  0000                    add      byte ptr [eax], al             
  0x00C2DA80  005e20                  add      byte ptr [esi + 0x20], bl      
  0x00C2DA83  0000                    add      byte ptr [eax], al             
  0x00C2DA86  56                      push     esi                            
  0x00C2DA87  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2DA8A  0000                    add      byte ptr [eax], al             
  0x00C2DA8C  0300                    add      eax, dword ptr [eax]           
  0x00C2DA8E  2000                    and      byte ptr [eax], al             
  0x00C2DA90  07                      pop      es                             
  0x00C2DA91  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2DA92  0500000738              add      eax, 0x38070000                
  0x00C2DA97  0000                    add      byte ptr [eax], al             
  0x00C2DA99  f4                      hlt                                     
  0x00C2DA9A  60                      pushal                                  
  0x00C2DA9B  008904000000            add      byte ptr [ecx + 4], cl         
  0x00C2DAA1  f4                      hlt                                     
  0x00C2DAA2  650039                  add      byte ptr gs:[ecx], bh          
  0x00C2DAA5  0b00                    or       eax, dword ptr [eax]           
  0x00C2DAA7  00f1                    add      cl, dh                         
  0x00C2DAA9  030d0000f057            add      ecx, dword ptr [0x57f00000]    
  0x00C2DAAF  0002                    add      byte ptr [edx], al             
  0x00C2DAB1  0000                    add      byte ptr [eax], al             
  0x00C2DAB3  000b                    add      byte ptr [ebx], cl             
  0x00C2DAB5  0020                    add      byte ptr [eax], ah             
  0x00C2DAB7  0014a4                  add      byte ptr [esp], dl             
  0x00C2DABA  050000f462              add      eax, 0x62f40000                
  0x00C2DABF  000500000000            add      byte ptr [0], al               
  0x00C2DAC5  f4                      hlt                                     
  0x00C2DAC6  66000a                  add      byte ptr [edx], cl             
  0x00C2DAC9  0d0000004e              or       eax, 0x4e000000                
  0x00C2DACE  2200                    and      al, byte ptr [eax]             
  0x00C2DAD0  10f4                    adc      ah, dh                         
  0x00C2DAD2  44                      inc      esp                            
  0x00C2DAD3  0001                    add      byte ptr [ecx], al             
  0x00C2DAD5  0000                    add      byte ptr [eax], al             
  0x00C2DAD7  008c4301003ed0          add      byte ptr [ebx + eax*2 - 0x2fc1ffff], cl 
  0x00C2DADE  2100                    and      dword ptr [eax], eax           
  0x00C2DAE0  10cd                    adc      ch, cl                         
  0x00C2DAE2  06                      push     es                             
  0x00C2DAE3  0002                    add      byte ptr [edx], al             
  0x00C2DAE5  0000                    add      byte ptr [eax], al             
  0x00C2DAE7  0000                    add      byte ptr [eax], al             
  0x00C2DAE9  58                      pop      eax                            
  0x00C2DAEA  44                      inc      esp                            
  0x00C2DAEB  0000                    add      byte ptr [eax], al             
  0x00C2DAEF  00d0                    add      al, dl                         
  0x00C2DAF3  00d2                    add      dl, dl                         
  0x00C2DAF7  00d2                    add      dl, dl                         
  0x00C2DAF9  f066000d00000024        lock add byte ptr [0x24000000], cl      
  0x00C2DB01  1d0c000066              sbb      eax, 0x6600000c                
  0x00C2DB06  50                      push     eax                            
  0x00C2DB07  0000                    add      byte ptr [eax], al             
  0x00C2DB0A  57                      push     edi                            
  0x00C2DB0B  0003                    add      byte ptr [ebx], al             
  0x00C2DB0D  0000                    add      byte ptr [eax], al             
  0x00C2DB0F  000b                    add      byte ptr [ebx], cl             
  0x00C2DB11  0020                    add      byte ptr [eax], ah             
  0x00C2DB13  0014a4                  add      byte ptr [esp], dl             
  0x00C2DB16  050000f462              add      eax, 0x62f40000                
  0x00C2DB1B  0008                    add      byte ptr [eax], cl             
  0x00C2DB1D  0000                    add      byte ptr [eax], al             
  0x00C2DB1F  0000                    add      byte ptr [eax], al             
  0x00C2DB21  f4                      hlt                                     
  0x00C2DB22  66000d0d000000          add      byte ptr [0xd], cl             
  0x00C2DB29  4e                      dec      esi                            
  0x00C2DB2A  2200                    and      al, byte ptr [eax]             
  0x00C2DB2C  10f4                    adc      ah, dh                         
  0x00C2DB2E  44                      inc      esp                            
  0x00C2DB2F  0002                    add      byte ptr [edx], al             
  0x00C2DB31  0000                    add      byte ptr [eax], al             
  0x00C2DB33  008c4301003ed0          add      byte ptr [ebx + eax*2 - 0x2fc1ffff], cl 
  0x00C2DB3A  2100                    and      dword ptr [eax], eax           
  0x00C2DB3C  10cd                    adc      ch, cl                         
  0x00C2DB3E  06                      push     es                             
  0x00C2DB3F  0002                    add      byte ptr [edx], al             
  0x00C2DB41  0000                    add      byte ptr [eax], al             
  0x00C2DB43  0000                    add      byte ptr [eax], al             
  0x00C2DB45  58                      pop      eax                            
  0x00C2DB46  44                      inc      esp                            
  0x00C2DB47  0000                    add      byte ptr [eax], al             
  0x00C2DB4B  00d0                    add      al, dl                         
  0x00C2DB4F  00d2                    add      dl, dl                         
  0x00C2DB53  00d2                    add      dl, dl                         
  0x00C2DB55  f066000e                lock add byte ptr [esi], cl             
  0x00C2DB59  0000                    add      byte ptr [eax], al             
  0x00C2DB5B  0020                    add      byte ptr [eax], ah             
  0x00C2DB5D  1d0c000066              sbb      eax, 0x6600000c                
  0x00C2DB62  50                      push     eax                            
  0x00C2DB63  0000                    add      byte ptr [eax], al             
  0x00C2DB66  57                      push     edi                            
  0x00C2DB67  000400                  add      byte ptr [eax + eax], al       
  0x00C2DB6A  0000                    add      byte ptr [eax], al             
  0x00C2DB6C  0b00                    or       eax, dword ptr [eax]           
  0x00C2DB6E  2000                    and      byte ptr [eax], al             
  0x00C2DB70  13a4050000f462          adc      esp, dword ptr [ebp + eax + 0x62f40000] 
  0x00C2DB77  000b                    add      byte ptr [ebx], cl             
  0x00C2DB79  0000                    add      byte ptr [eax], al             
  0x00C2DB7B  0000                    add      byte ptr [eax], al             
  0x00C2DB7D  f4                      hlt                                     
  0x00C2DB7E  660010                  add      byte ptr [eax], dl             
  0x00C2DB81  0d0000004e              or       eax, 0x4e000000                
  0x00C2DB86  2200                    and      al, byte ptr [eax]             
  0x00C2DB88  10f4                    adc      ah, dh                         
  0x00C2DB8A  44                      inc      esp                            
  0x00C2DB8B  00050000008c            add      byte ptr [0x8c000000], al      
  0x00C2DB91  42                      inc      edx                            
  0x00C2DB92  0100                    add      dword ptr [eax], eax           
  0x00C2DB94  3ed021                  shl      byte ptr ds:[ecx], 1           
  0x00C2DB97  0010                    add      byte ptr [eax], dl             
  0x00C2DB99  cd06                    int      6                              
  0x00C2DB9B  0002                    add      byte ptr [edx], al             
  0x00C2DB9D  0000                    add      byte ptr [eax], al             
  0x00C2DB9F  0000                    add      byte ptr [eax], al             
  0x00C2DBA1  58                      pop      eax                            
  0x00C2DBA2  44                      inc      esp                            
  0x00C2DBA3  0000                    add      byte ptr [eax], al             
  0x00C2DBA7  00d0                    add      al, dl                         
  0x00C2DBAB  00d2                    add      dl, dl                         
  0x00C2DBAD  f066000f                lock add byte ptr [edi], cl             
  0x00C2DBB1  0000                    add      byte ptr [eax], al             
  0x00C2DBB3  0020                    add      byte ptr [eax], ah             
  0x00C2DBB5  1d0c000066              sbb      eax, 0x6600000c                
  0x00C2DBBA  50                      push     eax                            
  0x00C2DBBB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2DBBE  0000                    add      byte ptr [eax], al             
  0x00C2DBC0  00f0                    add      al, dh                         
  0x00C2DBC2  6200                    bound    eax, qword ptr [eax]           
  0x00C2DBC4  55                      push     ebp                            
  0x00C2DBC5  0b00                    or       eax, dword ptr [eax]           
  0x00C2DBC7  0022                    add      byte ptr [edx], ah             
  0x00C2DBCA  0500470b00              add      eax, 0xb4700                   
  0x00C2DBCF  0000                    add      byte ptr [eax], al             
  0x00C2DBD2  57                      push     edi                            
  0x00C2DBD3  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2DBD6  0000                    add      byte ptr [eax], al             
  0x00C2DBD8  00f0                    add      al, dh                         
  0x00C2DBDA  45                      inc      ebp                            
  0x00C2DBDB  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2DBDE  0000                    add      byte ptr [eax], al             
  0x00C2DBE0  00f4                    add      ah, dh                         
  0x00C2DBE2  61                      popal                                   
  0x00C2DBE3  007f0b                  add      byte ptr [edi + 0xb], bh       
  0x00C2DBE6  0000                    add      byte ptr [eax], al             
  0x00C2DBE8  00f0                    add      al, dh                         
  0x00C2DBEA  7100                    jno      0xc2dbec                       
                                        ; XREF: 0x00C2DBEA (cond_jump)
  0x00C2DBEC  97                      xchg     edi, eax                       
  0x00C2DBED  0b00                    or       eax, dword ptr [eax]           
  0x00C2DBEF  0000                    add      byte ptr [eax], al             
  0x00C2DBF1  0138                    add      dword ptr [eax], edi           
  0x00C2DBF3  006f03                  add      byte ptr [edi + 3], ch         
  0x00C2DBF6  0d0000f461              or       eax, 0x61f40000                
  0x00C2DBFB  00840b000000f0          add      byte ptr [ebx + ecx - 0x10000000], al 
  0x00C2DC02  7100                    jno      0xc2dc04                       
                                        ; XREF: 0x00C2DC02 (cond_jump)
  0x00C2DC04  97                      xchg     edi, eax                       
  0x00C2DC05  0b00                    or       eax, dword ptr [eax]           
  0x00C2DC07  0000                    add      byte ptr [eax], al             
  0x00C2DC09  0138                    add      dword ptr [eax], edi           
  0x00C2DC0B  006f03                  add      byte ptr [edi + 3], ch         
  0x00C2DC0E  0d0000f461              or       eax, 0x61f40000                
  0x00C2DC13  004a0b                  add      byte ptr [edx + 0xb], cl       
  0x00C2DC16  0000                    add      byte ptr [eax], al             
  0x00C2DC18  0001                    add      byte ptr [ecx], al             
  0x00C2DC1A  3800                    cmp      byte ptr [eax], al             
  0x00C2DC1C  93                      xchg     ebx, eax                       
  0x00C2DC1D  030d0000f056            add      ecx, dword ptr [0x56f00000]    
  0x00C2DC23  004a0b                  add      byte ptr [edx + 0xb], cl       
  0x00C2DC26  0000                    add      byte ptr [eax], al             
  0x00C2DC28  0300                    add      eax, dword ptr [eax]           
  0x00C2DC2A  2000                    and      byte ptr [eax], al             
  0x00C2DC2C  05a4050000              add      eax, 0x5a4                     
  0x00C2DC31  f4                      hlt                                     
  0x00C2DC32  61                      popal                                   
  0x00C2DC33  004b0b                  add      byte ptr [ebx + 0xb], cl       
  0x00C2DC36  0000                    add      byte ptr [eax], al             
  0x00C2DC38  0008                    add      byte ptr [eax], cl             
  0x00C2DC3A  3800                    cmp      byte ptr [eax], al             
  0x00C2DC3C  93                      xchg     ebx, eax                       
  0x00C2DC3D  030d00130020            add      ecx, dword ptr [0x20001300]    
  0x00C2DC43  0000                    add      byte ptr [eax], al             
  0x00C2DC45  7056                    jo       0xc2dc9d                       
  0x00C2DC47  001e                    add      byte ptr [esi], bl             
  0x00C2DC49  0000                    add      byte ptr [eax], al             
  0x00C2DC4B  0000                    add      byte ptr [eax], al             
  0x00C2DC4D  f4                      hlt                                     
  0x00C2DC4E  61                      popal                                   
  0x00C2DC4F  00890b000000            add      byte ptr [ecx + 0xb], cl       
  0x00C2DC55  0138                    add      dword ptr [eax], edi           
  0x00C2DC57  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DC5D  f9                      stc                                     
  0x00C2DC5E  56                      push     esi                            
  0x00C2DC5F  0003                    add      byte ptr [ebx], al             
  0x00C2DC61  0020                    add      byte ptr [eax], ah             
  0x00C2DC63  0005a4050000            add      byte ptr [0x5a4], al           
  0x00C2DC69  f4                      hlt                                     
  0x00C2DC6A  61                      popal                                   
  0x00C2DC6B  001e                    add      byte ptr [esi], bl             
  0x00C2DC6D  0000                    add      byte ptr [eax], al             
  0x00C2DC6F  0000                    add      byte ptr [eax], al             
  0x00C2DC71  0138                    add      dword ptr [eax], edi           
  0x00C2DC73  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DC7A  56                      push     esi                            
  0x00C2DC7B  007d0b                  add      byte ptr [ebp + 0xb], bh       
  0x00C2DC7E  0000                    add      byte ptr [eax], al             
  0x00C2DC80  c54001                  lds      eax, ptr [eax + 1]             
  0x00C2DC83  0002                    add      byte ptr [edx], al             
  0x00C2DC85  0000                    add      byte ptr [eax], al             
  0x00C2DC87  0012                    add      byte ptr [edx], dl             
  0x00C2DC89  2405                    and      al, 5                          
  0x00C2DC8B  0000                    add      byte ptr [eax], al             
  0x00C2DC8D  f4                      hlt                                     
  0x00C2DC8E  44                      inc      esp                            
  0x00C2DC8F  0010                    add      byte ptr [eax], dl             
  0x00C2DC91  0000                    add      byte ptr [eax], al             
  0x00C2DC93  0000                    add      byte ptr [eax], al             
  0x00C2DC95  7044                    jo       0xc2dcdb                       
  0x00C2DC97  001e                    add      byte ptr [esi], bl             
  0x00C2DC99  0000                    add      byte ptr [eax], al             
  0x00C2DC9B  0000                    add      byte ptr [eax], al             
  0x00C2DC9E  56                      push     esi                            
  0x00C2DC9F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2DCA2  0000                    add      byte ptr [eax], al             
  0x00C2DCA4  0300                    add      eax, dword ptr [eax]           
  0x00C2DCA6  2000                    and      byte ptr [eax], al             
  0x00C2DCA8  06                      push     es                             
  0x00C2DCA9  2405                    and      al, 5                          
  0x00C2DCAB  0000                    add      byte ptr [eax], al             
  0x00C2DCAD  f4                      hlt                                     
  0x00C2DCAE  61                      popal                                   
  0x00C2DCAF  001e                    add      byte ptr [esi], bl             
  0x00C2DCB1  0000                    add      byte ptr [eax], al             
  0x00C2DCB3  0000                    add      byte ptr [eax], al             
  0x00C2DCB5  0538009303              add      eax, 0x3930038                 
  0x00C2DCBA  0d00050c05              or       eax, 0x50c0500                 
  0x00C2DCBF  0000                    add      byte ptr [eax], al             
  0x00C2DCC1  f4                      hlt                                     
  0x00C2DCC2  61                      popal                                   
  0x00C2DCC3  001e                    add      byte ptr [esi], bl             
  0x00C2DCC5  0000                    add      byte ptr [eax], al             
  0x00C2DCC7  0000                    add      byte ptr [eax], al             
  0x00C2DCC9  0138                    add      dword ptr [eax], edi           
  0x00C2DCCB  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DCD1  f4                      hlt                                     
  0x00C2DCD2  61                      popal                                   
  0x00C2DCD3  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2DCDA  7100                    jno      0xc2dcdc                       
                                        ; XREF: 0x00C2DCDA (cond_jump)
  0x00C2DCDC  97                      xchg     edi, eax                       
  0x00C2DCDD  0b00                    or       eax, dword ptr [eax]           
  0x00C2DCDF  0000                    add      byte ptr [eax], al             
  0x00C2DCE1  0238                    add      bh, byte ptr [eax]             
  0x00C2DCE3  006f03                  add      byte ptr [edi + 3], ch         
  0x00C2DCE6  0d0000f056              or       eax, 0x56f00000                
  0x00C2DCEB  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2DCEE  0000                    add      byte ptr [eax], al             
  0x00C2DCF0  0300                    add      eax, dword ptr [eax]           
  0x00C2DCF2  2000                    and      byte ptr [eax], al             
  0x00C2DCF4  05a4050000              add      eax, 0x5a4                     
  0x00C2DCF9  f4                      hlt                                     
  0x00C2DCFA  61                      popal                                   
  0x00C2DCFB  008f0b000000            add      byte ptr [edi + 0xb], cl       
  0x00C2DD01  0138                    add      dword ptr [eax], edi           
  0x00C2DD03  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DD09  0036                    add      byte ptr [esi], dh             
  0x00C2DD0B  0000                    add      byte ptr [eax], al             
  0x00C2DD0E  44                      inc      esp                            
  0x00C2DD0F  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2DD15  c406                    les      eax, ptr [esi]                 
  0x00C2DD17  0011                    add      byte ptr [ecx], dl             
  0x00C2DD19  0000                    add      byte ptr [eax], al             
  0x00C2DD1B  0000                    add      byte ptr [eax], al             
  0x00C2DD1D  f4                      hlt                                     
  0x00C2DD1E  56                      push     esi                            
  0x00C2DD1F  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2DD25  c422                    les      esp, ptr [edx]                 
  0x00C2DD27  004000                  add      byte ptr [eax], al             
  0x00C2DD2A  2000                    and      byte ptr [eax], al             
  0x00C2DD2C  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2DD32  56                      push     esi                            
  0x00C2DD33  0003                    add      byte ptr [ebx], al             
  0x00C2DD35  0020                    add      byte ptr [eax], ah             
  0x00C2DD37  0008                    add      byte ptr [eax], cl             
  0x00C2DD39  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2DD3A  050000f456              add      eax, 0x56f40000                
  0x00C2DD3F  00a00b000000            add      byte ptr [eax + 0xb], ah       
  0x00C2DD45  c422                    les      esp, ptr [edx]                 
  0x00C2DD47  004000                  add      byte ptr [eax], al             
  0x00C2DD4A  2000                    and      byte ptr [eax], al             
  0x00C2DD4C  009121000006            add      byte ptr [ecx + 0x6000021], dl 
  0x00C2DD52  3800                    cmp      byte ptr [eax], al             
  0x00C2DD54  93                      xchg     ebx, eax                       
  0x00C2DD55  030d00005e20            add      ecx, dword ptr [0x205e0000]    
  0x00C2DD5B  0000                    add      byte ptr [eax], al             
  0x00C2DD5D  0036                    add      byte ptr [esi], dh             
  0x00C2DD5F  0000                    add      byte ptr [eax], al             
  0x00C2DD62  44                      inc      esp                            
  0x00C2DD63  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2DD69  c406                    les      eax, ptr [esi]                 
  0x00C2DD6B  0023                    add      byte ptr [ebx], ah             
  0x00C2DD6D  0000                    add      byte ptr [eax], al             
  0x00C2DD6F  0000                    add      byte ptr [eax], al             
  0x00C2DD71  f4                      hlt                                     
  0x00C2DD72  56                      push     esi                            
  0x00C2DD73  008a0b000000            add      byte ptr [edx + 0xb], cl       
  0x00C2DD79  c422                    les      esp, ptr [edx]                 
  0x00C2DD7B  004000                  add      byte ptr [eax], al             
  0x00C2DD7E  2000                    and      byte ptr [eax], al             
  0x00C2DD80  0091210000e1            add      byte ptr [ecx - 0x1effffdf], dl 
  0x00C2DD86  56                      push     esi                            
  0x00C2DD87  0003                    add      byte ptr [ebx], al             
  0x00C2DD89  0020                    add      byte ptr [eax], ah             
  0x00C2DD8B  001a                    add      byte ptr [edx], bl             
  0x00C2DD8D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2DD8E  050000c422              add      eax, 0x22c40000                
  0x00C2DD93  0000                    add      byte ptr [eax], al             
  0x00C2DD95  f4                      hlt                                     
  0x00C2DD96  46                      inc      esi                            
  0x00C2DD97  001f                    add      byte ptr [edi], bl             
  0x00C2DD99  0000                    add      byte ptr [eax], al             
  0x00C2DD9B  00d0                    add      al, dl                         
  0x00C2DD9D  f4                      hlt                                     
  0x00C2DD9E  44                      inc      esp                            
  0x00C2DD9F  0000                    add      byte ptr [eax], al             
  0x00C2DDA1  0000                    add      byte ptr [eax], al             
  0x00C2DDA3  002e                    add      byte ptr [esi], ch             
  0x00C2DDA5  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2DDAA  2000                    and      byte ptr [eax], al             
  0x00C2DDAC  009121000004            add      byte ptr [ecx + 0x4000021], dl 
  0x00C2DDB2  3800                    cmp      byte ptr [eax], al             
  0x00C2DDB4  a3030d0000              mov      dword ptr [0xd03], eax         
  0x00C2DDB9  f4                      hlt                                     
  0x00C2DDBA  56                      push     esi                            
  0x00C2DDBB  00910b000000            add      byte ptr [ecx + 0xb], dl       
  0x00C2DDC1  c422                    les      esp, ptr [edx]                 
  0x00C2DDC3  004000                  add      byte ptr [eax], al             
  0x00C2DDC6  2000                    and      byte ptr [eax], al             
  0x00C2DDC8  0090210000e0            add      byte ptr [eax - 0x1fffffdf], dl 
  0x00C2DDCE  7100                    jno      0xc2ddd0                       
                                        ; XREF: 0x00C2DDCE (cond_jump)
  0x00C2DDD0  0007                    add      byte ptr [edi], al             
  0x00C2DDD2  3800                    cmp      byte ptr [eax], al             
  0x00C2DDD4  81030d0000f4            add      dword ptr [ebx], 0xf400000d    
  0x00C2DDDA  56                      push     esi                            
  0x00C2DDDB  00610b                  add      byte ptr [ecx + 0xb], ah       
  0x00C2DDDE  0000                    add      byte ptr [eax], al             
  0x00C2DDE0  00c4                    add      ah, al                         
  0x00C2DDE2  2200                    and      al, byte ptr [eax]             
  0x00C2DDE4  40                      inc      eax                            
  0x00C2DDE5  0020                    add      byte ptr [eax], ah             
  0x00C2DDE7  0000                    add      byte ptr [eax], al             
  0x00C2DDE9  91                      xchg     ecx, eax                       
  0x00C2DDEA  2100                    and      dword ptr [eax], eax           
  0x00C2DDEC  0002                    add      byte ptr [edx], al             
  0x00C2DDEE  3800                    cmp      byte ptr [eax], al             
  0x00C2DDF0  93                      xchg     ebx, eax                       
  0x00C2DDF1  030d00005e20            add      ecx, dword ptr [0x205e0000]    
  0x00C2DDF7  0000                    add      byte ptr [eax], al             
  0x00C2DDFA  56                      push     esi                            
  0x00C2DDFB  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2DDFE  0000                    add      byte ptr [eax], al             
  0x00C2DE00  0300                    add      eax, dword ptr [eax]           
  0x00C2DE02  2000                    and      byte ptr [eax], al             
  0x00C2DE04  0ca4                    or       al, 0xa4                       
  0x00C2DE06  050000f056              add      eax, 0x56f00000                
  0x00C2DE0B  008f0b000003            add      byte ptr [edi + 0x300000b], cl 
  0x00C2DE11  0020                    add      byte ptr [eax], ah             
  0x00C2DE13  0008                    add      byte ptr [eax], cl             
  0x00C2DE15  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2DE16  050000f461              add      eax, 0x61f40000                
  0x00C2DE1B  009b00000000            add      byte ptr [ebx], bl             
  0x00C2DE21  0438                    add      al, 0x38                       
  0x00C2DE23  00a3030d0000            add      byte ptr [ebx + 0xd03], ah     
  0x00C2DE29  0239                    add      bh, byte ptr [ecx]             
  0x00C2DE2B  0000                    add      byte ptr [eax], al             
  0x00C2DE2D  07                      pop      es                             
  0x00C2DE2E  3800                    cmp      byte ptr [eax], al             
  0x00C2DE30  81030d0000f4            add      dword ptr [ebx], 0xf400000d    
  0x00C2DE36  61                      popal                                   
  0x00C2DE37  00900b000000            add      byte ptr [eax + 0xb], dl       
  0x00C2DE3D  0138                    add      dword ptr [eax], edi           
  0x00C2DE3F  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DE45  f9                      stc                                     
  0x00C2DE46  56                      push     esi                            
  0x00C2DE47  0003                    add      byte ptr [ebx], al             
  0x00C2DE49  0020                    add      byte ptr [eax], ah             
  0x00C2DE4B  0049a4                  add      byte ptr [ecx - 0x5c], cl      
  0x00C2DE4E  050000f456              add      eax, 0x56f40000                
  0x00C2DE53  0002                    add      byte ptr [edx], al             
  0x00C2DE55  0000                    add      byte ptr [eax], al             
  0x00C2DE57  0000                    add      byte ptr [eax], al             
  0x00C2DE59  7056                    jo       0xc2deb1                       
  0x00C2DE5B  001e                    add      byte ptr [esi], bl             
  0x00C2DE5D  0000                    add      byte ptr [eax], al             
  0x00C2DE5F  0000                    add      byte ptr [eax], al             
  0x00C2DE61  f4                      hlt                                     
  0x00C2DE62  61                      popal                                   
  0x00C2DE63  001e                    add      byte ptr [esi], bl             
  0x00C2DE65  0000                    add      byte ptr [eax], al             
  0x00C2DE67  0000                    add      byte ptr [eax], al             
  0x00C2DE69  0238                    add      bh, byte ptr [eax]             
  0x00C2DE6B  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DE71  f4                      hlt                                     
  0x00C2DE72  56                      push     esi                            
  0x00C2DE73  0001                    add      byte ptr [ecx], al             
  0x00C2DE75  0000                    add      byte ptr [eax], al             
  0x00C2DE77  0000                    add      byte ptr [eax], al             
  0x00C2DE79  7056                    jo       0xc2ded1                       
  0x00C2DE7B  001e                    add      byte ptr [esi], bl             
  0x00C2DE7D  0000                    add      byte ptr [eax], al             
  0x00C2DE7F  0000                    add      byte ptr [eax], al             
  0x00C2DE81  f4                      hlt                                     
  0x00C2DE82  61                      popal                                   
  0x00C2DE83  001e                    add      byte ptr [esi], bl             
  0x00C2DE85  0000                    add      byte ptr [eax], al             
  0x00C2DE87  0000                    add      byte ptr [eax], al             
  0x00C2DE89  0238                    add      bh, byte ptr [eax]             
  0x00C2DE8B  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DE91  f4                      hlt                                     
  0x00C2DE92  56                      push     esi                            
  0x00C2DE93  0001                    add      byte ptr [ecx], al             
  0x00C2DE95  0000                    add      byte ptr [eax], al             
  0x00C2DE97  0000                    add      byte ptr [eax], al             
  0x00C2DE99  7056                    jo       0xc2def1                       
  0x00C2DE9B  001e                    add      byte ptr [esi], bl             
  0x00C2DE9D  0000                    add      byte ptr [eax], al             
  0x00C2DE9F  0000                    add      byte ptr [eax], al             
  0x00C2DEA1  f4                      hlt                                     
  0x00C2DEA2  61                      popal                                   
  0x00C2DEA3  001e                    add      byte ptr [esi], bl             
  0x00C2DEA5  0000                    add      byte ptr [eax], al             
  0x00C2DEA7  0000                    add      byte ptr [eax], al             
  0x00C2DEA9  0238                    add      bh, byte ptr [eax]             
  0x00C2DEAB  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
                                        ; XREF: 0x00C2DE59 (cond_jump)
  0x00C2DEB1  f4                      hlt                                     
  0x00C2DEB2  56                      push     esi                            
  0x00C2DEB3  0002                    add      byte ptr [edx], al             
  0x00C2DEB5  0000                    add      byte ptr [eax], al             
  0x00C2DEB7  0000                    add      byte ptr [eax], al             
  0x00C2DEB9  7056                    jo       0xc2df11                       
  0x00C2DEBB  001e                    add      byte ptr [esi], bl             
  0x00C2DEBD  0000                    add      byte ptr [eax], al             
  0x00C2DEBF  0000                    add      byte ptr [eax], al             
  0x00C2DEC1  f4                      hlt                                     
  0x00C2DEC2  61                      popal                                   
  0x00C2DEC3  001e                    add      byte ptr [esi], bl             
  0x00C2DEC5  0000                    add      byte ptr [eax], al             
  0x00C2DEC7  0000                    add      byte ptr [eax], al             
  0x00C2DEC9  0238                    add      bh, byte ptr [eax]             
  0x00C2DECB  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
                                        ; XREF: 0x00C2DE79 (cond_jump)
  0x00C2DED1  f4                      hlt                                     
  0x00C2DED2  56                      push     esi                            
  0x00C2DED3  0007                    add      byte ptr [edi], al             
  0x00C2DED5  0000                    add      byte ptr [eax], al             
  0x00C2DED7  0000                    add      byte ptr [eax], al             
  0x00C2DED9  7056                    jo       0xc2df31                       
  0x00C2DEDB  001e                    add      byte ptr [esi], bl             
  0x00C2DEDD  0000                    add      byte ptr [eax], al             
  0x00C2DEDF  0000                    add      byte ptr [eax], al             
  0x00C2DEE1  f4                      hlt                                     
  0x00C2DEE2  61                      popal                                   
  0x00C2DEE3  001e                    add      byte ptr [esi], bl             
  0x00C2DEE5  0000                    add      byte ptr [eax], al             
  0x00C2DEE7  0000                    add      byte ptr [eax], al             
  0x00C2DEE9  0338                    add      edi, dword ptr [eax]           
  0x00C2DEEB  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
                                        ; XREF: 0x00C2DE99 (cond_jump)
  0x00C2DEF1  f4                      hlt                                     
  0x00C2DEF2  61                      popal                                   
  0x00C2DEF3  006f0b                  add      byte ptr [edi + 0xb], ch       
  0x00C2DEF6  0000                    add      byte ptr [eax], al             
  0x00C2DEF8  0001                    add      byte ptr [ecx], al             
  0x00C2DEFA  3800                    cmp      byte ptr [eax], al             
  0x00C2DEFC  93                      xchg     ebx, eax                       
  0x00C2DEFD  030d0000f956            add      ecx, dword ptr [0x56f90000]    
  0x00C2DF03  0003                    add      byte ptr [ebx], al             
  0x00C2DF05  0020                    add      byte ptr [eax], ah             
  0x00C2DF07  004aa4                  add      byte ptr [edx - 0x5c], cl      
  0x00C2DF0A  050000f461              add      eax, 0x61f40000                
  0x00C2DF0F  00730b                  add      byte ptr [ebx + 0xb], dh       
  0x00C2DF12  0000                    add      byte ptr [eax], al             
  0x00C2DF14  0006                    add      byte ptr [esi], al             
  0x00C2DF16  3800                    cmp      byte ptr [eax], al             
  0x00C2DF18  93                      xchg     ebx, eax                       
  0x00C2DF19  030d00000036            add      ecx, dword ptr [0x36000000]    
  0x00C2DF1F  0000                    add      byte ptr [eax], al             
  0x00C2DF22  44                      inc      esp                            
  0x00C2DF23  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2DF29  c406                    les      eax, ptr [esi]                 
  0x00C2DF2B  0011                    add      byte ptr [ecx], dl             
  0x00C2DF2D  0000                    add      byte ptr [eax], al             
  0x00C2DF2F  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2DED9 (cond_jump)
  0x00C2DF31  f4                      hlt                                     
  0x00C2DF32  56                      push     esi                            
  0x00C2DF33  00740b00                add      byte ptr [ebx + ecx], dh       
  0x00C2DF37  0000                    add      byte ptr [eax], al             
  0x00C2DF39  c422                    les      esp, ptr [edx]                 
  0x00C2DF3B  004000                  add      byte ptr [eax], al             
  0x00C2DF3E  2000                    and      byte ptr [eax], al             
  0x00C2DF40  009121000004            add      byte ptr [ecx + 0x4000021], dl 
  0x00C2DF46  3800                    cmp      byte ptr [eax], al             
  0x00C2DF48  93                      xchg     ebx, eax                       
  0x00C2DF49  030d0000f456            add      ecx, dword ptr [0x56f40000]    
  0x00C2DF4F  000400                  add      byte ptr [eax + eax], al       
  0x00C2DF52  0000                    add      byte ptr [eax], al             
  0x00C2DF54  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2DF57  001e                    add      byte ptr [esi], bl             
  0x00C2DF59  0000                    add      byte ptr [eax], al             
  0x00C2DF5B  0000                    add      byte ptr [eax], al             
  0x00C2DF5D  f4                      hlt                                     
  0x00C2DF5E  61                      popal                                   
  0x00C2DF5F  001e                    add      byte ptr [esi], bl             
  0x00C2DF61  0000                    add      byte ptr [eax], al             
  0x00C2DF63  0000                    add      byte ptr [eax], al             
  0x00C2DF65  0338                    add      edi, dword ptr [eax]           
  0x00C2DF67  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DF6D  5e                      pop      esi                            
  0x00C2DF6E  2000                    and      byte ptr [eax], al             
  0x00C2DF70  00f0                    add      al, dh                         
  0x00C2DF72  56                      push     esi                            
  0x00C2DF73  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2DF76  0000                    add      byte ptr [eax], al             
  0x00C2DF78  0300                    add      eax, dword ptr [eax]           
  0x00C2DF7A  2000                    and      byte ptr [eax], al             
  0x00C2DF7C  0da4050000              or       eax, 0x5a4                     
  0x00C2DF81  f4                      hlt                                     
  0x00C2DF82  61                      popal                                   
  0x00C2DF83  00790b                  add      byte ptr [ecx + 0xb], bh       
  0x00C2DF86  0000                    add      byte ptr [eax], al             
  0x00C2DF88  000438                  add      byte ptr [eax + edi], al       
  0x00C2DF8B  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2DF91  f4                      hlt                                     
  0x00C2DF92  56                      push     esi                            
  0x00C2DF93  000400                  add      byte ptr [eax + eax], al       
  0x00C2DF96  0000                    add      byte ptr [eax], al             
  0x00C2DF98  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2DF9B  001e                    add      byte ptr [esi], bl             
  0x00C2DF9D  0000                    add      byte ptr [eax], al             
  0x00C2DF9F  0000                    add      byte ptr [eax], al             
  0x00C2DFA1  f4                      hlt                                     
  0x00C2DFA2  61                      popal                                   
  0x00C2DFA3  001e                    add      byte ptr [esi], bl             
  0x00C2DFA5  0000                    add      byte ptr [eax], al             
  0x00C2DFA7  0000                    add      byte ptr [eax], al             
  0x00C2DFA9  0338                    add      edi, dword ptr [eax]           
  0x00C2DFAB  0093030d0013            add      byte ptr [ebx + 0x13000d03], dl 
  0x00C2DFB1  f4                      hlt                                     
  0x00C2DFB2  61                      popal                                   
  0x00C2DFB3  001e                    add      byte ptr [esi], bl             
  0x00C2DFB5  0000                    add      byte ptr [eax], al             
  0x00C2DFB7  0000                    add      byte ptr [eax], al             
  0x00C2DFB9  61                      popal                                   
  0x00C2DFBA  56                      push     esi                            
  0x00C2DFBB  0000                    add      byte ptr [eax], al             
  0x00C2DFBD  0138                    add      dword ptr [eax], edi           
  0x00C2DFBF  0093030d0001            add      byte ptr [ebx + 0x1000d03], dl 
  0x00C2DFC5  0c05                    or       al, 5                          
  0x00C2DFC7  0000                    add      byte ptr [eax], al             
  0x00C2DFCA  56                      push     esi                            
  0x00C2DFCB  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2DFCE  0000                    add      byte ptr [eax], al             
  0x00C2DFD0  854301                  test     dword ptr [ebx + 1], eax       
  0x00C2DFD3  005524                  add      byte ptr [ebp + 0x24], dl      
  0x00C2DFD6  0500004e22              add      eax, 0x224e0000                
  0x00C2DFDB  0000                    add      byte ptr [eax], al             
  0x00C2DFDE  44                      inc      esp                            
  0x00C2DFDF  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2DFE2  0000                    add      byte ptr [eax], al             
  0x00C2DFE4  44                      inc      esp                            
  0x00C2DFE5  f4                      hlt                                     
  0x00C2DFE6  46                      inc      esi                            
  0x00C2DFE7  0010                    add      byte ptr [eax], dl             
  0x00C2DFE9  0000                    add      byte ptr [eax], al             
  0x00C2DFEB  0000                    add      byte ptr [eax], al             
  0x00C2DFEE  2100                    and      dword ptr [eax], eax           
  0x00C2DFF0  00ee                    add      dh, ch                         
  0x00C2DFF2  2100                    and      dword ptr [eax], eax           
  0x00C2DFF4  36f4                    hlt                                     
  0x00C2DFF6  44                      inc      esp                            
  0x00C2DFF7  0010                    add      byte ptr [eax], dl             
  0x00C2DFF9  0000                    add      byte ptr [eax], al             
  0x00C2DFFB  004000                  add      byte ptr [eax], al             
  0x00C2DFFE  2000                    and      byte ptr [eax], al             
  0x00C2E000  00c4                    add      ah, al                         
  0x00C2E002  2100                    and      dword ptr [eax], eax           
  0x00C2E004  b0f0                    mov      al, 0xf0                       
                                        ; XREF: 0x00C2E014 (cond_jump)
  0x00C2E006  47                      inc      edi                            
  0x00C2E007  009d0b00002e            add      byte ptr [ebp + 0x2e00000b], bl 
  0x00C2E00D  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2E012  2000                    and      byte ptr [eax], al             
  0x00C2E014  70f0                    jo       0xc2e006                       
  0x00C2E016  44                      inc      esp                            
  0x00C2E017  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E01A  0000                    add      byte ptr [eax], al             
  0x00C2E01C  41                      inc      ecx                            
  0x00C2E01E  2100                    and      dword ptr [eax], eax           
  0x00C2E020  06                      push     es                             
  0x00C2E021  1d0c0000b0              sbb      eax, 0xb000000c                
  0x00C2E026  1800                    sbb      byte ptr [eax], al             
  0x00C2E028  9e                      sahf                                    
  0x00C2E029  0b00                    or       eax, dword ptr [eax]           
  0x00C2E02B  0054f044                add      byte ptr [eax + esi*8 + 0x44], dl 
  0x00C2E02F  007a0b                  add      byte ptr [edx + 0xb], bh       
  0x00C2E032  0000                    add      byte ptr [eax], al             
  0x00C2E034  44                      inc      esp                            
  0x00C2E035  0020                    add      byte ptr [eax], ah             
  0x00C2E037  00740020                add      byte ptr [eax + eax + 0x20], dh 
  0x00C2E03B  0003                    add      byte ptr [ebx], al             
  0x00C2E03D  0020                    add      byte ptr [eax], ah             
  0x00C2E03F  001a                    add      byte ptr [edx], bl             
  0x00C2E041  f4                      hlt                                     
  0x00C2E042  0500804701              add      eax, 0x1478000                 
  0x00C2E047  0000                    add      byte ptr [eax], al             
  0x00C2E04A  44                      inc      esp                            
  0x00C2E04B  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E04E  0000                    add      byte ptr [eax], al             
  0x00C2E050  06                      push     es                             
  0x00C2E051  1c0c                    sbb      al, 0xc                        
  0x00C2E053  0041c4                  add      byte ptr [ecx - 0x3c], al      
  0x00C2E056  2100                    and      dword ptr [eax], eax           
  0x00C2E058  40                      inc      eax                            
  0x00C2E059  0020                    add      byte ptr [eax], ah             
  0x00C2E05B  0000                    add      byte ptr [eax], al             
  0x00C2E05D  7056                    jo       0xc2e0b5                       
  0x00C2E05F  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E062  0000                    add      byte ptr [eax], al             
  0x00C2E064  c54001                  lds      eax, ptr [eax + 1]             
  0x00C2E067  00ff                    add      bh, bh                         
  0x00C2E069  0100                    add      dword ptr [eax], eax           
  0x00C2E06B  0002                    add      byte ptr [edx], al             
  0x00C2E06D  f4                      hlt                                     
  0x00C2E06E  05000c0000              add      eax, 0xc00                     
  0x00C2E073  0000                    add      byte ptr [eax], al             
  0x00C2E076  56                      push     esi                            
  0x00C2E077  00710b                  add      byte ptr [ecx + 0xb], dh       
  0x00C2E07A  0000                    add      byte ptr [eax], al             
  0x00C2E07C  41                      inc      ecx                            
  0x00C2E07D  c421                    les      esp, ptr [ecx]                 
  0x00C2E07F  0006                    add      byte ptr [esi], al             
  0x00C2E081  1d0c0041c4              sbb      eax, 0xc441000c                
  0x00C2E086  2100                    and      dword ptr [eax], eax           
  0x00C2E088  40                      inc      eax                            
  0x00C2E089  0020                    add      byte ptr [eax], ah             
  0x00C2E08B  0000                    add      byte ptr [eax], al             
  0x00C2E08D  7056                    jo       0xc2e0e5                       
  0x00C2E08F  00710b                  add      byte ptr [ecx + 0xb], dh       
  0x00C2E092  0000                    add      byte ptr [eax], al             
  0x00C2E094  00f4                    add      ah, dh                         
  0x00C2E096  60                      pushal                                  
  0x00C2E097  006c0b00                add      byte ptr [ebx + ecx], ch       
  0x00C2E09B  0000                    add      byte ptr [eax], al             
  0x00C2E09D  e056                    loopne   0xc2e0f5                       
  0x00C2E09F  00440020                add      byte ptr [eax + eax + 0x20], al 
  0x00C2E0A3  0000                    add      byte ptr [eax], al             
  0x00C2E0A5  60                      pushal                                  
  0x00C2E0A6  56                      push     esi                            
  0x00C2E0A7  0000                    add      byte ptr [eax], al             
  0x00C2E0A9  f4                      hlt                                     
  0x00C2E0AA  61                      popal                                   
  0x00C2E0AB  00660b                  add      byte ptr [esi + 0xb], ah       
  0x00C2E0AE  0000                    add      byte ptr [eax], al             
  0x00C2E0B0  0001                    add      byte ptr [ecx], al             
  0x00C2E0B2  3800                    cmp      byte ptr [eax], al             
  0x00C2E0B4  93                      xchg     ebx, eax                       
                                        ; XREF: 0x00C2E05D (cond_jump)
  0x00C2E0B5  030d0000f956            add      ecx, dword ptr [0x56f90000]    
  0x00C2E0BB  0003                    add      byte ptr [ebx], al             
  0x00C2E0BD  0020                    add      byte ptr [eax], ah             
  0x00C2E0BF  0001                    add      byte ptr [ecx], al             
  0x00C2E0C1  a5                      movsd    dword ptr es:[edi], dword ptr [esi] 
  0x00C2E0C2  050000f461              add      eax, 0x61f40000                
  0x00C2E0C7  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E0CA  0000                    add      byte ptr [eax], al             
  0x00C2E0CC  0009                    add      byte ptr [ecx], cl             
  0x00C2E0CE  3800                    cmp      byte ptr [eax], al             
  0x00C2E0D0  93                      xchg     ebx, eax                       
  0x00C2E0D1  030d0000f056            add      ecx, dword ptr [0x56f00000]    
  0x00C2E0D7  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2E0DA  0000                    add      byte ptr [eax], al             
  0x00C2E0DC  0300                    add      eax, dword ptr [eax]           
  0x00C2E0DE  2000                    and      byte ptr [eax], al             
  0x00C2E0E0  9f                      lahf                                    
  0x00C2E0E1  f4                      hlt                                     
  0x00C2E0E2  050000f444              add      eax, 0x44f40000                
  0x00C2E0E7  0001                    add      byte ptr [ecx], al             
  0x00C2E0E9  0000                    add      byte ptr [eax], al             
  0x00C2E0EB  0000                    add      byte ptr [eax], al             
  0x00C2E0ED  7044                    jo       0xc2e133                       
  0x00C2E0EF  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E0F2  0000                    add      byte ptr [eax], al             
  0x00C2E0F4  13f4                    adc      esi, esp                       
  0x00C2E0F6  61                      popal                                   
  0x00C2E0F7  001e                    add      byte ptr [esi], bl             
  0x00C2E0F9  0000                    add      byte ptr [eax], al             
  0x00C2E0FB  0000                    add      byte ptr [eax], al             
  0x00C2E0FD  61                      popal                                   
  0x00C2E0FE  56                      push     esi                            
  0x00C2E0FF  0000                    add      byte ptr [eax], al             
  0x00C2E101  0138                    add      dword ptr [eax], edi           
  0x00C2E103  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E109  002400                  add      byte ptr [eax + eax], ah       
  0x00C2E10C  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2E10F  001e                    add      byte ptr [esi], bl             
  0x00C2E111  0000                    add      byte ptr [eax], al             
  0x00C2E113  0000                    add      byte ptr [eax], al             
  0x00C2E115  f4                      hlt                                     
  0x00C2E116  61                      popal                                   
  0x00C2E117  001e                    add      byte ptr [esi], bl             
  0x00C2E119  0000                    add      byte ptr [eax], al             
  0x00C2E11B  0000                    add      byte ptr [eax], al             
  0x00C2E11D  0138                    add      dword ptr [eax], edi           
  0x00C2E11F  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E126  56                      push     esi                            
  0x00C2E127  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E12A  0000                    add      byte ptr [eax], al             
  0x00C2E12C  80410100                add      byte ptr [ecx + 1], 0          
  0x00C2E130  007056                  add      byte ptr [eax + 0x56], dh      
                                        ; XREF: 0x00C2E0ED (cond_jump)
  0x00C2E133  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E136  0000                    add      byte ptr [eax], al             
  0x00C2E138  00f0                    add      al, dh                         
  0x00C2E13A  56                      push     esi                            
  0x00C2E13B  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2E13E  0000                    add      byte ptr [eax], al             
  0x00C2E140  854301                  test     dword ptr [ebx + 1], eax       
  0x00C2E143  004124                  add      byte ptr [ecx + 0x24], al      
  0x00C2E146  0500000024              add      eax, 0x24000000                
  0x00C2E14B  0000                    add      byte ptr [eax], al             
  0x00C2E14D  7044                    jo       0xc2e193                       
  0x00C2E14F  001e                    add      byte ptr [esi], bl             
  0x00C2E151  0000                    add      byte ptr [eax], al             
  0x00C2E153  0000                    add      byte ptr [eax], al             
  0x00C2E155  ee                      out      dx, al                         
  0x00C2E156  2100                    and      dword ptr [eax], eax           
  0x00C2E158  855001                  test     dword ptr [eax + 1], edx       
  0x00C2E15B  000b                    add      byte ptr [ebx], cl             
  0x00C2E15D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2E15E  050000f044              add      eax, 0x44f00000                
  0x00C2E163  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E166  0000                    add      byte ptr [eax], al             
  0x00C2E168  40                      inc      eax                            
  0x00C2E169  0020                    add      byte ptr [eax], ah             
  0x00C2E16B  0000                    add      byte ptr [eax], al             
  0x00C2E16D  e421                    in       al, 0x21                       
  0x00C2E16F  0000                    add      byte ptr [eax], al             
  0x00C2E171  7056                    jo       0xc2e1c9                       
  0x00C2E173  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E176  0000                    add      byte ptr [eax], al             
  0x00C2E178  00f4                    add      ah, dh                         
  0x00C2E17A  61                      popal                                   
  0x00C2E17B  001e                    add      byte ptr [esi], bl             
  0x00C2E17D  0000                    add      byte ptr [eax], al             
  0x00C2E17F  0000                    add      byte ptr [eax], al             
  0x00C2E181  98                      cwde                                    
  0x00C2E182  2000                    and      byte ptr [eax], al             
  0x00C2E184  93                      xchg     ebx, eax                       
  0x00C2E185  030d00004e22            add      ecx, dword ptr [0x224e0000]    
  0x00C2E18B  0000                    add      byte ptr [eax], al             
  0x00C2E18D  7056                    jo       0xc2e1e5                       
  0x00C2E18F  00590b                  add      byte ptr [ecx + 0xb], bl       
  0x00C2E192  0000                    add      byte ptr [eax], al             
  0x00C2E194  00f4                    add      ah, dh                         
  0x00C2E196  61                      popal                                   
  0x00C2E197  001e                    add      byte ptr [esi], bl             
  0x00C2E199  0000                    add      byte ptr [eax], al             
  0x00C2E19B  0000                    add      byte ptr [eax], al             
  0x00C2E19D  1038                    adc      byte ptr [eax], bh             
  0x00C2E19F  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E1A5  f4                      hlt                                     
  0x00C2E1A6  61                      popal                                   
  0x00C2E1A7  001e                    add      byte ptr [esi], bl             
  0x00C2E1A9  0000                    add      byte ptr [eax], al             
  0x00C2E1AB  0000                    add      byte ptr [eax], al             
  0x00C2E1AD  1038                    adc      byte ptr [eax], bh             
  0x00C2E1AF  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E1B6  56                      push     esi                            
  0x00C2E1B7  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E1BA  0000                    add      byte ptr [eax], al             
  0x00C2E1BC  80600100                and      byte ptr [eax + 1], 0          
  0x00C2E1C0  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2E1C3  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E1C6  0000                    add      byte ptr [eax], al             
  0x00C2E1C8  0000                    add      byte ptr [eax], al             
  0x00C2E1CA  2400                    and      al, 0                          
  0x00C2E1CC  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2E1CF  001e                    add      byte ptr [esi], bl             
  0x00C2E1D1  0000                    add      byte ptr [eax], al             
  0x00C2E1D3  0000                    add      byte ptr [eax], al             
  0x00C2E1D6  56                      push     esi                            
  0x00C2E1D7  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2E1DA  0000                    add      byte ptr [eax], al             
  0x00C2E1DC  06                      push     es                             
  0x00C2E1DD  1d0c0000f0              sbb      eax, 0xf000000c                
  0x00C2E1E2  44                      inc      esp                            
  0x00C2E1E3  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E1E6  0000                    add      byte ptr [eax], al             
  0x00C2E1E8  44                      inc      esp                            
  0x00C2E1E9  0020                    add      byte ptr [eax], ah             
  0x00C2E1EB  0006                    add      byte ptr [esi], al             
  0x00C2E1ED  1c0c                    sbb      al, 0xc                        
  0x00C2E1EF  0010                    add      byte ptr [eax], dl             
  0x00C2E1F1  cc                      int3                                    
  0x00C2E1F2  06                      push     es                             
  0x00C2E1F3  000a                    add      byte ptr [edx], cl             
  0x00C2E1F5  0000                    add      byte ptr [eax], al             
  0x00C2E1F7  0000                    add      byte ptr [eax], al             
  0x00C2E1F9  f4                      hlt                                     
  0x00C2E1FA  61                      popal                                   
  0x00C2E1FB  001e                    add      byte ptr [esi], bl             
  0x00C2E1FD  0000                    add      byte ptr [eax], al             
  0x00C2E1FF  0000                    add      byte ptr [eax], al             
  0x00C2E201  0838                    or       byte ptr [eax], bh             
  0x00C2E203  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E20A  56                      push     esi                            
  0x00C2E20B  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E20E  0000                    add      byte ptr [eax], al             
  0x00C2E210  80480100                or       byte ptr [eax + 1], 0          
  0x00C2E214  007056                  add      byte ptr [eax + 0x56], dh      
  0x00C2E217  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E21A  0000                    add      byte ptr [eax], al             
  0x00C2E21C  00f0                    add      al, dh                         
  0x00C2E21E  56                      push     esi                            
  0x00C2E21F  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2E222  0000                    add      byte ptr [eax], al             
  0x00C2E224  06                      push     es                             
  0x00C2E225  1d0c0000f0              sbb      eax, 0xf000000c                
  0x00C2E22A  44                      inc      esp                            
  0x00C2E22B  005b0b                  add      byte ptr [ebx + 0xb], bl       
  0x00C2E22E  0000                    add      byte ptr [eax], al             
  0x00C2E230  44                      inc      esp                            
  0x00C2E231  0020                    add      byte ptr [eax], ah             
  0x00C2E233  0000                    add      byte ptr [eax], al             
  0x00C2E235  f4                      hlt                                     
  0x00C2E236  61                      popal                                   
  0x00C2E237  001e                    add      byte ptr [esi], bl             
  0x00C2E239  0000                    add      byte ptr [eax], al             
  0x00C2E23B  0000                    add      byte ptr [eax], al             
  0x00C2E23D  98                      cwde                                    
  0x00C2E23E  2100                    and      dword ptr [eax], eax           
  0x00C2E240  93                      xchg     ebx, eax                       
  0x00C2E241  030d0000f056            add      ecx, dword ptr [0x56f00000]    
  0x00C2E247  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E24A  0000                    add      byte ptr [eax], al             
  0x00C2E24C  00f0                    add      al, dh                         
  0x00C2E24E  44                      inc      esp                            
  0x00C2E24F  00700b                  add      byte ptr [eax + 0xb], dh       
  0x00C2E252  0000                    add      byte ptr [eax], al             
  0x00C2E254  44                      inc      esp                            
  0x00C2E255  0020                    add      byte ptr [eax], ah             
  0x00C2E257  000f                    add      byte ptr [edi], cl             
  0x00C2E259  0c05                    or       al, 5                          
  0x00C2E25B  0000                    add      byte ptr [eax], al             
  0x00C2E25E  56                      push     esi                            
  0x00C2E25F  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E262  0000                    add      byte ptr [eax], al             
  0x00C2E264  0300                    add      eax, dword ptr [eax]           
  0x00C2E266  2e000b                  add      byte ptr cs:[ebx], cl          
  0x00C2E269  f4                      hlt                                     
  0x00C2E26A  0500000024              add      eax, 0x24000000                
  0x00C2E26F  0000                    add      byte ptr [eax], al             
  0x00C2E271  7044                    jo       0xc2e2b7                       
  0x00C2E273  001e                    add      byte ptr [esi], bl             
  0x00C2E275  0000                    add      byte ptr [eax], al             
  0x00C2E277  0000                    add      byte ptr [eax], al             
  0x00C2E279  f4                      hlt                                     
  0x00C2E27A  61                      popal                                   
  0x00C2E27B  001e                    add      byte ptr [esi], bl             
  0x00C2E27D  0000                    add      byte ptr [eax], al             
  0x00C2E27F  0000                    add      byte ptr [eax], al             
  0x00C2E281  0838                    or       byte ptr [eax], bh             
  0x00C2E283  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E28A  56                      push     esi                            
  0x00C2E28B  00670b                  add      byte ptr [edi + 0xb], ah       
  0x00C2E28E  0000                    add      byte ptr [eax], al             
  0x00C2E290  844101                  test     byte ptr [ecx + 1], al         
  0x00C2E293  0003                    add      byte ptr [ebx], al             
  0x00C2E295  0020                    add      byte ptr [eax], ah             
  0x00C2E297  000b                    add      byte ptr [ebx], cl             
  0x00C2E299  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2E29A  050010cc06              add      eax, 0x6cc1000                 
  0x00C2E29F  0009                    add      byte ptr [ecx], cl             
  0x00C2E2A1  0000                    add      byte ptr [eax], al             
  0x00C2E2A3  0013                    add      byte ptr [ebx], dl             
  0x00C2E2A5  0020                    add      byte ptr [eax], ah             
  0x00C2E2A7  0000                    add      byte ptr [eax], al             
  0x00C2E2A9  7056                    jo       0xc2e301                       
  0x00C2E2AB  0010                    add      byte ptr [eax], dl             
  0x00C2E2AD  0000                    add      byte ptr [eax], al             
  0x00C2E2AF  0000                    add      byte ptr [eax], al             
  0x00C2E2B1  f4                      hlt                                     
  0x00C2E2B2  61                      popal                                   
  0x00C2E2B3  0010                    add      byte ptr [eax], dl             
  0x00C2E2B5  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2E271 (cond_jump)
  0x00C2E2B7  0000                    add      byte ptr [eax], al             
  0x00C2E2B9  0838                    or       byte ptr [eax], bh             
  0x00C2E2BB  006103                  add      byte ptr [ecx + 3], ah         
  0x00C2E2BE  0d00000000              or       eax, 0                         
  0x00C2E2C3  0000                    add      byte ptr [eax], al             
  0x00C2E2C5  7045                    jo       0xc2e30c                       
  0x00C2E2C7  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2E2CA  0000                    add      byte ptr [eax], al             
  0x00C2E2CC  007057                  add      byte ptr [eax + 0x57], dh      
  0x00C2E2CF  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2E2D2  0000                    add      byte ptr [eax], al             
  0x00C2E2D4  007062                  add      byte ptr [eax + 0x62], dh      
  0x00C2E2D7  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2E2DA  0000                    add      byte ptr [eax], al             
  0x00C2E2DC  22f4                    and      dh, ah                         
  0x00C2E2DE  0500ffff00              add      eax, 0xffff00                  
  0x00C2E2E3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E2E6  0000                    add      byte ptr [eax], al             
  0x00C2E2E8  0001                    add      byte ptr [ecx], al             
  0x00C2E2EA  3900                    cmp      dword ptr [eax], eax           
  0x00C2E2EC  007071                  add      byte ptr [eax + 0x71], dh      
  0x00C2E2EF  0002                    add      byte ptr [edx], al             
  0x00C2E2F1  0000                    add      byte ptr [eax], al             
  0x00C2E2F3  0000                    add      byte ptr [eax], al             
  0x00C2E2F5  7071                    jo       0xc2e368                       
  0x00C2E2F7  0003                    add      byte ptr [ebx], al             
  0x00C2E2F9  0000                    add      byte ptr [eax], al             
  0x00C2E2FB  0000                    add      byte ptr [eax], al             
  0x00C2E2FD  7071                    jo       0xc2e370                       
  0x00C2E2FF  000400                  add      byte ptr [eax + eax], al       
  0x00C2E302  0000                    add      byte ptr [eax], al             
  0x00C2E304  0000                    add      byte ptr [eax], al             
  0x00C2E306  360000                  add      byte ptr ss:[eax], al          
  0x00C2E30A  44                      inc      esp                            
  0x00C2E30B  00970b000010            add      byte ptr [edi + 0x1000000b], dl 
  0x00C2E311  c406                    les      eax, ptr [esi]                 
  0x00C2E313  001d00000000            add      byte ptr [0], bl               
  0x00C2E319  f4                      hlt                                     
  0x00C2E31A  56                      push     esi                            
  0x00C2E31B  00a50b000000            add      byte ptr [ebp + 0xb], ah       
  0x00C2E321  c422                    les      esp, ptr [edx]                 
  0x00C2E323  004000                  add      byte ptr [eax], al             
  0x00C2E326  2000                    and      byte ptr [eax], al             
  0x00C2E328  0090210000e0            add      byte ptr [eax - 0x1fffffdf], dl 
  0x00C2E32E  7000                    jo       0xc2e330                       
                                        ; XREF: 0x00C2E32E (cond_jump)
  0x00C2E330  00c4                    add      ah, al                         
  0x00C2E332  2200                    and      al, byte ptr [eax]             
  0x00C2E334  00f4                    add      ah, dh                         
  0x00C2E336  46                      inc      esi                            
  0x00C2E337  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2E33D  f4                      hlt                                     
  0x00C2E33E  44                      inc      esp                            
  0x00C2E33F  0000                    add      byte ptr [eax], al             
  0x00C2E341  0100                    add      dword ptr [eax], eax           
  0x00C2E343  002e                    add      byte ptr [esi], ch             
  0x00C2E345  1d0c004000              sbb      eax, 0x40000c                  
  0x00C2E34A  2000                    and      byte ptr [eax], al             
  0x00C2E34C  0090210000c4            add      byte ptr [eax - 0x3bffffdf], dl 
  0x00C2E352  2200                    and      al, byte ptr [eax]             
  0x00C2E354  00f4                    add      ah, dh                         
  0x00C2E356  46                      inc      esi                            
  0x00C2E357  00b5000000d0            add      byte ptr [ebp - 0x30000000], dh 
  0x00C2E35E  44                      inc      esp                            
  0x00C2E35F  00720b                  add      byte ptr [edx + 0xb], dh       
  0x00C2E362  0000                    add      byte ptr [eax], al             
  0x00C2E364  2e1d0c004000            sbb      eax, 0x40000c                  
  0x00C2E36A  2000                    and      byte ptr [eax], al             
  0x00C2E36C  009521000070            add      byte ptr [ebp + 0x70000021], dl 
  0x00C2E372  6600410b                add      byte ptr [ecx + 0xb], al       
  0x00C2E376  0000                    add      byte ptr [eax], al             
  0x00C2E378  8b040d0000f066          mov      eax, dword ptr [ecx + 0x66f00000] 
  0x00C2E37F  00410b                  add      byte ptr [ecx + 0xb], al       
  0x00C2E382  0000                    add      byte ptr [eax], al             
  0x00C2E384  005e20                  add      byte ptr [esi + 0x20], bl      
  0x00C2E387  0000                    add      byte ptr [eax], al             
  0x00C2E38A  56                      push     esi                            
  0x00C2E38B  007e0b                  add      byte ptr [esi + 0xb], bh       
  0x00C2E38E  0000                    add      byte ptr [eax], al             
  0x00C2E390  0300                    add      eax, dword ptr [eax]           
  0x00C2E392  2000                    and      byte ptr [eax], al             
  0x00C2E394  07                      pop      es                             
  0x00C2E395  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2E396  0500000738              add      eax, 0x38070000                
  0x00C2E39B  0000                    add      byte ptr [eax], al             
  0x00C2E39D  f4                      hlt                                     
  0x00C2E39E  60                      pushal                                  
  0x00C2E39F  008904000000            add      byte ptr [ecx + 4], cl         
  0x00C2E3A5  f4                      hlt                                     
  0x00C2E3A6  650039                  add      byte ptr gs:[ecx], bh          
  0x00C2E3A9  0b00                    or       eax, dword ptr [eax]           
  0x00C2E3AB  008b040d000c            add      byte ptr [ebx + 0xc000d04], cl 
  0x00C2E3B1  0000                    add      byte ptr [eax], al             
  0x00C2E3B3  0000                    add      byte ptr [eax], al             
  0x00C2E3B6  6200                    bound    eax, qword ptr [eax]           
  0x00C2E3B8  55                      push     ebp                            
  0x00C2E3B9  0b00                    or       eax, dword ptr [eax]           
  0x00C2E3BB  0022                    add      byte ptr [edx], ah             
  0x00C2E3BE  0500470b00              add      eax, 0xb4700                   
  0x00C2E3C3  0000                    add      byte ptr [eax], al             
  0x00C2E3C6  57                      push     edi                            
  0x00C2E3C7  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2E3CA  0000                    add      byte ptr [eax], al             
  0x00C2E3CC  00f0                    add      al, dh                         
  0x00C2E3CE  45                      inc      ebp                            
  0x00C2E3CF  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2E3D2  0000                    add      byte ptr [eax], al             
  0x00C2E3D4  0000                    add      byte ptr [eax], al             
  0x00C2E3D6  2400                    and      al, 0                          
  0x00C2E3D8  007044                  add      byte ptr [eax + 0x44], dh      
  0x00C2E3DB  001e                    add      byte ptr [esi], bl             
  0x00C2E3DD  0000                    add      byte ptr [eax], al             
  0x00C2E3DF  0000                    add      byte ptr [eax], al             
  0x00C2E3E2  56                      push     esi                            
  0x00C2E3E3  006e0b                  add      byte ptr [esi + 0xb], ch       
  0x00C2E3E6  0000                    add      byte ptr [eax], al             
  0x00C2E3E8  855001                  test     dword ptr [eax + 1], edx       
  0x00C2E3EB  0009                    add      byte ptr [ecx], cl             
  0x00C2E3ED  94                      xchg     esp, eax                       
  0x00C2E3EE  0500845001              add      eax, 0x1508400                 
  0x00C2E3F3  0000                    add      byte ptr [eax], al             
  0x00C2E3F5  7054                    jo       0xc2e44b                       
  0x00C2E3F7  006e0b                  add      byte ptr [esi + 0xb], ch       
  0x00C2E3FA  0000                    add      byte ptr [eax], al             
  0x00C2E3FC  00f4                    add      ah, dh                         
  0x00C2E3FE  61                      popal                                   
  0x00C2E3FF  001e                    add      byte ptr [esi], bl             
  0x00C2E401  0000                    add      byte ptr [eax], al             
  0x00C2E403  0000                    add      byte ptr [eax], al             
  0x00C2E405  1038                    adc      byte ptr [eax], bh             
  0x00C2E407  0093030d00d5            add      byte ptr [ebx - 0x2afff2fd], dl 
  0x00C2E40D  0f05                    syscall                                 
  0x00C2E40F  0003                    add      byte ptr [ebx], al             
  0x00C2E411  0020                    add      byte ptr [eax], ah             
  0x00C2E413  0005a4050000            add      byte ptr [0x5a4], al           
  0x00C2E419  f4                      hlt                                     
  0x00C2E41A  61                      popal                                   
  0x00C2E41B  001e                    add      byte ptr [esi], bl             
  0x00C2E41D  0000                    add      byte ptr [eax], al             
  0x00C2E41F  0000                    add      byte ptr [eax], al             
  0x00C2E421  98                      cwde                                    
  0x00C2E422  2100                    and      dword ptr [eax], eax           
  0x00C2E424  93                      xchg     ebx, eax                       
  0x00C2E425  030d00130020            add      ecx, dword ptr [0x20001300]    
  0x00C2E42B  0000                    add      byte ptr [eax], al             
  0x00C2E42D  7056                    jo       0xc2e485                       
  0x00C2E42F  0001                    add      byte ptr [ecx], al             
  0x00C2E431  0000                    add      byte ptr [eax], al             
  0x00C2E433  0000                    add      byte ptr [eax], al             
  0x00C2E435  7056                    jo       0xc2e48d                       
  0x00C2E437  001e                    add      byte ptr [esi], bl             
  0x00C2E439  0000                    add      byte ptr [eax], al             
  0x00C2E43B  0000                    add      byte ptr [eax], al             
  0x00C2E43D  f4                      hlt                                     
  0x00C2E43E  61                      popal                                   
  0x00C2E43F  001e                    add      byte ptr [esi], bl             
  0x00C2E441  0000                    add      byte ptr [eax], al             
  0x00C2E443  0000                    add      byte ptr [eax], al             
  0x00C2E445  0138                    add      dword ptr [eax], edi           
  0x00C2E447  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E44D  f4                      hlt                                     
  0x00C2E44E  61                      popal                                   
  0x00C2E44F  0001                    add      byte ptr [ecx], al             
  0x00C2E451  0000                    add      byte ptr [eax], al             
  0x00C2E453  0000                    add      byte ptr [eax], al             
  0x00C2E455  0138                    add      dword ptr [eax], edi           
  0x00C2E457  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E45D  f4                      hlt                                     
  0x00C2E45E  61                      popal                                   
  0x00C2E45F  001e                    add      byte ptr [esi], bl             
  0x00C2E461  0000                    add      byte ptr [eax], al             
  0x00C2E463  0000                    add      byte ptr [eax], al             
  0x00C2E465  1038                    adc      byte ptr [eax], bh             
  0x00C2E467  0093030d0000            add      byte ptr [ebx + 0xd03], dl     
  0x00C2E46D  7045                    jo       0xc2e4b4                       
  0x00C2E46F  00560b                  add      byte ptr [esi + 0xb], dl       
  0x00C2E472  0000                    add      byte ptr [eax], al             
  0x00C2E474  007057                  add      byte ptr [eax + 0x57], dh      
  0x00C2E477  00570b                  add      byte ptr [edi + 0xb], dl       
  0x00C2E47A  0000                    add      byte ptr [eax], al             
  0x00C2E47C  007062                  add      byte ptr [eax + 0x62], dh      
  0x00C2E47F  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2E482  0000                    add      byte ptr [eax], al             
  0x00C2E484  22f4                    and      dh, ah                         
  0x00C2E486  0500ffff00              add      eax, 0xffff00                  
  0x00C2E48B  0000                    add      byte ptr [eax], al             
  0x00C2E48E  56                      push     esi                            
  0x00C2E48F  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2E492  0000                    add      byte ptr [eax], al             
  0x00C2E494  00f0                    add      al, dh                         
  0x00C2E496  44                      inc      esp                            
  0x00C2E497  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E49A  0000                    add      byte ptr [eax], al             
  0x00C2E49C  44                      inc      esp                            
  0x00C2E49D  0020                    add      byte ptr [eax], ah             
  0x00C2E49F  0000                    add      byte ptr [eax], al             
  0x00C2E4A1  c421                    les      esp, ptr [ecx]                 
  0x00C2E4A3  0000                    add      byte ptr [eax], al             
  0x00C2E4A5  f4                      hlt                                     
  0x00C2E4A6  45                      inc      ebp                            
  0x00C2E4A7  0010                    add      byte ptr [eax], dl             
  0x00C2E4A9  0000                    add      byte ptr [eax], al             
  0x00C2E4AB  00a00020002e            add      byte ptr [eax + 0x2e002000], ah 
  0x00C2E4B1  1d0c0000f0              sbb      eax, 0xf000000c                
  0x00C2E4B6  44                      inc      esp                            
  0x00C2E4B7  009d0b000040            add      byte ptr [ebp + 0x4000000b], bl 
  0x00C2E4BD  0020                    add      byte ptr [eax], ah             
  0x00C2E4BF  0000                    add      byte ptr [eax], al             
  0x00C2E4C1  7056                    jo       0xc2e519                       
  0x00C2E4C3  009d0b00000c            add      byte ptr [ebp + 0xc00000b], bl 
  0x00C2E4C9  0000                    add      byte ptr [eax], al             
  0x00C2E4CB  0000                    add      byte ptr [eax], al             
  0x00C2E4CE  56                      push     esi                            
  0x00C2E4CF  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2E4D2  0000                    add      byte ptr [eax], al             
  0x00C2E4D4  854001                  test     dword ptr [eax + 1], eax       
  0x00C2E4D7  0010                    add      byte ptr [eax], dl             
  0x00C2E4D9  2405                    and      al, 5                          
  0x00C2E4DB  0000                    add      byte ptr [eax], al             
  0x00C2E4DE  60                      pushal                                  
  0x00C2E4DF  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E4E2  0000                    add      byte ptr [eax], al             
  0x00C2E4E4  005820                  add      byte ptr [eax + 0x20], bl      
  0x00C2E4E7  0020                    add      byte ptr [eax], ah             
  0x00C2E4EA  0500470b00              add      eax, 0xb4700                   
  0x00C2E4EF  0000                    add      byte ptr [eax], al             
  0x00C2E4F2  56                      push     esi                            
  0x00C2E4F3  00580b                  add      byte ptr [eax + 0xb], bl       
  0x00C2E4F6  0000                    add      byte ptr [eax], al             
  0x00C2E4F8  844101                  test     byte ptr [ecx + 1], al         
  0x00C2E4FB  001b                    add      byte ptr [ebx], bl             
  0x00C2E4FD  d821                    fsub     dword ptr [ecx]                
  0x00C2E4FF  00b3030d0000            add      byte ptr [ebx + 0xd03], dh     
  0x00C2E505  7055                    jo       0xc2e55c                       
  0x00C2E507  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E50A  0000                    add      byte ptr [eax], al             
  0x00C2E50C  20f4                    and      ah, dh                         
  0x00C2E50E  0500ffff00              add      eax, 0xffff00                  
  0x00C2E513  00da                    add      dl, bl                         
  0x00C2E515  0c05                    or       al, 5                          
  0x00C2E517  008541010003            add      byte ptr [ebp + 0x3000141], al 
  0x00C2E51D  a4                      movsb    byte ptr es:[edi], byte ptr [esi] 
  0x00C2E51E  0500854201              add      eax, 0x1428500                 
  0x00C2E523  000f                    add      byte ptr [edi], cl             
  0x00C2E525  2405                    and      al, 5                          
  0x00C2E527  0000                    add      byte ptr [eax], al             
  0x00C2E52A  60                      pushal                                  
  0x00C2E52B  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E52E  0000                    add      byte ptr [eax], al             
  0x00C2E530  20f0                    and      al, dh                         
  0x00C2E532  0500470b00              add      eax, 0xb4700                   
  0x00C2E537  001b                    add      byte ptr [ebx], bl             
  0x00C2E53A  7000                    jo       0xc2e53c                       
                                        ; XREF: 0x00C2E53A (cond_jump)
  0x00C2E53C  58                      pop      eax                            
  0x00C2E53D  0b00                    or       eax, dword ptr [eax]           
  0x00C2E53F  0000                    add      byte ptr [eax], al             
  0x00C2E542  55                      push     ebp                            
  0x00C2E543  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E546  0000                    add      byte ptr [eax], al             
  0x00C2E548  b303                    mov      bl, 3                          
  0x00C2E54A  0d00007055              or       eax, 0x55700000                
  0x00C2E54F  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E552  0000                    add      byte ptr [eax], al             
  0x00C2E554  20f4                    and      ah, dh                         
  0x00C2E556  0500ffff00              add      eax, 0xffff00                  
  0x00C2E55B  00c8                    add      al, cl                         
  0x00C2E55D  0c05                    or       al, 5                          
  0x00C2E55F  008543010082            add      byte ptr [ebp - 0x7dfffebd], al 
  0x00C2E565  2405                    and      al, 5                          
  0x00C2E567  0000                    add      byte ptr [eax], al             
  0x00C2E56A  56                      push     esi                            
  0x00C2E56B  00590b                  add      byte ptr [ecx + 0xb], bl       
  0x00C2E56E  0000                    add      byte ptr [eax], al             
  0x00C2E570  00f0                    add      al, dh                         
  0x00C2E572  44                      inc      esp                            
  0x00C2E573  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E576  0000                    add      byte ptr [eax], al             
  0x00C2E578  44                      inc      esp                            
  0x00C2E579  0020                    add      byte ptr [eax], ah             
  0x00C2E57B  008041010000            add      byte ptr [eax + 0x141], al     
  0x00C2E581  d821                    fsub     dword ptr [ecx]                
  0x00C2E583  0000                    add      byte ptr [eax], al             
  0x00C2E585  90                      nop                                     
  0x00C2E586  2000                    and      byte ptr [eax], al             
  0x00C2E588  20f0                    and      al, dh                         
  0x00C2E58A  0500470b00              add      eax, 0xb4700                   
  0x00C2E58F  0000                    add      byte ptr [eax], al             
  0x00C2E592  55                      push     ebp                            
  0x00C2E593  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E596  0000                    add      byte ptr [eax], al             
  0x00C2E598  b303                    mov      bl, 3                          
  0x00C2E59A  0d00911e0c              or       eax, 0xc1e9100                 
  0x00C2E59F  0000                    add      byte ptr [eax], al             
  0x00C2E5A2  61                      popal                                   
  0x00C2E5A3  00590b                  add      byte ptr [ecx + 0xb], bl       
  0x00C2E5A6  0000                    add      byte ptr [eax], al             
  0x00C2E5A8  006155                  add      byte ptr [ecx + 0x55], ah      
  0x00C2E5AB  00911c0c0000            add      byte ptr [ecx + 0xc1c], dl     
  0x00C2E5B2  44                      inc      esp                            
  0x00C2E5B3  009d0b000000            add      byte ptr [ebp + 0xb], bl       
  0x00C2E5B9  082500a00020            or       byte ptr [0x2000a000], ah      
  0x00C2E5BF  0000                    add      byte ptr [eax], al             
  0x00C2E5C2  44                      inc      esp                            
  0x00C2E5C3  009b0b000041            add      byte ptr [ebx + 0x4100000b], bl 
  0x00C2E5C9  c421                    les      esp, ptr [ecx]                 
  0x00C2E5CB  00440020                add      byte ptr [eax + eax + 0x20], al 
  0x00C2E5CF  0000                    add      byte ptr [eax], al             
  0x00C2E5D1  0423                    add      al, 0x23                       
  0x00C2E5D3  00440020                add      byte ptr [eax + eax + 0x20], al 
  0x00C2E5D7  0000                    add      byte ptr [eax], al             
  0x00C2E5D9  9a200000d82100          lcall    0x21, 0xd8000020               
  0x00C2E5E0  00f0                    add      al, dh                         
  0x00C2E5E2  56                      push     esi                            
  0x00C2E5E3  00590b                  add      byte ptr [ecx + 0xb], bl       
  0x00C2E5E6  0000                    add      byte ptr [eax], al             
  0x00C2E5E8  80410100                add      byte ptr [ecx + 1], 0          
  0x00C2E5EC  00d0                    add      al, dl                         
  0x00C2E5EE  2100                    and      dword ptr [eax], eax           
  0x00C2E5F0  ca030d                  retf     0xd03                          
  0x00C2E5F3  0000                    add      byte ptr [eax], al             
  0x00C2E5F6  56                      push     esi                            
  0x00C2E5F7  00590b                  add      byte ptr [ecx + 0xb], bl       
  0x00C2E5FA  0000                    add      byte ptr [eax], al             
  0x00C2E5FC  80410100                add      byte ptr [ecx + 1], 0          
  0x00C2E600  00d0                    add      al, dl                         
  0x00C2E602  2100                    and      dword ptr [eax], eax           
  0x00C2E604  91                      xchg     ecx, eax                       
  0x00C2E605  1e                      push     ds                             
  0x00C2E606  0c00                    or       al, 0                          
  0x00C2E608  006055                  add      byte ptr [eax + 0x55], ah      
  0x00C2E60B  00911c0c0000            add      byte ptr [ecx + 0xc1c], dl     
  0x00C2E612  56                      push     esi                            
  0x00C2E613  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2E616  0000                    add      byte ptr [eax], al             
  0x00C2E618  00f0                    add      al, dh                         
  0x00C2E61A  44                      inc      esp                            
  0x00C2E61B  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E61E  0000                    add      byte ptr [eax], al             
  0x00C2E620  44                      inc      esp                            
  0x00C2E621  0020                    add      byte ptr [eax], ah             
  0x00C2E623  0000                    add      byte ptr [eax], al             
  0x00C2E625  44                      inc      esp                            
  0x00C2E626  2300                    and      eax, dword ptr [eax]           
  0x00C2E628  44                      inc      esp                            
  0x00C2E629  0020                    add      byte ptr [eax], ah             
  0x00C2E62B  0000                    add      byte ptr [eax], al             
  0x00C2E62D  0423                    add      al, 0x23                       
  0x00C2E62F  00440020                add      byte ptr [eax + eax + 0x20], al 
  0x00C2E633  0000                    add      byte ptr [eax], al             
  0x00C2E635  d821                    fsub     dword ptr [ecx]                
  0x00C2E637  0000                    add      byte ptr [eax], al             
  0x00C2E63A  56                      push     esi                            
  0x00C2E63B  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E63E  0000                    add      byte ptr [eax], al             
  0x00C2E640  40                      inc      eax                            
  0x00C2E641  0020                    add      byte ptr [eax], ah             
  0x00C2E643  0000                    add      byte ptr [eax], al             
  0x00C2E645  44                      inc      esp                            
  0x00C2E646  2300                    and      eax, dword ptr [eax]           
  0x00C2E648  40                      inc      eax                            
  0x00C2E649  0020                    add      byte ptr [eax], ah             
  0x00C2E64B  0000                    add      byte ptr [eax], al             
  0x00C2E64D  d021                    shl      byte ptr [ecx], 1              
  0x00C2E64F  001b                    add      byte ptr [ebx], bl             
  0x00C2E651  0020                    add      byte ptr [eax], ah             
  0x00C2E653  00b3030d0000            add      byte ptr [ebx + 0xd03], dh     
  0x00C2E659  7055                    jo       0xc2e6b0                       
  0x00C2E65B  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E65E  0000                    add      byte ptr [eax], al             
  0x00C2E660  20f4                    and      ah, dh                         
  0x00C2E662  0500ffff00              add      eax, 0xffff00                  
  0x00C2E667  00450c                  add      byte ptr [ebp + 0xc], al       
  0x00C2E66A  0500854401              add      eax, 0x1448500                 
  0x00C2E66F  000f                    add      byte ptr [edi], cl             
  0x00C2E671  2405                    and      al, 5                          
  0x00C2E673  0020                    add      byte ptr [eax], ah             
  0x00C2E676  0500470b00              add      eax, 0xb4700                   
  0x00C2E67B  0000                    add      byte ptr [eax], al             
  0x00C2E67E  60                      pushal                                  
  0x00C2E67F  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E682  0000                    add      byte ptr [eax], al             
  0x00C2E684  00f0                    add      al, dh                         
  0x00C2E686  7000                    jo       0xc2e688                       
                                        ; XREF: 0x00C2E686 (cond_jump)
  0x00C2E688  58                      pop      eax                            
  0x00C2E689  0b00                    or       eax, dword ptr [eax]           
  0x00C2E68B  0000                    add      byte ptr [eax], al             
  0x00C2E68E  57                      push     edi                            
  0x00C2E68F  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E692  0000                    add      byte ptr [eax], al             
  0x00C2E694  b303                    mov      bl, 3                          
  0x00C2E696  0d00007055              or       eax, 0x55700000                
  0x00C2E69B  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E69E  0000                    add      byte ptr [eax], al             
  0x00C2E6A0  20f4                    and      ah, dh                         
  0x00C2E6A2  0500ffff00              add      eax, 0xffff00                  
  0x00C2E6A7  00150c050085            add      byte ptr [0x8500050c], dl      
  0x00C2E6AD  45                      inc      ebp                            
  0x00C2E6AE  0100                    add      dword ptr [eax], eax           
                                        ; XREF: 0x00C2E659 (cond_jump)
  0x00C2E6B0  1324050020f005          adc      esp, dword ptr [eax + 0x5f02000] 
  0x00C2E6B7  00470b                  add      byte ptr [edi + 0xb], al       
  0x00C2E6BA  0000                    add      byte ptr [eax], al             
  0x00C2E6BC  00f0                    add      al, dh                         
  0x00C2E6BE  60                      pushal                                  
  0x00C2E6BF  00450b                  add      byte ptr [ebp + 0xb], al       
  0x00C2E6C2  0000                    add      byte ptr [eax], al             
  0x00C2E6C4  00f0                    add      al, dh                         
  0x00C2E6C6  7000                    jo       0xc2e6c8                       
                                        ; XREF: 0x00C2E6C6 (cond_jump)
  0x00C2E6C8  58                      pop      eax                            
  0x00C2E6C9  0b00                    or       eax, dword ptr [eax]           
  0x00C2E6CB  0000                    add      byte ptr [eax], al             
  0x00C2E6CE  57                      push     edi                            
  0x00C2E6CF  005a0b                  add      byte ptr [edx + 0xb], bl       
  0x00C2E6D2  0000                    add      byte ptr [eax], al             
  0x00C2E6D4  b303                    mov      bl, 3                          
  0x00C2E6D6  0d0000f056              or       eax, 0x56f00000                
  0x00C2E6DB  00550b                  add      byte ptr [ebp + 0xb], dl       
  0x00C2E6DE  0000                    add      byte ptr [eax], al             
  0x00C2E6E0  844101                  test     byte ptr [ecx + 1], al         
  0x00C2E6E3  0000                    add      byte ptr [eax], al             
  0x00C2E6E5  d021                    shl      byte ptr [ecx], 1              
  0x00C2E6E7  00911e0c0000            add      byte ptr [ecx + 0xc1e], dl     
  0x00C2E6ED  60                      pushal                                  
  0x00C2E6EE  55                      push     ebp                            
  0x00C2E6EF  00911c0c0020            add      byte ptr [ecx + 0x20000c1c], dl 
  0x00C2E6F5  f4                      hlt                                     
  0x00C2E6F6  0500ffff00              add      eax, 0xffff00                  
  0x00C2E6FB  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E6FE  0000                    add      byte ptr [eax], al             
  0x00C2E700  00f4                    add      ah, dh                         
  0x00C2E702  56                      push     esi                            
  0x00C2E703  0012                    add      byte ptr [edx], dl             
  0x00C2E705  0000                    add      byte ptr [eax], al             
  0x00C2E707  0000                    add      byte ptr [eax], al             
  0x00C2E709  f4                      hlt                                     
  0x00C2E70A  57                      push     edi                            
  0x00C2E70B  0001                    add      byte ptr [ecx], al             
  0x00C2E70D  0000                    add      byte ptr [eax], al             
  0x00C2E70F  0000                    add      byte ptr [eax], al             
  0x00C2E711  f4                      hlt                                     
  0x00C2E712  7000                    jo       0xc2e714                       
                                        ; XREF: 0x00C2E712 (cond_jump)
  0x00C2E714  90                      nop                                     
  0x00C2E715  0300                    add      eax, dword ptr [eax]           
  0x00C2E717  0000                    add      byte ptr [eax], al             
  0x00C2E719  0039                    add      byte ptr [ecx], bh             
  0x00C2E71B  0000                    add      byte ptr [eax], al             
  0x00C2E71D  f4                      hlt                                     
  0x00C2E71E  60                      pushal                                  
  0x00C2E71F  0000                    add      byte ptr [eax], al             
  0x00C2E721  0100                    add      dword ptr [eax], eax           
  0x00C2E723  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2E729  0100                    add      dword ptr [eax], eax           
  0x00C2E72B  0003                    add      byte ptr [ebx], al             
  0x00C2E72D  0020                    add      byte ptr [eax], ah             
  0x00C2E72F  0000                    add      byte ptr [eax], al             
  0x00C2E731  2405                    and      al, 5                          
  0x00C2E733  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E736  0000                    add      byte ptr [eax], al             
  0x00C2E738  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2E73B  00fd                    add      ch, bh                         
  0x00C2E73D  0000                    add      byte ptr [eax], al             
  0x00C2E73F  0000                    add      byte ptr [eax], al             
  0x00C2E741  7044                    jo       0xc2e787                       
  0x00C2E743  00fe                    add      dh, bh                         
  0x00C2E745  0000                    add      byte ptr [eax], al             
  0x00C2E747  0000                    add      byte ptr [eax], al             
  0x00C2E749  7060                    jo       0xc2e7ab                       
  0x00C2E74B  00ff                    add      bh, bh                         
  0x00C2E74D  0000                    add      byte ptr [eax], al             
  0x00C2E74F  0003                    add      byte ptr [ebx], al             
  0x00C2E751  0020                    add      byte ptr [eax], ah             
  0x00C2E753  0010                    add      byte ptr [eax], dl             
  0x00C2E755  2405                    and      al, 5                          
  0x00C2E757  0000                    add      byte ptr [eax], al             
  0x00C2E759  f4                      hlt                                     
  0x00C2E75A  56                      push     esi                            
  0x00C2E75B  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E75E  0000                    add      byte ptr [eax], al             
  0x00C2E760  00f4                    add      ah, dh                         
  0x00C2E762  7000                    jo       0xc2e764                       
                                        ; XREF: 0x00C2E762 (cond_jump)
  0x00C2E764  da0500000000            fiadd    dword ptr [0]                  
  0x00C2E76A  3900                    cmp      dword ptr [eax], eax           
  0x00C2E76C  80f00b                  xor      al, 0xb                        
  0x00C2E76F  008001000003            add      byte ptr [eax + 0x3000001], al 
  0x00C2E775  0020                    add      byte ptr [eax], ah             
  0x00C2E777  0000                    add      byte ptr [eax], al             
  0x00C2E779  2405                    and      al, 5                          
  0x00C2E77B  0000                    add      byte ptr [eax], al             
  0x00C2E77E  56                      push     esi                            
  0x00C2E77F  00fd                    add      ch, bh                         
  0x00C2E781  0000                    add      byte ptr [eax], al             
  0x00C2E783  0000                    add      byte ptr [eax], al             
  0x00C2E786  60                      pushal                                  
                                        ; XREF: 0x00C2E741 (cond_jump)
  0x00C2E787  00ff                    add      bh, bh                         
  0x00C2E789  0000                    add      byte ptr [eax], al             
  0x00C2E78B  0000                    add      byte ptr [eax], al             
  0x00C2E78E  44                      inc      esp                            
  0x00C2E78F  00fe                    add      dh, bh                         
  0x00C2E791  0000                    add      byte ptr [eax], al             
  0x00C2E793  0003                    add      byte ptr [ebx], al             
  0x00C2E795  f4                      hlt                                     
  0x00C2E796  45                      inc      ebp                            
  0x00C2E797  00da                    add      dl, bl                         
  0x00C2E799  0500000324              add      eax, 0x24030000                
  0x00C2E79E  0500007045              add      eax, 0x45700000                
  0x00C2E7A3  00480b                  add      byte ptr [eax + 0xb], cl       
  0x00C2E7A6  0000                    add      byte ptr [eax], al             
  0x00C2E7A8  0098200000f0            add      byte ptr [eax - 0xfffffe0], bl 
  0x00C2E7AE  56                      push     esi                            
  0x00C2E7AF  00480b                  add      byte ptr [eax + 0xb], cl       
  0x00C2E7B2  0000                    add      byte ptr [eax], al             
  0x00C2E7B4  40                      inc      eax                            
  0x00C2E7B5  99                      cdq                                     
  0x00C2E7B6  2100                    and      dword ptr [eax], eax           
  0x00C2E7B8  007054                  add      byte ptr [eax + 0x54], dh      
  0x00C2E7BB  00480b                  add      byte ptr [eax + 0xb], cl       
  0x00C2E7BE  0000                    add      byte ptr [eax], al             
  0x00C2E7C0  00f4                    add      ah, dh                         
  0x00C2E7C2  56                      push     esi                            
  0x00C2E7C3  0009                    add      byte ptr [ecx], cl             
  0x00C2E7C5  0000                    add      byte ptr [eax], al             
  0x00C2E7C7  0000                    add      byte ptr [eax], al             
  0x00C2E7C9  f4                      hlt                                     
  0x00C2E7CA  57                      push     edi                            
  0x00C2E7CB  0002                    add      byte ptr [edx], al             
  0x00C2E7CD  0000                    add      byte ptr [eax], al             
  0x00C2E7CF  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2E7D5  0100                    add      dword ptr [eax], eax           
  0x00C2E7D7  0003                    add      byte ptr [ebx], al             
  0x00C2E7D9  0020                    add      byte ptr [eax], ah             
  0x00C2E7DB  0000                    add      byte ptr [eax], al             
  0x00C2E7DD  2405                    and      al, 5                          
  0x00C2E7DF  0000                    add      byte ptr [eax], al             
  0x00C2E7E2  56                      push     esi                            
  0x00C2E7E3  00fd                    add      ch, bh                         
  0x00C2E7E5  0000                    add      byte ptr [eax], al             
  0x00C2E7E7  008545010009            add      byte ptr [ebp + 0x9000145], al 
  0x00C2E7ED  2405                    and      al, 5                          
  0x00C2E7EF  0000                    add      byte ptr [eax], al             
  0x00C2E7F1  f4                      hlt                                     
  0x00C2E7F2  56                      push     esi                            
  0x00C2E7F3  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E7F6  0000                    add      byte ptr [eax], al             
  0x00C2E7F8  00f4                    add      ah, dh                         
  0x00C2E7FA  7000                    jo       0xc2e7fc                       
                                        ; XREF: 0x00C2E7FA (cond_jump)
  0x00C2E7FC  2201                    and      al, byte ptr [ecx]             
  0x00C2E7FE  0000                    add      byte ptr [eax], al             
  0x00C2E800  00f4                    add      ah, dh                         
  0x00C2E802  7100                    jno      0xc2e804                       
                                        ; XREF: 0x00C2E802 (cond_jump)
  0x00C2E804  de0a                    fimul    word ptr [edx]                 
  0x00C2E806  0000                    add      byte ptr [eax], al             
  0x00C2E808  80f00b                  xor      al, 0xb                        
  0x00C2E80B  008001000000            add      byte ptr [eax + 1], al         
  0x00C2E811  f4                      hlt                                     
  0x00C2E812  56                      push     esi                            
  0x00C2E813  0016                    add      byte ptr [esi], dl             
  0x00C2E815  0000                    add      byte ptr [eax], al             
  0x00C2E817  0000                    add      byte ptr [eax], al             
  0x00C2E819  f4                      hlt                                     
  0x00C2E81A  57                      push     edi                            
  0x00C2E81B  0002                    add      byte ptr [edx], al             
  0x00C2E81D  0000                    add      byte ptr [eax], al             
  0x00C2E81F  0000                    add      byte ptr [eax], al             
  0x00C2E821  0039                    add      byte ptr [ecx], bh             
  0x00C2E823  0000                    add      byte ptr [eax], al             
  0x00C2E825  f4                      hlt                                     
  0x00C2E826  7000                    jo       0xc2e828                       
                                        ; XREF: 0x00C2E826 (cond_jump)
  0x00C2E828  800000                  add      byte ptr [eax], 0              
  0x00C2E82B  0000                    add      byte ptr [eax], al             
  0x00C2E82D  f4                      hlt                                     
  0x00C2E82E  60                      pushal                                  
  0x00C2E82F  00400b                  add      byte ptr [eax + 0xb], al       
  0x00C2E832  0000                    add      byte ptr [eax], al             
  0x00C2E834  80f00b                  xor      al, 0xb                        
  0x00C2E837  008001000003            add      byte ptr [eax + 0x3000001], al 
  0x00C2E83D  0020                    add      byte ptr [eax], ah             
  0x00C2E83F  0000                    add      byte ptr [eax], al             
  0x00C2E841  2405                    and      al, 5                          
  0x00C2E843  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E846  0000                    add      byte ptr [eax], al             
  0x00C2E848  00f4                    add      ah, dh                         
  0x00C2E84A  56                      push     esi                            
  0x00C2E84B  0016                    add      byte ptr [esi], dl             
  0x00C2E84D  0000                    add      byte ptr [eax], al             
  0x00C2E84F  0000                    add      byte ptr [eax], al             
  0x00C2E851  f4                      hlt                                     
  0x00C2E852  57                      push     edi                            
  0x00C2E853  0000                    add      byte ptr [eax], al             
  0x00C2E855  0000                    add      byte ptr [eax], al             
  0x00C2E857  0000                    add      byte ptr [eax], al             
  0x00C2E859  f4                      hlt                                     
  0x00C2E85A  7000                    jo       0xc2e85c                       
                                        ; XREF: 0x00C2E85A (cond_jump)
  0x00C2E85C  800000                  add      byte ptr [eax], 0              
  0x00C2E85F  0080f00b0080            add      byte ptr [eax - 0x7ffff410], al 
  0x00C2E865  0100                    add      dword ptr [eax], eax           
  0x00C2E867  0003                    add      byte ptr [ebx], al             
  0x00C2E869  0020                    add      byte ptr [eax], ah             
  0x00C2E86B  0000                    add      byte ptr [eax], al             
  0x00C2E86D  2405                    and      al, 5                          
  0x00C2E86F  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E872  0000                    add      byte ptr [eax], al             
  0x00C2E874  0000                    add      byte ptr [eax], al             
  0x00C2E876  0000                    add      byte ptr [eax], al             
  0x00C2E878  40                      inc      eax                            
  0x00C2E879  1bd0                    sbb      edx, eax                       
  0x00C2E87B  007d00                  add      byte ptr [ebp], bh             
  0x00C2E87E  0000                    add      byte ptr [eax], al             
  0x00C2E880  50                      push     eax                            
  0x00C2E881  0105008d2e3f            add      dword ptr [0x3f2e8d00], eax    
  0x00C2E887  0000                    add      byte ptr [eax], al             
  0x00C2E889  7060                    jo       0xc2e8eb                       
  0x00C2E88B  0000                    add      byte ptr [eax], al             
  0x00C2E88D  07                      pop      es                             
  0x00C2E88E  0000                    add      byte ptr [eax], al             
  0x00C2E890  00f4                    add      ah, dh                         
  0x00C2E892  56                      push     esi                            
  0x00C2E893  0007                    add      byte ptr [edi], al             
  0x00C2E895  0000                    add      byte ptr [eax], al             
  0x00C2E897  0000                    add      byte ptr [eax], al             
  0x00C2E899  f4                      hlt                                     
  0x00C2E89A  60                      pushal                                  
  0x00C2E89B  0000                    add      byte ptr [eax], al             
  0x00C2E89D  0000                    add      byte ptr [eax], al             
  0x00C2E89F  0000                    add      byte ptr [eax], al             
  0x00C2E8A1  f4                      hlt                                     
  0x00C2E8A2  7000                    jo       0xc2e8a4                       
                                        ; XREF: 0x00C2E8A2 (cond_jump)
  0x00C2E8A4  0001                    add      byte ptr [ecx], al             
  0x00C2E8A6  0000                    add      byte ptr [eax], al             
  0x00C2E8A8  0000                    add      byte ptr [eax], al             
  0x00C2E8AA  3900                    cmp      dword ptr [eax], eax           
  0x00C2E8AC  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2E8AF  0000                    add      byte ptr [eax], al             
  0x00C2E8B1  f4                      hlt                                     
  0x00C2E8B2  56                      push     esi                            
  0x00C2E8B3  0007                    add      byte ptr [edi], al             
  0x00C2E8B5  0000                    add      byte ptr [eax], al             
  0x00C2E8B7  0000                    add      byte ptr [eax], al             
  0x00C2E8B9  f4                      hlt                                     
  0x00C2E8BA  60                      pushal                                  
  0x00C2E8BB  0000                    add      byte ptr [eax], al             
  0x00C2E8BD  0100                    add      dword ptr [eax], eax           
  0x00C2E8BF  0000                    add      byte ptr [eax], al             
  0x00C2E8C1  f4                      hlt                                     
  0x00C2E8C2  7000                    jo       0xc2e8c4                       
                                        ; XREF: 0x00C2E8C2 (cond_jump)
  0x00C2E8C4  0001                    add      byte ptr [ecx], al             
  0x00C2E8C6  0000                    add      byte ptr [eax], al             
  0x00C2E8C8  0001                    add      byte ptr [ecx], al             
  0x00C2E8CA  3900                    cmp      dword ptr [eax], eax           
  0x00C2E8CC  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2E8CF  0000                    add      byte ptr [eax], al             
  0x00C2E8D1  f4                      hlt                                     
  0x00C2E8D2  56                      push     esi                            
  0x00C2E8D3  0007                    add      byte ptr [edi], al             
  0x00C2E8D5  0000                    add      byte ptr [eax], al             
  0x00C2E8D7  0000                    add      byte ptr [eax], al             
  0x00C2E8D9  f4                      hlt                                     
  0x00C2E8DA  60                      pushal                                  
  0x00C2E8DB  0000                    add      byte ptr [eax], al             
  0x00C2E8DD  0200                    add      al, byte ptr [eax]             
  0x00C2E8DF  0000                    add      byte ptr [eax], al             
  0x00C2E8E1  f4                      hlt                                     
  0x00C2E8E2  7000                    jo       0xc2e8e4                       
                                        ; XREF: 0x00C2E8E2 (cond_jump)
  0x00C2E8E4  0001                    add      byte ptr [ecx], al             
  0x00C2E8E6  0000                    add      byte ptr [eax], al             
  0x00C2E8E8  0002                    add      byte ptr [edx], al             
  0x00C2E8EA  3900                    cmp      dword ptr [eax], eax           
  0x00C2E8EC  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2E8EF  0000                    add      byte ptr [eax], al             
  0x00C2E8F1  f4                      hlt                                     
  0x00C2E8F2  56                      push     esi                            
  0x00C2E8F3  0007                    add      byte ptr [edi], al             
  0x00C2E8F5  0000                    add      byte ptr [eax], al             
  0x00C2E8F7  0000                    add      byte ptr [eax], al             
  0x00C2E8F9  f4                      hlt                                     
  0x00C2E8FA  60                      pushal                                  
  0x00C2E8FB  0000                    add      byte ptr [eax], al             
  0x00C2E8FD  0300                    add      eax, dword ptr [eax]           
  0x00C2E8FF  0000                    add      byte ptr [eax], al             
  0x00C2E901  f4                      hlt                                     
  0x00C2E902  7000                    jo       0xc2e904                       
                                        ; XREF: 0x00C2E902 (cond_jump)
  0x00C2E904  0001                    add      byte ptr [ecx], al             
  0x00C2E906  0000                    add      byte ptr [eax], al             
  0x00C2E908  0003                    add      byte ptr [ebx], al             
  0x00C2E90A  3900                    cmp      dword ptr [eax], eax           
  0x00C2E90C  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2E90F  0000                    add      byte ptr [eax], al             
  0x00C2E911  f4                      hlt                                     
  0x00C2E912  56                      push     esi                            
  0x00C2E913  0007                    add      byte ptr [edi], al             
  0x00C2E915  0000                    add      byte ptr [eax], al             
  0x00C2E917  0000                    add      byte ptr [eax], al             
  0x00C2E919  f4                      hlt                                     
  0x00C2E91A  60                      pushal                                  
  0x00C2E91B  0000                    add      byte ptr [eax], al             
  0x00C2E91D  0400                    add      al, 0                          
  0x00C2E91F  0000                    add      byte ptr [eax], al             
  0x00C2E921  f4                      hlt                                     
  0x00C2E922  7000                    jo       0xc2e924                       
                                        ; XREF: 0x00C2E922 (cond_jump)
  0x00C2E924  0001                    add      byte ptr [ecx], al             
  0x00C2E926  0000                    add      byte ptr [eax], al             
  0x00C2E928  000439                  add      byte ptr [ecx + edi], al       
  0x00C2E92B  0080010d0000            add      byte ptr [eax + 0xd01], al     
  0x00C2E931  f4                      hlt                                     
  0x00C2E932  44                      inc      esp                            
  0x00C2E933  0000                    add      byte ptr [eax], al             
  0x00C2E935  004000                  add      byte ptr [eax], al             
  0x00C2E938  00704c                  add      byte ptr [eax + 0x4c], dh      
  0x00C2E93B  0000                    add      byte ptr [eax], al             
  0x00C2E93D  0000                    add      byte ptr [eax], al             
  0x00C2E93F  0000                    add      byte ptr [eax], al             
  0x00C2E941  f4                      hlt                                     
  0x00C2E942  44                      inc      esp                            
  0x00C2E943  007982                  add      byte ptr [ecx - 0x7e], bh      
  0x00C2E946  5a                      pop      edx                            
  0x00C2E947  0000                    add      byte ptr [eax], al             
  0x00C2E949  704c                    jo       0xc2e997                       
  0x00C2E94B  0001                    add      byte ptr [ecx], al             
  0x00C2E94D  0000                    add      byte ptr [eax], al             
  0x00C2E94F  0000                    add      byte ptr [eax], al             
  0x00C2E951  f4                      hlt                                     
  0x00C2E952  44                      inc      esp                            
  0x00C2E953  0000                    add      byte ptr [eax], al             
  0x00C2E955  004000                  add      byte ptr [eax], al             
  0x00C2E958  00704c                  add      byte ptr [eax + 0x4c], dh      
  0x00C2E95B  0002                    add      byte ptr [edx], al             
  0x00C2E95D  0000                    add      byte ptr [eax], al             
  0x00C2E95F  0000                    add      byte ptr [eax], al             
  0x00C2E961  f4                      hlt                                     
  0x00C2E962  44                      inc      esp                            
  0x00C2E963  003c41                  add      byte ptr [ecx + eax*2], bh     
  0x00C2E966  2d0000704c              sub      eax, 0x4c700000                
  0x00C2E96B  0003                    add      byte ptr [ebx], al             
  0x00C2E96D  0000                    add      byte ptr [eax], al             
  0x00C2E96F  0000                    add      byte ptr [eax], al             
  0x00C2E971  f4                      hlt                                     
  0x00C2E972  44                      inc      esp                            
  0x00C2E973  003c41                  add      byte ptr [ecx + eax*2], bh     
  0x00C2E976  2d0000704c              sub      eax, 0x4c700000                
  0x00C2E97B  000400                  add      byte ptr [eax + eax], al       
  0x00C2E97E  0000                    add      byte ptr [eax], al             
  0x00C2E980  00f0                    add      al, dh                         
  0x00C2E982  6200                    bound    eax, qword ptr [eax]           
  0x00C2E984  0007                    add      byte ptr [edi], al             
  0x00C2E986  0000                    add      byte ptr [eax], al             
  0x00C2E988  0000                    add      byte ptr [eax], al             
  0x00C2E98A  0000                    add      byte ptr [eax], al             
  0x00C2E98C  0000                    add      byte ptr [eax], al             
  0x00C2E98E  0000                    add      byte ptr [eax], al             
  0x00C2E990  d542                    aad      0x42                           
  0x00C2E992  0200                    add      al, byte ptr [eax]             
  0x00C2E994  9e                      sahf                                    
  0x00C2E995  42                      inc      edx                            
  0x00C2E996  0200                    add      al, byte ptr [eax]             
  0x00C2E998  0300                    add      eax, dword ptr [eax]           
  0x00C2E99A  2000                    and      byte ptr [eax], al             
  0x00C2E99C  0ba4050000f460          or       esp, dword ptr [ebp + eax + 0x60f40000] 
  0x00C2E9A3  0000                    add      byte ptr [eax], al             
  0x00C2E9A5  0000                    add      byte ptr [eax], al             
  0x00C2E9A7  0000                    add      byte ptr [eax], al             
  0x00C2E9A9  0138                    add      dword ptr [eax], edi           
  0x00C2E9AB  0000                    add      byte ptr [eax], al             
  0x00C2E9AE  4e                      dec      esi                            
  0x00C2E9AF  0000                    add      byte ptr [eax], al             
  0x00C2E9B1  0000                    add      byte ptr [eax], al             
  0x00C2E9B3  009005060004            add      byte ptr [eax + 0x4000605], dl 
  0x00C2E9B9  0000                    add      byte ptr [eax], al             
  0x00C2E9BB  00e1                    add      cl, ah                         
  0x00C2E9BD  0020                    add      byte ptr [eax], ah             
  0x00C2E9BF  0000                    add      byte ptr [eax], al             
  0x00C2E9C1  e84e000058              call     0x58c2ea14                     
  0x00C2E9C6  5e                      pop      esi                            
  0x00C2E9C7  0000                    add      byte ptr [eax], al             
  0x00C2E9C9  f4                      hlt                                     
  0x00C2E9CA  6200                    bound    eax, qword ptr [eax]           
  0x00C2E9CC  0005000000f4            add      byte ptr [0xf4000000], al      
  0x00C2E9D2  660000                  add      byte ptr [eax], al             
  0x00C2E9D5  06                      push     es                             
  0x00C2E9D6  0000                    add      byte ptr [eax], al             
  0x00C2E9D8  00f4                    add      ah, dh                         
  0x00C2E9DA  7000                    jo       0xc2e9dc                       
                                        ; XREF: 0x00C2E9DA (cond_jump)
  0x00C2E9DC  0001                    add      byte ptr [ecx], al             
  0x00C2E9DE  0000                    add      byte ptr [eax], al             
  0x00C2E9E0  00f4                    add      ah, dh                         
  0x00C2E9E2  60                      pushal                                  
  0x00C2E9E3  0000                    add      byte ptr [eax], al             
  0x00C2E9E5  0000                    add      byte ptr [eax], al             
  0x00C2E9E7  0000                    add      byte ptr [eax], al             
  0x00C2E9E9  f4                      hlt                                     
  0x00C2E9EA  640000                  add      byte ptr fs:[eax], al          
  0x00C2E9ED  0000                    add      byte ptr [eax], al             
  0x00C2E9EF  0000                    add      byte ptr [eax], al             
  0x00C2E9F1  1522009100              adc      eax, 0x910022                  
  0x00C2E9F6  06                      push     es                             
  0x00C2E9F7  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2E9FA  0000                    add      byte ptr [eax], al             
  0x00C2E9FC  0088f000d088            add      byte ptr [eax - 0x772fff10], cl 
  0x00C2EA03  00d2                    add      dl, dl                         
  0x00C2EA05  88f0                    mov      al, dh                         
  0x00C2EA07  00d2                    add      dl, dl                         
  0x00C2EA09  88f0                    mov      al, dh                         
  0x00C2EA0B  00d2                    add      dl, dl                         
  0x00C2EA0D  80c000                  add      al, 0                          
  0x00C2EA10  d3dd                    rcr      ebp, cl                        
  0x00C2EA12  4e                      dec      esi                            
  0x00C2EA13  0000                    add      byte ptr [eax], al             
  0x00C2EA15  b022                    mov      al, 0x22                       
  0x00C2EA17  0000                    add      byte ptr [eax], al             
  0x00C2EA19  f4                      hlt                                     
  0x00C2EA1A  640000                  add      byte ptr fs:[eax], al          
  0x00C2EA1D  0000                    add      byte ptr [eax], al             
  0x00C2EA1F  0000                    add      byte ptr [eax], al             
  0x00C2EA21  5a                      pop      edx                            
  0x00C2EA22  56                      push     esi                            
  0x00C2EA23  0000                    add      byte ptr [eax], al             
  0x00C2EA25  5e                      pop      esi                            
  0x00C2EA26  56                      push     esi                            
  0x00C2EA27  0000                    add      byte ptr [eax], al             
  0x00C2EA29  f4                      hlt                                     
  0x00C2EA2A  56                      push     esi                            
  0x00C2EA2B  0008                    add      byte ptr [eax], cl             
  0x00C2EA2D  0000                    add      byte ptr [eax], al             
  0x00C2EA2F  0000                    add      byte ptr [eax], al             
  0x00C2EA31  f4                      hlt                                     
  0x00C2EA32  60                      pushal                                  
  0x00C2EA33  0000                    add      byte ptr [eax], al             
  0x00C2EA35  05000000f4              add      eax, 0xf4000000                
  0x00C2EA3A  7000                    jo       0xc2ea3c                       
                                        ; XREF: 0x00C2EA3A (cond_jump)
  0x00C2EA3C  0001                    add      byte ptr [ecx], al             
  0x00C2EA3E  0000                    add      byte ptr [eax], al             
  0x00C2EA40  0000                    add      byte ptr [eax], al             
  0x00C2EA42  3900                    cmp      dword ptr [eax], eax           
  0x00C2EA44  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EA47  0000                    add      byte ptr [eax], al             
  0x00C2EA49  f4                      hlt                                     
  0x00C2EA4A  56                      push     esi                            
  0x00C2EA4B  0008                    add      byte ptr [eax], cl             
  0x00C2EA4D  0000                    add      byte ptr [eax], al             
  0x00C2EA4F  0000                    add      byte ptr [eax], al             
  0x00C2EA51  f4                      hlt                                     
  0x00C2EA52  60                      pushal                                  
  0x00C2EA53  0000                    add      byte ptr [eax], al             
  0x00C2EA55  06                      push     es                             
  0x00C2EA56  0000                    add      byte ptr [eax], al             
  0x00C2EA58  00f4                    add      ah, dh                         
  0x00C2EA5A  7000                    jo       0xc2ea5c                       
                                        ; XREF: 0x00C2EA5A (cond_jump)
  0x00C2EA5C  0001                    add      byte ptr [ecx], al             
  0x00C2EA5E  0000                    add      byte ptr [eax], al             
  0x00C2EA60  0001                    add      byte ptr [ecx], al             
  0x00C2EA62  3900                    cmp      dword ptr [eax], eax           
  0x00C2EA64  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EA67  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2EA6A  0000                    add      byte ptr [eax], al             
  0x00C2EA6C  0000                    add      byte ptr [eax], al             
  0x00C2EA6E  0000                    add      byte ptr [eax], al             
  0x00C2EA70  40                      inc      eax                            
  0x00C2EA71  1bd0                    sbb      edx, eax                       
  0x00C2EA73  008a00000050            add      byte ptr [edx + 0x50000000], cl 
  0x00C2EA79  0106                    add      dword ptr [esi], eax           
  0x00C2EA7B  0017                    add      byte ptr [edi], dl             
  0x00C2EA7D  95                      xchg     ebp, eax                       
  0x00C2EA7E  49                      dec      ecx                            
  0x00C2EA7F  0000                    add      byte ptr [eax], al             
  0x00C2EA81  7060                    jo       0xc2eae3                       
  0x00C2EA83  0000                    add      byte ptr [eax], al             
  0x00C2EA85  07                      pop      es                             
  0x00C2EA86  0000                    add      byte ptr [eax], al             
  0x00C2EA88  00f4                    add      ah, dh                         
  0x00C2EA8A  56                      push     esi                            
  0x00C2EA8B  0007                    add      byte ptr [edi], al             
  0x00C2EA8D  0000                    add      byte ptr [eax], al             
  0x00C2EA8F  0000                    add      byte ptr [eax], al             
  0x00C2EA91  f4                      hlt                                     
  0x00C2EA92  60                      pushal                                  
  0x00C2EA93  0000                    add      byte ptr [eax], al             
  0x00C2EA95  0000                    add      byte ptr [eax], al             
  0x00C2EA97  0000                    add      byte ptr [eax], al             
  0x00C2EA99  f4                      hlt                                     
  0x00C2EA9A  7000                    jo       0xc2ea9c                       
                                        ; XREF: 0x00C2EA9A (cond_jump)
  0x00C2EA9C  0001                    add      byte ptr [ecx], al             
  0x00C2EA9E  0000                    add      byte ptr [eax], al             
  0x00C2EAA0  0000                    add      byte ptr [eax], al             
  0x00C2EAA2  3900                    cmp      dword ptr [eax], eax           
  0x00C2EAA4  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EAA7  0000                    add      byte ptr [eax], al             
  0x00C2EAA9  f4                      hlt                                     
  0x00C2EAAA  56                      push     esi                            
  0x00C2EAAB  0007                    add      byte ptr [edi], al             
  0x00C2EAAD  0000                    add      byte ptr [eax], al             
  0x00C2EAAF  0000                    add      byte ptr [eax], al             
  0x00C2EAB1  f4                      hlt                                     
  0x00C2EAB2  60                      pushal                                  
  0x00C2EAB3  0000                    add      byte ptr [eax], al             
  0x00C2EAB5  0100                    add      dword ptr [eax], eax           
  0x00C2EAB7  0000                    add      byte ptr [eax], al             
  0x00C2EAB9  f4                      hlt                                     
  0x00C2EABA  7000                    jo       0xc2eabc                       
                                        ; XREF: 0x00C2EABA (cond_jump)
  0x00C2EABC  0001                    add      byte ptr [ecx], al             
  0x00C2EABE  0000                    add      byte ptr [eax], al             
  0x00C2EAC0  0001                    add      byte ptr [ecx], al             
  0x00C2EAC2  3900                    cmp      dword ptr [eax], eax           
  0x00C2EAC4  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EAC7  0000                    add      byte ptr [eax], al             
  0x00C2EAC9  f4                      hlt                                     
  0x00C2EACA  56                      push     esi                            
  0x00C2EACB  0007                    add      byte ptr [edi], al             
  0x00C2EACD  0000                    add      byte ptr [eax], al             
  0x00C2EACF  0000                    add      byte ptr [eax], al             
  0x00C2EAD1  f4                      hlt                                     
  0x00C2EAD2  60                      pushal                                  
  0x00C2EAD3  0000                    add      byte ptr [eax], al             
  0x00C2EAD5  0200                    add      al, byte ptr [eax]             
  0x00C2EAD7  0000                    add      byte ptr [eax], al             
  0x00C2EAD9  f4                      hlt                                     
  0x00C2EADA  7000                    jo       0xc2eadc                       
                                        ; XREF: 0x00C2EADA (cond_jump)
  0x00C2EADC  0001                    add      byte ptr [ecx], al             
  0x00C2EADE  0000                    add      byte ptr [eax], al             
  0x00C2EAE0  0002                    add      byte ptr [edx], al             
  0x00C2EAE2  3900                    cmp      dword ptr [eax], eax           
  0x00C2EAE4  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EAE7  0000                    add      byte ptr [eax], al             
  0x00C2EAE9  f4                      hlt                                     
  0x00C2EAEA  56                      push     esi                            
  0x00C2EAEB  0007                    add      byte ptr [edi], al             
  0x00C2EAED  0000                    add      byte ptr [eax], al             
  0x00C2EAEF  0000                    add      byte ptr [eax], al             
  0x00C2EAF1  f4                      hlt                                     
  0x00C2EAF2  60                      pushal                                  
  0x00C2EAF3  0000                    add      byte ptr [eax], al             
  0x00C2EAF5  0300                    add      eax, dword ptr [eax]           
  0x00C2EAF7  0000                    add      byte ptr [eax], al             
  0x00C2EAF9  f4                      hlt                                     
  0x00C2EAFA  7000                    jo       0xc2eafc                       
                                        ; XREF: 0x00C2EAFA (cond_jump)
  0x00C2EAFC  0001                    add      byte ptr [ecx], al             
  0x00C2EAFE  0000                    add      byte ptr [eax], al             
  0x00C2EB00  0003                    add      byte ptr [ebx], al             
  0x00C2EB02  3900                    cmp      dword ptr [eax], eax           
  0x00C2EB04  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EB07  0000                    add      byte ptr [eax], al             
  0x00C2EB09  f4                      hlt                                     
  0x00C2EB0A  56                      push     esi                            
  0x00C2EB0B  0007                    add      byte ptr [edi], al             
  0x00C2EB0D  0000                    add      byte ptr [eax], al             
  0x00C2EB0F  0000                    add      byte ptr [eax], al             
  0x00C2EB11  f4                      hlt                                     
  0x00C2EB12  60                      pushal                                  
  0x00C2EB13  0000                    add      byte ptr [eax], al             
  0x00C2EB15  0400                    add      al, 0                          
  0x00C2EB17  0000                    add      byte ptr [eax], al             
  0x00C2EB19  f4                      hlt                                     
  0x00C2EB1A  7000                    jo       0xc2eb1c                       
                                        ; XREF: 0x00C2EB1A (cond_jump)
  0x00C2EB1C  0001                    add      byte ptr [ecx], al             
  0x00C2EB1E  0000                    add      byte ptr [eax], al             
  0x00C2EB20  000439                  add      byte ptr [ecx + edi], al       
  0x00C2EB23  0080010d0000            add      byte ptr [eax + 0xd01], al     
  0x00C2EB29  f4                      hlt                                     
  0x00C2EB2A  44                      inc      esp                            
  0x00C2EB2B  00ff                    add      bh, bh                         
  0x00C2EB2E  7f00                    jg       0xc2eb30                       
                                        ; XREF: 0x00C2EB2E (cond_jump)
  0x00C2EB30  00704c                  add      byte ptr [eax + 0x4c], dh      
  0x00C2EB33  0000                    add      byte ptr [eax], al             
  0x00C2EB35  0000                    add      byte ptr [eax], al             
  0x00C2EB37  0000                    add      byte ptr [eax], al             
  0x00C2EB39  704c                    jo       0xc2eb87                       
  0x00C2EB3B  000500000000            add      byte ptr [0], al               
  0x00C2EB41  f4                      hlt                                     
  0x00C2EB42  44                      inc      esp                            
  0x00C2EB43  007982                  add      byte ptr [ecx - 0x7e], bh      
  0x00C2EB46  5a                      pop      edx                            
  0x00C2EB47  0000                    add      byte ptr [eax], al             
  0x00C2EB49  704c                    jo       0xc2eb97                       
  0x00C2EB4B  0002                    add      byte ptr [edx], al             
  0x00C2EB4D  0000                    add      byte ptr [eax], al             
  0x00C2EB4F  0000                    add      byte ptr [eax], al             
  0x00C2EB51  704c                    jo       0xc2eb9f                       
  0x00C2EB53  0003                    add      byte ptr [ebx], al             
  0x00C2EB55  0000                    add      byte ptr [eax], al             
  0x00C2EB57  0000                    add      byte ptr [eax], al             
  0x00C2EB59  f4                      hlt                                     
  0x00C2EB5A  44                      inc      esp                            
  0x00C2EB5B  007982                  add      byte ptr [ecx - 0x7e], bh      
  0x00C2EB5E  5a                      pop      edx                            
  0x00C2EB5F  0000                    add      byte ptr [eax], al             
  0x00C2EB61  704c                    jo       0xc2ebaf                       
  0x00C2EB63  0006                    add      byte ptr [esi], al             
  0x00C2EB65  0000                    add      byte ptr [eax], al             
  0x00C2EB67  0000                    add      byte ptr [eax], al             
  0x00C2EB69  704c                    jo       0xc2ebb7                       
  0x00C2EB6B  0009                    add      byte ptr [ecx], cl             
  0x00C2EB6D  0000                    add      byte ptr [eax], al             
  0x00C2EB6F  0000                    add      byte ptr [eax], al             
  0x00C2EB71  f4                      hlt                                     
  0x00C2EB72  44                      inc      esp                            
  0x00C2EB73  0000                    add      byte ptr [eax], al             
  0x00C2EB75  0000                    add      byte ptr [eax], al             
  0x00C2EB77  0000                    add      byte ptr [eax], al             
  0x00C2EB79  704c                    jo       0xc2ebc7                       
  0x00C2EB7B  000400                  add      byte ptr [eax + eax], al       
  0x00C2EB7E  0000                    add      byte ptr [eax], al             
  0x00C2EB80  00704c                  add      byte ptr [eax + 0x4c], dh      
  0x00C2EB83  0008                    add      byte ptr [eax], cl             
  0x00C2EB85  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2EB39 (cond_jump)
  0x00C2EB87  0000                    add      byte ptr [eax], al             
  0x00C2EB89  704c                    jo       0xc2ebd7                       
  0x00C2EB8B  0001                    add      byte ptr [ecx], al             
  0x00C2EB8D  0000                    add      byte ptr [eax], al             
  0x00C2EB8F  0000                    add      byte ptr [eax], al             
  0x00C2EB91  704c                    jo       0xc2ebdf                       
  0x00C2EB93  0007                    add      byte ptr [edi], al             
  0x00C2EB95  0000                    add      byte ptr [eax], al             
                                        ; XREF: 0x00C2EB49 (cond_jump)
  0x00C2EB97  0000                    add      byte ptr [eax], al             
  0x00C2EB9A  6200                    bound    eax, qword ptr [eax]           
  0x00C2EB9C  0007                    add      byte ptr [edi], al             
  0x00C2EB9E  0000                    add      byte ptr [eax], al             
  0x00C2EBA0  0000                    add      byte ptr [eax], al             
  0x00C2EBA2  0000                    add      byte ptr [eax], al             
  0x00C2EBA4  0000                    add      byte ptr [eax], al             
  0x00C2EBA6  0000                    add      byte ptr [eax], al             
  0x00C2EBA8  d542                    aad      0x42                           
  0x00C2EBAA  0200                    add      al, byte ptr [eax]             
  0x00C2EBAC  9e                      sahf                                    
  0x00C2EBAD  42                      inc      edx                            
  0x00C2EBAE  0200                    add      al, byte ptr [eax]             
  0x00C2EBB0  0300                    add      eax, dword ptr [eax]           
  0x00C2EBB2  2000                    and      byte ptr [eax], al             
  0x00C2EBB4  0ba4050000f460          or       esp, dword ptr [ebp + eax + 0x60f40000] 
  0x00C2EBBB  0000                    add      byte ptr [eax], al             
  0x00C2EBBD  0000                    add      byte ptr [eax], al             
  0x00C2EBBF  0000                    add      byte ptr [eax], al             
  0x00C2EBC1  0138                    add      dword ptr [eax], edi           
  0x00C2EBC3  0000                    add      byte ptr [eax], al             
  0x00C2EBC6  4e                      dec      esi                            
                                        ; XREF: 0x00C2EB79 (cond_jump)
  0x00C2EBC7  0000                    add      byte ptr [eax], al             
  0x00C2EBC9  0000                    add      byte ptr [eax], al             
  0x00C2EBCB  00900a060004            add      byte ptr [eax + 0x400060a], dl 
  0x00C2EBD1  0000                    add      byte ptr [eax], al             
  0x00C2EBD3  00e1                    add      cl, ah                         
  0x00C2EBD5  0020                    add      byte ptr [eax], ah             
                                        ; XREF: 0x00C2EB89 (cond_jump)
  0x00C2EBD7  0000                    add      byte ptr [eax], al             
  0x00C2EBD9  e84e000058              call     0x58c2ec2c                     
  0x00C2EBDE  5e                      pop      esi                            
                                        ; XREF: 0x00C2EB91 (cond_jump)
  0x00C2EBDF  0000                    add      byte ptr [eax], al             
  0x00C2EBE1  f4                      hlt                                     
  0x00C2EBE2  6200                    bound    eax, qword ptr [eax]           
  0x00C2EBE4  0005000000f4            add      byte ptr [0xf4000000], al      
  0x00C2EBEA  660000                  add      byte ptr [eax], al             
  0x00C2EBED  06                      push     es                             
  0x00C2EBEE  0000                    add      byte ptr [eax], al             
  0x00C2EBF0  00f4                    add      ah, dh                         
  0x00C2EBF2  7000                    jo       0xc2ebf4                       
                                        ; XREF: 0x00C2EBF2 (cond_jump)
  0x00C2EBF4  0001                    add      byte ptr [ecx], al             
  0x00C2EBF6  0000                    add      byte ptr [eax], al             
  0x00C2EBF8  00f4                    add      ah, dh                         
  0x00C2EBFA  60                      pushal                                  
  0x00C2EBFB  0000                    add      byte ptr [eax], al             
  0x00C2EBFD  0000                    add      byte ptr [eax], al             
  0x00C2EBFF  0000                    add      byte ptr [eax], al             
  0x00C2EC01  f4                      hlt                                     
  0x00C2EC02  640000                  add      byte ptr fs:[eax], al          
  0x00C2EC05  0000                    add      byte ptr [eax], al             
  0x00C2EC07  0000                    add      byte ptr [eax], al             
  0x00C2EC09  1522009100              adc      eax, 0x910022                  
  0x00C2EC0E  06                      push     es                             
  0x00C2EC0F  0011                    add      byte ptr [ecx], dl             
  0x00C2EC11  0000                    add      byte ptr [eax], al             
  0x00C2EC13  0000                    add      byte ptr [eax], al             
  0x00C2EC15  88f0                    mov      al, dh                         
  0x00C2EC17  00d0                    add      al, dl                         
  0x00C2EC19  dc4e00                  fmul     qword ptr [esi]                
  0x00C2EC1C  d888f000d2dc            fmul     dword ptr [eax - 0x232dff10]   
  0x00C2EC22  4e                      dec      esi                            
  0x00C2EC23  00da                    add      dl, bl                         
  0x00C2EC25  88f0                    mov      al, dh                         
  0x00C2EC27  00d2                    add      dl, dl                         
  0x00C2EC29  dc4e00                  fmul     qword ptr [esi]                
  0x00C2EC2C  da88f000d2dc            fimul    dword ptr [eax - 0x232dff10]   
  0x00C2EC32  4e                      dec      esi                            
  0x00C2EC33  00da                    add      dl, bl                         
  0x00C2EC35  88f0                    mov      al, dh                         
  0x00C2EC37  00d3                    add      bl, dl                         
  0x00C2EC39  dc4e00                  fmul     qword ptr [esi]                
  0x00C2EC3C  dbdd                    fcmovnu  st(0), st(5)                   
  0x00C2EC3E  4e                      dec      esi                            
  0x00C2EC3F  0000                    add      byte ptr [eax], al             
  0x00C2EC41  b022                    mov      al, 0x22                       
  0x00C2EC43  0000                    add      byte ptr [eax], al             
  0x00C2EC45  f4                      hlt                                     
  0x00C2EC46  640000                  add      byte ptr fs:[eax], al          
  0x00C2EC49  0000                    add      byte ptr [eax], al             
  0x00C2EC4B  0000                    add      byte ptr [eax], al             
  0x00C2EC4D  5a                      pop      edx                            
  0x00C2EC4E  56                      push     esi                            
  0x00C2EC4F  0000                    add      byte ptr [eax], al             
  0x00C2EC51  5e                      pop      esi                            
  0x00C2EC52  57                      push     edi                            
  0x00C2EC53  0000                    add      byte ptr [eax], al             
  0x00C2EC55  f4                      hlt                                     
  0x00C2EC56  56                      push     esi                            
  0x00C2EC57  0008                    add      byte ptr [eax], cl             
  0x00C2EC59  0000                    add      byte ptr [eax], al             
  0x00C2EC5B  0000                    add      byte ptr [eax], al             
  0x00C2EC5D  f4                      hlt                                     
  0x00C2EC5E  60                      pushal                                  
  0x00C2EC5F  0000                    add      byte ptr [eax], al             
  0x00C2EC61  05000000f4              add      eax, 0xf4000000                
  0x00C2EC66  7000                    jo       0xc2ec68                       
                                        ; XREF: 0x00C2EC66 (cond_jump)
  0x00C2EC68  0001                    add      byte ptr [ecx], al             
  0x00C2EC6A  0000                    add      byte ptr [eax], al             
  0x00C2EC6C  0000                    add      byte ptr [eax], al             
  0x00C2EC6E  3900                    cmp      dword ptr [eax], eax           
  0x00C2EC70  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EC73  0000                    add      byte ptr [eax], al             
  0x00C2EC75  f4                      hlt                                     
  0x00C2EC76  56                      push     esi                            
  0x00C2EC77  0008                    add      byte ptr [eax], cl             
  0x00C2EC79  0000                    add      byte ptr [eax], al             
  0x00C2EC7B  0000                    add      byte ptr [eax], al             
  0x00C2EC7D  f4                      hlt                                     
  0x00C2EC7E  60                      pushal                                  
  0x00C2EC7F  0000                    add      byte ptr [eax], al             
  0x00C2EC81  06                      push     es                             
  0x00C2EC82  0000                    add      byte ptr [eax], al             
  0x00C2EC84  00f4                    add      ah, dh                         
  0x00C2EC86  7000                    jo       0xc2ec88                       
                                        ; XREF: 0x00C2EC86 (cond_jump)
  0x00C2EC88  0001                    add      byte ptr [ecx], al             
  0x00C2EC8A  0000                    add      byte ptr [eax], al             
  0x00C2EC8C  0001                    add      byte ptr [ecx], al             
  0x00C2EC8E  3900                    cmp      dword ptr [eax], eax           
  0x00C2EC90  80010d                  add      byte ptr [ecx], 0xd            
  0x00C2EC93  000c00                  add      byte ptr [eax + eax], cl       
  0x00C2EC96  0000                    add      byte ptr [eax], al             
  0x00C2EC98  1800                    sbb      byte ptr [eax], al             
  0x00C2EC9A  0000                    add      byte ptr [eax], al             
  0x00C2EC9C  0100                    add      dword ptr [eax], eax           
  0x00C2EC9E  0000                    add      byte ptr [eax], al             
  0x00C2ECA0  0100                    add      dword ptr [eax], eax           
  0x00C2ECA2  0000                    add      byte ptr [eax], al             
  0x00C2ECA4  0000                    add      byte ptr [eax], al             
  0x00C2ECA6  0000                    add      byte ptr [eax], al             
  0x00C2ECA8  0000                    add      byte ptr [eax], al             
  0x00C2ECAA  0000                    add      byte ptr [eax], al             
  0x00C2ECAC  07                      pop      es                             
  0x00C2ECAD  0000                    add      byte ptr [eax], al             
  0x00C2ECAF  0001                    add      byte ptr [ecx], al             
  0x00C2ECB1  0000                    add      byte ptr [eax], al             
  0x00C2ECB3  001f                    add      byte ptr [edi], bl             
  0x00C2ECB5  0000                    add      byte ptr [eax], al             
  0x00C2ECB7  0009                    add      byte ptr [ecx], cl             
  0x00C2ECB9  0000                    add      byte ptr [eax], al             
  0x00C2ECBB  0000                    add      byte ptr [eax], al             
  0x00C2ECBD  0000                    add      byte ptr [eax], al             
  0x00C2ECBF  0001                    add      byte ptr [ecx], al             
  0x00C2ECC1  0000                    add      byte ptr [eax], al             
  0x00C2ECC3  0001                    add      byte ptr [ecx], al             
  0x00C2ECC5  0000                    add      byte ptr [eax], al             
  0x00C2ECC7  0000                    add      byte ptr [eax], al             
  0x00C2ECC9  0000                    add      byte ptr [eax], al             
  0x00C2ECCB  0000                    add      byte ptr [eax], al             
  0x00C2ECCD  0000                    add      byte ptr [eax], al             
  0x00C2ECCF  0001                    add      byte ptr [ecx], al             
  0x00C2ECD1  0000                    add      byte ptr [eax], al             
  0x00C2ECD3  00ef                    add      bh, ch                         
  0x00C2ECD5  0000                    add      byte ptr [eax], al             
  0x00C2ECD7  0000                    add      byte ptr [eax], al             
  0x00C2ECD9  0000                    add      byte ptr [eax], al             
  0x00C2ECDB  008cac65000200          add      byte ptr [esp + ebp*4 + 0x20065], cl 
  0x00C2ECE2  0000                    add      byte ptr [eax], al             
