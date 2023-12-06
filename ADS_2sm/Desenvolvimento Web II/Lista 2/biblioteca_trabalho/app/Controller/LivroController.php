<?php

namespace App\Controller;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

use App\Dao\LivroDAO;
use App\Mapper\LivroMapper;
use App\Model\Livro;
use App\Service\LivroService;
use App\Util\MensagemErro;

use \PDOException;

class LivroController {

    private $livroDAO;
    private $livroMapper;
    private $livroService;

    public function __construct() {
        $this->livroDAO = new LivroDAO();
        $this->livroMapper = new LivroMapper();
        $this->livroService = new LivroService();
    }

    public function listarLivro(Request $request, Response $response, array $args): Response {
        
        $livros = $this->livroDAO->list();

        $json = json_encode($livros, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);
        
        return $response
                ->withStatus(200)
                ->withHeader('Content-Type', 'application/json');
    }

    public function buscarLivroPorId(Request $request, Response $response, array $args): Response {

		$livro = $this->livroDAO->findById($args["id"]);

		if ($livro) {
			$json = json_encode($livro, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

			$response->getBody()->write($json);

			return $response
				->withStatus(202)
				->withHeader("Content-type", "application/json");
		}

		return $response->withStatus(404);
    }

	public function inserirLivro(Request $request, Response $response, array $args): Response {

		$jsonArrayAssoc = $request->getParsedBody();

		$livro = $this->livroMapper->mapFromJsonToObject($jsonArrayAssoc);
		$livro = $this->livroDAO->insert($livro);

		$json = json_encode($livro, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

		$response->getBody()->write($json);

		return $response->withStatus(201);
	}

    public function editarLivro(Request $request, Response $response, array $args): Response {

        $id = $args['id'];
        $jsonData = $request->getParsedBody();

        $livro = $this->livroDAO->findById($id);

        if (!$livro) {
            return $response->withStatus(404);
        }

        $livro->setTitulo($jsonData['titulo'] ?? $livro->getTitulo());
        $livro->setAno($jsonData['ano'] ?? $livro->getAno());
        $livro->setPaginas($jsonData['paginas'] ?? $livro->getPaginas());
        $livro->setStatus($jsonData['status'] ?? $livro->getStatus());
        $livro->setGenero($jsonData['genero'] ?? $livro->getGenero());

        $livro = $this->livroDAO->update($livro);

        $json = json_encode($livro, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);

        return $response->withStatus(200);
    }

    public function deletarLivro(Request $request, Response $response, array $args): Response {
        $id = $args['id'];

        $livro = $this->livroDAO->findById($id);

        if (!$livro) {
            return $response->withStatus(404);
        }

        $this->livroDAO->deleteById($id);

        return $response->withStatus(204);
    }
}