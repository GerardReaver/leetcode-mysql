-- Create the tables 
CREATE TABLE Employees1378 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE EmployeeUNI1378 (
    id INT,
    unique_id INT
);

-- Insert the values into the tables
INSERT INTO Employees1378 (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

INSERT INTO EmployeeUNI1378 (id, unique_id) VALUES 
(3, 1),
(11, 2),
(90, 3);

SELECT
    u.unique_id,
    e.name 
FROM
    Employees1378 AS e 
LEFT JOIN 
    EmployeeUNI1378 AS u 
ON 
    e.id = u.id 