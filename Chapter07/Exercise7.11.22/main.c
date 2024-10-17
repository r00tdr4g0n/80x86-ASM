#include <stdio.h>

// int of;
// char negate(char c) 
// {
//     return -c;
// }

int of;
extern char negate(char);

int main()
{
    printf("result : %d, of : %d\n", negate(11), of);

    return 0;
}