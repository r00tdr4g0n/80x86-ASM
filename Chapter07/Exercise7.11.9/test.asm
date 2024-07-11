section .bss
section .data
section .text
global _isEvenOne
_isEvenOne:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 8]
    mov ebx, eax
    mov edx, 0
    mov ecx, 0

    and ebx, 0x00000001
    cmp ebx, 0
    jne _isOne

_loop:
    cmp ecx, 0x20
    je _done
    shr eax, 1
    mov ebx, eax
    and ebx, 0x00000001
    cmp ebx, 0
    jne _isOne
    jmp _isNotOne

_isOne:
    inc edx

_isNotOne:
    inc ecx
    jmp _loop

_done:
    and edx, 0x00000001
    xor edx, 0x00000001
    mov eax, edx

    mov esp, ebp
    pop ebp
    ret