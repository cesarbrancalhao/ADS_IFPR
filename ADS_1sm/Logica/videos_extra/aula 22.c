#include <stdio.h>
#include <stdlib.h>

int main(void){

    int i, j = 0;
    float nota[5] = {5.4, 2.5, 4.3, 6.8, 8.8}, total = 0, media = 0;

    printf("Insira 5 notas: \n");

    while (i < 5)
    {
        scanf("%f", &nota[i]);
        total += nota[i];
        i++;
    }
    
    media = total / 5;
    
    printf("Media: %.1f\n", media);

    printf("Notas:");

    while (j < 5)
    {
        printf(" %.1f ", nota[j]);
        j++;
    }
    printf(".\n");

    return 0;
}