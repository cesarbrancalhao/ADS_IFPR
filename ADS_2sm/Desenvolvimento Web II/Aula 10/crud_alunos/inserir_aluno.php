<?php

include_once("util/Connection.php");

if(!isset ($_GET['nome']) || !isset($_GET['idade'])
    || !isset($_GET['estrangeiro']) || !isset($_GET['id_curso'])){
echo "Preencha todos os campos.";
exit;
}

$nome = $_GET['nome'];
$idade = $_GET['idade'];
$estrangeiro = $_GET['estrangeiro'];
$id_curso = $_GET['id_curso'];

$conn = Connection::getConnection();

$sql = "INSERT INTO alunos (nome, idade, estrangeiro, id_curso) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$result = $stmt->execute([$nome, $idade, $estrangeiro, $id_curso]);

if ($result) {
echo "Aluno cadastrado com sucesso! ID: " . $conn->lastInsertId(). ".<br>";
echo "<a href='index.php'>Voltar</a>";
} else {
echo "Erro ao cadastrar o aluno.";
}