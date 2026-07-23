# LeetCode 3793 - Analyze AI Prompt Usage Patterns

## Problem
Find users who:
- Have created at least **3 prompts**.
- Have at least one prompt with a token count greater than their average token count.

For each qualifying user, return:
- User ID
- Total number of prompts
- Average number of tokens per prompt (rounded to two decimal places)

Order the results by average tokens in descending order and then by user ID in ascending order.

## Approach
1. Group all prompts by `user_id`.
2. Count the total number of prompts created by each user.
3. Calculate the average number of tokens using `AVG()`.
4. Filter users who have created at least three prompts.
5. Ensure each qualifying user has at least one prompt with a token count greater than their average using `MAX(tokens) > AVG(tokens)`.
6. Return the required details sorted by average tokens and user ID.

## SQL Concepts Used
- GROUP BY
- Aggregate Functions (`COUNT`, `AVG`, `MAX`)
- ROUND()
- HAVING Clause
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
