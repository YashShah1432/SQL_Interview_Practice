# Write your MySQL query statement below
WITH RECURSIVE hierarchy AS (
    -- CEO starts at level 1
    SELECT
        employee_id,
        employee_name,
        manager_id,
        salary,
        1 AS level
    FROM Employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Find employees reporting to the previous level
    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id,
        e.salary,
        h.level + 1
    FROM Employees e
    JOIN hierarchy h
        ON e.manager_id = h.employee_id
),

team AS (
    -- Every employee initially represents themselves
    SELECT
        employee_id AS manager_id,
        employee_id AS employee_id,
        salary
    FROM Employees

    UNION ALL

    -- Recursively find all employees below each manager
    SELECT
        t.manager_id,
        e.employee_id,
        e.salary
    FROM team t
    JOIN Employees e
        ON e.manager_id = t.employee_id
),

summary AS (
    SELECT
        manager_id AS employee_id,
        COUNT(*) - 1 AS team_size,
        SUM(salary) AS budget
    FROM team
    GROUP BY manager_id
)

SELECT
    h.employee_id,
    h.employee_name,
    h.level,
    s.team_size,
    s.budget
FROM hierarchy h
JOIN summary s
    ON h.employee_id = s.employee_id
ORDER BY
    h.level ASC,
    s.budget DESC,
    h.employee_name ASC;