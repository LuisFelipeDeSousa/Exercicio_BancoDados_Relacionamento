
DROP TABLE habilidades
DROP TABLE herois


/*TRUNCATE TABLE habilidades*/
CREATE TABLE herois(
	id INT IDENTITY (1,1),
	nome VARCHAR(100) NOT NULL,
	dificuldade TINYINT NOT NULL,
	funcao VARCHAR(10) NOT NULL
	PRIMARY KEY (id)
);

CREATE TABLE habilidades(
	id INT IDENTITY (1,1) PRIMARY KEY,
	id_heroi INT,
	nome VARCHAR(100),
	descricao TEXT DEFAULT 'N/A'
	FOREIGN KEY (id_heroi) REFERENCES herois(id)
);

INSERT INTO herois (nome, dificuldade, funcao) VALUES 
('TRACER', 2, 'Dano'),
('BASTION', 1,'Dano'),
('REAPER', 1, 'Dano'),
('GENJI', 3, 'Dano'),
('WINSTON',2, 'Tanque'),
('ZENYATTA', 3, 'Suporte'),
('DOOMFIST', 3 , 'DANO'),
('JUNKRAT', 2 , 'DANO'),
('MCCREE', 2 , 'DANO'),
('MEI', 3 , 'DANO'),
('PHARAH', 1 , 'DANO'),
('HANZO', 3 , 'DANO'),
('SOLDADO: 76', 1 , 'DANO'),
('SOMBRA', 3 , 'DANO'),
('SYMMETRA', 2 , 'DANO'),
('TORBJÖRN', 2 , 'DANO'),
('WIDOWMAKER', 2 , 'DANO')

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
(1,'Pistolas Eletromagnéticas', NULL),
(1,'Teleportar', NULL),
(1,'Recordação', NULL),
(1,'Bomba Eletromagnética', NULL);

INSERT INTO habilidades (id_heroi, nome, descricao) VALUES
(2,'Configuração: Reconhecimento', NULL),
(2,'Configurações: Sentinela', NULL),
(2,'Configurar', NULL),
(2,'Auto reparo', NULL),
(2,'Configuração: Tanque', NULL)


--INSERT INTO habilidades (id_herois, nome, descricao) VALUES

INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ZARYA', 3 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ROADHOG', 1 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('REINHARDT', 1 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ORISA', 2 , 'TANQUE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('D.VA', 2 , 'TANQUE');

INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MOIRA', 2 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MERCY', 1 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('LÚCIO', 2 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('BRIGITTE', 1 , 'SUPORTE');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('ANA', 3 , 'SUPORTE');

INSERT INTO herois (nome, dificuldade, funcao) VALUES ('DOOMFIST', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('JUNKRAT', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MCCREE', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('MEI', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('PHARAH', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('HANZO', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SOLDADO: 76', 1 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SOMBRA', 3 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('SYMMETRA', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('TORBJÖRN', 2 , 'DANO');
INSERT INTO herois (nome, dificuldade, funcao) VALUES ('WIDOWMAKER', 2 , 'DANO');




((SELECT id FROM herois WHERE nome = 'Bastion'), 'Configuração: Reconhecimento', NULL),
((SELECT id FROM herois WHERE nome = 'Bastion'), 'Configuração: Sentinelas', NULL),
((SELECT id FROM herois WHERE nome = 'Bastion'), 'Configurar ', NULL),
((SELECT id FROM herois WHERE nome = 'Bastion'), 'Configuração: Auto Reparo', NULL),
((SELECT id FROM herois WHERE nome = 'Bastion'), 'Configuração: Tanque', NULL)




SELECT * FROM herois;
SELECT * FROM habilidades;










