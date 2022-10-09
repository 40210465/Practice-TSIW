-- CHECK constraint

CREATE TABLE pares(
id INT NOT NULL auto_increment,
name VARCHAR(255) NOT NULL,
age INT NOT NULL,
PRIMARY KEY(id),
CHECK (age % 2 = 0)-- CHECK IF THE NUMBERS ARE EVEN IN THE KEY number
);
-- ----------------------------------------------------------------------------------
INSERT INTO pares(name,age)
VALUES ('A',1), -- will give an error because we are inserting odd numbers in the key age
		('B',2),
        ('C',3);
-- ------------------------------------------------------------------------------------        
     -- SELECTING ONLY THE PERSONS WITH A ODD AGE
		SELECT * FROM persons
        WHERE age % 2 = 0; -- with module give us the rest 0 so will return only odd records
     
     -- SELECTING ONLY THE PERSONS WITH A EVEN AGE
		SELECT * FROM persons
        WHERE !(age % 2 = 0); -- with the sign expression ! will bassicly return records each aren´t odd
							-- each means will only return even records
                            -- ! = means different then ...