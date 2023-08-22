CREATE DATABASE SistemaAcad;
USE SistemaAcad;

CREATE TABLE Curso(
 id INT AUTO_INCREMENT,
 nome VARCHAR(50),
 PRIMARY KEY(id)
);

CREATE TABLE Professor(
 siape INT,
 nome VARCHAR(50),
 email VARCHAR(50),
 PRIMARY KEY(siape)
);

CREATE TABLE Disciplina(
 id INT AUTO_INCREMENT,
 nome VARCHAR(50),
 FK_id_professor INT, PRIMARY KEY(id),
 FOREIGN KEY(FK_id_professor) REFERENCES Professor(siape)
);

CREATE TABLE CursoDisciplina(
 FK_id_curso INT,
 FK_id_disciplina INT,
 PRIMARY KEY(FK_id_curso,FK_id_disciplina),
 FOREIGN KEY(FK_id_disciplina) REFERENCES Disciplina(id),
 FOREIGN KEY(FK_id_curso) REFERENCES Curso(id)
);

CREATE TABLE Aluno(
 matricula INT AUTO_INCREMENT,
 nome VARCHAR(50),
 nascimento DATE,
 email VARCHAR(50),
 telefone VARCHAR(10),
 FK_id_curso INT, PRIMARY KEY(matricula),
 FOREIGN KEY(FK_id_curso) REFERENCES Curso(id)
);

CREATE TABLE AlunoDisciplina(
 FK_matricula INT,
 FK_id_disciplina INT,
 nota DOUBLE, PRIMARY KEY(FK_matricula, FK_id_disciplina),
 FOREIGN KEY(FK_matricula) REFERENCES Aluno(matricula),
 FOREIGN KEY(FK_id_disciplina) REFERENCES Disciplina(id)
);
