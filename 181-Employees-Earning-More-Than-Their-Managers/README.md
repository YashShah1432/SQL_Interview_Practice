# LeetCode 181 - Employees Earning More Than Their Managers

## Problem
Find the employees whose salary is greater than their manager's salary.

## Approach
- Perform a self join on the Employee table.
- Match each employee with their manager using managerId.
- Compare the employee's salary with the manager's salary.
- Return employees whose salary is higher.

## SQL Concepts Used
- Self Join
- INNER JOIN
- WHERE Clause
  
## Time Complexity
O(n)

## Space Complexity
O(1)
