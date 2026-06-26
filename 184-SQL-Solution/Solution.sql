WITH max_salary AS (
    SELECT
        departmentId,
        MAX(salary) AS sal
    FROM Employee
    GROUP BY departmentId
)

SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d
    ON e.departmentId = d.id
JOIN max_salary m
    ON e.departmentId = m.departmentId
   AND e.salary = m.sal;