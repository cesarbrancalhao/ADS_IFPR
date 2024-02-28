-- SEQUENCE AUTOMATICALLY
	CREATE TABLE distributors (
	did serial primary key,
	name varchar(40) DEFAULT 'Luso Films',
	modtime timestamp DEFAULT current_timestamp
	);

-- COMPOUND PRIMARY KEY
	CREATE TABLE films (code char(5), title varchar(40), did
	integer, date_prod date, kind varchar(10), len interval hour
	to minute, CONSTRAINT code_title PRIMARY
	KEY(code,title));

-- DEFINING REFERENCIAL INTEGRITY
	CREATE TABLE product (
	pid serial NOT NULL PRIMARY KEY,
	did integer NOT NULL, 
	description	varchar(40),
	FOREIGN KEY(did) REFERENCES	distributors(did));
    
    INSERT INTO product (did, description) VALUES (1, 'STAR WARS');
    INSERT INTO product (did, description) VALUES (20, 'STAR WARS');
    -- Constraint error (violates fkey constraint),
    -- 20 isnt present in table distributors
	
-- UNIQUE CONSTRAINT
	CREATE TABLE aluno (
	aluno_id serial PRIMARY KEY,
	nome varchar(80) NOT NULL,
	cpf varchar(20) UNIQUE);
	
	INSERT INTO aluno (nome, cpf) VALUES ('MARIA', '1');
	INSERT INTO aluno (nome, cpf) VALUES ('JOAO', '1');
	-- Constraint error (duplicate key)
	INSERT INTO aluno (nome, cpf) VALUES ('JOAO', '9');
    INSERT INTO aluno (nome, cpf) VALUES ('PEDRO', '');
    -- Will allowing one value to be null,
    -- which happens only once
    INSERT INTO aluno (nome, cpf) VALUES ('MATEUS', '');
    -- Constraint error (duplicate key),
    -- since the cpf '' already exists