-- COMPOUND JOIN CONDITIONS
SELECT * FROM orders;
-- ** A compound join joins two tables
-- and are significant when columns of multiple tables have a unique key to join 
-- to another table, as in the case of a relational database. **

-- ** A compound join can be used in combination with a self join, inner join, or outer join.
-- In this shot, we will look at an example of an inner join. **

SELECT o.order_id, CONCAT(c.first_name,' ',c.last_name) AS customer_name
FROM  orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id AND c.points < 1000;

-- return the customers names with less than 1000 points for each order
-- 4 7 3 6 9 -- THE ORDERS EACH WILL RETURN WITH THE CUSTOMERS LESS THAN 1000 POINTS 
SELECT o.order_id, CONCAT(c.first_name,' ',c.last_name) AS customer_name, os.name, o.comments, o.shipped_date, s.name AS shipper
FROM orders AS o
INNER JOIN customers AS c ON o.customer_id = c.customer_id AND c.points < 1000 -- WILL RETURN THE RELATIONSHIPS WITH LESS THAN 1000 POINTS
INNER JOIN order_statuses AS os ON o.status = os.order_status_id
LEFT JOIN shippers AS s ON o.shipper_id = s.shipper_id ; 

-- ** NOTICE THAT WILL ONLY RETURN THE CUSTOMERS LESS THAN 1000 POINTS FOR EACH ORDER WITH THE
-- AND CONDITION , AND BASSICLY THIS IS A COMPOUND JOIN CONDITION**