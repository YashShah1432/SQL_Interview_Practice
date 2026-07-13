# LeetCode 1873 - Calculate Special Bonus

## Problem
Calculate the bonus for each employee based on the following rules:

- Employees with an **odd employee ID** are eligible for a bonus.
- The employee's name **must not start with 'M'**.
- Eligible employees receive a bonus equal to their salary.
- All other employees receive a bonus of `0`.

Return the employee ID and bonus, ordered by employee ID.

## Approach
1. Check whether the employee ID is odd using the modulo (`%`) operator.
2. Verify that the employee's name does not begin with `'M'` using the `NOT LIKE` operator.
3. Use the `IF()` function to assign the salary as the bonus if both conditions are satisfied; otherwise assign `0`.
4. Return the employee ID and calculated bonus.
5. Sort the result by `employee_id`.

## SQL Concepts Used
- IF()
- WHERE-style Conditional Logic
- Modulo Operator (`%`)
- Pattern Matching (`LIKE`, `NOT LIKE`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
