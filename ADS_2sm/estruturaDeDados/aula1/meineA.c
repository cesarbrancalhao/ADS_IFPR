#include <stdio.h>

void timesTable(int x);

int main(void){

    int num;

    printf("Escolha um número para a tabuada: ");
    scanf("%d", &num);


    printf("\nValor anterior de num = %d\n", num);
    printf("Endereço anterior de num = %d\n", &num);

    int *u = 1010;

    timesTable(num);

    num = &u;

    printf("Valor posterior de num = %d\n", num);

    printf("Endereço posterior de num = %d\n", &num);

    return 0;
}

void timesTable(int x){
    for (int i = 0; i < 10; i++){
        printf("%d * %d = %d\n", x, i, (x*i));
    }
    return;
}