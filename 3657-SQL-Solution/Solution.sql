# Write your MySQL query statement below
with new_table as (
select 
    customer_id, 
    datediff(max(transaction_date), min(transaction_date)) as days,
    count(case
        when transaction_type = 'refund' then transaction_id 
    end) as refund_trans,
    count(case
        when transaction_type = 'purchase' then transaction_id 
    end) as purch_trans
from customer_transactions
group by customer_id
)
select 
    customer_id
from new_table
where days >= 30 
and purch_trans >= 3 
and ((refund_trans*100)/(refund_trans + purch_trans)) < 20
order by customer_id;