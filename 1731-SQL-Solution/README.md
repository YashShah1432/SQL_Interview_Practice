# LeetCode 1731 - The Number of Employees Which Report to Each Employee

## Problem
Find managers who have at least one direct report.

For each manager, return:
- Employee ID
- Name
- Number of employees reporting to them
- Average age of their direct reports (rounded to the nearest integer)

Order the results by `employee_id`.

## Approach
1. Perform a self-join on the `Employees` table by matching a manager's `employee_id` with an employee's `reports_to`.
2. Count the number of employees reporting to each manager using `COUNT()`.
3. Calculate the average age of the direct reports using `AVG()` and round it to the nearest integer.
4. Group the results by manager ID and name.
5. Sort the output by `employee_id`.

## SQL Concepts Used
- Self JOIN
- Aggregate Functions (`COUNT`, `AVG`)
- ROUND()
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
