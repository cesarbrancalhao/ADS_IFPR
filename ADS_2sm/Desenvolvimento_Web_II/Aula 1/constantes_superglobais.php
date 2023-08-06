<?php

// php já utiliza algumas constantes pré-definidas, que retornam o mesmo resultado.

    $var = __FILE__; // Retorna o arquivo que está sendo executado.
    $var = __DIR__; // Retorna o diretório do arquivo sendo executado.
    $var = __LINE__; // Retorna o número da linha sendo executada.
    $var = __FUNCTION__; // Retorna o nome da função que está sendo executada.
    $var = __CLASS__; // Retorna o nome da classe que está sendo executada.
    $var = __METHOD__; // Retorna o nome do método que está sendo executado.

    // Para definir constantes usamos define("" <- nome, "" <- valor);

    define("PI", 3.14);

    echo PI; // <- Vai escrever "3.14"

    // Variáveis superglobais

    $var = $GLOBALS;
    $var = $_GET;
    $var = $_POST;
    $var = $_SESSION;

    // Também existem $_FILES, $_COOKIE, $_ENV, $_SERVER;

    // Exibir erros
    // Esses comandos dofrçam o php a exibir os erros no cliente (navegador);

    ini_set('display_erros', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    // Em algumas versões, a exibição de erros pode estar desativada
    // Os erros precisam ser adicionados na página onde ocorreram.