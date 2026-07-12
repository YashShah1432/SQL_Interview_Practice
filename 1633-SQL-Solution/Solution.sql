# Write your MySQL query statement below
with new_table as(
select r.contest_id, count(u.user_id) as user_count from users u
join register r
on u.user_id = r.user_id
group by r.contest_id
)
select n.contest_id, round(((n.user_count*100)/count(us.user_id)),2) as percentage from users us
join new_table n
group by n.contest_id
order by percentage desc, contest_id;