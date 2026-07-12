# LeetCode 3657 - Find Loyal Customers

## Problem
Find customers who meet all of the following conditions:

- Have been active for at least **30 days**.
- Have made **at least 3 purchase transactions**.
- Have a **refund rate below 20%**.

Return the customer IDs ordered in ascending order.

## Approach
1. Group all transactions by `customer_id`.
2. Calculate the number of active days using the difference between the first and last transaction dates.
3. Count the number of purchase and refund transactions separately using conditional aggregation.
4. Calculate the refund percentage.
5. Return customers who satisfy all the required conditions.
6. Sort the result by `customer_id`.

## SQL Concepts Used
- Common Table Expression (CTE)
- Aggregate Functions (`COUNT`, `MAX`, `MIN`)
- CASE Expression
- DATEDIFF()
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
