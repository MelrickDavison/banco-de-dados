CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores(
	id_autor VARCHAR(10),
    nome VARCHAR(50) NOT NULL,
    data_nascimento VARCHAR(10),
    nacionalidade VARCHAR(50),
    PRIMARY KEY(id_autor)
);

CREATE TABLE categorias(
	id_categoria VARCHAR(3),
    nome VARCHAR(50),
    PRIMARY KEY(id_categoria)
);

CREATE TABLE livros(
	id_livro VARCHAR(10),
    titulo VARCHAR(50),
    FK_id_autor VARCHAR(10),
    FK_id_categoria VARCHAR(3),
    ano_publicacao VARCHAR(10),
    FOREIGN KEY(FK_id_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY(FK_id_autor) REFERENCES autores(id_autor),
    PRIMARY KEY(FK_id_categoria, FK_id_autor, id_livro)
);


