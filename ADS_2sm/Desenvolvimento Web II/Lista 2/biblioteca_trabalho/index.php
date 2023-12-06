<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

use App\Controller\LivroController;
use App\Controller\AutorController;
use App\Controller\EditoraController;

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
        $nome = $params['nome'];

    $response->getBody()->write("Seja bem vindo " . $nome);
    return $response;
});

$app->group('/livros', function ($app) {
    $app->get('', LivroController::class . ':listarLivro');
    $app->get('/{id}', LivroController::class . ':buscarLivroPorId');
    $app->post('', LivroController::class . ':inserirLivro');
    $app->put('/{id}', LivroController::class . ':editarLivro');
    $app->delete('/{id}', LivroController::class . ':deletarLivro');
});

$app->group('/autores', function ($app) {
    $app->get('', AutorController::class . ':listarAutor');
    $app->get('/{id}', AutorController::class . ':buscarAutorPorId');
    $app->post('', AutorController::class . ':inserirAutor');
    $app->put('/{id}', AutorController::class . ':atualizarAutor');
    $app->delete('/{id}', AutorController::class . ':deletarAutor');
});

$app->group('/editoras', function ($app) {
    $app->get('', EditoraController::class . ':listarEditora');
    $app->get('/{id}', EditoraController::class . ':buscarEditoraPorId');
    $app->post('', EditoraController::class . ':inserirEditora');
    $app->put('/{id}', EditoraController::class . ':atualizarEditora');
    $app->delete('/{id}', EditoraController::class . ':deletarEditora');
});

$app->run();

//include_once(__DIR__ . "/view/include/header.php");
?>