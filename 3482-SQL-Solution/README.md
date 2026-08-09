# LeetCode 3482 - Analyze Organization Hierarchy

## Problem
Analyze the employee hierarchy and return for each employee:
- Employee ID
- Employee name
- Hierarchy level
- Team size
- Total team salary budget

The CEO starts at **level 1**, and each employee's level increases by one for every level below the CEO.

## Approach
1. Use a recursive CTE `hierarchy` to determine the level of each employee.
2. Start with the CEO at level `1`.
3. Recursively find employees who report to each manager and increase their level by `1`.
4. Use another recursive CTE `team` to find every employee under each manager.
5. Include each employee themselves in their own team initially.
6. Calculate the total team size and salary budget in `summary`.
7. Subtract `1` from the team count so that the manager themselves are not included.
8. Join the hierarchy and team summary information.
9. Sort by hierarchy level, budget, and employee name.

## SQL Concepts Used
- Recursive CTE (`WITH RECURSIVE`)
- UNION ALL
- Self JOIN
- GROUP BY
- Aggregate Functions (`COUNT`, `SUM`)
- Hierarchical Data Processing
- ORDER BY

## Time Complexity
O(n²) in the worst case due to recursively determining the team members for each manager.

## Space Complexity
O(n²) in the worst case because the recursive `team` CTE can contain manager-employee relationships for multiple levels.
