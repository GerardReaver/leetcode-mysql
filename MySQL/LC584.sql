-- Create a table for the database
CREATE TABLE customer584 (
    id INT, 
    cus_name VARCHAR(50),
    referee_id INT,
    PRIMARY KEY (id) 
);

-- Inser the data into the table
INSERT INTO customer584 (id, cus_name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

SELECT 
    c1.cus_name
FROM
    customer584 AS c1
LEFT JOIN 
    customer584 AS c2
ON 
    c1.id = c2.id
WHERE
    c1.referee_id != 2 OR 
    c1.referee_id IS NULL