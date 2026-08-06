# LeetCode 262 - Trips and Users

## Problem
Calculate the **daily cancellation rate** of trips between **2013-10-01** and **2013-10-03**.

Only consider trips where **both the client and the driver are not banned**.

The cancellation rate is calculated as:

**Cancelled Trips / Total Valid Trips**

Round the result to two decimal places.

## Approach
1. Join the `Trips` table with the `Users` table twice:
   - Once to verify the client is not banned.
   - Once to verify the driver is not banned.
2. Filter trips between **2013-10-01** and **2013-10-03**.
3. For each trip:
   - Assign `0` if the trip was completed.
   - Assign `1` if the trip was cancelled.
4. Calculate the average of these values for each day. Since cancelled trips are represented as `1` and completed trips as `0`, the average directly gives the cancellation rate.
5. Round the cancellation rate to two decimal places.

## SQL Concepts Used
- INNER JOIN
- CASE Expression
- Aggregate Function (`AVG`)
- ROUND()
- WHERE Clause
- GROUP BY
- BETWEEN

## Time Complexity
O(n)

## Space Complexity
O(1)
