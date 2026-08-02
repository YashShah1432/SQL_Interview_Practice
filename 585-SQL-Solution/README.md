# LeetCode 585 - Investments in 2016

## Problem
Calculate the total `tiv_2016` for policyholders who satisfy both of the following conditions:
- Their `tiv_2015` value is **shared by at least one other policyholder**.
- Their `(lat, lon)` location is **unique** (no other policyholder has the same location).

Return the total `tiv_2016` rounded to two decimal places.

## Approach
1. Identify all `tiv_2015` values that occur more than once.
2. Identify locations `(lat, lon)` that appear exactly once.
3. Join these two result sets with the `Insurance` table.
4. Keep only policyholders who satisfy both conditions.
5. Sum their `tiv_2016` values and round the result to two decimal places.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Functions (`COUNT`, `SUM`)
- GROUP BY
- HAVING Clause
- ROUND()

## Time Complexity
O(n)

## Space Complexity
O(n)
