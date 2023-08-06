#include <stdio.h>
#include <stdlib.h>

int main(void){
    int age;

    printf("Insira sua idade.\n");
    scanf("%d", &age);

    if(age >= 20 || age <= 40){
        printf("Deu certo.\n");
    } else{
        printf("Falhou.\n");
    }

    system("pause");
    return 0;
}