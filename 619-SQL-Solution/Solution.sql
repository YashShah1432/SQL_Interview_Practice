WITH new_table AS (
    SELECT
        num,
        COUNT(num)
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
)

SELECT
    MAX(num) AS num
FROM new_table;