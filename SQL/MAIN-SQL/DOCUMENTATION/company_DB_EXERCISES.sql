-- company Database Exercises
-- create the entities for the company database

-- entities : Employee, Branch, Client, Works_With, Branch_Supplier
-- 
CREATE TABLE Employee(
emp_id INT NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
birth_date DATE NOT NULL,
sex VARCHAR(255) NOT NULL,
salary FLOAT NULL,
supervisor_id INT,
branch_id INT NOT NULL,
-- constrains :
PRIMARY KEY(emp_id)
-- foreign keys to relate with other tables or with the same table
-- constraint `FK_super_id` FOREIGN KEY(supervisor_id) REFERENCES Employee(emp_id),
-- constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
);

-- to add the constrains Foreign keys to relate the employee table with himself and with the branch table
ALTER TABLE employee
ADD constraint `FK_super_id` FOREIGN KEY(supervisor_id) REFERENCES Employee(emp_id),
ADD constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id);


--
CREATE TABLE Branch(
branch_id INT NOT NULL,
branch_name VARCHAR(255) NOT NULL,
manager_id INT NOT NULL,
manager_start_date DATE NOT NULL,
PRIMARY KEY(branch_id),
constraint `FK_mgr_id` FOREIGN KEY(manager_id) REFERENCES Employee(emp_id)
); 

CREATE TABLE `Client`(
client_id INT NOT NULL,
client_name VARCHAR(255) NOT NULL,
branch_id INT NOT NULL,
PRIMARY KEY(client_id),
constraint `FK_branch_id_` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
); 

CREATE TABLE `Works_With`(
emp_id INT NOT NULL,
client_id INT NOT NULL,
total_sales FLOAT NOT NULL,
PRIMARY KEY(emp_id, client_id),
constraint `FK_emp_id` 		FOREIGN KEY(emp_id) REFERENCES Employee(emp_id),
constraint `FK_client_id`	FOREIGN KEY(client_id) REFERENCES `Client`(client_id)
);

CREATE TABLE `Branch_Supplier`(
branch_id INT NOT NULL,
supplier_name VARCHAR(255) NOT NULL,
supply_type VARCHAR(255) NOT NULL,
PRIMARY KEY(branch_id, supplier_name),
constraint `FK_branch_id__` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
);
-- ---------------------------------------------------------------------------------------

	-- -- A simple hack can be to disable foreign key checks before performing any operation on the table. Simply query
        -- SET THIS SIMPLE QUERY BEFORE INSERTING THE VALUES INTO THE TABLES OTHERWHISE WILL GIVE AN ERROR BECAUSE THE FOREIGN KEYS
       -- DISABLE FOREIGN KEYS BEFORE INSERTING VALUES
       SET FOREIGN_KEY_CHECKS=0;

-- SET THIS SIMPLE QUERY AFTER INSERTING THE VALUES INTO THE TABLES TO ENABLED THE FOREIGN KEYS FOR FUTURE MATCHES BWEETWEEN REALTIVE TABLES
   -- EANBLED FOREIGN KEYS AFTER INSERTING VALUES
   SET FOREIGN_KEY_CHECKS=1;

-- INSERTING VALUES INSIDE THE TABLES
-- Employee table
INSERT INTO employee(emp_id, first_name, last_name, birth_date, sex, salary, supervisor_id, branch_id)
VALUES (100, "David", "Wallace", "1967-11-17", "M", 250000, NULL, 1),
		(101, "Jan", "Levinson", "1961-05-11", "F", 110000, 100, 1),
        (102, "Michael", "Scott", "1964-03-15", "M", 75000, 100, 2),
        (103, "Angela", "Martin", "1971-06-25", "F", 63000, 102, 2),
        (104, "Kelly", "Kapoor", "1980-02-05", "F", 55000, 102, 2),
        (105, "Stanley", "Hudson", "1958-02-19", "M", 69000, 102, 2),
        (106, "Josh", "Porter", "1969-09-05", "M", 78000, 100, 3),
        (107, "Andy", "Bernard", "1973-07-22", "M", 65000, 106, 3),
		(108, "Jim", "Halpert", "1978-10-01", "M", 71000, 106, 3);
                
-- Branch table        
INSERT INTO Branch
VALUES (1, "Corporate", 100, "2006-02-09"),
        (2, "Scrantson", 102, "1992-04-06"),
        (3, "Stamford", 106, "1998-02-13");

-- Client Table
INSERT INTO Client
VALUES (400, "Dunmore Hightschool", 2),
		(401, "Lackawana Country", 2),
		(402, "FedEx", 3),
		(403, "John Daly Law, LLC", 3),
		(404, "Scranton Whitepages", 2),
		(405, "Times Newspaper", 3),
        (406, "FedEx", 2);

-- works_with table
INSERT INTO works_with
VALUES (105, 400, 55000),
		(102, 401, 267000),
		(108, 402, 22000),
		(107, 403, 5000),
		(108, 403, 12000),
		(105, 404, 33000),
		(107, 405, 26000),
		(102, 406, 15000),
		(105, 406, 130000);
 
 
 -- branch_supplier table
  INSERT INTO branch_supplier
  VALUES (2, "Hammer Mill", "Paper"),
		(2, "Uni-ball", "Writing Utensils"),
		(3, "Patriot Paper", "Paper"),
		(2, "J.T Forms & Labels", "Custom Forms"),
		(3, "Uni-ball", "Writing Utensils"),
		(3, "Hammer Mill", "Paper"),
		(3, "Stamford Lables", "Custom Forms");
-- -------------------------------------------------------------------------------
-- TASKS/ EXERCICES TO QUERY THE DATABASE

-- FIND ALL EMPLOYEES
SELECT * FROM employee;

-- FIND ALL CLIENTS
SELECT * FROM client;

-- FIND ALL EMPLOYEES ORDERED BY SALARY
SELECT * FROM employee
ORDER BY salary ;
        