function calculobottleneck(type, bench, /* cores, vram */) {
    if (type === 'g') return bench / 0.77;
    if (type === 'c') return bench * 0.77;
};