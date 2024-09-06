// Calculo genérico gpu = bench / 0.77;
// Calculo genérico cpu =  bench * 0.77;

function calculoBottleneckCpu(gpuBenchmark, cpuBenchmark, cpuThreadmark, cores) {
    const cpuPerCore = (cpuBenchmark * 0.77) / cores;

    const cpuBottleneck = Math.floor((cpuPerCore / (gpuBenchmark * 1.77)) * 100);
    const threadBottleneck = Math.floor((cpuThreadmark / (gpuBenchmark * 1.77)) * 100);
    const gpuBottleneck = Math.floor((cpuBenchmark * 0.77) / (gpuBenchmark * 1.77));

    return `GPU bottleneck: ${gpuBottleneck}%, CPU bottleneck: ${cpuBottleneck}%, Thread bottleneck: ${threadBottleneck}%.`;
};

function calculoRanking(tipo){
    if (tipo === 'cpu') return calculoRangingCpu();
    if (tipo === 'gpu') return calculoRangingGpu();
};

function calculoRangingCpu() {
    cpu.sort((a, b) => (b.totalbench / b.price) - (a.totalbench / a.price));
    return cpu;
};

function calculoRangingGpu() {
    gpu.sort((a, b) => (b.benchmark_score / b.price) - (a.benchmark_score / a.price));
    return gpu;
};