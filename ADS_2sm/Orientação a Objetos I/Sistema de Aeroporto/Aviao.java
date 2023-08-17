public class Aviao {
    private String modelo;
    private String codigo;
    private String fabricante;
    private int quantAssentos;
    private boolean avaliado;

    public Aviao(String fabricante, String modelo, String codigo) {
        setModelo(modelo);
        setCodigo(codigo);
        setFabricante(fabricante);
        setAvaliado(true);
    }

    @Override
    public String toString() {
        return "Avião " + getFabricante() + " " + getModelo() + "." +
                "\nCodigo: " + getCodigo() +
                "\nFabricante: " + getFabricante() +
                "\nQuantidade de assentos: " + getQuantAssentos() +
                "\nAvaliado: " + isAvaliado();
    }

    public int getQuantAssentos() {
        return this.quantAssentos;
    }

    public void setQuantAssentos(int quantAssentos) {
        this.quantAssentos = quantAssentos;
    }

    public String getModelo() {
        return this.modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo.toLowerCase();
        switch (this.modelo) {
            case "a321xlr": // AIRBUS
                setQuantAssentos(24);
                break;

            case "max10": //BOEING
				setQuantAssentos(23);
                break;

            case "c919": // BOEING
                setQuantAssentos(16);
                break;

            case "e175-e2": // EMBRAER
                setQuantAssentos(9);
                break;

/* os números de assentos foram definidos retirando o último dígito do número real de assentos;
*  por motivos de falta de armazenamento dos dados ficaria inviável o teste de todos, então reduzi */
        }
    }

    public String getCodigo() {
        return this.codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getFabricante() {
        return this.fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public boolean isAvaliado() {
        return this.avaliado;
    }

    public void setAvaliado(boolean avaliado) {
        this.avaliado = avaliado;
    }
}
