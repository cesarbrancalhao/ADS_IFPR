#include <stdio.h>

int main()
{
    float custo, comprimento, largura, preco;

    printf("Insira as medidas (em metros) e preço por metro quadrado do carpete.\n");
    printf("Comprimento: ");
    scanf("%f", &comprimento);
    printf("Largura: ");
    scanf("%f", &largura);
    printf("Preço (m²): ");
    scanf("%f", &preco);

    custo = (comprimento * largura) * preco;

    printf("O custo do carpete será de %.2fR$.\n\n", custo);
    
    return 0;
}