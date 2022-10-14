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
PRIMARY KEY(emp_id),
-- foreign keys to relate with other tables or with the same table
constraint `FK_super_id` FOREIGN KEY(supervisor_id) REFERENCES Employee(emp_id),
constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
);

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
constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
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
constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
);



