<?php

include_once(__DIR__ . "/../model/Livro.php");

class LivroService {

    public function validarDados(Livro $livro) {
        $erros = array();

        if(! $livro->getTitulo())
            array_push($erros, "Informe o título!");

        if(! $livro->getAno())
            array_push($erros, "Informe o ano!");

        if(! $livro->getPaginas())
            array_push($erros, "Informe o número de páginas!");

        if(! $livro->getStatus())
            array_push($erros, "Informe o status do livro!");

        if(! $livro->getGenero())
            array_push($erros, "Informe o gênero textual!");

        if(! $livro->getEditora())
            array_push($erros, "Informe a editora!");

        if(! $livro->getAutor())
            array_push($erros, "Informe o(a) autor(a) do livro!");

        return $erros;
    }
}