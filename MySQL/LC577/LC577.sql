--Start to finish code for Leetcode problem 577
CREATE TABLE Employee577 (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT,
    salary INT
);

--create a bonus table
CREATE TABLE Bonus577 (
    empId INT PRIMARY KEY,
    bonus INT,
    FOREIGN KEY (empId) REFERENCES Employee577(EmpId)
);

--insert the data into both tables
INSERT INTO Employee577 (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus577 (empId, bonus) VALUES
(2, 500),
(4, 2000);

--Write a solution to report the name and bonus amount of each emplyee with a bonus less than 1000
SELECT e.name, b.bonus
FROM Employee577 e
LEFT JOIN Bonus577 b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL