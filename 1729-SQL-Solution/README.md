# LeetCode 1729 - Find Followers Count

## Problem
Find the number of followers for each user.

Return the user ID along with the follower count, ordered by `user_id` in ascending order.

## Approach
1. Group the records by `user_id`.
2. Count the number of `follower_id` values for each user.
3. Return the user ID along with the follower count.
4. Sort the results by `user_id` in ascending order.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`COUNT`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
