<?php

const PI = 3.14;

function calcularArea($r){
    return (PI * pow($r, 2));
}

function calcularCircunf($r){
    return (2 * PI * $r);
}

echo "<h1>Cálculos com círculos</h1>";

$arrCount = array(1, 2, 3);

foreach ($arrCount as $key){
    $r = mt_rand(11,49)/5;
    printf("<br>Raio: %.2f<br>", $r);
    printf("Área: %.2f<br>", calcularArea($r));
    printf("Circunferência: %.2f<br>", calcularCircunf($r));
}
