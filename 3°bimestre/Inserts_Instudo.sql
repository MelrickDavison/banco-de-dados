INSERT INTO alunos VALUES  ('BielzinhoDelas', 'Gabriel Luiz', 'soubunito22', "2006-04-20", "", 2022305322, 1009), ('LLL_Fabricio','Fabricio Arcanjo','fabricio9','2006-09-06', '', 2022308, 1011), ('MelrickD', 'Melrick Davison','melrick2016','2006-09-04', '', 2022192023, 897), ('Qemmili13', 'Kemylly Gabrielly','soucorinthiana','2006-07-15','', 12341214, 1011);

INSERT INTO empresa VALUES ('oscorp_oficial','OSCORP','ihateSpiderMan19','', '192120130'), ('CesmacAL','CESMAC','Cesmac123', "",'13123124'), ('UFAL_oficial','UFAL','ufalzinhodoscria','','213981209');

INSERT INTO professores VALUES ('dhs.lima','David','david1314','1990-09-13','','Mestrado','','19000'), ('Nenelson', 'Elinelson', 'ilovematematica', '1890-10-23', '', 'Mestrado', '', '09131'), ('pabloDosTeclados','Pablo','2555.255.255.255','1999-03-10','', 'Graduado', '', '192109');

INSERT INTO turmas VALUES ( 1, 'Português'), ( 2, "Matematica"), (3, "Banco de Dados"), ( 4, "Redes");

INSERT INTO perfilaluno VALUES ('LLL_Fabricio','fabricio_arcanjo.09','2021-09-30', 109),('BielzinhoDelas','gabrielLuiz','2020-02-21', 256),('Qemmili13','Kemylly._','2022-12-13', 109),('MelrickD','melrickkj','2023-10-14', 12);

INSERT INTO perfilempresa VALUES ('CesmacAL','cesmac.01','2009-08-26', 109000), ('UFAL_oficial','ufaldodeboche','2014-10-10', 950),('oscorp_oficial','oscorp.oroscopo','2013-12-17', 120001);

INSERT INTO perfilprofessores VALUES ('Nenelson','NelSon','2010-01-15', 19000),('dhs.lima','dhs.lima','2017-03-25', 231),('pabloDosTeclados','Pablo','2007-07-07', 156);

INSERT INTO storys VALUES(1, 'foto', '2023-10-08'), (12,  'foto', '2023-10-08'), (13,  'foto', '2023-10-08');

INSERT INTO storysaluno VALUES ('fabricio_arcanjo.09', 1);

INSERT INTO storysempresa VALUES ('cesmac.01', 12);

INSERT INTO storysprofessores VALUES ('NelSon', 13);

INSERT INTO amizadesalunos VALUES ('fabricio_arcanjo.09', 'gabrielLuiz', "Bora fazer Banco?"), ('gabrielLuiz', 'Kemylly._', ""), ('melrickkj', 'Qemmili13', ""), ('fabricio_arcanjo.09', 'Kemylly._', "sksksksksk"), ('fabricio_arcanjo.09', 'melrickkj', "Oi, tudo bem?");

INSERT INTO amizadesalunoprofessor VALUES ('fabricio_arcanjo.09', 'NelSon', ""), ('gabrielLuiz', 'NelSon', ""), ('melrickkj', 'dhs.lima', "Bom dia"), ('fabricio_arcanjo.09', 'dhs.lima', "Oii"), ('fabricio_arcanjo.09', 'pabloDosTeclados', "Me tira uma dúvida"), ('Kemylly._', 'dhs.lima', "Bora adiar a atividade bora?");

INSERT INTO amizadesprofessorempresa VALUES ('NelSon', 'cesmac.01', "Oi"), ('NelSon', 'ufaldodeboche', "Olá"), ('dhs.lima', 'ufaldodeboche', "Bom dia, segue os requerimentos"), ( 'pabloDosTeclados', 'ufaldodeboche', "");

INSERT INTO amizadesalunoempresa VALUES ('fabricio_arcanjo.09', 'cesmac.01',""), ('melrickkj', 'ufaldodeboche', ""), ('fabricio_arcanjo.09', 'ufaldodeboche', ""), ( 'Kemylly._', 'ufaldodeboche', "");

INSERT INTO posts VALUES (1, "texto", "Sono, quero dormir", "Dois", "2021-09-30", 10), (2, 'video', 'IFAL - Jogos internos', 'amoo', '2022-08-23', 19), (3, "Foto", 'Vai Corinthians', 'eca', '2023-10-04', 109), (10, 'texto', "Vagas Abertas", 'Onde me inscrevo?', '2023-01-20', 5000), (20, 'foto', 'Prêmio de Xadrez, Pódio', 'Parabéns','2021-09-30', 1), (13, 'texto', 'Estou com tempo,  mas sem coragem', '*choro*', '2023-10-02', 32), (21, 'foto', "", 'Felicidades!', '2023-09-25', 109);

