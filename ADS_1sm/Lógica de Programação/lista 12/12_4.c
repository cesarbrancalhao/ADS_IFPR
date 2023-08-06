#include <stdlib.h>

float area(float a, float b);

int main(void){
    float c, l;
    printf("Insira a altura e o comprimento do retângulo (cm).\n");
    scanf("%f", &c);
    scanf("%f", &l);
    printf("Área do retângulo (cm): %.1f.\n", area(c, l));

    return 0;
}

float area(float a, float b){
    float area = a * b;
    return area;
}