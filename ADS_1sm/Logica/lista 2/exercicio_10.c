#include <stdio.h>
#include <math.h>

int main(void)
{
    int v1, v2, vv;

    printf("Insira dois valores inteiros:\n");
    scanf("%d %d", &v1, &v2);

    printf("Valores iniciais:\n v1 = %d, v2 = %d\n", v1, v2);
    
    vv = v1;
    v1 = v2;
    v2 = vv;

    printf("Valores finais:\n v1 = %d, v2 = %d\n", v1, v2);

    return 0;
}