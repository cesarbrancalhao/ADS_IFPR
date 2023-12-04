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

<h3 class="text-dark mt-5"><?= ($livro && $livro->getId() > 0 ? 'Alterar' : 'Inserir') ?> livro</h3>

<div class="row">
    <div class="col-8 mt-2">
        <form method="POST" action="">

            <div class="form-group">
                <label for="inpTitulo">Título:</label>
                <input class="form-control" type="text" name="titulo" id="inpTitulo"
                    value="<?= ( $livro ? $livro->getTitulo() : '' ) ?>">
            </div>

            <div class="form-group">
                <label for="inpAno">Ano:</label>
                <input class="form-control" type="number" name="ano" id="inpAno"
                    style="width: 100px;"
                    value="<?= ( $livro ? $livro->getAno() : '' )?>">
            </div>

            <div class="form-group">
                <label for="inpPaginas">Páginas:</label>
                <input class="form-control" type="number" name="paginas" id="inpPaginas"
                    style="width: 100px;"
                    value="<?= ( $livro ? $livro->getPaginas() : '' )?>">
            </div>

            <div class="form-group">
                <label for="inpStatus">Status:</label>
                <select class="form-control" name="status" id="inpStatus">
                    <option value="">---Selecione---</option>
                    <option value="L"
                        <?= ($livro && $livro->getStatus() == 'L' ? 'selected' : '') ?>
                    >Lido</option>

                    <option value="N"
                        <?= ($livro && $livro->getStatus() == 'N' ? 'selected' : '') ?>
                    >Não lido</option>
                </select>
            </div>

            <div class="form-group">
                <label for="inpGenero">Gênero:</label>
                <select class="form-control" name="genero" id="inpGenero">
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

            <div class="form-group">
                <label for="inpEditora">Editora:</label>
                <select class="form-control" name="editora" id="inpEditora">
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

            <div class="form-group">
                <label for="inpAutor">Autor:</label>
                <select class="form-control" name="autor" id="inpAutor">
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

            <button class="btn btn-success" type="submit">Gravar</button>
            <button class="btn btn-danger" type="reset">Limpar</button>

            <input type="hidden" name="id_livro"
                value="<?= $livro ? $livro->getId() : '' ?>">
            <input type="hidden" name="submetido" value="1">
        </form>

        <?php if($msgErros): ?>
            <div style="color: red;">
                <?= $msgErros ?>
            </div>
        <?php endif; ?>
    </div>
</div>

<a href="listar.php" class="btn btn-secondary mt-2 mb-5">Voltar</a>
<?php
include_once(__DIR__ . "/../include/footer.php");
?>