-- Create a table for the Leetcode problem
CREATE TABLE Person182 (
    id INT PRIMARY KEY,
    email VARCHAR(255) 
);

--Insert sample data into the Person table
INSERT INTO Person182 (id, email) VALUES
(1, 'a@b.com'),
(2, 'c@d.com'),
(3, 'a@b.com');

--Write a solution to report all the duplicate emails. Note: Guaranteed no NULL values in the email field
-- return the results in any order
SELECT email
FROM Person182
GROUP BY email
HAVING COUNT(email) >1;