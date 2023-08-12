package sysescolar;

public class Aluno {

    private String nome;
    private String matricula;
    private float nota1;
    private float nota2;
    private float nota3;
    private float nota4;

    public Aluno(String nome, String matricula){
        setNome(nome);
        setMatricula(matricula);
        setNota1(nota1);
        setNota2(nota2);
        setNota3(nota3);
        setNota4(nota4);
    }

    @Override
    public String toString() {
        return "[nome=" + nome + ", matricula=" + matricula + "]";
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return this.nome;
    }

    public void setMatricula(String matricula){
        this.matricula = matricula;
    }
    public String getMatricula(){
        return this.matricula;
    }

    public void setNota1(float nota1){
        this.nota1 = nota1;
    }
    public float getNota1(){
        return this.nota1;
    }

    public void setNota2(float nota2){
        this.nota2 = nota2;
    }
    public float getNota2(){
        return this.nota2;
    }

    public void setNota3(float nota3){
        this.nota3 = nota3;
    }
    public float getNota3(){
        return this.nota3;
    }

    public void setNota4(float nota4){
        this.nota4 = nota4;
    }
    public float getNota4(){
        return this.nota4;
    }
}
