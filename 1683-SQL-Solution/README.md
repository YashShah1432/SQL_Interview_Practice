# LeetCode 1683 - Invalid Tweets

## Problem
Find the IDs of tweets whose content is **longer than 15 characters**.

Return only the tweet IDs.

## Approach
1. Use the `LENGTH()` function to determine the number of characters in each tweet.
2. Return the `tweet_id` only if the tweet content exceeds 15 characters.
3. Remove `NULL` values using the `HAVING` clause.

## SQL Concepts Used
- CASE Expression
- LENGTH()
- HAVING Clause

## Time Complexity
O(n)

## Space Complexity
O(1)
