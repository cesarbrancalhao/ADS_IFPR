#include <stdio.h>

int main(){
    float valorT, valorD, valorA;

    printf("Informe o valor da compra: ");
    scanf("%f", &valorT);

    valorD = valorT - (valorT * 0.1);
    valorA = valorT + (valorT * 0.05);

    printf("O valor da compra com desconto de 10%% é %.2fR$.\n", valorD);
    printf("O valor da compra com acréscimo de 5%% é %.2fR$.\n", valorA);
    
    return 0;    
}