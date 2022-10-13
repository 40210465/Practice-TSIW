- company Database Exercises
-- create the entities for the company database

-- entities : Employee, Branch, Client, Works_With, Branch_Supplier
-- 
CREATE TABLE Employee(
emp_id INT NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
birth_date DATE NOT NULL,
sex VARCHAR(255) NOT NULL,
salary INT NOT NULL,
supervisor_id INT,
branch_id INT NOT NULL,
-- constrains :
PRIMARY KEY(emp_id),
-- foreign keys to relate with other tables or with the same table
constraint `FK_super_id` FOREIGN KEY(supervisor_id) REFERENCES Employee(emp_id),
constraint `FK_branch_id` FOREIGN KEY(branch_id) REFERENCES Branch(branch_id)
);

-- 