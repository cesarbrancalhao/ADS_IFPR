#include <stdio.h>
#include <math.h>

int main(void)
{
    unsigned int i;
    int unidade, dezena, centena, milhar;
    int soma;

    printf("Insira um número inteiro positivo de até quatro algarismos.\n");
    scanf("%d",&i);

    milhar = i / 1000;
    unidade = i % 1000;
    centena = unidade / 100;
    unidade = unidade % 100;
    dezena = unidade / 10;
    unidade = unidade % 10;

    soma = milhar + centena + dezena + unidade;

    printf("A soma dos 4 algarismos é: %d\n", soma);

    return 0;
}