package aulaseila;

public class Escola {
    private String nome;
    private String fone;
    private int quantTurmas;
    private Turma[] vetTurmas;

    public Escola(){
        this.vetTurmas = new Turma[20];
        this.quantTurmas = 0;
    }

    public String getNome(){
        return this.nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }

    public String getFone(){
        return this.fone;
    }
    public void setFone(String fone){
        this.fone = fone;
    }

    public Turma getTurma(int posicao){
        return this.vetTurmas[posicao];
    }
    public void setTurma(Turma turma){
        this.vetTurmas[quantTurmas] = turma;
        this.quantTurmas++;
    }

    public int getQuantTurmas(){
        return this.quantTurmas;
    }
}
