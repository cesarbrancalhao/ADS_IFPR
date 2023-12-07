<?php

namespace App\Controller;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

use App\Dao\EditoraDAO;
use App\Mapper\EditoraMapper;
use App\Model\Editora;
use App\Service\EditoraService;
use App\Util\MensagemErro;

use \PDOException;

class EditoraController {

    private $editoraDAO;
    private $editoraMapper;
    private $editoraService;

    public function __construct() {
        $this->editoraDAO = new EditoraDAO();
        $this->editoraMapper = new EditoraMapper();
        $this->editoraService = new EditoraService();
    }

    public function listarEditora(Request $request, Response $response, array $args): Response {
        $editoras = $this->editoraDAO->list();

        $json = json_encode($editoras, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response
                ->withStatus(200)
                ->withHeader('Content-Type', 'application/json');
    }

    public function buscarEditoraPorId(Request $request, Response $response, array $args): Response {
        $editora = $this->editoraDAO->findById($args["id"]);

        if ($editora) {
            $json = json_encode($editora, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

            $response->getBody()->write($json);

            return $response
                ->withStatus(202)
                ->withHeader("Content-type", "application/json");
        }

        return $response->withStatus(404);
    }

    public function inserirEditora(Request $request, Response $response, array $args): Response {
        $jsonArrayAssoc = $request->getParsedBody();
        $editora = $this->editoraMapper->mapFromJsonToObject($jsonArrayAssoc);

        $erros = $this->editoraService->validarDados($editora);

        if (!empty($erros)) {
            $jsonErros = json_encode($erros, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

            $response->getBody()->write($jsonErros);
            return $response->withStatus(400);
        }

        $editora = $this->editoraDAO->insert($editora);

        $json = json_encode($editora, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response->withStatus(201);
    }

    public function atualizarEditora(Request $request, Response $response, array $args): Response {
        $id = $args['id'];
        $jsonArrayAssoc = $request->getParsedBody();
        $editora = $this->editoraMapper->mapFromJsonToObject($jsonArrayAssoc);

        $editoraExists = $this->editoraDAO->findById($id);
        if (!$editoraExists) {
            return $response->withStatus(404);
        }

        $erros = $this->editoraService->validarDados($editora);

        if (!empty($erros)) {
            $jsonErros = json_encode($erros, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);
            $response->getBody()->write($jsonErros);
            return $response->withStatus(400);
        }

        $editora->setId($id);
        $editora = $this->editoraDAO->update($editora);

        $json = json_encode($editora, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response->withStatus(200);
    }

    public function deletarEditora(Request $request, Response $response, array $args): Response {
        $id = $args['id'];

        $editoraExists = $this->editoraDAO->findById($id);
        if (!$editoraExists) {
            return $response->withStatus(404);
        }

        $this->editoraDAO->deleteById($id);

        return $response->withStatus(204);
    }
}
