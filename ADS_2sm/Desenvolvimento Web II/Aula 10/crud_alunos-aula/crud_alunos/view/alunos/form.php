<?php
include_once(__DIR__ . "/../include/header.php");
?>

<h3> Inserir alunos </h3>

<form method="POST" action="">
    <div>
        <label for="inpNome">Nome:</label>
        <input type="text" name="nome" id="inpNome">
    </div>
    <div>
        <label for="inpIdade">Idade:</label>
        <input type="text" name="idade" id="inpIdade" style="width: 100px;">
    </div>
    <div>
        <label for="inpEstrangeiro">Estrangeiro:</label>
        <select name="estrangeiro" id="inpEstrangeiro" style="width: 100px;">
        <option value="N">Não</option>
        <option value="S">Sim</option>
        </select>
    </div>
    <div>
        <label for="inpCurso">Curso:</label>
        <select name="curso" id="inpCurso" style="width: 100px;">
        <option value=""></option>
        </select>
    </div>

    <button type="submit">Salvar</button>
    <button type="reset">Limpar</button>

    <input type="hidden" name="submetido" value="1">
</form>

<?php
include_once(__DIR__ . "/../include/footer.php");
?>