CREATE OR REPLACE FUNCTION serie(n INTEGER)
RETURNS TABLE(num INTEGER) AS $$
BEGIN
    FOR i IN i..n LOOP -- Exemplo de um foreach
        num := i;
        RETURN NEXT ;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

----
CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    salario NUMERIC(10,2),
    departamento VARCHAR(50)
);

INSERT INTO funcionarios
    (nome, salario, departamento)
VALUES
    ('João Pedro', 11000.00, 'RH'),
    ('Maria João', 22000.00, 'TI'),
    ('Pedro Maria', 33000.00, 'Marketing');

SELECT * FROM funcionarios;

CREATE OR REPLACE FUNCTION atualizar_salario(func_id INTEGER, novo_salario NUMERIC)
RETURNS VOID AS $$
BEGIN
    UPDATE funcionarios
    SET
        salario = novo_salario
    WHERE
        id = func_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Funcionário % não encontrado', func_id;
    ELSE
        RAISE NOTICE 'Salário do funcionário % atualizado com sucesso', func_id;
    END IF;
END;
$$ LANGUAGE plpgsql;

SELECT atualizar_salario(2, 12000);