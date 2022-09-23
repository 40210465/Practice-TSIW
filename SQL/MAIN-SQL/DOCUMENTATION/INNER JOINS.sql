-- INNER JOINS
-- INNER JOIN keyword

-- The INNER JOIN keyword selects records that have matching values in both tables.

-- **  WE CAN SELECT RECORDS FOR MULTIPLE TABLES
-- WE HAVE MULTIPLE TABLES, BECAUSE IT´S NEEDED TO STORE SPECIF DATA/INFORMATION FROM A CUSTOMER FOR INSTANCE
-- BECAUSE IF YOU WANTED TO CHANGE A SPECIF DATA WE HAD TO CHANGE ALL THE RECORDS INFO

-- LET´S SEE SOME EXAMPLES:

-- replace the customer id for there full name to see the orders owner name
SELECT * FROM orders
INNER JOIN customers -- JOIN customers
ON orders.customer_id = customers.customer_id;



-- let´s simplify 
-- select only order id , first name and last name
SELECT orders.order_id, customers.first_name, customers.last_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
ORDER BY orders.order_id ASC;
-- ** NOTICE THAT THERE IS ORDER BY IN THIS QUERY, BECAUSE THE ORDER ID WILL BE SORT RANDOMLY SO WE NEED TO SORT
-- BY ASC WAY TO DISPLAY IN THERE DEFAULT WAY LIKE FROM THE ORDERS TABLE ** 

-- ** IS IMPORTANT TO PREFIX THE COLUMN NAMES WITH THERE TABLE NAME SINCE WE COULD GIVE US AN ERROR OF BEING 
-- AMBIGUOUS, EACH MEANS THEY ARE EQUAL SO WE NEED TO SPECIF EACH TABLE WE WANT TO SELECT THAT KEY WITH THE SAME KEY NAME **

-- ** WE COULD ABREVIATE THE TABLES NAME : 
-- FOR THE ORDERS TABLE SHOULD BE LIKE THIS => O. or o.
-- FOR THE CUSTOMERS TABLE SHOULD BE LIKE THIS => C. or c.

-- WE ABREBIATE THE TABLES NAME WHEN WE ARE DOING MULTIPLE JOINS WITH MULTIPLE TABLES

-- PRACTICE EXERCISES

-- join order_items table with products table and for each order 
-- return is product id  key
-- return is name  key
-- return is quantity key
-- return is unit_price key
-- ** MAKE SURE TO USE ALIASES 'AS' WHEN NAMING THE TABLES NAME
SELECT o.order_id, p.name, o.quantity, o.unit_price
FROM order_items AS o -- TO TELL SQL THAT 'o' stands for the order_items table
JOIN products AS p  -- and 'p' stands for the products table  
ON o.product_id = p.product_id
ORDER BY o.order_id;



-- return the product name for each order item notes 
SELECT oin.note_id, oin.order_Id, p.name AS product_name , oin.note
FROM order_item_notes AS oin	-- tell SQL that 'oin' stands for the order_items_notes table
JOIN products AS p -- to get the product name and to return it from the products table
ON oin.product_id = p.product_id;



-- return the product more expensive from the orders !!
-- by returning is :
-- order id 
-- product name 
-- total price
SELECT oi.order_id, p.name AS product_name, (oi.quantity * oi.unit_price) AS total_price
FROM order_items AS oi
INNER JOIN products AS p  -- JOIN  TO RETURN THE PRODUCT NAME FROM THE PRODUCTS TABLE
ON oi.product_id = p.product_id
ORDER BY total_price DESC LIMIT 1;	-- 	LIMIT 1 TO RETURN ONLY THE FIRST RECORD WITH THE MOST EXPENSIVE PRODUCT



-- ** return the customer name, the status info and the shipper info for each order **
SELECT o.order_id, 
CONCAT(c.first_name,' ', c.last_name) AS customer_name,
 o.order_date,
 os.name AS status,
 o.comments,
 o.shipped_date,
 s.name AS shipper
 FROM orders AS o
 LEFT JOIN customers AS c ON o.customer_id = c.customer_id
 LEFT JOIN order_statuses AS os ON o.status = os.order_status_id
 LEFT JOIN shippers AS s ON o.shipper_id = s.shipper_id;
 
 -- NOTICE THAT, FOR THIS EXERCISE WE HAD TO USE 3 LEFT JOINS IN ORDER TO GET THE INFORMATION FROM THREE TABLES THE CUSTOMERS TABLE FOR THE customers name, THE ORDER_STATUSES TABLE FOR THE status info AND THE SHIPPERS TABLE FOR THE shipper
 -- AND TO RETURN ALL RECORDS FROM THE LEFT TABLE AND THE MATCHING RECORDS FROM THE RIGHT TABLES
 -- OTHERWHISE IT WOULDN´T RETURN ALL RECORDS !!



-- return the client info for each invoice with :
-- name client
-- adress client
-- city client
-- state client
-- phone client
SELECT i.invoice_id, i.number, 
c.name AS client_name, 
c.address AS client_adress, 
c.city AS client_city, 
c.state AS client_state, 
c.phone AS client_phone,
i.invoice_total,
i.payment_total,
i.invoice_date,
i.due_date,
i.payment_date
FROM invoices AS i INNER JOIN clients AS c ON i.client_id = c.client_id -- to return the client info
ORDER BY i.invoice_id; 


-- return the payment method name for each payment
SELECT p.payment_id, p.client_id, p.invoice_id, p.date, p.amount, pm.name AS payment_method
FROM payments AS p
INNER JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id; -- WE ARE CONNECTING THE FOREIGN KEY FROM THE CHILD TABLE 'payments' WITH THE PRIMARY KEY FROM THE PARENT TABLE 'payment_methods'


-- for each payment return the client name and the payment method name
SELECT p.payment_id, c.name AS client_name, p.invoice_id, p.date, p.amount, pm.name AS payment_method
FROM payments AS p
INNER JOIN clients AS c ON c.client_id = p.client_id 
INNER JOIN payment_methods AS pm ON p.payment_method = pm.payment_method_id;


-- RETURN FOR EACH EMPLOYEE THE OFFICE INFORMATION ABOUT :
-- Adress
-- City
-- state 
 -- AND SORT BY SALARY
-- REMAINDER => RETURN EACH INFORMATION ABOUT THE OFFICE WITH THE FOLLOW PATTERN : [address, city, state] => example: [03 Reinke Trail - Cincinnati - OH - USA]
-- REMAINDER => RETURN EACH EMPLOYEE NAME WITH THE FOLLOW PATTERN : [first_name last_name] => example: [D´arcy Nortunnen] 
-- REMAINDER => SORT BY DESC IN ORDER TO SORT BY SALARY
SELECT e.employee_id, CONCAT(e.first_name,' ',e.last_name) AS employee_name, e.job_title, e.salary, CONCAT(o.address,' - ',o.city,' - ',o.state,' - ','USA') AS office_info
FROM employees AS e
INNER JOIN offices AS o ON e.office_id = o.office_id
ORDER BY e.salary DESC;