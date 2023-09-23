<?php

require_once("C:\xampp\htdocs\webII\aula 9\cn.php"); // adiciona o cn.php

$conn = cn::getConnection(); // método que cria a conexão

$sql = "SELECT * FROM exemplo";

$stmt = $conn->prepare($sql); // prepara o comando
$stmt->execute(); // executa o comando sql

$result = $stmt->fetchAll(); // armazena o resultado (matriz)

foreach ($result as $reg) {
    echo $reg['col1'];
    echo ' - ';
    echo $reg['col2'];
    echo '<br>';
}