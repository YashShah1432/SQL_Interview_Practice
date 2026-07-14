# LeetCode 3808 - Find Users with Dominant Reactions

## Problem
Identify users whose **dominant reaction** accounts for at least **60%** of their total reactions and who have reacted to at least **5 distinct content items**.

Return the user ID, dominant reaction, and reaction ratio.

## Approach
1. Count the occurrences of each reaction type for every user.
2. Use the `ROW_NUMBER()` window function to identify each user's most frequent (dominant) reaction.
3. Join the dominant reaction back to the `Reactions` table.
4. Calculate the ratio of the dominant reaction to the total number of reactions.
5. Keep only users who have reacted to at least five distinct content items and whose dominant reaction ratio is at least `0.60`.
6. Return the required details ordered by reaction ratio and user ID.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- Aggregate Function (`COUNT`)
- CASE Expression
- Conditional Aggregation
- GROUP BY
- HAVING Clause
- INNER JOIN
- ORDER BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
