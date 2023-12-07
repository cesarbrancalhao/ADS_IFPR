<?php

namespace App\Service;

use App\Model\Editora;
use App\Dao\EditoraDAO;

class EditoraService {

    private $editoraDAO;

    public function validarDados(Editora $editora) {
        $erros = [];

        if (!$editora->getNome()) {
            array_push($erros, "Informe o nome da editora!");
        }

        if (!$editora->getPais()) {
            array_push($erros, "Informe o país da editora!");
        }

        $this->editoraDAO = new EditoraDAO();

        $checkEditoraNome = $this->editoraDAO->findByName($editora->getNome());
        
        if ($checkEditoraNome && $checkEditoraNome->getId() != $editora->getId())
            array_push($erros, "Já existe uma editora com esse nome!");

        return $erros;
    }

}