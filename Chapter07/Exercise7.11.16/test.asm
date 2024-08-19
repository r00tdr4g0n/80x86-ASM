section .bss
section .data
section .text
global _max
_max:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov eax, [ebp + 8]
    cmp eax, [ebp + 12]
    jle L1
    mov [ebp - 4], eax
    jmp L2

L1:
    mov eax, [ebp + 12]
    mov [ebp - 4], eax

L2:
    mov eax, [ebp - 4]
    cmp eax, [ebp + 16]
    jge L3
    mov eax, [ebp + 16]
    mov [ebp - 4], eax

L3:
    mov eax, [ebp - 4]
    mov esp, ebp
    pop ebp
    ret