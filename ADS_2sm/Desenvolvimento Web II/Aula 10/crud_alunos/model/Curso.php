<?php

class Curso {
    private ?int $id;
    private ?string $nome;
    private ?string $turno;

    public function getId()
    {
        return $this->id;
    }

    /**
     * @return  self
     */
    public function setId(?int $id)
    {
        $this->id = $id;

        return $this;
    }

    public function getNome(): ?string
    {
        return $this->nome;
    }

    /**
     * @return  self
     */
    public function setNome(?string $nome)
    {
        $this->nome = $nome;

        return $this;
    }

    public function getTurno(): ?string
    {
        return $this->turno;
    }

    /**
     * @return  self
     */
    public function setTurno(?string $turno)
    {
        $this->turno = $turno;

        return $this;
    }
}