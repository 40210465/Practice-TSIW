-- USING clause

-- 'USING' HIS SHORTCUT FOR 'ON' CLAUSE

-- WHATEVER WE CAN ONLY USE THIS CLAUSE WHEN THE KEYS HAVE THE SAME NAME IN THE RELATIONSHIP

-- ** USING Clause is used to match only one column when more than one column matches **

-- ** WE CAN USE 'USING' INSTEAD 'ON' clause on OUTER AND INNER JOINS **

-- PRACTICE EXAMPLES

-- RETURN THE CUSTOMERS NAME FOR EACH ORDER
SELECT o.order_id, CONCAT(c.first_name,' ',c.last_name) AS customer_name, o.order_date,
o.status, o.comments, o.shipped_date, o.shipper_id
FROM orders AS o
INNER JOIN customers AS c USING (customer_id); -- the same as : ON o.customer_id = c.customer_id

-- PRACTICE EXERCISE
-- RETURN FOR EACH INVOICE
-- THE DATE
-- THE CLIENT NAME
-- THE AMOUNT
-- THE PAYMENT METHOD NAME

SELECT p.date, c.name AS client, p.amount, pm.name AS payment_method
FROM payments AS p
INNER JOIN clients AS c USING(client_id) -- USING BECAUSE THE NAME OF THE KEYS ARE THE SAME
INNER JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id; -- ON BECAUSE THE NAME OF THE KEYS ARE DIFFERENT

-- ** NOTICE THAT IN THE FIRST JOIN WE USE USING CLAUSE BECAUSE THE NAME OF THE KEYS ARE THE SAME IN THE RELATIONSHIP
-- IS THE SAME AS : ON p.client_id = c.client_id
-- AND IN THE SECOND JOIN WE USE ON CLAUSE BECAUSE THE NAME OF THE KEYS ARE DIFFERENT IN THE RELATIONSHIP **