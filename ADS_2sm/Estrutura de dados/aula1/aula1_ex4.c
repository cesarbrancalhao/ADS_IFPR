#include <stdio.h>

void soma10(int x);
void soma10p(int *x);

int main(void){
    int numero;
    printf("Digite um número: ");
    scanf("%d", &numero);
    __fpurge(stdin);

    soma10(numero);

    printf("Agora o número vale %d\n", numero);

    soma10p(&numero);

    printf("\nAgora o número vale %d\n", numero);

return 0;
}

void soma10(int x){
    x += 10;
    printf("Valor de x apos a soma = %d\n", x);

    return;
}

void soma10p(int *x){
    *x += 10;
    printf("Valor de *x apos a somaP = %d\n", *x);
    return;
}
