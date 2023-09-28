<?php

include_once("Curso.php");

class Aluno {

    private ?Curso $curso;
    private ?string $nome;
    private ?int $idade;
    private ?string $estrangeiro;

    public function __construct()
    {
    }

    public function getEstrangeiro()
    {
        return $this->estrangeiro;
    }

    public function setEstrangeiro($estrangeiro)
    {
        $this->estrangeiro = $estrangeiro;

        return $this;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;

        return $this;
    }

    function getidade()
    {
        return $this->idade;
    }

    public function setIdade($idade)
    {
        $this->idade = $idade;

        return $this;
    }

    public function getCurso(){
        return $this->curso;
    }

    public function setCurso($curso){
        $this->curso = $curso;

        return $this;
    }
}