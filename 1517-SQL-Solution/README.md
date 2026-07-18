# LeetCode 1517 - Find Users With Valid E-Mails

## Problem
Find all users whose email addresses are valid.

A valid email must:
- Start with one or more English letters.
- Be followed by zero or more letters, digits, underscores (`_`), periods (`.`), or hyphens (`-`).
- End with `@leetcode.com`.

Return the user ID, name, and email address.

## Approach
1. Use `REGEXP_LIKE()` to validate the email format.
2. Ensure the email starts with one or more alphabetic characters using `^[a-zA-Z]+`.
3. Allow letters, digits, underscores (`_`), periods (`.`), and hyphens (`-`) before the `@` symbol using `[a-zA-Z0-9_.-]*`.
4. Match the exact domain `@leetcode.com`.
5. Use the `'c'` flag to perform a case-sensitive match.

## SQL Concepts Used
- Regular Expressions (`REGEXP_LIKE`)
- Character Classes
- Anchors (`^`, `$`)
- WHERE Clause

## Time Complexity
O(n)

## Space Complexity
O(1)
