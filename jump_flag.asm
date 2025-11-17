global _start
section .text

_start:
    mov rcx, 33
    cmp rcx, 33
    je equal
    mov rdi, 2
    jmp exit

equal:
    mov rdi, 44

exit:
    mov rax, 60
    syscall
