#include <stdio.h>
#include <math.h>

int main(void)
{
    int i;
    char teste[7] = {'B', 'r', 'a', 's', 'i', 'l', '.'};

    while (i < 7)
    {
        printf("%c", teste[i]);
        i -=- 1;
    }
    printf("\n");

    return 0;
}