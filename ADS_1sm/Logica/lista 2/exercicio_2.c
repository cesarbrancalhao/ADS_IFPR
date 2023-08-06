#include <stdio.h>
#include <math.h>

int main()
{
    float valor, prestacoes;

    printf("Digite o valor da compra: ");
    scanf("%f", &valor);

    prestacoes = valor / 5;

    printf("Compra parcelada\n 5 x %.2f = %.2f\n", valor, prestacoes);

    return 0;
}