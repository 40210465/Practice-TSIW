-- OUTER JOINS
-- OUTER JOINS IN MULTIPLE TABLES

-- FOR OUTER JOINS WE HAVE : 
-- LEFT JOIN => LEFT OUTER JOIN
-- RIGHT JOIN  => RIGHT OUTER JOIN
-- FULL JOIN => FULL OUTER JOIN
-- SELF JOIN => SELF OUTER JOIN

-- LET´S SEE SOME EXAMPLES :

-- LEFT OUTER JOIN => LEFT JOIN

-- ** The LEFT JOIN keyword returns all records from the left table (table1), 
-- and the matching records from the right table (table2). The result is 0 records from the right side, 
-- if there is no match **. 

-- REWRITE THE FOLLOW QUERY WITH LEFT OUTER JOIN => LEFT JOIN
-- INNER JOIN
SELECT * 
FROM customers AS c
JOIN orders AS o
	ON c.customer_id = o.customer_id;

-- LEFT OUTER JOIN
SELECT *
FROM customers AS c
LEFT JOIN orders AS o  
ON c.customer_id = o.customer_id;  

-- RIGHT OUTER JOIN
    SELECT *
FROM orders AS o
RIGHT JOIN customers AS c  
ON o.customer_id = c.customer_id; 

-- PRACTICE EXERCISE :
SELECT * FROM products;
SELECT * FROM order_items;

-- RETURN FOR EACH PRODUCT:
-- THE NAME
-- THE QUANTITY (ORDER ITEMS TABLE)
SELECT p.product_id, p.name, oi.quantity
FROM products p -- AS p
LEFT JOIN order_items oi -- AS oi 
ON p.product_id = oi.product_id;
-- WITH OUTER JOIN WE SEE HOW MANY TIMES THERE IS EACH PRODUCT ID 

-- RETURN THE QUANTITY BOUGHT FOR EACH PRODUCT WITH HIS NAME
-- eg : [product_id, name, quantity] => [1, Foam Dinner Plate, 16]
-- REMAINDER IF RETURN NULL THE QUANTITY VALUE SHOULD BE 0 => IFNULL
SELECT p.product_id, p.name, IFNULL(SUM(oi.quantity),0) AS quantity
FROM products AS p
LEFT JOIN order_items AS oi
ON p.product_id = oi.product_id
-- FOR EACH product return his quantity otherwise would return one record with the total quantity 
GROUP BY p.product_id;


-- WITH RIGHT JOIN
SELECT p.product_id, p.name, IFNULL(SUM(oi.quantity),0) AS quantity
FROM order_items AS oi
RIGHT JOIN products AS p
ON oi.product_id = p.product_id
-- FOR EACH product return his quantity otherwise would return one record with the total quantity 
GROUP BY oi.product_id;

-- WITH THE NULL FUNCTION IFNULL WE CAN RETURN A RECORD WITH A VALUE WHERE IS NULL