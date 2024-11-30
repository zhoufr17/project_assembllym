
bomb:     file format elf32-i386


Disassembly of section .init:

080486a0 <_init>:
 80486a0:       53                      push   ebx
 80486a1:       83 ec 08                sub    esp,0x8
 80486a4:       e8 47 02 00 00          call   80488f0 <__x86.get_pc_thunk.bx>
 80486a9:       81 c3 57 39 00 00       add    ebx,0x3957
 80486af:       8b 83 fc ff ff ff       mov    eax,DWORD PTR [ebx-0x4]
 80486b5:       85 c0                   test   eax,eax
 80486b7:       74 05                   je     80486be <_init+0x1e>
 80486b9:       e8 d2 01 00 00          call   8048890 <__gmon_start__@plt>
 80486be:       83 c4 08                add    esp,0x8
 80486c1:       5b                      pop    ebx
 80486c2:       c3                      ret

Disassembly of section .plt:

080486d0 <.plt>:
 80486d0:       ff 35 04 c0 04 08       push   DWORD PTR ds:0x804c004
 80486d6:       ff 25 08 c0 04 08       jmp    DWORD PTR ds:0x804c008
 80486dc:       00 00                   add    BYTE PTR [eax],al
        ...

080486e0 <printf@plt>:
 80486e0:       ff 25 0c c0 04 08       jmp    DWORD PTR ds:0x804c00c
 80486e6:       68 00 00 00 00          push   0x0
 80486eb:       e9 e0 ff ff ff          jmp    80486d0 <.plt>

080486f0 <fflush@plt>:
 80486f0:       ff 25 10 c0 04 08       jmp    DWORD PTR ds:0x804c010
 80486f6:       68 08 00 00 00          push   0x8
 80486fb:       e9 d0 ff ff ff          jmp    80486d0 <.plt>

08048700 <fgets@plt>:
 8048700:       ff 25 14 c0 04 08       jmp    DWORD PTR ds:0x804c014
 8048706:       68 10 00 00 00          push   0x10
 804870b:       e9 c0 ff ff ff          jmp    80486d0 <.plt>

08048710 <fclose@plt>:
 8048710:       ff 25 18 c0 04 08       jmp    DWORD PTR ds:0x804c018
 8048716:       68 18 00 00 00          push   0x18
 804871b:       e9 b0 ff ff ff          jmp    80486d0 <.plt>

08048720 <sleep@plt>:
 8048720:       ff 25 1c c0 04 08       jmp    DWORD PTR ds:0x804c01c
 8048726:       68 20 00 00 00          push   0x20
 804872b:       e9 a0 ff ff ff          jmp    80486d0 <.plt>

08048730 <popen@plt>:
 8048730:       ff 25 20 c0 04 08       jmp    DWORD PTR ds:0x804c020
 8048736:       68 28 00 00 00          push   0x28
 804873b:       e9 90 ff ff ff          jmp    80486d0 <.plt>

08048740 <err@plt>:
 8048740:       ff 25 24 c0 04 08       jmp    DWORD PTR ds:0x804c024
 8048746:       68 30 00 00 00          push   0x30
 804874b:       e9 80 ff ff ff          jmp    80486d0 <.plt>

08048750 <fwrite@plt>:
 8048750:       ff 25 28 c0 04 08       jmp    DWORD PTR ds:0x804c028
 8048756:       68 38 00 00 00          push   0x38
 804875b:       e9 70 ff ff ff          jmp    80486d0 <.plt>

08048760 <fread@plt>:
 8048760:       ff 25 2c c0 04 08       jmp    DWORD PTR ds:0x804c02c
 8048766:       68 40 00 00 00          push   0x40
 804876b:       e9 60 ff ff ff          jmp    80486d0 <.plt>

08048770 <getenv@plt>:
 8048770:       ff 25 30 c0 04 08       jmp    DWORD PTR ds:0x804c030
 8048776:       68 48 00 00 00          push   0x48
 804877b:       e9 50 ff ff ff          jmp    80486d0 <.plt>

08048780 <puts@plt>:
 8048780:       ff 25 34 c0 04 08       jmp    DWORD PTR ds:0x804c034
 8048786:       68 50 00 00 00          push   0x50
 804878b:       e9 40 ff ff ff          jmp    80486d0 <.plt>

08048790 <__sysv_signal@plt>:
 8048790:       ff 25 38 c0 04 08       jmp    DWORD PTR ds:0x804c038
 8048796:       68 58 00 00 00          push   0x58
 804879b:       e9 30 ff ff ff          jmp    80486d0 <.plt>

080487a0 <exit@plt>:
 80487a0:       ff 25 3c c0 04 08       jmp    DWORD PTR ds:0x804c03c
 80487a6:       68 60 00 00 00          push   0x60
 80487ab:       e9 20 ff ff ff          jmp    80486d0 <.plt>

080487b0 <pclose@plt>:
 80487b0:       ff 25 40 c0 04 08       jmp    DWORD PTR ds:0x804c040
 80487b6:       68 68 00 00 00          push   0x68
 80487bb:       e9 10 ff ff ff          jmp    80486d0 <.plt>

080487c0 <feof@plt>:
 80487c0:       ff 25 44 c0 04 08       jmp    DWORD PTR ds:0x804c044
 80487c6:       68 70 00 00 00          push   0x70
 80487cb:       e9 00 ff ff ff          jmp    80486d0 <.plt>

080487d0 <strchr@plt>:
 80487d0:       ff 25 48 c0 04 08       jmp    DWORD PTR ds:0x804c048
 80487d6:       68 78 00 00 00          push   0x78
 80487db:       e9 f0 fe ff ff          jmp    80486d0 <.plt>

080487e0 <strlen@plt>:
 80487e0:       ff 25 4c c0 04 08       jmp    DWORD PTR ds:0x804c04c
 80487e6:       68 80 00 00 00          push   0x80
 80487eb:       e9 e0 fe ff ff          jmp    80486d0 <.plt>

080487f0 <__libc_start_main@plt>:
 80487f0:       ff 25 50 c0 04 08       jmp    DWORD PTR ds:0x804c050
 80487f6:       68 88 00 00 00          push   0x88
 80487fb:       e9 d0 fe ff ff          jmp    80486d0 <.plt>

08048800 <__isoc99_sscanf@plt>:
 8048800:       ff 25 54 c0 04 08       jmp    DWORD PTR ds:0x804c054
 8048806:       68 90 00 00 00          push   0x90
 804880b:       e9 c0 fe ff ff          jmp    80486d0 <.plt>

08048810 <fopen@plt>:
 8048810:       ff 25 58 c0 04 08       jmp    DWORD PTR ds:0x804c058
 8048816:       68 98 00 00 00          push   0x98
 804881b:       e9 b0 fe ff ff          jmp    80486d0 <.plt>

08048820 <memset@plt>:
 8048820:       ff 25 5c c0 04 08       jmp    DWORD PTR ds:0x804c05c
 8048826:       68 a0 00 00 00          push   0xa0
 804882b:       e9 a0 fe ff ff          jmp    80486d0 <.plt>

08048830 <snprintf@plt>:
 8048830:       ff 25 60 c0 04 08       jmp    DWORD PTR ds:0x804c060
 8048836:       68 a8 00 00 00          push   0xa8
 804883b:       e9 90 fe ff ff          jmp    80486d0 <.plt>

08048840 <putchar@plt>:
 8048840:       ff 25 64 c0 04 08       jmp    DWORD PTR ds:0x804c064
 8048846:       68 b0 00 00 00          push   0xb0
 804884b:       e9 80 fe ff ff          jmp    80486d0 <.plt>

08048850 <sprintf@plt>:
 8048850:       ff 25 68 c0 04 08       jmp    DWORD PTR ds:0x804c068
 8048856:       68 b8 00 00 00          push   0xb8
 804885b:       e9 70 fe ff ff          jmp    80486d0 <.plt>

08048860 <atoi@plt>:
 8048860:       ff 25 6c c0 04 08       jmp    DWORD PTR ds:0x804c06c
 8048866:       68 c0 00 00 00          push   0xc0
 804886b:       e9 60 fe ff ff          jmp    80486d0 <.plt>

08048870 <fputs@plt>:
 8048870:       ff 25 70 c0 04 08       jmp    DWORD PTR ds:0x804c070
 8048876:       68 c8 00 00 00          push   0xc8
 804887b:       e9 50 fe ff ff          jmp    80486d0 <.plt>

08048880 <__ctype_b_loc@plt>:
 8048880:       ff 25 74 c0 04 08       jmp    DWORD PTR ds:0x804c074
 8048886:       68 d0 00 00 00          push   0xd0
 804888b:       e9 40 fe ff ff          jmp    80486d0 <.plt>

Disassembly of section .plt.got:

08048890 <__gmon_start__@plt>:
 8048890:       ff 25 fc bf 04 08       jmp    DWORD PTR ds:0x804bffc
 8048896:       66 90                   xchg   ax,ax

Disassembly of section .text:

080488a0 <_start>:
 80488a0:       31 ed                   xor    ebp,ebp
 80488a2:       5e                      pop    esi
 80488a3:       89 e1                   mov    ecx,esp
 80488a5:       83 e4 f0                and    esp,0xfffffff0
 80488a8:       50                      push   eax
 80488a9:       54                      push   esp
 80488aa:       52                      push   edx
 80488ab:       e8 23 00 00 00          call   80488d3 <_start+0x33>
 80488b0:       81 c3 50 37 00 00       add    ebx,0x3750
 80488b6:       8d 83 70 dd ff ff       lea    eax,[ebx-0x2290]
 80488bc:       50                      push   eax
 80488bd:       8d 83 10 dd ff ff       lea    eax,[ebx-0x22f0]
 80488c3:       50                      push   eax
 80488c4:       51                      push   ecx
 80488c5:       56                      push   esi
 80488c6:       c7 c0 b6 89 04 08       mov    eax,0x80489b6
 80488cc:       50                      push   eax
 80488cd:       e8 1e ff ff ff          call   80487f0 <__libc_start_main@plt>
 80488d2:       f4                      hlt
 80488d3:       8b 1c 24                mov    ebx,DWORD PTR [esp]
 80488d6:       c3                      ret
 80488d7:       66 90                   xchg   ax,ax
 80488d9:       66 90                   xchg   ax,ax
 80488db:       66 90                   xchg   ax,ax
 80488dd:       66 90                   xchg   ax,ax
 80488df:       90                      nop

080488e0 <_dl_relocate_static_pie>:
 80488e0:       f3 c3                   repz ret
 80488e2:       66 90                   xchg   ax,ax
 80488e4:       66 90                   xchg   ax,ax
 80488e6:       66 90                   xchg   ax,ax
 80488e8:       66 90                   xchg   ax,ax
 80488ea:       66 90                   xchg   ax,ax
 80488ec:       66 90                   xchg   ax,ax
 80488ee:       66 90                   xchg   ax,ax

080488f0 <__x86.get_pc_thunk.bx>:
 80488f0:       8b 1c 24                mov    ebx,DWORD PTR [esp]
 80488f3:       c3                      ret
 80488f4:       66 90                   xchg   ax,ax
 80488f6:       66 90                   xchg   ax,ax
 80488f8:       66 90                   xchg   ax,ax
 80488fa:       66 90                   xchg   ax,ax
 80488fc:       66 90                   xchg   ax,ax
 80488fe:       66 90                   xchg   ax,ax

08048900 <deregister_tm_clones>:
 8048900:       b8 e0 c5 04 08          mov    eax,0x804c5e0
 8048905:       3d e0 c5 04 08          cmp    eax,0x804c5e0
 804890a:       74 24                   je     8048930 <deregister_tm_clones+0x30>
 804890c:       b8 00 00 00 00          mov    eax,0x0
 8048911:       85 c0                   test   eax,eax
 8048913:       74 1b                   je     8048930 <deregister_tm_clones+0x30>
 8048915:       55                      push   ebp
 8048916:       89 e5                   mov    ebp,esp
 8048918:       83 ec 14                sub    esp,0x14
 804891b:       68 e0 c5 04 08          push   0x804c5e0
 8048920:       ff d0                   call   eax
 8048922:       83 c4 10                add    esp,0x10
 8048925:       c9                      leave
 8048926:       c3                      ret
 8048927:       89 f6                   mov    esi,esi
 8048929:       8d bc 27 00 00 00 00    lea    edi,[edi+eiz*1+0x0]
 8048930:       f3 c3                   repz ret
 8048932:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 8048939:       8d bc 27 00 00 00 00    lea    edi,[edi+eiz*1+0x0]

08048940 <register_tm_clones>:
 8048940:       b8 e0 c5 04 08          mov    eax,0x804c5e0
 8048945:       2d e0 c5 04 08          sub    eax,0x804c5e0
 804894a:       c1 f8 02                sar    eax,0x2
 804894d:       89 c2                   mov    edx,eax
 804894f:       c1 ea 1f                shr    edx,0x1f
 8048952:       01 d0                   add    eax,edx
 8048954:       d1 f8                   sar    eax,1
 8048956:       74 20                   je     8048978 <register_tm_clones+0x38>
 8048958:       ba 00 00 00 00          mov    edx,0x0
 804895d:       85 d2                   test   edx,edx
 804895f:       74 17                   je     8048978 <register_tm_clones+0x38>
 8048961:       55                      push   ebp
 8048962:       89 e5                   mov    ebp,esp
 8048964:       83 ec 10                sub    esp,0x10
 8048967:       50                      push   eax
 8048968:       68 e0 c5 04 08          push   0x804c5e0
 804896d:       ff d2                   call   edx
 804896f:       83 c4 10                add    esp,0x10
 8048972:       c9                      leave
 8048973:       c3                      ret
 8048974:       8d 74 26 00             lea    esi,[esi+eiz*1+0x0]
 8048978:       f3 c3                   repz ret
 804897a:       8d b6 00 00 00 00       lea    esi,[esi+0x0]

