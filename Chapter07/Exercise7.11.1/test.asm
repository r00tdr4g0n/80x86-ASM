section .bss

section .data
extern _bottom, _top

section .text
global _PushToStack

_PushToStack:
    push ebp
    mov ebp, esp

    mov eax, esp
    mov dword[_bottom], eax

    mov ebx, 101
    mov ecx, 1

loop:
    cmp ecx, ebx
    je done
    push ecx
    inc ecx
    jmp loop

done:
    mov eax, esp
    mov dword[_top], eax

    mov esp, ebp
    pop ebp
    ret