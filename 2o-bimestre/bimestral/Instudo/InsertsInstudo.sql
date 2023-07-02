INSERT INTO usuarios VALUES ('BielzinhoDelas','Grota','(82)99805-4585'),('CESMAC','Centro','(82)99855-4585'),('David','Oca de Maceió','(82)99002-8922'),('Fabricio','Eustaquio','(82)98202-0245'),('Meurriqui','Esgoto do RL','(82)98202-0246'),('Nenelson','Praça das Maravilhas','(82)09805-4585'),('OSCORP','New York','(82)82202-0246'),('Pablo','Quinto dos Infernos','(82)98220-0245'),('Qemmili','Oca de Messias','(82)99001-8922'),('UFAL','Onde Judas Bateu as Botas','(82)98282-0246');

INSERT INTO alunos VALUES ('Qemmili',9061,'15/07/2006'),('Fabrício',9062,'06/09/2006'),('BielzinhoDelas',9063,'20/04/2006'),('Meurriqui',9064,'04/09/2006');

INSERT INTO professores VALUES ('David','Ser Gostoso'),('Nenelson','Matemática'),('Pablo','Nerd');

INSERT INTO turmas VALUES (12,'Informática'),(23,'Programação '),(34,'História');

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

