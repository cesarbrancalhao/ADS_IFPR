#include <stdio.h>
#include <math.h>

int main(void)
{
    int tempo;
    int minuto, hora, segundo;

    printf("Insira o tempo em segundos: ");
    scanf("%d", &tempo);

    hora = tempo / 3600;
    segundo = tempo % 3600;
    minuto = segundo / 60;
    segundo = segundo % 60;

    printf("%02ds = %01d:%01d:%01d\n", tempo, hora, minuto, segundo);

    return 0;
}