<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

include_once("persistencia.php");

$carros = buscarDados();

function limparInput($input){
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

$salvo = false;
$erros = array();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (
        isset($_POST["modelo"]) &&
        isset($_POST["marca"]) &&
        isset($_POST["ano"]) &&
        isset($_POST["placa"]) &&
        isset($_POST["primeiro_dono"])
    ) {
        $modelo = limparInput($_POST["modelo"]);
        $marca = limparInput($_POST["marca"]);
        $ano = limparInput($_POST["ano"]);
        $placa = strtoupper(str_replace('-', '', limparInput($_POST["placa"])));
        $primeiroDono = limparInput($_POST["primeiro_dono"]);

        $placaTeste = false;
        foreach ($carros as $c) {
            if ($c['placa'] === $placa) {
                $placaTeste = true;
                break;
            }
        }

        if ($placaTeste) {
            $erros[] = "Já existe um carro com a mesma placa";
        }

        if (strlen($placa) !== 7) {
            $erros[] = "A placa deve conter 7 caracteres.";
        }

        if (empty($modelo) || empty($marca) || empty($ano) || empty($placa) || empty($primeiroDono)) {
            $errors[] = "Responda todos os campos.";
        }

        if (empty($erros)) {
            $salvo = true;

            $id = vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex(random_bytes(16)), 4));
            $carro = array(
                'id' => $id,
                'modelo' => $modelo,
                'marca' => $marca,
                'ano' => $ano,
                'placa' => $placa,
                'primeiroDono' => $primeiroDono
            );

            array_push($carros, $carro);

            salvarDados($carros);

            header('location: carros.php');
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Carro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 400px;
            margin-top: 1.5% !important;
            margin: auto;
            padding: 20px 20px 20px 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        .formgrupo {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .btn {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }
        .btn:hover {
            background-color: #45a049;
        }
        #primeiro_dono {
            margin-bottom: 10px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        td a {
            color: red;
            text-decoration: none;
        }
        .erros {
            background-color: #ff8080;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .erros ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<div class="container">
    <h2>Registro de Carro</h2>
    <form action="carros.php" method="POST">
        <div class="formgrupo">
            <label for="modelo">Modelo:</label>
            <input type="text" name="modelo" id="modelo">
        </div>
        <div class="formgrupo">
            <label for="marca">Marca:</label>
            <input type="text" name="marca" id="marca">
        </div>
        <div class="formgrupo">
            <label for="ano">Ano:</label>
            <input type="number" name="ano" id="ano">
        </div>
        <div class="formgrupo">
            <label for="placa">Placa:</label>
            <input type="text" name="placa" id="placa">
        </div>
        <div class="formgrupo">
            <label for="primeiro_dono">Primeiro Dono:</label>
            <select name="primeiro_dono" id="primeiro_dono">
                <option value="Sim">Sim</option>
                <option value="Nao">Não</option>
            </select>
        </div>
        <button type="submit" class="btn">Registrar Carro</button>
    </form>
    <?php
    if ($salvo === true) {
        echo "<div class='salvo'><p>Carro salvo!</p></div>";
    } else {
        if(!empty($erros)){
        echo '<div class="erros"><ul>';
        foreach ($erros as $e) {
            echo "<li>$e</li>";
        }
        echo '</ul></div>';}
    }
    ?>
</div>
<div class="container">
<h3>Lista de carros:</h3>
<table>
    <tr>
        <th>Modelo</th>
        <th>Marca</th>
        <th>Ano</th>
        <th>Placa</th>
        <th>Único dono</th>
        <th>Ação</th>
    </tr>

    <?php foreach($carros as $c): ?>
        <tr>
            <td><?=$c['modelo']?></td>
            <td><?=$c['marca']?></td>
            <td><?=$c['ano']?></td>
            <td><?=$c['placa']?></td>
            <td><?=$c['primeiroDono']?></td>
            <td><a href="carros_del.php?id=<?= $c['id'] ?>"
                   onclick="return confirm('Deseja confirmar a exclusão?');">
                    Excluir</a></td>
        </tr>
    <?php endforeach; ?>

</table>
</div>
</body>
</html>