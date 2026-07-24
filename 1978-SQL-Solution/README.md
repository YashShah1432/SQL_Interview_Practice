# LeetCode 1978 - Employees Whose Manager Left the Company

## Problem
Find the IDs of employees who satisfy both of the following conditions:
- Their manager is **not present** in the `Employees` table.
- Their salary is **less than 30000**.

Return the employee IDs in ascending order.

## Approach
1. Retrieve all existing employee IDs from the `Employees` table.
2. Filter employees whose `manager_id` does not exist among those employee IDs.
3. Keep only employees whose salary is less than `30000`.
4. Return the employee IDs sorted in ascending order.

## SQL Concepts Used
- Subquery
- NOT IN
- WHERE Clause
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
