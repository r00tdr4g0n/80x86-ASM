#include <stdio.h>

extern int setBits(int num, int b0, int b1);

char *itob(int n);

int main()
{
    int num, b0, b1;

    while (1) { 
        printf("Input a number: ");
        scanf("%d", &num);

        if (num == 999) {
            break;
        }

        printf("The number is %s\n", itob(num));
        printf("Enter b0 and b1: ");
        scanf("%d %d", &b0, &b1);
        num = setBits(num, b0, b1);
        printf("The number becomes %s or %d\n", itob(num), num);
    }

    return 0;
}

char *itob(int n)
{
    static char buf[100];
    int i;

    for (i=0; i<32; i++) {
        if (n & 0x80000000) {
            buf[i] = '1';
        }
        else {
            buf[i] = '0';
        }

        n <<= 1;
    }

    buf[32] = '\0';

    return buf;
}