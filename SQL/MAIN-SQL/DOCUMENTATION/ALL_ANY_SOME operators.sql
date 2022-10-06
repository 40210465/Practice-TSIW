-- OPERADORES LÓGICOS
-- ALL ANY/SOME

-- RETURN THE EMPLOYEE FROM THE 40 DEPARTMENT WHO HAVES THE BIGGEST SALARY THEN ALL THE 
-- EMPLOYEES FROM THE 30 DEPARTMENT

-- ALL

-- WITH ALL + SUBQUERY
SELECT * FROM clientes
WHERE Departamento_Codigo = 40 -- selecting the employees from the 40th department
AND Salario > ALL (SELECT Salario -- and the salary bying superior then all salaries from the 30th department
				   FROM   clientes 
				WHERE Departamento_Codigo = 30);

-- --------------------------------------------------------------------------------------------
-- WITH MAX AGGRE FUNCTION
SELECT * FROM clientes 
WHERE Departamento_Codigo = 40 -- selecting the employees from the 40th department
AND Salario > (SELECT MAX(Salario) -- and the salary bying superior then the maximum salary from the 30th department
				   FROM   clientes 
				WHERE Departamento_Codigo = 30);
-- ---------------------------------------------------------------------------------------
SELECT * FROM clientes
WHERE Departamento_Codigo = 40 
AND Salario > SOME (SELECT Salario 
				   FROM   clientes 
				WHERE Departamento_Codigo = 30);
                
-- Now we are selecting the employees/clients who haves superior salary then some employees from the 30th department
                
SELECT * FROM clientes
WHERE Departamento_Codigo = 40 
AND Salario > (SELECT MIN(Salario) 
				   FROM   clientes 
				WHERE Departamento_Codigo = 30);
                
                -- WILL RETURN TWO CLIENTS BECAUSE THEY HAVE A SUPERIOR SALARY THEN THE MINIMUM FROM THE 30TH DEPARTMENT
               
               -- -----------------------------------------------------------------------------------------------
                
