section .text
    global _start
_start:
    mov rax, 20
    mov rbx, 4

    add rax, rbx     ; rax = 24
    sub rax, 2       ; rax = 22
    imul rax, rbx    ; rax = 88
    mov rdx, 0       ; очищаем rdx перед делением
    div rbx          ; rax = 22, rdx = 0

    ; Выход из программы (системный вызов exit)
    mov rax, 60      ; номер системного вызова exit (60 для x86-64)
    xor rdi, rdi     ; код возврата 0
    syscall    


