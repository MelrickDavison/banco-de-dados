#Adicionar autores na tabela autor;
INSERT INTO autores(id_autor, nome, data_nascimento, nacionalidade) VALUES ("000000001A", "Edel Alexandre Pontes", "13/08/1982", "brasileiro");
INSERT INTO autores(id_autor, nome, data_nascimento, nacionalidade) VALUES ("000000002A", "David Santos Lima", "14/05/1989", "brasileiro");
INSERT INTO autores(id_autor, nome, data_nascimento, nacionalidade) VALUES ("000000003A", "Elinelsson Gomes da Silva", "28/07/1985", "brasileiro");

#Adiciona as categorias;
INSERT INTO categorias(id_categoria, nome) VALUES ("01C", "Romance");
INSERT INTO categorias(id_categoria, nome) VALUES ("02C", "Mistério");
INSERT INTO categorias(id_categoria, nome) VALUES ("03C", "Aventura");

#Adicionar 2 livros para cada autor;
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000001L", "Matemática: A Mãe das Coisas", "000000001A", "02C", "28/09/2014");
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000002L", "Geometria Analítica", "000000001A", "02C", "03/06/2017");
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000003L", "O Casamento", "000000002A", "01C", "12/05/2023");
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000004L", "Meu Primeiro Amor", "000000002A", "01C", "30/01/2018");
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000005L", "As Aventuras de ARK", "000000003A", "03C", "17/11/2021");
INSERT INTO livros(id_livro, titulo, FK_id_autor, FK_id_categoria, ano_publicacao) VALUES ("000000006L", "ARK 2.0", "000000003A", "03C", "20/07/2023");

#Querys:
#1.
ALTER TABLE livros ADD COLUMN editora VARCHAR(50);
UPDATE livros SET editora="Saraiva" WHERE id_livro="000000001L";
UPDATE livros SET editora="Aleph" WHERE id_livro="000000002L";
UPDATE livros SET editora="Suma" WHERE id_livro="000000003L";
UPDATE livros SET editora="Globo Livros" WHERE id_livro="000000004L";
UPDATE livros SET editora="Darkside Books" WHERE id_livro="000000005L";
UPDATE livros SET editora="Harper Collins" WHERE id_livro="000000006L";

#2.
ALTER TABLE livros DROP COLUMN ano_publicacao;

#3.
UPDATE livros SET FK_id_autor="000000003A" WHERE titulo="Geometria Analítica";

#4.
ALTER TABLE livros ADD COLUMN ano_publicacao VARCHAR(10);
UPDATE livros SET ano_publicacao=curdate() WHERE FK_id_categoria="01C";

#5.
DELETE FROM livros WHERE id_livro="000000001L";



