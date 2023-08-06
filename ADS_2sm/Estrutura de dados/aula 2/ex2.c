#include <stdio.h>

struct ender
{
    char rua[50];
    int numero;
    char complemento[15];
    char bairro[30];
    char cidade[30];
    char UF[4];
    char CEP[10];
};

struct aluno{
    char nome[50];
    int matricula;
    char nascimento[20];
    char sexo;
    char telefone[20];
    struct ender endereço;
};
