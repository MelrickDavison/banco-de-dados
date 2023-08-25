#Quais disciplinas o estudante David está cursando?
SELECT nome FROM disciplina WHERE id IN (
SELECT FK_id_disciplina FROM alunodisciplina WHERE FK_matricula = (
SELECT matricula FROM aluno WHERE nome = "David"));

# Utilizando o JOIN - NICE
SELECT d.nome FROM aluno a INNER JOIN alunoDisciplina ad 
ON ad.FK_matricula = a.matricula INNER JOIN disciplina d 
ON d.id = ad.FK_id_disciplina WHERE a.nome = "David";

#Quais as disciplinas que o prof. João leciona que David está matriculado?
SELECT nome FROM disciplina WHERE id IN (
SELECT FK_id_disciplina FROM alunodisciplina WHERE FK_matricula = (
SELECT matricula FROM aluno WHERE nome = "David")) AND FK_id_professor = (
SELECT siape FROM professor WHERE nome = "João");

# Utilizando o JOIN - NICE
SELECT d.nome as nomeDisciplina FROM disciplina d INNER JOIN alunodisciplina ad
ON d.id = ad.FK_id_disciplina INNER JOIN aluno a 
ON a.matricula = ad.FK_matricula INNER JOIN professor p 
ON p.siape = d.FK_id_professor 
WHERE a.nome = "David" AND p.nome = "João";


#Quais cursos o prof. João participa?
SELECT nome FROM curso WHERE id IN (
SELECT FK_id_curso FROM cursodisciplina WHERE FK_id_disciplina IN (
SELECT id FROM disciplina WHERE FK_id_professor = (
SELECT siape FROM professor WHERE nome = "João")));

# Utilizando o JOIN - NICE
SELECT distinct  c.nome AS nomeCurso FROM curso c INNER JOIN cursodisciplina cd 
ON c.id = cd.FK_id_curso INNER JOIN disciplina d
ON d.id = cd.FK_id_disciplina INNER JOIN professor p
ON p.siape = d.FK_id_professor WHERE p.nome = "João";

#Quais os alunos com maiores notas nas disciplinas do prof. João?
SELECT FK_id_disciplina, FK_matricula, nota FROM alunodisciplina WHERE FK_id_disciplina IN (
SELECT id FROM disciplina WHERE FK_id_professor = (
SELECT siape FROM professor WHERE nome = "João")) GROUP BY FK_id_disciplina HAVING MAX(nota);

# Utilizando o JOIN - ERRO
SELECT d.nome AS nomeDisciplina, ad.FK_matricula AS matricula, ad.nota FROM alunodisciplina ad INNER JOIN disciplina d 
ON d.id = ad.FK_id_disciplina INNER JOIN professor p 
ON p.siape = d.FK_id_professor WHERE p.nome = "João" GROUP BY ad.FK_id_disciplina HAVING MAX(ad.nota);

#Quais disciplinas os estudantes David e Henrique cursam juntos?
SELECT nome FROM disciplina WHERE id IN (
SELECT FK_id_disciplina FROM alunodisciplina WHERE FK_matricula = (
SELECT matricula FROM aluno WHERE nome = "David")) AND id IN (SELECT FK_id_disciplina FROM alunodisciplina WHERE FK_matricula = (
SELECT matricula FROM aluno WHERE nome = "Henrique"));

#Usando JOIN - NICE
SELECT d.nome FROM disciplina d INNER JOIN alunodisciplina ad
ON d.id = ad.FK_id_disciplina INNER JOIN aluno a 
ON ad.FK_matricula = a.matricula JOIN alunodisciplina ad2 
ON d.id = ad2.FK_id_disciplina JOIN aluno a2 
ON ad2.FK_matricula = a2.matricula 
WHERE a.nome = "Henrique" AND a2.nome = "David";


#Quais os estudantes que cursam Integrado em Informática?
SELECT nome FROM aluno WHERE FK_id_curso = (
SELECT id FROM curso WHERE nome = "Integrado em Informática");

#Utilizando o JOIN - NICE
SELECT a.nome FROM aluno a INNER JOIN curso c 
ON a.FK_id_curso = c.id WHERE c.nome = "Integrado em Informática";
