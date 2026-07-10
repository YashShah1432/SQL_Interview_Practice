# LeetCode 3601 - Find Drivers with Improved Fuel Efficiency

## Problem
Find drivers whose **average fuel efficiency** improved in the **second half of 2023** compared to the **first half of 2023**.

Fuel efficiency is calculated as:

**distance_km ÷ fuel_consumed**

For each qualifying driver, return:
- Driver ID
- Driver Name
- Average fuel efficiency in the first half of 2023
- Average fuel efficiency in the second half of 2023
- Improvement in fuel efficiency

Order the results by efficiency improvement in descending order and then by driver name.

## Approach
1. Calculate the fuel efficiency (`distance_km / fuel_consumed`) for each trip in the first half of 2023.
2. Calculate the fuel efficiency for each trip in the second half of 2023.
3. Compute the average fuel efficiency for each driver in both periods.
4. Calculate the improvement by subtracting the first-half average from the second-half average.
5. Return only the drivers whose average fuel efficiency improved.
6. Sort the results by efficiency improvement in descending order and then by driver name.

## SQL Concepts Used
- Common Table Expression (CTE)
- INNER JOIN
- Aggregate Function (`AVG`)
- ROUND()
- GROUP BY
- HAVING Clause
- ORDER BY
- Date Filtering (`BETWEEN`)

## Time Complexity
O(n)

## Space Complexity
O(n)
