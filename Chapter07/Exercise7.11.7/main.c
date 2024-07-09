#include <stdio.h>

extern void max(int a, int b);
int result;

int main()
{
    int n, m;

    n = 5;
    m = 4;

    max(n, m);

    printf("result = %d\n", result);

    return 0;
}