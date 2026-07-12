with new_table as (
    select 
        id,
        visit_date, 
        people, 
        id - ROW_NUMBER() over(order by id) as grp
    from stadium
    where people >= 100
)
select 
    n.id, 
    n.visit_date,
    n.people
from new_table n
where grp in (select 
                grp
            from new_table
            group by grp
            having count(*) >= 3)
 order by visit_date;