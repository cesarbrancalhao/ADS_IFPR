<?php

include_once(__DIR__ . "/../util/Connection.php");
include_once(__DIR__ . "/../model/Livro.php");

class LivroDAO {

    public function list() {
        $conn = Connection::getConnection();

        $sql = "SELECT l.*, d.nome AS nome_editora, a.nome AS nome_autor" .
               " FROM livros l" .
               " JOIN editoras d ON (d.id = l.id_editora)" .
               " JOIN autores a ON (a.id = l.id_autor)" .
               " ORDER BY l.titulo";

        $stm = $conn->prepare($sql);
        $stm->execute();
        $result = $stm->fetchAll();
        return $this->mapDBToObject($result);
    }

    public function insert(Livro $livro){
        $conn = Connection::getConnection();

        $sql = "INSERT INTO livros (titulo, ano, paginas, status, genero," .
            " id_editora, id_autor)" .
            " VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stm = $conn->prepare($sql);
        $stm->execute(array($livro->getTitulo(),
            $livro->getAno(),
            $livro->getPaginas(),
            $livro->getStatus(),
            $livro->getGenero(),
            $livro->getEditora()->getId(),
            $livro->getAutor()->getId()));
    }

    private function mapDBToObject(array $result) {
        $livros = array();
        foreach($result as $reg) {
            $livro = new Livro();
            $livro->setId($reg['id']);
            $livro->setTitulo($reg['titulo']);
            $livro->setAno($reg['ano']);
            $livro->setPaginas($reg['paginas']);
            $livro->setStatus($reg['status']);
            $livro->setGenero($reg['genero']);

            $editora = new Editora();
            $editora->setId($reg['id_editora']);
            $editora->setNome($reg['nome_editora']);
            $livro->setEditora($editora);

            $autor = new Autor();
            $autor->setId($reg['id_autor']);
            $autor->setNome($reg['nome_autor']);
            $livro->setAutor($autor);
            array_push($livros, $livro);
        }
        return $livros;
    }

    public function findById(int $idLivro) {
        $conn = Connection::getConnection();

        $sql = "SELECT a.*, e.nome AS nome_editora, u.nome AS nome_autor" .
            " FROM livros a" .
            " JOIN editoras e ON (e.id = a.id_editora)" .
            " JOIN autores u ON (u.id = a.id_autor)" .
            " WHERE a.id = ?" .
            " ORDER BY a.nome";

        $stm = $conn->prepare($sql);
        $stm->execute(array($idLivro));
        $result = $stm->fetchAll();

        $livros = $this->mapDBToObject($result);

        if($livros) {
            return $livros[0];
        } else {
            return null;
        }
    }

    public function deleteById(int $idLivro){
        $conn = Connection::getConnection();

        $sql = "DELETE FROM livros WHERE id = ?";
        $stm = $conn->prepare($sql);
        $stm->execute(array($idLivro));
    }
}