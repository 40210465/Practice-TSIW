SELECT * FROM sql_store.order_items;
SELECT * FROM sql_store.products;
SELECT * FROM sql_store.quality_product;


-- RETURN FOR EACH PRODUCT OF THE ORDERS:
-- PRODUCT ID
-- PRODUCT NAME
-- QUANTITY (TOTAL QUANTITY)
-- TOTAL PRICE
--  ORDER BY TOTAL PRICE
-- TYPE column WITH THE TYPE CLASS OF THE PRODUCT ABOUT HIS QUALITY:
-- LESS THAN 10€ => F
-- BETWEEN 10€ AND 15€ => D 
-- BETWEEN 15€ AND 20€ => C 
-- BETWEEN 20€ AND 30€ => B 
-- BETWEEN 30€ AND 45€ => A 
-- ABOVE 45€ => S++   
-- EXAMPLE OUTPUT [product_id, name, total_quantity, total_price, quality_note] => [4 | 'Brocolinni - Gaylan, Chinese' | 8 | 21.60 € | B]
SELECT 
p.product_id, p.name AS product_name, 
SUM(oi.quantity) AS total_quantity, 
CONCAT(oi.quantity * SUM(oi.unit_price),'€') AS total_price,
qp.quality_note
FROM order_items AS oi
 JOIN products AS p USING(product_id) -- INNER JOIN => SAME AS on oi.product_id = p.product_id
 JOIN quality_product AS qp USING(product_id)
-- TO RETURN FOR EACH KEY product_name VALUE THE SUM AGG FUNCTIONS => total_quantity and total_price
GROUP BY p.name
ORDER BY oi.quantity * SUM(oi.unit_price);

-- RETURN HOW MUCH INDIVIDUALLY QUALITY NOTES HAVE FOR EACH PRODUCT OF EACH ORDER
-- FOR INSTANCE : [quality_note, quality_note_quantity] => ['S++',2] 
-- THIS EXAMPLE MEANS THAT ARE 2 S++ QUALITY_NOTES ON TOTAL
SELECT quality_note, COUNT(quality_note) AS quality_note_quantity
FROM quality_product
GROUP BY quality_note;

-- ----------------------------------------------------------------------------------------------
-- WRITE A QUERY TO RETURN BOUTH CONDITIONS

-- CONDITION 1 : departamento_codigo = 40
-- CONDITION 2: Salario > 500,00

-- AND
SELECT * FROM clientes
WHERE 
Departamento_Codigo = 40 
AND
Salario > 500.00;        

-- OR
SELECT * FROM clientes
WHERE 
Departamento_Codigo = 40 
OR
Salario > 500.00;   

-- TO RETURN ONLY THE EMPLOYYERS THAT DON´T WORKS ON THE 10 OR 30 DEPARTMENT
SELECT * FROM clientes
WHERE Departamento_Codigo NOT IN
( 10,30);

-- Return only the employers with the salary between 250 and 800
SELECT * FROM clientes
WHERE Salario BETWEEN 250 AND 800;
-- ----------------------------------------------------------------------------------
-- RETURN HOW MUCH PERSONS HAVE A ODD AGE
SELECT COUNT(persons.person_ID) AS 'Odd_age_persons'
FROM persons
WHERE age % 2 = 0;

-- RETURN HOW MUCH MOVIES START WITH T
SELECT COUNT(filmes.ID) AS 'Movies_start_with_T'
FROM filmes
WHERE filmes.Título REGEXP '^T'; -- STARTS WITH T with regexpressions

-- RETURN ONLY THE MOVIES EACH CONTAINS VOWELS
SELECT COUNT(filmes.ID) AS 'Movies_with_vowels'
FROM filmes
WHERE filmes.Título REGEXP '[a-o]'; -- contains vowels aeiou in a range [a-o]


-- RETURN THE SMALLEST TITLE MOVIE
SELECT filmes.Título 
FROM filmes 
ORDER BY LENGTH(filmes.Título)
LIMIT 1;

-- RETURN THE BIGGEST TITLE MOVIE
SELECT filmes.Título 
FROM filmes 
ORDER BY LENGTH(filmes.Título) DESC
LIMIT 1;

-- RETURN THE TOTAL SALARY FROM THE 40 DEPARTMENT
SELECT DISTINCT c.Departamento_Codigo, d.departamento, SUM(c.Salario) AS 'salario_total'
FROM clientes AS c
JOIN departamentos AS d ON c.Departamento_Codigo = d.Codigo 
WHERE c.Departamento_Codigo = 40;

-- ORDER BY THE DEPARTMENTS BY HIS TOTAL SALARY
-- return with the follow pattern [nome_departamento, salario_total]
SELECT c.Departamento_Codigo, d.departamento AS 'nome_departamento', SUM(c.Salario) AS 'salario_total'
FROM clientes AS c
JOIN departamentos AS d ON c.Departamento_Codigo = d.Codigo
GROUP BY nome_departamento
ORDER BY salario_total DESC;
-- ------------------------------------------------------------------------------------------------------------------



