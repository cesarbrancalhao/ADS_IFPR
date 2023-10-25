<?php

include_once(__DIR__ . "/../dao/EditoraDAO.php");

class EditoraController {

    private EditoraDAO $editoraDAO;

    public function __construct() {
        $this->editoraDAO = new EditoraDAO();        
    }

    public function listar() {
        return $this->editoraDAO->list();
    }
}