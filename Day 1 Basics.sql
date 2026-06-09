/*------------------------------------------------Day 1------------------------------------------------------------------*/
CREATE DATABASE IF NOT EXISTS Mayank_DB;
SHOW databases;

USE Mayank_DB;
USE Mayank_DB;

CREATE TABLE greetings (
    ID INT PRIMARY KEY,
    Message VARCHAR(256)
);
INSERT INTO  greetings (ID,Message) 
VALUES (1,"HELLO");
SHOW TABLES;


SELECT Message FROM greetings;

CREATE TABLE Employees (
    EmpID INT,
    EmpName VARCHAR(50),
    Salary INT,
    Bonus INT
);

-- Inserting sample data
INSERT INTO Employees (EmpID, EmpName, Salary, Bonus)
VALUES
(1, 'Amit', 40000, 5000),
(2, 'Neha', 50000, 7000),
(3, 'Ravi', 30000, 3000);

SELECT EmpName,
       Salary,
       Bonus,
       Salary + Bonus AS Total_Income,
       Salary / 12 AS Monthly_Salary
FROM Employees;

-- Create sample table
CREATE TABLE Students (
  ID INT,
  Name VARCHAR(50),
  Marks INT
);

-- Insert data
INSERT INTO Students VALUES
(1, 'Amit', 85),
(2, 'Neha', 70),
(3, 'Ravi', 55);

SELECT ID,Name  FROM Students WHERE Marks>=70;
DROP TABLE Students;
-- Create sample table
CREATE TABLE Students (
  ID INT,
  Name VARCHAR(50),
  Marks INT,
  Age INT
);

-- Insert data
INSERT INTO Students VALUES
(1, 'Amit', 85, 18),
(2, 'Neha', 70, 19),
(3, 'Ravi', 55, 17);

SELECT Name FROM Students WHERE Marks>=70 AND Age>=18;
CREATE TABLE Users (
    UserID INT,
    UserName VARCHAR(50),
    Permissions INT   -- Stores permission flags as a number
);

-- Insert sample data
-- Permission flags: Read=1, Write=2, Execute=4
INSERT INTO Users (UserID, UserName, Permissions) VALUES
(1, 'Amit', 1),   -- Read only
(2, 'Neha', 3),   -- Read + Write
(3, 'Ravi', 7);   -- Read + Write + Execute

DESCRIBE Employees;
ALTER TABLE Employees
ADD PRIMARY KEY (EmpID);
UPDATE Employees
SET Salary = Salary - 2000
WHERE EmpID = 1;
select Salary FROM Employees WHERE EmpID=1;
drop Table Students

CREATE TABLE Students (
    ID INT,
    Name VARCHAR(50),
    Marks INT
);
ALTER table Students
ADD primary  key(ID);

SELECT * FROM Students
WHERE Marks BETWEEN 60 AND 90;
SELECT * FROM Students
WHERE Name LIKE 'N%';
SELECT * FROM Customer WHERE FirstName LIKE 'Dan___';
SELECT * FROM Customer WHERE FirstName LIKE 'May__';
SELECT * FROM Customer WHERE LastName REGEXP '[A-C]';
ALTER TABLE Students
RENAME TO Students_Data;
ROLLBACK;
/*------------------------------------------------------DAY 1 -------------------------------------------------------------------*/


