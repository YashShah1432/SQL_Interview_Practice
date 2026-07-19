# Write your MySQL query statement below
with new_table as (
select
    managerId
from employee
group by managerId
having count(managerId) >= 5
)
select
    e.name
from employee e
join new_table n
on e.id = n.managerId;