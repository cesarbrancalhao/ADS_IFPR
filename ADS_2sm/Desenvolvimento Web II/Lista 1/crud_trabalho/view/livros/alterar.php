<?php

include_once(__DIR__ . "/../../controller/LivroController.php");

$msgErros = "";

$idLivro = 0;
if(isset($_GET['id']))
    $idLivro = $_GET['id'];

$livroCont = new LivroController();
$livro = $livroCont->buscarPorId($idLivro);

if(!$livro) {
    echo "Livro não encontrado!<br>";
    echo "<a href='listar.php'>Voltar</a>";
    exit;
}

include_once(__DIR__ . "/form.php");