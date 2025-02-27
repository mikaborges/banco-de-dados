CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    duracao_horas INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tecnologia', 'Cursos relacionados a programação, desenvolvimento e TI'),
('Negócios', 'Cursos sobre gestão, empreendedorismo e finanças'),
('Design', 'Cursos de design gráfico, UX/UI e ferramentas de criação'),
('Marketing', 'Cursos sobre marketing d igital, SEO e redes sociais'),
('Saúde', 'Cursos relacionados a saúde, bem-estar e nutrição');

INSERT INTO tb_cursos (nome, preco, duracao_horas, categoria_id) VALUES
('Curso de Python', 300.00, 40, 1),
('Curso de Java', 650.00, 50, 1),
('Gestão de Projetos', 250.00, 30, 2),
('Empreendedorismo Digital', 200.00, 25, 2),
('Design Gráfico com Photoshop', 180.00, 20, 3),
('UX/UI Design', 280.00, 35, 3),
('Marketing de Conteúdo', 150.00, 15, 4),
('SEO Avançado', 220.00, 18, 4),
('Nutrição e Dietética', 190.00, 22, 5),
('Yoga e Meditação', 120.00, 12, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';
SELECT c.*, cat.* FROM tb_cursos c INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;
SELECT c.*, cat.* FROM tb_cursos c INNER JOIN tb_categorias cat ON c.categoria_id = cat.id WHERE cat.nome = 'Tecnologia';