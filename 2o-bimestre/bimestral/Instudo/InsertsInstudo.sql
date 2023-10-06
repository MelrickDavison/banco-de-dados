INSERT INTO alunos(login, nome, senha, nascimento, foto, matricula) VALUES  ('BielzinhoDelas', 'Gabriel Luiz', 'soubunito22', "2006-04-20", "", 2022305322), ('LLL_Fabricio','Fabricio Arcanjo','fabricio9','2006-09-06', '', 2022308), ('MelrickD', 'Melrick Davison','melrick2016','2006-09-04', '', 2022192023), ('Qemmili13', 'Kemylly Gabrielly','soucorinthiana','2006-07-15','', 12341214);

INSERT INTO empresa(login, nome, senha, foto, cnpj) VALUES ('oscorp_oficial','OSCORP','ihateSpiderMan19','', '192120130'), ('CesmacAL','CESMAC','Cesmac123', "",'13123124'), ('UFAL_oficial','UFAL','ufalzinhodoscria','','213981209');

INSERT INTO professores VALUES ('dhs.lima','David','david1314','1990-09-13','','Mestrado','','19000'), ('Nenelson', 'Elinelson', 'ilovematematica', '1890-10-23', '', 'Mestrado', '', '09131'), ('pabloDosTeclados','Pablo','2555.255.255.255','1999-03-10','', 'Graduado', '', '192109');

INSERT INTO turmas(nome, ID) VALUES ('Português', 1), ("Matematica", 2), ("Banco de Dados", 3), ("Redes", 4);

INSERT INTO perfilaluno VALUES ('LLL_Fabricio','fabricio_arcanjo.09','2021-09-30'),('BielzinhoDelas','gabrielLuiz','2020-02-21'),('Qemmili13','Kemylly._','2022-12-13'),('MelrickD','melrickkj','2023-10-14');

INSERT INTO perfilempresa VALUES ('CesmacAL','cesmac.01','26/08/2009'), ('UFAL_oficial','ufaldodeboche','10/10/2014'),('oscorp_oficial','oscorp.oroscopo','17/13/2013');

INSERT INTO perfilprofessores VALUES ('Nenelson','NelSon','15/01/2010'),('dhs.lima','hs.lima','25/03/2017'),('pabloDosTeclados','Pablo','07/07/2007');

INSERT INTO materias VALUES("POO-01", "Class"), ("BD-01", "Normalização"),("REDES-01", "Camadas de Aplicação");

INSERT INTO atividades VALUES("POO-01", 100, "B, C, E, F"), ("BD-01", 1, "D, C, F, F"),("REDES-01", 1000, "A, C, E, C");

INSERT INTO conteudo VALUES("POO-01", "Apostila 12"), ("BD-01","Apostila 134"),("REDES-01", "Apostila 189");

INSERT INTO videoaula VALUES("POO-01",  156), ("BD-01", 30),("REDES-01", 34);

INSERT INTO alunoturma VALUES ("BielzinhoDelas", 2022305322 , 2), ('LLL_Fabricio', 2022308, 3), ('MelrickD', 2022192023, 3), ('Qemmili13', 12341214, 2), ("BielzinhoDelas", 2022305322, 4),('LLL_Fabricio', 2022308, 2),('Qemmili13', 12341214, 3), ('Qemmili13', 12341214, 4);

INSERT INTO materiaaluno VALUES("BielzinhoDelas", "POO-01"),( "BielzinhoDelas", "BD-01"), ("BielzinhoDelas", "REDES-01"), ( 'Qemmili13', "POO-01"), ('MelrickD', "REDES-01"),  ( 'MelrickD', "POO-01"), ('LLL_Fabricio', "BD-01");

INSERT INTO profturma VALUES('Nenelson', 2), ("pabloDosTeclados", 4), ("dhs.lima", 3);

INSERT INTO materiaprof VALUES('Nenelson', "POO-01"), ("pabloDosTeclados", "REDES-01"), ("dhs.lima", "BD-01");
