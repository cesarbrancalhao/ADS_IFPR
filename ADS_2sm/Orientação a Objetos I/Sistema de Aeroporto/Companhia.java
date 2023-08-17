public class Companhia {
    private String nome;
    private String cnpj;
    private int anoFundacao;
    private boolean internacional;
    private Voo[] arrVoos;
    private int quantVoos;
    private int quantAvioes;

    public Companhia(String nome, String cnpj, int anoFundacao, boolean internacional) {
        this.nome = nome;
        this.cnpj = cnpj;
        this.anoFundacao = anoFundacao;
        this.internacional = internacional;
        this.arrVoos = new Voo[5]; //quantidade pequena para testes manuais
        this.quantAvioes = -5;
        this.quantVoos = 0;
    }

    public Voo getVoo(int num){ // pegar voo por numero
        return this.arrVoos[num];
    }

    public void setVoo(Voo voo){
        if (this.getQuantVoos() < this.getArrVoos().length){
            this.arrVoos[getQuantVoos()] = voo;
        } else {
            this.setArrVoos(aumentarLimVoos());
            this.arrVoos[getQuantVoos()] = voo;
        }
    }

    public Voo[] aumentarLimVoos(){
        Voo[] newArrVoos = new Voo[this.getArrVoos().length + 1];
        System.arraycopy(this.getArrVoos(), 0, newArrVoos, 0, this.getArrVoos().length);
        setArrVoos(null);
        return newArrVoos;
    }

    public void listarVoos(){
        if (this.getQuantVoos() > 0){
            for (int i = 0; i < this.getQuantVoos(); i++){
                System.out.println("Vôo " + i + ": " + this.getVoo(i).getIdVoo() + ", destino: " +
                					this.getVoo(i).getDestino() + ".");
            }
        } else {
            System.out.println("Não há vôos registrados");
        }
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCnpj() {
        return this.cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public int getAnoFundacao() {
        return this.anoFundacao;
    }

    public void setAnoFundacao(int anoFundacao) {
        this.anoFundacao = anoFundacao;
    }

    public boolean isInternacional() {
        return this.internacional;
    }

    public void setInternacional(boolean internacional) {
        this.internacional = internacional;
    }

    public Voo[] getArrVoos() {
        return arrVoos;
    }

    public void setArrVoos(Voo[] arrVoos) {
        this.arrVoos = arrVoos;
    }

    public int getQuantAvioes() {
        return this.quantAvioes;
    }

    public void setQuantAvioes(int quantAvioes) {
        this.quantAvioes = quantAvioes;
    }

    public int getQuantVoos() {
        return quantVoos;
    }

    public void setQuantVoos(int quantVoos) {
        this.quantVoos = quantVoos;
    }
}
