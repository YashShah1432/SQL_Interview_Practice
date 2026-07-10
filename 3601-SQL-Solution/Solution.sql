WITH first_half AS (
    SELECT
        d.driver_id,
        d.driver_name,
        (t.distance_km / t.fuel_consumed) AS first_half_avg
    FROM Drivers d
    JOIN Trips t
        ON d.driver_id = t.driver_id
    WHERE t.trip_date BETWEEN '2023-01-01' AND '2023-06-30'
    GROUP BY driver_id, t.trip_id
),

second_half AS (
    SELECT
        d.driver_id,
        d.driver_name,
        (t.distance_km / t.fuel_consumed) AS second_half_avg
    FROM Drivers d
    JOIN Trips t
        ON d.driver_id = t.driver_id
    WHERE t.trip_date BETWEEN '2023-07-01' AND '2023-12-31'
    GROUP BY driver_id, t.trip_id
)

SELECT
    f.driver_id,
    f.driver_name,
    ROUND(AVG(f.first_half_avg), 2) AS first_half_avg,
    ROUND(AVG(s.second_half_avg), 2) AS second_half_avg,
    ROUND(
        AVG(s.second_half_avg) - AVG(f.first_half_avg),
        2
    ) AS efficiency_improvement
FROM first_half f
JOIN second_half s
    ON f.driver_id = s.driver_id
GROUP BY f.driver_id
HAVING AVG(s.second_half_avg) > AVG(f.first_half_avg)
ORDER BY
    efficiency_improvement DESC,
    f.driver_name;