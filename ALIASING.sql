/*ALIASING*/

SELECT FirstName AS FName
FROM [SQL Tutorials].dbo.EmployeeDemographics

SELECT FirstName FName 
FROM [SQL Tutorials].dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName 
FROM [SQL Tutorials].dbo.EmployeeDemographics

SELECT AVG(Age) AS [Average Age]
FROM [SQL Tutorials].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary --4
FROM [SQL Tutorials].dbo.EmployeeDemographics AS Demo --1
INNER JOIN  [SQL Tutorials].dbo.EmployeeSalary AS Sal --2
	ON Demo.EmployeeID = Sal.EmployeeID --3

SELECT Demo.EmployeeID, Demo.FirstName + ' ' + Demo.LastName  AS FullName, Sal.Jobtitle, Demo.Age --6
FROM [SQL Tutorials].dbo.EmployeeDemographics AS Demo --1
LEFT JOIN [SQL Tutorials].dbo.EmployeeSalary AS Sal --2
	ON Demo.EmployeeID = Sal.EmployeeID --3
LEFT JOIN [SQL Tutorials].dbo.WarehouseEmployeeDemographics AS Ware --4
	ON Demo.EMployeeID = Ware.EmployeeID --5