08048980 <__do_global_dtors_aux>:
 8048980:       80 3d 08 c6 04 08 00    cmp    BYTE PTR ds:0x804c608,0x0
 8048987:       75 17                   jne    80489a0 <__do_global_dtors_aux+0x20>
 8048989:       55                      push   ebp
 804898a:       89 e5                   mov    ebp,esp
 804898c:       83 ec 08                sub    esp,0x8
 804898f:       e8 6c ff ff ff          call   8048900 <deregister_tm_clones>
 8048994:       c6 05 08 c6 04 08 01    mov    BYTE PTR ds:0x804c608,0x1
 804899b:       c9                      leave
 804899c:       c3                      ret
 804899d:       8d 76 00                lea    esi,[esi+0x0]
 80489a0:       f3 c3                   repz ret
 80489a2:       8d b4 26 00 00 00 00    lea    esi,[esi+eiz*1+0x0]
 80489a9:       8d bc 27 00 00 00 00    lea    edi,[edi+eiz*1+0x0]

080489b0 <frame_dummy>:
 80489b0:       55                      push   ebp
 80489b1:       89 e5                   mov    ebp,esp
 80489b3:       5d                      pop    ebp
 80489b4:       eb 8a                   jmp    8048940 <register_tm_clones>

080489b6 <main>:
 80489b6:       8d 4c 24 04             lea    ecx,[esp+0x4]
 80489ba:       83 e4 f0                and    esp,0xfffffff0
 80489bd:       ff 71 fc                push   DWORD PTR [ecx-0x4]
 80489c0:       55                      push   ebp
 80489c1:       89 e5                   mov    ebp,esp
 80489c3:       53                      push   ebx
 80489c4:       51                      push   ecx
 80489c5:       89 cb                   mov    ebx,ecx
 80489c7:       83 3b 01                cmp    DWORD PTR [ebx],0x1
 80489ca:       75 0c                   jne    80489d8 <main+0x22>
 80489cc:       a1 00 c6 04 08          mov    eax,ds:0x804c600
 80489d1:       a3 14 c6 04 08          mov    ds:0x804c614,eax
 80489d6:       eb 75                   jmp    8048a4d <main+0x97>
 80489d8:       83 3b 02                cmp    DWORD PTR [ebx],0x2
 80489db:       75 50                   jne    8048a2d <main+0x77>
 80489dd:       8b 43 04                mov    eax,DWORD PTR [ebx+0x4]
 80489e0:       83 c0 04                add    eax,0x4
 80489e3:       8b 00                   mov    eax,DWORD PTR [eax]
 80489e5:       83 ec 08                sub    esp,0x8
 80489e8:       68 90 9d 04 08          push   0x8049d90
 80489ed:       50                      push   eax
 80489ee:       e8 1d fe ff ff          call   8048810 <fopen@plt>
 80489f3:       83 c4 10                add    esp,0x10
 80489f6:       a3 14 c6 04 08          mov    ds:0x804c614,eax
 80489fb:       a1 14 c6 04 08          mov    eax,ds:0x804c614
 8048a00:       85 c0                   test   eax,eax
 8048a02:       75 49                   jne    8048a4d <main+0x97>
 8048a04:       8b 43 04                mov    eax,DWORD PTR [ebx+0x4]
 8048a07:       83 c0 04                add    eax,0x4
 8048a0a:       8b 10                   mov    edx,DWORD PTR [eax]
 8048a0c:       8b 43 04                mov    eax,DWORD PTR [ebx+0x4]
 8048a0f:       8b 00                   mov    eax,DWORD PTR [eax]
 8048a11:       83 ec 04                sub    esp,0x4
 8048a14:       52                      push   edx
 8048a15:       50                      push   eax
 8048a16:       68 92 9d 04 08          push   0x8049d92
 8048a1b:       e8 c0 fc ff ff          call   80486e0 <printf@plt>
 8048a20:       83 c4 10                add    esp,0x10
 8048a23:       83 ec 0c                sub    esp,0xc
 8048a26:       6a 08                   push   0x8
 8048a28:       e8 73 fd ff ff          call   80487a0 <exit@plt>
 8048a2d:       8b 43 04                mov    eax,DWORD PTR [ebx+0x4]
 8048a30:       8b 00                   mov    eax,DWORD PTR [eax]
 8048a32:       83 ec 08                sub    esp,0x8
 8048a35:       50                      push   eax
 8048a36:       68 af 9d 04 08          push   0x8049daf
 8048a3b:       e8 a0 fc ff ff          call   80486e0 <printf@plt>
 8048a40:       83 c4 10                add    esp,0x10
 8048a43:       83 ec 0c                sub    esp,0xc
 8048a46:       6a 08                   push   0x8
 8048a48:       e8 53 fd ff ff          call   80487a0 <exit@plt>
 8048a4d:       e8 65 10 00 00          call   8049ab7 <set_apikey>
 8048a52:       e8 88 04 00 00          call   8048edf <initialize_bomb>
 8048a57:       83 ec 0c                sub    esp,0xc
 8048a5a:       68 cc 9d 04 08          push   0x8049dcc
 8048a5f:       e8 1c fd ff ff          call   8048780 <puts@plt>
 8048a64:       83 c4 10                add    esp,0x10
 8048a67:       83 ec 0c                sub    esp,0xc
 8048a6a:       68 80 9f 04 08          push   0x8049f80
 8048a6f:       e8 0c fd ff ff          call   8048780 <puts@plt>
 8048a74:       83 c4 10                add    esp,0x10
 8048a77:       83 ec 0c                sub    esp,0xc
 8048a7a:       68 bc 9f 04 08          push   0x8049fbc
 8048a7f:       e8 fc fc ff ff          call   8048780 <puts@plt>
 8048a84:       83 c4 10                add    esp,0x10
 8048a87:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048a8c:       83 c0 01                add    eax,0x1
 8048a8f:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048a94:       83 ec 08                sub    esp,0x8
 8048a97:       68 e6 9f 04 08          push   0x8049fe6
 8048a9c:       68 04 a0 04 08          push   0x804a004
 8048aa1:       e8 3a fc ff ff          call   80486e0 <printf@plt>
 8048aa6:       83 c4 10                add    esp,0x10
 8048aa9:       e8 f5 04 00 00          call   8048fa3 <read_line>
 8048aae:       83 ec 0c                sub    esp,0xc
 8048ab1:       50                      push   eax
 8048ab2:       e8 b3 08 00 00          call   804936a <phase_strcmp>
 8048ab7:       83 c4 10                add    esp,0x10
 8048aba:       e8 e5 06 00 00          call   80491a4 <phase_defused>
 8048abf:       83 ec 0c                sub    esp,0xc
 8048ac2:       68 14 a0 04 08          push   0x804a014
 8048ac7:       e8 b4 fc ff ff          call   8048780 <puts@plt>
 8048acc:       83 c4 10                add    esp,0x10
 8048acf:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048ad4:       83 c0 01                add    eax,0x1
 8048ad7:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048adc:       83 ec 08                sub    esp,0x8
 8048adf:       68 3d a0 04 08          push   0x804a03d
 8048ae4:       68 04 a0 04 08          push   0x804a004
 8048ae9:       e8 f2 fb ff ff          call   80486e0 <printf@plt>
 8048aee:       83 c4 10                add    esp,0x10
 8048af1:       e8 ad 04 00 00          call   8048fa3 <read_line>
 8048af6:       83 ec 0c                sub    esp,0xc
 8048af9:       50                      push   eax
 8048afa:       e8 07 09 00 00          call   8049406 <phase_funcall>
 8048aff:       83 c4 10                add    esp,0x10
 8048b02:       e8 9d 06 00 00          call   80491a4 <phase_defused>
 8048b07:       83 ec 0c                sub    esp,0xc
 8048b0a:       68 54 a0 04 08          push   0x804a054
 8048b0f:       e8 6c fc ff ff          call   8048780 <puts@plt>
 8048b14:       83 c4 10                add    esp,0x10
 8048b17:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048b1c:       83 c0 01                add    eax,0x1
 8048b1f:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048b24:       83 ec 08                sub    esp,0x8
 8048b27:       68 74 a0 04 08          push   0x804a074
 8048b2c:       68 04 a0 04 08          push   0x804a004
 8048b31:       e8 aa fb ff ff          call   80486e0 <printf@plt>
 8048b36:       83 c4 10                add    esp,0x10
 8048b39:       e8 65 04 00 00          call   8048fa3 <read_line>
 8048b3e:       83 ec 0c                sub    esp,0xc
 8048b41:       50                      push   eax
 8048b42:       e8 e2 08 00 00          call   8049429 <phase_password>
 8048b47:       83 c4 10                add    esp,0x10
 8048b4a:       e8 55 06 00 00          call   80491a4 <phase_defused>
 8048b4f:       83 ec 0c                sub    esp,0xc
 8048b52:       68 80 a0 04 08          push   0x804a080
 8048b57:       e8 24 fc ff ff          call   8048780 <puts@plt>
 8048b5c:       83 c4 10                add    esp,0x10
 8048b5f:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048b64:       83 c0 01                add    eax,0x1
 8048b67:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048b6c:       83 ec 08                sub    esp,0x8
 8048b6f:       68 a5 a0 04 08          push   0x804a0a5
 8048b74:       68 04 a0 04 08          push   0x804a004
 8048b79:       e8 62 fb ff ff          call   80486e0 <printf@plt>
 8048b7e:       83 c4 10                add    esp,0x10
 8048b81:       e8 1d 04 00 00          call   8048fa3 <read_line>
 8048b86:       83 ec 0c                sub    esp,0xc
 8048b89:       50                      push   eax
 8048b8a:       e8 ce 08 00 00          call   804945d <phase_quick>
 8048b8f:       83 c4 10                add    esp,0x10
 8048b92:       e8 0d 06 00 00          call   80491a4 <phase_defused>
 8048b97:       83 ec 0c                sub    esp,0xc
 8048b9a:       68 ab a0 04 08          push   0x804a0ab
 8048b9f:       e8 dc fb ff ff          call   8048780 <puts@plt>
 8048ba4:       83 c4 10                add    esp,0x10
 8048ba7:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048bac:       83 c0 01                add    eax,0x1
 8048baf:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048bb4:       83 ec 08                sub    esp,0x8
 8048bb7:       68 c8 a0 04 08          push   0x804a0c8
 8048bbc:       68 04 a0 04 08          push   0x804a004
 8048bc1:       e8 1a fb ff ff          call   80486e0 <printf@plt>
 8048bc6:       83 c4 10                add    esp,0x10
 8048bc9:       e8 d5 03 00 00          call   8048fa3 <read_line>
 8048bce:       83 ec 0c                sub    esp,0xc
 8048bd1:       50                      push   eax
 8048bd2:       e8 ed 08 00 00          call   80494c4 <phase_jump>
 8048bd7:       83 c4 10                add    esp,0x10
 8048bda:       e8 c5 05 00 00          call   80491a4 <phase_defused>
 8048bdf:       83 ec 0c                sub    esp,0xc
 8048be2:       68 cd a0 04 08          push   0x804a0cd
 8048be7:       e8 94 fb ff ff          call   8048780 <puts@plt>
 8048bec:       83 c4 10                add    esp,0x10
 8048bef:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048bf4:       83 c0 01                add    eax,0x1
 8048bf7:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048bfc:       83 ec 08                sub    esp,0x8
 8048bff:       68 dc a0 04 08          push   0x804a0dc
 8048c04:       68 04 a0 04 08          push   0x804a004
 8048c09:       e8 d2 fa ff ff          call   80486e0 <printf@plt>
 8048c0e:       83 c4 10                add    esp,0x10
 8048c11:       e8 8d 03 00 00          call   8048fa3 <read_line>
 8048c16:       83 ec 0c                sub    esp,0xc
 8048c19:       50                      push   eax
 8048c1a:       e8 d1 09 00 00          call   80495f0 <phase_binary>
 8048c1f:       83 c4 10                add    esp,0x10
 8048c22:       e8 7d 05 00 00          call   80491a4 <phase_defused>
 8048c27:       83 ec 0c                sub    esp,0xc
 8048c2a:       68 e4 a0 04 08          push   0x804a0e4
 8048c2f:       e8 4c fb ff ff          call   8048780 <puts@plt>
 8048c34:       83 c4 10                add    esp,0x10
 8048c37:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048c3c:       83 c0 01                add    eax,0x1
 8048c3f:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048c44:       83 ec 08                sub    esp,0x8
 8048c47:       68 08 a1 04 08          push   0x804a108
 8048c4c:       68 04 a0 04 08          push   0x804a004
 8048c51:       e8 8a fa ff ff          call   80486e0 <printf@plt>
 8048c56:       83 c4 10                add    esp,0x10
 8048c59:       e8 45 03 00 00          call   8048fa3 <read_line>
 8048c5e:       83 ec 0c                sub    esp,0xc
 8048c61:       50                      push   eax
 8048c62:       e8 07 0a 00 00          call   804966e <phase_array>
 8048c67:       83 c4 10                add    esp,0x10
 8048c6a:       e8 35 05 00 00          call   80491a4 <phase_defused>
 8048c6f:       83 ec 0c                sub    esp,0xc
 8048c72:       68 0e a1 04 08          push   0x804a10e
 8048c77:       e8 04 fb ff ff          call   8048780 <puts@plt>
 8048c7c:       83 c4 10                add    esp,0x10
 8048c7f:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048c84:       83 c0 01                add    eax,0x1
 8048c87:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048c8c:       83 ec 08                sub    esp,0x8
 8048c8f:       68 2c a1 04 08          push   0x804a12c
 8048c94:       68 04 a0 04 08          push   0x804a004
 8048c99:       e8 42 fa ff ff          call   80486e0 <printf@plt>
 8048c9e:       83 c4 10                add    esp,0x10
 8048ca1:       e8 fd 02 00 00          call   8048fa3 <read_line>
 8048ca6:       83 ec 0c                sub    esp,0xc
 8048ca9:       50                      push   eax
 8048caa:       e8 47 0a 00 00          call   80496f6 <phase_list>
 8048caf:       83 c4 10                add    esp,0x10
 8048cb2:       e8 ed 04 00 00          call   80491a4 <phase_defused>
 8048cb7:       83 ec 0c                sub    esp,0xc
 8048cba:       68 34 a1 04 08          push   0x804a134
 8048cbf:       e8 bc fa ff ff          call   8048780 <puts@plt>
 8048cc4:       83 c4 10                add    esp,0x10
 8048cc7:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 8048ccc:       83 c0 01                add    eax,0x1
 8048ccf:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 8048cd4:       83 ec 08                sub    esp,0x8
 8048cd7:       68 68 a1 04 08          push   0x804a168
 8048cdc:       68 04 a0 04 08          push   0x804a004
 8048ce1:       e8 fa f9 ff ff          call   80486e0 <printf@plt>
 8048ce6:       83 c4 10                add    esp,0x10
 8048ce9:       e8 b5 02 00 00          call   8048fa3 <read_line>
 8048cee:       83 ec 0c                sub    esp,0xc
 8048cf1:       50                      push   eax
 8048cf2:       e8 34 0d 00 00          call   8049a2b <phase_pi>
 8048cf7:       83 c4 10                add    esp,0x10
 8048cfa:       e8 a5 04 00 00          call   80491a4 <phase_defused>
 8048cff:       83 ec 0c                sub    esp,0xc
 8048d02:       68 74 a1 04 08          push   0x804a174
 8048d07:       e8 74 fa ff ff          call   8048780 <puts@plt>
 8048d0c:       83 c4 10                add    esp,0x10
 8048d0f:       b8 00 00 00 00          mov    eax,0x0
 8048d14:       8d 65 f8                lea    esp,[ebp-0x8]
 8048d17:       59                      pop    ecx
 8048d18:       5b                      pop    ebx
 8048d19:       5d                      pop    ebp
 8048d1a:       8d 61 fc                lea    esp,[ecx-0x4]
 8048d1d:       c3                      ret

