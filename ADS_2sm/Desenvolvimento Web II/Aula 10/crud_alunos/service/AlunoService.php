<?php

include_once(__DIR__ . "/../model/Aluno.php");

class ALunoService {

    public function validarDados(Aluno $aluno) {
        $erros = array();

        if (! $aluno->getNome()){
            array_push($erros, "Informe o nome!");}
        if (! $aluno->getIdade()){
            array_push($erros, "Informe a idade!");}
        if (! $aluno->getEstrangeiro()){
            array_push($erros, "Informe a nacionalidae!");}
        if (! $aluno->getCurso()){
            array_push($erros, "Informe o curso!");}

        return $erros;
    }
}