#include <stdio.h>
#include <stdlib.h>

#define PI 3.14159
#define NULO 0

double areaCirculo(double radius){
    return radius * radius * PI;
}

int main(void)
{
    double areaCirculo(double radius);
    double r;
    int i = 3;

    while(i != NULO){
        printf("Digite o raio do circulo: ");
        scanf("%lf", &r);
        printf("A área do círculo é %.2lf\n", areaCirculo(r));
        --i;
    }
    
    system("pause");
    return 0;
}