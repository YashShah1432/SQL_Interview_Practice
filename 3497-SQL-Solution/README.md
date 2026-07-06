# LeetCode 3497 - Analyze Subscription Conversion

## Problem
Find users who started with a **free trial** and later switched to a **paid subscription**. For each such user, return their average activity duration during the free trial and paid subscription.

## Approach
1. Calculate the average activity duration for each user's free trial using a CTE.
2. Calculate the average activity duration for each user's paid subscription using another CTE.
3. Join both CTEs using `user_id`.
4. Keep only users whose paid activity occurred after their free trial.
5. Return the user ID along with the average durations for both subscription types.

## SQL Concepts Used
- Common Table Expression (CTE)
- Aggregate Function (`AVG`)
- ROUND()
- INNER JOIN
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
