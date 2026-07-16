# LeetCode 1141 - User Activity for the Past 30 Days I

## Problem
Find the number of **active users** for each day during the **30-day period ending on 2019-07-27**.

A user is considered active if they performed at least one activity on that day.

Return the activity date as `day` and the number of active users.

## Approach
1. Filter the records to include only activities between `2019-06-28` and `2019-07-27`.
2. Group the activities by `activity_date`.
3. Count the number of distinct users who were active on each day.
4. Return the activity date as `day` along with the active user count.

## SQL Concepts Used
- WHERE Clause
- GROUP BY
- Aggregate Function (`COUNT`)
- DISTINCT
- Date Filtering (`BETWEEN`)

## Time Complexity
O(n)

## Space Complexity
O(d)
