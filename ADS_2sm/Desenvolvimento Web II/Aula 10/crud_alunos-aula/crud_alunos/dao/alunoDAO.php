<?php

include_once(__DIR__ . "/../util/Connection.php");

class alunoDAO{

    public function list(){
        $conn = Connection::getConnection();

        $sql = "SELECT a.*, c.nome AS nome_curso FROM  alunos a" .
               " JOIN cursos c ON (c.id = a.id_curso)";
        $stm = $conn->prepare($sql);
        $stm->execute();
        $result = $stm->fetchAll();
        return $result;
    }

    private function mapDBToObject(array $result){
        $alunos = array();
        foreach ($result as $reg) {
            $aluno = new Aluno();
            $aluno->setEstrangeiro($reg['id']);
            $aluno->setNome($reg['nome']);
            $aluno->setIdade($reg['idade']);
            $aluno->setEstrangeiro($reg['estrangeiro']);

            $curso = new Curso();
            $curso->setId($reg['id_curso']);
            $curso->setNome($reg['nome_curso']);
            $aluno->setCurso($curso);

            array_push($alunos, $aluno);
        }
        return $alunos;
    }
}