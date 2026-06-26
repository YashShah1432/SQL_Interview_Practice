-- LeetCode 182
-- Duplicate Emails

WITH duplicate_email AS (
    SELECT
        email,
        COUNT(email) AS count_of_email
    FROM Person
    GROUP BY email
)

SELECT email
FROM duplicate_email
WHERE count_of_email > 1;