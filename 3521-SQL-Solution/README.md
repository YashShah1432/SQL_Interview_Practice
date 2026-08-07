# LeetCode 3521 - Find Product Recommendation Pairs

## Problem
Find pairs of products that were purchased by the **same customers**.

Return only those product pairs that were purchased together by **at least 3 different customers**.

For each qualifying pair, return:
- Product 1 ID
- Product 2 ID
- Product 1 Category
- Product 2 Category
- Number of customers who purchased both products

Order the results by:
1. Customer count (descending)
2. Product 1 ID (ascending)
3. Product 2 ID (ascending)

## Approach
1. Perform a self-join on the `ProductPurchases` table using `user_id` to identify products purchased by the same customer.
2. Use the condition `p1.product_id < p2.product_id` to:
   - Avoid pairing a product with itself.
   - Prevent duplicate pairs such as `(101,102)` and `(102,101)`.
3. Join the `ProductInfo` table twice to retrieve the category of each product.
4. Group the records by the product pair and their categories.
5. Count the number of distinct customers who purchased each pair.
6. Keep only product pairs purchased together by at least three customers.
7. Sort the output according to the required ordering.

## SQL Concepts Used
- Self JOIN
- INNER JOIN
- Aggregate Function (`COUNT`)
- DISTINCT
- GROUP BY
- HAVING Clause
- ORDER BY

## Time Complexity
O(n²)

> The self-join compares purchases made by the same customer. Although the practical performance depends on the number of purchases per customer, the worst-case complexity is quadratic.

## Space Complexity
O(n)
