<?php

namespace App\Service;

use App\Model\Editora;

class EditoraService {

    public function validarDados(Editora $editora, array $editoras) {
        $erros = [];

        if (!$editora->getNome()) {
            array_push($erros, "Informe o nome da editora!");
        }

        if (!$editora->getPais()) {
            array_push($erros, "Informe o país da editora!");
        }

        $checkNomes = array_map('strtolower', array_column($editoras, 'nome'));
        $nomeSubmit = strtolower($editora->getNome());

        if (in_array($nomeSubmit, $checkNomes)) {
            array_push($erros, "Nome já existe!");
        }

        return $erros;
    }
}