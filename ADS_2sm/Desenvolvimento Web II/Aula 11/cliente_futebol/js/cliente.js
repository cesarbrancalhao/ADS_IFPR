const url = 'http://localhost:8082/api_futebol/clubes';

/* BUSCAR XMLHttpRequest */
const btnBuscar = document.querySelector("#btnBuscar");
btnBuscar.addEventListener("click", buscarClubes);
function buscarClubes() {
    var xhttp = new XMLHttpRequest();
    xhttp.open('GET', url);

    //Função callback -> executada após chegar a resposta do servidor
    xhttp.onload = function() {
        var jsonTexto = xhttp.responseText;

        var arrayClubes = JSON.parse(jsonTexto);
        listarClubesTabela(arrayClubes);
    }

    xhttp.send();
}

/* BUSCAR async await */
const btnBuscarAwait = document.querySelector("#btnBuscarAwait");
btnBuscarAwait.addEventListener("click", buscarClubesAwait);
async function buscarClubesAwait() {
  const opcoes = {
    method: 'GET'
  };

  var resp = await fetch(url, opcoes);
  var json = await resp.text;

  console.log(json);
}

/* LISTAR TABELA */
const tblClubes = document.querySelector("#tblClubes");
function listarClubesTabela(clubes) {
    //Limpa a tabela
    var arrayTBody = tblClubes.getElementsByTagName("tbody");
    while (arrayTBody[0].children.length > 0)
        arrayTBody[0].children[0].remove();

    //Percorre o array de clubes, criando as linhas/colunas da tabela
    clubes.forEach(clube => {
        //Linha
        var linha = arrayTBody[0].insertRow();

        //Colunas ID, Nome e Cidade
        linha.insertCell().innerHTML = clube.id;
        linha.insertCell().innerHTML = clube.nome;
        linha.insertCell().innerHTML = clube.cidade;
        
        //Coluna Imagem
        var colImg = linha.insertCell();
        var img = document.createElement("img");
        img.setAttribute("src", clube.imagem);
        img.style.height = "50px";
        img.style.width = "auto";
        colImg.appendChild(img);

        //Coluna Excluir
        var colDel = linha.insertCell();
        var btnDel = document.createElement("button");
        btnDel.innerHTML = "Excluir";
        btnDel.className = "btn btn-danger";
        btnDel.addEventListener("click", function() { 
            if(confirm("Confirma a exclusão do clube?"))
                excluirClube(clube.id);
        });
        colDel.appendChild(btnDel);
    });
}

/* EXCLUIR */
async function excluirClube(idClube) {
    
}

/* INSERIR */
const btnInserir = document.querySelector("#btnInserir");
btnInserir.addEventListener("click", inserirClube);

const inpNome = document.querySelector("#inpNome");
const inpCidade = document.querySelector("#inpCidade");
const inpImagem = document.querySelector("#inpImagem");

async function inserirClube() {
    //Captura os valores dos inputs
    var nome = inpNome.value.trim();
    var cidade = inpCidade.value.trim();
    var imagem = inpImagem.value.trim();

    //Valida os campos
    if(!nome || !cidade || !imagem) {
        alert("Informe todos os valores!");
        return;
    }

    //Cria o objeto com os dados do clube
    const clube = {
        "nome" : nome,
        "cidade": cidade, 
        "imagem": imagem
    };

    //Cria o objeto com os dados da requisição AJAX
    const options = {
        method: 'POST',
        headers: {
            'Content-type': 'application/json'
        },
        body: JSON.stringify(clube)
    };

    //Envia a requisição AJAX
    var resp = await fetch(url, options);
    
    //Captura o status da saída
    if(resp.status == 201) {
        inpNome.value = "";
        inpCidade.value = "";
        inpImagem.value = "";

        alert("Clube inserido com sucesso.");
    } else {
        var json = await resp.text();  
        alert("Erro: " + json);
    }
}

