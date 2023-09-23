<?php

class Connection
{

    private static $conn = null;

    public static function getConnection() // obter a conexão com o mysql
    {
        self::$conn = null;
        if (self::$conn === null) {
            $options = array(
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
            );

            $host       = 'localhost';
            $database   = 'mysql';
            $port       = 3306; // port padrão do mysql
            $user       = 'root';
            $password   = '';

            try { // instanciamento da conexão PDO

                self::$conn = new PDO("mysql:host=$host;dbname=$database;port=$port",
                    $user, $password, $options);
                return self::$conn; // retorna a conexão PDO

            } catch (PDOException $e) { //retorna null e exibe uma mensagem em caso de falha de conexão
                echo "Erro: " . $e->getMessage();
                return null;
            }
        }
        return self::$conn; // retorna a conexão PDO
    }
}
