CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(200) NOT NULL,
    descricao VARCHAR(250) NOT NULL
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Calabresa", "Pizzas com calabresa como ingrediente principal");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Frango", "Pizzas com frango de ingrediente principal");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Vegetariana", "Pizzas com ingredientes vegetarianos");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Mussarela", "Pizzas com queijo mussarela");
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ("Especial", "Pizzas com ingredientes especiais");

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(200) NOT NULL,
    valor DECIMAL NOT NULL,
    tamanho VARCHAR(100) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Calabresa Tradicional", 49.00, "Grande", 1);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Frango com Catupiry", 42.00, "Média", 2);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Vegetariana com Queijo de Cabra", 55.00, "Grande", 3);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Mussarela Clássica", 38.00, "Pequena", 4);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Especial de Camarão", 70.00, "Grande", 5);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Calabresa com Cebola", 50.00, "Média", 1);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Frango com Bacon", 52.00, "Grande", 2);
INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, categoria_id)
VALUES ("Pizza Vegetariana Gourmet", 50.00, "Média", 3);

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas; 

SELECT nome_pizza, valor FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.*, tb_categorias.nome_categoria, tb_categorias.descricao FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Calabresa";





