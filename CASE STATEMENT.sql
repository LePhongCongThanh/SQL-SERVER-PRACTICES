/* CASE STATEMENT */

SELECT FirstName, LastName, Age, --5
CASE --4
	WHEN Age > 30 then 'OLD'
	WHEN Age <= 10 then 'BABY'
	ELSE 'YOUNG'
END AS 'OLD/YOUNG'
FROM [SQL Tutorials].dbo.EmployeeDemographics --1
WHERE FirstName like '%n' --2
ORDER BY Age DESC --3

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Jobtitle, Salary, --5
CASE --4
	WHEN Jobtitle = 'Salesman' then Salary + (Salary *.05)
	WHEN JobTitle = 'Accountant' then Salary + (Salary *.03)
	ELSE Salary + (Salary *.02)
END AS 'MODIFIED SALARY'
FROM [SQL Tutorials].dbo.EmployeeDemographics --1
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary  --2
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID --3