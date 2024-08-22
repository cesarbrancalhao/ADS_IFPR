function calculoImposto(i, len) {
    const sV = 1.777;
    const eV = 1.15; 
    /* Numeros magicos, o aumento inicial de IPI no brasil ´e de 16%, mas outros impostos podem somar até 154% do preço do produto */

    const decay = Math.log(eV / sV) / (len - 1); 
    /* Exponencial inversa porque eu salvei os dados ordenando por preço :P */
    
    const times = sV * Math.exp(decay * i);
    
    return times;
};

function calculobottleneck(type, bench, /* cores, vram */) {
    if (type === 'g') return bench / 0.77;
    if (type === 'c') return bench * 0.77;
}