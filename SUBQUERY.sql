/*
SUBQUERY IN SELECT, FROM, WHERE
*/

-- SUBQUERY IN SELECT
SELECT EmployeeID, Salary, (SELECT AVG(SALARY) FROM EmployeeSalary) as AVGSAL
FROM [SQL Tutorials]..EmployeeSalary

SELECT EmployeeID, Salary,
AVG(Salary) OVER () as AVGSAL
FROM [SQL Tutorials]..EmployeeSalary

-- SUBQUERY IN FROM
SELECT Salary
FROM  (SELECT EmployeeID, Salary, (SELECT AVG(SALARY) FROM EmployeeSalary) as AVGSAL
      FROM [SQL Tutorials]..EmployeeSalary) a

-- SUBQUERY IN WHERE 

SELECT *
FROM EmployeeSalary
WHERE EmployeeID IN (
				SELECT EmployeeID
				FROM EmployeeDemographics
			    WHERE AGE > 30)
