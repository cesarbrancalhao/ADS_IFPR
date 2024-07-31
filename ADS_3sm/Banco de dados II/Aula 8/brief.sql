CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

----
CREATE TABLE vendedor (
    id_vendedor SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

----
CREATE TABLE estoque (
    id_estoque SERIAL PRIMARY KEY,
    produto VARCHAR(100),
    preco NUMERIC(10, 2),
    quantidade INTEGER
);

----
CREATE TABLE venda (
    id_venda SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES cliente(id_cliente),
    vendedor_id INTEGER REFERENCES vendedor(id_vendedor),
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10, 2)
);

----
CREATE TABLE itens_venda (
    id_itensvenda SERIAL PRIMARY KEY,
    venda_id INTEGER REFERENCES venda(id_venda),
    produto_id INTEGER REFERENCES estoque(id_estoque),
    quantidade INTEGER,
    preco_unitario NUMERIC(10, 2)
);

----
INSERT INTO estoque
    (produto, preco, quantidade)
VALUES
    ('Notebook', 1200.00, 10),
    ('Smartphone', 800.00, 20),
    ('Tablet', 300.00, 5),
    ('Mouse', 50.00, 50);

----
INSERT INTO cliente
    (nome, email)
VALUES
    ('João Pedro', 'j@j.com'),
    ('Maria João', 'm@m.com'),
    ('Pedro Maria', 'p@p.com');

----
INSERT INTO vendedor
    (nome)
VALUES
    ('Jorge'),
    ('Eduardo');

----
INSERT INTO venda
    (cliente_id, vendedor_id, total)
VALUES
    (1, 1, 1000.00),
    (2, 2, 2000.00),
    (3, 1, 3000.00);

----
INSERT INTO itens_venda
    (venda_id, produto_id, quantidade)
VALUES
    (2, 1, 0),
    (2, 2, 3),
    (3, 3, 1);

----
CREATE OR REPLACE FUNCTION adicionar_item_venda
    (p_venda_id INTEGER, p_produto_id INTEGER, p_quantidade INTEGER)
RETURNS VOID AS $$
DECLARE
    v_preco NUMERIC(10, 2);
    v_estoque_atual INTEGER;
BEGIN
    --
    SELECT
        preco, quantidade
    INTO
        v_preco, v_estoque_atual
    FROM
        estoque
    WHERE
        id_estoque = p_produto_id;

    --
    IF
        v_estoque_atual < p_quantidade
    THEN
        RAISE EXCEPTION 'Estoque insuficiente';
    END IF;

    --
    INSERT INTO itens_venda
        (venda_id, produto_id, quantidade, preco_unitario)
    VALUES
        (p_venda_id, p_produto_id, p_quantidade, v_preco);

    UPDATE 
        estoque 
    SET 
        quantidade = quantidade - p_quantidade
    WHERE
        id_estoque = p_produto_id;
END;
$$ LANGUAGE plpgsql;

--
SELECT adicionar_item_venda(1, 3, 2);