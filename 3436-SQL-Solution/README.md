# LeetCode 3436 - Find Valid Emails

## Problem
Find all users who have a **valid email address**.

A valid email must:
- Start with one or more letters (`a-z`, `A-Z`), digits (`0-9`), or underscores (`_`).
- Contain exactly one `@` symbol.
- Have a domain consisting of only letters.
- End with `.com`.

Return the user ID and email, ordered by `user_id`.

## Approach
1. Use the `REGEXP` operator to validate the email format.
2. Ensure the username contains only letters, digits, or underscores.
3. Match a single `@` symbol followed by a domain containing only letters.
4. Ensure the email ends with `.com`.
5. Return the valid email addresses ordered by `user_id`.

## SQL Concepts Used
- Regular Expressions (`REGEXP`)
- Character Classes
- Anchors (`^`, `$`)
- ORDER BY

## Time Complexity
O(n)

## Space Complexity
O(1)