08048d1e <sig_handler>:
 8048d1e:       55                      push   ebp
 8048d1f:       89 e5                   mov    ebp,esp
 8048d21:       83 ec 08                sub    esp,0x8
 8048d24:       83 ec 0c                sub    esp,0xc
 8048d27:       68 dc a1 04 08          push   0x804a1dc
 8048d2c:       e8 4f fa ff ff          call   8048780 <puts@plt>
 8048d31:       83 c4 10                add    esp,0x10
 8048d34:       83 ec 0c                sub    esp,0xc
 8048d37:       6a 03                   push   0x3
 8048d39:       e8 e2 f9 ff ff          call   8048720 <sleep@plt>
 8048d3e:       83 c4 10                add    esp,0x10
 8048d41:       83 ec 0c                sub    esp,0xc
 8048d44:       68 14 a2 04 08          push   0x804a214
 8048d49:       e8 92 f9 ff ff          call   80486e0 <printf@plt>
 8048d4e:       83 c4 10                add    esp,0x10
 8048d51:       a1 04 c6 04 08          mov    eax,ds:0x804c604
 8048d56:       83 ec 0c                sub    esp,0xc
 8048d59:       50                      push   eax
 8048d5a:       e8 91 f9 ff ff          call   80486f0 <fflush@plt>
 8048d5f:       83 c4 10                add    esp,0x10
 8048d62:       83 ec 0c                sub    esp,0xc
 8048d65:       6a 01                   push   0x1
 8048d67:       e8 b4 f9 ff ff          call   8048720 <sleep@plt>
 8048d6c:       83 c4 10                add    esp,0x10
 8048d6f:       83 ec 0c                sub    esp,0xc
 8048d72:       68 1c a2 04 08          push   0x804a21c
 8048d77:       e8 04 fa ff ff          call   8048780 <puts@plt>
 8048d7c:       83 c4 10                add    esp,0x10
 8048d7f:       83 ec 0c                sub    esp,0xc
 8048d82:       6a 10                   push   0x10
 8048d84:       e8 17 fa ff ff          call   80487a0 <exit@plt>

08048d89 <read_six_numbers>:
 8048d89:       55                      push   ebp
 8048d8a:       89 e5                   mov    ebp,esp
 8048d8c:       56                      push   esi
 8048d8d:       53                      push   ebx
 8048d8e:       83 ec 10                sub    esp,0x10
 8048d91:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048d94:       8d 70 14                lea    esi,[eax+0x14]
 8048d97:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048d9a:       8d 58 10                lea    ebx,[eax+0x10]
 8048d9d:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048da0:       8d 48 0c                lea    ecx,[eax+0xc]
 8048da3:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048da6:       8d 50 08                lea    edx,[eax+0x8]
 8048da9:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048dac:       83 c0 04                add    eax,0x4
 8048daf:       56                      push   esi
 8048db0:       53                      push   ebx
 8048db1:       51                      push   ecx
 8048db2:       52                      push   edx
 8048db3:       50                      push   eax
 8048db4:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 8048db7:       68 24 a2 04 08          push   0x804a224
 8048dbc:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8048dbf:       e8 3c fa ff ff          call   8048800 <__isoc99_sscanf@plt>
 8048dc4:       83 c4 20                add    esp,0x20
 8048dc7:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8048dca:       83 7d f4 05             cmp    DWORD PTR [ebp-0xc],0x5
 8048dce:       7f 05                   jg     8048dd5 <read_six_numbers+0x4c>
 8048dd0:       e8 7d 03 00 00          call   8049152 <explode_bomb>
 8048dd5:       90                      nop
 8048dd6:       8d 65 f8                lea    esp,[ebp-0x8]
 8048dd9:       5b                      pop    ebx
 8048dda:       5e                      pop    esi
 8048ddb:       5d                      pop    ebp
 8048ddc:       c3                      ret

08048ddd <string_length>:
 8048ddd:       55                      push   ebp
 8048dde:       89 e5                   mov    ebp,esp
 8048de0:       83 ec 10                sub    esp,0x10
 8048de3:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8048de6:       89 45 f8                mov    DWORD PTR [ebp-0x8],eax
 8048de9:       c7 45 fc 00 00 00 00    mov    DWORD PTR [ebp-0x4],0x0
 8048df0:       eb 08                   jmp    8048dfa <string_length+0x1d>
 8048df2:       83 45 f8 01             add    DWORD PTR [ebp-0x8],0x1
 8048df6:       83 45 fc 01             add    DWORD PTR [ebp-0x4],0x1
 8048dfa:       8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
 8048dfd:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048e00:       84 c0                   test   al,al
 8048e02:       75 ee                   jne    8048df2 <string_length+0x15>
 8048e04:       8b 45 fc                mov    eax,DWORD PTR [ebp-0x4]
 8048e07:       c9                      leave
 8048e08:       c3                      ret

08048e09 <strings_not_equal>:
 8048e09:       55                      push   ebp
 8048e0a:       89 e5                   mov    ebp,esp
 8048e0c:       53                      push   ebx
 8048e0d:       83 ec 10                sub    esp,0x10
 8048e10:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8048e13:       e8 c5 ff ff ff          call   8048ddd <string_length>
 8048e18:       83 c4 04                add    esp,0x4
 8048e1b:       89 c3                   mov    ebx,eax
 8048e1d:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 8048e20:       e8 b8 ff ff ff          call   8048ddd <string_length>
 8048e25:       83 c4 04                add    esp,0x4
 8048e28:       39 c3                   cmp    ebx,eax
 8048e2a:       74 07                   je     8048e33 <strings_not_equal+0x2a>
 8048e2c:       b8 01 00 00 00          mov    eax,0x1
 8048e31:       eb 3c                   jmp    8048e6f <strings_not_equal+0x66>
 8048e33:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8048e36:       89 45 f8                mov    DWORD PTR [ebp-0x8],eax
 8048e39:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048e3c:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8048e3f:       eb 1f                   jmp    8048e60 <strings_not_equal+0x57>
 8048e41:       8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
 8048e44:       0f b6 10                movzx  edx,BYTE PTR [eax]
 8048e47:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8048e4a:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048e4d:       38 c2                   cmp    dl,al
 8048e4f:       74 07                   je     8048e58 <strings_not_equal+0x4f>
 8048e51:       b8 01 00 00 00          mov    eax,0x1
 8048e56:       eb 17                   jmp    8048e6f <strings_not_equal+0x66>
 8048e58:       83 45 f8 01             add    DWORD PTR [ebp-0x8],0x1
 8048e5c:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 8048e60:       8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
 8048e63:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048e66:       84 c0                   test   al,al
 8048e68:       75 d7                   jne    8048e41 <strings_not_equal+0x38>
 8048e6a:       b8 00 00 00 00          mov    eax,0x0
 8048e6f:       8b 5d fc                mov    ebx,DWORD PTR [ebp-0x4]
 8048e72:       c9                      leave
 8048e73:       c3                      ret

08048e74 <strings_equal>:
 8048e74:       55                      push   ebp
 8048e75:       89 e5                   mov    ebp,esp
 8048e77:       53                      push   ebx
 8048e78:       83 ec 10                sub    esp,0x10
 8048e7b:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8048e7e:       e8 5a ff ff ff          call   8048ddd <string_length>
 8048e83:       83 c4 04                add    esp,0x4
 8048e86:       89 c3                   mov    ebx,eax
 8048e88:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 8048e8b:       e8 4d ff ff ff          call   8048ddd <string_length>
 8048e90:       83 c4 04                add    esp,0x4
 8048e93:       39 c3                   cmp    ebx,eax
 8048e95:       75 07                   jne    8048e9e <strings_equal+0x2a>
 8048e97:       b8 00 00 00 00          mov    eax,0x0
 8048e9c:       eb 3c                   jmp    8048eda <strings_equal+0x66>
 8048e9e:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8048ea1:       89 45 f8                mov    DWORD PTR [ebp-0x8],eax
 8048ea4:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8048ea7:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8048eaa:       eb 1f                   jmp    8048ecb <strings_equal+0x57>
 8048eac:       8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
 8048eaf:       0f b6 10                movzx  edx,BYTE PTR [eax]
 8048eb2:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8048eb5:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048eb8:       38 c2                   cmp    dl,al
 8048eba:       74 07                   je     8048ec3 <strings_equal+0x4f>
 8048ebc:       b8 01 00 00 00          mov    eax,0x1
 8048ec1:       eb 17                   jmp    8048eda <strings_equal+0x66>
 8048ec3:       83 45 f8 01             add    DWORD PTR [ebp-0x8],0x1
 8048ec7:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 8048ecb:       8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
 8048ece:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048ed1:       84 c0                   test   al,al
 8048ed3:       75 d7                   jne    8048eac <strings_equal+0x38>
 8048ed5:       b8 01 00 00 00          mov    eax,0x1
 8048eda:       8b 5d fc                mov    ebx,DWORD PTR [ebp-0x4]
 8048edd:       c9                      leave
 8048ede:       c3                      ret

08048edf <initialize_bomb>:
 8048edf:       55                      push   ebp
 8048ee0:       89 e5                   mov    ebp,esp
 8048ee2:       83 ec 08                sub    esp,0x8
 8048ee5:       83 ec 08                sub    esp,0x8
 8048ee8:       68 1e 8d 04 08          push   0x8048d1e
 8048eed:       6a 02                   push   0x2
 8048eef:       e8 9c f8 ff ff          call   8048790 <__sysv_signal@plt>
 8048ef4:       83 c4 10                add    esp,0x10
 8048ef7:       83 ec 0c                sub    esp,0xc
 8048efa:       68 36 a2 04 08          push   0x804a236
 8048eff:       e8 b0 0d 00 00          call   8049cb4 <checkin>
 8048f04:       83 c4 10                add    esp,0x10
 8048f07:       90                      nop
 8048f08:       c9                      leave
 8048f09:       c3                      ret

08048f0a <blank_line>:
 8048f0a:       55                      push   ebp
 8048f0b:       89 e5                   mov    ebp,esp
 8048f0d:       83 ec 08                sub    esp,0x8
 8048f10:       eb 30                   jmp    8048f42 <blank_line+0x38>
 8048f12:       e8 69 f9 ff ff          call   8048880 <__ctype_b_loc@plt>
 8048f17:       8b 08                   mov    ecx,DWORD PTR [eax]
 8048f19:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8048f1c:       8d 50 01                lea    edx,[eax+0x1]
 8048f1f:       89 55 08                mov    DWORD PTR [ebp+0x8],edx
 8048f22:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048f25:       0f be c0                movsx  eax,al
 8048f28:       01 c0                   add    eax,eax
 8048f2a:       01 c8                   add    eax,ecx
 8048f2c:       0f b7 00                movzx  eax,WORD PTR [eax]
 8048f2f:       0f b7 c0                movzx  eax,ax
 8048f32:       25 00 20 00 00          and    eax,0x2000
 8048f37:       85 c0                   test   eax,eax
 8048f39:       75 07                   jne    8048f42 <blank_line+0x38>
 8048f3b:       b8 00 00 00 00          mov    eax,0x0
 8048f40:       eb 0f                   jmp    8048f51 <blank_line+0x47>
 8048f42:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8048f45:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8048f48:       84 c0                   test   al,al
 8048f4a:       75 c6                   jne    8048f12 <blank_line+0x8>
 8048f4c:       b8 01 00 00 00          mov    eax,0x1
 8048f51:       c9                      leave
 8048f52:       c3                      ret

08048f53 <skip>:
 8048f53:       55                      push   ebp
 8048f54:       89 e5                   mov    ebp,esp
 8048f56:       83 ec 18                sub    esp,0x18
 8048f59:       8b 0d 14 c6 04 08       mov    ecx,DWORD PTR ds:0x804c614
 8048f5f:       8b 15 0c c6 04 08       mov    edx,DWORD PTR ds:0x804c60c
 8048f65:       89 d0                   mov    eax,edx
 8048f67:       c1 e0 02                shl    eax,0x2
 8048f6a:       01 d0                   add    eax,edx
 8048f6c:       c1 e0 04                shl    eax,0x4
 8048f6f:       05 20 c6 04 08          add    eax,0x804c620
 8048f74:       83 ec 04                sub    esp,0x4
 8048f77:       51                      push   ecx
 8048f78:       6a 50                   push   0x50
 8048f7a:       50                      push   eax
 8048f7b:       e8 80 f7 ff ff          call   8048700 <fgets@plt>
 8048f80:       83 c4 10                add    esp,0x10
 8048f83:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8048f86:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 8048f8a:       74 12                   je     8048f9e <skip+0x4b>
 8048f8c:       83 ec 0c                sub    esp,0xc
 8048f8f:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 8048f92:       e8 73 ff ff ff          call   8048f0a <blank_line>
 8048f97:       83 c4 10                add    esp,0x10
 8048f9a:       85 c0                   test   eax,eax
 8048f9c:       75 bb                   jne    8048f59 <skip+0x6>
 8048f9e:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8048fa1:       c9                      leave
 8048fa2:       c3                      ret

