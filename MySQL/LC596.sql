-- Create the table for the Leetcode problem 596
CREATE TABLE Courses596 (
    student VARCHAR(50),
    class VARCHAR(50),
    PRIMARY KEY (student, class)
);

-- Insert the data into the table for the problem
INSERT INTO Courses596(student, class) VALUES
('A', 'Math'),
('B', 'English'),
('C', 'Math'),
('D', 'Biology'),
('E', 'Math'),
('F', 'Computer'),
('G', 'Math'),
('H', 'Math'),
('I', 'Math');

-- Run a query to get a solution to find all the lcasses that have at least five students. 
SELECT
    class 
FROM
    Courses596 
GROUP BY
    class 
HAVING 
    COUNT(class) >= 5