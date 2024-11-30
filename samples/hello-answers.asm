LC0: 
.string "Hello %s\n" 
main: 
push rbp ;; save old frame pointer on stack 
mov rbp, rsp ;; frame pointer is pointing to where 
the stack pointer is 
sub rsp, 16 ;; stack pointer moves 16 bytes down to 
make room for argc, argv 
mov DWORD PTR [rbp-4], edi ;; argc (int, 4 bytes) is put into the 
stack 
mov QWORD PTR [rbp-16], rsi ;; argv (pointer to array of pointers, 
8 bytes) is put into the stack 
cmp DWORD PTR [rbp-4], 2 ;; does argc == 2? 
jne .L2 ;; if argc != 2, skip the printing 
stuff; otherwise keep going 
mov rax, QWORD PTR [rbp-16] ;; rax holds argv 
add rax, 8 ;; rax holds pointer to argv[1] 
mov rax, QWORD PTR [rax] ;; rax holds argv[1] (pointer to char) 
mov rsi, rax ;; rsi holds argv[1] (pointer to char); 
this is the second argument for printf 
mov edi, OFFSET FLAT:.LC0 ;; edi holds address of the "Hello %s\ 
n" string; this is the first argument for printf 
mov eax, 0 ;; zeroing al so that printf doesn't 
think we're passing it vector registers 
call printf ;; calls print function (takes 
parameters of register values in rsi and edi) 
.L2: 
mov eax, 0 ;; set return value to 0 
leave ;; stack teardown 
ret ;; return and exit from main 