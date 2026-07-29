# LeetCode 1327 - List the Products Ordered in a Period

## Problem
Find the products that were ordered **at least 100 units** during **February 2020**.

Return the product name and the total number of units ordered.

## Approach
1. Join the `Products` and `Orders` tables using `product_id`.
2. Filter orders placed during **February 2020** using `DATE_FORMAT()`.
3. Group the records by `product_name`.
4. Calculate the total units ordered for each product using `SUM()`.
5. Return only those products whose total ordered units are at least `100`.

## SQL Concepts Used
- INNER JOIN
- WHERE Clause
- DATE_FORMAT()
- GROUP BY
- Aggregate Function (`SUM`)
- HAVING Clause

## Time Complexity
O(n)

## Space Complexity
O(n)
