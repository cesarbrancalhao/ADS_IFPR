#include <stdio.h>
#include <math.h>

int main()
{
    float x, squar, cube;

    printf("Insira um número real: ");
    scanf("%f", &x);

    squar = pow(x, 2);
    cube = pow(x, 3);

    printf("numero\tquadrado\tcubo\n%.0f\t%.0f\t\t%.0f\t", x, squar, cube);

    return 0;
}
