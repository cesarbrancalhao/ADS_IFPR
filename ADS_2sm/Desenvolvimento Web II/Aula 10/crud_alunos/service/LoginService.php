<?php

require_once(__DIR__ . "/../model/Usuario.php");

class LoginService {

    public function validarDados($usuario, $senha) {
        $erros = array();

        if(! $usuario)
            array_push($erros, "Informe o usuário!");

        if(! $senha)
            array_push($erros, "Informe a senha!");

        return $erros;
    }

    public function salvarUsuarioSessao(Usuario $usuario) {
        
    }

    public function getNomeUsuarioSessao() {
        
    }

    public function excluirUsuarioSessao() {
        
    }
}