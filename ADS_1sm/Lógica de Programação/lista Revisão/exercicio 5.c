#include <stdio.h>

int main(){
    float pago, preco, troco;

    printf("Insira o valor pago:");
    scanf("%f", &pago);
    printf("Insira o preço:");
    scanf("%f", &preco);

    troco = pago - preco;

    printf("O troco é de %.2fR$.\n", troco);

    return 0;    
}