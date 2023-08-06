#include <stdio.h>

struct ficha_de_aluno
{
    char nome[50];
    char disciplina[30];
    float nota_prova1;
    float nota_prova2;
};
    struct ficha_de_aluno aluno;
    struct ficha_de_aluno turma[50];
// ^ variável do tipo ficha_de_aluno

int main(void){

    printf("\n-------- Cadastro de aluno ---------\n\n\n");
    printf("Nome do aluno: ");
    /*
    fgets(variavel, tamanho da string, entrada)
    como estamos lendo do teclado a entrada é stdin
    (entrada padrão), porém em outro caso, a entrada tambem
    poderia ser um arquivo
    */
    fgets(aluno.nome, 50, stdin);


    printf("Disciplina: ");
    __fpurge(stdin);
    fgets(aluno.disciplina, 30, stdin);


    printf("Informe a 1°a nota: ");
    scanf("%f", &aluno.nota_prova1);


    printf("Informe a 2a° nota: ");
    scanf("%f", &aluno.nota_prova2);


    printf("\n\n ---- Imprimindo os dados da struct ----\n\n");
    printf("Nome: %s", aluno.nome);
    printf("Disciplina: %s", aluno.disciplina);
    printf("Nota da Prova 1: %.2f\n" , aluno.nota_prova1);
    printf("Nota da Prova 2: %.2f\n" , aluno.nota_prova2);
    printf("\nMédia: %.2f\n", (aluno.nota_prova1+aluno.nota_prova2)/2);

    /*int i=0;
    for (i=0; i < NumAlunos; i++)
    {
        printf("\nNome: %s – Disciplina: %s - P1: %d – P2: %d",
        turma[i].nome, turma[i].disciplina,
        turma[i].nota_prova1, turma[i].nota_prova2);
    }*/

    return 0;
}
