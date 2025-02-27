CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos farmacêuticos utilizados para tratar doenças'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Suplementos', 'Produtos para complementação nutricional'),
('Higiene', 'Produtos para cuidados com a higiene pessoal'),
('Herbais', 'Produtos à base de plantas para tratamentos naturais');


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Paracetamol 500mg', 15.00, 100, 1),
('Ibuprofeno 400mg', 20.00, 50, 1),
('Shampoo Antiqueda', 30.00, 70, 2),
('Condicionador Nutritivo', 28.00, 80, 2),
('Whey Protein', 150.00, 30, 3),
('Vitamina C 1000mg', 45.00, 120, 3),
('Sabonete Líquido', 10.00, 200, 4),
('Chá de Camomila', 8.00, 300, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.*, tb_categorias.nome FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT tb_produtos.*, tb_categorias.nome FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";





