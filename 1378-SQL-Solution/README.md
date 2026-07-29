# LeetCode 1378 - Replace Employee ID With The Unique Identifier

## Problem
Replace each employee's ID with their unique identifier.

If an employee does not have a corresponding unique identifier, return `NULL` for the `unique_id`.

Return the unique ID and employee name.

## Approach
1. Perform a `LEFT JOIN` between the `Employees` and `EmployeeUNI` tables using the employee ID.
2. Retrieve the employee's `unique_id` from the `EmployeeUNI` table.
3. If no matching unique ID exists, the `LEFT JOIN` automatically returns `NULL`.
4. Return the unique ID along with the employee name.

## SQL Concepts Used
- LEFT JOIN
- Column Selection
- NULL Handling (via LEFT JOIN)

## Time Complexity
O(n)

## Space Complexity
O(1)
