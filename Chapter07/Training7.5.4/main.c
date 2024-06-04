#include <stdio.h>

extern void max(int, int);
int result;

int main()
{
    int n, m;

    n = 3;
    m = 4;
    max(n, m);
    printf("result = %d\n", result);

    return 0;
}