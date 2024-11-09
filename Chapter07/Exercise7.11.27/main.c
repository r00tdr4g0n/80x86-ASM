#include <stdio.h>

extern int f(int);

int a[] = {0, 1, 0, 1, 0, 1, 0, 1, 0, 1};

int f2(int n)
{
    if (n == 0) return 0;
    return f2(n-1) + a[n-1];
}

int main()
{
    printf("result1 : %d\n", f(5));
    printf("result2 : %d\n", f2(5));

    return 0;
}