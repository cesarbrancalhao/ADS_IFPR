<?php

include_once(__DIR__ . "/../util/Connection.php");

class alunoDAO{

    public function list(){
        $conn = Connection::getConnection();

        $sql = "SELECT * FROM  aluno";
        $stm = $conn->prepare($sql);
        $stm->execute();
        $result = $stm->fetchAll();
        return $result;
    }
}