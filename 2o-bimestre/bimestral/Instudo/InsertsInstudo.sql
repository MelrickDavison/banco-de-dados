 INSERT INTO alunos(login, nome, senha, nascimento, foto, matricula)
VALUES ('BielzinhoDelas','Gabriel Luiz Lourenço Farias','soubunito22', "2006-04-20", "", 2022305322)
('LLL_Fabricio','Fabricio Arcanjo Guimarães Costa','fabricio9','2006-09-06', '', 20223085389),
('MelrickD', 'Melrick Davison Fonseca Ribeiro','melrick2016','2006-09-04', '', 2022192023),
('Qemmili13', 'Kemylly Gabrielly Gomes Rodrigues','soucorinthiana','2006-07-15','', 12341214);

INSERT INTO empresa(login, nome, senha
VALUES  ('oscorp_oficial','OSCORP','ihateSpiderMan19','', '192120130'),
('CesmacAL','CESMAC','Cesmac123', "",'13123124'),
('UFAL_oficial','UFAL','ufalzinhodoscria','','213981209');


INSERT INTO professores
VALUES ('dhs.lima','David','david1314','1990-09-13','','Mestrado','','19000'),
('Nenelson','Elinelson','ilovematematica','1890-10-23', 'Mestrado', '','09131'),
('pabloDosTeclados','Pablo','2555.255.255.255','1999-03-10','', 'Graduado', '', '192109');

#Modificar
INSERT INTO turmas VALUES ;

INSERT INTO perfil VALUES ('CESMAC','cesmac.01','26/08/2009'),('Fabricio','fabricio_arcanjo.09','31/09/2025'),('BielzinhoDelas','gabrielLuiz','30/02/2020'),('David','hs.lima','25/03/2017'),('Qemmili','Kemylly._','32/06/2036'),('Meurriqui','melrickkj','14/10/2023'),('Nenelson','NelSon','15/01/2010'),('OSCORP','oscorp.oroscopo','17/13/2013'),('Pablo','Pablo','07/07/2007'),('UFAL','ufaldodeboche','10/10/2014');

INSERT INTO materias VALUES("POO-01", "Class"), ("BD-01", "Normalização"),("REDES-01", "Camadas de Aplicação");

INSERT INTO atividades VALUES("POO-01", 100, "B, C, E, F"), ("BD-01", 1, "D, C, F, F"),("REDES-01", 1000, "A, C, E, C");

INSERT INTO conteudo VALUES("POO-01", "Apostila 12"), ("BD-01","Apostila 134"),("REDES-01", "Apostila 189");

INSERT INTO videoaula VALUES("POO-01",  156), ("BD-01", 30),("REDES-01", 34);

INSERT INTO posts VALUES("gabrielLuiz",  "Distração", "Foto"), ("Pablo", "Ensino", "Video"),("ufaldodeboche", "Vaga", "Enquete");

INSERT INTO alunoturma VALUES("BielzinhoDelas", 9063, 12), ('Fabricio', 9062, 34), ('Meurriqui', 9064, 23), ('Qemmili', 9061, 12), ("BielzinhoDelas", 9063, 23),('Fabricio', 9062, 23),('Qemmili', 9061, 23), ('Qemmili', 9061, 34);

INSERT INTO materiaaluno VALUES(9063, "BielzinhoDelas", "POO-01"),(9063, "BielzinhoDelas", "BD-01"), (9063, "BielzinhoDelas", "REDES-01"), (9061, 'Qemmili', "POO-01"), ( 9064, 'Meurriqui', "REDES-01"),  ( 9064, 'Meurriqui', "POO-01"), ( 9062, 'Fabricio', "BD-01");

INSERT INTO profturma VALUES('Nenelson', 34), ("Pablo", 12), ("David", 23);

INSERT INTO materiaprof VALUES('Nenelson', "POO-01"), ("Pablo", "REDES-01"), ("David", "BD-01");
