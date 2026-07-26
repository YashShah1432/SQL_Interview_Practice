# LeetCode 602 - Friend Requests II: Who Has the Most Friends

## Problem
Find the person who has the **highest number of friends**.

Each accepted friend request represents a friendship between the requester and the accepter, so both users gain one friend.

Return the person's ID and the total number of friends.

## Approach
1. Count the number of accepted friend requests sent by each user.
2. Count the number of accepted friend requests received by each user.
3. Combine both counts using `UNION ALL`.
4. Sum the counts for each user to obtain the total number of friends.
5. Return the user with the highest friend count.

## SQL Concepts Used
- Common Table Expression (CTE)
- UNION ALL
- Aggregate Functions (`COUNT`, `SUM`)
- GROUP BY
- ORDER BY
- LIMIT

## Time Complexity
O(n)

## Space Complexity
O(n)
