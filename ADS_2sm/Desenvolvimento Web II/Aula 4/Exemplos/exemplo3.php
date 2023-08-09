<?php

function limparInput($input){
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Escolher cor de fundo</title>
    <style>
        .container {
            max-width: 400px;
            margin-top: 2.3% !important;
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
        .cordefundo {
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
<?php
if (isset($_GET["hex"])) {
    $hex = limparInput($_GET["hex"]);

    if (ctype_xdigit($hex)) {
        echo "<body style=\"background-color: #" . $hex . "; font-family: Arial, sans-serif;\">";
    }
} else {
    echo "<body style=\"background-color: #f4f4f4; font-family: Arial, sans-serif;\">";
}
?>
    <div class="container" id="cont-up">
        <h2>Média aritmética simples</h2>
        <form action="exemplo3.php" method="GET">
            <div class="cordefundo">
                <label for="cor">Código hex:</label>
                <input type="text" name="hex" id="hex" required>
            </div>
            <button type="submit" class="btn">Mudar fundo</button>
        </form>
    </div>
</body>
</html>