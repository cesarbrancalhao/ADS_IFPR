#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int N;

    do
    {
        printf("Insira um valor entre 0 e 10:\n");
        scanf("%d", &N);
        __fpurge(stdin);
        //fflush(stdin);
    } while (0 <= N && N <= 10);
    
    if (N < 0 || N > 10)
    {
        printf("Número fora do intervalo!\n");
    }

    return 0;
}