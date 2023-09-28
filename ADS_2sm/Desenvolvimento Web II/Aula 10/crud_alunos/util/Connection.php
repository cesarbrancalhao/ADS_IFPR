<?php
// Arquivo da conexão

require_once(__DIR__ . "/config.php");

class Connection
{

    private static $conn = null;

    public static function getConnection()
    {
        self::$conn = null;
        if(self::$conn === null)
        {
            try {
                $options = array(
                    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                );

                $strConn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME;
                self::$conn = new PDO($strConn, DB_USER, DB_PASSWORD, $options);
                return self::$conn;

            } catch (PDOException $e) {
                die("Erro ao conectar. <br>" . $e->getMessage());
            }
        }
        return self::$conn;
    }
}