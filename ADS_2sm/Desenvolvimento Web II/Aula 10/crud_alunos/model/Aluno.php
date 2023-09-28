<?php

include_once("Curso.php");

class Aluno {

    private ?int $id;
    private ?string $nome;
    private ?int $idade;
    private ?string $estrangeiro;
    private ?Curso $curso;

    /**
     * @return int|null
     */
    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @param int|null $id
     */
    public function setId(?int $id): void
    {
        $this->id = $id;
    }

    /**
     * @return string|null
     */
    public function getNome(): ?string
    {
        return $this->nome;
    }

    /**
     * @param string|null $nome
     */
    public function setNome(?string $nome): void
    {
        $this->nome = $nome;
    }

    /**
     * @return int|null
     */
    public function getIdade(): ?int
    {
        return $this->idade;
    }

    /**
     * @param int|null $idade
     */
    public function setIdade(?int $idade): void
    {
        $this->idade = $idade;
    }

    /**
     * @return string|null
     */
    public function getEstrangeiro(): ?string
    {
        return $this->estrangeiro;
    }

    /**
     * @param string|null $estrangeiro
     */
    public function setEstrangeiro(?string $estrangeiro): void
    {
        $this->estrangeiro = $estrangeiro;
    }

    /**
     * @return Curso|null
     */
    public function getCurso(): ?Curso
    {
        return $this->curso;
    }

    /**
     * @param Curso|null $curso
     */
    public function setCurso(?Curso $curso): void
    {
        $this->curso = $curso;
    }
}