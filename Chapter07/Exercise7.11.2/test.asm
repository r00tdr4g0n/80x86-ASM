section .bss

section .data
extern _ba, _bb, _bc, _bd, _aa, _ab, _ac, _ad

section .text
global _f

_f:
    push ebp
    mov ebp, esp

    mov dword[_ba], eax
    mov dword[_bb], ebx
    mov dword[_bc], ecx
    mov dword[_bd], edx

    push eax
    push ebx
    push ecx
    push edx

    pop eax
    pop ebx
    pop ecx
    pop edx

    mov dword[_aa], eax
    mov dword[_ab], ebx
    mov dword[_ac], ecx
    mov dword[_ad], edx

    mov esp, ebp
    pop ebp
    ret