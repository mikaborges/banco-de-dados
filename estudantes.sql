CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(300) NOT NULL,
    data_nascimento VARCHAR(100) NOT NULL,
    matricula VARCHAR(200) NOT NULL,
    curso VARCHAR(100) NOT NULL,
    nota DECIMAL NOT NULL
);

INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Lucas Pereira", "15/03/2005", "20230001", "Matemática", 8.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Juliana Costa", "25/08/2004", "20230002", "Física", 7.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Raquel Almeida", "10/12/2003", "20230003", "Química", 9.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Felipe Rocha", "30/01/2006", "20230004", "Biologia", 6.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Sofia Martins", "18/06/2004", "20230005", "Engenharia Civil", 7.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Gabriel Lima", "23/05/2005", "20230006", "Arquitetura", 8.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Amanda Santos", "02/11/2004", "20230007", "História", 7.0);
INSERT INTO tb_estudantes (nome, data_nascimento, matricula, curso, nota) VALUES
("Thiago Souza", "12/09/2003", "20230008", "Matemática", 9.0); 

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0; 

SELECT * FROM tb_estudantes WHERE nota < 7.0; 

UPDATE tb_estudantes SET nota = 8 WHERE id = 4; 

SELECT * FROM tb_estudantes;

