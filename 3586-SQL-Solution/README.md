# LeetCode 3586 - Find COVID Recovery Time

## Problem
Find the recovery time for each patient by calculating the number of days between their **first positive COVID-19 test** and their **first negative test after that positive test**.

Return the patient ID, patient name, age, and recovery time, ordered by recovery time and patient name.

## Approach
1. Find each patient's first positive COVID-19 test using a CTE.
2. Find the first negative test that occurred after the first positive test using another CTE.
3. Join the patient details with both CTEs.
4. Calculate the recovery time using the `DATEDIFF()` function.
5. Sort the result by recovery time and patient name.

## SQL Concepts Used
- Common Table Expression (CTE)
- Aggregate Function (`MIN`)
- INNER JOIN
- Date Function (`DATEDIFF`)
- GROUP BY
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
