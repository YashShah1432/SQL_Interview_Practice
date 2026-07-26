# Write your MySQL query statement below
with new_table as (
select
    requester_id as id,
    count(requester_id) as friend_count
from requestaccepted
group by requester_id
union all
select
    accepter_id as id,
    count(accepter_id) as friend_count
from requestaccepted
group by accepter_id
)
select
    id,
    sum(friend_count) as num
from new_table
group by id
order by sum(friend_count) desc
limit 1