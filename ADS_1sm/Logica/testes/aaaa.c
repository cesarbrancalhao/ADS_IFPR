#include <stdio.h>
int main (){
    int num = 1000, pot2 = 1, fim = 0;
    
    while (num != 0)
    {
        fim += num % 10 * pot2;
        num /= 10;
        pot2 *= 2;
    }
    
    printf("%d.\n", fim);

    return 0;
}
