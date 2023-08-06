<?php

echo "<h3>Média aritmética</h3>";

$vetor = array(2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
$mediaArit = 0;

echo "Números: ";

foreach ($vetor as $num => $value) {
    $mediaArit += $value;
    echo $value." ";
}

echo "<br>";

$mediaArit = $mediaArit/10;

echo "Resultado: ".$mediaArit;
