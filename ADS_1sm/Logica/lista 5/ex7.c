#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int r = 3;
    int a = 0, n = 0;

    printf("PA: ");

    while (a < 19)
    {
        printf("%d, ", n);
        n += r;
        a += 1;
    }
    printf("%d.", n);
    printf("\n");

    return 0;
}