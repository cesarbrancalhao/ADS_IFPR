<?php

function calcularAreaR($base, $altura){
    return ($base*$altura);
}
function calcularPerimetroR($l1, $l2){
    return (($l1*2)+($l2*2));
}


echo "<h1>Cálculos com retângulos</h1>";
echo "<table padding = 0>";
for ($i = 0; $i < 4; $i++) {
    $l1 = mt_rand(3, 21);
    $l2 = mt_rand(3, 21);
    echo "<tr><td>";
    printf("<br>Retângulo <b>%d</b>:", $i+1);
    echo "</td></tr>";
    echo "<tr><td>";
    printf("Base = %.2f || Altura = %.2f:", $l1, $l2);
    echo "</td></tr>";
    echo "<tr><td>";
    printf("Área: %.2f", calcularAreaR($l1,$l2));
    echo "</td></tr>";
    echo "<tr><td>";
    printf("Perímetro: %.2f", calcularPerimetroR($l1,$l2));
    echo "</td></tr>";
}
echo "</table>";