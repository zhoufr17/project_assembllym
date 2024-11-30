LC0: 
.string "Hello %s\n" 
main: 
push rbp  
mov rbp, rsp  
sub rsp, 16 mov DWORD PTR [rbp-4] 

mov QWORD PTR [rbp-16], rsi  

cmp DWORD PTR [rbp-4], 2  
jne .L2 ;; if argc != 2 

mov rax, QWORD PTR [rbp-16] 
add rax, 8  
mov rax, QWORD PTR [rax]  
mov rsi, rax  
mov edi, OFFSET FLAT:.LC0  
mov eax, 0 
call printf  
.L2: 
mov eax, 0 
leave  
ret  