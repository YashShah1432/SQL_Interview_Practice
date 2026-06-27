WITH new_table AS (
    SELECT
        id,
        recordDate,
        temperature,
        LAG(temperature) OVER (ORDER BY recordDate) AS previous,
        LAG(recordDate) OVER (ORDER BY recordDate) AS previous_date
    FROM Weather
)

SELECT n.id
FROM new_table n
JOIN Weather w
    ON n.id = w.id
WHERE w.temperature > n.previous
  AND w.recordDate = n.previous_date + INTERVAL 1 DAY;