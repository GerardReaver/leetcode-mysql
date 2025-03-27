-- Create the table for Products
CREATE TABLE Products1757 (
    product_id INT PRIMARY KEY,
    low_fats ENUM('Yes', 'No'),
    recyclable ENUM('Yes', 'No')
);

--put all the data into the database table we created
INSERT INTO Products1757 (product_id, low_fats, recyclable) VALUES
(0, 'Yes', 'No'),
(1, 'Yes', 'Yes'),
(2, 'No', 'Yes'),
(3, 'Yes', 'Yes'),
(4, 'No', 'No');

--Write a solution fo find the ids of products that are both low fat and recyclable
SELECT product_id
FROM Products1757
WHERE low_fats = 'Yes' AND recyclable = 'Yes';