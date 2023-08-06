#include <stdio.h>

int main(){

    int a, b;
    printf("Factorial calculator.\n");
    printf("Enter the number.\n");
    scanf("%d", &a);

    b = a;
    while (b >= 2)
    {
        b--;
        a *= b;
    }
    
    printf("Result: %d\n", a);
}