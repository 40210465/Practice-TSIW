-- UNION  operator
-- UNION

-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns

-- The columns in every SELECT statement must also be in the same order

-- LET´S SEE SOME PRACTICE EXAMPLES :
-- RETURN THE CURRENT ORDER DATE WITH A LABEL/COLUMN/KEY AS ACTIVE IN STATUS 
-- RETURN THE PREVIOUS ORDERS AS ARCHIVED IN THE STATUS LABEL OR COLUMN

SELECT orders.order_id, orders.order_date, 'Active' AS status
FROM orders
WHERE orders.order_date LIKE '%2019%'
UNION
SELECT orders.order_id, orders.order_date, 'Archived' AS status
FROM orders
WHERE orders.order_date <= '2019-01-01';

-- ** NOTICE THAT WITH UNION operator WE COMBINE TWO SELECTS WITH THE SAME NUMBER OF COLUMNS/KEYS AND 
-- IN THE SAME ORDER OF SELECTION OF THE KEYS/COLUMNS IN BOTH SELECTS, LIKE MENTION BEFORE **

-- WE COMBINE TWO SELECTS WITH THE SAME TABLE BUT WE CAN ALSO COMBINE SELECTS WITH MULTIPLE TABLES
-- LET´S SEE A EXAMPLE :
SELECT first_name
FROM customers
UNION
SELECT name
FROM shippers;

-- BUT LET´S SEE WHAT HAPPENS IF WE UNION WITHOUT EQUAL MATCH NUMBER OF COLUMNS
SELECT first_name, last_name
FROM customers
UNION
SELECT name
FROM shippers;

-- ** NOTICE THAT WILL GIVE AN ERROR 'the used SELECT statments have a different number of columns'
-- THAT MEANS THAT WE CAN ONLY UNION SELECTS WITH THE SAME NUMBER OF KEYS OR COLUMNS ** 

-- PRACTICE EXERCISES

-- RETURN THE CUSTOMER ID, THE FIRST_NAME OF THE CUSTOMER, THE POINTS AND FOR EACH CUSTOMER RETURN COLUMN WITH THE
-- TYPE OF CUSTOMER RELATED ABOUT THE QUANTITY OF POINTS EACH CUSTOMER HAVES
-- FOR INSTANCE:
-- LESS THAN 2000 POINTS MEANS THEY ARE BRONZE TYPE CUSTOMER
-- BETWEEN 2000 AND 3000 POINTS THEY ARE SILVER TYPE CUSTOMER
-- MORE THEN 3000 POINTS THEY ARE GOLD TYPE CUSTOMER

-- EXAMPLE OUTPUT [customer_id, first_name, points, type] => [7, Ilene, 947, Bronze]
-- !! remainder : reach the result by using the UNION operator and sort the first_name 
SELECT customers.customer_id, customers.first_name, customers.points, 'Bronze' AS type
FROM customers
WHERE customers.points < 2000
UNION  
SELECT customers.customer_id, customers.first_name, customers.points, 'Silver' AS type
FROM customers
WHERE customers.points BETWEEN 2000 AND 3000
UNION  
SELECT customers.customer_id, customers.first_name, customers.points, 'Gold' AS type
FROM customers
WHERE customers.points > 3000
ORDER BY first_name;