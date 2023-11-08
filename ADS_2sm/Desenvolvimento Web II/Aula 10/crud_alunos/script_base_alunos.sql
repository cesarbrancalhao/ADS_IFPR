/*
Modelo de base de dados inicial para a implementação do CRUD Alunos
*/

/* TABELA cursos */
CREATE TABLE cursos ( 
  id int AUTO_INCREMENT NOT NULL, 
  nome varchar(70) NOT NULL,
  turno varchar(1) NOT NULL, /* M=Matutino, V=Vespertino, N=Noturno */
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
  nome varchar(70) NOT NULL, 
  idade int NOT NULL,
  estrangeiro varchar(1) NOT NULL, /* S=Sim, N=Não */
  id_curso int NOT NULL, 
  CONSTRAINT pk_alunos PRIMARY KEY (id)
);
ALTER TABLE alunos ADD CONSTRAINT fk_curso FOREIGN KEY (id_curso) REFERENCES cursos (id);

CREATE TABLE usuarios ( 
  id int AUTO_INCREMENT, 
  nome varchar(70) NOT NULL, 
  login varchar(15) NOT NULL,
  senha varchar(15) NOT NULL, 
  PRIMARY KEY (id) 
);
ALTER TABLE usuarios ADD CONSTRAINT uk_usuarios UNIQUE KEY (login);

/*Inserts usuarios*/
INSERT INTO usuarios (nome, login, senha) VALUES ('Sr. Administrador', 'admin', 'admin');
INSERT INTO usuarios (nome, login, senha) VALUES ('Sr. Root', 'root', 'root');