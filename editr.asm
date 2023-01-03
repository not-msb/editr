global _start

section .text
_start:
    jmp loop

loop:
    call read
    call write
    jmp loop

read:
    mov rax, 0
    mov rdi, 0
    mov rsi, buffer
    mov rdx, 1
    syscall
    ret

write:
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, 1
    syscall
    ret

exit:
    mov rax, EXIT
    mov rdi, 0
    syscall

section .data
    ; Constants
    EXIT equ 60
    BUFFER_SIZE equ 64
    ; Global Data

section .bss
    buffer resb BUFFER_SIZE
