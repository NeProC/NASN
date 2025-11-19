section .data
num dq 123         ; Инициализированная переменная

section .bss
temp resb 64       ; Неинициализированная переменная (резервируем 64 байта)

section .text
global _start
_start:
    mov rax, [num]  ; Загрузка значения из num в rax
    xor rbx, rbx
    mov [num], rbx  ; Сохранение нового значения в num

    ; Работа с неинициализированной переменной temp
    mov byte [temp], 10 ; Запись значения 10 в первую ячейку массива temp

    ; Завершение программы
    mov rax, 60       ; syscall: exit
    mov rdi, [temp]      ; код возврата 0
    syscall

