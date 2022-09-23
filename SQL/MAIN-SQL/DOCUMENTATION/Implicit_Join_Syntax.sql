-- IMPLICIT JOIN SYNTAX

-- WITH IMPLICIT JOIN SYNTAX WE CAN BASSICLY JOIN WITH WHERE CLAUSE
-- This technique is called an Implicit Join (since it doesn't actually contain a join clause).

-- LET´S SEE SOME EXAMPLES:

-- RETURN THE PRODUCTS WITH A QUANTITY IN STOCK BETWEEN 25-50 FOR EACH ORDER
SELECT oi.order_id, p.name AS product, oi.quantity, oi.unit_price
FROM order_items AS oi, products AS p
WHERE oi.product_id = p.product_id -- same as : INNER JOIN products AS p ON oi.product_id = p.product_id
AND p.quantity_in_stock BETWEEN 25 AND 50;

-- ** NOTICE THAT THERE ISN´T A JOIN CLAUSE IN THIS QUERY AND STILL WE MANAGE TO GET THE PRODUCT NAME FOR EACH ORDER
-- EACH IS QUANTITY IN STOCK ARE BETWEEN 25-50

-- REWRITE THE FOLLOW QUERY WITH WHERE CLAUSE
-- !! YOU CANT USE INNER JOIN 

-- EXPLICIT JOIN SYNTAX
-- WITH INNER JOIN 
 SELECT * FROM orders o
 INNER JOIN customers c
 		ON o.customer_id = c.customer_id;

-- IMPLICIT JOIN SYNTAX
-- WITH WHERE CLAUSE => IMPLICIT JOIN SYNTAX
 SELECT * FROM orders o, customers c
 WHERE o.customer_id = c.customer_id;