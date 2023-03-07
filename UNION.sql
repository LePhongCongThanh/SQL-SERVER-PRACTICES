/* UNION, UNION ALL */
/* CREATE TABLE OF WAREHOUSE */

CREATE TABLE WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

/* INNER JION EmployeeDemograhphics and WAREHOUSEemployeedemographics */
SELECT *
FROM [SQL Tutorials].dbo.WareHouseEmployeeDemographics
FULL OUTER JOIN [SQL Tutorials].dbo.EmployeeDemographics
 ON WareHouseEmployeeDemographics.EmployeeID = EmployeeDemographics.EmployeeID

/*UNION*/
SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
UNION --APPEND AND DROPDUPLICATES
SELECT *
FROM [SQL Tutorials].dbo.WareHouseEmployeeDemographics

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
UNION ALL --NO DROPDUPLICATES
SELECT *
FROM [SQL Tutorials].dbo.WareHouseEmployeeDemographics

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorials].dbo.EmployeeDemographics
UNION -- STILL APPEND BECAUSE OF THE SAME DATATYPES THOUGH DIFFERENT NAME OF COLUMNS
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorials].dbo.EmployeeSalary

