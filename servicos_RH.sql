CREATE DATABASE db_servicos_rh; 

USE db_servicos_rh;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(300) NOT NULL,
    cargo VARCHAR(250) NOT NULL,
    departamento VARCHAR(250) NOT NULL,
    salario DECIMAL NOT NULL,
    contato VARCHAR(250) NOT NULL
); 

INSERT INTO colaboradores (nome, cargo, departamento, salario, contato) 
VALUES ("Ana Carolina", "Analista de RH", "Recursos Humanos", 4500.00, "ana.carolina@em.com");
INSERT INTO colaboradores (nome, cargo, departamento, salario, contato) 
VALUES ("Caique Santos", "Desenvolvedor Backend pleno", "TI", 8700.00, "caique.santos@em.com");
INSERT INTO colaboradores (nome, cargo, departamento, salario, contato)
VALUES ("Fernanda Lima", "Gerente Financeira", "Financeiro", 8500.00, "fernanda.lima@em.com");
INSERT INTO colaboradores (nome, cargo, departamento, salario, contato)
VALUES ("João Paulo", "Assistente administrativo", "administração", 3100.00, "joao.paulo@em.com");
INSERT INTO colaboradores (nome, cargo, departamento, salario, contato)
VALUES ("Mariana Oliveira", "Designer", "Marketing", 5200.00, "mariana.oliveira@em.com");  

SELECT * FROM colaboradores; 

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 9000.00 WHERE id = 2;

SELECT * FROM colaboradores; 
 













