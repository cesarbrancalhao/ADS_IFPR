<?php

function limparInput($input){ //sanitização do input
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

function calcularSoma($n1, $n2){ //calcular de forma segura
    return $n1 + $n2;
}
$somae = '';
$somap = '';
if($_SERVER["REQUEST_METHOD"] == "GET") { //lidar com get separadamente
    if (isset($_GET["n1"]) && isset($_GET["n2"])) { //verifica se existem os inputs ou não
        $n1 = limparInput($_GET["n1"]);
        $n2 = limparInput($_GET["n2"]);

        if (is_numeric($n1) && is_numeric($n2)) { //checar se o input é número ou não
            $somae = calcularSoma($n1, $n2);
        }
    }
} elseif ($_SERVER["REQUEST_METHOD"] == "POST") { //mesma coisa pro post

    if(isset($_POST["n1"]) && isset($_POST["n2"])) {
        $n1 = limparInput($_POST["n1"]);
        $n2 = limparInput($_POST["n2"]);

        if (is_numeric($n1) && is_numeric($n2)){
            $somap = calcularSoma($n1, $n2);
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Somadora</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
            }
            .container {
                max-width: 400px;
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
            .soma {
                color: #4CAF50;
                font-weight: bold;
                margin-top: 10px;
                padding: 10px;
                border: 1px solid #4CAF50;
                border-radius: 5px;
                background-color: #f9f9f9;
            }

            .erro {
                color: #ff0000;
                font-weight: bold;
                margin-top: 10px;
                padding: 10px;
                border: 1px solid #ff0000;
                border-radius: 5px;
                background-color: #ffe0e0;
            }
        </style>
    </head>
    <body>
        <div class="container" id="cont-up">
            <h2>Somadora</h2>
            <form action="exemplo1.php" method="POST">
                <div class="formgrupo">
                    <label for="n1">Número 1:</label>
                    <input type="number" name="n1" id="n1" required>
                    <!--o campo required já impede de que os campos não sejam preenchidos,o que substitui o isset()-->
                </div>
                <div class="formgrupo">
                    <label for="n2">Número 2:</label>
                    <input type="number" name="n2" id="n2" required>
                </div>
                <button type="submit" class="btn">Calcular POST</button>
            </form>
            <?php
            if ($somap !== '') {
                echo "<div class='soma'>Soma: " . $somap . "</div>";
            }
            ?>
        </div>
        <br>
        <div class="container">
            <form action="exemplo1.php" method="GET">
                <div class="formgrupo">
                    <label for="n1">Número 1:</label>
                    <input type="number" name="n1" id="n1" required>
                </div>
                <div class="formgrupo">
                    <label for="n2">Número 2:</label>
                    <input type="number" name="n2" id="n2" required>
                </div>
                <button type="submit" class="btn">Calcular GET</button>
            </form>
            <?php
            if ($somae !== '') {
                echo "<div class='soma'>Soma: " . $somae . "</div>";
            }
            ?>
        </div>

    </body>
</html>

<!-- ps: se vc for da sala, nao faça isso-->
