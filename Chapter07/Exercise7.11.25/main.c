#include <stdio.h>

int f2()
{
    char c1, c2;

    c1 = 127;
    c2 = c1 << 3;

    return (int)(c1 | c2);
}

extern int f();

int main()
{
    printf("result1 : %d\n", f());
    printf("result2 : %d\n", f2());

    return 0;
}