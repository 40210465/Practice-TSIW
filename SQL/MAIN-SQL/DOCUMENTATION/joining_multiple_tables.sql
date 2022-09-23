-- JOINING MULTIPLE TABLES

-- JOIN WITH THE CUSTOMERS TABLE AND WITH THE ORDER_sTATUSES TABLE IN ORDER TO 
-- RETURN FOR EACH ORDER THE NAME OF THE CUSTOMER AND THE NAME OF THE STATUS
SELECT o.order_id,
o.order_date,
c.first_name AS first_name,
c.last_name AS last_name,
 os.name AS status
 FROM orders AS o
 INNER JOIN customers AS c ON o.customer_id = c.customer_id
 INNER JOIN order_statuses AS os ON o.status = os.order_status_id;

-- PRACTICE EXERCISE

-- JOIN WITH THE INVOICE TABLE AND WITH THE PAYMENT METHODS TABLE IN ORDER TO
-- RETURN THE NAME OF THE CUSTOMER AND PAYMENT METHOD NAME
SELECT p.payment_id, c.name AS client_name, p.invoice_id, p.date, p.amount, pm.name AS payment_method
FROM payments AS p
INNER JOIN clients AS c ON p.client_id = c.client_id
INNER JOIN payment_methods as pm ON p.payment_method = pm.payment_method_id; -- joining on the child foreing key from payments table with the parent primary key from payment_methods table