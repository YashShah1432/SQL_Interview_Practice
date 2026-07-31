# LeetCode 1321 - Restaurant Growth

## Problem
Calculate the total amount spent and the average daily amount over every **7-day consecutive period**.

Return:
- `visited_on`
- Total amount for the last 7 days
- Average daily amount (rounded to 2 decimal places)

Only include days where a complete 7-day window exists, ordered by `visited_on`.

## Approach
1. Aggregate the total amount spent for each `visited_on` date.
2. Use a Common Table Expression (CTE) to store the daily totals.
3. Apply a window function with a **7-day rolling window** (`6 PRECEDING` to `CURRENT ROW`) to calculate:
   - Total amount over the last 7 days using `SUM()`.
   - Average daily amount using `AVG()`.
4. Skip the first six rows since they do not have a complete 7-day window by using `OFFSET 6`.
5. Return the results ordered by `visited_on`.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Functions
- SUM() OVER()
- AVG() OVER()
- ROWS BETWEEN
- GROUP BY
- ORDER BY
- LIMIT & OFFSET

## Time Complexity
O(n)

## Space Complexity
O(n)
