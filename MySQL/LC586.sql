-- Create the table
CREATE TABLE orders586 (
    order_number INT,
    customer_number INT,
    PRIMARY KEY (order_number)
);

-- Insert the values into the table
INSERT INTO orders586 (order_number, customer_number) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3);

SELECT
    customer_number
FROM
    orders586
GROUP BY
    customer_number
ORDER BY 
    COUNT(order_number) DESC
LIMIT 1