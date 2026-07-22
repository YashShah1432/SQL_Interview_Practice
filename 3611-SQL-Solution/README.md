# LeetCode 3611 - Find Employees with Heavy Meeting Schedules

## Problem
Identify employees who have **at least two weeks** in which they spent **more than 20 hours in meetings**.

Return the employee ID, employee name, department, and the number of meeting-heavy weeks.

Order the results by the number of meeting-heavy weeks in descending order and then by employee name.

## Approach
1. Join the `Employees` and `Meetings` tables using `employee_id`.
2. Group meetings by employee and ISO week using `YEARWEEK(meeting_date, 1)`.
3. Calculate the total meeting hours for each employee in each week.
4. Keep only the weeks where the total meeting duration exceeds 20 hours.
5. Count the number of such meeting-heavy weeks for each employee.
6. Return employees with at least two meeting-heavy weeks.
7. Sort the results by the number of meeting-heavy weeks and employee name.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Function (`SUM`, `COUNT`)
- YEARWEEK()
- GROUP BY
- HAVING Clause
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
