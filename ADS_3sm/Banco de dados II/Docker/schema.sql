--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adjustedbottleneck(numeric, numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.adjustedbottleneck(p_returnoption numeric, cpu_bottleneck numeric, gpu_bottleneck numeric) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.adjustedbottleneck(p_returnoption numeric, cpu_bottleneck numeric, gpu_bottleneck numeric) OWNER TO postgres;

--
-- Name: calculobottleneck(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculobottleneck(p_cpuid integer, p_gpuid integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.calculobottleneck(p_cpuid integer, p_gpuid integer) OWNER TO postgres;

--
-- Name: calculoorcamento(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculoorcamento(valor numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.calculoorcamento(valor numeric) OWNER TO postgres;

--
-- Name: calculoranking(text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculoranking(tipo text, max integer DEFAULT 10) RETURNS TABLE(ranking bigint, id integer, name character varying, benchmark integer, price numeric)
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF tipo = 'cpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingCpu(max);
    ELSIF tipo = 'gpu' THEN
        RETURN QUERY SELECT * FROM calculoRankingGpu(max);
    ELSE
        RAISE EXCEPTION 'Tipo inválido. Use "cpu" ou "gpu"';
    END IF;
END;
$$;


ALTER FUNCTION public.calculoranking(tipo text, max integer) OWNER TO postgres;

--
-- Name: calculorankingcpu(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculorankingcpu(max integer) RETURNS TABLE(ranking bigint, id integer, name character varying, totalbench integer, price numeric)
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.calculorankingcpu(max integer) OWNER TO postgres;

--
-- Name: calculorankinggpu(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculorankinggpu(max integer) RETURNS TABLE(ranking bigint, id integer, name character varying, benchmark integer, price numeric)
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.calculorankinggpu(max integer) OWNER TO postgres;

--
-- Name: calculotdp(integer, integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calculotdp(cpu_id integer, gpu_id integer, motherboard_id integer, hours integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.calculotdp(cpu_id integer, gpu_id integer, motherboard_id integer, hours integer) OWNER TO postgres;

--
-- Name: bottleneck_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.bottleneck_view AS
 SELECT format('Combinação: %s'::text, public.calculobottleneck(1, 1)) AS top1,
    format('Combinação: %s'::text, public.calculobottleneck(2, 2)) AS top2,
    format('Combinação: %s'::text, public.calculobottleneck(3, 3)) AS top3,
    format('Combinação: %s'::text, public.calculobottleneck(4, 4)) AS top4,
    format('Combinação: %s'::text, public.calculobottleneck(5, 5)) AS top5,
    format('Combinação: %s'::text, public.calculobottleneck(6, 6)) AS top6,
    format('Combinação: %s'::text, public.calculobottleneck(7, 7)) AS top7,
    format('Combinação: %s'::text, public.calculobottleneck(8, 8)) AS top8,
    format('Combinação: %s'::text, public.calculobottleneck(9, 9)) AS top9,
    format('Combinação: %s'::text, public.calculobottleneck(10, 10)) AS top10;


ALTER VIEW public.bottleneck_view OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cooler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cooler (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    fans integer NOT NULL,
    fan_speed integer NOT NULL,
    noise_level integer NOT NULL
);


ALTER TABLE public.cooler OWNER TO postgres;

--
-- Name: cooler_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cooler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cooler_id_seq OWNER TO postgres;

--
-- Name: cooler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cooler_id_seq OWNED BY public.cooler.id;


--
-- Name: cpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cpu (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    cores integer NOT NULL,
    price numeric(10,2) NOT NULL,
    totalbench integer NOT NULL,
    threadbench integer NOT NULL,
    tdp integer NOT NULL,
    socket character varying(50) NOT NULL
);


ALTER TABLE public.cpu OWNER TO postgres;

--
-- Name: cpu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cpu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cpu_id_seq OWNER TO postgres;

--
-- Name: cpu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cpu_id_seq OWNED BY public.cpu.id;


--
-- Name: gpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gpu (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    tdp integer NOT NULL,
    vram integer NOT NULL,
    benchmark integer NOT NULL,
    price numeric(10,2) NOT NULL
);


ALTER TABLE public.gpu OWNER TO postgres;

--
-- Name: gpu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gpu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gpu_id_seq OWNER TO postgres;

--
-- Name: gpu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gpu_id_seq OWNED BY public.gpu.id;


--
-- Name: hdd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hdd (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    reading_speed integer NOT NULL,
    storage_size integer NOT NULL
);


ALTER TABLE public.hdd OWNER TO postgres;

--
-- Name: hdd_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hdd_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hdd_id_seq OWNER TO postgres;

--
-- Name: hdd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hdd_id_seq OWNED BY public.hdd.id;


--
-- Name: motherboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motherboard (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    socket character varying(50) NOT NULL,
    price numeric(10,2) NOT NULL,
    sata_slots integer NOT NULL,
    nvme_slots integer NOT NULL,
    ram_slots integer NOT NULL,
    tdp integer NOT NULL
);


ALTER TABLE public.motherboard OWNER TO postgres;

--
-- Name: motherboard_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.motherboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.motherboard_id_seq OWNER TO postgres;

--
-- Name: motherboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.motherboard_id_seq OWNED BY public.motherboard.id;


--
-- Name: orcamento_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.orcamento_view AS
 SELECT public.calculoorcamento((4000)::numeric) AS orcamento,
    public.calculotdp(105, 41, 1, 10) AS consumo;


ALTER VIEW public.orcamento_view OWNER TO postgres;

--
-- Name: psu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.psu (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    wattage integer NOT NULL,
    price numeric(10,2) NOT NULL,
    efficiency integer NOT NULL
);


ALTER TABLE public.psu OWNER TO postgres;

--
-- Name: psu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.psu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.psu_id_seq OWNER TO postgres;

--
-- Name: psu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.psu_id_seq OWNED BY public.psu.id;


--
-- Name: ram; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ram (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    memory integer NOT NULL,
    frequency integer NOT NULL,
    price numeric(10,2) NOT NULL
);


ALTER TABLE public.ram OWNER TO postgres;

--
-- Name: ram_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ram_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ram_id_seq OWNER TO postgres;

--
-- Name: ram_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ram_id_seq OWNED BY public.ram.id;


--
-- Name: showcase_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.showcase_view AS
 SELECT format('%s'::text, public.calculoranking('cpu'::text, 5)) AS cpu,
    format('%s'::text, public.calculoranking('gpu'::text, 5)) AS gpu;


ALTER VIEW public.showcase_view OWNER TO postgres;

--
-- Name: cooler id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooler ALTER COLUMN id SET DEFAULT nextval('public.cooler_id_seq'::regclass);


--
-- Name: cpu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cpu ALTER COLUMN id SET DEFAULT nextval('public.cpu_id_seq'::regclass);


--
-- Name: gpu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gpu ALTER COLUMN id SET DEFAULT nextval('public.gpu_id_seq'::regclass);


--
-- Name: hdd id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hdd ALTER COLUMN id SET DEFAULT nextval('public.hdd_id_seq'::regclass);


--
-- Name: motherboard id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboard ALTER COLUMN id SET DEFAULT nextval('public.motherboard_id_seq'::regclass);


--
-- Name: psu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.psu ALTER COLUMN id SET DEFAULT nextval('public.psu_id_seq'::regclass);


--
-- Name: ram id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ram ALTER COLUMN id SET DEFAULT nextval('public.ram_id_seq'::regclass);


--
-- Name: cooler cooler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooler
    ADD CONSTRAINT cooler_pkey PRIMARY KEY (id);


--
-- Name: cpu cpu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cpu
    ADD CONSTRAINT cpu_pkey PRIMARY KEY (id);


--
-- Name: gpu gpu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gpu
    ADD CONSTRAINT gpu_pkey PRIMARY KEY (id);


--
-- Name: hdd hdd_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hdd
    ADD CONSTRAINT hdd_pkey PRIMARY KEY (id);


--
-- Name: motherboard motherboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboard
    ADD CONSTRAINT motherboard_pkey PRIMARY KEY (id);


--
-- Name: psu psu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.psu
    ADD CONSTRAINT psu_pkey PRIMARY KEY (id);


--
-- Name: ram ram_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ram
    ADD CONSTRAINT ram_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

