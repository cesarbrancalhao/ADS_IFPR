<?php

namespace App\Service;

use App\Model\Editora;

class EditoraService {

    public function validarDados(Editora $editora) {
        $erros = [];

        if (!$editora->getNome()) {
            array_push($erros, "Informe o nome da editora!");
        }

        if (!$editora->getPais()) {
            array_push($erros, "Informe o país da editora!");
        }

        return $erros;
    }
}