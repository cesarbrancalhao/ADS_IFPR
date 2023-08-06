#include <stdio.h>

int main()
{
    int i, j, sum, sub, mult;
    float div;

    printf("Insira o primeiro número: ");
    scanf("%i", &i);
    printf("Insira o segundo número: ");
    scanf("%i", &j);

    sum = i + j;
    sub = i - j;
    mult = i * j;
    div = i / j;

    printf("A soma é %i\n", sum);
    printf("A subtração é %i\n", sub);
    printf("A multiplicação é %i\n", mult);
    printf("A divisão é %.0f\n\n", div);

    return 0;
}
