# Write your MySQL query statement below
WITH free_table AS (
    SELECT
        user_id,
        activity_date,
        ROUND(AVG(activity_duration), 2) AS trial_avg_duration
    FROM UserActivity
    WHERE activity_type = 'free_trial'
    GROUP BY user_id
),

paid_table AS (
    SELECT
        user_id,
        activity_date,
        ROUND(AVG(activity_duration), 2) AS paid_avg_duration
    FROM UserActivity
    WHERE activity_type = 'paid'
    GROUP BY user_id
)

SELECT
    f.user_id,
    f.trial_avg_duration,
    p.paid_avg_duration
FROM free_table f
JOIN paid_table p
    ON f.user_id = p.user_id
WHERE p.activity_date > f.activity_date
GROUP BY f.user_id
ORDER BY user_id;