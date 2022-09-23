-- LIMIT 
-- LIMIT clause

-- The LIMIT clause is used to specify the number of records to return.
-- The LIMIT clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

-- return only first 3 customers 
SELECT * FROM customers LIMIT 3;

-- ** NOTICE THAT, WILL ONLY RETURN THE FIRST 3 RECORDS FROM THE CUSTOMERS TABLE ** !!

SELECT * FROM customers LIMIT 300;
-- ** NOTICE THAT, IF WE LIMIT BY 300 WILL RETURN ALL THE RECORDS SINCE THERE IS NOT 300 CUSTOMERS IN THE TABLE CUSTOMERS ** !!

-- IMAGE THAT YOU HAVE WEBSITE AND WE HAVE WEBPAGE FOR THE USER TO SEE ALL THE CUSTOMERS IN THE DATABASE
-- FOR SIMPLICITY LET´S IMAGINE WE WANT TO SHOW 3 CUSTOMERS FOR EACH PAGE IN THAT WEBPAGE

-- FOR INSTANCE :										the range set
-- PAGE 1 - 3 => 1 : dsadsad  2: sadsadas  3: asdasdas  1-3
-- PAGE 2 - 3 => 4 : sadas    5: sadsad    6: dsadasd   4-6
-- PAGE 3 - 3 => 7 : adas     8: dasdsa    9: dasdsa    7-9

SELECT * FROM customers LIMIT 3; 	-- 1-3 PAGE 1
SELECT * FROM customers LIMIT 3,3; 	-- 4-6 PAGE 2
SELECT * FROM customers LIMIT 6,3; 	-- 7-9 PAGE 3

-- ** BASSICLY WILL IGNORE THE FIRST CONDITION UNTIL THE LIMIT AND WILL DISPLAY ONLY THE SECOND CONDITION LIMIT ** !!

-- PRACTICE EXERCISE 

-- return the TOP 3 loyal customers => THE BEST 3 LOYAL CUSTOMERS
-- NOTE : MORE POINTS MEANS THEY ARE LOYAL
SELECT * FROM customers 
ORDER BY customers.points DESC LIMIT 3;