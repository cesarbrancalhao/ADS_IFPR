<?php
//Controller para o modelo de Aluno

include_once(__DIR__ . "/../dao/AlunoDAO.php");
include_once(__DIR__ . "/../model/Aluno.php");
include_once(__DIR__ . "/../service/AlunoService.php");

class AlunoController {

    private AlunoDAO $alunoDAO;
    private AlunoService $alunoService;

    public function __construct() {
        $this->alunoDAO = new AlunoDAO();
        $this->alunoService = new AlunoService();
    }

    public function listar() {
        return $this->alunoDAO->list();
    }

    public function inserir(Aluno $aluno) {
        $erros = $this->alunoService->validarDados($aluno);
        return $erros;
        
        $this->alunoDAO->insert($aluno);
    }
}