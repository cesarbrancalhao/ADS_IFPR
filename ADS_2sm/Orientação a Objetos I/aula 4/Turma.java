package aulaseila;

public class Turma {
    private int numeroTurma;
    private String nomeCurso;
    private int ano;
    private int quantAlunos;
    private Aluno[] vetAlunos;

    public Turma(int numero){
        this.vetAlunos = new Aluno[40];
        setQuantAlunos(0);
        setNumeroTurma(numero);
    }

    @Override
    public String toString(){
        return "Turma " + (getNumeroTurma()+1) + ", curso: " + getNomeCurso()
                + ", n° alunos: " + getQuantAlunos() + ".";
    }

    public int getNumeroTurma() {
        return this.numeroTurma;
    }

    public String getNomeCurso() {
        return this.nomeCurso;
    }

    public void setNomeCurso(String nomeCurso) {
        this.nomeCurso = nomeCurso;
    }

    public int getAno() {
        return this.ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getQuantAlunos() {
        return this.quantAlunos;
    }

    public void setQuantAlunos(int quantAlunos) {
        this.quantAlunos = quantAlunos;
    }

    public Aluno[] getVetAlunos() {
        return this.vetAlunos;
    }
    public void setVetAlunos(Aluno[] vetAlunos) {
        this.vetAlunos = vetAlunos;
    }

    public Aluno getAluno(int posicao){
        return this.vetAlunos[posicao];
    }
    public void setAluno(Aluno aluno){
        if (quantAlunos < 40) {
            this.vetAlunos[quantAlunos] = aluno;
            this.quantAlunos++;
        } else {
            System.out.println("Erro. Limite de alunos atingido.");
        }
    }

    public void setNumeroTurma(int numeroTurma) {
        this.numeroTurma = numeroTurma;
    }
}
