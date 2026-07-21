# Write your MySQL query statement below
with new_table as (
select product_id, 'store1' as store, store1 as price from products
Union ALL
select product_id, 'store2' as store, store2 as price from products
Union ALL
select product_id, 'store3' as store, store3 as price from products
)
select * from new_table
where price is not NULL;