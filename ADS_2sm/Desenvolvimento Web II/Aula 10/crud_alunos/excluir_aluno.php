<?php

require_once(__DIR__ . "/./util/Connection.php");

$id = 0;
if(isset($_GET['id']))
    $id = $_GET['id'];

if(!$id) {
    echo "ID inválido!<br>";
    echo "<a href='listar_aluno.php'>Voltar</a>";
    exit;
}

$conn = Connection::getConnection();

$sql = "DELETE FROM alunos WHERE id = ?";
$stm = $conn->prepare($sql);
$stm->execute([$id]);

header("Location: listar_aluno.php");