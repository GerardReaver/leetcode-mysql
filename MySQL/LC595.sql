-- Create the table for the leetcode problem 595
CREATE TABLE World595 (
    country_name VARCHAR(50),
    continent VARCHAR(50),
    area INT, 
    country_population INT,
    gdp BIGINT,
    PRIMARY KEY (country_name)
);

-- insert the data into the table
INSERT INTO world595 (country_name, continent, area, country_population, gdp) VALUES
('Afghanistan', 'Asia', 652230, 25500100, 20343000000),
('Albania', 'Europe', 28748, 2831741, 1296000000),
('Algeria', 'Africa', 2381741, 37100000, 188681000000),
('Andorra', 'Europe', 468, 78115, 3712000000), 
('Angola', 'Africa', 1246700, 20609294, 100990000000);

-- Write a query to return all big countryies
-- A country is 'big' if it has an area of 3M or a population of 25M
SELECT 
    country_name,
    country_population,
    area 
FROM
    world595
WHERE
    area >= 3000000 OR
    country_population >= 25000000