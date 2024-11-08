#include <stdio.h>

// int power2(int n)
// {
//     int result = 1;
//     result = result << n;
//     return result;
// }

extern int power2(int);

int main()
{
    printf("result : %d\n", power2(5));

    return 0;
}