#include <stdio.h>

// int sum(int n)
// {
//     if (n == 0) return 0;
//     return n + sum(n - 1);
// }

extern int sum(int);

int main()
{
    printf("%d\n", sum(100));

    return 0;
}