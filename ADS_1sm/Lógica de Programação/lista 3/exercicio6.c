#include <stdio.h>
#include <math.h>

int main(void)
{
    float salarioatual;

    printf("Insira o salario atual: ");
    scanf("%f", &salarioatual);

    if (salarioatual >= 0 && salarioatual <= 990)
    {
        salarioatual = salarioatual * 1.20;
        printf("Salario atual com aumento: R$ %.2f\n", salarioatual);
    } else if (salarioatual >= 990.01 && salarioatual <= 1480)
    {
        salarioatual = salarioatual * 1.10;
        printf("Salario atual com aumento: R$ %.2f\n", salarioatual);
    } else if (salarioatual >= 1480.01 && salarioatual <= 2000)
    {
        salarioatual = salarioatual * 1.05;
        printf("Salario atual com aumento: R$ %.2f\n", salarioatual);
    } else if (salarioatual > 2000)
    {
        printf("Salario atual com aumento: R$ %.2f\n", salarioatual);
    }

    return 0;   
}