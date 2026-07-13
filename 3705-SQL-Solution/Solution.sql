# Write your MySQL query statement below
with new_table as (
select
    customer_id,
    count(*) as total_orders,
    round(avg(order_rating),2) as average_rating,
    count(
        case
            when order_rating is not NULL then order_rating
        end) as rating_count,
    round((count(
        case 
            when time(order_timestamp) between '11:00:00' and '14:00:00' or time(order_timestamp) between '18:00:00' and '21:00:00' then order_id
        end)/ count(*)) * 100) as peak_hour_percentage
from restaurant_orders
group by customer_id
having count(*) >= 3 
and avg(order_rating) >= 4
and ((rating_count * 100) / total_orders) > 50
)
select customer_id, total_orders, peak_hour_percentage, average_rating
from new_table
where peak_hour_percentage >= 60
order by average_rating desc, customer_id desc;
