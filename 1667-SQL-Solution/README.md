# LeetCode 1667 - Fix Names in a Table

## Problem
Format each user's name so that:
- The first character is uppercase.
- All remaining characters are lowercase.
- Return the results ordered by `user_id`.

## Approach
1. Extract the first character of the name using `LEFT()`.
2. Convert the first character to uppercase using `UPPER()`.
3. Extract the remaining characters using `SUBSTRING()`.
4. Convert the remaining characters to lowercase using `LOWER()`.
5. Concatenate the formatted parts using `CONCAT()`.
6. Sort the result by `user_id`.

## SQL Concepts Used
- String Functions (`LEFT`, `SUBSTRING`)
- Case Conversion Functions (`UPPER`, `LOWER`)
- CONCAT()
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
