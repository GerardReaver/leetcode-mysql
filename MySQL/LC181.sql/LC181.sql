-- Create Employee table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    salary INT,
    managerId INT
);

-- Insert sample data into Employee table
INSERT INTO Employee (id, name, salary, managerId) VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, NULL),
(4, 'Max', 90000, NULL);

-- Solution: Find the employees that get paid more than their managers. 
# Write your MySQL query statement below
/* Recognize that we need a Self-join
    since both employees and managers exist in the same table, we need to join the table to itself.
    This is called a self join. 
    One version of the table represents the employees and another version represents their managers.
    By using an Alias "e.name" i can refer to one version of the table which is the employee version vs the manager 
    version. by creating this alias we can refer to the data of one version much faster and can use the simple join. 
    Sam and Max have been removed from this version of the table because they have null values for managerId which 
    concludes they are the managers. by joining the manager version of the table to the employee version and then
    setting a WHERE cause to see whose salary in the employee table is higher than the manager version. 
*/
SELECT 
    e.name AS Employee
FROM
    employee e
JOIN
    employee m ON e.managerId = m.id
WHERE
    e.salary > m.salary