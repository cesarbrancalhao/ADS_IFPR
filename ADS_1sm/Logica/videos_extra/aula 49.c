#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char * nick[12], password[12];
    int sizeOfSt(char string[]);

    printf("Choose your nickname: ");
    scanf("%s", &nick);
    fflush(stdin);
    printf("Choose your password: ");
    scanf("%s", &password);
    fflush(stdin);

    int n = sizeOfSt(nick);
    int s = sizeOfSt(password);

    printf("O nome de usuário %s possui %d caracteres.\n", nick, n);
    printf("A sua senha possui %d caracteres.\n", s);

    return 0;
    system("pause");
}

int sizeOfSt(char string[])
{
    int size = 0;
    
    while(string[size] != '\0')
    {
        ++size;
    }

    return size;
}