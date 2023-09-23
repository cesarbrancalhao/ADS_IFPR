<?php

require_once ("Connection.php"); // incluir o arquivo Connection

function limparInput($input){ // sanitização
    $input = trim($input);
    $input = stripslashes($input);
    return htmlspecialchars($input);
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {

    if (isset($_GET["descricao"]) && isset($_GET["un_medida"])) { // verificação de preenchimento e de tipo GET

        $descricao = limparInput($_GET["descricao"]);
        $un_medidada = limparInput($_GET["un_medida"]);
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
        h3{
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
        input[type="text"] {
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
        .buttons {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container" id="cont-up">
    <h3 id="menu">Menu</h3>

    <div class="buttons">
    <button id="mostrarFormInserir" type="button" class="btn" onclick="esconderBotao()">Inserir produto</button>
    <button id="listar" type="button" class="btn" onclick="esconderBotao(); produtosLista();">Listar Produtos</button>
    </div>

    <!-- formulário dos produtos -->

    <form action="produto_inserir.php" method="GET" id="inserir" style="display: none;">

        <div class="formgrupo">
            <label for="descricao">Descricao:</label>
            <input type="text" name="descricao" id="descricao" required>
        </div>
        <div class="formgrupo">
            <label for="un_medida">Unidade de medida:</label>
            <input type="text" name="un_medida" id="un_medida" required>
        </div>

        <button type="submit" class="btn">Inserir produto</button>

    </form>
</div>
<script>
    function esconderBotao() { // função pra esconder os botões após o clique em algum
        var botaoInserir = document.getElementById("mostrarFormInserir");
        botaoInserir.style.display = "none";
        var botaoListar = document.getElementById("listar");
        botaoListar.style.display = "none";
    }

    function changeTitle(title) { // alterar o título quando o botão inserir é clicado
        var menu = document.getElementById("menu");
        menu.innerHTML = title;
    }

    document.getElementById("mostrarFormInserir").addEventListener("click", function() {
        // função para mostrar o formulario quando o inserir é clicado
        var mostrar = document.getElementById("inserir");
        mostrar.style.display = (mostrar.style.display === "none") ? "block" : "none";
        changeTitle("Inserir produto");
    });

    function produtosLista(){ // encaminha o usuário para a lista quando o botão Listar é clicado
        window.location.href = "produto_listar.php";
    }
</script>
</body>
</html>
