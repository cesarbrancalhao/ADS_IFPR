<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Cliente Clubes</title>
</head>

<body>
    <div class="container">
        <nav class="navbar navbar-expand-md navbar-light bg-info mb-3">
            <a class="navbar-brand" href="#"><img src="img/logo-IFPR.png" style="height: 50px; width: auto;"></a>

            <span class="mx-auto text-white" style="font-size: 20px;">Cliente Futebol</span>
        </nav>

        <div class="row">
            <div class="col-2">
                <button id="btnBuscar" type="button" 
                    class="btn btn-primary">
                    Buscar clubes</button>
            </div>

            <div class="col-2">
                <button id="btnBuscarAwait" type="button" 
                    class="btn btn-info">
                    Buscar clubes</button>
            </div>
        </div>    
                
        <div class="row m-3">
            <table id="tblClubes" class="col table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Cidade</th>
                        <th>Imagem</th>
                        <th>Excluir</th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

        <div class="row mt-2">
            <div class="col">
                <input type="text" id="inpNome" 
                    class="form-control"
                    placeholder="Informe o nome">
            </div>

            <div class="col">
                <input type="text" id="inpCidade" 
                    class="form-control"
                    placeholder="Informe a cidade">
            </div>

            <div class="col">
                <input type="text" id="inpImagem" 
                    class="form-control"
                    placeholder="Informe a imagem">
            </div>

            <div class="col">
                <button id="btnInserir" type="button" 
                    class="btn btn-success">
                    Inserir clube</button>
            </div>
        </div>
    </div>

    <script src="js/cliente.js"></script>

    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>

</html>