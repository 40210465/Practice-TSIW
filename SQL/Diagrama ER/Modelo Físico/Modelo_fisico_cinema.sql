-- TABELA DOS ATORES / ENTIDADE ATOR
CREATE TABLE Atores(
CPF INT NOT NULL, 
Nome CHAR(255) DEFAULT NULL,
PRIMARY KEY(CPF) -- ATRIBUTO IDENTIFICADOR TEM DE SER UNICO e sempre obrigatório
);

INSERT INTO Atores(CPF,Nome)
VALUES (1, 'Tom Cruise'),(2,'Brad Pitt');

-- -------------------------------------------------------------------
-- TABELA DOS FILMES / ENTIDADE FILME
CREATE TABLE Filmes(
ID INT NOT NULL,
Título CHAR(255) DEFAULT NULL,
PRIMARY KEY(ID)
);

INSERT INTO Filmes(ID, Título)
VALUES (1, 'The Mummy'),
		(2,'Top Gun: Maverick'),
		(3,'Jack Reacher'),
        (4,'WWZ'),
        (5,'Tróia'),
        (6,'Mr. & Mrs.Smith');
        
-- -------------------------------------------------------------------        
-- TABELA RELACIONAL DAS ENTIDADES/TABELAS ATORES E FILMES
CREATE TABLE Participacao(
A_CPF INT NOT NULL UNIQUE, -- chave tem de ser única para identificar cada ator
F_ID INT NOT NULL UNIQUE, -- chave tem de ser única para identificar cada filme
CONSTRAINT `A_CPF` FOREIGN KEY(A_CPF) REFERENCES atores(CPF),
CONSTRAINT `F_ID` FOREIGN KEY(F_ID) REFERENCES filmes(ID)
);

-- PARA SINTETIZAR, ESTA ENTIDADE DIZ-NOS QUE O ATOR PARTICIPOU NO FILME X E DESEMPENHOU
-- O PAPEL Y

-- para adicionar uma coluna em falta a tabela 
ALTER TABLE participacao
ADD Papel CHAR(255) DEFAULT NULL;






