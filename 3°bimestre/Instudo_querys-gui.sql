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

#Alunos participantes Turma;
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
SELECT * FROM storys;

#conversa
SELECT conversa from amizadesalunos;

#Bate-papo
SELECT conversa from amizadesalunos WHERE FK_userAluno = "fabricio_arcanjo.09" AND FK_userAluno2 = "Melrickkj";

#storys
SELECT pa.nomeUser, s.conteudo FROM perfilAluno pa JOIN storysAluno sa ON sa.FK_nomeUser = pa.nomeUser JOIN storys s ON s.IdStory = sa.FK_IdStory; 

#procurar
SELECT conteudo FROM posts;

#perfil 
SELECT nomeUser, seguidores FROM perfilAluno WHERE FK_login = "LLL_Fabricio";
SELECT p.conteudo FROM posts p JOIN postsaluno pa ON p.Id = pa.FK_Idpost
JOIN perfilaluno pe ON pe.nomeUser = pa.FK_nomeUser WHERE pe.nomeUser = "fabricio_arcanjo.09";
#perfil adicionar
SELECT nomeUser, seguidores FROM perfilAluno WHERE FK_login = "MelrickD";
SELECT p.conteudo FROM posts p JOIN postsaluno pa ON p.Id = pa.FK_Idpost
JOIN perfilaluno pe ON pe.nomeUser = pa.FK_nomeUser WHERE pe.nomeUser = "Melrickkj";

#Professor
#Perfil visualização Curriculo
SELECT curriculo FROM professores WHERE login = "dhs.lima";

#Perfil professor 
SELECT foto, nome, curriculo FROM professores WHERE login = "dhs.lima";
SELECT apostilas FROM  conteudo WHERE FK_login = "dhs.lima";
SELECT nomeUser FROM perfilprofessores WHERE FK_login = "dhs.lima";

#Inicial professor
SELECT apostilas FROm conteudo;

#Vagas de professores
SELECT FK_loginEmpresa AS empresa, descricao FROM vagasvinculo;

#Turmas Professores
SELECT t.nome FROM turmas t JOIN profturma pf ON pf.FK_IdTurma = t.ID WHERE pf.FK_login = "dhs.lima";

#Perfil rede social professor
SELECT p.foto, pe.nomeUser, p.curriculo, pe.seguidores FROM professores p JOIN perfilprofessores pe ON pe.FK_login = p.login WHERE login = "Nenelson";
SELECT p.conteudo FROM posts p JOIN postsProfessores pp ON p.Id = pp.FK_IdPost WHERE pp.FK_nomeUser = "NelSon";

#Empresa
#Perfil Empresa
SELECT nome, foto FROM empresa WHERE nome = "CESMAC";
SELECT * FROM posts p JOIN postsEmpresas pe ON pe.FK_IdPost = p.Id WHERE pe.FK_nomeUser = "cesmac.01"; 
#vagas de emprego 
SELECT v.descricao FROM vagasVinculo v JOIN empresa e ON e.login = v.FK_loginEmpresa WHERE e.login = "CesmacAL";

#candidatos
SELECT FK_loginProfessor FROM empresaProfessor WHERE FK_loginEmpresa = "CesmacAl";

#perfil Rede social Empresa
SELECT e.foto, pe.nomeUser, pe.seguidores FROM empresa e JOIN perfilempresa pe ON pe.FK_login = e.login WHERE e.login = "CesmacAL";
SELECT p.conteudo FROM posts p JOIN postsEmpresas pe ON p.Id = pe.FK_IdPost  WHERE pe.FK_nomeUser = "cesmac.01";
