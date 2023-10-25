<?php

include_once (__DIR__ . "/../model/Editora.php");
include_once (__DIR__ . "/../util/Connection.php");

class EditoraDAO {

    public function list() {
        $conn = Connection::getConnection();

        $sql = "SELECT * FROM editoras ORDER BY nome";
        $stm = $conn->prepare($sql);
        $stm->execute();
        $result = $stm->fetchAll();
        $editoras = $this->mapDBToObject($result);
        return $editoras;
    }

    private function mapDBToObject(array $result) {
        $editoras = array();
        foreach ($result as $reg) {
            $editora = new Editora();
            $editora->setId($reg['id'])
                    ->setNome($reg['nome'])
                    ->setPais($reg['pais']);
            array_push($editoras, $editora);
        }
        return $editoras;
    }
}