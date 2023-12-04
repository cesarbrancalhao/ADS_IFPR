<?php

include_once(__DIR__ . "/../dao/LivroDAO.php");
include_once(__DIR__ . "/../model/Livro.php");
include_once(__DIR__ . "/../service/LivroService.php");

class LivroController {

    private LivroDAO $livroDAO;
    private LivroService $livroService;

    public function __construct() {
        $this->livroDAO = new LivroDAO();
        $this->livroService = new LivroService();
    }

    public function listar() {
        return $this->livroDAO->list();
    }

    public function inserir(Livro $livro) {
        $erros = $this->livroService->validarDados($livro);
        if($erros)
            return $erros;

        $this->livroDAO->insert($livro);
        return array();
    }

    public function alterar(Livro $livro) {
        $erros = $this->livroService->validarDados($livro);
        if($erros)
            return $erros;

        $erros = $this->livroDAO->update($livro);
        return $erros;
    }

    public function buscarPorId(int $idLivro) {
        return $this->livroDAO->findById($idLivro);
    }

    public function excluirPorId(int $idLivro) {
        $this->livroDAO->deleteById($idLivro);
    }

}