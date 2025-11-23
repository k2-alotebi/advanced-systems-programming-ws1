%include "asm_io.inc"

segment .data
    prompt1 db "Enter first number: ", 0
    prompt2 db "Enter second number: ", 0
    outmsg  db "The sum is: ", 0

segment .bss
    num1    resd 1
    num2    resd 1

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    ; Print first prompt
    mov     eax, prompt1
    call    print_string
    
    ; Read first number
    call    read_int
    mov     [num1], eax
    
    ; Print second prompt
    mov     eax, prompt2
    call    print_string
    
    ; Read second number
    call    read_int
    mov     [num2], eax
    
    ; Calculate sum
    mov     eax, [num1]
    add     eax, [num2]
    
    ; Print result message
    mov     ebx, eax        ; save result
    mov     eax, outmsg
    call    print_string
    
    ; Print result
    mov     eax, ebx
    call    print_int
    call    print_nl

    popa
    mov     eax, 0
    leave
    ret
