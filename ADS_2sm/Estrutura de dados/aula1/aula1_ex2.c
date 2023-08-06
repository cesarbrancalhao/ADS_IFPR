#include <stdio.h>

int duplica(int x);

int main(){
    int a;
    int resultado;

    a = 50;
    resultado = duplica(a);

    printf("Resultado = %d, a= %d.\n", resultado, a);

    a = 60;
    resultado = duplica(a);

    printf("Resultado = %d, a= %d.\n", resultado, a);
}

int duplica (int x){
    x *= 2;
    printf("Função duplica: x = %d\n", x);
    return x;
}