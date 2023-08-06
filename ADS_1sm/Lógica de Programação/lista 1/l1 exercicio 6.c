#include <stdio.h>

int main()
{
    int size;
    float speed, time, minutes, hours;

    printf("Informe o tamanho do arquivo (em bits): ");
    scanf("%d", &size);
    printf("Informe a velocidade da conexão (bits/s): ");
    scanf("%f", &speed);

    time = size / speed;
    minutes = time / 60;
    hours = time / 3600;

    
if (time == 1){
    printf("O tempo de espera restante é de %.0f segundo.\n\n", time);
} else if (time < 60)
{
    printf("O tempo de espera restante é de %.0f segundos.\n\n", time);
} else if (time > 59, minutes > 1, minutes < 60)
{
    printf("O tempo de espera restante é de %.1f minutos.\n\n", minutes);
} else if (minutes == 1){
    printf("O tempo de espera restante é de %.1f minuto.\n\n", minutes);
} else if (minutes > 60, hours == 1){
    printf("O tempo de espera restante é de %.1f hora.\n\n", hours);
} else if (minutes > 60, hours > 1){
    printf("O tempo de espera restante é de %.1f horas.\n\n", hours);
}

    return 0;
}