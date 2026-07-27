# LeetCode 1789 - Primary Department for Each Employee

## Problem
Find the primary department for every employee.

- If an employee belongs to multiple departments, return the one where `primary_flag = 'Y'`.
- If an employee belongs to only one department, return that department regardless of the `primary_flag`.

Return the employee ID and department ID.

## Approach
1. Retrieve employees whose primary department is marked with `primary_flag = 'Y'`.
2. Retrieve employees who belong to only one department using `GROUP BY` and `HAVING COUNT(...) = 1`.
3. Combine both result sets using `UNION` to produce the final list of employee-department pairs.

## SQL Concepts Used
- WHERE Clause
- GROUP BY
- HAVING
- Aggregate Function (`COUNT`)
- UNION

## Time Complexity
O(n)

## Space Complexity
O(n)
