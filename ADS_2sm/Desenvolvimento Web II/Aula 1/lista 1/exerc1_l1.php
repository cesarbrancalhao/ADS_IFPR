<?php

echo "<h3> while </h3>";

$num = 1;
while ($num <= 10) {
    echo $num . "<br>";
    $num++;
}

echo "<br>";
echo "<h3> do-while </h3>";

$num = 1;
do {
    echo $num . "<br>";
    $num++;
} while ($num <= 10);

echo "<br>";
echo "<h3> for </h3>";

$num = 1;
for ($num=1; $num < 11; $num++) { 
    echo $num . "<br>";
}

?>
