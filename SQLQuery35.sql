/* CREATE STORED PROCEDURE */
--
CREATE PROCEDURE Table_Jobtitle
AS
BEGIN
DROP TABLE IF EXISTS Statistics_Jobtitle --1
CREATE TABLE Statistics_Jobtitle(
Jobtitle varchar(50),
Count_jobtitle int,
AvgSal int,
AvgAge int
) --2 

INSERT INTO Statistics_Jobtitle --3
SELECT Jobtitle, COUNT(Jobtitle), AVG(Salary), AVG(AGE) --8 
FROM [SQL Tutorials]..EmployeeSalary as Sal --4
INNER JOIN [SQL Tutorials]..EmployeeDemographics as Demo --5
	ON Sal.EmployeeID = Demo.EmployeeID--6
GROUP BY Jobtitle --7
SELECT *
FROM Statistics_Jobtitle --9


EXEC Table_Jobtitle


/* CREATE STORED PROCEDURE with One Parameters */
CREATE PROCEDURE Table_Jobtitle_one
    @Job nvarchar(100) -- Changed parameter length to 100 for 'Salesman' and 'HR'
AS
BEGIN -- Added BEGIN and END keywords to enclose the procedure body
    DROP TABLE IF EXISTS Statistics_Jobtitle;
    CREATE TABLE Statistics_Jobtitle(
        Jobtitle varchar(100),
        Count_jobtitle int,
        AvgSal int,
        AvgAge int
    );

    INSERT INTO Statistics_Jobtitle
    SELECT Jobtitle, COUNT(Jobtitle), AVG(Salary), AVG(AGE)
    FROM [SQL Tutorials]..EmployeeSalary as Sal
    INNER JOIN [SQL Tutorials]..EmployeeDemographics as Demo
        ON Sal.EmployeeID = Demo.EmployeeID
    WHERE JobTitle IN (@Job) -- Added parentheses around @Job and changed 'IN @Job' to 'IN (@Job)'
    GROUP BY Jobtitle;

    SELECT *
    FROM Statistics_Jobtitle;
END;

EXEC Table_Jobtitle_one @Job = 'Salesman';
;-- Added single quotes around 'Salesman,HR'