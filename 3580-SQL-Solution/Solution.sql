# Write your MySQL query statement below
WITH ranked_reviews AS (
    SELECT
        employee_id,
        review_date,
        rating,
        ROW_NUMBER() OVER (
            PARTITION BY employee_id
            ORDER BY review_date DESC
        ) AS rn
    FROM performance_reviews
),

last_three AS (
    SELECT
        employee_id,
        review_date,
        rating
    FROM ranked_reviews
    WHERE rn <= 3
),

checked AS (
    SELECT
        employee_id,
        rating,
        LAG(rating) OVER (
            PARTITION BY employee_id
            ORDER BY review_date
        ) AS previous_rating
    FROM last_three
)

SELECT
    e.employee_id,
    e.name,
    MAX(c.rating) - MIN(c.rating) AS improvement_score
FROM checked c
JOIN employees e
    ON c.employee_id = e.employee_id
GROUP BY
    e.employee_id,
    e.name
HAVING
    COUNT(*) = 3
    AND SUM(
        CASE
            WHEN previous_rating IS NOT NULL
                 AND rating <= previous_rating
            THEN 1
            ELSE 0
        END
    ) = 0
ORDER BY
    improvement_score DESC,
    e.name ASC;