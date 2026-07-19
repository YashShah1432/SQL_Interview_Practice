# LeetCode 570 - Managers with at Least 5 Direct Reports

## Problem
Find the names of managers who have **at least five direct reports**.

Return the manager names.

## Approach
1. Group employees by `managerId`.
2. Count the number of employees reporting to each manager.
3. Keep only those managers with at least five direct reports using the `HAVING` clause.
4. Join the result with the `Employee` table to retrieve the corresponding manager names.

## SQL Concepts Used
- Common Table Expression (CTE)
- GROUP BY
- HAVING
- Aggregate Function (`COUNT`)
- INNER JOIN

## Time Complexity
O(n)

## Space Complexity
O(n)
