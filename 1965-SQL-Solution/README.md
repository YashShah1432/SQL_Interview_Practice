# LeetCode 1965 - Employees With Missing Information

## Problem
Find the employee IDs that have missing information.

An employee has missing information if:
- They exist in the `Employees` table but not in the `Salaries` table, or
- They exist in the `Salaries` table but not in the `Employees` table.

Return the employee IDs in ascending order.

## Approach
1. Retrieve employee IDs present in the `Employees` table but missing from the `Salaries` table.
2. Retrieve employee IDs present in the `Salaries` table but missing from the `Employees` table.
3. Combine both result sets using `UNION` to remove duplicates.
4. Sort the final list of employee IDs in ascending order.

## SQL Concepts Used
- Subquery
- NOT IN
- UNION
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
