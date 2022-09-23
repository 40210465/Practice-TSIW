-- SELF JOINS

-- A self join is a regular join, but the table is joined with itself.
-- IN A SELF JOIN WE ARE JOINING KEYS FROM THE SAME TABLE
--  SO IN THIS EXAMPLE THE 'reports_to' IS THE FOREIGN KEY(CHILD) EACH HAVES
--  A RELATIONSHIP BETWEEN THE 'employee_id' PRIMARY KEY(parent)

-- return the manager for each employee
SELECT * FROM employees AS e -- TELL SQL THAT ´e' STANDS FOR employees
JOIN employees AS m ON e.reports_to = m.employee_id; -- TELL SQL THAT 'm' STANDS FOR managers

-- REMAINDER !! return only the name of the manager as manager
SELECT e.employee_id, e.first_name, e.last_name, e.job_title, e.salary, CONCAT(m.first_name,' ',m.last_name) AS manager, e.office_id
FROM employees AS e
-- SELF JOIN
  JOIN employees AS m ON e.reports_to = m.employee_id;