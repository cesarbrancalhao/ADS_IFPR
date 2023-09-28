<?php

require_once("util/Connection.php");

$conn = Connection::getConnection();

$sql = "SELECT * FROM alunos";
if ($conn == null){
    echo "Lista vazia!";
    exit;
}
$stm = $conn->prepare($sql);
$stm->execute();

$result = $stm->fetchAll();

$sql2 = "SELECT * FROM cursos";
if ($conn == null){
    die("Não há cursos registrados.<br>");
}
$stm2 = $conn->prepare($sql2);
$stm2->execute();

$cursos = $stm2->fetchAll();
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Alunos</title>
    <style>
        td {
            padding: 4px;
        }
    </style>
</head>
<body>
<table border="1"; style="text-align: center;">
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Idade</th>
        <th>Estrangeiro</th>
        <th colspan="2">Curso</th>
    </tr>
    <?php foreach ($result as $r): ?>
        <tr>
            <td><?= $r["id"] ?></td>
            <td><?= $r["nome"] ?></td>
            <td><?= $r["idade"] ?></td>
            <td><?= $r["estrangeiro"] ?></td>
            <?php
            foreach ($cursos as $c) switch ($r["id_curso"])
            {
                case 1:
                    $r["id_curso"] = "Técnico em Desenvolvimento de Sistemas"; break;
                case 2:
                    $r["id_curso"] = "Tecnólogo em Análise e Desenvolvimento de Sistemas"; break;
                case 3:
                    $r["id_curso"] = "Ciência da computação"; break;
                case 4:
                    $r["id_curso"] = "Sistemas de informação"; break;
                default:
                    break;
            }
            ?>
            <td><?= $r["id_curso"] ?></td>
            <td><a href="excluir_aluno.php?id=<?= $r["id"] ?>"  onclick="return confirm('Deseja realmente excluir?');">Excluir</a> </td>
        </tr>
    <?php endforeach; ?>
</table>
<?php
echo "<a href='index.php'>Voltar</a>";
?>
</body>
</html>