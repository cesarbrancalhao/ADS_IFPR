<?php

include_once(__DIR__ . "/../../model/Livro.php");
include_once(__DIR__ . "/../../model/Editora.php");
include_once(__DIR__ . "/../../model/Autor.php");
include_once(__DIR__ . "/../../controller/LivroController.php");

$msgErros = "";
$livro = null;

if(isset($_POST['submetido'])){

    $idLivro = $_POST['id_livro'];
    $titulo = trim($_POST['titulo']);
    $ano = is_numeric($_POST['ano']) ? $_POST['ano'] : NULL;
    $paginas = is_numeric($_POST['paginas']) ? $_POST['paginas'] : NULL;
    $status = trim($_POST['status']);
    $genero = trim($_POST['genero']);
    $idEditora = is_numeric($_POST['editora']) ? $_POST['editora'] : NULL;
    $idAutor = is_numeric($_POST['autor']) ? $_POST['autor'] : NULL;

    $livro = new Livro();
    $livro->setId($idLivro)
        ->setTitulo($titulo)
        ->setAno($ano)
        ->setPaginas($paginas)
        ->setStatus($status)
        ->setGenero($genero);

    if ($idEditora) {
        $editora = new Editora();
        $editora->setId($idEditora);
        $livro->setEditora($editora);
    }

    if ($idAutor) {
        $autor = new Autor();
        $autor->setId($idAutor);
        $livro->setAutor($autor);
    }

    $livroCont = new LivroController();
    $erros = $livroCont->alterar($livro);

    if (!$erros) {
        header("location: listar.php");
        exit;
    }

    $msgErros = implode("<br>", $erros);
    
} else {

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
}

include_once(__DIR__ . "/form.php");