08048fa3 <read_line>:
 8048fa3:       55                      push   ebp
 8048fa4:       89 e5                   mov    ebp,esp
 8048fa6:       83 ec 18                sub    esp,0x18
 8048fa9:       e8 a5 ff ff ff          call   8048f53 <skip>
 8048fae:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8048fb1:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 8048fb5:       75 79                   jne    8049030 <read_line+0x8d>
 8048fb7:       8b 15 14 c6 04 08       mov    edx,DWORD PTR ds:0x804c614
 8048fbd:       a1 00 c6 04 08          mov    eax,ds:0x804c600
 8048fc2:       39 c2                   cmp    edx,eax
 8048fc4:       75 1a                   jne    8048fe0 <read_line+0x3d>
 8048fc6:       83 ec 0c                sub    esp,0xc
 8048fc9:       68 40 a2 04 08          push   0x804a240
 8048fce:       e8 ad f7 ff ff          call   8048780 <puts@plt>
 8048fd3:       83 c4 10                add    esp,0x10
 8048fd6:       83 ec 0c                sub    esp,0xc
 8048fd9:       6a 08                   push   0x8
 8048fdb:       e8 c0 f7 ff ff          call   80487a0 <exit@plt>
 8048fe0:       83 ec 0c                sub    esp,0xc
 8048fe3:       68 5e a2 04 08          push   0x804a25e
 8048fe8:       e8 83 f7 ff ff          call   8048770 <getenv@plt>
 8048fed:       83 c4 10                add    esp,0x10
 8048ff0:       85 c0                   test   eax,eax
 8048ff2:       74 0a                   je     8048ffe <read_line+0x5b>
 8048ff4:       83 ec 0c                sub    esp,0xc
 8048ff7:       6a 00                   push   0x0
 8048ff9:       e8 a2 f7 ff ff          call   80487a0 <exit@plt>
 8048ffe:       a1 00 c6 04 08          mov    eax,ds:0x804c600
 8049003:       a3 14 c6 04 08          mov    ds:0x804c614,eax
 8049008:       e8 46 ff ff ff          call   8048f53 <skip>
 804900d:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049010:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 8049014:       75 1a                   jne    8049030 <read_line+0x8d>
 8049016:       83 ec 0c                sub    esp,0xc
 8049019:       68 40 a2 04 08          push   0x804a240
 804901e:       e8 5d f7 ff ff          call   8048780 <puts@plt>
 8049023:       83 c4 10                add    esp,0x10
 8049026:       83 ec 0c                sub    esp,0xc
 8049029:       6a 00                   push   0x0
 804902b:       e8 70 f7 ff ff          call   80487a0 <exit@plt>
 8049030:       8b 15 0c c6 04 08       mov    edx,DWORD PTR ds:0x804c60c
 8049036:       89 d0                   mov    eax,edx
 8049038:       c1 e0 02                shl    eax,0x2
 804903b:       01 d0                   add    eax,edx
 804903d:       c1 e0 04                shl    eax,0x4
 8049040:       05 20 c6 04 08          add    eax,0x804c620
 8049045:       83 ec 0c                sub    esp,0xc
 8049048:       50                      push   eax
 8049049:       e8 92 f7 ff ff          call   80487e0 <strlen@plt>
 804904e:       83 c4 10                add    esp,0x10
 8049051:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 8049054:       83 7d f0 4e             cmp    DWORD PTR [ebp-0x10],0x4e
 8049058:       7e 4d                   jle    80490a7 <read_line+0x104>
 804905a:       83 ec 0c                sub    esp,0xc
 804905d:       68 69 a2 04 08          push   0x804a269
 8049062:       e8 19 f7 ff ff          call   8048780 <puts@plt>
 8049067:       83 c4 10                add    esp,0x10
 804906a:       8b 15 0c c6 04 08       mov    edx,DWORD PTR ds:0x804c60c
 8049070:       8d 42 01                lea    eax,[edx+0x1]
 8049073:       a3 0c c6 04 08          mov    ds:0x804c60c,eax
 8049078:       89 d0                   mov    eax,edx
 804907a:       c1 e0 02                shl    eax,0x2
 804907d:       01 d0                   add    eax,edx
 804907f:       c1 e0 04                shl    eax,0x4
 8049082:       05 20 c6 04 08          add    eax,0x804c620
 8049087:       c7 00 2a 2a 2a 74       mov    DWORD PTR [eax],0x742a2a2a
 804908d:       c7 40 04 72 75 6e 63    mov    DWORD PTR [eax+0x4],0x636e7572
 8049094:       c7 40 08 61 74 65 64    mov    DWORD PTR [eax+0x8],0x64657461
 804909b:       c7 40 0c 2a 2a 2a 00    mov    DWORD PTR [eax+0xc],0x2a2a2a
 80490a2:       e8 ab 00 00 00          call   8049152 <explode_bomb>
 80490a7:       8b 15 0c c6 04 08       mov    edx,DWORD PTR ds:0x804c60c
 80490ad:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 80490b0:       8d 48 ff                lea    ecx,[eax-0x1]
 80490b3:       89 d0                   mov    eax,edx
 80490b5:       c1 e0 02                shl    eax,0x2
 80490b8:       01 d0                   add    eax,edx
 80490ba:       c1 e0 04                shl    eax,0x4
 80490bd:       01 c8                   add    eax,ecx
 80490bf:       05 20 c6 04 08          add    eax,0x804c620
 80490c4:       c6 00 00                mov    BYTE PTR [eax],0x0
 80490c7:       8b 15 0c c6 04 08       mov    edx,DWORD PTR ds:0x804c60c
 80490cd:       8d 42 01                lea    eax,[edx+0x1]
 80490d0:       a3 0c c6 04 08          mov    ds:0x804c60c,eax
 80490d5:       89 d0                   mov    eax,edx
 80490d7:       c1 e0 02                shl    eax,0x2
 80490da:       01 d0                   add    eax,edx
 80490dc:       c1 e0 04                shl    eax,0x4
 80490df:       05 20 c6 04 08          add    eax,0x804c620
 80490e4:       c9                      leave
 80490e5:       c3                      ret

080490e6 <notify>:
 80490e6:       55                      push   ebp
 80490e7:       89 e5                   mov    ebp,esp
 80490e9:       81 ec 08 04 00 00       sub    esp,0x408
 80490ef:       a1 0c c6 04 08          mov    eax,ds:0x804c60c
 80490f4:       8d 50 ff                lea    edx,[eax-0x1]
 80490f7:       89 d0                   mov    eax,edx
 80490f9:       c1 e0 02                shl    eax,0x2
 80490fc:       01 d0                   add    eax,edx
 80490fe:       c1 e0 04                shl    eax,0x4
 8049101:       8d 90 20 c6 04 08       lea    edx,[eax+0x804c620]
 8049107:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 804910c:       83 7d 08 00             cmp    DWORD PTR [ebp+0x8],0x0
 8049110:       74 07                   je     8049119 <notify+0x33>
 8049112:       b9 84 a2 04 08          mov    ecx,0x804a284
 8049117:       eb 05                   jmp    804911e <notify+0x38>
 8049119:       b9 8c a2 04 08          mov    ecx,0x804a28c
 804911e:       83 ec 08                sub    esp,0x8
 8049121:       52                      push   edx
 8049122:       50                      push   eax
 8049123:       51                      push   ecx
 8049124:       68 95 a2 04 08          push   0x804a295
 8049129:       68 00 04 00 00          push   0x400
 804912e:       8d 85 f8 fb ff ff       lea    eax,[ebp-0x408]
 8049134:       50                      push   eax
 8049135:       e8 f6 f6 ff ff          call   8048830 <snprintf@plt>
 804913a:       83 c4 20                add    esp,0x20
 804913d:       83 ec 0c                sub    esp,0xc
 8049140:       8d 85 f8 fb ff ff       lea    eax,[ebp-0x408]
 8049146:       50                      push   eax
 8049147:       e8 68 0b 00 00          call   8049cb4 <checkin>
 804914c:       83 c4 10                add    esp,0x10
 804914f:       90                      nop
 8049150:       c9                      leave
 8049151:       c3                      ret

08049152 <explode_bomb>:
 8049152:       55                      push   ebp
 8049153:       89 e5                   mov    ebp,esp
 8049155:       83 ec 08                sub    esp,0x8
 8049158:       83 ec 08                sub    esp,0x8
 804915b:       68 a4 a2 04 08          push   0x804a2a4
 8049160:       68 5d a5 04 08          push   0x804a55d
 8049165:       e8 76 f5 ff ff          call   80486e0 <printf@plt>
 804916a:       83 c4 10                add    esp,0x10
 804916d:       83 ec 0c                sub    esp,0xc
 8049170:       68 62 a5 04 08          push   0x804a562
 8049175:       e8 06 f6 ff ff          call   8048780 <puts@plt>
 804917a:       83 c4 10                add    esp,0x10
 804917d:       83 ec 0c                sub    esp,0xc
 8049180:       6a 00                   push   0x0
 8049182:       e8 5f ff ff ff          call   80490e6 <notify>
 8049187:       83 c4 10                add    esp,0x10
 804918a:       83 ec 0c                sub    esp,0xc
 804918d:       68 80 a5 04 08          push   0x804a580
 8049192:       e8 e9 f5 ff ff          call   8048780 <puts@plt>
 8049197:       83 c4 10                add    esp,0x10
 804919a:       83 ec 0c                sub    esp,0xc
 804919d:       6a 08                   push   0x8
 804919f:       e8 fc f5 ff ff          call   80487a0 <exit@plt>

080491a4 <phase_defused>:
 80491a4:       55                      push   ebp
 80491a5:       89 e5                   mov    ebp,esp
 80491a7:       83 ec 68                sub    esp,0x68
 80491aa:       83 ec 0c                sub    esp,0xc
 80491ad:       6a 01                   push   0x1
 80491af:       e8 32 ff ff ff          call   80490e6 <notify>
 80491b4:       83 c4 10                add    esp,0x10
 80491b7:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 80491bc:       83 f8 08                cmp    eax,0x8
 80491bf:       0f 85 81 00 00 00       jne    8049246 <phase_defused+0xa2>
 80491c5:       a1 10 c6 04 08          mov    eax,ds:0x804c610
 80491ca:       83 c0 01                add    eax,0x1
 80491cd:       a3 10 c6 04 08          mov    ds:0x804c610,eax
 80491d2:       83 ec 0c                sub    esp,0xc
 80491d5:       8d 45 a4                lea    eax,[ebp-0x5c]
 80491d8:       50                      push   eax
 80491d9:       8d 45 9c                lea    eax,[ebp-0x64]
 80491dc:       50                      push   eax
 80491dd:       8d 45 a0                lea    eax,[ebp-0x60]
 80491e0:       50                      push   eax
 80491e1:       68 a3 a5 04 08          push   0x804a5a3
 80491e6:       68 b0 c7 04 08          push   0x804c7b0
 80491eb:       e8 10 f6 ff ff          call   8048800 <__isoc99_sscanf@plt>
 80491f0:       83 c4 20                add    esp,0x20
 80491f3:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80491f6:       83 7d f4 03             cmp    DWORD PTR [ebp-0xc],0x3
 80491fa:       75 4a                   jne    8049246 <phase_defused+0xa2>
 80491fc:       83 ec 08                sub    esp,0x8
 80491ff:       68 ac a5 04 08          push   0x804a5ac
 8049204:       8d 45 a4                lea    eax,[ebp-0x5c]
 8049207:       50                      push   eax
 8049208:       e8 fc fb ff ff          call   8048e09 <strings_not_equal>
 804920d:       83 c4 10                add    esp,0x10
 8049210:       85 c0                   test   eax,eax
 8049212:       75 32                   jne    8049246 <phase_defused+0xa2>
 8049214:       83 ec 0c                sub    esp,0xc
 8049217:       68 b8 a5 04 08          push   0x804a5b8
 804921c:       e8 5f f5 ff ff          call   8048780 <puts@plt>
 8049221:       83 c4 10                add    esp,0x10
 8049224:       83 ec 0c                sub    esp,0xc
 8049227:       68 e0 a5 04 08          push   0x804a5e0
 804922c:       e8 4f f5 ff ff          call   8048780 <puts@plt>
 8049231:       83 c4 10                add    esp,0x10
 8049234:       e8 67 06 00 00          call   80498a0 <secret_phase>
 8049239:       83 ec 0c                sub    esp,0xc
 804923c:       6a 01                   push   0x1
 804923e:       e8 a3 fe ff ff          call   80490e6 <notify>
 8049243:       83 c4 10                add    esp,0x10
 8049246:       90                      nop
 8049247:       c9                      leave
 8049248:       c3                      ret

