-- WHERE
-- WHERE STATMENT
-- WHERE CLAUSE

-- The WHERE clause is used to filter records or data from a table.
-- It is used to extract only those records that fulfill a specified condition.
-- LET´S FOLLOW SOME EXAMPLES: 
--
-- WITH WHERE STATMENTS WE USE COMPARISON OPERATORS LIKE OTHER LANGUAGES EACH ARE:
-- => =  Equal to
-- => > Greater than
-- => <  Less than
-- => >= Greater than or equal to
-- => <=  Less than or equal to
-- => != or <> Not equal to
-- A REMAINDER != or <> do the same thing !!

-- > Greater than
-- Return only the customers with points > 3000 
-- will check if each record satisfies the follow condition if returns true will return is record
SELECT * FROM customers WHERE customers.points > 3000;

-- = Equal to
-- Return only the customers from the state of virginia in USA -- A REMAINDER virginia stands out for VA in the table
SELECT * FROM customers WHERE customers.state = 'VA';

-- != Not Equal to
-- Return only the customers each lives outside the state of virginia VA in USA
SELECT * FROM customers WHERE customers.state != 'VA'; -- SELECT * FROM customers WHERE customers.state <> 'VA'; 

-- > Greater than
-- Return only the customers born after 01/01/1990 
SELECT * FROM customers WHERE customers.birth_date > '1990-01-01'; -- we represent the data format as in the birth_data key table

-- PRACTICE EXERCISE:
--
-- Get the orders placed this year from the table orders => REMAINDER THE YEAR IS 2019
-- !! TO GET THE CURRENT YEAR WE USE A FUNCTION but for this example we can only get by
-- january 1th of the recent year 
SELECT * FROM orders WHERE orders.order_date >= '2019-01-01';

-- return the orders placed in the year 2017 from the table orders
-- IN THIS EXERCISE WE NEED TO USE LIKE STATMENT SINCE IF WE USE >= WE WOULD GET THE OTHERS YEARS ASWELL GREATER THEN 2017
-- THEN WE CAN JUST SEARCH FOR A SPECIF PATTERN IN THE TABLE WITH LIKE CLAUSE
SELECT * FROM orders WHERE orders.order_date LIKE '%2017%';

-- return the orders placed between the years of 1994 and 2001
SELECT * FROM orders WHERE orders.order_date BETWEEN '1994-01-01' AND '2001-12-31'; -- there is no orders between those years, then will return record empty !!