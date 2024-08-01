---- VÍDEO 1: Transações + SavePoint;

BEGIN; -- Começa a transação

INSERT INTO actor(first_name, last_name) VALUES ('Cesar', 'Brancalhao');

SAVEPOINT ponto1; -- Cria um ponto de restauração na transação

INSERT INTO film
    (title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating)
VALUES 
    ('Game of Thrones: A Song of Ice and Fire', 'Game of Thrones: A Song of Ice and Fire', 1996, 1, 1, 3, 4.99, 632, 19.99, 'PG');

SAVEPOINT ponto2;

INSERT INTO film_actor
    (actor_id, film_id)
VALUES (212, 1009);

ROLLBACK TO SAVEPOINT ponto1; -- Volta a transação para o estado antes do ponto 1
ROLLBACK;


---- VÍDEO 2: String functions;

SELECT lower(first_name) FROM actor; -- Deixa o nome em minúsculo
SELECT lower(first_name) nome FROM actor; -- Muda o nome da função na exibição
SELECT char_length(first_name) FROM actor; -- Retorna o número de caracteres
SELECT reverse(first_name) FROM actor; -- Inverte o nome

SELECT format('Incluindo o nome %s e o sobrenome %s em uma frase.', initcap(first_name), initcap(last_name)) FROM actor;

---- VÍDEO 3: Stored Functions;

CREATE OR REPLACE FUNCTION decisao (y INTEGER, x INTEGER) 
RETURNS INTEGER AS $$
DECLARE
    z INTEGER;
BEGIN
    z = x + y;
    IF (z <= 0) THEN
        RAISE EXCEPTION 'A SOMA DOS ELEMENTOS É MENOR OU IGUAL A ZERO'; -- Interrompe a execução do resto do bloco
    END IF;
    RETURN z;
END
$$ LANGUAGE plpgsql;

-- Teste:
SElECT decisao(10, 10);
SElECT decisao(0, -1); -- Exceção


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

-- Teste:
-- SELECT data_formatada(current_timestamp); // Não funciona na minha versão

CREATE TABLE teste(
    id SERIAL PRIMARY KEY,
    data TIMESTAMP NOT NULL
);

INSERT INTO teste(data) VALUES('20240723');
INSERT INTO teste(data) VALUES(current_timestamp);

SELECT id, data_formatada(data) FROM teste; -- Faz um select com a data formatada.