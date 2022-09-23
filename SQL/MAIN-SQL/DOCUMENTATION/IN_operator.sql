-- IN OPERATOR

-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.
--
-- LET´S SEE SOME EXAMPLES : 

-- return the customers located in Virginia or Florida or Georgia

-- WITH OR OPEARTOR WOULD BE like this :
SELECT * FROM customers 
WHERE customers.state = 'VA'
OR customers.state = 'FL'
OR customers.state = 'GA';

-- NOTICE THAT WHE HAVE NOW MULTIPLE OR CONDITIONS AND WITH IN OPERATOR WE CAN SHORTHAND THOSE
-- MULTIPLE OR CONDITIONS :
-- WITH IN OPERATOR
SELECT * FROM customers WHERE customers.state IN ('VA','FL','GA');

-- return the customers outside virginia, florida and Georgia
-- now with NOT will return all the records each doesn´t belong those 3 states FROM USA !! ON the key/column state
SELECT * FROM customers WHERE customers.state NOT IN ('VA','FL','GA');

-- PRACTICE EXERCISE 
--
-- Return products with
-- quantity in stock equal to 49, 38, 72
--
-- SOLVED WITH IN OPERATOR
SELECT * FROM products WHERE products.quantity_in_stock IN (49, 38, 72);
--
-- solved with multiple OR OPERATORS
SELECT * FROM products
 WHERE products.quantity_in_stock = 49
 OR products.quantity_in_stock = 38
 OR products.quantity_in_stock = 72;
 --
 -- IN THIS EXERCISE WE QUERY A DATABASE TO RETURN THE RECORDS FROM THE TABLE PRODUCTS THE
 -- RECORDS WITH THE QUANTITY IN STOCK WITH VALUES EUQAL 49, 38 AND 72 IN THE KEY/COLUMN
 -- quantity_in_stock