<?php

function calcularY($y){
    return (7*$y + 3);
}

echo "<h1>Cálculos com função</h1>";

echo "Função 'f(x) = 5x + 2x + 3':<br>";

$arrCount = array(1,2,3,4,5);

foreach ($arrCount as $key){
    $r = mt_rand(4,21)/3;
    printf("<br>f(x) = %.1f =>  Y = %.2f<br>", $r, calcularY($r));
}
