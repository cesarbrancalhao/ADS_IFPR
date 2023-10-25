<?php 

include_once(__DIR__ . "/../../controller/LivroController.php");

$livroCont = new LivroController();
$livros = $livroCont->listar();

?>

<?php 
    include_once(__DIR__ . "/../include/header.php");
?>    

<h3>Lista de livros</h3>

<div>
    <a href="inserir.php">Inserir</a>
</div>

<table border="1">
    <thead>
        <tr>
            <td>ID</td>
            <td>Título</td>
            <td>Ano</td>
            <td>Paginas</td>
            <td>Status</td>
            <td>Genero</td>
            <td>Editora</td>
            <td>Autor</td>
            <td></td>
            <td></td>
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

<?php 
    include_once(__DIR__ . "/../include/footer.php");
?>    