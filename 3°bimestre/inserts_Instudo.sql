INSERT INTO alunos VALUES  ('BielzinhoDelas', 'Gabriel Luiz', 'soubunito22', "2006-04-20", "", 2022305322, 1009), ('LLL_Fabricio','Fabricio Arcanjo','fabricio9','2006-09-06', '', 2022308, 1011), ('MelrickD', 'Melrick Davison','melrick2016','2006-09-04', '', 2022192023, 897), ('Qemmili13', 'Kemylly Gabrielly','soucorinthiana','2006-07-15','', 12341214, 1011);

INSERT INTO empresa VALUES ('oscorp_oficial','OSCORP','ihateSpiderMan19','', '192120130'), ('CesmacAL','CESMAC','Cesmac123', "",'13123124'), ('UFAL_oficial','UFAL','ufalzinhodoscria','','213981209');

INSERT INTO professores VALUES ('dhs.lima','David','david1314','1990-09-13','','Mestrado','','19000'), ('Nenelson', 'Elinelson', 'ilovematematica', '1890-10-23', '', 'Mestrado', '', '09131'), ('pabloDosTeclados','Pablo','2555.255.255.255','1999-03-10','', 'Graduado', '', '192109');

INSERT INTO turmas VALUES ( 1, 'Português'), ( 2, "Matematica"), (3, "Banco de Dados"), ( 4, "Redes");

INSERT INTO perfilaluno VALUES ('LLL_Fabricio','fabricio_arcanjo.09','2021-09-30', 109),('BielzinhoDelas','gabrielLuiz','2020-02-21', 256),('Qemmili13','Kemylly._','2022-12-13', 109),('MelrickD','melrickkj','2023-10-14', 12);

INSERT INTO perfilempresa VALUES ('CesmacAL','cesmac.01','2009-08-26', 109000), ('UFAL_oficial','ufaldodeboche','2014-10-10', 950),('oscorp_oficial','oscorp.oroscopo','2013-12-17', 120001);

INSERT INTO perfilprofessores VALUES ('Nenelson','NelSon','2010-01-15', 19000),('dhs.lima','dhs.lima','2017-03-25', 231),('pabloDosTeclados','Pablo','2007-07-07', 156);

INSERT INTO amizadesalunos VALUES ('fabricio_arcanjo.09', 'gabrielLuiz'), ('gabrielLuiz', 'Kemylly._'), ('melrickkj', 'Qemmili13'), ('fabricio_arcanjo.09', 'Kemylly._'), ('fabricio_arcanjo.09', 'melrickkj');

INSERT INTO amizadesalunoprofessor VALUES ('fabricio_arcanjo.09', 'NelSon'), ('gabrielLuiz', 'NelSon'), ('melrickkj', 'dhs.lima'), ('fabricio_arcanjo.09', 'dhs.lima'), ('fabricio_arcanjo.09', 'pabloDosTeclados'), ('Kemylly._', 'dhs.lima');

INSERT INTO amizadesprofessorempresa VALUES ('NelSon', 'cesmac.01'), ('NelSon', 'ufaldodeboche'), ('dhs.lima', 'ufaldodeboche'), ( 'pabloDosTeclados', 'ufaldodeboche');

INSERT INTO amizadesalunoempresa VALUES ('fabricio_arcanjo.09', 'cesmac.01'), ('melrickkj', 'ufaldodeboche'), ('fabricio_arcanjo.09', 'ufaldodeboche'), ( 'Kemylly._', 'ufaldodeboche');

INSERT INTO posts VALUES (1, "texto", "Sono, quero dormir", "Dois", "2021-09-30", 10), (2, 'video', 'IFAL - Jogos internos', 'amoo', '2022-08-23', 19), (3, "Foto", 'Vai Corinthians', 'eca', '2023-10-04', 109), (10, 'texto', "Vagas Abertas", 'Onde me inscrevo?', '2023-01-20', 5000), (20, 'foto', 'Prêmio de Xadrez, Pódio', 'Parabéns','2021-09-30', 1), (13, 'texto', 'Estou com tempo,  mas sem coragem', '*choro*', '2023-10-02', 32), (21, 'foto', "", 'Felicidades!', '2023-09-25', 109);

