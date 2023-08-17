import java.util.Scanner;

public class Passageiro {
    private String nome;
    private int idade;
    private String idCadastro;
    private String pais;
    private String cpf;
    private String passaporte;

    public Passageiro(String nome, int idade, String pais, String passaporte, String cod_cadastro) {
        setNome(nome);
        setIdade(idade);
        setPais(pais);
        if (pais.equalsIgnoreCase("Brasil")) { //pede cpf caso brasileiro
            Scanner scan = new Scanner(System.in);

            System.out.print("Insira o CPF (somente números): ");
            setCpf(scan.nextLine().replace("[\n.,- ]", ""));
        }
		setPassaporte(passaporte);
        setId(cod_cadastro);
        System.out.println("Passageiro registrado!");
    }

    @Override
    public String toString() {
        return "Passageiro "+ getNome() + "." +
                "\nIdade: " + getIdade() +
                "\nCadastro: " + getId() +
                "\nPais: " + getPais() +
                "\nPassaporte: " + getPassaporte();
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return this.idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getId() {
        return this.idCadastro;
    }

    public void setId(String idCadastro) {
        this.idCadastro = idCadastro;
    }

    public String getPais() {
        return this.pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCpf() {
        return (this.cpf.substring(0, 3) + "." + this.cpf.substring(3, 6)
                + "." + this.cpf.substring(6, 9) + "-" + this.cpf.substring(9));
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getPassaporte() {
        return this.passaporte;
    }

    public void setPassaporte(String passaporte) {
        this.passaporte = passaporte;
    }
}