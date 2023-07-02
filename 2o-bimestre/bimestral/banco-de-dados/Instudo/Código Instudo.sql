CREATE database instudo;
USE instudo;

CREATE TABLE usuarios(
login VARCHAR(50),
endereco VARCHAR(50),
telefone VARCHAR(14),

PRIMARY KEY(login)
);

CREATE TABLE alunos(
FK_login VARCHAR(50),
 matricula INT,
 dataNasc VARCHAR(10),
 FOREIGN KEY (FK_login) REFERENCES usuarios(login),
 PRIMARY KEY(matricula, FK_login) 
);

CREATE TABLE professores(
FK_login VARCHAR(50),
especializacao VARCHAR(50),

FOREIGN KEY(FK_login) REFERENCES usuarios(login),
PRIMARY KEY(FK_login)
);

CREATE TABLE empresa(
FK_login VARCHAR(50),
cnpj VARCHAR(18),

FOREIGN KEY(FK_login) REFERENCES usuarios(login),
PRIMARY KEY(cnpj, FK_login)
);

CREATE TABLE perfil(
FK_login VARCHAR(50),
nomeUser VARCHAR(50),
dataDeCriacao VARCHAR(10),

FOREIGN KEY(FK_login) REFERENCES usuarios(login),
PRIMARY KEY(nomeUser, FK_login)
);

CREATE TABLE posts(
FK_nomeUser VARCHAR(50),
tipo VARCHAR(50),
conteudo VARCHAR(50),

FOREIGN KEY(FK_nomeUser) REFERENCES perfil(nomeUser),
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

FOREIGN KEY (FK_login) REFERENCES usuarios(login),
FOREIGN KEY (FK_IdTurma) REFERENCES turmas(ID),

PRIMARY KEY(FK_login, FK_IdTurma)
);

CREATE TABLE alunoTurma(
FK_login VARCHAR(50),
FK_matricula INT,
FK_IdTurma INT,

FOREIGN KEY (FK_login) REFERENCES usuarios(login),
FOREIGN KEY (FK_matricula) REFERENCES alunos(matricula),
FOREIGN KEY (FK_IdTurma) REFERENCES turmas(ID),

PRIMARY KEY(FK_login, FK_matricula, FK_IdTurma)
);

CREATE TABLE materias(
IdMateria VARCHAR(50),
assuntos VARCHAR(50),

PRIMARY KEY(IdMateria)
);

CREATE TABLE materiaProf(
FK_login VARCHAR(50),
FK_IdMateria VARCHAR(50),

FOREIGN KEY(FK_login) REFERENCES usuarios(login),
FOREIGN KEY(FK_IdMateria) REFERENCES materias(IdMateria),

PRIMARY KEY(FK_login, FK_IdMateria)
);

CREATE TABLE materiaAluno(
FK_matricula INT,
FK_login VARCHAR(50),
FK_IdMateria VARCHAR(50),

FOREIGN KEY(FK_matricula) REFERENCES alunos(matricula),
FOREIGN KEY(FK_login) REFERENCES usuarios(login),
FOREIGN KEY(FK_IdMateria) REFERENCES materias(IdMateria),

PRIMARY KEY(FK_login, FK_IdMateria)
);

CREATE TABLE atividades(
FK_IdMaterias VARCHAR(50),
quantPontos INT,
gabarito VARCHAR(50),

FOREIGN KEY(FK_IdMaterias) REFERENCES materias(IdMateria),
PRIMARY KEY(FK_IdMaterias)
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
