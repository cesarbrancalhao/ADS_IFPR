#include <stdlib.h>
#include <math.h>

float circ(float r);

int main(void){
    float r;
    printf("Insira o raio do circulo (cm): ");
    scanf("%f", &r);
    printf("Área da circunferência (cm): %.1f.\n", circ(r));

    return 0;
}

float circ(float r){
    float area = 3.14 * r * r;
    return area;
}