/* TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, LOWER, UPPER */
DROP TABLE IF EXISTS EmployeeErrors
CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

-- TRIM FUNCTIOn
SELECT EmployeeID, TRIM(EmployeeID) as TRIM_employeeID
FROM [SQL Tutorials]..EmployeeErrors

-- LTRIM FUNCTION
SELECT EmployeeID, LTRIM(EmployeeID) as LTRIM_employeeID
FROM [SQL Tutorials]..EmployeeErrors

--RTRIM FUNCTION
SELECT EmployeeID, RTRIM(EmployeeID) as RTRIM_employeeID
FROM [SQL Tutorials]..EmployeeErrors

-- REPLACE Function 
SELECT * , REPLACE(LastName, '- Fired','') as LastName_Fixed
FROM [SQL Tutorials]..EmployeeErrors

-- SUBSTRING Function

SELECT *, SUBSTRING(FirstName,1,3) as PracticeSubstring
FROM [SQL Tutorials]..EmployeeErrors

-- Apply Substring in Fuzzy Matching
SELECT Demo.EmployeeID, Demo.FirstName, Err.FirstName,
SUBSTRING(Demo.FirstName, 1, 3) as SubDemoFirstName,
SUBSTRING(Err.FirstName, 1, 3) as SubErrFirstName --4
FROM [SQL Tutorials]..EmployeeDemographics as Demo --1
INNER JOIN [SQL Tutorials]..EmployeeErrors as Err --2 
	ON SUBSTRING(Demo.FirstName, 1, 3) =  SUBSTRING(Err.FirstName, 1, 3) --3

-- LOWER And UPPER
SELECT FirstName, LOWER(FirstName) as Lower_Fname
FROM [SQL Tutorials]..EmployeeErrors

SELECT FirstName, UPPER(FirstName) as Lower_Fname
FROM [SQL Tutorials]..EmployeeErrors
