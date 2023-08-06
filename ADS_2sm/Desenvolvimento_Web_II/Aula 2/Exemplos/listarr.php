<?php

$profs = array("Daniel", "Ana Paula", "Humberto", "Julio", "Juliana");
$times = array("Gremio", "Flamengo", "Palmeiras", "Cruzeiro", "Botafogo");
$frutas = array("Maça", "Uva", "Laranja", "Limão", "Pera");
$animais = array("Cachorro", "Gato", "Cavalo", "Aranha", "Urso");

echo "<table border=1>";

echo "<tr>";
foreach ($profs as $prof) {
    echo "<td>". $prof . "</td>";
}
echo "</tr> <tr>";
foreach ($times as $t) {
    echo "<td>". $t . "</td>";
}
echo "</tr>";

echo "</table>";