08049249 <print_key>:
 8049249:       55                      push   ebp
 804924a:       89 e5                   mov    ebp,esp
 804924c:       81 ec 18 0c 00 00       sub    esp,0xc18
 8049252:       83 ec 08                sub    esp,0x8
 8049255:       6a 22                   push   0x22
 8049257:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804925a:       e8 71 f5 ff ff          call   80487d0 <strchr@plt>
 804925f:       83 c4 10                add    esp,0x10
 8049262:       85 c0                   test   eax,eax
 8049264:       75 14                   jne    804927a <print_key+0x31>
 8049266:       83 ec 08                sub    esp,0x8
 8049269:       6a 27                   push   0x27
 804926b:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804926e:       e8 5d f5 ff ff          call   80487d0 <strchr@plt>
 8049273:       83 c4 10                add    esp,0x10
 8049276:       85 c0                   test   eax,eax
 8049278:       74 0f                   je     8049289 <print_key+0x40>
 804927a:       83 ec 08                sub    esp,0x8
 804927d:       68 18 a6 04 08          push   0x804a618
 8049282:       6a 01                   push   0x1
 8049284:       e8 b7 f4 ff ff          call   8048740 <err@plt>
 8049289:       83 ec 0c                sub    esp,0xc
 804928c:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804928f:       68 c0 cc 04 08          push   0x804ccc0
 8049294:       68 36 a6 04 08          push   0x804a636
 8049299:       68 00 08 00 00          push   0x800
 804929e:       8d 85 f0 f7 ff ff       lea    eax,[ebp-0x810]
 80492a4:       50                      push   eax
 80492a5:       e8 86 f5 ff ff          call   8048830 <snprintf@plt>
 80492aa:       83 c4 20                add    esp,0x20
 80492ad:       83 ec 08                sub    esp,0x8
 80492b0:       68 54 a6 04 08          push   0x804a654
 80492b5:       68 57 a6 04 08          push   0x804a657
 80492ba:       e8 51 f5 ff ff          call   8048810 <fopen@plt>
 80492bf:       83 c4 10                add    esp,0x10
 80492c2:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80492c5:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 80492c9:       75 0f                   jne    80492da <print_key+0x91>
 80492cb:       83 ec 08                sub    esp,0x8
 80492ce:       68 64 a6 04 08          push   0x804a664
 80492d3:       6a 01                   push   0x1
 80492d5:       e8 66 f4 ff ff          call   8048740 <err@plt>
 80492da:       83 ec 08                sub    esp,0x8
 80492dd:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 80492e0:       8d 85 f0 f7 ff ff       lea    eax,[ebp-0x810]
 80492e6:       50                      push   eax
 80492e7:       e8 84 f5 ff ff          call   8048870 <fputs@plt>
 80492ec:       83 c4 10                add    esp,0x10
 80492ef:       83 ec 0c                sub    esp,0xc
 80492f2:       68 91 a6 04 08          push   0x804a691
 80492f7:       e8 84 f4 ff ff          call   8048780 <puts@plt>
 80492fc:       83 c4 10                add    esp,0x10
 80492ff:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 8049302:       68 ff 03 00 00          push   0x3ff
 8049307:       6a 01                   push   0x1
 8049309:       8d 85 f0 f3 ff ff       lea    eax,[ebp-0xc10]
 804930f:       50                      push   eax
 8049310:       e8 4b f4 ff ff          call   8048760 <fread@plt>
 8049315:       83 c4 10                add    esp,0x10
 8049318:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 804931b:       8d 95 f0 f3 ff ff       lea    edx,[ebp-0xc10]
 8049321:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 8049324:       01 d0                   add    eax,edx
 8049326:       c6 00 00                mov    BYTE PTR [eax],0x0
 8049329:       83 ec 08                sub    esp,0x8
 804932c:       8d 85 f0 f3 ff ff       lea    eax,[ebp-0xc10]
 8049332:       50                      push   eax
 8049333:       68 a5 a6 04 08          push   0x804a6a5
 8049338:       e8 a3 f3 ff ff          call   80486e0 <printf@plt>
 804933d:       83 c4 10                add    esp,0x10
 8049340:       81 7d f0 fe 03 00 00    cmp    DWORD PTR [ebp-0x10],0x3fe
 8049347:       76 02                   jbe    804934b <print_key+0x102>
 8049349:       eb b4                   jmp    80492ff <print_key+0xb6>
 804934b:       90                      nop
 804934c:       83 ec 0c                sub    esp,0xc
 804934f:       6a 0a                   push   0xa
 8049351:       e8 ea f4 ff ff          call   8048840 <putchar@plt>
 8049356:       83 c4 10                add    esp,0x10
 8049359:       83 ec 0c                sub    esp,0xc
 804935c:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 804935f:       e8 ac f3 ff ff          call   8048710 <fclose@plt>
 8049364:       83 c4 10                add    esp,0x10
 8049367:       90                      nop
 8049368:       c9                      leave
 8049369:       c3                      ret

0804936a <phase_strcmp>:
 804936a:       55                      push   ebp
 804936b:       89 e5                   mov    ebp,esp
 804936d:       83 ec 18                sub    esp,0x18
 8049370:       c7 45 f4 a8 a6 04 08    mov    DWORD PTR [ebp-0xc],0x804a6a8
 8049377:       83 ec 08                sub    esp,0x8
 804937a:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 804937d:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049380:       e8 84 fa ff ff          call   8048e09 <strings_not_equal>
 8049385:       83 c4 10                add    esp,0x10
 8049388:       85 c0                   test   eax,eax
 804938a:       74 05                   je     8049391 <phase_strcmp+0x27>
 804938c:       e8 c1 fd ff ff          call   8049152 <explode_bomb>
 8049391:       83 ec 0c                sub    esp,0xc
 8049394:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049397:       e8 ad fe ff ff          call   8049249 <print_key>
 804939c:       83 c4 10                add    esp,0x10
 804939f:       90                      nop
 80493a0:       c9                      leave
 80493a1:       c3                      ret

080493a2 <func_game>:
 80493a2:       55                      push   ebp
 80493a3:       89 e5                   mov    ebp,esp
 80493a5:       83 ec 18                sub    esp,0x18
 80493a8:       8b 45 10                mov    eax,DWORD PTR [ebp+0x10]
 80493ab:       89 45 e8                mov    DWORD PTR [ebp-0x18],eax -> paper
 80493ae:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 80493b1:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax -> rock
 80493b4:       8b 45 14                mov    eax,DWORD PTR [ebp+0x14]
 80493b7:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax -> scissors
 80493ba:       c7 45 f4 00 00 00 00    mov    DWORD PTR [ebp-0xc],0x0
 80493c1:       eb 1e                   jmp    80493e1 <func_game+0x3f>
 80493c3:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80493c6:       8b 44 85 e8             mov    eax,DWORD PTR [ebp+eax*4-0x18]
 80493ca:       83 ec 08                sub    esp,0x8
 80493cd:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80493d0:       50                      push   eax
 80493d1:       e8 33 fa ff ff          call   8048e09 <strings_not_equal>
 80493d6:       83 c4 10                add    esp,0x10
 80493d9:       85 c0                   test   eax,eax
 80493db:       74 0c                   je     80493e9 <func_game+0x47>
 80493dd:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 80493e1:       83 7d f4 02             cmp    DWORD PTR [ebp-0xc],0x2
 80493e5:       7e dc                   jle    80493c3 <func_game+0x21>
 80493e7:       eb 01                   jmp    80493ea <func_game+0x48>
 80493e9:       90                      nop
 80493ea:       83 7d f4 02             cmp    DWORD PTR [ebp-0xc],0x2
 80493ee:       74 05                   je     80493f5 <func_game+0x53>
 80493f0:       e8 5d fd ff ff          call   8049152 <explode_bomb>
 80493f5:       83 ec 0c                sub    esp,0xc
 80493f8:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80493fb:       e8 49 fe ff ff          call   8049249 <print_key>
 8049400:       83 c4 10                add    esp,0x10
 8049403:       90                      nop
 8049404:       c9                      leave
 8049405:       c3                      ret

08049406 <phase_funcall>:
 8049406:       55                      push   ebp
 8049407:       89 e5                   mov    ebp,esp
 8049409:       83 ec 08                sub    esp,0x8
 804940c:       68 eb a6 04 08          push   0x804a6eb
 8049411:       68 f4 a6 04 08          push   0x804a6f4
 8049416:       68 fa a6 04 08          push   0x804a6fa
 804941b:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804941e:       e8 7f ff ff ff          call   80493a2 <func_game>
 8049423:       83 c4 10                add    esp,0x10
 8049426:       90                      nop
 8049427:       c9                      leave
 8049428:       c3                      ret

08049429 <phase_password>:
 8049429:       55                      push   ebp
 804942a:       89 e5                   mov    ebp,esp
 804942c:       83 ec 08                sub    esp,0x8
 804942f:       a1 a0 c4 04 08          mov    eax,ds:0x804c4a0
 8049434:       83 ec 08                sub    esp,0x8
 8049437:       50                      push   eax
 8049438:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804943b:       e8 34 fa ff ff          call   8048e74 <strings_equal>
 8049440:       83 c4 10                add    esp,0x10
 8049443:       85 c0                   test   eax,eax
 8049445:       75 05                   jne    804944c <phase_password+0x23>
 8049447:       e8 06 fd ff ff          call   8049152 <explode_bomb>
 804944c:       83 ec 0c                sub    esp,0xc
 804944f:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049452:       e8 f2 fd ff ff          call   8049249 <print_key>
 8049457:       83 c4 10                add    esp,0x10
 804945a:       90                      nop
 804945b:       c9                      leave
 804945c:       c3                      ret

0804945d <phase_quick>:
 804945d:       55                      push   ebp
 804945e:       89 e5                   mov    ebp,esp
 8049460:       83 ec 28                sub    esp,0x28
 8049463:       83 ec 08                sub    esp,0x8
 8049466:       8d 45 dc                lea    eax,[ebp-0x24]
 8049469:       50                      push   eax
 804946a:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804946d:       e8 17 f9 ff ff          call   8048d89 <read_six_numbers>
 8049472:       83 c4 10                add    esp,0x10
 8049475:       8b 45 dc                mov    eax,DWORD PTR [ebp-0x24]
 8049478:       85 c0                   test   eax,eax
 804947a:       79 05                   jns    8049481 <phase_quick+0x24>
 804947c:       e8 d1 fc ff ff          call   8049152 <explode_bomb>
 8049481:       c7 45 f4 01 00 00 00    mov    DWORD PTR [ebp-0xc],0x1
 8049488:       eb 23                   jmp    80494ad <phase_quick+0x50>
 804948a:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804948d:       8b 44 85 dc             mov    eax,DWORD PTR [ebp+eax*4-0x24]
 8049491:       8b 55 f4                mov    edx,DWORD PTR [ebp-0xc]
 8049494:       83 ea 01                sub    edx,0x1
 8049497:       8b 4c 95 dc             mov    ecx,DWORD PTR [ebp+edx*4-0x24]
 804949b:       8b 55 f4                mov    edx,DWORD PTR [ebp-0xc]
 804949e:       01 ca                   add    edx,ecx
 80494a0:       39 d0                   cmp    eax,edx
 80494a2:       74 05                   je     80494a9 <phase_quick+0x4c>
 80494a4:       e8 a9 fc ff ff          call   8049152 <explode_bomb>
 80494a9:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 80494ad:       83 7d f4 05             cmp    DWORD PTR [ebp-0xc],0x5
 80494b1:       7e d7                   jle    804948a <phase_quick+0x2d>
 80494b3:       83 ec 0c                sub    esp,0xc
 80494b6:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80494b9:       e8 8b fd ff ff          call   8049249 <print_key>
 80494be:       83 c4 10                add    esp,0x10
 80494c1:       90                      nop
 80494c2:       c9                      leave
 80494c3:       c3                      ret

080494c4 <phase_jump>:
 80494c4:       55                      push   ebp
 80494c5:       89 e5                   mov    ebp,esp
 80494c7:       83 ec 18                sub    esp,0x18
 80494ca:       c7 45 f4 00 00 00 00    mov    DWORD PTR [ebp-0xc],0x0
 80494d1:       c7 45 f0 00 00 00 00    mov    DWORD PTR [ebp-0x10],0x0
 80494d8:       8d 45 e8                lea    eax,[ebp-0x18]
 80494db:       50                      push   eax
 80494dc:       8d 45 ec                lea    eax,[ebp-0x14]
 80494df:       50                      push   eax
 80494e0:       68 0a a7 04 08          push   0x804a70a
 80494e5:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80494e8:       e8 13 f3 ff ff          call   8048800 <__isoc99_sscanf@plt>
 80494ed:       83 c4 10                add    esp,0x10
 80494f0:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 80494f3:       83 7d f0 01             cmp    DWORD PTR [ebp-0x10],0x1
 80494f7:       7f 05                   jg     80494fe <phase_jump+0x3a>
 80494f9:       e8 54 fc ff ff          call   8049152 <explode_bomb>
 80494fe:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 8049501:       83 f8 07                cmp    eax,0x7
 8049504:       77 51                   ja     8049557 <phase_jump+0x93>
 8049506:       8b 04 85 10 a7 04 08    mov    eax,DWORD PTR [eax*4+0x804a710]
 804950d:       ff e0                   jmp    eax
 804950f:       c7 45 f4 5b 02 00 00    mov    DWORD PTR [ebp-0xc],0x25b
 8049516:       eb 44                   jmp    804955c <phase_jump+0x98>
 8049518:       c7 45 f4 32 02 00 00    mov    DWORD PTR [ebp-0xc],0x232
 804951f:       eb 3b                   jmp    804955c <phase_jump+0x98>
 8049521:       c7 45 f4 82 02 00 00    mov    DWORD PTR [ebp-0xc],0x282
 8049528:       eb 32                   jmp    804955c <phase_jump+0x98>
 804952a:       c7 45 f4 6c 01 00 00    mov    DWORD PTR [ebp-0xc],0x16c
 8049531:       eb 29                   jmp    804955c <phase_jump+0x98>
 8049533:       c7 45 f4 af 02 00 00    mov    DWORD PTR [ebp-0xc],0x2af
 804953a:       eb 20                   jmp    804955c <phase_jump+0x98>
 804953c:       c7 45 f4 c8 02 00 00    mov    DWORD PTR [ebp-0xc],0x2c8
 8049543:       eb 17                   jmp    804955c <phase_jump+0x98>
 8049545:       c7 45 f4 46 01 00 00    mov    DWORD PTR [ebp-0xc],0x146
 804954c:       eb 0e                   jmp    804955c <phase_jump+0x98>
 804954e:       c7 45 f4 27 03 00 00    mov    DWORD PTR [ebp-0xc],0x327
 8049555:       eb 05                   jmp    804955c <phase_jump+0x98>
 8049557:       e8 f6 fb ff ff          call   8049152 <explode_bomb>
 804955c:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 804955f:       39 45 f4                cmp    DWORD PTR [ebp-0xc],eax
 8049562:       74 05                   je     8049569 <phase_jump+0xa5>
 8049564:       e8 e9 fb ff ff          call   8049152 <explode_bomb>
 8049569:       83 ec 0c                sub    esp,0xc
 804956c:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804956f:       e8 d5 fc ff ff          call   8049249 <print_key>
 8049574:       83 c4 10                add    esp,0x10
 8049577:       90                      nop
 8049578:       c9                      leave
 8049579:       c3                      ret

