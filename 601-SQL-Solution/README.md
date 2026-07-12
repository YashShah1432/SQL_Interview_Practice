# LeetCode 601 - Human Traffic of Stadium

## Problem
Find all records that belong to **three or more consecutive days** where the number of people visiting the stadium was **at least 100**.

Return the records ordered by `visit_date`.

## Approach
1. Filter the records where the number of people is at least `100`.
2. Use the `ROW_NUMBER()` window function to assign a sequential number based on `id`.
3. Calculate a group identifier using `id - ROW_NUMBER()`, which remains constant for consecutive IDs.
4. Identify groups containing at least three consecutive records using `GROUP BY` and `HAVING`.
5. Return all records belonging to those groups and sort them by `visit_date`.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- GROUP BY
- HAVING Clause
- Subquery
- ORDER BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
