-- NULL values
-- IS NULL operator

-- return the customers who doesn´t have a phone
SELECT * FROM customers WHERE customers.phone IS NULL;
-- ** will return all the records with null values in the key phone FROM the customers table ** !!

-- iS NULL WITH NOT OPERATOR
-- return the customers who haves a phone 
SELECT * FROM customers WHERE customers.phone IS NOT NULL;
-- ** will return only the records without null values in the key phone FROM the customers table ** !!

-- PRACTICE EXERCISE :

-- return the orders that are not shipped
SELECT * FROM orders WHERE orders.shipped_date IS NULL AND orders.shipper_id IS NULL;