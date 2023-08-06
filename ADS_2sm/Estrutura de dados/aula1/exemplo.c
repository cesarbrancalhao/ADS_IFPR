#include <stdio.h>


int main(int argc, char const *argv[])
{
    int valor1 = 10;
    int valor2 = 33;
    
    int *ponteiro = &valor2;
    ponteiro = &valor1;


    printf("valor1 = %i, valor2 = %i, ponteiro = %i,\n *ponteiro = %p, &valor1 = %i,\n &valor2 = %i\n", valor1, valor2, ponteiro, ponteiro, &valor1, &valor2);

    return 0;
}