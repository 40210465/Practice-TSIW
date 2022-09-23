-- SELECT 
-- SELECT STATMENT
-- SELECT CLAUSE
--
-- SELECTING FROM DATABASE A TABLE
-- sql_store IS THE DATABASE
-- costumers IS THE TABLE FROM THE DATABASE sql_store 
SELECT * FROM sql_store.customers;
--
-- LET´S SELECT A DATABASE TO QUERY DATA FROM, TO GET DATA INFO FROM THE DATABASE SELECTED
-- THAT MEANS WE ARE QUERYING AND GETTING DATA FROM sql_store DATABASE
-- WITH USE KEYWORD 
USE sql_store;
--
-- OR WE CAN JUST DOUBLE CLICK WITH THE SCHEMAS IN THE DATABASE WE WANT TO USE !!
--
-- USE A QUERY THAT ALLOWS TO DISPLAY ALL THE COSTUMERS OF THE DATABASE sql_store
-- THAT MEANS WE ARE SELECTING ALL KEYS OR COLUMNS FROM THE TABLE COSTUMERS TO DISPLAY ALL THE DATA
-- ABOUT THE CUSTOMERS
SELECT * FROM customers;
--
-- SELECTING SPECIFIC KEYS FROM THE customers TABLE
-- THAT MEANS WE ARE SELECTING ONLY THE first_name key and phone key data from customers table
SELECT first_name,phone FROM customers;
--
-- other way of selecting is :
-- by is key name
-- key is the same as column
SELECT customers.first_name, customers.phone FROM customers;
--
-- SELECT WITH "WHERE" AND "OR" CLAUSES :
--
-- SELECTING THE CUSTOMER WITH THE ID OF 1 IN THE TABLE customers
-- WE ALREADY KNOW THAT THE KEY customer_id REPRESENTS THE ID FOR EACH COSTUMER SO:
-- NOTICE THAT bouth statments give us the same output since we are selecting the key customer_id
SELECT * FROM customers WHERE customers.customer_id = 1 OR customer_id = 1;
--
-- NOTICE THAT FROM WHERE AND OR ARE OPTIONAL CLAUSES
-- WE CAN SELECT VALUES THAT DOESN´T EXIST SINCE SELECT STATMENT ONLY DISPLAYS THE QUERY RESULT AND WE NEED 
-- TO USE THE OPTIONAL CLAUSES TO BE MORE SPECIFYC WHEN QUERYING DATA FROM DATABASE IN A TABLE !!
SELECT 'Benfica', 'Dynamo Kyev';
--
-- LET´S USE SELECT STATMENT WITH MATH OPERATORS OR ARITHMETIC OPERATORS EACH ARE : 
-- => +  Add
-- => - Subtract
-- => *  Multiply
-- => / Divide
-- => %  Modulo
SELECT customers.last_name, 
customers.first_name,
customers.points,
-- WE CAN ALSO CHANGE WITH "SELECT" A KEY NAME WITH "AS" KEYWORD => AS 
(customers.points + 10) * 100 AS 'discount factor' FROM customers; 
--
-- SELECT WITH "DISTINCT" STATMENT:
--
-- NOW TO SELECT UNIQUE VALUES WITHOUT DUPLICATES WE USE 'DISTINCT' CLAUSE
-- WE ALSO ARE SELECTING ALL VALUES WITHOUT DUPLICATES FROM 'state' KEY FROM customers table
SELECT DISTINCT customers.state FROM customers; 
--
-- PRACTICE EXERCISE:
-- SELECT STATMENT WITH 'AS' AND ARITHMETIC OPERATORS
--
-- Return all the products
-- name
-- unit price
-- new price (unit price * 1.1)
SELECT products.name,
 products.unit_price AS 'unit price',
 products.unit_price * 1.1 AS 'new price' 
FROM products;