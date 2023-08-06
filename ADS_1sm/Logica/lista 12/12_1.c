#include <stdlib.h>

int soma_naturais(int n);

int main(void){
    int n;
    printf("Insira um número: ");
    scanf("%d", &n);
    printf("Resultado: %d.\n", soma_naturais(n));

    return 0;
}

int soma_naturais(int n){
    int b = 0;
    for (int i = 0; i <= n; i++){
        if (i > 0){
            b += i;
        }
    }
    return b;
}
