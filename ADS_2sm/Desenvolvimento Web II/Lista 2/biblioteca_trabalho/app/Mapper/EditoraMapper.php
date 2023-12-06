<?php

namespace App\Mapper;

use App\Model\Editora;
use App\Util\Connection;

class EditoraMapper {

    public function mapFromDatabaseArrayToObjectArray($regArray) {
        $arrayObj = array();

        foreach($regArray as $reg) {
            $regObj = $this->mapFromDatabaseToObject($reg);
            array_push($arrayObj, $regObj);
        }

        return $arrayObj;
    }

    public function mapFromDatabaseToObject($regDatabase) {
        $obj = new Editora();
        
        if(isset($regDatabase['id']))
            $obj->setId($regDatabase['id']);
        
        if(isset($regDatabase['nome']))
            $obj->setNome($regDatabase['nome']);
        
        if(isset($regDatabase['pais']))
            $obj->setPais($regDatabase['pais']);
        
        return $obj;
    }

    public function getEditoraMapById($id) {
        $sql = 'SELECT * FROM editoras WHERE id = :id';
        
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