-- This is the Leetcode problem 2356 'Number of Unique Subjects Taught by Each Teacher'

-- Create a table for the database
CREATE TABLE Teacher2356 (
    teacher_id INT,
    subject_id INT,
    dept_id INT,
    PRIMARY KEY (subject_id, dept_id) -- composite primary key 
);

-- insert the data into the table for the database
INSERT INTO Teacher2356(teacher_id, subject_id, dept_id) VALUES
(1, 2, 3),
(1, 2, 4),
(1, 3, 3),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 1);

-- Write a solution to calculate the number of unique subjects each teacher teaches in the University. 
SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher2356
GROUP BY teacher_id;

/* This problem teaches you how to properly use the COUNT function as well as the DISTINCT function. 
    we also have to give the new result an 'Alias' as cnt for this particular problem and then tell the 
    problem we would like to group it by their teacher_id's. this in totality also taught us how to use a
    composite primary key when creating the database because we are only using one table and there is no 
    other way to detect a primary key for this equation. 
*/
