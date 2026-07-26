# LeetCode 1693 - Daily Leads and Partners

## Problem
For each combination of **date** and **car make**, determine:
- The number of unique leads.
- The number of unique partners.

Return the date, make name, unique lead count, and unique partner count.

## Approach
1. Group the sales records by `date_id` and `make_name`.
2. Count the distinct `lead_id` values to determine the number of unique leads.
3. Count the distinct `partner_id` values to determine the number of unique partners.
4. Return the grouped results.

## SQL Concepts Used
- GROUP BY
- Aggregate Function (`COUNT`)
- DISTINCT

## Time Complexity
O(n)

## Space Complexity
O(n)