0804957a <func4>:
 804957a:       55                      push   ebp
 804957b:       89 e5                   mov    ebp,esp
 804957d:       83 ec 18                sub    esp,0x18
 8049580:       8b 45 10                mov    eax,DWORD PTR [ebp+0x10]
 8049583:       2b 45 0c                sub    eax,DWORD PTR [ebp+0xc]
 8049586:       89 c2                   mov    edx,eax
 8049588:       c1 ea 1f                shr    edx,0x1f
 804958b:       01 d0                   add    eax,edx
 804958d:       d1 f8                   sar    eax,1
 804958f:       89 c2                   mov    edx,eax
 8049591:       8b 45 0c                mov    eax,DWORD PTR [ebp+0xc]
 8049594:       01 d0                   add    eax,edx
 8049596:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049599:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804959c:       3b 45 08                cmp    eax,DWORD PTR [ebp+0x8]
 804959f:       7e 21                   jle    80495c2 <func4+0x48>
 80495a1:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495a4:       83 e8 01                sub    eax,0x1
 80495a7:       83 ec 04                sub    esp,0x4
 80495aa:       50                      push   eax
 80495ab:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 80495ae:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80495b1:       e8 c4 ff ff ff          call   804957a <func4>
 80495b6:       83 c4 10                add    esp,0x10
 80495b9:       89 c2                   mov    edx,eax
 80495bb:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495be:       01 d0                   add    eax,edx
 80495c0:       eb 2c                   jmp    80495ee <func4+0x74>
 80495c2:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495c5:       3b 45 08                cmp    eax,DWORD PTR [ebp+0x8]
 80495c8:       7d 21                   jge    80495eb <func4+0x71>
 80495ca:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495cd:       83 c0 01                add    eax,0x1
 80495d0:       83 ec 04                sub    esp,0x4
 80495d3:       ff 75 10                push   DWORD PTR [ebp+0x10]
 80495d6:       50                      push   eax
 80495d7:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80495da:       e8 9b ff ff ff          call   804957a <func4>
 80495df:       83 c4 10                add    esp,0x10
 80495e2:       89 c2                   mov    edx,eax
 80495e4:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495e7:       01 d0                   add    eax,edx
 80495e9:       eb 03                   jmp    80495ee <func4+0x74>
 80495eb:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80495ee:       c9                      leave
 80495ef:       c3                      ret

080495f0 <phase_binary>:
 80495f0:       55                      push   ebp
 80495f1:       89 e5                   mov    ebp,esp
 80495f3:       83 ec 28                sub    esp,0x28
 80495f6:       8d 45 e4                lea    eax,[ebp-0x1c]
 80495f9:       50                      push   eax
 80495fa:       8d 45 e8                lea    eax,[ebp-0x18]
 80495fd:       50                      push   eax
 80495fe:       68 0a a7 04 08          push   0x804a70a
 8049603:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049606:       e8 f5 f1 ff ff          call   8048800 <__isoc99_sscanf@plt>
 804960b:       83 c4 10                add    esp,0x10
 804960e:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049611:       83 7d f4 02             cmp    DWORD PTR [ebp-0xc],0x2
 8049615:       75 0f                   jne    8049626 <phase_binary+0x36>
 8049617:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 804961a:       85 c0                   test   eax,eax
 804961c:       78 08                   js     8049626 <phase_binary+0x36>
 804961e:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 8049621:       83 f8 0e                cmp    eax,0xe
 8049624:       7e 05                   jle    804962b <phase_binary+0x3b>
 8049626:       e8 27 fb ff ff          call   8049152 <explode_bomb>
 804962b:       c7 45 f0 0b 00 00 00    mov    DWORD PTR [ebp-0x10],0xb
 8049632:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 8049635:       83 ec 04                sub    esp,0x4
 8049638:       6a 0e                   push   0xe
 804963a:       6a 00                   push   0x0
 804963c:       50                      push   eax
 804963d:       e8 38 ff ff ff          call   804957a <func4>
 8049642:       83 c4 10                add    esp,0x10
 8049645:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 8049648:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 804964b:       3b 45 f0                cmp    eax,DWORD PTR [ebp-0x10]
 804964e:       75 08                   jne    8049658 <phase_binary+0x68>
 8049650:       8b 45 e4                mov    eax,DWORD PTR [ebp-0x1c]
 8049653:       39 45 f0                cmp    DWORD PTR [ebp-0x10],eax
 8049656:       74 05                   je     804965d <phase_binary+0x6d>
 8049658:       e8 f5 fa ff ff          call   8049152 <explode_bomb>
 804965d:       83 ec 0c                sub    esp,0xc
 8049660:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049663:       e8 e1 fb ff ff          call   8049249 <print_key>
 8049668:       83 c4 10                add    esp,0x10
 804966b:       90                      nop
 804966c:       c9                      leave
 804966d:       c3                      ret

0804966e <phase_array>:
 804966e:       55                      push   ebp
 804966f:       89 e5                   mov    ebp,esp
 8049671:       83 ec 28                sub    esp,0x28
 8049674:       8d 45 e4                lea    eax,[ebp-0x1c]
 8049677:       50                      push   eax
 8049678:       8d 45 e8                lea    eax,[ebp-0x18]
 804967b:       50                      push   eax
 804967c:       68 0a a7 04 08          push   0x804a70a
 8049681:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049684:       e8 77 f1 ff ff          call   8048800 <__isoc99_sscanf@plt>
 8049689:       83 c4 10                add    esp,0x10
 804968c:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 804968f:       83 7d ec 01             cmp    DWORD PTR [ebp-0x14],0x1
 8049693:       7f 05                   jg     804969a <phase_array+0x2c>
 8049695:       e8 b8 fa ff ff          call   8049152 <explode_bomb>
 804969a:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 804969d:       83 e0 0f                and    eax,0xf
 80496a0:       89 45 e8                mov    DWORD PTR [ebp-0x18],eax
 80496a3:       c7 45 f4 00 00 00 00    mov    DWORD PTR [ebp-0xc],0x0
 80496aa:       c7 45 f0 00 00 00 00    mov    DWORD PTR [ebp-0x10],0x0
 80496b1:       eb 17                   jmp    80496ca <phase_array+0x5c>
 80496b3:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 80496b7:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80496ba:       8b 04 85 a0 c5 04 08    mov    eax,DWORD PTR [eax*4+0x804c5a0]
 80496c1:       89 45 e8                mov    DWORD PTR [ebp-0x18],eax
 80496c4:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80496c7:       01 45 f0                add    DWORD PTR [ebp-0x10],eax
 80496ca:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80496cd:       83 f8 0f                cmp    eax,0xf
 80496d0:       75 e1                   jne    80496b3 <phase_array+0x45>
 80496d2:       83 7d f4 0f             cmp    DWORD PTR [ebp-0xc],0xf
 80496d6:       75 08                   jne    80496e0 <phase_array+0x72>
 80496d8:       8b 45 e4                mov    eax,DWORD PTR [ebp-0x1c]
 80496db:       39 45 f0                cmp    DWORD PTR [ebp-0x10],eax
 80496de:       74 05                   je     80496e5 <phase_array+0x77>
 80496e0:       e8 6d fa ff ff          call   8049152 <explode_bomb>
 80496e5:       83 ec 0c                sub    esp,0xc
 80496e8:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80496eb:       e8 59 fb ff ff          call   8049249 <print_key>
 80496f0:       83 c4 10                add    esp,0x10
 80496f3:       90                      nop
 80496f4:       c9                      leave
 80496f5:       c3                      ret

080496f6 <phase_list>:
 80496f6:       55                      push   ebp
 80496f7:       89 e5                   mov    ebp,esp
 80496f9:       83 ec 48                sub    esp,0x48
 80496fc:       c7 45 e8 e0 c4 04 08    mov    DWORD PTR [ebp-0x18],0x804c4e0
 8049703:       83 ec 08                sub    esp,0x8
 8049706:       8d 45 d0                lea    eax,[ebp-0x30]
 8049709:       50                      push   eax
 804970a:       ff 75 08                push   DWORD PTR [ebp+0x8]
 804970d:       e8 77 f6 ff ff          call   8048d89 <read_six_numbers>
 8049712:       83 c4 10                add    esp,0x10
 8049715:       c7 45 f0 00 00 00 00    mov    DWORD PTR [ebp-0x10],0x0
 804971c:       eb 4c                   jmp    804976a <phase_list+0x74>
 804971e:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 8049721:       8b 44 85 d0             mov    eax,DWORD PTR [ebp+eax*4-0x30]
 8049725:       85 c0                   test   eax,eax
 8049727:       7e 0c                   jle    8049735 <phase_list+0x3f>
 8049729:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 804972c:       8b 44 85 d0             mov    eax,DWORD PTR [ebp+eax*4-0x30]
 8049730:       83 f8 06                cmp    eax,0x6
 8049733:       7e 05                   jle    804973a <phase_list+0x44>
 8049735:       e8 18 fa ff ff          call   8049152 <explode_bomb>
 804973a:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 804973d:       83 c0 01                add    eax,0x1
 8049740:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 8049743:       eb 1b                   jmp    8049760 <phase_list+0x6a>
 8049745:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 8049748:       8b 54 85 d0             mov    edx,DWORD PTR [ebp+eax*4-0x30]
 804974c:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 804974f:       8b 44 85 d0             mov    eax,DWORD PTR [ebp+eax*4-0x30]
 8049753:       39 c2                   cmp    edx,eax
 8049755:       75 05                   jne    804975c <phase_list+0x66>
 8049757:       e8 f6 f9 ff ff          call   8049152 <explode_bomb>
 804975c:       83 45 ec 01             add    DWORD PTR [ebp-0x14],0x1
 8049760:       83 7d ec 05             cmp    DWORD PTR [ebp-0x14],0x5
 8049764:       7e df                   jle    8049745 <phase_list+0x4f>
 8049766:       83 45 f0 01             add    DWORD PTR [ebp-0x10],0x1
 804976a:       83 7d f0 05             cmp    DWORD PTR [ebp-0x10],0x5
 804976e:       7e ae                   jle    804971e <phase_list+0x28>
 8049770:       c7 45 f0 00 00 00 00    mov    DWORD PTR [ebp-0x10],0x0
 8049777:       eb 36                   jmp    80497af <phase_list+0xb9>
 8049779:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 804977c:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 804977f:       c7 45 ec 01 00 00 00    mov    DWORD PTR [ebp-0x14],0x1
 8049786:       eb 0d                   jmp    8049795 <phase_list+0x9f>
 8049788:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804978b:       8b 40 08                mov    eax,DWORD PTR [eax+0x8]
 804978e:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049791:       83 45 ec 01             add    DWORD PTR [ebp-0x14],0x1
 8049795:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 8049798:       8b 44 85 d0             mov    eax,DWORD PTR [ebp+eax*4-0x30]
 804979c:       39 45 ec                cmp    DWORD PTR [ebp-0x14],eax
 804979f:       7c e7                   jl     8049788 <phase_list+0x92>
 80497a1:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 80497a4:       8b 55 f4                mov    edx,DWORD PTR [ebp-0xc]
 80497a7:       89 54 85 b8             mov    DWORD PTR [ebp+eax*4-0x48],edx
 80497ab:       83 45 f0 01             add    DWORD PTR [ebp-0x10],0x1
 80497af:       83 7d f0 05             cmp    DWORD PTR [ebp-0x10],0x5
 80497b3:       7e c4                   jle    8049779 <phase_list+0x83>
 80497b5:       8b 45 b8                mov    eax,DWORD PTR [ebp-0x48]
 80497b8:       89 45 e8                mov    DWORD PTR [ebp-0x18],eax
 80497bb:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80497be:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80497c1:       c7 45 f0 01 00 00 00    mov    DWORD PTR [ebp-0x10],0x1
 80497c8:       eb 1a                   jmp    80497e4 <phase_list+0xee>
 80497ca:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 80497cd:       8b 54 85 b8             mov    edx,DWORD PTR [ebp+eax*4-0x48]
 80497d1:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80497d4:       89 50 08                mov    DWORD PTR [eax+0x8],edx
 80497d7:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80497da:       8b 40 08                mov    eax,DWORD PTR [eax+0x8]
 80497dd:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80497e0:       83 45 f0 01             add    DWORD PTR [ebp-0x10],0x1
 80497e4:       83 7d f0 05             cmp    DWORD PTR [ebp-0x10],0x5
 80497e8:       7e e0                   jle    80497ca <phase_list+0xd4>
 80497ea:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 80497ed:       c7 40 08 00 00 00 00    mov    DWORD PTR [eax+0x8],0x0
 80497f4:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80497f7:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80497fa:       c7 45 f0 00 00 00 00    mov    DWORD PTR [ebp-0x10],0x0
 8049801:       eb 23                   jmp    8049826 <phase_list+0x130>
 8049803:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8049806:       8b 10                   mov    edx,DWORD PTR [eax]
 8049808:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804980b:       8b 40 08                mov    eax,DWORD PTR [eax+0x8]
 804980e:       8b 00                   mov    eax,DWORD PTR [eax]
 8049810:       39 c2                   cmp    edx,eax
 8049812:       7e 05                   jle    8049819 <phase_list+0x123>
 8049814:       e8 39 f9 ff ff          call   8049152 <explode_bomb>
 8049819:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804981c:       8b 40 08                mov    eax,DWORD PTR [eax+0x8]
 804981f:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049822:       83 45 f0 01             add    DWORD PTR [ebp-0x10],0x1
 8049826:       83 7d f0 04             cmp    DWORD PTR [ebp-0x10],0x4
 804982a:       7e d7                   jle    8049803 <phase_list+0x10d>
 804982c:       83 ec 0c                sub    esp,0xc
 804982f:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049832:       e8 12 fa ff ff          call   8049249 <print_key>
 8049837:       83 c4 10                add    esp,0x10
 804983a:       90                      nop
 804983b:       c9                      leave
 804983c:       c3                      ret

