CREATE TABLE alunos(

id                 INT IDENTITY, 
nome			   VARCHAR(200),	
idade              INT 
);

CREATE TABLE caracteristica(

id					INT IDENTITY,
id_alunos			INT,
nome				VARCHAR(150)
);

