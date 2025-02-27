CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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
('Tintas', 'Produtos para pintura e acabamento'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Hidráulica', 'Materiais para instalações hidráulicas'),
('Elétrica', 'Materiais para instalações elétricas'),
('Madeiras', 'Madeiras e derivados para construção');

INSERT INTO tb_produtos (nome, preco, estoque, categoria_id) VALUES
('Tinta Branca', 120.00, 50, 1),
('Tinta Vermelho', 90.00, 60, 1),
('Martelo', 70.00, 40, 2),
('Furadeira Elétrica', 250.00, 30, 2),
('Tubo PVC', 25.00, 100, 3),
('Registro de Pressão', 20.00, 80, 3),
('Fio Elétricom', 35.00, 70, 4),
('Disjuntor', 80.00, 25, 4),
('Tábua', 150.00, 15, 5),
('Viga', 130.00, 20, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;
SELECT p.*, c.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Hidráulica';