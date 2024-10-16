#include <stdio.h>

// extern int cf;

// int subtract(int a, int b)
// {
//     // 뺄셈 결과 값 반환 및 Carry 플래그 내용 cf에 저장
//     return a - b;
// }

int cf;
extern int subtract(int, int);

int main()
{
    int res = subtract(5, 6);

    printf("res: %d, cf: %d\n", res, cf);

    return 0;
}