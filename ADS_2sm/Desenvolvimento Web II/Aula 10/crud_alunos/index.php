<?php

require_once("util/Connection.php");

$conn = Connection::getConnection();

$sql = "SELECT * FROM cursos";
if ($conn == null){
    die("Não há cursos registrados.<br>");
}
$stm = $conn->prepare($sql);
$stm->execute();

$cursos = $stm->fetchAll();

function limparInput($input){
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {

    if (isset($_GET["nome"]) && isset($_GET["idade"])
        && isset($_GET["estrangeiro"]) && isset($_GET["id_curso"])) {

        $nome = limparInput($_GET["descricao"]);
        $idade = limparInput($_GET["un_medida"]);
        $estrangeiro = limparInput($_GET["estrangeiro"]);
        $id_curso = limparInput($_GET["id_curso"]);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aluno Form</title>
</head>
<body>
<div class="container">
    <h3>Adicionar aluno</h3>

    <form action="inserir_aluno.php" method="GET">
        <div class="formgroup">
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome" required>
        </div>
        <div class="formgroup">
            <label for="idade">Idade:</label>
            <input type="number" name="idade" id="idade" required>
        </div>
        <div class="formgroup">
            <label>É estrangeiro?</label>
            <input type="radio" name="estrangeiro" value="s" id="estrangeiro_sim" required>
            <label for="estrangeiro_sim">Sim</label>
            <input type="radio" name="estrangeiro" value="n" id="estrangeiro_nao" required>
            <label for="estrangeiro_nao">Não</label>
        </div>
        <div class="formgroup">
            <label for="id_curso">Curso:</label>
            <select name="id_curso" id="id_curso" required>
                <option value="" disabled selected>Selecione o curso</option>
                <?php foreach ($cursos as $curso) : ?>
                    <option value="<?= $curso['id'] ?>"><?= $curso['nome'] ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <br>
        <button type="submit">Cadastrar aluno</button>
    </form>
    <button id="listar" type="button" class="btn" style="margin-top: 5px"
            onclick="lista();">Lista de alunos</button>
</div>
<script>
    function lista(){
        window.location.href = "listar_aluno.php";
    }
</script>
</body>
</html>