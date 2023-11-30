<?php

namespace App\Controller;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

use App\Dao\ClubeDAO;
use App\Mapper\ClubeMapper;
use App\Service\ClubeService;
use App\Util\MensagemErro;

use \PDOException;

class ClubeController {

	private $clubeDAO;
	private $clubeMapper;
	private $clubeService;

	public function __construct() {
		$this->clubeDAO = new ClubeDAO();
		$this->clubeMapper = new ClubeMapper();
		$this->clubeService = new ClubeService();
	}

    public function listar(Request $request, Response $response, array $args): Response {
		
		$clubes = $this->clubeDAO->list();

		$json = json_encode($clubes, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

		$response->getBody()->write($json);
		return $response
				->withStatus(200)
				->withHeader("Content-type", "application/json");
    }

	public function buscarPorId(Request $request, Response $response, array $args): Response {

		$clube = $this->clubeDAO->findById($args["id"]);

		if ($clube) {
			$json = json_encode($clube, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

			$response->getBody()->write($json);

			return $response
				->withStatus(202)
				->withHeader("Content-type", "application/json");
		}

	return $response->withStatus(404);

    }

	public function inserir(Request $request, Response $response, array $args): Response {

		$jsonArrayAssoc = $request->getParsedBody();

		$clube = $this->clubeMapper->mapFromJsonToObject($jsonArrayAssoc);
		$clube = $this->clubeDAO->insert($clube);

		$json = json_encode($clube, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

		$response->getBody()->write($json);

		return $response->withStatus(201);
	}
}
