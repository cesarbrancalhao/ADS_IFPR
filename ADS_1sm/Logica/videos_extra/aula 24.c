#include <stdio.h>
#include <stdlib.h>

int main(void){

    int i = 0, j = 0;
    float nota[5] = {0}, total = 0, media = 0;

    printf("Insira 5 notas: \n");

    while (i < 5)
    {
        scanf("%f", &nota[i]);
        i++;
    }
    while (i < 5)
    {
        total += nota[i];
        i++;
    }
    
    media = total / 5;
    
    printf("Media: %.1f\n", media);
    
    return 0;
}