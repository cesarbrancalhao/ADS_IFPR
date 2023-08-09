<?php

function fatorial(int $fat){
    $num = 1;
    for($i = 1; $i <= $fat; $i++){
        $num *= $i;
    }
    return $num;
}

echo "<h1>Cálculo fatorial</h1>";

for ($i = 5; $i <= 12; $i++){
    echo $i . "! = ";
    echo fatorial($i) . "<br>";
}