#include <stdio.h>

#define SIM 100
#define NAO -100

int main(void)
{
    int x;
    printf("Digite um número inteiro: ");
    scanf("%d", &x);

    if (x <= 10)
    {
        printf("%d", NAO);
    } else
    {
        printf("%d", SIM);
    }
    
    printf("\n");
    return 0;
}