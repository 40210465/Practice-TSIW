-- JOIN ACROSS DATABASES

-- join the order items table with products table in the sql_inventory database
SELECT * FROM sql_store.order_items;

-- ALWAYS PREFIX TABLES WHEN JOINING ACROSSING DATABASES FOR INSTANCE:
SELECT * FROM order_items
-- WE HAD TO PREFIX THE TABLE PRODUCTS TO JOIN WITH THE sql_inventory DataBase => sql_inventory.products
INNER JOIN sql_inventory.products ON products.product_id = order_items.product_id;