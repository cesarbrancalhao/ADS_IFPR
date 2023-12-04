<?php

namespace App\Controller;

use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

use App\Dao\AutorDAO;
use App\Mapper\AutorMapper;
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

    public function listar(Request $request, Response $response, array $args): Response {
        
        $utores = $this->autorDAO->list();

        $json = json_encode($autores, JSON_UNESCAPED_SLASHES|JSON_UNESCAPED_UNICODE);

        $response->getBody()->write($json);
        
        return $response
                ->withStatus(200)
                ->withHeader('Content-Type', 'application/json');
    }
}