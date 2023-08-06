#include <stdio.h>

int main(){
    float base, altura, area;

    printf("Insira base e altura do retângulo:\n");
    scanf("%f", &base);
    scanf("%f", &altura);

    area = base * altura;

    printf("A área do retângulo é %.1f\n", area);

    return 0;    
}