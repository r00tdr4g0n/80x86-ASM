#include <stdio.h>

extern void f();

int ba, bb, bc, bd, aa, ab, ac, ad;

int main()
{
    f();

    printf("before : eax(%x), ebx(%x), ecx(%x), edx(%x)\n", ba, bb, bc, bd);
    printf("after : eax(%x), ebx(%x), ecx(%x), edx(%x)\n", aa, ab, ac, ad);

    return 0;
}