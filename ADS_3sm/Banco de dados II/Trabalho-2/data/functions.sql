-- 1. Calcular o possível bottleneck dada uma combinação de CPU e GPU.
CREATE OR REPLACE FUNCTION adjustedBottleneck(
    p_returnOption NUMERIC,
    cpu_bottleneck NUMERIC,
    gpu_bottleneck NUMERIC
)
RETURNS NUMERIC AS $$
BEGIN

    IF cpu_bottleneck > 100 THEN
        cpu_bottleneck := 100;
    END IF;

    IF gpu_bottleneck > 100 THEN
        gpu_bottleneck := 100;
    END IF;

    IF cpu_bottleneck < 0 THEN
        cpu_bottleneck := 0;
    END IF;

    IF gpu_bottleneck < 0 THEN
        gpu_bottleneck := 0;
    END IF;

    IF cpu_bottleneck > 0 AND gpu_bottleneck > 0 THEN
        IF cpu_bottleneck < gpu_bottleneck THEN
            gpu_bottleneck := gpu_bottleneck - cpu_bottleneck;
            cpu_bottleneck := 0;
        ELSIF gpu_bottleneck < cpu_bottleneck THEN
            cpu_bottleneck := cpu_bottleneck - gpu_bottleneck;
            gpu_bottleneck := 0;
        ELSE
            cpu_bottleneck := 0;
            gpu_bottleneck := 0;
        END IF;
    END IF;

    IF p_returnOption = 1 THEN
        RETURN cpu_bottleneck;
    ELSIF p_returnOption = 2 THEN
        RETURN gpu_bottleneck;
    ELSE
        RAISE EXCEPTION 'Opção inválida';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION calculoBottleneck(
    p_cpuid INTEGER,
    p_gpuid INTEGER
)
RETURNS TEXT AS $$
DECLARE
    v_cpu RECORD;
    v_gpu RECORD;
    cpu_calc NUMERIC;
    gpu_calc NUMERIC;
    cpu_bottleneck NUMERIC;
    gpu_bottleneck NUMERIC;
BEGIN
    SELECT * INTO v_cpu FROM cpu WHERE id = p_cpuid;
    SELECT * INTO v_gpu FROM gpu WHERE id = p_gpuid;

    IF v_cpu.id IS NULL THEN
        RETURN 'CPU não encontrado';
    END IF;

    IF v_gpu.id IS NULL THEN
        RETURN 'GPU não encontrado';
    END IF;

    cpu_calc := FLOOR(((v_gpu.benchmark * 1.77) / v_cpu.totalbench) * 100);
    gpu_calc := FLOOR((v_cpu.totalbench / (v_gpu.benchmark * 1.77)) * 100);

    cpu_bottleneck := adjustedBottleneck(1, cpu_calc, gpu_calc);
    gpu_bottleneck := adjustedBottleneck(2, cpu_calc, gpu_calc);

    RETURN FORMAT('CPU: %s | GPU: %s | CPU bottleneck: %s%% | GPU bottleneck: %s%%',
                  v_cpu.name,
                  v_gpu.name,
                  cpu_bottleneck::TEXT,
                  gpu_bottleneck::TEXT);
END;
$$ LANGUAGE plpgsql;

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

-- 3. Analisar e encontrar a melhor combinação possível dentro de um orçamento.
CREATE OR REPLACE FUNCTION calculoOrcamento(valor NUMERIC(10, 2))
RETURNS TABLE (
    id INTEGER,
    name VARCHAR(255),
    totalbench INTEGER,
    price NUMERIC(10, 2),
    performance_factor NUMERIC(10, 2)
) AS $$
DECLARE
    best_cpu_id INTEGER;
    best_gpu_id INTEGER;
    best_hdd_id INTEGER;
    best_cooler_id INTEGER;
    best_psu_id INTEGER;
    best_ram_id INTEGER;
    best_motherboard_id INTEGER;
    max_performance NUMERIC(10, 2);
BEGIN
    SELECT id INTO best_cpu_id FROM cpu WHERE price <= valor ORDER BY totalbench DESC LIMIT 1;

    SELECT id INTO best_gpu_id FROM gpu WHERE tdp <= best_cpu.tdp AND price <= valor ORDER BY benchmark DESC LIMIT 1;

    SELECT id INTO best_hdd_id FROM hdd WHERE price <= valor ORDER BY storage_size DESC LIMIT 1;

    SELECT id INTO best_cooler_id FROM cooler WHERE price <= valor ORDER BY fans DESC LIMIT 1;

    SELECT id INTO best_psu_id FROM psu WHERE wattage >= best_cpu.tdp + best_gpu.tdp + best_motherboard.tdp + best_ram.frequency * best_motherboard.ram_slots AND price <= valor ORDER BY efficiency DESC LIMIT 1;

    SELECT id INTO best_ram_id FROM ram WHERE price <= valor ORDER BY memory DESC LIMIT 1;

    SELECT id INTO best_motherboard_id FROM motherboard WHERE socket = best_cpu.socket AND price <= valor ORDER BY ram_slots DESC LIMIT 1;

    max_performance := COALESCE(best_cpu.totalbench, 0) +
                      COALESCE(best_gpu.benchmark, 0) +
                      COALESCE(best_hdd.storage_size, 0) +
                      COALESCE(best_motherboard.ram_slots, 0) +
                      COALESCE(best_ram.memory, 0) +
                      COALESCE(best_psu.wattage, 0) +
                      COALESCE(best_cooler.fans, 0);

    RETURN QUERY
    SELECT
        c.id,
        c.name,
        c.totalbench,
        c.price,
        c.totalbench::numeric / c.price::numeric AS performance_factor
    FROM cpu c
    WHERE c.id IN (best_cpu_id, best_gpu_id, best_hdd_id, best_cooler_id, best_psu_id, best_ram_id, best_motherboard_id)
    ORDER BY performance_factor DESC;
END;
$$ LANGUAGE plpgsql;
