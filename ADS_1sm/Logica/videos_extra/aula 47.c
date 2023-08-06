#include <stdio.h>
#include <string.h>

int main(void)
{
    int t1, t2;
    char string1[4], string2[9], string3[13];
    void concatenateStrings(char string1[4], int t1, char string2[9], int t2, char string3[13]);
    char palavra1[4] = {'p', 'a', 'o', ' '};
    char palavra2[9] = {'m', 'o', 'r', 't', 'a', 'd', 'e', 'l', 'a'};
    char novaPalavra[13];
    int i, j;

    concatenateStrings(palavra1, 4, palavra2, 9, novaPalavra);

    while (i < t1)
    {
        string3[i] = string1[i];
        ++i;
    }
    while (j < t2)
    {
        string3[t1 + j] = string2[j];
        ++j;
    }
    
    

    i = 0;
    while (i < 13)
    {
        printf("%c", novaPalavra[i]);
        ++i;
    }
    
    printf("\n");

    return 0;
}