INSERT INTO postsaluno VALUES (1, "melrickkj"), (2, 'fabricio_arcanjo.09'), (3, 'fabricio_arcanjo.09');

INSERT INTO postsempresas VALUES (10, 'cesmac.01'), (20, 'ufaldodeboche');

INSERT INTO postsprofessores VALUES (21 , 'dhs.lima'), (13, 'NelSon');

INSERT INTO postssalvosalunos VALUES (13, 'fabricio_arcanjo.09'), (21, 'fabricio_arcanjo.09'), (20, 'melrickkj');

INSERT INTO postssalvosempresas VALUES (21, 'cesmac.01');

INSERT INTO postssalvosprofessores VALUES (2, 'NelSon');

INSERT INTO empresaAluno VALUES ('UFAL_oficial','LLL_Fabricio'), ('CesmacAL', 'MelrickD');

INSERT INTO empresaProfessor VALUES ('UFAL_oficial','Nenelson'), ('UFAL_oficial', 'dhs.lima');

INSERT INTO materias VALUES("POO-01", "Class"), ("BD-01", "Normalização"),("REDES-01", "Camadas de Aplicação");

INSERT INTO atividades VALUES(1, "POO-01", 100, "B, C, E, F"), (2, "BD-01", 1, "D, C, F, F"),(3, "REDES-01", 1000, "A, C, E, C"), (4, "BD-01",  10, "A, B, C, D");

INSERT INTO atividadealunos VALUES (1, 'BielzinhoDelas', "A, A, A, A", 9), (2, 'BielzinhoDelas', "B, A, D, A", 0), (3, 'BielzinhoDelas', "A, C, E, C", 1000),  (1, 'MelrickD', "A, C, A, F", 6), (2, 'MelrickD', "D, C, F, F", 1), (3, 'MelrickD', "D, C, F, F", 890),  (1, 'LLL_Fabricio', "B, C, E, F", 10), (2, 'LLL_Fabricio', "D, C, F, F", 1), (3, 'LLL_Fabricio', "A, C, E, C", 1000), (1, 'Qemmili13', "B, C, E, F", 10), (2, 'Qemmili13', "D, C, F, F",  1), (3, 'Qemmili13', "A, C, E, A", 999);  

INSERT INTO atividadeturma VALUES (4, 3, "", "2023-10-08");

INSERT INTO conteudo VALUES('2020-01-01', "POO-01", "Apostila 12"), ('2020-01-01', "BD-01","Apostila 134"),('2020-01-01', "REDES-01", "Apostila 189");

INSERT INTO videoaula VALUES('2020-01-01', "POO-01",  156, 'Belissima', '2021-09-30', 100), ('2023-07-09', "BD-01", 30, 'Amei', '2023-07-09', 900),('2022-10-01', "REDES-01", 34, 'ODEIO REDES', '2022-10-01', 2);

INSERT INTO alunoturma VALUES ("BielzinhoDelas", 2022305322 , 2), ('LLL_Fabricio', 2022308, 3), ('MelrickD', 2022192023, 3), ('Qemmili13', 12341214, 2), ("BielzinhoDelas", 2022305322, 4),('LLL_Fabricio', 2022308, 2),('Qemmili13', 12341214, 3), ('Qemmili13', 12341214, 4);

INSERT INTO materiaaluno VALUES("BielzinhoDelas", "POO-01"),( "BielzinhoDelas", "BD-01"), ("BielzinhoDelas", "REDES-01"), ( 'Qemmili13', "POO-01"), ('MelrickD', "REDES-01"),  ( 'MelrickD', "POO-01"), ('LLL_Fabricio', "BD-01");

INSERT INTO profturma VALUES('Nenelson', 2), ("pabloDosTeclados", 4), ("dhs.lima", 3);

INSERT INTO materiaprof VALUES('Nenelson', "POO-01"), ("pabloDosTeclados", "REDES-01"), ("dhs.lima", "BD-01");