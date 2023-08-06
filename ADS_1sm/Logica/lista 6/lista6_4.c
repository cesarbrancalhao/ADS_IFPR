#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int age, spectators = 0, likedTotal = 0, recommendedTotal = 0;
    char liked, recommended;

    do
    {
        printf("Qual sua idade?\n");
        scanf("%d", &age);
        __fpurge(stdin);
        //fflush(stdin);
        if (age > 0)
        {
            spectators += 1;
        }
        

        printf("Você gostou do filme? [S][N]\n");
        scanf("%c", &liked);
        if (liked == 'S' || liked == 's' && age > 0)
        {
            likedTotal += 1;
        }

        __fpurge(stdin);
        //fflush(stdin);

        printf("Você recomendaria o filme para seus colegas? [S][N]\n");
        scanf("%c", &recommended);
        if (recommended == 'S' || recommended == 's' && age > 0)
        {
            recommendedTotal += 1;
        }

        __fpurge(stdin);
        //fflush(stdin);
        
    } while (age != 0);
    
    printf("Total de espectadores: %d.\n", spectators);
    printf("Votos positivos: %d.\n", likedTotal);
    printf("Recomendações: %d.\n", recommendedTotal);
    
    return 0;
}