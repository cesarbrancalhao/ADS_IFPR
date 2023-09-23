<?php

class cn {

    private static $conn = null;

    public static function getConnection() {
        if(self::$conn === null){
            $options = array(
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
            );
        }
        return self::$conn;
    }
}
