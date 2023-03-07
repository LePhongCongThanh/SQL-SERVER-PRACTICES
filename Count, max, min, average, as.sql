
/* Select values */
SELECT TOP (10) *
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]
 
SELECT TOP (10) *
FROM [SQL Tutorials].[dbo].[EmployeeSalary]
/* Select UNIQUE values */
SELECT DISTINCT  Gender, Age 
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]

SELECT DISTINCT Gender AS VALUE_UNIQUE_GENDER
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]
/* COUNT */ 
SELECT COUNT(Gender) AS  Th_NUMBER_VALUES_OF_GENDER  /* The COUNT() function returns the number of records returned by a select query */ 
FROM [SQL Tutorials].[dbo].[EmployeeDemographics]
/* AVG, MAX, MIX*/
SELECT AVG(Salary) as AVERAGE_SALARY, MIN(Salary) AS Minimum_Salary, MAX(Salary) AS MAXIMUM_SALARY
FROM [SQL Tutorials].[dbo].[EmployeeSalary]