# LeetCode 1148 - Article Views I

## Problem
Find the IDs of authors who viewed **at least one of their own articles**.

Return the author IDs as `id`, ordered in ascending order.

## Approach
1. Filter the records where the `author_id` is the same as the `viewer_id`.
2. Group the results by `author_id` to remove duplicate IDs.
3. Rename `author_id` as `id`.
4. Sort the result in ascending order of `id`.

## SQL Concepts Used
- WHERE Clause
- GROUP BY
- Column Aliasing (`AS`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
