-- UPDATE clause

--  USING SUBQUERIES IN UPDATES

 UPDATE invoices
 SET -- to update 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id = -- IF WE UPDATE A SINGLE RECORD WE USE EQUAL SIGN TO CONNECT WITH THE SUBQUERY STATMENT
				(SELECT client_id
				 FROM clients
                 WHERE name = 'Myworks');

-- IN THIS EXAMPE WE ARE UPDATING THE KEYS payment_total and payment_date for the 'Myworks'
-- BY acessing is ID with a subquerie

-- WHITOUT A SUBQUERIE:
UPDATE invoices
SET payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id = 3;   

-- BUT IF WE WANT TO UPDATE MULTIPLE ROWS WE WILL NEED TO USE THE IN clause
-- to connect with the subquery statment
-- let´s see how:
 UPDATE invoices
 SET -- to update 
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id IN -- IN operator since we are updating multiple records/rows with the subquery
				(SELECT client_id
				 FROM clients
                 WHERE state IN ('CA','NY'));
			
-- IN BOUTH EXAMPLES WE COULD JUST ACESS WHIT HIS ID WITHOUT SUBQUERIES   

-- PRACTICE EXERCISE

-- UPDATE THE COMMENTS FOR EACH ORDERS WHOSE CUSTOMERS HAVE MORE THEN 3000 POINTS
-- change the comments for 'Gold customer'
UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id 
IN (SELECT customer_id  -- TIP : see each id returs first to see if it´s right before updating
	FROM customers
    WHERE points > 3000); 

              
              -- unclause () WHEN WRITING SUBQUERIES