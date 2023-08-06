#include <stdio.h>
#include <math.h>

int main(void)
{
    float x, y, z;

    printf("Insira as medidas dos 3 lados do triângulo.\n");
    scanf("%f %f %f", &x, &y, &z);

    if (x + y < z || x + z < y || y + z < x)
    {
        printf("As medidas não formam um triângulo.\n");
    } else if (x == y && y == z)
    {
        printf("O triângulo é equilátero.\n");
    } else if ((x == y && x != z) || (y == z && y != x))
    {
        printf("O triângulo é isósceles.\n");
    } else if (x != y && x != z && y != z)
    {
        printf("O triângulo é escaleno.\n");
    }

        return 0;
    }