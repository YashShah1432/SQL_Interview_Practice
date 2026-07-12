# LeetCode 1633 - Percentage of Users Attended a Contest

## Problem
Calculate the percentage of users who registered for each contest.

The percentage is calculated as:

**(Number of users registered for the contest ÷ Total number of users) × 100**

Round the result to two decimal places and order the results by percentage in descending order. If there is a tie, order by `contest_id` in ascending order.

## Approach
1. Count the number of users registered for each contest using a CTE.
2. Join the CTE with the `Users` table to determine the total number of users.
3. Calculate the registration percentage for each contest.
4. Round the percentage to two decimal places.
5. Sort the results by percentage in descending order and contest ID in ascending order.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Function (`COUNT`)
- ROUND()
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(c)
