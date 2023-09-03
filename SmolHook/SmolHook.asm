; fwin32 Assembly Program

; Compile Using Command: nasm -fwin32 SmolHook.asm
; Finish Compiling Using Command: gcc SmolHook.obj -o SmolHook.exe

extern _printf
global _main

section .data
msg: db "SmolHook Has Finished Executing.",10,0

section .text
_main:
    push msg
    call _printf
    add esp,4
    ret
