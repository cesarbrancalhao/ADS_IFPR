#include <stdlib.h>
#include <math.h>

int raizes(float a, float b, float c);

int main(void){
    float x, y, z;
    printf("Insira três números reais: ");
    scanf("%f %f %f", &x, &y, &z);
    printf("Número de raízes reais: %d.\n", raizes(x, y, z));

    return 0;
}

int raizes(float a, float b, float c){
    float delta = b*b - 4*a*c;

    if(delta > 0){
        return 2;
    }else if(delta == 0){
        return 1;
    }else{
        return 0;
    }
}