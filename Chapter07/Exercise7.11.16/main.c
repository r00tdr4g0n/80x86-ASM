#include <stdio.h>

// int max(int a, int b, int c)
// {
//     int m;

//     if (a > b) m = a;
//     else m = b;

//     if (c > m) m = c;

//     return m;
// }

extern int max(int, int, int);

int main()
{
    printf("%d\n", max(10, 30, 20));

    return 0;
}