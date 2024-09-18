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
        RETURN 'CPU não encontrada';
    END IF;

    IF v_gpu.id IS NULL THEN
        RETURN 'GPU não encontrada';
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
CREATE OR REPLACE FUNCTION calculoRankingCpu(max INTEGER)
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

CREATE OR REPLACE FUNCTION calculoRankingGpu(max INTEGER)
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

CREATE OR REPLACE FUNCTION calculoRanking(tipo TEXT, max INTEGER DEFAULT 10)
RETURNS TABLE (
    ranking BIGINT,
    id INTEGER,
    name VARCHAR(255),
    benchmark INTEGER,
    price NUMERIC(10, 2)
) AS $$
BEGIN
    IF tipo = 'cpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingCpu(max);
    ELSIF tipo = 'gpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingGpu(max);
    ELSE
        RAISE EXCEPTION 'Tipo inválido. Use "cpu" ou "gpu"';
    END IF;
END;
$$ LANGUAGE plpgsql;

-- 3. Analisar e encontrar a melhor combinação possível dentro de um orçamento.
CREATE OR REPLACE FUNCTION calculoOrcamento(valor NUMERIC(10, 2))
RETURNS TEXT AS $$
DECLARE
    cpu_socket VARCHAR(50);
    cpu_name VARCHAR(255);
    cpu_price NUMERIC(10, 2);
    gpu_name VARCHAR(255);
    gpu_price NUMERIC(10, 2);
    hdd_name VARCHAR(255);
    hdd_price NUMERIC(10, 2);
    cooler_name VARCHAR(255);
    cooler_price NUMERIC(10, 2);
    psu_name VARCHAR(255);
    psu_price NUMERIC(10, 2);
    ram_name VARCHAR(255);
    ram_price NUMERIC(10, 2);
    motherboard_name VARCHAR(255);
    motherboard_price NUMERIC(10, 2);
    total_price NUMERIC(10, 2);
BEGIN
    SELECT name, price, split_part(name, ' ', 1) INTO cpu_name, cpu_price, cpu_socket
    FROM cpu r
    WHERE r.price < valor * 0.20
    ORDER BY r.totalbench DESC
    LIMIT 1;

    SELECT name, price INTO gpu_name, gpu_price
    FROM gpu r
    WHERE r.price < valor * 0.30
    ORDER BY r.benchmark DESC
    LIMIT 1;

    SELECT name, price INTO hdd_name, hdd_price
    FROM hdd t
    WHERE t.price < valor * (0.5 / 5)
    ORDER BY t.storage_size DESC
    LIMIT 1;

    SELECT name, price INTO cooler_name, cooler_price
    FROM cooler t
    WHERE t.price < valor * (0.5 / 5)
    ORDER BY t.fans DESC
    LIMIT 1;

    SELECT name, price INTO psu_name, psu_price
    FROM psu t
    WHERE t.price < valor * (0.5 / 5)
    ORDER BY t.wattage DESC
    LIMIT 1;

    SELECT name, price INTO ram_name, ram_price
    FROM ram t
    WHERE t.price < valor * (0.5 / 5)
    ORDER BY t.memory DESC
    LIMIT 1;

    SELECT name, price INTO motherboard_name, motherboard_price
    FROM motherboard t
    WHERE t.price < valor * (0.5 / 5)AND split_part(t.socket, '_', 1) = cpu_socket
    ORDER BY t.ram_slots DESC
    LIMIT 1;

    RETURN FORMAT('CPU: %s, PRECO: %s. GPU: %s, PRECO: %s. HDD: %s, PRECO: %s. COOLER: %s, PRECO: %s. PSU: %s, PRECO: %s. RAM: %s, PRECO: %s. PLACA-MAE: %s, PRECO: %s. TOTAL: %s', cpu_name, cpu_price, gpu_name, gpu_price, hdd_name, hdd_price, cooler_name, cooler_price, psu_name, psu_price, ram_name, ram_price, motherboard_name, motherboard_price, (cpu_price + gpu_price + hdd_price + cooler_price + psu_price + ram_price + motherboard_price));
END;
$$ LANGUAGE plpgsql;

-- 4. Determinar o consumo de energia médio dado um número de horas médio de uso diário.
CREATE OR REPLACE FUNCTION calculoTDP(cpu_id INTEGER, gpu_id INTEGER, motherboard_id INTEGER, hours INTEGER)
RETURNS TEXT AS $$
DECLARE
    cpu_tdp INTEGER;
    gpu_tdp INTEGER;
    motherboard_tdp INTEGER;
BEGIN
    SELECT tdp INTO cpu_tdp FROM cpu WHERE id = cpu_id;
    SELECT tdp INTO gpu_tdp FROM gpu WHERE id = gpu_id;
    SELECT tdp INTO motherboard_tdp FROM motherboard WHERE id = motherboard_id;
    RETURN 
        FORMAT('Consumo médio de energia mensal: %s kWh', ((cpu_tdp + gpu_tdp + motherboard_tdp * hours) * 30) / 1000);
END;
$$ LANGUAGE plpgsql;