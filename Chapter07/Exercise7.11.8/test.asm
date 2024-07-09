section .bss
section .data
section .text
global _f
global _check
global _fact
global _ones
global _isOdd

_f:
    push ebp
    mov ebp, esp

    mov ecx, [ebp + 8]
    mov eax, ecx
    mul ecx
    mov ebx, eax
    mov eax, 2
    mul ecx
    add ebx, eax
    add ebx, 3
    mov eax, ebx

    mov esp, ebp
    pop ebp
    ret

_check:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]

    cmp eax, 0
    jl _less
    je _zero
    mov ebx, eax
    mul ebx
    jmp _checkDone

_less:
    not eax
    add eax, 1
    jmp _checkDone

_zero:
    mov eax, 0
    jmp _checkDone

_checkDone:
    mov esp, ebp
    pop ebp
    ret

_fact:
    push ebp
    mov ebp, esp

    sub esp, 8
    mov eax, dword[ebp + 8]
    mov dword[ebp - 4], eax
    sub eax, 1
    mov dword[ebp - 8], eax

_factLoop:
    mov ebx, dword[ebp - 8]
    cmp ebx, 0
    jle _factDone
    mov eax, dword[ebp - 4]
    mul dword[ebp - 8]
    mov dword[ebp - 4], eax
    sub ebx, 1
    mov dword[ebp - 8], ebx
    jmp _factLoop

_factDone:
    mov esp, ebp
    pop ebp
    ret

_ones:
    push ebp
    mov ebp, esp

    xor eax, eax
    mov ebx, dword[ebp + 8]
    mov ecx, 0

_onesLoop:
    cmp ecx, 0x20
    je _onesDone

    mov edx, ebx
    and edx, 0x00000001

    cmp edx, 0x00000001
    je _one
    jmp _notOne

_one:
    add eax, 1

_notOne:
    add ecx, 1
    shr ebx, 1
    jmp _onesLoop

_onesDone:
    mov esp, ebp
    pop ebp
    ret

_isOdd:
    push ebp
    mov ebp, esp

    xor eax, eax
    mov ebx, dword[ebp + 8]
    and ebx, 0x00000001
    cmp ebx, 0
    jne _odd
    jmp _isOddDone

_odd:
    mov eax, 1

_isOddDone:
    mov esp, ebp
    pop ebp
    ret
