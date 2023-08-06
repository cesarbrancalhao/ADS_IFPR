#include <stdio.h>

int main()
{
    float vendas, comissao;

    printf("Digite o valor total vendido: ");
    scanf("%f", &vendas);

    comissao = vendas * 0.1;

    printf("A comissão a ser recebida é de: %.2f\n\n", comissao);

    return 0;
}