#include <stdio.h>

int main(){
    float c, f, k;

    printf("Insira a temperatura em Celsius: ");
    scanf("%f", &c);

    k = c + 273;
    f = 1.8 * (k - 273) + 32;

    printf("\nEscala de Temperaturas\n");
    printf("%.1fC = %.1fF = %.1fK\n", c, f, k);

    return 0;    
}