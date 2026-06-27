# LeetCode 511 - Game Play Analysis I

## Problem
Find the first login date for each player.

## Approach
1. Group the records by `player_id`.
2. Use the `MIN()` aggregate function to find the earliest login date for each player.
3. Return the player ID along with their first login date.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`MIN`)

## Time Complexity
O(n)

## Space Complexity
O(p)
