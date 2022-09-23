-- drop = allows to remove all data from table or database for instance!!

-- creates a database with the name userdata;
CREATE DATABASE userdata;
-- to use a database to work on with queries for tables etc...
USE userdata;
-- with , allows to separate each statment and create more columns
CREATE TABLE users(
ID int NOT NULL auto_increment, -- first column
name varchar(300) NOT NULL, -- second column
PRIMARY KEY (ID) -- to uniquely indentify each row in a table with ID 
);

-- ALTER querie it´s possible to change something on the table

-- TO ADD SOMETHING *COLUMN 
-- create table with ALTER Querie
-- ALTER table users
-- add name => add column with the name 'name'

-- TO REMOVE SOMETHING *COLUMN
-- ALTER TABLE users
-- DROP COLUMN name => removes the column

CREATE TABLE bioUsers(
ID int NOT NULL auto_increment,
age INT NOT NULL,
country varchar(300) NOT NULL,
bioID int not null,
primary key (ID),
foreign key(bioID) REFERENCES users(ID) -- foreign key to connect with the other table
);

-- HOW TO INSERT DATA INTO A TABLE = insert data in the columnss
INSERT INTO users(name)
VALUES ('Pedro Teixeira');

INSERT INTO users(name)
VALUES('Ricardo Teixeira'),('Joaquim Fernandes'),('Regina Fernandes');

SELECT * FROM users; -- SELECT ALL COLUMNS FROM USERS WILL DISPLAY THE COLUMNS

-- LIMIT
-- SELECT * FROM users LIMIT 2; WILL ONLY SHOW THE FIRST TWO ROWS OR TWO ROWS
-- SELECT  column(name) FROM users; WILL ONLY SHOW THE SPECIFIC COLUMN;

-- TO CHANGE THE NAME OF THE COLUMNS WITH 'AS' QUERIE
SELECT ID AS 'IDuser', name AS 'names' FROM users;

-- with ORDER BY command we can sort the data from the columns
-- sort by name 
SELECT * FROM users ORDER BY name; -- asc default value

-- how to select a specifc column from a table
SELECT name FROM users; -- select the column name from the table users
SELECT * FROM users;

use userdata;

SELECT * FROM users;

-- INSERT DATA ON THE SECOND TABLE biousers
INSERT INTO bioUsers (age,country,bioID)
VALUES (21,'Portugal',1), -- first column of the second table bioUsers
(28,'Portugal',2), -- second column of the second table bioUsers
(61,'França',3), -- third column of the second table bioUsers
(51,'Espanha',4); -- fourth column of the second table bioUsers

SELECT * FROM biousers;

-- select only the countries from the table bioUsers
SELECT country FROM biousers;

-- how to distinct values from a table => only display Portugal,França,Espanha
-- removes specicif repeated value = removes the duplicates
SELECT DISTINCT country FROM biousers;

SELECT * FROM users, biousers;

SELECT * FROM biousers;

-- WHERE = string filter
-- update values or change a specifc column value from a row 
-- for instance changing the country of specifc ID or user
UPDATE biousers
SET country = "Alemanha"
WHERE ID = 3; -- WHRE AGE = 61 = WHERE WORKS LIKE STRING FILTER, EACH MEANS ONLY SEARCH THE SPECIFC VALUE AND CHANGE

-- how to returning only the users/id under 30 years old
SELECT * FROM biousers
WHERE age < 30; -- will only returns the rows with the age column under 30 

-- how to return only rows each contains 'por'
SELECT * FROM biousers
WHERE country LIKE '%por%'; -- checks if there is 'por' somewhere the table

-- returns only the ages between 20 and 55
SELECT * FROM biousers
WHERE age BETWEEN 20 AND 55;

-- returns the second condition
SELECT * FROM biousers
WHERE country like '%xe' OR ID = 1 OR ID = 4; -- ONLY FINDS IN THE ROWS THE ID because there isnt´any string each contains 'xe'

-- returns the rows with null values
SELECT * FROM biousers
WHERE ID IS NULL; -- will return the row with null values

-- remove a specfic row from the table
-- DELETE FROM biousers WHERE ID = 3; WILL REMOVE THE 3TH ROW 

-- DELETE REMOVES SPECIFC VALUE	

-- JOIN QUERIE = JOINING BOTH TABLES
SELECT * FROM users
JOIN biousers ON users.ID = biousers.bioID; -- compares the id and joins both ids in each ow on the table

-- DIFFERENT WAYS TO JOIN TABLES
-- INNER JOIN * JOINING LEFT TABLE WITH RIGTH SIDE TABLE
-- LEFT JOIN *
-- RIGTH JOIN

-- AGGREGATE FUNCTIONS
-- the average function allows to return the average of the ages in this insctance
-- but mainly this aggregate function allows to calculate the average values of one integers column 
-- we can round the average value by using the round function
SELECT round(avg(age)) FROM biousers;

-- MAIN AGGREGATE FUNCTIONS ARE:
-- AVERAGE
-- SUM 
-- COUNT 

-- GROUP BY QUERIE WITH COUNT aggregate function
SELECT country, COUNT(country) FROM biousers
GROUP BY country; -- count function allows to count his parameter and with group by returns in one table the result:
-- in the left side returns the selected column from the table
-- in the rigth side returns the count function result values for each item/country

SELECT bioID, COUNT(bioID) FROM biousers GROUP BY bioID;

-- AS QUERIE
-- Aliases - Alias Tables
-- In order to have more information about the ID cOUNTED WE SHOULD USE ALIASES QUERIES
SELECT DISTINCT c.country AS country_name, COUNT(a.ID) AS num_country
FROM biousers AS c
LEFT JOIN biousers AS a ON c.ID = a.bioID
GROUP BY c.ID; 


-- IN SUMMARY WE LEARN THE 4 WAYS TO OPERATE IN SQL AND INTERACTING WITH DATA:
-- WITH CRUD OPERATIONS : CREATING, READING, UPDATING AND DELETING

-- Join Querie 
-- Inner left/rigth comparision
-- aggregate Functions
-- Group By
-- Combine Tables with Join
-- Alias Tables AS QUERIE
-- Having vs Where

-- FOR MORE INFO CHECK OUT THIS REFERENCE:
-- https://www.w3schools.com/sql/sql_syntax.asp2
-- https://www.youtube.com/watch?v=p3qvj9hO_Bo&t=2455s LEARN SQL IN 60 MINUTES