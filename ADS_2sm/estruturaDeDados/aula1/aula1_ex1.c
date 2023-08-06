#include <stdio.h>

int duplica(int x){
    x *= 2;
    printf("Função duplica: x = %d\n", x);
    return x;
}

int main(){
    int a;
    int resultado;

    a = 50;
    resultado = duplica(a);

    printf("Resultado = %d, a = %d\n", resultado, a);

    return 0;
}
