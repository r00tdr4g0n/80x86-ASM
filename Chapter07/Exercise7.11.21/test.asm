section .bss
    extern _cf

section .data

section .text
    global _subtract

_subtract:
    push ebp
    mov ebp, esp

    mov eax, dword[ebp + 8]
    sub eax, dword[ebp+12]

    jc cfis1
    mov dword[_cf], 0
    jmp done

cfis1:
    mov dword[_cf], 1

done:
    mov esp, ebp
    pop ebp
    ret
