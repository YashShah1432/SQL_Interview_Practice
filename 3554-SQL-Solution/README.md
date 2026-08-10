# LeetCode 3554 - Find Category Recommendation Pairs

## Problem
Find pairs of product categories that were purchased by the **same customers**.

Return only those category pairs that were purchased together by **at least 3 different customers**.

For each qualifying pair, return:
- Category 1
- Category 2
- Number of customers who purchased products from both categories

Order the results by:
1. Customer count (descending)
2. Category 1 (ascending)
3. Category 2 (ascending)

## Approach
1. Create a `user_categories` CTE containing each unique user-category combination.
2. Self-join the CTE using `user_id` to find categories purchased by the same customer.
3. Use `uc1.category < uc2.category` to avoid duplicate category pairs and prevent pairing a category with itself.
4. Count the distinct customers for each category pair.
5. Keep only category pairs purchased together by at least three customers.
6. Sort the results according to the required ordering.

## SQL Concepts Used
- Common Table Expression (CTE)
- DISTINCT
- INNER JOIN
- Self JOIN
- COUNT(DISTINCT)
- GROUP BY
- HAVING
- ORDER BY

## Time Complexity
O(n²)

## Space Complexity
O(n)
