<?php

namespace App\Dao;

use App\Util\Connection;
use App\Mapper\AutorMapper;
use App\Model\Autor;

use \Exception;

class AutorDAO {

    private $conn;
    private $autorMapper;

    public function __construct() {
        $this->conn = Connection::getConnection();
        $this->autorMapper = new AutorMapper();
    }

    public function list() {
        $sql = 'SELECT * FROM autores ORDER BY id';

        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();

        return $this->autorMapper->mapFromDatabaseArrayToObjectArray($result);
    }

    public function findById(int $id) {
        $sql = 'SELECT * FROM autores WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
        $result = $stmt->fetchAll();

        $arrayObj = $this->autorMapper->mapFromDatabaseArrayToObjectArray($result);

        if (count($arrayObj) == 0)
            return null;
        elseif (count($arrayObj) > 1)
            new Exception("Mais de um registro encontrado para o ID " . $id);
        else
            return $arrayObj[0];
    }

    public function findByName(string $nome) {
        $sql = 'SELECT * FROM autores WHERE nome = :nome';
    
        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("nome", $nome);
        $stmt->execute();
        $result = $stmt->fetchAll();
    
        $arrayObj = $this->autorMapper->mapFromDatabaseArrayToObjectArray($result);
    
        if (count($arrayObj) == 0)
            return null;
        elseif (count($arrayObj) > 1)
            new Exception("Mais de um registro encontrado para o nome " . $nome);
        else
            return $arrayObj[0];
    }

    public function insert(Autor $autor) {
        $sql = 'INSERT INTO autores (nome, pais) VALUES (:nome, :pais)';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("nome", $autor->getNome());
        $stmt->bindValue("pais", $autor->getPais());
        $stmt->execute();

        $id = $this->conn->lastInsertId();
        $autor->setId($id);
        return $autor;
    }

    public function update(Autor $autor) {
        $sql = 'UPDATE autores SET nome = :nome, pais = :pais WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("nome", $autor->getNome());
        $stmt->bindValue("pais", $autor->getPais());
        $stmt->bindValue("id", $autor->getId());
        $stmt->execute();

        return $autor;
    }

    public function deleteById(int $id) {
        $sql = 'DELETE FROM autores WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
    }
}