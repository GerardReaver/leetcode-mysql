-- Create the table for the database
CREATE TABLE weather197 (
    id INT,
    recordDate DATE,
    temperature INT,
    PRIMARY KEY (id)
);

-- Insert the data into the table
INSERT INTO weather197 (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

SELECT
    w1.id 
FROM 
    weather197 AS w1
JOIN 
    weather197 AS w2
ON 
    w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE  
    w1.temperature > w2.temperature  