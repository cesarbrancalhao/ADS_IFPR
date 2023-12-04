<?php

namespace App\Model;

use \JsonSerializable;

class Autor implements JsonSerializable{

    private ?int $id;
    private ?string $nome;
    private ?string $pais;

    public function __construct() {
        $this->id = 0;
        $this->nome = null;
        $this->pais = null;
    }

    public function jsonSerialize(): array {
        return array(
                        "id" => $this->id,
                        "nome" => $this->nome,
                        "pais" => $this->pais,
                    );
    }

    public function __toString() {
        return $this->nome;
    }

    public function getId(): ?int {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;

        return $this;
    }

    public function getNome(): ?string {
        return $this->nome;
    }

    public function setNome($nome) {
        $this->nome = $nome;

        return $this;
    }

    public function getPais(): ?string {
        return $this->pais;
    }

    public function setPais(?string $pais) {
        $this->pais = $pais;

        return $this;
    }
}