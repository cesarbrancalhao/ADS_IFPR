<?php

include_once(__DIR__ . "/../../controller/EditoraController.php");
include_once(__DIR__ . "/../../controller/AutorController.php");

$editoraCont = new EditoraController();
$editoras = $editoraCont->listar();

$autorCont = new AutorController();
$autores = $autorCont->listar();
?>

<?php
include_once(__DIR__ . "/../include/header.php");
?>

<h3><?= ($livro && $livro->getId() > 0 ? 'Alterar' : 'Inserir') ?>
    Livro</h3>

<form method="POST" action="">

    <div>
        <label for="inpTitulo">Título:</label>
        <input type="text" name="titulo" id="inpTitulo"
               value="<?= ( $livro ? $livro->getTitulo() : '' ) ?>">
    </div>

    <div>
        <label for="inpAno">Ano:</label>
        <input type="number" name="ano" id="inpAno"
               style="width: 100px;"
               value="<?= ( $livro ? $livro->getAno() : '' )?>">
    </div>

    <div>
        <label for="inpPaginas">Páginas:</label>
        <input type="number" name="paginas" id="inpPaginas"
               style="width: 100px;"
               value="<?= ( $livro ? $livro->getPaginas() : '' )?>">
    </div>

    <div>
        <label for="inpStatus">Status:</label>
        <select name="status" id="inpStatus">
            <option value="">---Selecione---</option>
            <option value="L"
                <?= ($livro && $livro->getStatus() == 'L' ? 'selected' : '') ?>
            >Lido</option>

            <option value="N"
                <?= ($livro && $livro->getStatus() == 'N' ? 'selected' : '') ?>
            >Não lido</option>
        </select>
    </div>

    <div>
        <label for="inpGenero">Gênero:</label>
        <select name="genero" id="inpGenero">
            <option value="">---Selecione---</option>

            <option value="A"
                <?= ($livro && $livro->getGenero() == 'A' ? 'selected' : '') ?>
            >Ação</option>

            <option value="R"
                <?= ($livro && $livro->getGenero() == 'R' ? 'selected' : '') ?>
            >Romance</option>

            <option value="D"
                <?= ($livro && $livro->getGenero() == 'D' ? 'selected' : '') ?>
            >Drama</option>

            <option value="S"
                <?= ($livro && $livro->getGenero() == 'S' ? 'selected' : '') ?>
            >Suspense</option>

            <option value="F"
                <?= ($livro && $livro->getGenero() == 'F' ? 'selected' : '') ?>
            >Ficção</option>

        </select>
    </div>

    <div>
        <label for="inpEditora">Editora:</label>
        <select name="editora" id="inpEditora">
            <option value="">---Selecione---</option>
            <?php foreach($editoras as $e): ?>
                <option value="<?= $e->getId() ?>"
                    <?php if($livro && $livro->getEditora() &&
                        $livro->getEditora()->getId() == $e->getId())
                        echo 'selected';
                    ?>
                >
                    <?= $e->getNome() ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <div>
        <label for="inpAutor">Autor:</label>
        <select name="autor" id="inpAutor">
            <option value="">---Selecione---</option>
            <?php foreach($autores as $u): ?>
                <option value="<?= $u->getId() ?>"
                    <?php if($livro && $livro->getAutor() &&
                        $livro->getAutor()->getId() == $u->getId())
                        echo 'selected';
                    ?>
                >
                    <?= $u->getNome() ?></option>
            <?php endforeach; ?>
        </select>
    </div>

    <button type="submit">Gravar</button>
    <button type="reset">Limpar</button>

    <input type="hidden" name="id_livro"
        value="<?= $livro ? $livro->getId() : '' ?>">
    <input type="hidden" name="submetido" value="1">
</form>

<?php if($msgErros): ?>
    <div style="color: red;">
        <?= $msgErros ?>
    </div>
<?php endif; ?>

<a href="listar.php">Voltar</a>

<?php
include_once(__DIR__ . "/../include/footer.php");
?>