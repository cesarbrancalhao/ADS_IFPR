#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int mes, i = 0;
    float dinheiro, lucro, custo, produtos, venda, lucroTotal, dinheiroLong = 0, gastoLong = 0, lucroLong = 0;

    printf("Dinheiro inicial: ");
    scanf("%f", &dinheiro);
    fflush(stdin);

    printf("Custo do produto: ");
    scanf("%f", &custo);
    fflush(stdin);

    printf("Preço de venda: ");
    scanf("%f", &venda);
    fflush(stdin);

    printf("Porcentagem de lucro: ");
    scanf("%f", &lucro);
    fflush(stdin);

    printf("Número de meses: ");
    scanf("%d", &mes);
    fflush(stdin);
    printf("\n"); 

    do
    {
        produtos = dinheiro / custo;
        dinheiro = produtos * venda;
        lucroTotal = (lucro / 100) * dinheiro; 
        dinheiro -= lucroTotal;

        printf("Renda mes %d: R$ %.2f.\n", i + 1, dinheiro);
        printf("Lucro mes %d: R$ %.2f.\n", i + 1, lucroTotal);
        printf("Gasto mes %d: R$ %.2f.\n\n", i + 1, produtos * custo);

        dinheiroLong += (dinheiro + lucroTotal);
        gastoLong += (produtos * custo);
        lucroLong += lucroTotal;

        i += 1;
    } while (i < mes);

    printf("\nLucro total ao final dos %d meses: R$ %.2f\n", mes, lucroLong);
    printf("Renda total: R$ %.2f\n", dinheiroLong);
    printf("Gasto total: R$ %.2f\n\n", gastoLong);


    system("pause");
    return 0;
}