/* UPDATING AND DELETING DATA */
/*UPDATE*/

SELECT * 
FROM [SQL Tutorials].dbo.EmployeeDemographics

UPDATE [SQL Tutorials].dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE [SQL Tutorials].dbo.EmployeeDemographics
SET AGE = 30, Gender = 'Male'
WHERE EmployeeID = 1012

/*DELETE DATA*/

DELETE FROM [SQL Tutorials].dbo.EmployeeDemographics
WHERE EmployeeID = 1004