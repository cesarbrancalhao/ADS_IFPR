package aulaseila;

import java.util.Scanner;

public class SistemaEscolar{
    private Escola e1;
    Scanner scanner;

    public static void main(String[] args) throws Exception{
        SistemaEscolar se = new SistemaEscolar();
        se.e1 = new Escola();
        se.scanner = new Scanner(System.in);

        System.out.print("Nome da escola: ");
        se.e1.setNome(se.thiscanner());

        System.out.print("Telefone: ");
        se.e1.setFone(se.thiscanner());

        se.menu();
    }

    private String thiscanner(){
        return this.scanner.nextLine().replaceAll("\n", "");
    }

    private void menu(){
        String opcao;
        do {
            System.out.println("----------MENU----------");
            System.out.println("[1] Cadastrar nova turma");
            System.out.println("[2] Listar turmas existentes");
            System.out.println("[3] Consultar uma turma");
            System.out.println("[4] Sair\n");
            opcao = thiscanner();

            switch (opcao) {
                case "1" -> this.cadastrarTurma();
                case "2" -> this.listarTurmas();
                case "3" -> this.consultarTurma();
                case "4" -> System.out.println("Até logo!\n");
                default -> System.out.println("Opção inválida.\n");
            }
        } while (!opcao.equals("4"));
    }

    private void cadastrarTurma(){
        Turma t = new Turma(e1.getQuantTurmas());
        this.e1.setTurma(t);
        System.out.print("Insira o nome do curso: ");
        t.setNomeCurso(thiscanner());

        System.out.println("Turma criada!\n");
    }

    private void listarTurmas(){
        for (int i = 0; i < this.e1.getQuantTurmas(); i++){
            System.out.println(this.e1.getTurma(i));
        }
        System.out.println();
    }

    private void consultarTurma(){
        System.out.println("Qual turma deseja consultar?");
        int posicao = Integer.parseInt(thiscanner());
        System.out.println(this.e1.getTurma(posicao));
        System.out.println("Ano da turma: " + this.e1.getTurma(posicao).getAno());
        System.out.println("Alunos: ");
        for (int i = 0; i < this.e1.getTurma(posicao).getQuantAlunos() ; i++){
            System.out.println(this.e1.getTurma(posicao).getAluno(i));
        } if (this.e1.getTurma(posicao).getAluno(0) == null){
            System.out.println("- Nenhum aluno registrado!\n");
        }
    }
}
