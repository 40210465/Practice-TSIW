-- INSERT INTO STATMENT

-- WE CAN INSERT VALUES TO KEYS OR COLUMNS FROM A TABLE WITH THE "INSERT INTO" STATMENT

-- LET´S SEE HOW WE DO IT:
-- ** IT IS POSSIBLE TO WRITE A INSERT INTO STATMENT IN THREE WAYS

-- ------------------------------------------------------------------------------------
-- 1st way
-- WE CAN SPECIFY BOTH COLUMN NAMES AND THERE VALUES FOR EACH COLUMN

-- INSERT INTO customers(column1, column2, column3,...)
-- VALUES (value1, value2, value3, ...)

-- !! value1 will be added to the column1
-- !! value 2 will be added to the column2
-- !! value 3 will be added to the column3
-- and so on...

-- ------------------------------------------------------------------------------------
-- 2nd way
-- WE DON´T NEED TO SPECIFY THE COLUMN NAMES SINCE WHEN WE CREATE THE TABLE BY DEFAULT
-- WILL BE NULL VALUES IN EACH COLUMN SO WE JUST NEED TO MAKE SURE TO INSERT VALUES TO THE TABLE
-- TO BE INSERTED DATA IN EACH COLUMN BUT MAKE SURE TO FOLLOW THE CONSTRAINS OF EACH COLUMN
-- FOR INSTANCE IF A SPECIF COLUMN CAN´T BE NULL WITH 'NOT NULL' constrain MEANS THAT WE NEED
-- TO ADD SOME DATA TO THE COLUMN
-- OR IF A SPECIF COLUMN ONLY ACCEPTS INTEGER VALUES MEANS THAT WE CAN ADD OTHER DATA TYPES 
-- UNLESS IS A INTEGER

-- INSERT INTO customers
-- VALUES(value1,value2,value3,...)

-- LIKE MENTION BEFORE THE VALUES WILL BE ADDED TO THERE SPECIF ORDER COLUMNS, JUST MAKE
-- SURE TO ADD IN THERE ORDER

-- ------------------------------------------------------------------------------------
-- 3th way
-- INSTEAD OF REPEATING THE SAME STATMENT OVER AND OVER LIKE FOR ISNTANCE:

-- *************************************************************************
-- INSERT INTO customers
-- VALUES(value1,value2,value3,...)

-- INSERT INTO customers
-- VALUES(value1,value2,value3,...)
-- *************************************************************************

-- WE CAN SHORTCUT BY JUST COMBINING EACH ROW OR RECORD WITH MULTIPLE ROWS

-- INSERT INTO customers
-- VALUES(value1,value2,value3,...),(value1,value2,value3,...)

-- ** in this example we are adding two rows with there specif values
-- ------------------------------------------------------------------------------------

-- LET´S SEE SOME PRACTICE EXAMPLES :

-- WRITE A STATMENT TO INSERT THREE ROWS IN THE PRODUCTS TALBE
INSERT INTO products(name,quantity_in_stock,unit_price)
VALUES('Nhoque',54,12.50),
		('Chrocchè di Patate - Napoles',152,75.80),
        ('Bistecca alla Fiorentina - Polpettone',230,72.40);
        
	-- NOTICE THAT WE DIN´T ADD THE VALUES FOR THE PRODUCT_ID KEY/COLUMN SINCE THEY
    -- AUTO INCREMENT THERE VALUES FOR UNIQUELY IDENTIFY EACH ROW FOR THE COLUMN PRODUCT_ID
    -- SO WE DON´T NEED TO ADD VALUE TO IT