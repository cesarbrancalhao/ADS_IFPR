<?php

include_once(__DIR__ . "/../dao/alunoDAO.php");

class alunoController {

    private alunoDAO $alunoDAO;

    public function __construct(){
        $this->alunoDAO = new alunoDAO();
    }

    public function listar(){
        return $this->alunoDAO->list();
    }
}
