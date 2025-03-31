-- Code for the Leetcode problem 1741 "Find Total Time Spent by Each EMployee"
CREATE TABLE Employees1741 (
    emp_id INT,
    event_day DATE,
    in_time INT,
    out_time INT,
    PRIMARY KEY (emp_id, event_day, in_time)
);

-- insert the data into the tables
INSERT INTO Employees1741 (emp_id, event_day, in_time, out_time) VALUES
(1, '2020-11-28', 4, 32),
(1, '2020-11-28', 55, 200),
(1, '2020-12-03', 1, 42),
(2, '2020-11-28', 3, 33),
(2, '2020-12-09', 47, 74);

-- Writ e a solution to calculate the toal time in minutes spent by each smployee on each day at the office.
-- Note that within one day, an employee dcan enter and leave more than once. The time spent in the office for a single entry is 'out_time - in_time'
SELECT event_day AS day, emp_id, SUM(out_time - in_time) AS total_time
FROM employees1741
GROUP BY emp_id, event_day;