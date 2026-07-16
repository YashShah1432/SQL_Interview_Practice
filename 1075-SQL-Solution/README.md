# LeetCode 1075 - Project Employees I

## Problem
Calculate the average years of experience of employees working on each project.

Return the project ID along with the average years of experience, rounded to two decimal places.

## Approach
1. Join the `Project` and `Employee` tables using the `employee_id`.
2. Group the records by `project_id`.
3. Calculate the average experience of employees assigned to each project using the `AVG()` aggregate function.
4. Round the average experience to two decimal places.
5. Return the project ID and the calculated average.

## SQL Concepts Used
- INNER JOIN
- Aggregate Function (`AVG`)
- ROUND()
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(1)
