section .bss
global _value
_value resd 1

section .data
section .text
global _f
_f:
    push ebp
    mov ebp, esp

    sub esp, 8

    ; n = a + b
    mov eax, dword[ebp + 8]
    add eax, dword[ebp + 12]
    mov dword[ebp - 4], eax

    ; n = a * b
    mov eax, dword[ebp + 8]
    mov ebx, dword[ebp + 12]
    mul ebx
    mov dword[ebp - 8], eax

    mov eax, dword[ebp - 4]
    cmp eax, dword[ebp - 8]
    jg L1
    mov dword[_value], 1
    jmp done

L1:
    mov dword[_value], 0

done:
    xor eax, eax
    mov esp, ebp
    pop ebp
    ret