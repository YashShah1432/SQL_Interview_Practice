# LeetCode 577 - Employee Bonus

## Problem
Find the names of employees whose bonus is less than 1000 or who did not receive a bonus.

## Approach
1. Perform a `LEFT JOIN` between the `Employee` and `Bonus` tables using `empId`.
2. Retrieve all employees along with their bonus, if available.
3. Filter employees whose bonus is less than `1000` or whose bonus is `NULL`.
4. Return the employee name and bonus.

## SQL Concepts Used
- LEFT JOIN
- WHERE Clause
- NULL Handling (`IS NULL`)
- Comparison Operators

## Time Complexity
O(n)

## Space Complexity
O(1)
