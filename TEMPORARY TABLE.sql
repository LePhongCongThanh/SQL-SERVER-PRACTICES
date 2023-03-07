/* Temp Table, Temporary tables are particularly useful when you need to store intermediate results or perform complex calculations that require multiple steps. */
DROP TABLE IF EXISTS Statistics_Jobtitle
CREATE TABLE Statistics_Jobtitle(---6
Jobtitle varchar(50),
Count_jobtitle int,
AvgSal int,
AvgAge int
)

INSERT INTO Statistics_Jobtitle --9 
SELECT Jobtitle, COUNT(Jobtitle), AVG(Salary), AVG(AGE) --5 
FROM [SQL Tutorials]..EmployeeSalary as Sal --1
INNER JOIN [SQL Tutorials]..EmployeeDemographics as Demo --2
	ON Sal.EmployeeID = Demo.EmployeeID --3
GROUP BY Jobtitle --4

SELECT *
FROM Statistics_Jobtitle
