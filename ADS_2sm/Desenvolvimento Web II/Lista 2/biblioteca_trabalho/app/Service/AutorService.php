<?php

namespace App\Service;

use App\Model\Autor;

class AutorService {

    public function validarDados(Autor $autor) {
        $erros = [];
    
        if (!$autor->getNome()) {
            array_push($erros, "Informe o nome do autor!");
        }
    
        if (!$autor->getPais()) {
            array_push($erros, "Informe o país do autor!");
        }

        return $erros;
    }
    
}