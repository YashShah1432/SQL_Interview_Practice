# Write your MySQL query statement below
select
    unique_id,
    name
from employees e
left join employeeuni eq
on e.id = eq.id