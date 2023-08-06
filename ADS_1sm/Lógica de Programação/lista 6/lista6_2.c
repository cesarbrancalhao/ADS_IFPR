#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i=1, j=0, f=0, r = 0;

    do
    {
        printf("%d\n", i);
        r = i;
        i = i + f;
        f = r;

        j += 1;

    } while (j <= 14);
    

    return 0;
}