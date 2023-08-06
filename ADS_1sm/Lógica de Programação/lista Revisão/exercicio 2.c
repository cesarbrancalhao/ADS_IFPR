#include <stdio.h>

int main(){
    int n, i, j;

    printf("Insira um número inteiro.\n");
    scanf("%d", &n);

    i = n - 1;
    j = n + 1;

    printf("O antecessor deste número é %d.\n", i);
    printf("O sucessor deste número é %d.\n", j);

    return 0;    
}