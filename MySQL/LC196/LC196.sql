# Write your MySQL query statement below
WITH duplicate_emails AS (
  SELECT 
    id,
    email,
    ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS duplicates
  FROM Person
)
DELETE FROM Person
WHERE id IN (
  SELECT id FROM duplicate_emails WHERE duplicates > 1
);
