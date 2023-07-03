section .data
    mensaje: db "Hello, world!", 10  ; texto a imprimir
    longitud: equ $-mensaje         ; longitud de texto

section .text
    global _start

_start:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; salida estándar (stdout)
    mov rsi, mensaje    ; texto
    mov rdx, longitud   ; longitud de texto
    syscall             ; llamada al kernel

    mov rax, 60     ; sys_exit
    mov rdi, 0      ; código de error 0 (éxito)
    syscall

section .bss
