<?php
echo "<h1></h1>";
$arrPalavras = array("Bomb" => "Vai explodir",
                     "Cachorro" => "Latindo",
                     "Ziggs" => "Caiu meu fps",
                     "Gato" => "Rrrrrrrr",
                     "Árvore" => "Uma foia amarela");

$arrTransf = array();

foreach ($arrPalavras as $key => $value) {
    $arrTransf[$key] = $value;
}
foreach ($arrTransf as $key => $value) {
    echo $key. " = '" . $value . "'.<br>";
}