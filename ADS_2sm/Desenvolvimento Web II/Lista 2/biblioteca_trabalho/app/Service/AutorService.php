<?php

namespace App\Service;

use App\Model\Autor;

class AutorService {

    public function validarDados(Autor $autor, array $autores) {
        $erros = [];

        if (!$autor->getNome()) {
            array_push($erros, "Informe o nome do autor!");
        }

        if (!$autor->getPais()) {
            array_push($erros, "Informe o país do autor!");
        }

        $checkNomes = array_map('strtolower', array_column($editoras, 'nome'));
        $nomeSubmit = strtolower($editora->getNome());

        if (in_array($nomeSubmit, $checkNomes)) {
            array_push($erros, "Nome já existe!");
        }

        return $erros;
    }
}