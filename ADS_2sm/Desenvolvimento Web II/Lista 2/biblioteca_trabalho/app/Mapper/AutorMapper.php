<?php

namespace App\Mapper;

use App\Model\Autor;
use App\Util\Connection;

class AutorMapper {

    public function mapFromDatabaseArrayToObjectArray($regArray) {
        $arrayObj = array();

        foreach($regArray as $reg) {
            $regObj = $this->mapFromDatabaseToObject($reg);
            array_push($arrayObj, $regObj);
        }

        return $arrayObj;
    }

    public function mapFromDatabaseToObject($regDatabase) {
        $obj = new Autor();
        
        if(isset($regDatabase['id']))
            $obj->setId($regDatabase['id']);
        
        if(isset($regDatabase['nome']))
            $obj->setNome($regDatabase['nome']);
        
        if(isset($regDatabase['pais']))
            $obj->setPais($regDatabase['pais']);
        
        return $obj;
    }

    public function getAutorMapById($id) {
        $sql = 'SELECT * FROM autores WHERE id = :id';
        
        $conn = Connection::getConnection();
        $stmt = $conn->prepare($sql);
        $stmt->bindValue("id", $id);
        $stmt->execute();
        $result = $stmt->fetch();

        return $this->mapFromDatabaseToObject($result);
    }

    public function mapFromJsonToObject($regJson) {
        return $this->mapFromDatabaseToObject($regJson);
    }
}