CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    habilidade_especial VARCHAR(100) NOT NULL,
    nivel_dificuldade INT NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    velocidade INT NOT NULL,
    nivel INT NOT NULL,
    classes_id BIGINT,
    FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, habilidade_especial, nivel_dificuldade) VALUES
("Arqueiro", "Tiro Preciso", 3),
("Guerreiro", "Golpe Devastador", 2),
("Mago", "Bola de Fogo", 4),
("Curandeiro", "Cura Massiva", 3),
("Assassino", "Ataque Furtivo", 5);

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, velocidade, nivel, classes_id) VALUES
("Legolas", 2500, 1200, 80, 10, 1),
("Aragorn", 2200, 1800, 60, 12, 2),
("Gandalf", 3000, 1500, 40, 15, 3),
("Celina", 1200, 2200, 50, 8, 4),
("Carlos", 2800, 900, 90, 11, 5),
("Beatriz", 1800, 1600, 75, 9, 1),
("Diana", 1900, 1700, 65, 10, 2),
("Rodrigo", 2700, 1100, 45, 14, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classes_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.nome_classe, tb_classes.habilidade_especial FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";


