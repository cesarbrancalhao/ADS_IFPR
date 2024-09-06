-- 1. Calcular o possível bottleneck dada uma combinação de CPU e GPU.
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

    cpu_bottleneck := FLOOR((cpu_per_core / (v_gpu.benchmark * 1.77)) * 100);
    thread_bottleneck := FLOOR((v_cpu.threadbench / (v_gpu.benchmark * 1.77)) * 100);
    gpu_bottleneck := FLOOR((v_cpu.totalbench * 0.77) / (v_gpu.benchmark * 1.77));

    RETURN FORMAT('GPU bottleneck: %s%%, CPU bottleneck: %s%%, Thread bottleneck: %s%%',
                  gpu_bottleneck::TEXT,
                  cpu_bottleneck::TEXT,
                  thread_bottleneck::TEXT);
END;
$$ LANGUAGE plpgsql;
--

-- 2. Calcular e criar um ranking dos melhores custos-benefícios de GPU ou CPU.
CREATE OR REPLACE FUNCTION calculoRankingCpu()
RETURNS TABLE (
    ranking BIGINT,
    id INTEGER,
    name VARCHAR(255),
    totalbench INTEGER,
    price NUMERIC(10, 2)
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        ROW_NUMBER() OVER (ORDER BY c.totalbench / c.price DESC) AS ranking,
        c.id,
        c.name,
        c.totalbench,
        c.price
    FROM cpu c;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION calculoRankingGpu()
RETURNS TABLE (
    ranking BIGINT,
    id INTEGER,
    name VARCHAR(255),
    benchmark INTEGER,
    price NUMERIC(10, 2)
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        ROW_NUMBER() OVER (ORDER BY g.benchmark / g.price DESC) AS ranking,
        g.id,
        g.name,
        g.benchmark,
        g.price
    FROM gpu g;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION calculoRanking(tipo TEXT)
RETURNS TABLE (
    ranking BIGINT,
    id INTEGER,
    name VARCHAR(255),
    benchmark INTEGER,
    price NUMERIC(10, 2)
) AS $$
BEGIN
    IF tipo = 'cpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingCpu();
    ELSIF tipo = 'gpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingGpu();
    ELSE
        RAISE EXCEPTION 'Tipo inválido. Use "cpu" ou "gpu"';
    END IF;
END;
$$ LANGUAGE plpgsql;