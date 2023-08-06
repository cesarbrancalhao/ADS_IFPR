#include <stdlib.h>
#include <math.h>

float circ(float r);
float areaR(float a, float b);
float areaT(float a, float b);

int main(void){
    int op;
    float r, c, l, b, a;

    printf("O que deseja calcular?\n");
    printf("1. Calcular área de circunferência.\n2. Calcular área de retângulo.\n3. Calcular área de triângulo.\n");
    scanf("%d", &op);

    switch (op){
    case 1:
        printf("Insira o raio do circulo (cm): ");
        scanf("%f", &r);
        printf("Área da circunferência (cm): %.1f.\n", circ(r));
        break;

    case 2:
        printf("Insira a altura e o comprimento do retângulo (cm).\n");
        scanf("%f", &c);
        scanf("%f", &l);
        printf("Área do retângulo (cm): %.1f\n", areaR(c, l));
        break;

    case 3:
        printf("Insira a altura e o comprimento do triângulo (cm).\n");
        scanf("%f", &b);
        scanf("%f", &a);
        printf("Área do triângulo (cm): %.1f\n", areaT(b, a));
        break;
    
    default:
        printf("Opção inválida.\n");
        break;
    }

    return 0;
}

float circ(float r){
    float area = 3.14 * r * r;
    return area;
}

float areaR(float a, float b){
    float area = a * b;
    return area;
}

float areaT(float a, float b){
    float area = (a * b)/2;
    return area;
}