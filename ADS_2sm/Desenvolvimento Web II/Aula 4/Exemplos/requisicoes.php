<?php

/* método $_GET recebe os valores e utiliza os caracteres diretamente no link
 * exemplo: https://www.google.com ?chave=valor&chave=valor
 * exemplo: https://www.google.com ?nome=joao&numero=13
 * mais usada para buscar dados do servidor
 *
 * método $_POST recebe os valores e utiliza os caracteres de forma criptografada e segura
 * também suporta outros tipos de dados
 * usado pra armazenar dados que serão enviados pro servidor
 * exemplo: chave=valor
 *
 * para o PHP ter acesso ao GET/POST, é necessário usar as VARIÁVEIS SUPERGLOBAIS
 */

//recebe parâmetros por GET
$nome = $_GET['nome'];
    echo $nome;

echo "<br>";

$idade = $_GET['idade'];
    echo $idade;

//recebe parâmetros por POST
$nome = $_POST['nome'];
    echo $nome;

echo "<br>";

$idade = $_POST['idade'];
    echo $idade;