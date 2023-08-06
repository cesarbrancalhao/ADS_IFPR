#include <stdio.h>

int main()
{
    float dolar, real, conversao;

    printf("Escreva a quantia em dólar: ");
    scanf("%f", &dolar);
    printf("Cotação do dólar hoje: ");
    scanf("%f", &conversao);

    real = dolar * conversao;

    if (real != 1)
    {
     printf("A conversão do valor de %.1f$ em reais hoje é de %.2fR$.\n", dolar, real);   
    } else{
        printf("A conversão do valor de %.1f$ em real hoje é de %.2fR$.\n", dolar, real);
    }

    return 0;
}