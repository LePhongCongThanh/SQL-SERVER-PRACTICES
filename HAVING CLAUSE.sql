/* HAVING CLAUSE */
/* The HAVING clause is used in SQL queries to filter the results based on aggregate functions */
SELECT Jobtitle, AVG(Salary) AS [Average Salary] --3 
FROM [SQL Tutorials].dbo.EmployeeSalary --1
GROUP BY Jobtitle --2 
HAVING AVG(Salary) > 40000 --4
ORDER BY AVG(Salary) DESC --5

SELECT Age, AVG(Salary) AS [AVERAGE SALARY] --5
FROM [SQL Tutorials].dbo.EmployeeDemographics --1
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary --2
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --3
GROUP BY AGE --4
HAVING AVG(Salary) > 45000 --6
ORDER BY AVG(Salary) DESC --7

