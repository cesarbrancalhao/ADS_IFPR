<?php

function limparInput($input){ // sanitização do input
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

function calcularProg($n1, $n2, $n3){ //formatação e cálculo da progressão
    for ($i = 0; $i < $n3; $i++) {
        if ($i === 0){
            echo "<div class='media'>Progressão: (".$n1;
        } elseif ($i === $n3-1){
            echo ", ".$n1.")</div>";
        } else {
            echo ", ".$n1;
        }
        $n1 += $n2;
    }
}
$printValues = false;
if ($_SERVER["REQUEST_METHOD"] == "GET") { //verificação de método
                                          
    if (isset($_GET["n1"]) && isset($_GET["n2"]) && isset($_GET["n3"])) { //verificação de preenchimento

        $n1 = limparInput($_GET["n1"]);
        $n2 = limparInput($_GET["n2"]);
        $n3 = limparInput($_GET["n3"]);

        if (is_numeric($n1) && is_numeric($n2) && is_numeric($n3)) { //verificação de input
            $printValues = true;
        }
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Media Aritmética</title>
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
        h2{
            margin-top: 0px;
        }
        #cont-up{
            margin-top: 0px;
            padding-top: 15px;
        }
        .formgrupo {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="number"] {
            width: 94%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
        .media {
            color: #4CAF50;
            font-weight: bold;
            margin-top: 10px;
            padding: 10px;
            border: 1px solid #4CAF50;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
<div class="container" id="cont-up">
    <h2>Média aritmética simples</h2>
    <form action="exercicio1_ava.php" method="GET"> <!-- formulario opcional para teste -->
        <div class="formgrupo">
            <label for="n1">Início:</label>
            <input type="number" name="n1" id="n1" required>
        </div>
        <div class="formgrupo">
            <label for="n2">Razão:</label>
            <input type="number" name="n2" id="n2" required>
        </div>
        <div class="formgrupo">
            <label for="n3">Quantidade:</label>
            <input type="number" name="n3" id="n3" required>
        </div>
        <button type="submit" class="btn">Calcular média aritmética</button>
    </form>
    <?php
    if ($printValues === true) {
        calcularProg($n1,$n2,$n3); //função da progressão
    }
    ?>
</div>

</body>
</html>
