-- Seleciona os aluno que estão matriculados na materia de POO
SELECT * FROM materiaaluno WHERE FK_idMateria = "POO-01";
-- Conte quantos alunos estão na turma de história
SELECT COUNT(*) FROM alunoturma WHERE FK_IdTurma = 34;
-- Mostre apenas as turmas com mais de dois alunos
SELECT FK_IdTurma FROM alunoturma GROUP BY FK_IdTurma HAVING COUNT(FK_matricula) > 2;
-- Quantos alunos existem na turma de Informática
SELECT COUNT(*) FROM alunoturma WHERE FK_IdTurma = 12;
-- Mostre os alunos que estão na turma de programação
SELECT FK_login AS alunos FROM alunoturma WHERE FK_IdTurma = 23;
-- Quantas matérias distintas existem?
SELECT DISTINCT(FK_IdMateria) FROM materiaaluno;
-- Mostre o total de alunos cadastrados em materias?
SELECT COUNT(DISTINCT(FK_matricula)) FROM materiaaluno;
-- Quais alunos estão na turma de programação ou de informática?
SELECT FK_login AS nome, FK_IdTurma AS turma FROM alunoturma WHERE FK_IdTurma = 23 OR FK_IdTurma = 12;
-- Quais são os professores que ministram as turmas de Informática e de História?
SELECT FK_login FROM profturma WHERE FK_IdTurma = 23 OR FK_IdTurma = 12;
-- Mostre os alunos cadastrados na matéria de história em ordem crescente
SELECT FK_login AS alunos, FK_matricula AS matricula, FK_idTurma FROM alunoturma WHERE FK_IdTurma = 34 ORDER BY FK_login ASC;
-- Qual a especialização do professor David?
SELECT especializacao FROM professores WHERE FK_login = "David";
-- Quais as vídeos aulas que possuem menos de 100 minutos de duração? Mostre-as em ordem crescente.
SELECT * FROM videoaula WHERE duracao < 100 ORDER BY duracao ASC;
