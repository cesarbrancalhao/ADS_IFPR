<?php

use App\Model\Autor;
use App\Model\Editora;

class Livro implements JsonSerializable {

    private ?int $id;
    private ?string $titulo;
    private ?int $ano;
    private ?int $paginas;
    private ?string $status;
    private ?string $genero;
    private ?Editora $editora;
    private ?Autor $autor;

    public function __construct() {
        $this->id = 0;
        $this->editora = null;
        $this->autor = null;
        $this->titulo = null;
        $this->ano = 0;
        $this->paginas = 0;
        $this->status = null;
        $this->genero = null;
    }

    public function jsonSerialize(): array {
        return array(
                        "id" => $this->id,
                        "titulo" => $this->titulo,
                        "ano" => $this->ano,
                        "paginas" => $this->paginas,
                        "status" => $this->status,
                        "genero" => $this->genero,
                        "editora" => $this->editora,
                        "autor" => $this->autor,
                    );
    }

    public function getId(): ?int {
        return $this->id;
    }

    public function setId(?int $id) {
        $this->id = $id;

        return $this;
    }

    public function getTitulo(): ?string {
        return $this->titulo;
    }

    public function setTitulo(?string $titulo) {
        $this->titulo = $titulo;

        return $this;
    }

    public function getAno(): ?int {
        return $this->ano;
    }

    public function setAno(?int $ano) {
        $this->ano = $ano;

        return $this;
    }

    public function getPaginas(): ?int {
        return $this->paginas;
    }

    public function setPaginas(?int $paginas) {
        $this->paginas = $paginas;

        return $this;
    }

    public function getStatus(): ?string {
        return $this->status;
    }

    public function getStatusName(): ?string {
        if ($this->status == 'L')
            return "Lido";
        elseif ($this->status == 'N')
            return "Não lido";

        return '';
    }

    public function setStatus(?string $status) {
        $this->status = $status;

        return $this;
    }

    public function getGenero(): ?string {
        return $this->genero;
    }

    public function getGeneroName(): ?string {
        if ($this->genero == 'A')
            return "Ação";
        elseif ($this->genero == 'R')
            return "Romance";
        elseif ($this->genero == 'D')
            return "Drama";
        elseif ($this->genero == 'S')
            return "Suspense";
        elseif ($this->genero == 'F')
            return "Ficção";

        return '';
    }

    public function setGenero(?string $genero) {
        $this->genero = $genero;

        return $this;
    }

    public function getEditora() {
        return $this->editora;
    }

    public function setEditora(?Editora $editora) {
        $this->editora = $editora;

        return $this;
    }

    public function getAutor() {
        return $this->autor;
    }

    public function setAutor(?Autor $autor){
        $this->autor = $autor;

        return $this;
    }
}