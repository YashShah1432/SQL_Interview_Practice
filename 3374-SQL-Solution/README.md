# LeetCode 3374 - First Letter Capitalization II

## Problem
Convert the text in each row so that:
- The first letter of the text is capitalized.
- The first letter after every space is capitalized.
- The remaining alphabetic characters are lowercase.
- Non-alphabetic characters should remain unchanged.

Return the content ID, original text, and the converted text.

## Approach
1. Convert the entire text to lowercase to create a consistent starting point.
2. Use a recursive CTE to split each string into individual characters while tracking their positions.
3. Process each character individually:
   - Capitalize the first letter of the string.
   - Capitalize letters immediately following a space.
   - Capitalize letters after a hyphen only when appropriate.
   - Leave all other alphabetic characters in lowercase.
4. Preserve numbers and special characters without modification.
5. Reconstruct the transformed string using `GROUP_CONCAT()` in the original character order.

## SQL Concepts Used
- Recursive Common Table Expression (CTE)
- String Functions (`LOWER`, `UPPER`, `SUBSTRING`, `LENGTH`)
- CASE Expression
- GROUP_CONCAT()
- Character-by-character String Processing

## Time Complexity
O(n × m)

- **n** = number of rows
- **m** = average length of each string

## Space Complexity
O(n × m)
