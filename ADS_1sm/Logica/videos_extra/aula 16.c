#include <stdio.h>

int main(){
    int i;

    printf("Insira um numero inteiro de 1 a 3\n");
    scanf("%i",&i);

    switch(i){
        case 1:
            printf("primeiro\n");
            break;
        case 2:
            printf("segundo\n");
            break;
        case 3:
            printf("terceiro\n");
        default:
            printf("Opção inválida.");
            break;
    }

    return 0;
}