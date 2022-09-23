-- SELF OUTER JOIN

-- RETURN ALL THE MANAGERS FOR EACH EMPLOYEE
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees AS e
LEFT JOIN employees AS m ON e.reports_to = m.employee_id; -- OUTER JOIN TO RETURN ALL THE RECORDS EVEN IF THEY ARE NULL