<?php

class Veiculo
{
    private $modelo;

    public function __construct() {
        echo "CLASSE: " . __CLASS__ . "<br>";
    }

    public function setModelo($modelo) {
        $this->modelo = $modelo;
        echo "MÉTODO: " . __METHOD__ . "<br>";
    }

    public function getModelo() {
        return $this->modelo;
    }
}

$veiculo = new Veiculo();

$veiculo->setModelo("Fusca");
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Veiculo</title>
</head>
<body>
<?php
echo "Modelo: " . $veiculo->getModelo() . "<br>"
?>
</body>
</html>