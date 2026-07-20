# LeetCode 608 - Tree Node

## Problem
Classify each node in the tree as one of the following:
- **Root**: A node with no parent (`p_id` is `NULL`).
- **Leaf**: A node with no children.
- **Inner**: A node that is neither a root nor a leaf.

Return the node ID and its corresponding type.

## Approach
1. Identify the root node by checking if `p_id` is `NULL`.
2. Identify leaf nodes by finding IDs that never appear as a parent (`p_id`) in the table.
3. Classify all remaining nodes as inner nodes.
4. Return the node ID along with its type.

## SQL Concepts Used
- CASE Expression
- Subquery
- NOT IN
- WHERE Clause
- GROUP BY

## Time Complexity
O(n)

## Space Complexity
O(n)
