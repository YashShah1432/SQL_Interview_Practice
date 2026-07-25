# LeetCode 3465 - Find Products with Valid Serial Numbers

## Problem
Find all products whose description contains a **valid serial number**.

A valid serial number must:
- Start with `SN`.
- Be followed by exactly **4 digits**.
- Contain a hyphen (`-`).
- End with exactly **4 digits**.
- Not be part of a larger alphanumeric string.

Return the product ID, product name, and description, ordered by `product_id`.

## Approach
1. Use `REGEXP_LIKE()` to search for a valid serial number within the product description.
2. Ensure the serial number is either at the beginning of the description or preceded by a non-alphanumeric character.
3. Match the required serial number format: `SN` followed by four digits, a hyphen, and four digits.
4. Ensure the serial number is either at the end of the description or followed by a non-alphanumeric character.
5. Return the matching products ordered by `product_id`.

## SQL Concepts Used
- Regular Expressions (`REGEXP_LIKE`)
- Character Classes
- Quantifiers (`{4}`)
- Anchors (`^`, `$`)
- Alternation (`|`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
