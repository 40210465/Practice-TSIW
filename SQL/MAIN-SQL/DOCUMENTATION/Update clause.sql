-- UPDATE clause

-- With UPDATE clause we can update existing records/rows in a table

-- PRACTICE EXAMPLES :
 
 -- UPDATING A SING RECORD/ROW
 -- ---------------------------------------------------------------------------------------------------------
 UPDATE invoices
 SET
	payment_total = invoice_total * 0.5, -- to get 50% of the original value 
    payment_date = due_date
WHERE invoice_id = 3; -- TO UPDATE THE RECORD WITH THE PREVIOUS CHANGES WHERE THE ID INVOICE HIS 3
 -- ---------------------------------------------------------------------------------------------------------

-- UPDATING MULTIPLE RECORDS/ROWS
 -- ---------------------------------------------------------------------------------------------------------
 UPDATE invoices
 SET
	payment_total = invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id = 3;
 -- ---------------------------------------------------------------------------------------------------------
-- PRACTICE EXERCISE

-- Write a SQL statment to
-- give any customers born before 1990
-- 50 extra points

-- the customers id to be receive :
-- 1 , 2 , 3, 4, 5, 7, 10

UPDATE customers
SET -- set clause to tell SQL each records will be updated
	points = points + 50 -- to give 50 extra points
WHERE birth_date < '1990-01-01';    