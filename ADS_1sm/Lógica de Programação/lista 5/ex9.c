#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i = 6, m = 1, r = 0, j = 0;

    while (j != 10)
    {
        r = i * m;
        printf("%d x %d = %d\n", i, m, r);
        m += 1;
        j += 1;
    }

    return 0;
}