section .bss
section .data
section .text
global _setBits
_setBits:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 0x08] ; num

    mov ebx, dword[ebp + 0x10] ; b1
    mov edx, 0x00000001
    mov ecx, 0x00
_b1Loop:
    cmp ebx, ecx
    je _b1Done
    shl edx, 0x01
    inc ecx
    jmp _b1Loop
_b1Done:
    or eax, edx

    mov ebx, dword[ebp + 0x0c] ; b0
    mov edx, 0x00000001
    mov ecx, 0x00
_b0Loop:
    cmp ebx, ecx
    je _b0Done
    shl edx, 0x01
    inc ecx
    jmp _b0Loop

_b0Done:
    not edx
    and eax, edx

    mov esp, ebp
    pop ebp
    ret