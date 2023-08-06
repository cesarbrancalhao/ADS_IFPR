#include <stdio.h>
#include <math.h>

int main(void)
{
    int i;

    printf("Insira um número inteiro.\n");
    scanf("%d", &i);

    if (i > 10 && i < 100)
    {
        printf("O número está entre 10 e 100 – intervalo permitido.\n");
    } else
    {
        printf("O número precisa estar entre 10 e 100.\n");
    }

    return 0;
}