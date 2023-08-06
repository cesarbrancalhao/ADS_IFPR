#include <stdio.h>

int main(){
    float i, j, k, l, sum, avg;

    printf("Insira 4 números reais.\n");
    scanf("%f %f %f %f", &i, &j, &k, &l);

    avg = (i + j + k + l) / 4;

    printf("A média destes números é %.1f.\n", avg);

    return 0;    
}