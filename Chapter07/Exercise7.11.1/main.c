#include <stdio.h>

int bottom, top;

extern void PushToStack();

int main()
{
    PushToStack();

    printf("bottom : %x\ntop : %x", bottom, top);
    
    return 0;
}