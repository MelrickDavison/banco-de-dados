SELECT nome FROM alunos;

SELECT senha FROM alunos WHERE login = "LLL_Fabricio";

#Materias
SELECT nome FROM materias;
SELECT assuntos FROM materias;
SELECT * FROM atividades;
#Materia-Conteudo
SELECT c.apostilas FROM conteudo c JOIN materias m ON c.FK_IdMaterias = m.IdMateria;
#Materia-VideoAulas
SELECT titulo, video FROM videoAula;

#Turmas
SELECT nome FROM turmas;
SELECT * FROM atividadeturma atu JOIN atividades atv ON atv.Id = atu.FK_IdAtividade;

#Perfil visualizar Professor
SELECT nome, curriculo FROM professores;
SELECT e.nome AS nomeEmpresa, vv.descricao FROM vagasVinculo vv JOIN empresa e ON e.login = vv.FK_loginEmpresa;
