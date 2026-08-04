# LeetCode 1204 - Last Person to Fit in the Bus

## Problem
A bus has a maximum weight capacity of **1000 kg**.

People board the bus in the order of their `turn`. Find the **last person** who can board the bus without the cumulative weight exceeding `1000 kg`.

Return the person's name.

## Approach
1. Calculate the cumulative weight of passengers in boarding order using a window function.
2. Keep only those passengers whose cumulative weight does not exceed `1000 kg`.
3. Sort the remaining passengers by cumulative weight in descending order.
4. Return the last passenger who can still board the bus.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`SUM() OVER`)
- ORDER BY
- WHERE Clause
- LIMIT

## Time Complexity
O(n)

## Space Complexity
O(n)
