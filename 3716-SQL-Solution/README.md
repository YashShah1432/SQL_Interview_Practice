# LeetCode 3716 - Find Churn Risk Customers

## Problem
Identify customers who are at risk of churning based on their subscription history.

A customer is considered at risk if:
- Their latest subscription event is **not** a cancellation.
- They have downgraded their subscription at least once.
- Their current monthly amount is less than **50%** of their highest historical monthly amount.
- They have been subscribed for at least **60 days**.

Return the customer ID, current plan, current monthly amount, highest historical monthly amount, and the number of days they have been a subscriber.

## Approach
1. Identify each user's latest subscription event using the `ROW_NUMBER()` window function.
2. Calculate each user's subscription history, including the first and latest event dates, highest monthly amount, and total number of downgrades.
3. Join the latest event with the historical summary for each user.
4. Filter customers who:
   - Have not cancelled their subscription.
   - Have downgraded at least once.
   - Currently pay less than half of their highest historical monthly amount.
   - Have been subscribers for at least 60 days.
5. Return the required customer details and sort the results by subscriber duration and user ID.

## SQL Concepts Used
- Common Table Expression (CTE)
- Window Function (`ROW_NUMBER`)
- PARTITION BY
- Aggregate Functions (`MIN`, `MAX`, `SUM`)
- CASE Expression
- INNER JOIN
- DATEDIFF()
- ORDER BY

## Time Complexity
O(n log n)

## Space Complexity
O(n)