0804983d <fun7>:
 804983d:       55                      push   ebp
 804983e:       89 e5                   mov    ebp,esp
 8049840:       83 ec 08                sub    esp,0x8
 8049843:       83 7d 08 00             cmp    DWORD PTR [ebp+0x8],0x0
 8049847:       75 07                   jne    8049850 <fun7+0x13>
 8049849:       b8 ff ff ff ff          mov    eax,0xffffffff
 804984e:       eb 4e                   jmp    804989e <fun7+0x61>
 8049850:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8049853:       8b 00                   mov    eax,DWORD PTR [eax]
 8049855:       39 45 0c                cmp    DWORD PTR [ebp+0xc],eax
 8049858:       7d 19                   jge    8049873 <fun7+0x36>
 804985a:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 804985d:       8b 40 04                mov    eax,DWORD PTR [eax+0x4]
 8049860:       83 ec 08                sub    esp,0x8
 8049863:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 8049866:       50                      push   eax
 8049867:       e8 d1 ff ff ff          call   804983d <fun7>
 804986c:       83 c4 10                add    esp,0x10
 804986f:       01 c0                   add    eax,eax
 8049871:       eb 2b                   jmp    804989e <fun7+0x61>
 8049873:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8049876:       8b 00                   mov    eax,DWORD PTR [eax]
 8049878:       39 45 0c                cmp    DWORD PTR [ebp+0xc],eax
 804987b:       75 07                   jne    8049884 <fun7+0x47>
 804987d:       b8 00 00 00 00          mov    eax,0x0
 8049882:       eb 1a                   jmp    804989e <fun7+0x61>
 8049884:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8049887:       8b 40 08                mov    eax,DWORD PTR [eax+0x8]
 804988a:       83 ec 08                sub    esp,0x8
 804988d:       ff 75 0c                push   DWORD PTR [ebp+0xc]
 8049890:       50                      push   eax
 8049891:       e8 a7 ff ff ff          call   804983d <fun7>
 8049896:       83 c4 10                add    esp,0x10
 8049899:       01 c0                   add    eax,eax
 804989b:       83 c0 01                add    eax,0x1
 804989e:       c9                      leave
 804989f:       c3                      ret

080498a0 <secret_phase>:
 80498a0:       55                      push   ebp
 80498a1:       89 e5                   mov    ebp,esp
 80498a3:       83 ec 18                sub    esp,0x18
 80498a6:       e8 f8 f6 ff ff          call   8048fa3 <read_line>
 80498ab:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 80498ae:       83 ec 0c                sub    esp,0xc
 80498b1:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 80498b4:       e8 a7 ef ff ff          call   8048860 <atoi@plt>
 80498b9:       83 c4 10                add    esp,0x10
 80498bc:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 80498bf:       83 7d f0 00             cmp    DWORD PTR [ebp-0x10],0x0
 80498c3:       7e 09                   jle    80498ce <secret_phase+0x2e>
 80498c5:       81 7d f0 e9 03 00 00    cmp    DWORD PTR [ebp-0x10],0x3e9
 80498cc:       7e 05                   jle    80498d3 <secret_phase+0x33>
 80498ce:       e8 7f f8 ff ff          call   8049152 <explode_bomb>
 80498d3:       83 ec 08                sub    esp,0x8
 80498d6:       ff 75 f0                push   DWORD PTR [ebp-0x10]
 80498d9:       68 94 c5 04 08          push   0x804c594
 80498de:       e8 5a ff ff ff          call   804983d <fun7>
 80498e3:       83 c4 10                add    esp,0x10
 80498e6:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 80498e9:       83 7d ec 05             cmp    DWORD PTR [ebp-0x14],0x5
 80498ed:       74 05                   je     80498f4 <secret_phase+0x54>
 80498ef:       e8 5e f8 ff ff          call   8049152 <explode_bomb>
 80498f4:       83 ec 0c                sub    esp,0xc
 80498f7:       68 30 a7 04 08          push   0x804a730
 80498fc:       e8 7f ee ff ff          call   8048780 <puts@plt>
 8049901:       83 c4 10                add    esp,0x10
 8049904:       83 ec 0c                sub    esp,0xc
 8049907:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 804990a:       e8 3a f9 ff ff          call   8049249 <print_key>
 804990f:       83 c4 10                add    esp,0x10
 8049912:       e8 8d f8 ff ff          call   80491a4 <phase_defused>
 8049917:       90                      nop
 8049918:       c9                      leave
 8049919:       c3                      ret

0804991a <compute_pi>:
 804991a:       55                      push   ebp
 804991b:       89 e5                   mov    ebp,esp
 804991d:       81 ec e8 2b 00 00       sub    esp,0x2be8
 8049923:       c7 45 e8 00 00 00 00    mov    DWORD PTR [ebp-0x18],0x0
 804992a:       c7 45 f4 00 00 00 00    mov    DWORD PTR [ebp-0xc],0x0
 8049931:       eb 12                   jmp    8049945 <compute_pi+0x2b>
 8049933:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8049936:       c7 84 85 20 d4 ff ff    mov    DWORD PTR [ebp+eax*4-0x2be0],0x7d0
 804993d:       d0 07 00 00
 8049941:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 8049945:       81 7d f4 ef 0a 00 00    cmp    DWORD PTR [ebp-0xc],0xaef
 804994c:       7e e5                   jle    8049933 <compute_pi+0x19>
 804994e:       c7 45 f0 f0 0a 00 00    mov    DWORD PTR [ebp-0x10],0xaf0
 8049955:       e9 c2 00 00 00          jmp    8049a1c <compute_pi+0x102>
 804995a:       c7 45 ec 00 00 00 00    mov    DWORD PTR [ebp-0x14],0x0
 8049961:       8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
 8049964:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049967:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804996a:       8b 84 85 20 d4 ff ff    mov    eax,DWORD PTR [ebp+eax*4-0x2be0]
 8049971:       69 c0 10 27 00 00       imul   eax,eax,0x2710
 8049977:       01 45 ec                add    DWORD PTR [ebp-0x14],eax
 804997a:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804997d:       01 c0                   add    eax,eax
 804997f:       83 e8 01                sub    eax,0x1
 8049982:       89 45 e4                mov    DWORD PTR [ebp-0x1c],eax
 8049985:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 8049988:       99                      cdq
 8049989:       f7 7d e4                idiv   DWORD PTR [ebp-0x1c]
 804998c:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 804998f:       89 94 85 20 d4 ff ff    mov    DWORD PTR [ebp+eax*4-0x2be0],edx
 8049996:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 8049999:       99                      cdq
 804999a:       f7 7d e4                idiv   DWORD PTR [ebp-0x1c]
 804999d:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 80499a0:       83 6d f4 01             sub    DWORD PTR [ebp-0xc],0x1
 80499a4:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 80499a8:       74 0c                   je     80499b6 <compute_pi+0x9c>
 80499aa:       8b 45 ec                mov    eax,DWORD PTR [ebp-0x14]
 80499ad:       0f af 45 f4             imul   eax,DWORD PTR [ebp-0xc]
 80499b1:       89 45 ec                mov    DWORD PTR [ebp-0x14],eax
 80499b4:       eb b1                   jmp    8049967 <compute_pi+0x4d>
 80499b6:       90                      nop
 80499b7:       8b 4d ec                mov    ecx,DWORD PTR [ebp-0x14]
 80499ba:       ba ad 8b db 68          mov    edx,0x68db8bad
 80499bf:       89 c8                   mov    eax,ecx
 80499c1:       f7 ea                   imul   edx
 80499c3:       c1 fa 0c                sar    edx,0xc
 80499c6:       89 c8                   mov    eax,ecx
 80499c8:       c1 f8 1f                sar    eax,0x1f
 80499cb:       29 c2                   sub    edx,eax
 80499cd:       8b 45 e8                mov    eax,DWORD PTR [ebp-0x18]
 80499d0:       01 d0                   add    eax,edx
 80499d2:       83 ec 04                sub    esp,0x4
 80499d5:       50                      push   eax
 80499d6:       68 56 a7 04 08          push   0x804a756
 80499db:       ff 75 08                push   DWORD PTR [ebp+0x8]
 80499de:       e8 6d ee ff ff          call   8048850 <sprintf@plt>
 80499e3:       83 c4 10                add    esp,0x10
 80499e6:       01 45 08                add    DWORD PTR [ebp+0x8],eax
 80499e9:       8b 4d ec                mov    ecx,DWORD PTR [ebp-0x14]
 80499ec:       ba ad 8b db 68          mov    edx,0x68db8bad
 80499f1:       89 c8                   mov    eax,ecx
 80499f3:       f7 ea                   imul   edx
 80499f5:       c1 fa 0c                sar    edx,0xc
 80499f8:       89 c8                   mov    eax,ecx
 80499fa:       c1 f8 1f                sar    eax,0x1f
 80499fd:       29 c2                   sub    edx,eax
 80499ff:       89 d0                   mov    eax,edx
 8049a01:       69 c0 10 27 00 00       imul   eax,eax,0x2710
 8049a07:       29 c1                   sub    ecx,eax
 8049a09:       89 c8                   mov    eax,ecx
 8049a0b:       89 45 e8                mov    DWORD PTR [ebp-0x18],eax
 8049a0e:       83 6d 0c 04             sub    DWORD PTR [ebp+0xc],0x4
 8049a12:       83 7d 0c 00             cmp    DWORD PTR [ebp+0xc],0x0
 8049a16:       7e 10                   jle    8049a28 <compute_pi+0x10e>
 8049a18:       83 6d f0 0e             sub    DWORD PTR [ebp-0x10],0xe
 8049a1c:       83 7d f0 00             cmp    DWORD PTR [ebp-0x10],0x0
 8049a20:       0f 8f 34 ff ff ff       jg     804995a <compute_pi+0x40>
 8049a26:       eb 01                   jmp    8049a29 <compute_pi+0x10f>
 8049a28:       90                      nop
 8049a29:       c9                      leave
 8049a2a:       c3                      ret

08049a2b <phase_pi>:
 8049a2b:       55                      push   ebp
 8049a2c:       89 e5                   mov    ebp,esp
 8049a2e:       81 ec 18 04 00 00       sub    esp,0x418
 8049a34:       8d 85 f4 fb ff ff       lea    eax,[ebp-0x40c]
 8049a3a:       83 c0 01                add    eax,0x1
 8049a3d:       83 ec 08                sub    esp,0x8
 8049a40:       6a 28                   push   0x28
 8049a42:       50                      push   eax
 8049a43:       e8 d2 fe ff ff          call   804991a <compute_pi>
 8049a48:       83 c4 10                add    esp,0x10
 8049a4b:       c6 85 f4 fb ff ff 33    mov    BYTE PTR [ebp-0x40c],0x33
 8049a52:       c6 85 f5 fb ff ff 2e    mov    BYTE PTR [ebp-0x40b],0x2e
 8049a59:       83 ec 0c                sub    esp,0xc
 8049a5c:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049a5f:       e8 79 f3 ff ff          call   8048ddd <string_length>
 8049a64:       83 c4 10                add    esp,0x10
 8049a67:       83 f8 29                cmp    eax,0x29
 8049a6a:       74 05                   je     8049a71 <phase_pi+0x46>
 8049a6c:       e8 e1 f6 ff ff          call   8049152 <explode_bomb>
 8049a71:       c7 45 f4 00 00 00 00    mov    DWORD PTR [ebp-0xc],0x0
 8049a78:       eb 26                   jmp    8049aa0 <phase_pi+0x75>
 8049a7a:       8d 95 f4 fb ff ff       lea    edx,[ebp-0x40c]
 8049a80:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8049a83:       01 d0                   add    eax,edx
 8049a85:       0f b6 10                movzx  edx,BYTE PTR [eax]
 8049a88:       8b 4d f4                mov    ecx,DWORD PTR [ebp-0xc]
 8049a8b:       8b 45 08                mov    eax,DWORD PTR [ebp+0x8]
 8049a8e:       01 c8                   add    eax,ecx
 8049a90:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8049a93:       38 c2                   cmp    dl,al
 8049a95:       74 05                   je     8049a9c <phase_pi+0x71>
 8049a97:       e8 b6 f6 ff ff          call   8049152 <explode_bomb>
 8049a9c:       83 45 f4 01             add    DWORD PTR [ebp-0xc],0x1
 8049aa0:       83 7d f4 28             cmp    DWORD PTR [ebp-0xc],0x28
 8049aa4:       7e d4                   jle    8049a7a <phase_pi+0x4f>
 8049aa6:       83 ec 0c                sub    esp,0xc
 8049aa9:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049aac:       e8 98 f7 ff ff          call   8049249 <print_key>
 8049ab1:       83 c4 10                add    esp,0x10
 8049ab4:       90                      nop
 8049ab5:       c9                      leave
 8049ab6:       c3                      ret

