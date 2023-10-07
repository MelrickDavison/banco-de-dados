CREATE database instudo;
USE instudo;


CREATE TABLE alunos(
login VARCHAR(50) NOT NULL,
nome VARCHAR(50) NOT NULL,
senha VARCHAR(50) NOT NULL,
nascimento DATE NOT NULL,
foto VARCHAR(50),
matricula INT UNIQUE NOT NULL,
pontos INT,

 PRIMARY KEY(login) 
);

CREATE TABLE professores(
login VARCHAR(50) NOT NULL,
nome VARCHAR(50) NOT NULL,
senha VARCHAR(50) NOT NULL,
nascimento DATE NOT NULL,
foto VARCHAR(50),
especializacao VARCHAR(50) NOT NULL,
curriculo varchar(50) NOT NULL,
siape VARCHAR(50) NOT NULL,

PRIMARY KEY(login)
);

CREATE TABLE empresa(
login VARCHAR(50) NOT NULL,
nome VARCHAR(50) NOT NULL,
senha VARCHAR(50) NOT NULL,
foto VARCHAR(50) ,
cnpj VARCHAR(18) NOT NULL,
PRIMARY KEY(login)
);

CREATE TABLE perfilAluno(
FK_login VARCHAR(50),
nomeUser VARCHAR(50) NOT NULL UNIQUE,
dataDeCriacao DATE,
seguidores INT,

FOREIGN KEY(FK_login) REFERENCES alunos(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE perfilEmpresa(
FK_login VARCHAR(50),
nomeUser VARCHAR(50) UNIQUE,
dataDeCriacao DATE,
seguidores INT,

FOREIGN KEY(FK_login) REFERENCES empresa(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE perfilprofessores(
FK_login VARCHAR(50),
nomeUser VARCHAR(50) UNIQUE,
dataDeCriacao DATE,
seguidores INT,

FOREIGN KEY(FK_login) REFERENCES professores(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE amizadesAlunos(
	FK_userAluno VARCHAR(50),
    FK_userAluno2 VARCHAR(50),
    FOREIGN KEY(FK_userAluno) REFERENCES perfilAluno(nomeuser),
    FOREIGN KEY(FK_userAluno2) REFERENCES perfilAluno(nomeuser),
    PRIMARY KEY(FK_userAluno, FK_userAluno2)
);

CREATE TABLE amizadesAlunoProfessor(
	FK_userAluno VARCHAR(50),
    FK_userProfessor VARCHAR(50),
    FOREIGN KEY(FK_userAluno) REFERENCES perfilAluno(nomeuser),
    FOREIGN KEY(FK_userProfessor) REFERENCES perfilProfessores(nomeuser),
    PRIMARY KEY(FK_userAluno, FK_userProfessor)
);

CREATE TABLE amizadesAlunoEmpresa(
	FK_userAluno VARCHAR(50),
    FK_userEmpresa VARCHAR(50),
    FOREIGN KEY(FK_userAluno) REFERENCES perfilAluno(nomeuser),
    FOREIGN KEY(FK_userEmpresa) REFERENCES perfilEmpresa(nomeuser),
    PRIMARY KEY(FK_userAluno, FK_userEmpresa)
);

CREATE TABLE amizadesProfessorEmpresa(
    FK_userProfessor VARCHAR(50),
    FK_userEmpresa VARCHAR(50),
    FOREIGN KEY(FK_userProfessor) REFERENCES perfilProfessores(nomeuser),
    FOREIGN KEY(FK_userEmpresa) REFERENCES perfilEmpresa(nomeuser),
    PRIMARY KEY(FK_userProfessor, FK_userEmpresa)
);

CREATE TABLE empresaProfessor(
	FK_loginEmpresa VARCHAR(50),
    FK_loginProfessor VARCHAR(50),
    FOREIGN KEY(FK_loginEmpresa) REFERENCES empresa(login),
    FOREIGN KEY(FK_loginProfessor) REFERENCES professores(login),
    PRIMARY KEY(FK_loginEmpresa, FK_loginProfessor)
);

CREATE TABLE empresaAluno(
	FK_loginEmpresa VARCHAR(50),
    FK_loginAluno VARCHAR(50),
    FOREIGN KEY(FK_loginEmpresa) REFERENCES empresa(login),
    FOREIGN KEY(FK_loginAluno) REFERENCES alunos(login),
    PRIMARY KEY(FK_loginEmpresa, FK_loginAluno)
);


CREATE TABLE postsAluno(
id INT UNIQUE,
FK_nomeUser VARCHAR(50),


tipo VARCHAR(50),
conteudo VARCHAR(50),
comentarios VARCHAR(250),
dtComentario DATE NOT NULL,
likes INT,

FOREIGN KEY(FK_nomeUser) REFERENCES perfilAluno(nomeUser),
#INDEX idxPostsAluno(id),
PRIMARY KEY(FK_nomeUser, id)
);

CREATE TABLE postsprofessores(
id INT UNIQUE,
FK_nomeUser VARCHAR(50),


tipo VARCHAR(50),
conteudo VARCHAR(50),
comentarios VARCHAR(250),
dtComentario DATE NOT NULL,
likes INT,

FOREIGN KEY(FK_nomeUser) REFERENCES perfilprofessores(nomeUser),
PRIMARY KEY(FK_nomeUser, id)
);

CREATE TABLE postsempresas(
id INT UNIQUE,
FK_nomeUser VARCHAR(50),


tipo VARCHAR(50),
conteudo VARCHAR(50),
comentarios VARCHAR(250),
dtComentario DATE NOT NULL,
likes INT,

FOREIGN KEY(FK_nomeUser) REFERENCES perfilempresa(nomeUser),
PRIMARY KEY(FK_nomeUser, id)
);

CREATE TABLE postsSalvosAlunos(
FK_idPost INT, 
FK_nomeUser VARCHAR(50), 
FOREIGN KEY(FK_idPost) REFERENCES postsAluno(id),
FOREIGN KEY(FK_nomeUser) REFERENCES perfilAluno(nomeUser),

PRIMARY KEY(FK_idPost, FK_nomeUser)

);

CREATE TABLE postsSalvosProfessores(
FK_idPost INT,
FK_nomeUser VARCHAR(50),

FOREIGN KEY(FK_nomeUser) REFERENCES perfilprofessores(nomeUser),
FOREIGN KEY(FK_idPost) REFERENCES postsProfessores(id),

PRIMARY KEY(FK_idPost, FK_nomeUser)
);

CREATE TABLE postsSalvosEmpresas(
FK_idPost INT,
FK_nomeUser VARCHAR(50),

FOREIGN KEY(FK_nomeUser) REFERENCES perfilempresa(nomeUser),
FOREIGN KEY(FK_idPost) REFERENCES postsEmpresas(id),

PRIMARY KEY(FK_idPost, FK_nomeUser)
);


CREATE TABLE turmas(
ID INT,
 nome VARCHAR(50),

PRIMARY KEY(ID)
);

CREATE TABLE profTurma(
FK_login VARCHAR(50),
FK_IdTurma INT,

FOREIGN KEY (FK_login) REFERENCES professores(login),
FOREIGN KEY (FK_IdTurma) REFERENCES turmas(ID),

PRIMARY KEY(FK_login, FK_IdTurma)
);

CREATE TABLE alunoTurma(
FK_login VARCHAR(50),
FK_matricula INT,
FK_IdTurma INT,

FOREIGN KEY (FK_login) REFERENCES alunos(login),
FOREIGN KEY (FK_IdTurma) REFERENCES turmas(ID),

PRIMARY KEY(FK_login, FK_IdTurma)
);

CREATE TABLE materias(
IdMateria VARCHAR(50),
assuntos VARCHAR(50),

PRIMARY KEY(IdMateria)
);

CREATE TABLE materiaProf(
FK_login VARCHAR(50),
FK_IdMateria VARCHAR(50),

FOREIGN KEY(FK_login) REFERENCES professores(login),
FOREIGN KEY(FK_IdMateria) REFERENCES materias(IdMateria),

PRIMARY KEY(FK_login, FK_IdMateria)
);

CREATE TABLE materiaAluno(
FK_login VARCHAR(50),
FK_IdMateria VARCHAR(50),

FOREIGN KEY(FK_login) REFERENCES alunos(login),
FOREIGN KEY(FK_IdMateria) REFERENCES materias(IdMateria),

PRIMARY KEY(FK_login, FK_IdMateria)
);

CREATE TABLE atividades(
Id INT auto_increment,
FK_IdMaterias VARCHAR(50),
quantPontos INT,
gabarito VARCHAR(50),

FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(Id, FK_IdMaterias)
);

CREATE TABLE atividadeAlunos(
FK_IdAtividade INT,
FK_Login VARCHAR(50),
resposta VARCHAR(50),
pontosConquistados INT,

FOREIGN KEY (FK_IdAtividade) REFERENCES atividades(Id),
FOREIGN KEY (FK_Login) REFERENCES alunos(login),

PRIMARY KEY(FK_IdAtividade, FK_Login)
);

CREATE TABLE conteudo(
dtConteudo DATE,
FK_IdMaterias VARCHAR(50),
apostilas VARCHAR(50),

FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(FK_IdMaterias)
);

CREATE TABLE videoAula(
dtConteudo DATE,
FK_IdMaterias VARCHAR(50),
duracao INT,
comentarios VARCHAR(250),
dtComentario DATE NOT NULL,
likes INT,
FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(FK_IdMaterias)
);
