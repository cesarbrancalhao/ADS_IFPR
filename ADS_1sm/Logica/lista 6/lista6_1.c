#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i, j;

    printf("Entre com o número inicial da contagem:");
    scanf("%d", &i);
    //__fpurge(stdin);
    fflush(stdin);
    printf("Entre com o número final da contagem:");
    scanf("%d", &j);
    //__fpurge(stdin);
    fflush(stdin);

    if (i > j)
    {
        do
        {
            printf("%d\n", i);
            i++;
        } while (i<=j);
    }
    

    return 0;
}
