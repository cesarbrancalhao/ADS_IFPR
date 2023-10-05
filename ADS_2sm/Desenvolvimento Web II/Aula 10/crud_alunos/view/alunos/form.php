<?php
include_once(__DIR__ . "/../../controller/CursoController.php");

$cursoCont = new CursoController();
$cursos = $cursoCont->listar();
?>

<?php 
    include_once(__DIR__ . "/../include/header.php");
?>    

<h3>Inserir Aluno</h3>

<form method="POST" action="">

    <div>
        <label for="inpNome">Nome:</label>
        <input type="text" name="nome" id="inpNome">
    </div>

    <div>
        <label for="inpIdade">Idade:</label>
        <input type="number" name="idade" id="inpIdade"
            style="width: 100px;">
    </div>

    <div>
        <label for="inpEstrang">Estrangeiro:</label>
        <select name="estrang" id="inpEstrang">
            <option value="">---Selecione---</option>
            <option value="S">Sim</option>
            <option value="N">Não</option>
        </select>
    </div>

    <div>
        <label for="inpCurso">Curso:</label>
        <select name="curso" id="inpCurso">
            <option value="">---Selecione---</option>
            <?php foreach($cursos as $c): ?>
                <option value="<?= $c->getId() ?>"><?= $c->getNome() ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <button type="submit">Gravar</button>
    <button type="reset">Limpar</button>

    <input type="hidden" name="submetido" value="1">
</form>

<?php 
    include_once(__DIR__ . "/../include/footer.php");
?> 