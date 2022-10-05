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
A_CPF INT NOT NULL, 
F_ID INT NOT NULL,
PRIMARY KEY(A_CPF, F_ID),
CONSTRAINT `A_CPF` FOREIGN KEY(A_CPF) REFERENCES atores(CPF),
CONSTRAINT `F_ID` FOREIGN KEY(F_ID) REFERENCES filmes(ID)
);

-- PARA SINTETIZAR, ESTA ENTIDADE DIZ-NOS QUE O ATOR PARTICIPOU NO FILME X E DESEMPENHOU
-- O PAPEL Y

-- para adicionar a key em falta
ALTER TABLE participacao
ADD COLUMN Papel CHAR(255) DEFAULT NULL;


INSERT INTO participacao(A_CPF, F_ID, Papel)
VALUES (1,1,'Nick Morton'),
		(1,2,'Captain Pete Maverick Mitchell'),
        (1,3,'Jack Reacher'),
        (2,4,'Gerry Lane'),
        (2,5,'Aquiles'),
        (2,6,'John Smith');
        
 -- ------------------------------------------------------------    
 -- TABELA DOS PREMIOS DA ENTIDADE PREMIO
 
 CREATE TABLE Premios(
 Cod INT NOT NULL, 
 Descricao CHAR(255) DEFAULT NULL,
 PRIMARY KEY(Cod)  -- WE CAN UNIQLY IDENTIFY A IDENTIFIER KEY WITH PRIMARY KEY OR UNIQUE
 );
 
 INSERT INTO Premios (cod, Descricao)
 VALUES (1, 'Melhor ator xx'),
		(2, 'Melhor interpretação'),
        (3,'Melhor trilha sonora');
 
 -- -----------------------------------------------------------------------------------
 -- CRIAÇÃO DA TABELA RELACIONAL ENTRE AS DUAS ENTIDADES FILMES E PREMIO(S)
CREATE TABLE Premiacao (
F_ID INT NOT NULL,
P_Cod INT NOT NULL,
PRIMARY KEY(F_ID, P_Cod),
CONSTRAINT `FK_F_ID` FOREIGN KEY(F_ID) REFERENCES filmes(ID),
CONSTRAINT `FK_P_cod` FOREIGN KEY(P_cod) REFERENCES premios(Cod)
);

-- EM SUMA, esta tabela indica que o filme foi premiado com um X PREMIO !!

-- adicionar a key em falta
ALTER TABLE Premiacao
ADD COLUMN Ano INT NOT NULL;

INSERT INTO Premiacao(F_ID, P_Cod, Ano)
VALUES (1,2,2018),
		(4,3,2014),
        (2,1,1994);
        
 -- ----------------------------------------------------------------------------------
 SELECT a.Nome AS 'ator', f.Título AS 'filme', p.Papel
FROM participacao AS p
JOIN atores AS a ON p.A_CPF = a.CPF
JOIN filmes AS f ON p.F_ID = f.ID;

-- TO RETURN THE ACTOR NAMES INSTEAD OF THE ID AND THE MOVIE NAME 
-- -----------------------------------------------------------------------------------
SELECT f.título AS 'filme', p.descricao AS 'prémio', pre.Ano
FROM premiacao AS pre
JOIN filmes AS f ON pre.F_ID = f.ID
JOIN premios AS p ON pre.P_Cod = p.Cod;

-- TO RETURN THE MOVIE AND THE AWARDS NAMES INSTEAD THERE ID´S

-- --------------------------------------------------------------------------------------

