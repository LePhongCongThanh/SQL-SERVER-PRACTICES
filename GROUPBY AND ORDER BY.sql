/* GROUP BY AND ORDER BY*/

/* The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.*/

SELECT Gender, COUNT(Gender) aS 'Number of values' /*3*/
FROM [SQL Tutorials].dbo.EmployeeDemographics /*1*/
GROUP BY Gender /*2*/
ORDER BY [Number of values] DESC /*4*/

SELECT Gender, COUNT(Gender) aS 'Number of values'
FROM [SQL Tutorials].dbo.EmployeeDemographics
WHERE FirstName LIKE '%n'
GROUP BY Gender
ORDER BY [Number of values] DESC

/* ORDER BY */
SELECT * 
FROM EmployeeDemographics
ORDER BY AGE DESC, Gender ASC


SELECT * 
FROM EmployeeDemographics
ORDER BY LastName DESC