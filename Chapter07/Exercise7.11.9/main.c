#include <stdio.h>

extern int isEvenOne(int);

int main()
{
    int num, result;

    while(1){
        printf("input a number: ");
        scanf("%d", &num);

        if (num == 999) break;

        result = isEvenOne(num);

        printf("Number is 1s in %d is %s(%d)\n", num, result ? "Even" : "Odd", result);
    }

    return 0;
}