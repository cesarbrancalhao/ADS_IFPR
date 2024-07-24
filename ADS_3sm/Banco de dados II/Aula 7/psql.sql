CREATE OR REPLACE FUNCTION hello_world()
RETURNS TEXT AS $$
BEGIN
    RETURN 'Hello World!';
END;
$$ LANGUAGE plpgsql;

SELECT hello_world();

----
CREATE OR REPLACE FUNCTION hello_world2();
RETURNS TEXT AS $$
BEGIN
    RETURN 'Hello World!';
END;
$$ LANGUAGE plpgsql;

SELECT hello_world2();

----
CREATE OR REPLACE FUNCTION hello_world3(msg TEXT)
RETURNS TEXT AS $$
BEGIN
    RETURN msg;
END;
$$ LANGUAGE plpgsql;

SELECT hello_world3('Hello World!');

----
CREATE OR REPLACE FUNCTION hello_world4(msg_param TEXT)
RETURNS TEXT AS $$
DECLARE msg_main TEXT := 'Hello ';
BEGIN
    RETURN msg_main || ' ' || msg_param;
END;
$$ LANGUAGE plpgsql;

SELECT hello_world3('World!');

----
CREATE OR REPLACE FUNCTION hello_world5(num_param INTEGER, msg_main TEXT)
RETURNS TEXT AS $$
DECLARE msg_num INTEGER := 10
BEGIN
    RETURN 'Result: ' || (msg_num + num_param) || msg_main;
END;
$$ LANGUAGE plpgsql;

SELECT hello_world5(5, '.');

----
CREATE OR REPLACE FUNCTION calculadora(x INTEGER, y INTEGER)
RETURNS TEXT AS $$
BEGIN
    RETURN x + y;
END;
$$ LANGUAGE plpgsql;

SELECT calculadora(5, 2);

----
CREATE OR REPLACE FUNCTION data_formatada(input_date TIMESTAMP)
RETURNS TEXT AS $$
DECLARE
    day INTEGER;
    month INTEGER;
    year INTEGER;
    nome_mes TEXT;
BEGIN
    day := EXTRACT(DAY FROM input_date);
    month := EXTRACT(MONTH FROM input_date);
    year := EXTRACT(YEAR FROM input_date);

    nome_mes := mes(month);

    RETURN day || ' de ' || nome_mes || ' de ' || year;
END;
$$ LANGUAGE plpgsql;

SELECT data_formatada('20240723');

CREATE OR REPLACE FUNCTION mes(month_param INTEGER)
RETURNS TEXT AS $$
BEGIN
    RETURN CASE month_param
        WHEN 01 THEN 'Janeiro'
        WHEN 02 THEN 'Fevereiro'
        WHEN 03 THEN 'Março'
        WHEN 04 THEN 'Abril'
        WHEN 05 THEN 'Maio'
        WHEN 06 THEN 'Junho'
        WHEN 07 THEN 'Julho'
        WHEN 08 THEN 'Agosto'
        WHEN 09 THEN 'Setembro'
        WHEN 10 THEN 'Outubro'
        WHEN 11 THEN 'Noveeh smbro'
        WHEN 12 THEN 'Dezembro'
        ELSE 'Mês inválido'
    END;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE teste(
    id SERIAL PRIMARY KEY,
    data TIMESTAMP NOT NULL
);

INSERT INTO teste(data) VALUES('20240723');
SELECT * FROM teste;
----
