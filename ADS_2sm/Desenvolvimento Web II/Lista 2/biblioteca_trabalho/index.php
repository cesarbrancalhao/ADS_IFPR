<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

use App\Controller\LivroController;

require_once(__DIR__ . '/vendor/autoload.php');

$app = AppFactory::create();
$app->setBasePath("/biblioteca_trabalho");

$app->addBodyParsingMiddleware();
$app->addErrorMiddleware(true, true, true);

$app->get('/', function (Request $request, Response $response, $args) {
    $response->getBody()->write("Olá mundo!");
    return $response;
});

$app->get('/ola', function (Request $request, Response $response, $args) {
    $params = $request->getQueryParams();

    $nome = "Texon";

    if(isset($params['nome']))
        $nome = $params['$nome'];


    $response->getBody()->write("Seja bem vindo " . $nome);

    return $response;
});

    $app->get("/livros", LivroController::class . ":listar");
    $app->get("/livros/{id}", LivroController::class . ":buscarPorId");
    $app->post("/livros", LivroController::class . ":inserir");

$app->run();


include_once(__DIR__ . "/view/include/header.php");
?>

<!-- <div class="card">
    <img class="card-image-top mx-auto" src="</? BASE_URL . "/img/card_livros.png" ?> " style="max-width: 200px; height:auto;" />
    <div class="card-body text-center">
        <h5 class="card-title">Livros</h5>
        <a class="btn btn-primary" href="</?= BASE_URL . "/view/livros/listar.php"?>">Listagem de livros</a>
    </div>
</div> -->

<?php include_once(__DIR__ . "/view/include/footer.php")?>