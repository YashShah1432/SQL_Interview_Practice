# LeetCode 3451 - Find Invalid IP Addresses

## Problem
Find IP addresses that are invalid based on the required IPv4 format and count how many times each invalid IP appears.

An IP address is considered invalid if:
- It does not contain exactly **3 dots**.
- Any octet starts with a leading zero.
- Any octet has a value greater than **255**.

Return the IP address and its invalid count, ordered by invalid count descending and IP descending.

## Approach
1. Count the number of dots using `LENGTH()` and `REPLACE()` and ensure there are exactly three.
2. Use `SUBSTRING_INDEX()` to extract each IP address segment.
3. Use `REGEXP '^0[0-9]'` to detect octets with leading zeros.
4. Check whether any octet has a value greater than `255`.
5. Group invalid IP addresses and count their occurrences.
6. Sort by invalid count in descending order and IP address in descending order.

## SQL Concepts Used
- LENGTH()
- REPLACE()
- SUBSTRING_INDEX()
- REGEXP
- CASE-free conditional filtering
- GROUP BY
- COUNT()
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(n)
