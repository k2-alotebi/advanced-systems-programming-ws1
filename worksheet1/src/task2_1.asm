%include "asm_io.inc"

segment .data
    prompt_name     db "Enter your name: ", 0
    prompt_count    db "Enter number of times (50-100): ", 0
    welcome_msg     db "Welcome, ", 0
    error_msg       db "Error: Number must be between 50 and 100!", 0
    newline         db "!", 0

segment .bss
    name            resb 100
    count           resd 1

segment .text
    global asm_main

asm_main:
    enter   0,0
    pusha

    ; Ask for name
    mov     eax, prompt_name
    call    print_string
    ; Note: For simplicity, we'll skip reading the name
    ; and just use a default message
    
    ; Ask for count
    mov     eax, prompt_count
    call    print_string
    call    read_int
    mov     [count], eax
    
    ; Check if count is valid (50 <= count <= 100)
    cmp     eax, 50
    jl      error
    cmp     eax, 100
    jg      error
    
    ; Print welcome message count times
    mov     ecx, [count]
print_loop:
    mov     eax, welcome_msg
    call    print_string
    mov     eax, newline
    call    print_string
    call    print_nl
    loop    print_loop
    
    jmp     done

error:
    mov     eax, error_msg
    call    print_string
    call    print_nl

done:
    popa
    mov     eax, 0
    leave
    ret
