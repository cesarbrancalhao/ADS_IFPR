#include <stdlib.h>

float area(float a, float b);

int main(void){
    float b, a;
    printf("Insira a altura e o comprimento do triângulo (cm).\n");
    scanf("%f", &b);
    scanf("%f", &a);
    printf("Área do triângulo (cm): %.1f.\n", area(b, a));

    return 0;
}

float area(float a, float b){
    float area = (a * b)/2;
    return area;
}