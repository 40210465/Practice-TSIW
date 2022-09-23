-- HAVING clause
-- HAVING

-- ** The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

-- LET´S SEE SOME PRACTICE EXAMPLES :

-- RETURN FOR EACH PRODUCT THE QUANTITY EACH ARE ABOVE 10
 SELECT oi.product_id, p.name AS product, SUM(oi.quantity) AS quantity
FROM order_items AS oi
JOIN products AS p USING(product_id)
GROUP BY p.product_id -- TO RETURN FOR EACH PRODUCT IS QUANTITY
HAVING SUM(oi.quantity) > 10 -- WILL RETURN ALL THE PRODUCTS OR RECORDS WITH THE QUANTITY MORE THEN 10
ORDER BY p.product_id;


-- RETURN FOR EACH PRODUCT THE QUANTITY EACH ARE BETWEEN 10 AND 20
 SELECT oi.product_id, p.name AS product, SUM(oi.quantity) AS quantity
FROM order_items AS oi
JOIN products AS p USING(product_id)
GROUP BY p.product_id -- TO RETURN FOR EACH PRODUCT IS QUANTITY
HAVING SUM(oi.quantity) BETWEEN 10 AND 20; -- WILL RETURN ALL THE PRODUCTS OR RECORDS WITH THE QUANTITY Between 10 and 20 when sum


-- RETURN FOR EACH CUSTOMER THE QUANTITY OF ORDERS
-- EXAMPLE OUTPUT [customer_id, customer_name, quantity_orders] = [2,Ines Brushfield,2]
SELECT c.customer_id, CONCAT(c.first_name, ' ',c.last_name) AS customer_name, COUNT(o.customer_id) AS quantity_orders
FROM customers AS c
LEFT JOIN orders AS o USING(customer_id) -- OUTER TO RETURN ALL THE CUSTOMERS OTHERWISE WOULD RETURN ONLY TO CUSTOMERS WITH ORDERS
GROUP BY c.customer_id; -- TO RETURN FOR EACH CUSTOMER THE COUNT AGGRE FUNCTION RESULT EACH WILL RESULT IN THERE ORDERS QUANTITY

-- RETURN THE CUSTOMERS WITHOUT ORDERS
SELECT c.customer_id, CONCAT(c.first_name, ' ',c.last_name) AS customer_name, COUNT(o.customer_id) AS quantity_orders
FROM customers AS c
LEFT JOIN orders AS o USING(customer_id)
GROUP BY c.customer_id
HAVING COUNT(o.customer_id) = 0; -- TO RETURN THE CUSTOMERS WITH NO ORDERS