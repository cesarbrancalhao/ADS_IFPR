#include <stdio.h>
#include <math.h>

int main()
{
    int m, n;
    m = 0;
    n = 0;
    int matriz [5] [5] = {{ 1,  2,  3,  4,  5},
                          { 6,  7,  8,  9, 10},
                          {11, 12, 13, 14, 15},
                          {16, 17, 18, 19, 20},
                          {21, 22, 23, 24, 25}};

    while (m < 5)
    {
        while (n < 5)
        {
            printf("%i ", matriz[m][n]);
            n += 1;
        }
        m += 1;
        n = 0;
        printf("\n");
    }
    
    return 0;
}