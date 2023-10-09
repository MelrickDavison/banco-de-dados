SELECT nome FROM alunos;

SELECT senha FROM alunos WHERE login = "LLL_Fabricio";

#Inicial
SELECT apostilas FROM conteudo;

#Materias
SELECT nome FROM materias;
SELECT nome FROM assuntosMaterias;
#Atividades
SELECT titulo FROM atividades;
#Questões
SELECT gabarito FROM atividades;
#Placar
SELECT FK_Login, pontosConquistados FROM atividadealunos ORDER BY pontosConquistados DESC;
#Perfil Aluno
SELECT a.nome, a.foto, t.nome AS Turmas, a.pontos FROM alunos a 
JOIN alunoTurma atu ON  a.login = atu.FK_login
JOIN turmas t ON t.Id = atu.FK_IdTurma;
#Materia-Conteudo
SELECT c.apostilas FROM conteudo c JOIN materias m ON c.FK_IdMaterias = m.IdMateria;
#Materia-VideoAulas
SELECT titulo, video FROM videoAula;

#Turmas
SELECT nome FROM turmas;
SELECT * FROM atividadeturma atu JOIN atividades atv ON atv.Id = atu.FK_IdAtividade;

#Participantes Turma;
SELECT a.nome FROM alunos a JOIN alunoTurma atu ON atu.FK_login = a.login
JOIN turmas t ON t.Id = atu.FK_IdTurma WHERE t.nome = "Matemática";
#Atividade da turma
SELECT atv.titulo FROM atividades atv JOIN atividadeTurma atvt ON atv.Id = atvt.FK_idTurma;
#Comentarios Atividade 
SELECT comentarios FROM atividades;

#tela apostilas
SELECT c.apostilas FROM conteudo c JOIN materias m ON c.FK_IdMaterias = m.IdMateria WHERE nome = "Banco de Dados";
#Video aulas
SELECT vd.video, vd.titulo FROM videoaula vd JOIN materias m ON m.IdMateria = vd.FK_IdMaterias WHERE m.nome = "Programação Orientada a Objetos";
#Perfil visualizar Professor
SELECT nome, curriculo FROM professores;
SELECT e.nome AS nomeEmpresa, vv.descricao FROM vagasVinculo vv JOIN empresa e ON e.login = vv.FK_loginEmpresa;


#Rede Social
SELECT conteudo, likes FROM posts;
SELECT * FROM storysAluno;
SELECT * FROM storysProfessores;
SELECT * FROM storys
