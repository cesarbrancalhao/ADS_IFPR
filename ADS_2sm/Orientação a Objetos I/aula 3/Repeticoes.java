package POO;

public class Repeticoes {
    public static void main(String[] args) {
        int qtde = 5;

        //para
        System.out.println("Repetição do tipo for: ");
        for (int i = 0; i < qtde; i++) {
                System.out.println(i);
        } System.out.println();
        
        //enquanto
        System.out.println("Repetição do tipo while: ");
        int ctd = 0;
        while (ctd <= qtde) {
            System.out.println(ctd);
            ctd++;
        }System.out.println();

        //faça enquanto
        System.out.println("Repetição do tipo do-whhile: ");
        ctd = 0;
        do {
            System.out.println(ctd);
            ctd++;
        } while (ctd <= qtde);
        System.out.println();
    }
}
