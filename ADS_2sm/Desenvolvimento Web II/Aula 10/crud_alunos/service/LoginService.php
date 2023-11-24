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
        session_start();

        $_SESSION['USUARIO_ID'] = $usuario->getId();
        $_SESSION['USUARIO_NOME'] = $usuario->getNome();
    }

    public function getNomeUsuarioSessao() {
        $nomeUsuario = "";

        if(session_status() != PHP_SESSION_ACTIVE)
            session_status();

        if(isset ($_SESSION['USUARIO_NOME']))
            $nomeUsuario =  $_SESSION['USUARIO_ID'];

        return $nomeUsuario;
    }

    public function excluirUsuarioSessao() {
        session_start();

        session_unset();
        session_destroy();
    }
}