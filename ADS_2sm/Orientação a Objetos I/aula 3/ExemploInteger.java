package POO;

public class ExemploInteger {
    public static void main(String[] args) {
        String s1 = "10";
        System.out.println("s1 vale " + s1);

        int i1 = Integer.parseInt(s1); // de String pra int
        System.out.println("i1 vale " + i1);

        Integer i2 = 2;
        s1 = i2.toString(); // de int pra String

        System.out.println("s1 vale " + s1);

        String s2 = Integer.toString(i1);

        System.out.println("s2 vale " + s2);

        // converter para float
        float f1 = i2.floatValue() / 3;
        System.out.println("f1 vale " + f1);
        System.out.println("f1 formatado: " + String.format("%.02f", f1));
    }
}
