# LeetCode 1890 - The Latest Login in 2020

## Problem
Find the latest login time for each user during the year **2020**.

Return the user ID and the latest login timestamp.

## Approach
1. Filter the login records to include only those from the year **2020** using `YEAR()`.
2. Group the records by `user_id`.
3. Use `MAX()` to find the most recent login timestamp for each user.
4. Return the user ID along with the latest login timestamp.

## SQL Concepts Used
- WHERE Clause
- YEAR()
- Aggregate Function (`MAX`)
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(1)
