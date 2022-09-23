-- DELETE statment

-- The Delete statment allow us to delete existing records/rows in a table

-- ** !! Always use WHERE clause in a DELETE statment since that it would delete all the records/rows
-- from the table withtout the WHERE clause !! **

-- Let´s see some practice examples to understand better :


-- DELETING SINGLE ROW/RECORD
-- -----------------------------------------------------------------------------
-- Delete the invoices with the id of 1 from the invoices table
DELETE FROM invoices
WHERE invoice_id = 1;

-- in this example we deleted one single row from the table invoices
-- -----------------------------------------------------------------------------


-- DELETING MULTIPLE ROWS/RECORDS
-- -----------------------------------------------------------------------------
-- but let´s suppose we want to delete multiple rows from one table
-- We would need to use the IN operator to combine multiple records in the Where clause
-- in order to delete the multiple rows who are specified on the IN operator
DELETE FROM invoices
WHERE client_id IN(5,3); 

-- notice that we would give an error since we can´t delete foreign keys from the parent table
-- and we can only remove the primary key from the parent table since the foreign keys belong there 
-- parents table, so we can only remove the invoice_id, because is the primary key of that table
-- LET´S SEE:
DELETE FROM invoices
WHERE invoice_id IN(5,3); -- will delete the 2 records with the id of 5 and 3 by acessing his primary key(invoice_id)
-- -----------------------------------------------------------------------------


-- DELETING WITH SUBQUERIES
-- -----------------------------------------------------------------------------
-- DELETE THE EMPLOYES WHOSE OFFICES ARE FROM CINCINNATI
DELETE FROM employees
WHERE office_id
IN (
	SELECT office_id
		FROM offices
        WHERE city = 'Cincinnati'
	);