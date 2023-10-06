CREATE database instudo;
USE instudo;


CREATE TABLE alunos(
login VARCHAR(50) NOT NULL,
nome VARCHAR(50) NOT NULL,
senha VARCHAR(50) NOT NULL,
nascimento DATE NOT NULL,
foto VARCHAR(50),
matricula INT UNIQUE NOT NULL,
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
nomeUser VARCHAR(50) NOT NULL,
dataDeCriacao DATE,

FOREIGN KEY(FK_login) REFERENCES alunos(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE perfilEmpresa(
FK_login VARCHAR(50),
nomeUser VARCHAR(50),
dataDeCriacao VARCHAR(10),

FOREIGN KEY(FK_login) REFERENCES empresa(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE perfilprofessores(
FK_login VARCHAR(50),
nomeUser VARCHAR(50),
dataDeCriacao VARCHAR(10),

FOREIGN KEY(FK_login) REFERENCES professores(login),
PRIMARY KEY(nomeUser)
);

CREATE TABLE postsAluno(
FK_nomeUser VARCHAR(50),


tipo VARCHAR(50),
conteudo VARCHAR(50),

FOREIGN KEY(FK_nomeUser) REFERENCES perfilAluno(nomeUser),
PRIMARY KEY(FK_nomeUser)
);

CREATE TABLE postsprofessores(
FK_nomeUser VARCHAR(50),


tipo VARCHAR(50),
conteudo VARCHAR(50),

FOREIGN KEY(FK_nomeUser) REFERENCES perfilprofessores(nomeUser),
PRIMARY KEY(FK_nomeUser)
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
pontosConquistados INT,

FOREIGN KEY (FK_IdAtividade) REFERENCES atividades(Id),
FOREIGN KEY (FK_Login) REFERENCES alunos(login),

PRIMARY KEY(FK_IdAtividade, FK_Login)
);

CREATE TABLE conteudo(
FK_IdMaterias VARCHAR(50),
apostilas VARCHAR(50),

FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(FK_IdMaterias)
);

CREATE TABLE videoAula(
FK_IdMaterias VARCHAR(50),
duracao INT,
FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(FK_IdMaterias)
);
