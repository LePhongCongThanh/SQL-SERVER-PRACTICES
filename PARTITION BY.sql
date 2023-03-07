/* 
Partition by 
*/
/* The PARTITION BY clause in SQL is used to divide a result set into partitions, or groups, based on one or more columns. */
SELECT Demo.EmployeeID, FirstName, LastName, Gender, 
COUNT(Gender) OVER (PARTITION BY GENDER) AS TotalGender --4
FROM [SQL Tutorials].dbo.EmployeeDemographics AS Demo --1
INNER JOIN EmployeeSalary AS Sal --2
	ON Demo.EmployeeID = Sal.EmployeeID --3

/* PARTITION BY, GROUP BY */
SELECT Demo.EmployeeID, FirstName, LastName, Gender, Salary, 
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSalary --4
FROM [SQL Tutorials].dbo.EmployeeDemographics AS Demo --1
INNER JOIN EmployeeSalary AS Sal --2
	ON Demo.EmployeeID = Sal.EmployeeID --3

SELECT Gender, AVG(Salary) as AvgSalaryPerGender
FROM [SQL Tutorials].dbo.EmployeeDemographics as Demo
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary as Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender
ORDER BY AVG(Salary) DESC