INSERT INTO postsaluno VALUES (1, "melrickkj"), (2, 'fabricio_arcanjo.09'), (3, 'fabricio_arcanjo.09');

INSERT INTO postsempresas VALUES (10, 'cesmac.01'), (20, 'ufaldodeboche');

INSERT INTO postsprofessores VALUES (21 , 'dhs.lima'), (13, 'NelSon');

INSERT INTO postssalvosalunos VALUES (13, 'fabricio_arcanjo.09'), (21, 'fabricio_arcanjo.09'), (20, 'melrickkj');

INSERT INTO postssalvosempresas VALUES (21, 'cesmac.01');

INSERT INTO postssalvosprofessores VALUES (2, 'NelSon');

INSERT INTO vagasVinculo VALUES ("UFAL_oficial", 1, "Procura-se Professor de física com mestrado."), ("CesmacAL", 2, "Procura-se estudante interessado na área de T.I"), ("UFAL_oficial", 3, "Procura-se estudante interessado na área de T.I");

INSERT INTO empresaAluno VALUES ('UFAL_oficial','LLL_Fabricio', 3), ( 'CesmacAL', 'MelrickD', 2);

INSERT INTO empresaProfessor VALUES (1, 'UFAL_oficial','Nenelson'), (1, 'UFAL_oficial', 'dhs.lima');

INSERT INTO materias VALUES("POO-01", "Programação Orientada a Objetos"), ("BD-01", "Banco de Dados"),("REDES-01", "Introdução a Redes");

INSERT INTO atividades VALUES(1, "Nenelson", "POO-01", 2, "2023-09-08", "Atividade de Classes", 100, "B, C, E, F", ""), (2, "dhs.lima", "BD-01", 3, '2022-04-01', 'Atividade Recuperação', 1, "D, C, F, F", ""),(3, "pabloDosTeclado", "REDES-01", 1, '2021-05-23', 'Atividade Fixação', 1000, "A, C, E, C", ""), (4, "dhs.lima","BD-01", 5, "2022-04-02", "Atividade MySql",  10, "A, B, C, D", "");

INSERT INTO assuntosmaterias VALUES( 2, "POO-01", "Classes", "Conceito e macetes"), ( 3, "BD-01", "Entidade Relacionamento", "Dicas de como fazer"), ( 1, "REDES-01", "Camada de Aplicação", "Conceitos"), ( 5, "BD-01", "MySql", "Instalar e atalhos");

INSERT INTO atividadealunos VALUES (1, 'BielzinhoDelas', "A, A, A, A", 9), (2, 'BielzinhoDelas', "B, A, D, A", 0), (3, 'BielzinhoDelas', "A, C, E, C", 1000),  (1, 'MelrickD', "A, C, A, F", 6), (2, 'MelrickD', "D, C, F, F", 1), (3, 'MelrickD', "D, C, F, F", 890),  (1, 'LLL_Fabricio', "B, C, E, F", 10), (2, 'LLL_Fabricio', "D, C, F, F", 1), (3, 'LLL_Fabricio', "A, C, E, C", 1000), (1, 'Qemmili13', "B, C, E, F", 10), (2, 'Qemmili13', "D, C, F, F",  1), (3, 'Qemmili13', "A, C, E, A", 999);  

INSERT INTO atividadeturma VALUES (4, 3, "");

INSERT INTO conteudo VALUES('2020-01-01', "POO-01", "Nenelson", "Apostila 12"), ('2020-01-01', "BD-01", "dhs.lima","Apostila 134"),('2020-01-01', "REDES-01", "pabloDosTeclados","Apostila 189");

INSERT INTO videoaula VALUES("Nenelson", '2020-01-01', "POO-01", "Classes","", 156, 'Belissima', '2021-09-30', 100), ("dhs.lima", '2023-07-09', "BD-01", "Entidade Relacionamento", "", 30, 'Amei', '2023-07-09', 900),("pabloDosTeclados", '2022-10-01', "REDES-01", "Camada de Aplicação", "",34, 'ODEIO REDES', '2022-10-01', 2);

INSERT INTO alunoturma VALUES ("BielzinhoDelas", 2022305322 , 2), ('LLL_Fabricio', 2022308, 3), ('MelrickD', 2022192023, 3), ('Qemmili13', 12341214, 2), ("BielzinhoDelas", 2022305322, 4),('LLL_Fabricio', 2022308, 2),('Qemmili13', 12341214, 3), ('Qemmili13', 12341214, 4);

INSERT INTO profturma VALUES('Nenelson', 2), ("pabloDosTeclados", 4), ("dhs.lima", 3);

INSERT INTO materiaprof VALUES('Nenelson', "POO-01"), ("pabloDosTeclados", "REDES-01"), ("dhs.lima", "BD-01");
