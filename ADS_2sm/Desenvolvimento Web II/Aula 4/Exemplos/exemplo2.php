<?php

function limparInput($input){
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

function calcularMedia($n1, $n2, $n3){
    return (($n1 + $n2 + $n3)/3);
}

$mediaGet = '';
$mediaPost = '';
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (isset($_GET["n1"]) && isset($_GET["n2"]) && isset($_GET["n3"])) {

        $n1 = limparInput($_GET["n1"]);
        $n2 = limparInput($_GET["n2"]);
        $n3 = limparInput($_GET["n3"]);

        if (is_numeric($n1) && is_numeric($n2) && is_numeric($n3)) {
            $mediaGet = calcularMedia($n1, $n2, $n3);

        }
    }
} elseif ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["n1"]) && isset($_POST["n2"])) {

        $n1 = limparInput($_POST["n1"]);
        $n2 = limparInput($_POST["n2"]);
        $n3 = limparInput($_POST["n3"]);

        if (is_numeric($n1) && is_numeric($n2)) {
            $mediaPost = calcularMedia($n1, $n2, $n3);

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
            <form action="exemplo2.php" method="POST">
                <div class="formgrupo">
                    <label for="n1">Número 1:</label>
                    <input type="number" name="n1" id="n1" required>
                    <!--o campo required já impede de que os campos não sejam preenchidos,o que substitui o isset()-->
                </div>
                <div class="formgrupo">
                    <label for="n2">Número 2:</label>
                    <input type="number" name="n2" id="n2" required>
                </div>
                <div class="formgrupo">
                    <label for="n3">Número 3:</label>
                    <input type="number" name="n3" id="n3" required>
                </div>
                <button type="submit" class="btn">Calcular média POST</button>
            </form>
            <?php
            if ($mediaPost !== '') {
                echo "<div class='media'>Média: " . $mediaPost . "</div>";
            }
            ?>
        </div>
        <br>
        <div class="container">
            <form action="exemplo2.php" method="GET">
                <div class="formgrupo">
                    <label for="n1">Número 1:</label>
                    <input type="number" name="n1" id="n1" required>
                </div>
                <div class="formgrupo">
                    <label for="n2">Número 2:</label>
                    <input type="number" name="n2" id="n2" required>
                </div>
                <div class="formgrupo">
                    <label for="n3">Número 3:</label>
                    <input type="number" name="n3" id="n3" required>
                </div>
                <button type="submit" class="btn">Calcular média GET</button>
            </form>
            <?php
            if ($mediaGet !== '') {
                echo "<div class='media'>Média: " . $mediaGet . "</div>";
            }
            ?>
        </div>

    </body>
</html>