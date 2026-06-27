# LeetCode 197 - Rising Temperature

## Problem
Find all dates where the temperature was higher than the previous day's temperature.

## Approach
1. Use the `LAG()` window function to retrieve the previous day's temperature and date.
2. Store the results in a Common Table Expression (CTE).
3. Compare the current day's temperature with the previous day's temperature.
4. Ensure the dates are consecutive by checking if the current date is exactly one day after the previous date.
5. Return the IDs of the qualifying records.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`LAG`)
- OVER Clause
- INNER JOIN
- Date Arithmetic (`INTERVAL`)

## Time Complexity
O(n)

## Space Complexity
O(n)
