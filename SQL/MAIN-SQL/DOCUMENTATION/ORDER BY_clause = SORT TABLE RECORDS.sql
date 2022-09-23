-- ORDER BY
-- ORDER BY clause

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
-- The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

-- DEFAULT SORTED = ID KEY/COLUMN - FIRST KEY OR COLUMN FROM THE TABLE

-- BY DEFAULT A TABLE IS SORTED BY IS ID SINCE IS THE PRIMARY KEY EACH UNIQUE IDENTIFIES EACH RECORD FROM THE TABLE
-- for instance the id 1 represents the 1st customer of the table customers

-- sort the customers
-- by is states
-- by is first names
SELECT * FROM customers ORDER BY customers.state, customers.first_name;
 
 
 -- we can sort the first names and last names by there birthdate
 SELECT customers.first_name, customers.last_name 
 FROM customers
 ORDER BY customers.birth_date;
 
 -- PRACTICE EXERCISE
 
 -- SORT THE ORDER ITEMS :
 -- WITH ID 2 
 -- AND BY IS TOTAL PRICE
  SELECT 
  order_items.order_id, 
  order_items.product_id,
  order_items.quantity, 
  order_items.unit_price, 
  (order_items.quantity * order_items.unit_price) AS 'total_price'
  FROM order_items
  WHERE order_items.order_id = 2 
  ORDER BY total_price DESC;
  
  -- NOTICE THAT IN THE ORDER BY WE CAN ALSO USE ALIASE COLUMNS, MATHEMATIC EXPRESSIONS, ETC... 
  -- AND NOT ONLY COLUMNS OR KEYS NAMES FROM A TABLE