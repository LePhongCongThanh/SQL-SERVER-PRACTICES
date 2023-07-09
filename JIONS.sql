/* INSERT MORE ROWS */

INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male') 

SELECT *
FROM EmployeeDemographics

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salemans', 43000)

SELECT *
FROM EmployeeSalary

/*INNER JION, FULL/LEFT/RIGHT/ OUTER JIONs */

SELECT * /*4*/
FROM EmployeeDemographics /*1*/
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary /*2*/
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*3*/

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary /*4*/
FROM EmployeeDemographics /*1*/
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary /*2*/
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*3*/

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorials].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary /*4*/
FROM EmployeeDemographics /*1*/
LEFT OUTER JOIN [SQL Tutorials].dbo.EmployeeSalary /*2*/
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*3*/

SELECT *
FROM [SQL Tutorials].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorials].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorials].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorials].dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary /*4*/
FROM EmployeeDemographics /*1*/
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary /*2*/
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*3*/

/* JIONS AND WHERE, ORDERBY, GROUP BY */
SELECT Gender, AVG(Salary) as 'Average Salary' /*6*/
FROM EmployeeDemographics /*1*/
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary /*2*/
 ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID /*3*/
WHERE AGE > 30 /*4*/
GROUP BY Gender  /*5*/
ORDER BY [Average Salary] ASC /*7*/

SELECT w2.id
FROM Weather w1
join Weather w2
ON DATEDIFF (w1.recordDate ,w2.recordDate ) = -1
Where w1.temperature < w2.temperature
 
SELECT a.machine_id , round(avg(b.timestamp-a.timestamp),3) as processing_time
from
Activity as a
INNER join Activity as b
on a.machine_id = b.machine_id and a.process_id = b.process_id
and a.activity_type = 'start' and b.activity_type = 'end'
group by a.machine_id
