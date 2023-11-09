<?php
include_once(__DIR__ . "/view/include/header.php");

?>

<div class="card">
    <img class="card-image-top mx-auto" src="<?= BASE_URL . "/img/card_livros.png" ?> " style="max-width: 200px; height:auto;" />
    <div class="card-body text-center">
        <h5 class="card-title">Livros</h5>
        <a class="btn btn-primary" href="<?= BASE_URL . "/view/livros/listar.php"?>">Listagem de livros</a>
    </div>
</div>

<?php include_once(__DIR__ . "/view/include/footer.php")?>