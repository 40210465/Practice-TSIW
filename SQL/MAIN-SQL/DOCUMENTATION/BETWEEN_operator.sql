-- BETWEEN OPERATOR

-- * The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
-- * The BETWEEN operator is inclusive: begin and end values are included. 

-- LET´S SEE SOME EXAMPLES :
--
-- return the customers with more then 1000 and less then 3000 points
-- WITH AND OPERATOR 
SELECT * FROM customers WHERE customers.points > 1000 AND customers.points <= 3000;
--
-- WITH BETWEEN OPERATOR
SELECT * FROM customers WHERE customers.points BETWEEN 1001 AND 2999; 
-- notice that with BETWEEN OPERATOR IT BECOMES MORE EASY TO READ THIS QUERY AND HIS CONDITIONS !!

-- PRACTICE EXERCISE

-- Return customers born between 1/1/1990 and 1/1/2000

-- WITH "old fashion" we query like this : 
-- WITH AND OPERATOR
SELECT * FROM customers WHERE customers.birth_date > '1990-01-01' AND customers.birth_date < '2000-01-01';

-- WITH BETWEEN OPERATOR
SELECT * FROM customers WHERE customers.birth_date BETWEEN '1990-01-01' AND '2000-01-01';
--
-- notice that we get the same result but with between operator it becomes more easy to read the query !!
-- notice that the format date is 'yyyy-mm-dd' for SQL !!