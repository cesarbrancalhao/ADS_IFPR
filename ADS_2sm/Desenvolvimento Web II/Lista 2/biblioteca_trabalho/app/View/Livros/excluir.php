<?php

include_once(__DIR__ . "/../../controller/LivroController.php");

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

$livroCont->excluirPorId($livro->getId());

header("location: listar.php");