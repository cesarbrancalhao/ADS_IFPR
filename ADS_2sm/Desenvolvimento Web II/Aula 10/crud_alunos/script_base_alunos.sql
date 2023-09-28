/* Tabela cursos */
CREATE TABLE cursos (
    id int AUTO_INCREMENT NOT NULL,
    nome varchar(70) NOT NULL,
    turno varchar(1) NOT NULL, /* (M)atutino - (V)espertino - (N)oturno */
    CONSTRAINT pk_cursos PRIMARY KEY (id)
);

/* INSERTs cursos */
INSERT INTO cursos (nome, turno) VALUES ('Técnico em Desenvolvimento de Sistemas', 'V');
INSERT INTO cursos (nome, turno) VALUES ('Tecnólogo em Desenvolvimento de Sistemas', 'N');
INSERT INTO cursos (nome, turno) VALUES ('Ciência da Computação', 'N');
INSERT INTO cursos (nome, turno) VALUES ('Sistemas de Informação', 'M');

/* TABELA alunos */
CREATE TABLE alunos (
    id int AUTO_INCREMENT NOT NULL,
    nome varchar(85)  NOT NULL,
    idade int NOT NULL,
    estrangeiro varchar(1) NOT NULL,
    id_curso int NOT NULL,
    CONSTRAINT pk_alunos PRIMARY KEY (id)
);
ALTER TABLE alunos ADD CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES cursos (id);