-- COMMIT COMMAND
-- ROLLBACK COMMAND

-- TO PERMANTLY BY UPDATED AND REGISTERED ON THE DATABASE
-- WITH THE COMMIT COMMAND ALLOWS TO EVERYONE WHO ACESS THE DATABASE, HAVING THE DATA UPDATED
-- OTHERWISE ONLY YOU WILL SE THE UPDATES ON THE SCHEMAS !!

-- ALWAYS USE THE COMMIT COMMAND TO UPDATE TO EVERYONE THE DATA OF THE DATABASE

-- LET´S SEE HOW TO COMMIT PERMANTLY DATA TO BE REGISTER ON THE SERVER TO EVERYONE :

-- will start the transaction to be commit explicit
START TRANSACTION;
INSERT INTO atores(CPF, Nome)
VALUES (3,'Nicholas Cage');

-- will destroy the previous transaction with insert into !!
ROLLBACK;

-- to commit and to save permantly the data
COMMIT;