-- AND, OR , NOT OPERATORS

-- The WHERE clause can be combined with AND, OR, and NOT operators.

-- The AND and OR operators are used to filter records based on more than one condition:

-- * The AND operator displays a record if all the conditions separated by AND are TRUE.
-- * The OR operator displays a record if any of the conditions separated by OR is TRUE.
-- * The NOT operator displays a record if the condition(s) is NOT TRUE. 

-- LET´S SEE SOME EXAMPLES : 

-- AND
-- return all the customers born after 1th january of 1990 and with more then 1000 points
-- will return the records that satisfies bouth conditions
 SELECT * FROM customers
 WHERE customers.birth_date > '1990-01-01' AND customers.points > 1000;
 
-- COMBINING AND with OR 
-- return all the customers either :
-- * born after 1th january 1990
-- * or having atleast 1000 points and living in VA (virgina,USA) 
SELECT * FROM customers 
WHERE customers.birth_date > '1990-01-01' OR 
(customers.points >= 1000 AND customers.state = 'VA'); -- notice that there are () because AND have prioraty

-- NOT
-- return customers who are:
-- * NOT born after 1990
-- * NOT having more then 1000 points
SELECT * FROM customers 
WHERE NOT (customers.birth_date > '1990-01-01' OR customers.points > 1000);
-- LIKE MATH THE NEGATIVE OPERATOR NOT ARE NEGATING THE CONDITIONS SO > BECOMES <= and OR becomes AND
-- Let´s see:
-- WHERE customers.birth_date <= '1990-01-01' AND customers.points > 1000;

-- PRACTICE EXERCISES :

-- From the order_items table get the items
-- for order #6
-- where the total price is greater than 30
-- 
-- WITH AS clause 
SELECT order_items.order_id, 
order_items.product_id,
order_items.quantity, 
order_items.unit_price, 
(order_items.quantity * order_items.unit_price) AS 'Total Price'
 FROM order_items
WHERE (order_items.quantity * order_items.unit_price) > 30 AND order_items.order_id = 6; 
--
-- WITHOUT AS clause
SELECT * FROM order_items WHERE 
(order_items.quantity * order_items.unit_price) > 30 
AND order_items.order_id = 6;