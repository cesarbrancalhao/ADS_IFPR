#include <stdio.h>
#include <stdlib.h>

int main(void){
// criar ponteiro para o arquivo
FILE *pont_arq;

//abrir o arquivo
pont_arq = fopen("arquivo.txt", "a");

// fechar arquivo
fclose(pont_arq);

//mensagem para o usuário
printf("O arquivo foi criado com sucesso!");

system("pause");

return(0);
}