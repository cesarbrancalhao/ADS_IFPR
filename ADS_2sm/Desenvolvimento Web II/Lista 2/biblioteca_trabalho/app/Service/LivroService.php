<?php

namespace App\Service;

use App\Model\Livro;

class LivroService {

    public function validarDados(Livro $livro) {
        $erros = [];
        
        if(! $livro->getTitulo())
            array_push($erros, "Informe o título!");

        if(! $livro->getAno())
            array_push($erros, "Informe o ano!");

        if($livro->getAno() < 1900)
            array_push($erros, "Ano deve ser maior que 1900!");

        if(! $livro->getPaginas())
            array_push($erros, "Informe o número de páginas!");

        if($livro->getPaginas() != 0 && $livro->getPaginas() < 0)
            array_push($erros, "Número de páginas deve ser maior que 0!");

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