CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE editoras (
    id int AUTO_INCREMENT NOT NULL,
    nome varchar(127) NOT NULL,
    pais varchar(57) NOT NULL,
    CONSTRAINT pk_editoras PRIMARY KEY (id)
);

INSERT INTO editoras (nome, pais) VALUES ('Galera Record', 'Brasil');
INSERT INTO editoras (nome, pais) VALUES ('Suma', 'Brasil');
INSERT INTO editoras (nome, pais) VALUES ('Bantam Books', 'EUA');
INSERT INTO editoras (nome, pais) VALUES ('Intrínseca', 'Brasil');


CREATE TABLE autores (
    id int AUTO_INCREMENT NOT NULL,
    nome varchar(127) NOT NULL,
    pais varchar(57) NOT NULL,
    CONSTRAINT pk_autores PRIMARY KEY (id)
);

INSERT INTO autores (nome, pais) VALUES ('Colleen Hoover', 'EUA');
INSERT INTO autores (nome, pais) VALUES ('George R. Martin', 'EUA');
INSERT INTO autores (nome, pais) VALUES ('Jenna Evans', 'EUA');


CREATE TABLE livros (
    id int AUTO_INCREMENT NOT NULL,
    titulo varchar(57) NOT NULL,
    ano int NOT NULL,
    paginas int NOT NULL,
    status VARCHAR(1) NOT NULL, /* D=Disponível, I=Indisponível */
    genero varchar(1) NOT NULL, /* A=Ação, R=Romance, D=Drama, S=Suspense, F=Ficção*/
    id_editora int NOT NULL,
    id_autor int NOT NULL,
    CONSTRAINT pk_livros PRIMARY KEY (id)
);
ALTER TABLE livros ADD CONSTRAINT fk_editora FOREIGN KEY (id_editora) REFERENCES editoras (id);
ALTER TABLE livros ADD CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES autores (id);


INSERT INTO livros (titulo, ano, paginas, status, genero, id_editora, id_autor)
    VALUES ('Amor & Gelato', 2017, 320, 'L', 'R', 4, 3);
INSERT INTO livros (titulo, ano, paginas, status, genero, id_editora, id_autor)
    VALUES ('Game Of Thrones: A Song of Ice and Fire', 1996, 632, 'N', 'F', 3, 2);

-- /* login */
-- CREATE TABLE usuarios (
-- id int AUTO_INCREMENT,
-- nome varchar(70) NOT NULL,
-- login varchar(15) NOT NULL,
-- senha varchar(15) NOT NULL,
-- CONSTRAINT pk_usuarios PRIMARY KEY (id)
-- );
-- ALTER TABLE usuarios ADD CONSTRAINT uk_usuarios UNIQUE KEY (login);

-- INSERT INTO usuarios (nome, login, senha) VALUES ('Sr. Administrador', 'admin', 'admin');
-- INSERT INTO usuarios (nome, login, senha) VALUES ('Sr. Root', 'root', 'root');
-- INSERT INTO usuarios (nome, login, senha) VALUES ('Cesar Brancalhao', 'cesarbrancalhao', 'senha');