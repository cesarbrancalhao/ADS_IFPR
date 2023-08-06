<?php

$profs = array("Daniel" => "Dev. Web II",
               "Ana Paula" => "Banco de Dados I",
               "Humberto" => "Orientação a Objetos");


echo "<h1>". $profs["Ana Paula"] . "</h1>";

foreach ($profs as $prof => $arr) {
    echo $prof.", ".$arr."<br>";
}
