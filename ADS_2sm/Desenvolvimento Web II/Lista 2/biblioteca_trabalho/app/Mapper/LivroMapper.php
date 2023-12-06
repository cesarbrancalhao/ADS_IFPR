<?php

namespace App\Mapper;

use App\Model\Livro;
use App\Model\Editora;
use App\Model\Autor;
use App\Mapper\EditoraMapper;
use App\Mapper\AutorMapper;

class LivroMapper {

    public function mapFromDatabaseArrayToObjectArray($regArray) {
        $arrayObj = array();

        foreach($regArray as $reg) {
            $regObj = $this->mapFromDatabaseToObject($reg);
            array_push($arrayObj, $regObj);
        }

        return $arrayObj;
    }

    public function mapFromDatabaseToObject($regDatabase) {
        $obj = new Livro();
        
        if(isset($regDatabase['id']))
            $obj->setId($regDatabase['id']);
        
        if(isset($regDatabase['titulo']))
            $obj->setTitulo($regDatabase['titulo']);
        
        if(isset($regDatabase['ano']))
            $obj->setAno($regDatabase['ano']);
        
        if(isset($regDatabase['paginas']))
            $obj->setPaginas($regDatabase['paginas']);
        
        if(isset($regDatabase['status']))
            $obj->setStatus($regDatabase['status']);
        
        if(isset($regDatabase['genero']))
            $obj->setGenero($regDatabase['genero']);
    
        $editoraId = $regDatabase['id_editora'];
        $editoraMapper = new EditoraMapper();
        $editora = $editoraMapper->getEditoraMapById($editoraId);
        
        $autorId = $regDatabase['id_autor'];
        $autorMapper = new AutorMapper();
        $autor = $autorMapper->getAutorMapById($autorId);
        
        $obj->setEditora($editora);
        $obj->setAutor($autor);
        
        return $obj;
    }

    public function mapFromJsonToObject($regJson) {
        return $this->mapFromDatabaseToObject($regJson);
    }
}