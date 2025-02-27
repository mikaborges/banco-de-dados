CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Cortes de carne provenientes de gado'),
('Carnes Suínas', 'Cortes de carne provenientes de porcos'),
('Aves', 'Carnes provenientes de frangos, perus e outras aves'),
('Embutidos', 'Produtos processados como salsichas, linguiças e presuntos'),
('Carnes Exóticas', 'Carnes de animais como javali, cordeiro e outros');

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Picanha', 120.00, 50, 1),
('Contrafilé', 90.00, 60, 1),
('Lombo Suíno', 70.00, 40, 2),
('Costelinha de Porco', 50.00, 30, 2),
('Peito de Frango', 25.00, 100, 3),
('Coxa de Frango', 20.00, 80, 3),
('Linguiça Toscana', 35.00, 70, 4),
('Presunto Parma', 80.00, 25, 4),
('Filé de Javali', 150.00, 15, 5),
('Cordeiro', 130.00, 20, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.*, c.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT p.*, c.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Aves';
