<?php

include_once(__DIR__ . "/../dao/AutorDAO.php");

class AutorController {

    private AutorDAO $autorDAO;

    public function __construct() {
        $this->autorDAO = new AutorDAO();        
    }

    public function listar() {
        return $this->autorDAO->list();
    }
}