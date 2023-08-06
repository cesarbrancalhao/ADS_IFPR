#include <stdio.h>
#include <math.h>

int main()
{
    float base, altura, hyp, hyp2, area;

    printf("Enter base and altitude: ");
    scanf("%f%f", &base, &altura);

    area = base * altura;
    hyp2 = pow(base, 2) + pow(altura, 2);
    hyp = sqrt(hyp2);

    printf("\nThe Area is: %.1f", area);
    printf("\nThe hypotenuse is: %.2f", hyp);
    
    return 0;
}