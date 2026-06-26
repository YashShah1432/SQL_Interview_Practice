# LeetCode 184 - Department Highest Salary

## Problem
Find the employees who have the highest salary in each department.

## Solution

## Approach
1. Calculate the highest salary for each department using `MAX()` and `GROUP BY`.
2. Store the result in a Common Table Expression (CTE).
3. Join the `Employee` table with the `Department` table.
4. Match each employee's salary with the maximum salary of their department.
5. Return all employees whose salary equals the highest salary in their department.

## SQL Concepts Used
- Common Table Expression (CTE)
- GROUP BY
- MAX()
- INNER JOIN

## Time Complexity
O(n)

## Space Complexity
O(d)
