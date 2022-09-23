-- REGEXP operator
-- REGULAR EXPRESSIONS

-- return the customers who haves the word 'field' in there last name

-- WITH LIKE OPERATOR
SELECT * FROM customers WHERE customers.last_name LIKE '%field%';

-- WITH REGEX OPERATOR -- REGULAR EXPRESSIONS
SELECT * FROM customers WHERE customers.last_name REGEXP 'field$';

-- OPERATOR SYMBOLS with REGEX :

-- ^ search in the start of a string 
-- example: '^field' will search if there is any value each start with field 

-- $ search in the end of a string
-- example: 'field$' will search if there is any value each ends with field

-- | search bouth or multiply patterns of a string
-- example: 'field|mac|rose' will search if there is any values each includes 'field' or 'mac' or 'rose' and returns true the records
-- that includes 'field' or 'mac' or 'rose'

-- COMBINING OPERATOR SYMBOLS : 
-- 'field$|mac|rose' will search if there is any values that ends with 'field' AND includes 'mac' AND 'rose'

-- '[abc]f' or '[a-c]f' => will search if there is any values each includes 'a' or 'b' or 'c' before 'f'
-- example : could return **af**ins => afins notice 'a' comes before 'f' 

-- 'f[abc]' or 'f[a-c]' => will search if there is any values each includes 'a' or 'b' or 'c' after 'f'
-- examples could return fan notice 'a' comes after 'f'

-- [a-c]f => will search if there is any values each includes in the range of 'a' and 'c' before 'f'
-- NOTICE THAT '[a-c]f' is the same as '[abc]f' 

-- [] to match 
-- [-] to match with range

-- OVERVIEW REGEX

-- ^ beggining of a string
-- $ end of a string
-- | represents an OR operator to supply multiplies search of patterns
-- [abcd] to match the values inside the brackets [] with a character before or after
-- [a-f] to match with a range the values inside the brackets [] with a character before or after

-- PRACTICE EXERCISES

-- return the customers whose :
-- first names are ELKA or AMBUR 
SELECT * FROM customers WHERE customers.first_name  REGEXP 'ELKA|AMBUR';

-- last names end with EY or ON
SELECT * FROM customers WHERE customers.last_name  REGEXP 'EY$|ON$';

-- last names start with MY or contains/includes SE
SELECT * FROM customers WHERE customers.last_name  REGEXP '^MY|SE';

-- last names contain/include B followed by R or U
SELECT * FROM customers WHERE customers.last_name  REGEXP 'B[ru]'; -- other solutions -- 1. 'B[r-u]' 2. -- 'Br|Bu'