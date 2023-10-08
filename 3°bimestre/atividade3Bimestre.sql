# Listar em ordem decrescente as turmas com mais participantes
SELECT t.nome, t.Id FROM turmas t JOIN alunoturma atu ON t.Id = atu.FK_IdTurma GROUP BY t.Id ORDER BY count(*) DESC;

# Quem são os melhores estudantes em cada atividade
SELECT * FROM atividadealunos GROUP BY FK_IdAtividade, FK_Login ORDER BY MAX(pontosConquistados) DESC;



SELECT aa.FK_Login AS Nome, atv.Id AS Atividade, aa.pontosConquistados AS Pontos FROM atividadealunos aa 
JOIN atividades atv ON atv.Id = aa.FK_IdAtividade
JOIN alunos a ON aa.FK_Login = a.Login
GROUP BY FK_IdAtividade, aa.FK_Login ORDER BY pontosConquistados DESC; 


SELECT a.nome, atv.Id AS Atividade FROM alunos a 
JOIN atividadealunos aa ON a.login = aa.FK_Login 
JOIN atividades atv ON atv.Id = aa.FK_IdAtividade
GROUP BY atv.Id
ORDER BY pontosConquistados DESC;

# Listar todos os posts de um determinado estudante
SELECT * FROM postsaluno WHERE FK_nomeUser = "fabricio_arcanjo.09";
# Listar todos as turmas no qual um estudante está inscrito
SELECT t.nome AS NomeTurma FROM turmas t JOIN alunoturma atu ON atu.FK_IdTurma = t.ID WHERE atu.FK_login = "MelrickD";
# Listar todas as respostas de um determinado usuário
SELECT  aa.FK_IdAtividade AS Atividade, aa.resposta FROM atividadealunos aa JOIN atividades atv ON atv.id = aa.FK_IdAtividade WHERE FK_Login = "LLL_Fabricio";