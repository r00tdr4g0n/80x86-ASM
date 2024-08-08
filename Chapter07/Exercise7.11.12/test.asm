section .bss
section .data
section .text
global _sum
global _test

_sum:
    push ebp
    mov ebp, esp

    mov ebx, dword[ebp + 8]
    
    ; int i, s = 0
    sub esp, 8
    mov dword[ebp - 4], 0

    ; for (i=1; i<=n; i++) s = s + i
    mov dword[ebp - 8], 1
    
_loop:
    cmp ebx, dword[ebp - 8]
    jl _done

    mov edx, dword[ebp - 8]
    add dword[ebp - 4], edx
    add dword[ebp - 8], 1
    jmp _loop

_done:
    mov eax, dword[ebp - 4]
    mov esp, ebp
    pop ebp
    ret

_test:
    push ebp
    mov ebp, esp

    sub esp, 4
    mov dword[ebp - 4], 100
    
    push dword[ebp - 4]
    call _sum

    mov dword[ebp - 4], eax

    mov esp, ebp
    pop ebp
    ret