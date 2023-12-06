<?php

namespace App\Dao;

use App\Util\Connection;
use App\Mapper\EditoraMapper;
use App\Model\Editora;

use \Exception;

class EditoraDAO {

    private $conn;
    private $editoraMapper;

    public function __construct() {
        $this->conn = Connection::getConnection();
        $this->editoraMapper = new EditoraMapper();
    }

    public function list() {
        $sql = 'SELECT * FROM editoras ORDER BY id';

        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetchAll();

        return $this->editoraMapper->mapFromDatabaseArrayToObjectArray($result);
    }

    public function findById(int $id) {
        $sql = 'SELECT * FROM editoras WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
        $result = $stmt->fetchAll();

        $arrayObj = $this->editoraMapper->mapFromDatabaseArrayToObjectArray($result);

        if (count($arrayObj) == 0)
            return null;
        elseif (count($arrayObj) > 1)
            new Exception("Mais de um registro encontrado para o ID " . $id);
        else
            return $arrayObj[0];
    }

    public function insert(Editora $editora) {
        $sql = 'INSERT INTO editoras (nome, pais) VALUES (:nome, :pais)';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("nome", $editora->getNome());
        $stmt->bindValue("pais", $editora->getPais());
        $stmt->execute();

        $id = $this->conn->lastInsertId();
        $editora->setId($id);
        return $editora;
    }

    public function update(Editora $editora) {
        $sql = 'UPDATE editoras SET nome = :nome, pais = :pais WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("nome", $editora->getNome());
        $stmt->bindValue("pais", $editora->getPais());
        $stmt->bindValue("id", $editora->getId());
        $stmt->execute();

        return $editora;
    }

    public function deleteById(int $id) {
        $sql = 'DELETE FROM editoras WHERE id = :id';

        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
    }
}