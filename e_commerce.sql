CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    descricao VARCHAR(350) NOT NULL,
    categoria VARCHAR(200) NOT NULL,
    preco DECIMAL NOT NULL,
    estoque INT NOT NULL
); 

INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Smartphone Samsung G AA55", "Celular com 128GB de armazenamento e câmera de 64MP", "Eletrônicos", 2500.00, 15);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Teclado Mecânico", "Teclado gamer com switches mecânicos e iluminação RGB", "Informática", 400.00, 20);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Headset Gamer", "Fone de ouvido com som surround 7.1 e microfone removível", "Acessórios", 349.00, 18);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Jaqueta Corta Vento", "Jaqueta impermeável, ideal para dias chuvosos", "Moda", 229.00, 25);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Mochila Executiva", "Mochila resistente com compartimento para notebook", "Acessórios", 200.00, 30);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Mouse Sem Fio", "Mouse ergonômico com conexão Bluetooth e USB", "Periféricos", 149.00, 40);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Echo Smart Speaker", "Caixa de som inteligente com assistente de voz", "Eletrônicos", 499.00, 10);
INSERT INTO tb_produtos (nome, descricao, categoria, preco, estoque) VALUES
("Câmera de Segurança Wi-Fi", "Câmera Full HD com visão noturna e detecção de movimento", "Segurança", 299.00, 15); 

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500; 

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 320.00 WHERE id = 3; 

SELECT * FROM tb_produtos; 








