#include <stdio.h>
#include <locale.h>

int main(void)
{
    setlocale(LC_ALL,"");

    int pagamento;

    float total, final, desconto[5] = {0.15, 0.10, 0.05, 0, 0.08};
    float diff, parcela;

    printf("Opções de pagamento:\n");
    printf("1: Pagamento à vista (15%% de desconto).\n");
    printf("2: Pagamento com cheque pré-datado para 30 dias (10%% de desconto).\n");
    printf("3: Pagamento parcelado em 3 vezes (5%% de desconto).\n");
    printf("4: Pagamento parcelado em 6 vezes (sem desconto).\n");
    printf("5: Pagamento parcelado em 12 vezes (8%% de acréscimo).\n\n");

    printf("Insira o valor total da compra.\n");
    scanf("%f", &total);
    fflush(stdin);
    printf("Insira o número da opção de pagamento.\n");
    scanf("%d", &pagamento);

    switch (pagamento)
    {
    case 1:
        final = total - total * desconto[0];
        diff = total - final;
        printf("\nValor total: %.2fR$.\n", total);
        printf("Valor final: %.2fR$. (-%.2fR$ desconto)\n", final, diff);
        break;

    case 2:
        final = total - total * desconto[1];
        diff = total - final;
        printf("\nValor total: %.2fR$.\n", total);
        printf("Valor final: %.2fR$. (-%.2fR$ desconto)\n", final, diff);
        break;

    case 3:
        final = total - total * desconto[2];
        diff = total - final;
        parcela = final / 3;
        printf("\nValor total: %.2fR$.\n", total);
        printf("Valor parcelado: %.2fR$ x 3.\n", parcela);
        printf("Valor final: %.2fR$. (-%.2fR$ desconto)\n", final, diff);
        break;

    case 4:
        final = total - total * desconto[3];
        diff = total - final;
        parcela = final / 6;
        printf("\nValor total: %.2fR$.\n", total);
        printf("Valor parcelado: %.2fR$ x 6.\n", parcela);
        printf("Valor final: %.2fR$. (sem desconto)\n", final);
        break;

    case 5:
        final = total + total * desconto[4];
        diff = final - total;
        parcela = final / 12;
        printf("\nValor total: %.2fR$.\n", total);
        printf("Valor parcelado: %.2fR$ x 12.\n", parcela);
        printf("Valor final: %.2fR$. (+%.2fR$ juros)\n", final, diff);
        break;
    
    default:
        printf("Valor ou número da opção de pagamento incorretos.\n");
        break;
    }

    return 0;
}