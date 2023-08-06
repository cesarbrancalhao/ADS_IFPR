<style>
table{
    border-collapse: collapse;
    border: 1px solid black;
}
td{
    padding: 0px;
    border-bottom: none;
    border-top: none;
}
tr{
    border-bottom: none;
    border-top: none;
}
.model{
    border-top: 1px solid black;
}
</style>

<?php

$carro1 = array("Modelo" => "Polo",
                "Marca" => "Volkswagen",
                "Imagem" => "https://img.olx.com.br/thumbs256x256/99/992383763748891.jpg");

$carro2 = array("Modelo" => "Uno",
                "Marca" => "Fiat",
                "Imagem" => "https://img.olx.com.br/images/40/400351424342850.jpg");

$carro3 = array("Modelo" => "Corolla",
                "Marca" => "Toyota",
                "Imagem" => "https://img.olx.com.br/thumbs256x256/04/041395406693326.jpg",);

$carro4 = array("Modelo" => "Golf",
                "Marca" => "Volkswagen",
                "Imagem" => "https://img.olx.com.br/thumbs256x256/04/044314645544279.jpg");

$carro5 = array("Modelo" => "Corvette 2004",
                "Marca" => "Chevrolet",
                "Imagem" => "https://file.kelleybluebookimages.com/kbb/base/house/2004/2004-Chevrolet-Corvette-FrontSide_CHCVTCNV042_505x375.jpg");

$carros = array($carro1, $carro2, $carro3, $carro4, $carro5);

foreach ($carros as $car => $atributes){
    echo "<table border = '1' border-collapse='collapse' align='center'>";
    echo "<tr>";
    echo "<tr><td class='model'>" . $atributes['Modelo'] . "</td></tr>";
    echo "<tr><td>" . $atributes['Marca'] . "</td></tr>";
    echo "<tr><td>" . "<img src='" . $atributes['Imagem'] . "' width='320'/></td></tr>";
    echo "</tr>";
    echo "</table><br>";
}
