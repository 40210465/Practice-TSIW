-- LIKE OPERATOR

-- * WE USE LIKE OPERATOR TO MATCH A STRING PATTERN !!
-- * The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- return the customers whose last name start with 'b'
SELECT * FROM customers WHERE customers.last_name LIKE ('b%');

-- ** will return all the values in last_name that starts with b and with any length of chars after 'b' **!!

-- return the customers whose last name starts with 'brush'
SELECT * FROM customers WHERE customers.last_name LIKE ('brush%');

-- return the customers whose last name ends with 'y'
SELECT * FROM customers WHERE customers.last_name LIKE ('%y');
-- or
SELECT * FROM customers WHERE customers.last_name LIKE ('%_____y');
-- ** WITH 5 _ underscores will search any last name key values that includes 'y' after 5 positions or chars, representing in 5 underscores _____ **

-- return the customers whose last name includes 'b'
SELECT * FROM customers WHERE customers.last_name LIKE ('%b%');

-- return the customers whose last name starts with 'b' and ends with 'y'
SELECT * FROM customers WHERE customers.last_name LIKE ('b%y');
-- or
SELECT * FROM customers WHERE customers.last_name LIKE ('b____y');

-- ** will return records that matches the follow patters in specific keys/columns in a table **

-- PRACTICE EXERCISES

-- return the customers whose addresses contain or includes TRAIL or AVENUE
SELECT * FROM customers 
WHERE customers.address LIKE '%TRAIL%' OR customers.address LIKE '%AVENUE%' ;

-- will return the records whose address includes TRAIL or AVENUE

-- return the customers whose phone numbers end with 9
SELECT * FROM customers 
WHERE customers.phone LIKE '%9'; 

-- return the customers phone who doesn´t ends with '9'
SELECT * FROM customers WHERE customers.phone  NOT LIKE '%9'; 

-- % represents all characters
-- _ each underscore represents one single character

-- ** WE INSERT % after or before or between a value

-- SOME EXAMPLES :

-- '%a' will find any value that ends with 'a'
-- 'a%' will find any value that starts with 'a'
-- '%a%' will find any value that includes in any position 'a'

-- to find in specif positions :
 -- '___a'; -- will find any value that includes 'a' after 3 chars 
 
-- WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
-- for instance : ak-47 starts with 'a' in atleast 2 chars length text or string

-- WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
-- for instance : abba starts with 'a' in atleast 3 chars length text or string