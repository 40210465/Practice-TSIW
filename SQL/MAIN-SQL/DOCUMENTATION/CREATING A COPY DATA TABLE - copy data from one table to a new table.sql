-- CREATING A COPY OF A TABLE
-- INSERT INTO SELECT statment
-- ** CREATE TABLE SELECT 

-- LET´S LEARN HOW TO COPY DATA FROM ONE TABLE TO ANOTHER TABLE


-- THERE ARE TWO WAYS TO COPY DATA FROM ONE TABLE TO ANOTHER :
-- with "INSERT INTO SELECT" select as a subquery
-- **with "CREATE TABLE AS SELECT" **=> USE THIS METHOD IF YOU HAVE TO CHANGE ANY DATA TYPE KEY FOR INSTANCE WITH A JOIN IN THE SUBQUERY SELECT SINCE WE ARE CREATING THE TABLE WITH THE SUBQUERY

-- ---------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------

-- COPY THE DATA FROM THE INVOICES TABLE INTO THE INVOICE ARCHIVED TABLE
-- NOTICE THAT :
-- YOU HAVE TO RETURN THE CLIENT NAME INSTEAD THE CLIENT ID
-- YOU HAVE TO RETURN ONLY THE INVOICES WITH THE PAYMENT DATE

	-- !! MAIN EXAMPLE !!

	CREATE TABLE invoices_archived
    -- SUBQUERY to create the table with the copy data from the invoices table
    AS SELECT 	
    i.invoice_id, i.number, c.name AS client_name, 
	i.invoice_total, i.payment_total, i.invoice_date, i.due_date, i.payment_date
	FROM invoices AS i
	LEFT JOIN clients AS c USING(client_id) -- USING since the keys name are the same OTHERWISE we would need to use a JOIN with a ON clause
    WHERE payment_date IS NOT NULL; -- to return only invoices with payment date
    
    
    -- ** in this example use create table with subquery select since we want to create the invoices archived with the data from the invoices table by using the select subquery
    -- we couldn´t use the insert into select to copy data, because in this example for returning the client name instead the client_id would give an error because the data type doesn´t match in 
    -- bouth tables
    -- ---------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------
    -- <SUMMARY>
    
    -- we use 'INSERT INTO SELECT' 	TO RETRIEVE ONLY THE DATA WITHOUT ANY UPDATE ON A SPECIF KEY
    -- we use 'CREATE TABLE SELECT' WHEN WE WANT TO RETURN A COPY DATA TABLE WITH UPDATED DATA IN SPECIF KEYS ON THE NEW TABLE
    -- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   
    -- PRACTICE EXAMPLES :
    
    -- RETURN THE TOP 3 CUSTOMERS IN A NEW TABLE => THE PURPOSE OF THIS EXERCISE IS TO ARCHIVE THE TOP 3 CUSTOMERS ABOUT THE AMOUNT OF POINTS

   -- with INSERT INTO SELECT
-- ------------------------------------------------------------------------------------------------------------------------------
   CREATE TABLE top_customers
	AS SELECT * FROM customers;     -- copy the data from the customers into the new table top_customers
    
    -- TRUNCATE to clean all the copy data from the customers table 
    TRUNCATE top_customers;
    
    -- now we INSERT INTO the new table specific copy data from the customers table
    INSERT INTO top_customers
    -- SUBQUERY SELECT in order to insert copy data with the SELECT statment SUBQUERY
    SELECT * FROM customers
	ORDER BY customers.points DESC -- order by desc to sort all the customers by points starting with the customers who haves the most points
	LIMIT 3; -- to get the the top 3 customers with the most points
    
    -- to display the result
    SELECT * FROM top_customers;
-- --------------------------------------------------------------------------------------------------------------------------------


-- with CREATE TABLE SELECT
-- --------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE top_customers_
-- subquery 
AS SELECT * FROM customers
ORDER BY customers.points DESC 
LIMIT 3;

-- to display the result
    SELECT * FROM top_customers_;