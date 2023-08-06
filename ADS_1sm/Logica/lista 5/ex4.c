#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int i, f, p, o;

    printf("Insira o número inicial da sequência.\n");
    scanf("%d", &i);
    printf("Insira o número final da sequência.\n");
    scanf("%d", &f);

    while (i <= f)
    {
        if (i % 2 != 0)
        {
            o += i;
        } else {
            p += i;
        }
        i++;
    }

    printf("Soma dos pares: %d\n", p);
    printf("Soma dos ímpares: %d\n", o);

    return 0;
}