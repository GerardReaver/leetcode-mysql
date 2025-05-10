CREATE TABLE Customers183 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE Orders183 (
    id INT,
    customerId INT
);

INSERT INTO Customers183 (id, name) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

INSERT INTO Orders183 (id, customerId) VALUES
(1, 3),
(2, 1);

SELECT
    c.name AS Customers
FROM
    Customers183 AS c
LEFT JOIN
    Orders183 AS o
ON
    c.id = o.customerId
WHERE
    o.id IS NULL
