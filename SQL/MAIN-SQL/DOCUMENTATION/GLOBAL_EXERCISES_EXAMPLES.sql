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