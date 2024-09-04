CREATE OR REPLACE FUNCTION calculo_bottleneck(
    p_cpu_id INTEGER,
    p_gpu_id INTEGER
)
RETURNS TEXT AS $$
DECLARE
    v_cpu RECORD;
    v_gpu RECORD;
    cpu_per_core NUMERIC;
    cpu_bottleneck NUMERIC;
    thread_bottleneck NUMERIC;
    gpu_bottleneck NUMERIC;
BEGIN
    SELECT * INTO v_cpu FROM cpu WHERE id = p_cpu_id;
    SELECT * INTO v_gpu FROM gpu WHERE id = p_gpu_id;

    IF v_cpu.id IS NULL OR v_gpu.id IS NULL THEN
        RETURN 'CPU ou GPU não encontrado';
    END IF;

    cpu_per_core := (v_cpu.totalbench * 0.77) / v_cpu.cores;

    cpu_bottleneck := FLOOR((cpu_per_core / (v_gpu.benchmark_score * 1.77)) * 100);
    thread_bottleneck := FLOOR((v_cpu.threadbench / (v_gpu.benchmark_score * 1.77)) * 100);
    gpu_bottleneck := FLOOR((v_cpu.totalbench * 0.77) / (v_gpu.benchmark_score * 1.77));

    RETURN FORMAT('GPU bottleneck: %s%%, CPU bottleneck: %s%%, Thread bottleneck: %s%%',
                  gpu_bottleneck::TEXT,
                  cpu_bottleneck::TEXT,
                  thread_bottleneck::TEXT);
END;
$$ LANGUAGE plpgsql;