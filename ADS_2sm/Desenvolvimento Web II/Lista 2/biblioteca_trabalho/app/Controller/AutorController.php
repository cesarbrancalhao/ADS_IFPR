<?php

namespace App\Controller;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

use App\Dao\AutorDAO;
use App\Mapper\AutorMapper;
use App\Model\Autor;
use App\Service\AutorService;
use App\Util\MensagemErro;

use \PDOException;

class AutorController {

    private $autorDAO;
    private $autorMapper;
    private $autorService;

    public function __construct() {
        $this->autorDAO = new AutorDAO();
        $this->autorMapper = new AutorMapper();
        $this->autorService = new AutorService();
    }

    public function listarAutor(Request $request, Response $response, array $args): Response {
        $autores = $this->autorDAO->list();

        $json = json_encode($autores, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response
                ->withStatus(200)
                ->withHeader('Content-Type', 'application/json');
    }

    public function buscarAutorPorId(Request $request, Response $response, array $args): Response {
        $autor = $this->autorDAO->findById($args["id"]);

        if ($autor) {
            $json = json_encode($autor, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

            $response->getBody()->write($json);

            return $response
                ->withStatus(202)
                ->withHeader("Content-type", "application/json");
        }

        return $response->withStatus(404);
    }

    public function inserirAutor(Request $request, Response $response, array $args): Response {
        $jsonArrayAssoc = $request->getParsedBody();
        $autor = $this->autorMapper->mapFromJsonToObject($jsonArrayAssoc);

        $erros = $this->autorService->validarDados($autor);

        if (!empty($erros)) {
            $jsonErros = json_encode($erros, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
            $response->getBody()->write($jsonErros);
            return $response->withStatus(400);
        }

        $autor = $this->autorDAO->insert($autor);

        $json = json_encode($autor, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response->withStatus(201);
    }

    public function atualizarAutor(Request $request, Response $response, array $args): Response {
        $id = $args['id'];
        $jsonArrayAssoc = $request->getParsedBody();
        $autor = $this->autorMapper->mapFromJsonToObject($jsonArrayAssoc);

        $autorExists = $this->autorDAO->findById($id);
        if (!$autorExists) {
            return $response->withStatus(404);
        }

        $erros = $this->autorService->validarDados($autor);

        if (!empty($erros)) {
            $jsonErros = json_encode($erros, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
            
            $response->getBody()->write($jsonErros);
            return $response->withStatus(400);
        }

        $autor->setId($id);
        $autor = $this->autorDAO->update($autor);

        $json = json_encode($autor, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response->withStatus(200);
    }

    public function deletarAutor(Request $request, Response $response, array $args): Response {
        $id = $args['id'];

        $autorExists = $this->autorDAO->findById($id);
        if (!$autorExists) {
            return $response->withStatus(404);
        }

        $this->autorDAO->deleteById($id);

        return $response->withStatus(204);
    }
}