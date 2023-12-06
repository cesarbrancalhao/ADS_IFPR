<?php

include_once(__DIR__ . "/../../controller/LivroController.php");

$livroCont = new LivroController();
$livros = $livroCont->listar();

?>

<?php
    include_once(__DIR__ . "/../include/header.php");
?>

<h2 class="text-dark mt-5">Lista de livros</h2>

<table class="table table-striped mt-4">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Ano</th>
            <th>Paginas</th>
            <th>Status</th>
            <th>Genero</th>
            <th>Editora</th>
            <th>Autor</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php foreach($livros as $l): ?>
            <tr>
                <td><?= $l->getId() ?></td>
                <td><?= $l->getTitulo() ?></td>
                <td><?= $l->getAno() ?></td>
                <td><?= $l->getPaginas() ?></td>
                <td><?= $l->getStatusName() ?></td>
                <td><?= $l->getGeneroName() ?></td>
                <td><?= $l->getEditora() ?></td>
                <td><?= $l->getAutor() ?></td>
                <td>
                    <a href="alterar.php?id=<?= $l->getId() ?>">
                        <img src="../../img/btn_editar.png" >
                    </a>
                </td>
                <td>
                    <a href="excluir.php?id=<?= $l->getId() ?>"
                        onclick="return confirm('Confirma a exclusão?');" >
                        <img src="../../img/btn_excluir.png" >
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>

</table>

<div>
    <a href="inserir.php" class="btn btn-primary">Inserir</a>
</div>

<?php 
    include_once(__DIR__ . "/../include/footer.php");
?>