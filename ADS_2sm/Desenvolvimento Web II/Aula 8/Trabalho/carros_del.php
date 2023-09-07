<?php

include_once("persistencia.php");

$id = "";
if(isset($_GET['id']))
    $id = $_GET['id'];

if(! $id) {
    echo "ID do carro não informado!";
    echo "<br>";
    echo "<a href='carros.php'>Voltar</a>";
    exit;
}

$carros = buscarDados();

$index = -1;

for($i=0; $i<count($carros); $i++) {
    if($id == $carros[$i]['id']) {
        $index = $i;
        break;
    }
}

if($index < 0) {
    echo "ID do carro não encontrado!";
    echo "<br>";
    echo "<a href='carros.php'>Voltar</a>";
    exit;
}

array_splice($carros, $index, 1);

salvarDados($carros);

header("location: carros.php");