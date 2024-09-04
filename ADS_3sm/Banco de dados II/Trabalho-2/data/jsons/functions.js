// Calculo genérico gpu = bench / 0.77;
// Calculo genérico cpu =  bench * 0.77;

function calculoBottleneckCpu(gpuBenchmark, cpuBenchmark, cpuThreadmark, cores) {
    const cpuPerCore = (cpuBenchmark * 0.77) / cores;

    const cpuBottleneck = Math.floor((cpuPerCore / (gpuBenchmark * 1.77)) * 100);
    const threadBottleneck = Math.floor((cpuThreadmark / (gpuBenchmark * 1.77)) * 100);
    const gpuBottleneck = Math.floor((cpuBenchmark * 0.77) / (gpuBenchmark * 1.77));

    return `GPU bottleneck: ${gpuBottleneck}%, CPU bottleneck: ${cpuBottleneck}%, Thread bottleneck: ${threadBottleneck}%.`;
}

console.log(calculoBottleneckCpu(35966, 63061, 4879, 24));
console.log(calculoBottleneckCpu(1062, 3000, 2000, 2));