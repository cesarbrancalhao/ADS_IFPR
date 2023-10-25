<?php

include_once (__DIR__ . "/../model/Autor.php");
include_once (__DIR__ . "/../util/Connection.php");

class AutorDAO {

    public function list() {
        $conn = Connection::getConnection();

        $sql = "SELECT * FROM autores ORDER BY nome";
        $stm = $conn->prepare($sql);
        $stm->execute();
        $result = $stm->fetchAll();
        $autores = $this->mapDBToObject($result);
        return $autores;
    }

    private function mapDBToObject(array $result) {
        $autores = array();
        foreach ($result as $reg) {
            $autor = new Autor();
            $autor->setId($reg['id'])
                  ->setNome($reg['nome'])
                  ->setPais($reg['pais']);
            array_push($autores, $autor);
        }
        return $autores;
    }
}