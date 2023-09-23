<?php

require_once("Connection.php");

$conn = Connection::getConnection(); // chama a conexão com o mysql

$sql = "SELECT * FROM produtos"; // checa os produtos do sql
if ($conn == null){ // verifica se a conexão existe
    echo "Lista vazia!";
    exit;
}
$stm = $conn->prepare($sql); // prepara o sql
$stm->execute(); // executa o comando (consulta ao sql)

$result = $stm->fetchAll(); //armazena todos os resultados da consulta no array $result
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Produtos</title>
</head>
<body>
<table border="1";>
    <tr>
        <th>ID</th>
        <th>Descrição</th>
        <th colspan="2">Unidade de medida</th>
    </tr>
    <?php foreach ($result as $r): ?>
        <tr>
            <td><?= $r["id"] ?></td>
            <td><?= $r["descricao"] ?></td>
            <td><?= $r["un_medida"] ?></td>
            <td><a href="produto_excluir.php?id=<?= $r["id"] ?>"  onclick="return confirm('Deseja realmente excluir?');">Excluir</a> </td>
        </tr>
    <?php endforeach; ?>
</table>
<?php
    echo "<a href='index.php'>Voltar</a>";
?>
</body>
</html>