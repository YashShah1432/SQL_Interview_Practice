# LeetCode 620 - Not Boring Movies

## Problem
Find all movies that:
- Have an **odd-numbered ID**.
- Have a description other than `"boring"`.

Return the movie ID, movie name, description, and rating, ordered by rating in descending order.

## Approach
1. Filter movies whose `id` is odd using the modulo (`%`) operator.
2. Exclude movies whose description is `"boring"`.
3. Return the required movie details.
4. Sort the results by `rating` in descending order.

## SQL Concepts Used
- WHERE Clause
- Modulo Operator (`%`)
- Comparison Operator (`!=`)
- Logical Operator (`AND`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
