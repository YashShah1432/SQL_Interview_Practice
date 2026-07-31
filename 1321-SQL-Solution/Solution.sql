# Write your MySQL query statement below
with new_table as (
select
    visited_on,
    sum(amount) as amount
from customer
group by visited_on
)
select
    visited_on,
    sum(amount) over(order by visited_on rows between 6 preceding and current row) as amount,
    round(avg(amount) over(order by visited_on rows between 6 preceding and current row),2) as average_amount
from new_table
order by visited_on
limit 18446744073709551615 offset 6