#include <stdio.h>
#include <math.h>

int main(void)
{
    char gen;
    float peso, altura, imc;

    printf("Insira seu gênero (M/F):\n");
    scanf("%0c", &gen);
    printf("Insira seu peso em quilos:\n");
    scanf("%f", &peso);
    printf("Insira sua altura em metros:\n");
    scanf("%f", &altura);

    imc = peso / (altura * altura);

    if ((gen == 'm' || gen == 'M') && imc < 20)
    {
        printf("Abaixo do peso");
    } else if ((gen == 'm' || gen == 'M') && (imc >= 20 && imc <= 24.9))
    {
        printf("Normal");
    } else if ((gen == 'm' || gen == 'M') && (imc >= 25 && imc <= 29.9))
    {
        printf("Obesidade leve");
    } else if ((gen == 'm' || gen == 'M') && (imc >= 30 && imc <= 39.9))
    {
        printf("Obesidade moderada");
    } else if ((gen == 'm' || gen == 'M') && imc >= 40)
    {
        printf("Obesidade mórbida");
    } else if ((gen == 'f' || gen == 'F') && imc < 19)
    {
        printf("Abaixo do peso");
    } else if ((gen == 'f' || gen == 'F') && (imc >= 19 && imc <= 23.9))
    {
        printf("Normal");
    } else if ((gen == 'f' || gen == 'F') && (imc >= 24 && imc <= 28.9))
    {
        printf("Obesidade leve");
    } else if ((gen == 'f' || gen == 'F') && (imc >= 29 && imc <= 38.9))
    {
        printf("Obesidade moderada");
    } else if ((gen == 'f' || gen == 'F') && imc > 39)
    {
        printf("Obesidade mórbida");
    }

    return 0;
}