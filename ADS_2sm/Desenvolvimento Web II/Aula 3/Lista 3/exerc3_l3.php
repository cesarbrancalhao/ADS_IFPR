<style>
    table{
        border-collapse: collapse;
        border: 1px solid black;
    }
    th{
        text-align: left;
        padding-right: 0.5em;
    }
    td{
        padding-right: 1em;
        padd
    }
</style>

<?php

function desenhaLinha($nome, $habitantes, $area, $altitude, $estado){
    echo "<tr>";

    echo "<td>$nome</td>";
    echo "<td>$habitantes</td>";
    echo "<td>$area km²</td>";
    echo "<td>$altitude m</td>";
    echo "<td>$estado</td>";

    echo "</tr>";

}

$foz = array('nome' => 'Foz do iguaçu',
             'hab' => '250.000',
             'area' => 500,
             'alt' => 145,
             'est' => 'Paraná - PR');
$cascavel = array('nome' => 'Cascavel',
                  'hab' => '300.000',
                  'area' => 420,
                  'alt' => 320,
                  'est' => 'Paraná - PR');
$chapeco = array('nome' => 'Chapecó',
                 'hab' => '240.000',
                 'area' => 120,
                 'alt' => 620,
                 'est' => 'Santa Catarina - SC');
$blumenau = array('nome' => 'Blumenau',
                  'hab' => "330.000",
                  'area' => 200,
                  'alt' => 85,
                  'est' => 'Santa catarina - SC');
$curitiba = array('nome' => 'Curitiba',
                  'hab' => '1.500.000',
                  'area' => 300,
                  'alt' => 850,
                  'est' => 'Paraná - PR');

$cidadesArr = array($foz, $cascavel, $chapeco, $blumenau, $curitiba);

echo "<table border='1'>";

echo "<thead><tr>";

echo "<th> Nome </th>";
echo "<th> Habitantes </th>";
echo "<th> Area </th>";
echo "<th> Altitude </th>";
echo "<th> Estado </th>";

foreach ($cidadesArr as $city => $atr) {
    desenhaLinha($atr['nome'], $atr['hab'], $atr['area'], $atr['alt'], $atr['est']);
}
echo "</tr></thead>";

echo "</table>";