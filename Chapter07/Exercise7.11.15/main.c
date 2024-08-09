#include <stdio.h>

extern int add(int, int);

int main()
{
    printf("%d\n", add(22, 33));
    return 0;
}