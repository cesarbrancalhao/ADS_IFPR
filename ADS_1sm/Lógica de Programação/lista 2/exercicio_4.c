#include <stdio.h>
#include <math.h>

int main()
{
    double a, raiz;

    printf("Escreva um valor real: ");
    scanf("%lf", &a);

    raiz = sqrt(a);

    printf("A raiz desse número é: %.2lf\n", raiz);

    return 0;
}