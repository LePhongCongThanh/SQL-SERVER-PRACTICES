/* WHERE STATEMENT
<, >, <=, >=, <>, AND, OR, LIKE, NULL, NOT NULL, IN */

SELECT * /*varchar*/
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]
WHERE FirstName <> 'Jim'

SELECT *
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]
Where Age > 30 AND Gender <>'Male'

SELECT *
FROM [SQL Tutorials].[dbo].EmployeeDemographics
WHERE FirstName LIKE 'M%' AND AGE > 32

SELECT *
FROM [SQL Tutorials].[dbo].EmployeeDemographics
WHERE FirstName LIKE '%e%' AND AGE > 32

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
Where FirstName IS NOT NULL AND AGE > 30 and LastName LIKE '%N'
										
SELECT * 
FROM [SQL Tutorials].dbo.EmployeeDemographics
Where LastName IS NULL
/* IN (list in Python) */	

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
WHERE LastName IN('Martin', 'Scott')

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
WHERE AGE IN(30,31)