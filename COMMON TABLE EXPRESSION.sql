/* COMMON TABLE EXPRESSION */
WITH CTE_Employee as (
SELECT Demo.EmployeeID, FirstName, LastName, Gender, Salary,
COUNT(Gender) OVEr (PARTITION BY GENDER) as TotalGender,
AVG(Salary) OVER (PARTITION BY GENDER) as AvgSalGender --5
FROM [SQL Tutorials].dbo.EmployeeDemographics as Demo --1
INNER JOIN [SQL Tutorials].dbo.EmployeeSalary as Sal --2
	ON Demo.EmployeeID = Sal.EmployeeID --3
WHERE Salary > '40000' --4
)

SELECT *
FROM CTE_Employee
WHERE AvgSalGender < 45000