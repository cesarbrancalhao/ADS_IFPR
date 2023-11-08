<?php include_once(__DIR__ . "/view/include/header.php")?>
  <div class="card">
    <img class="card-image-top mx-auto" src="<?= BASE_URL . "/img/card_alunos.png" ?> " style="max-width: 200px; height:auto;" />
    <div class="card-body text-center">
      <h5 class="card-title">Alunos</h5>
      <a class="card-link" href="<?= BASE_URL ."/view/alunos/listar.php"?>">Listagem de alunos</a>
    </div>
  </div>
<?php include_once(__DIR__ . "/view/include/footer.php")?>