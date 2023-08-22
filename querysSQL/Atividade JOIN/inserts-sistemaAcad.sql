INSERT INTO curso (nome) VALUES ("Integrado em Informática"), ("Subsequente em Informática");
INSERT INTO professor (siape, nome, email) VALUES (1, "João", "joao@ifal.edu.br"), (2, "José", "jose@ifal.edu.br");
INSERT INTO disciplina (nome, FK_id_professor) VALUES ("Info", 1), ("BD",1), ("EngSoft", 2), ("APS", 2);
INSERT INTO cursodisciplina (FK_id_curso, FK_id_disciplina) VALUES (1,1), (1,2), (1,3), (2,4);
INSERT INTO aluno (nome, nascimento, email, telefone, FK_id_curso) VALUES 
("David", "1989-04-02", "david.lima@ifal.edu.br", "11111111", 1),
("Henrique", "1989-04-02", "david.lima@ifal.edu.br", "11111111", 1),
("Souza", "1989-04-02", "david.lima@ifal.edu.br", "11111111", 2);
INSERT INTO alunodisciplina (FK_matricula, FK_id_disciplina, nota) VALUES 
(1,1,9), (1,2,8), (1,3,8), (2,1,5), (2,3,10);



