<?php

namespace App\Service;

use App\Model\Autor;
use App\Dao\AutorDAO;

class AutorService {

    private $autorDAO;

    public function validarDados(Autor $autor) {
        $erros = [];
    
        if (!$autor->getNome()) {
            array_push($erros, "Informe o nome do autor!");
        }
    
        if (!$autor->getPais()) {
            array_push($erros, "Informe o país do autor!");
        }

        $this->autorDAO = new AutorDAO();

        $checkAutorNome = $this->autorDAO->findByName($autor->getNome());
        
        if ($checkAutorNome && $checkAutorNome->getId() != $autor->getId())
            array_push($erros, "Já existe um autor com esse nome!");

        return $erros;
    }
    
}