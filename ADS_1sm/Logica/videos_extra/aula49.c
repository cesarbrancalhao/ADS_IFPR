#include <stdio.h>

int main(void)
{
    int tamanhoString (char string[]);
    char stringUser[20];

    printf("Digite uma palavra (string):\n");
    scanf("%s", stringUser);

    tamanhoString(stringUser);

    return 0;
}

int tamanhoString (char string[])
{
    int numChars = 0;

    while (string[numChars] != '\0')
    {
        /* code */
    }
    
}