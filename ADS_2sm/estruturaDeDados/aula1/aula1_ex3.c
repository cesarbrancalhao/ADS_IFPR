#include <stdio.h>

int multiplica(int x, int y);
void imprimeCabecalho(void);


int main(void){
    int v1 = 0, v2 = 0, resultado = 0;

    printf("Digite o primeiro valor: ");
    scanf("%d", &v1);
    __fpurge(stdin);

    printf("Digite o segundo valor: ");
    scanf("%d", &v2);

    resultado = multiplica(v1, v2);

    printf("Resultado = %d\n", resultado);

    return 0;
}

int multiplica (int x, int y){
    printf("Função multiplica: %d * %d = x\n", x, y, (x*y));
    x *= y;
    return x;
}

void imprimeCabecalho(void){
    printf("******** a *********");
    printf("*                  *");
    return;
}