package POO;

public class ExemploString{
    public static void main(String[] args){
        String str1 = "Um texto qualquer...   ";
        String str2;
        System.out.println("["+ str1 +"]");

        str1 = str1.trim(); //remove espaços do final
        System.out.println("["+ str1 +"]");

        str2 = str1.replace("texto", "teste"); //substituir um substring dentro de uma string;
        System.out.println("["+ str2 +"]");

        str2 = str1.substring(5, 10); // copiar a string st1 de 6 a 9;
        System.out.println("["+ str2 +"]");
    
        str1 = "humberto.beneduzzi@ifpr.edu.br";
        int pos = str1.indexOf("@");
        System.out.println("O @ está na posição " + pos + "."); 
        System.out.println("Usuário: " + str1.substring(0, 18));
        System.out.println("Servidor: " + str1.substring(19, 30));

        int val = 5;
        String str3 = String.valueOf(val);
        System.out.println(str3);

        String conteudo = "5/6/3/8/22/98/1/0";
        String[] arrayConteudo = conteudo.split("/");

        for (String strings : arrayConteudo) {
            System.out.println(strings);
        }
    }
}