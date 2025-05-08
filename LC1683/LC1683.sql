-- Create a table for the database
CREATE TABLE Tweets1683 (
    tweet_id INT,
    content VARCHAR(50)
);

-- Insert the data into the table for the database
INSERT INTO Tweets1683(tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

SELECT
    tweet_id
FROM
    tweets1683
WHERE
    LENGTH(content) > 15