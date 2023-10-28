<?php

include_once(__DIR__ . "/../../model/Livro.php");
include_once(__DIR__ . "/../../model/Editora.php");
include_once(__DIR__ . "/../../model/Autor.php");
include_once(__DIR__ . "/../../controller/LivroController.php");
 
$msgErros = "";
$livro = null;

if(isset($_POST['submetido'])){
    
    $titulo = trim($_POST['titulo']);
    $ano = is_numeric($_POST['ano']) ? $_POST['ano'] : NULL;
    $paginas = is_numeric($_POST['paginas']) ? $_POST['paginas'] : NULL;
    $status = trim($_POST['status']);
    $genero = trim($_POST['genero']);
    $idEditora = is_numeric($_POST['editora']) ? $_POST['editora'] : NULL;
    $idAutor = is_numeric($_POST['autor']) ? $_POST['autor'] : NULL;

    $livro = new Livro();
    $livro->setTitulo($titulo)
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
    $erros = $livroCont->inserir($livro);

    if (!$erros) {
        header("location: listar.php");
        exit;
    }

    $msgErros = implode("<br>", $erros);
}

include_once(__DIR__ . "/form.php");