08049ab7 <set_apikey>:
 8049ab7:       55                      push   ebp
 8049ab8:       89 e5                   mov    ebp,esp
 8049aba:       83 ec 18                sub    esp,0x18
 8049abd:       83 ec 0c                sub    esp,0xc
 8049ac0:       68 5c a7 04 08          push   0x804a75c
 8049ac5:       e8 16 ec ff ff          call   80486e0 <printf@plt>
 8049aca:       83 c4 10                add    esp,0x10
 8049acd:       a1 14 c6 04 08          mov    eax,ds:0x804c614
 8049ad2:       83 ec 04                sub    esp,0x4
 8049ad5:       50                      push   eax
 8049ad6:       68 00 04 00 00          push   0x400
 8049adb:       68 c0 cc 04 08          push   0x804ccc0
 8049ae0:       e8 1b ec ff ff          call   8048700 <fgets@plt>
 8049ae5:       83 c4 10                add    esp,0x10
 8049ae8:       83 ec 0c                sub    esp,0xc
 8049aeb:       68 c0 cc 04 08          push   0x804ccc0
 8049af0:       e8 eb ec ff ff          call   80487e0 <strlen@plt>
 8049af5:       83 c4 10                add    esp,0x10
 8049af8:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049afb:       83 7d f4 00             cmp    DWORD PTR [ebp-0xc],0x0
 8049aff:       7e 1e                   jle    8049b1f <set_apikey+0x68>
 8049b01:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8049b04:       83 e8 01                sub    eax,0x1
 8049b07:       0f b6 80 c0 cc 04 08    movzx  eax,BYTE PTR [eax+0x804ccc0]
 8049b0e:       3c 0a                   cmp    al,0xa
 8049b10:       75 0d                   jne    8049b1f <set_apikey+0x68>
 8049b12:       8b 45 f4                mov    eax,DWORD PTR [ebp-0xc]
 8049b15:       83 e8 01                sub    eax,0x1
 8049b18:       c6 80 c0 cc 04 08 00    mov    BYTE PTR [eax+0x804ccc0],0x0
 8049b1f:       90                      nop
 8049b20:       c9                      leave
 8049b21:       c3                      ret

08049b22 <checkin_output>:
 8049b22:       55                      push   ebp
 8049b23:       89 e5                   mov    ebp,esp
 8049b25:       53                      push   ebx
 8049b26:       81 ec 24 10 00 00       sub    esp,0x1024
 8049b2c:       83 ec 08                sub    esp,0x8
 8049b2f:       6a 22                   push   0x22
 8049b31:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049b34:       e8 97 ec ff ff          call   80487d0 <strchr@plt>
 8049b39:       83 c4 10                add    esp,0x10
 8049b3c:       85 c0                   test   eax,eax
 8049b3e:       74 0f                   je     8049b4f <checkin_output+0x2d>
 8049b40:       83 ec 08                sub    esp,0x8
 8049b43:       68 71 a7 04 08          push   0x804a771
 8049b48:       6a 01                   push   0x1
 8049b4a:       e8 f1 eb ff ff          call   8048740 <err@plt>
 8049b4f:       c7 45 ec 8c a7 04 08    mov    DWORD PTR [ebp-0x14],0x804a78c
 8049b56:       c7 45 e8 b4 a7 04 08    mov    DWORD PTR [ebp-0x18],0x804a7b4
 8049b5d:       83 ec 08                sub    esp,0x8
 8049b60:       ff 75 ec                push   DWORD PTR [ebp-0x14]
 8049b63:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049b66:       68 c0 cc 04 08          push   0x804ccc0
 8049b6b:       ff 75 e8                push   DWORD PTR [ebp-0x18]
 8049b6e:       68 00 08 00 00          push   0x800
 8049b73:       8d 85 e0 f7 ff ff       lea    eax,[ebp-0x820]
 8049b79:       50                      push   eax
 8049b7a:       e8 b1 ec ff ff          call   8048830 <snprintf@plt>
 8049b7f:       83 c4 20                add    esp,0x20
 8049b82:       83 ec 0c                sub    esp,0xc
 8049b85:       8d 85 e0 f7 ff ff       lea    eax,[ebp-0x820]
 8049b8b:       50                      push   eax
 8049b8c:       e8 4f ec ff ff          call   80487e0 <strlen@plt>
 8049b91:       83 c4 10                add    esp,0x10
 8049b94:       3d ff 07 00 00          cmp    eax,0x7ff
 8049b99:       75 12                   jne    8049bad <checkin_output+0x8b>
 8049b9b:       83 ec 04                sub    esp,0x4
 8049b9e:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049ba1:       68 ec a7 04 08          push   0x804a7ec
 8049ba6:       6a 01                   push   0x1
 8049ba8:       e8 93 eb ff ff          call   8048740 <err@plt>
 8049bad:       83 ec 08                sub    esp,0x8
 8049bb0:       68 03 a8 04 08          push   0x804a803
 8049bb5:       8d 85 e0 f7 ff ff       lea    eax,[ebp-0x820]
 8049bbb:       50                      push   eax
 8049bbc:       e8 6f eb ff ff          call   8048730 <popen@plt>
 8049bc1:       83 c4 10                add    esp,0x10
 8049bc4:       89 45 e4                mov    DWORD PTR [ebp-0x1c],eax
 8049bc7:       83 7d e4 00             cmp    DWORD PTR [ebp-0x1c],0x0
 8049bcb:       75 0f                   jne    8049bdc <checkin_output+0xba>
 8049bcd:       83 ec 08                sub    esp,0x8
 8049bd0:       68 05 a8 04 08          push   0x804a805
 8049bd5:       6a 01                   push   0x1
 8049bd7:       e8 64 eb ff ff          call   8048740 <err@plt>
 8049bdc:       83 ec 04                sub    esp,0x4
 8049bdf:       68 00 08 00 00          push   0x800
 8049be4:       6a 00                   push   0x0
 8049be6:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049bec:       50                      push   eax
 8049bed:       e8 2e ec ff ff          call   8048820 <memset@plt>
 8049bf2:       83 c4 10                add    esp,0x10
 8049bf5:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049bfb:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049bfe:       c7 45 e0 00 08 00 00    mov    DWORD PTR [ebp-0x20],0x800
 8049c05:       8b 45 e0                mov    eax,DWORD PTR [ebp-0x20]
 8049c08:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 8049c0b:       eb 53                   jmp    8049c60 <checkin_output+0x13e>
 8049c0d:       83 ec 04                sub    esp,0x4
 8049c10:       ff 75 e4                push   DWORD PTR [ebp-0x1c]
 8049c13:       ff 75 f0                push   DWORD PTR [ebp-0x10]
 8049c16:       ff 75 f4                push   DWORD PTR [ebp-0xc]
 8049c19:       e8 e2 ea ff ff          call   8048700 <fgets@plt>
 8049c1e:       83 c4 10                add    esp,0x10
 8049c21:       85 c0                   test   eax,eax
 8049c23:       74 3b                   je     8049c60 <checkin_output+0x13e>
 8049c25:       83 ec 0c                sub    esp,0xc
 8049c28:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049c2e:       50                      push   eax
 8049c2f:       e8 ac eb ff ff          call   80487e0 <strlen@plt>
 8049c34:       83 c4 10                add    esp,0x10
 8049c37:       89 c2                   mov    edx,eax
 8049c39:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049c3f:       01 d0                   add    eax,edx
 8049c41:       89 45 f4                mov    DWORD PTR [ebp-0xc],eax
 8049c44:       8b 5d e0                mov    ebx,DWORD PTR [ebp-0x20]
 8049c47:       83 ec 0c                sub    esp,0xc
 8049c4a:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049c50:       50                      push   eax
 8049c51:       e8 8a eb ff ff          call   80487e0 <strlen@plt>
 8049c56:       83 c4 10                add    esp,0x10
 8049c59:       29 c3                   sub    ebx,eax
 8049c5b:       89 d8                   mov    eax,ebx
 8049c5d:       89 45 f0                mov    DWORD PTR [ebp-0x10],eax
 8049c60:       83 ec 0c                sub    esp,0xc
 8049c63:       ff 75 e4                push   DWORD PTR [ebp-0x1c]
 8049c66:       e8 55 eb ff ff          call   80487c0 <feof@plt>
 8049c6b:       83 c4 10                add    esp,0x10
 8049c6e:       85 c0                   test   eax,eax
 8049c70:       74 9b                   je     8049c0d <checkin_output+0xeb>
 8049c72:       83 ec 0c                sub    esp,0xc
 8049c75:       ff 75 e4                push   DWORD PTR [ebp-0x1c]
 8049c78:       e8 33 eb ff ff          call   80487b0 <pclose@plt>
 8049c7d:       83 c4 10                add    esp,0x10
 8049c80:       8d 85 e0 ef ff ff       lea    eax,[ebp-0x1020]
 8049c86:       0f b6 00                movzx  eax,BYTE PTR [eax]
 8049c89:       84 c0                   test   al,al
 8049c8b:       75 21                   jne    8049cae <checkin_output+0x18c>
 8049c8d:       a1 e0 c5 04 08          mov    eax,ds:0x804c5e0
 8049c92:       50                      push   eax
 8049c93:       6a 2c                   push   0x2c
 8049c95:       6a 01                   push   0x1
 8049c97:       68 1c a8 04 08          push   0x804a81c
 8049c9c:       e8 af ea ff ff          call   8048750 <fwrite@plt>
 8049ca1:       83 c4 10                add    esp,0x10
 8049ca4:       83 ec 0c                sub    esp,0xc
 8049ca7:       6a 01                   push   0x1
 8049ca9:       e8 f2 ea ff ff          call   80487a0 <exit@plt>
 8049cae:       90                      nop
 8049caf:       8b 5d fc                mov    ebx,DWORD PTR [ebp-0x4]
 8049cb2:       c9                      leave
 8049cb3:       c3                      ret

08049cb4 <checkin>:
 8049cb4:       55                      push   ebp
 8049cb5:       89 e5                   mov    ebp,esp
 8049cb7:       83 ec 08                sub    esp,0x8
 8049cba:       83 ec 08                sub    esp,0x8
 8049cbd:       6a 22                   push   0x22
 8049cbf:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049cc2:       e8 09 eb ff ff          call   80487d0 <strchr@plt>
 8049cc7:       83 c4 10                add    esp,0x10
 8049cca:       85 c0                   test   eax,eax
 8049ccc:       75 14                   jne    8049ce2 <checkin+0x2e>
 8049cce:       83 ec 08                sub    esp,0x8
 8049cd1:       6a 27                   push   0x27
 8049cd3:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049cd6:       e8 f5 ea ff ff          call   80487d0 <strchr@plt>
 8049cdb:       83 c4 10                add    esp,0x10
 8049cde:       85 c0                   test   eax,eax
 8049ce0:       74 0f                   je     8049cf1 <checkin+0x3d>
 8049ce2:       83 ec 08                sub    esp,0x8
 8049ce5:       68 49 a8 04 08          push   0x804a849
 8049cea:       6a 01                   push   0x1
 8049cec:       e8 4f ea ff ff          call   8048740 <err@plt>
 8049cf1:       83 ec 0c                sub    esp,0xc
 8049cf4:       ff 75 08                push   DWORD PTR [ebp+0x8]
 8049cf7:       e8 26 fe ff ff          call   8049b22 <checkin_output>
 8049cfc:       83 c4 10                add    esp,0x10
 8049cff:       90                      nop
 8049d00:       c9                      leave
 8049d01:       c3                      ret
 8049d02:       66 90                   xchg   ax,ax
 8049d04:       66 90                   xchg   ax,ax
 8049d06:       66 90                   xchg   ax,ax
 8049d08:       66 90                   xchg   ax,ax
 8049d0a:       66 90                   xchg   ax,ax
 8049d0c:       66 90                   xchg   ax,ax
 8049d0e:       66 90                   xchg   ax,ax

08049d10 <__libc_csu_init>:
 8049d10:       55                      push   ebp
 8049d11:       57                      push   edi
 8049d12:       56                      push   esi
 8049d13:       53                      push   ebx
 8049d14:       e8 d7 eb ff ff          call   80488f0 <__x86.get_pc_thunk.bx>
 8049d19:       81 c3 e7 22 00 00       add    ebx,0x22e7
 8049d1f:       83 ec 0c                sub    esp,0xc
 8049d22:       8b 6c 24 28             mov    ebp,DWORD PTR [esp+0x28]
 8049d26:       8d b3 10 ff ff ff       lea    esi,[ebx-0xf0]
 8049d2c:       e8 6f e9 ff ff          call   80486a0 <_init>
 8049d31:       8d 83 0c ff ff ff       lea    eax,[ebx-0xf4]
 8049d37:       29 c6                   sub    esi,eax
 8049d39:       c1 fe 02                sar    esi,0x2
 8049d3c:       85 f6                   test   esi,esi
 8049d3e:       74 25                   je     8049d65 <__libc_csu_init+0x55>
 8049d40:       31 ff                   xor    edi,edi
 8049d42:       8d b6 00 00 00 00       lea    esi,[esi+0x0]
 8049d48:       83 ec 04                sub    esp,0x4
 8049d4b:       55                      push   ebp
 8049d4c:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 8049d50:       ff 74 24 2c             push   DWORD PTR [esp+0x2c]
 8049d54:       ff 94 bb 0c ff ff ff    call   DWORD PTR [ebx+edi*4-0xf4]
 8049d5b:       83 c7 01                add    edi,0x1
 8049d5e:       83 c4 10                add    esp,0x10
 8049d61:       39 fe                   cmp    esi,edi
 8049d63:       75 e3                   jne    8049d48 <__libc_csu_init+0x38>
 8049d65:       83 c4 0c                add    esp,0xc
 8049d68:       5b                      pop    ebx
 8049d69:       5e                      pop    esi
 8049d6a:       5f                      pop    edi
 8049d6b:       5d                      pop    ebp
 8049d6c:       c3                      ret
 8049d6d:       8d 76 00                lea    esi,[esi+0x0]

08049d70 <__libc_csu_fini>:
 8049d70:       f3 c3                   repz ret

Disassembly of section .fini:

08049d74 <_fini>:
 8049d74:       53                      push   ebx
 8049d75:       83 ec 08                sub    esp,0x8
 8049d78:       e8 73 eb ff ff          call   80488f0 <__x86.get_pc_thunk.bx>
 8049d7d:       81 c3 83 22 00 00       add    ebx,0x2283
 8049d83:       83 c4 08                add    esp,0x8
 8049d86:       5b                      pop    ebx
 8049d87:       c3                      ret
