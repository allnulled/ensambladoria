section .data

    numero1:   db 0
    numero2:   db 0
    numero3:   db 0
    mensaje1:  db 10, 13, "El primer número es:  $"
    mensaje2:  db 10, 13, "El segundo número es: $"
    mensaje3:  db 10, 13, "El resultado es:      $"

section .bss



section .text

    global _start

_start:

    