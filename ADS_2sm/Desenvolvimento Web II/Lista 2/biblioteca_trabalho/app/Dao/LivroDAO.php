<?php

namespace App\Dao;

use App\Util\Connection;
use App\Mapper\LivroMapper;
use App\Model\Livro;

use \Exception;

class LivroDAO {

    private $conn;
    private $livroMapper;

    public function __construct() {
        $this->conn = Connection::getConnection();
        $this->livroMapper = new LivroMapper();
    }

    public function list() {
        $sql = 'SELECT * FROM livros ORDER BY id';

        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();

        return $this->livroMapper->mapFromDatabaseArrayToObjectArray($result);
    }

    public function findById(int $id) {
        $sql = 'SELECT * FROM livros WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
        $result = $stmt->fetchAll();

        $arrayObj = $this->livroMapper->mapFromDatabaseArrayToObjectArray($result);

        if (count($arrayObj) == 0)
            return null;
        elseif (count($arrayObj) > 1)
            new Exception("Mais de um registro encontrado para o ID " . $id);
        else
            return $arrayObj[0];
    }

    public function insert(Livro $livro) {
        $sql = 'INSERT INTO livros (titulo, ano, paginas, status, genero, id_editora, id_autor) VALUES (:titulo, :ano, :paginas, :status, :genero, :id_editora, :id_autor)';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("titulo", $livro->getTitulo());
        $stmt->bindValue("ano", $livro->getAno());
        $stmt->bindValue("paginas", $livro->getPaginas());
        $stmt->bindValue("status", $livro->getStatus());
        $stmt->bindValue("genero", $livro->getGenero());
        $stmt->bindValue("id_editora", $livro->getEditora()->getId());
        $stmt->bindValue("id_autor", $livro->getAutor()->getId());
        $stmt->execute();

        $id = $this->conn->lastInsertId();
        $livro->setId($id);
        return $livro;
    }

    public function update(Livro $livro) {
        $sql = 'UPDATE livros SET titulo = :titulo, ano = :ano, paginas = :paginas, status = :status, genero = :genero, id_editora = :id_editora, id_autor = :id_autor WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("titulo", $livro->getTitulo());
        $stmt->bindValue("ano", $livro->getAno());
        $stmt->bindValue("paginas", $livro->getPaginas());
        $stmt->bindValue("status", $livro->getStatus());
        $stmt->bindValue("genero", $livro->getGenero());
        $stmt->bindValue("id_editora", $livro->getEditora()->getId());
        $stmt->bindValue("id_autor", $livro->getAutor()->getId());
        $stmt->bindValue("id", $livro->getId());
        $stmt->execute();

        return $livro;
    }

    public function deleteById(int $id) {
        $sql = 'DELETE FROM livros WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
    }
}