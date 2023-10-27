<?php 

include_once(__DIR__ . "/../../controller/AlunoController.php");

$alunoCont = new AlunoController();
$alunos = $alunoCont->listar();
?>

<?php 
    include_once(__DIR__ . "/../include/header.php");
?>    

<h3>Listagem de alunos</h3>

<div>
    <a href="inserir.php">Inserir</a>
</div>

<table border="1">
    <thead>
        <tr>
            <td>ID</td>
            <td>Nome</td>
            <td>Idade</td>
            <td>Estrangeiro</td>
            <td>Curso</td>
            <td></td>
            <td></td>
        </tr>
    </thead>

    <tbody>
        <?php foreach($alunos as $a): ?>
            <tr>
                <td><?= $a->getId() ?></td>
                <td><?= $a->getNome() ?></td>
                <td><?= $a->getIdade() ?></td>
                <td><?= $a->getEstrangeiroDesc() ?></td>
                <td><?= $a->getCurso() ?></td>
                <td>
                    <a href="alterar.php?id=<?= $a->getId() ?>">
                        <img src="../../img/btn_editar.png" alt="Editar">
                    </a>
                </td>
                <td>
                    <a href="excluir.php?id=<?= $a->getId() ?>" 
                    onclick="return confirm('Confirma a exclusão?');">
                        <img src="../../img/btn_excluir.png" alt="Excluir">
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>

</table>

<?php 
    include_once(__DIR__ . "/../include/footer.php");
?> 