// Exemplo de código sem Elses
const eu = {
    idade: 20,
}

// Função com Else:

function possoDirigir(pessoa){
    if (pessoa?.idade != null){ // Condição 1
        if (pessoa.idade < 18) { // Condição 2
            console.log("Não 👶");
        } else if (pessoa.idade <= 21) { // Condição 3
            console.log("Não na alemanha 🥱");
        } else {
            console.log("Sim 🚗"); // Default
        }
    } else {
        console.log("Idade incorreta"); // Else da condição 1
    }
};

possoDirigir(eu);

// Função sem Else

function possoDirigirClean(idade) {
    if (idade == null) return "Idade incorreta"; // Condição 1

    if (idade < 18) return "Não 👶"; // Condição 2

    if (idade < 22) return "Não na alemanha 🥱" // Condição 3

    return "Sim 🚗"; // Default
}

console.log(possoDirigirClean(eu.idade));