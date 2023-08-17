import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;

public class SistemaAeroporto {

    BufferedReader reader;
    private SistemaAeroporto sys;

    public static void main(String[] args) throws Exception {
        SistemaAeroporto sys = new SistemaAeroporto();
    	sys.reader = new BufferedReader(new InputStreamReader(System.in));

        Companhia c1;
        c1 = setCompanhia();

        menu(c1);
    }

    // cadastrar voo
    // listar voos
    // consultar voo
    static boolean verificaInternacional(String resposta){
        if (resposta.startsWith("s")) {
            return true;
        } else {
            return false;
        }
    }

    private static String thiscanner(){
        Scanner scanner = new Scanner(System.in);
        return scanner.nextLine().replaceAll("\n","");
    }

    private static Companhia setCompanhia() {
        System.out.println("Para acessar o sistema, vamos realizar o cadastro da sua companhia.");
        System.out.print("Insira o nome da companhia: ");
        String nomeSetComp = thiscanner();

        System.out.print("Insira o CPNJ da companhia: ");
        String cnpjSetComp = thiscanner();

        System.out.print("Insira o ano em que foi fundada: ");
        int anoFundSetComp = Integer.parseInt(thiscanner());

        System.out.print("Sua Companhia é internacional? ");
        String internSetStr = thiscanner();
        boolean internSetComp = verificaInternacional(internSetStr.toLowerCase());

        System.out.println("Conta criada!");

        return new Companhia(nomeSetComp, cnpjSetComp, anoFundSetComp, internSetComp);
    }
    private static void menu(Companhia companhia) {
        int acao = -1;
        do {
        System.out.println("\n-----MENU-----");
        System.out.println("1. Cadastrar vôo");
        System.out.println("2. Listar vôos");
        System.out.println("3. Consultar vôo");
        System.out.println("4. Editar vôo");
        System.out.println("5. Registrar um passageiro");
        System.out.println("6. Consultar um passageiro");
        System.out.println();
        System.out.println("0. Sair");
        acao = Integer.parseInt(thiscanner());

        switch (acao) {
            case 1:
                cadastrarVoo(companhia);
                break;

            case 2:
                listarVoos(companhia);
                break;

            case 3:
                consultarVoo(companhia);
                break;

            case 4:
                editarVoo(companhia);
                break;

            case 5:
                registrarPassageiro(companhia);
                break;

            case 6:
                consultarPassageiro(companhia);
                break;

            case 0:
                System.out.println("Adeus!");
                break;

            default:
                System.out.println("Opção inválida");
                break;
        }
        }while (acao != 0);
    }
    public static void cadastrarVoo(Companhia companhia){
        System.out.print("Insira o código do vôo: ");
        String idVoo = thiscanner();

        System.out.print("Insira o local de partida do vôo: ");
        String origem = thiscanner();

        System.out.print("Insira o local de destino do vôo: ");
        String destino = thiscanner();

        String[] av = registraraviao();

        Voo voo = new Voo(idVoo, origem, destino, av[0],
                 		  av[1], av[2]);

		companhia.setVoo(voo);
        companhia.setQuantVoos(companhia.getQuantVoos()+1);
    }

    public static String[] registraraviao(){
        System.out.println("De qual fabricante deseja registrar?");
        System.out.println("1. Airbus");
        System.out.println("2. Boeing");
        System.out.println("3. Embraer");

        int acao = Integer.parseInt(thiscanner());
        String avFabr = "";
        String avMod = "";
        switch (acao) {
            case 1:
                avFabr = "AIRBUS";
                avMod = "a321xlr";
                break;

            case 2:
                avFabr = "BOEING";
                System.out.println("Qual modelo da Boeing você deseja registrar?");
                System.out.println("1. Max10");
                System.out.println("2. C919");
                int res = Integer.parseInt(thiscanner());
                if (res == 1)
                    avMod = "max10";
                else avMod = "c919";
                break;

            case 3:
                avFabr = "EMBRAER";
                avMod = "e175-e2";
                break;
        }
        System.out.print("Insira um código de identificação: ");
        String id = thiscanner();

        return new String[]{avFabr, avMod, id};
    }

    public static Voo buscaVoo(Companhia companhia){
        System.out.print("Digite o número do vôo: ");
        int numVoo = Integer.parseInt(thiscanner());
        return companhia.getVoo(numVoo);
    }

    public static void consultarVoo(Companhia companhia) {
        Voo voo = buscaVoo(companhia);

        if (voo != null) {
            System.out.println(voo);
        } else {
            System.out.println("Vôo não encontrado.");
        }
    }

    public static void editarVoo(Companhia companhia) {
        Voo voo = buscaVoo(companhia);

        if (voo != null) {
            System.out.println("Vôo encontrado. Insira os novos detalhes.");

            System.out.print("Novo local de partida do vôo: ");
            String origem = thiscanner();
            voo.setOrigem(origem);

            System.out.print("Novo local de destino do vôo: ");
            String destino = thiscanner();
            voo.setDestino(destino);

            System.out.println("Vôo atualizado.");
        }
    }

    public static void registrarPassageiro(Companhia companhia) {
        Voo voo = buscaVoo(companhia);

        if (voo != null) {
            System.out.println("Registrando passageiro para o vôo " + voo.getIdVoo());

            System.out.print("Insira o nome do passageiro: ");
            String nome = thiscanner();

            System.out.print("Insira a idade do passageiro: ");
            int idade = Integer.parseInt(thiscanner());

            System.out.print("Insira o país do passageiro: ");
            String pais = thiscanner();

            System.out.print("Insira o passaporte do passageiro: ");
            String passaporte = thiscanner();

            System.out.print("Insira o código de cadastro do passageiro: ");
            String codCadastro = thiscanner();

            Passageiro passageiro = new Passageiro(nome, idade, pais, passaporte, codCadastro);

            voo.setPassageiro(passageiro);

            System.out.println("Passageiro registrado com sucesso no vôo " + voo.getIdVoo());
        } else {
            System.out.println("Vôo não encontrado.");
        }
    }

    public static void consultarPassageiro(Companhia companhia) {
        Voo voo = buscaVoo(companhia);

        if (voo != null) {

            System.out.println("Insira o assento do passageiro: ");
            int assentoPassageiro = Integer.parseInt(thiscanner());
            System.out.println(voo.getPassageiroAssento(assentoPassageiro));

        }
    }

    public static void listarVoos(Companhia companhia){
        companhia.listarVoos();
    }
}