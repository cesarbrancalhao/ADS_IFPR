public class Voo {
    private String idVoo = "";
    private String origem;
    private String destino;
    private Aviao aviao;
    private boolean autorizado;
    private Passageiro[] arrPassageiros;
    private int quantPassageiros;

    public Voo(String idVoo, String origem, String destino,
               String fabricanteAviao, String modeloAviao, String codigoAviao) {

        setIdVoo(idVoo);
        setOrigem(origem);
        setDestino(destino);
        this.aviao = new Aviao(fabricanteAviao, modeloAviao, codigoAviao);
        setAutorizado(aviao.isAvaliado());
        this.arrPassageiros = new Passageiro[aviao.getQuantAssentos()];
        setQuantPassageiros(0);
    }

    @Override
    public String toString() {
        String vooAut = null; // pra indicar se o voo foi autorizado de uma forma verbal
        if (isAutorizado()){
            vooAut = "Vôo autorizado";
        } else {
            vooAut = "Vôo negado";
        }
        return vooAut + "\n" +
                "\nCódigo do vôo = " + getIdVoo() +
                "\nOrigem= " + getOrigem() +
                "\nDestino= " + getDestino() +
                "\nQuantidade de passageiros = " + getQuantPassageiros() +
        		"\nQuantidade de assentos livres = " + (this.aviao.getQuantAssentos() - getQuantPassageiros());
    }

    public Passageiro getPassageiroAssento(int numAssento) { // seleciona o passageiro por posição
            if (this.arrPassageiros[numAssento] != null) {
                return this.arrPassageiros[numAssento];
            } else {
                System.out.println("Passageiro não encontrado.");
                return null;
            }
    }

    public void setPassageiro(Passageiro passageiro) { // se passageiros < assentos == cria novo
        if (getQuantPassageiros() < aviao.getQuantAssentos()) {
            this.arrPassageiros[getQuantPassageiros()] = passageiro;
            setQuantPassageiros(getQuantPassageiros()+1);
        }
    }

    public String getIdVoo() {
        return idVoo;
    }

    public void setIdVoo(String idVoo) {
        this.idVoo = idVoo;
    }

    public String getOrigem() {
        return origem;
    }

    public void setOrigem(String origem) {
        this.origem = origem;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public Aviao getAviao() {
        return aviao;
    }

    public void setAviao(Aviao aviao) {
        this.aviao = aviao;
    }

    public boolean isAutorizado() {
        return autorizado;
    }

    private void setAutorizado(boolean autorizado) {
        this.autorizado = autorizado;
    }

    public Passageiro[] getArrPassageiros(int pos) {
        return this.arrPassageiros;
    }

    public int getQuantPassageiros() {
        return this.quantPassageiros;
    }

    public void setQuantPassageiros(int quantPassageiros) {
        this.quantPassageiros = quantPassageiros;
    }
}