-- OUTER JOIN IN MULTIPLE TABLES

-- <SUMMARY>
-- WE USE OUTER JOINS TO SHOW ALL THE RECORDS EVEN IF THEY ARE NULL FOR A SPECIFC KEY JOIN
 
-- PRATICE EXAMPLES
-- RETURN THE CUSTOMER FIRST NAME, LAST NAME, AND THE SHIPPER NAME FOR EACH ORDER
SELECT o.order_id, c.customer_id, c.first_name first_name, c.last_name last_name, o.order_date, o.status, o.comments, o.shipped_date, s.name AS shipper
FROM orders AS o
LEFT JOIN shippers AS s 
ON o.shipper_id = s.shipper_id
LEFT JOIN customers AS c
ON o.customer_id = c.customer_id ;
-- ** NOTICE THAT WITH DOUBLE LEFT JOIN WILL RETURN ALL THE RECORDS EVEN WITH NULL VALUES
-- BUT IF WE COMBINE INNER JOIN WITH LEFT JOIN WOULD RETURN ONLY THE RECORDS WITH VALUES **

-- RETURN THE FOLLOW KEYS :
-- order_date
-- order_id
-- customer first_name
-- shipper name
-- status name
SELECT o.order_date, o.order_id, c.first_name customer, s.name shipper, os.name status
FROM orders AS o
 JOIN customers AS c ON o.customer_id = c.customer_id -- INNER JOIN SINCE ALL THE KEY VALUES ARE AMBIGIOUS 
LEFT JOIN shippers AS s ON o.shipper_id = s.shipper_id -- OUTER JOIN TO RETURN ALL THE KEY VALUES EVEN IF THEY ARE NULL
 JOIN order_statuses AS os ON o.status = os.order_status_id; -- INNER JOIN SINCE ALL THE KEY VALUES ARE AMBIGIOUS 

-- WITH JOINS WITH MULTIPLE TABLES WE USE :

-- => INNER JOINS WHEN THERE IS NO NULL VALUES IN THERE KEYS RELATIONSHIP BETWEEN THE TABLES

-- => OUTER JOINS WHEN THERE IS NULL VALUES IN THERE KEYS RELATIONSHIP BETWEEN TABLES TO RETURN ALL THE RECORDS OTHERWISE
-- WOULD RETURN ONLY THE RECORDS WITH NO NULL VALUES !!