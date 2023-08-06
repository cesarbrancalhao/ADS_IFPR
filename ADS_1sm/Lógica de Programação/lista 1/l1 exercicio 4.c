#include <stdio.h>

int main()
{
    float km, litros, consumo;

    printf("Quantos quilômetros foram percorridos?\n");
    scanf("%f", &km);
    printf("Quanto combustível foi gasto? (Em litros)\n");
    scanf("%f", &litros);

    consumo = km / litros;

    printf("O consumo médio de combustível foi de: %.1f Km/L\n", consumo);
    return 0;
}