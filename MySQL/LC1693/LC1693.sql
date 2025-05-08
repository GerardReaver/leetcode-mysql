-- Create a table for the Database
CREATE TABLE DailySales1693 (
    date_id DATE,
    make_name VARCHAR(20),
    lead_id INT,
    partner_id INT
);

-- insert the data into the table for the database
INSERT INTO DailySales1693(date_id, make_name, lead_id, partner_id) VALUES
('2020-12-08', 'toyota', 0, 1),
('2020-12-08', 'toyota', 1 ,0),
('2020-12-08', 'toyota', 1, 2),
('2020-12-07', 'toyota', 0, 2),
('2020-12-07', 'toyota', 0, 1),
('2020-12-08', 'honda', 2, 1),
('2020-12-08', 'honda', 2, 1),
('2020-12-07', 'honda', 0, 1),
('2020-12-07', 'honda', 1, 2),
('2020-12-07', 'honda', 2, 1);

-- FIND THE SOLUTION TO THIS PROBLEM
-- for each "date_id" and "Make_name", find the number of DISTINCT lead_id's and DISTINCT partner_id's
SELECT
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM
    dailysales1693
GROUP BY
    date_id, make_name