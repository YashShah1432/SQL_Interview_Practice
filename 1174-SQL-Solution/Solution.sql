WITH new_table AS (
    SELECT
        delivery_id,
        customer_id
    FROM Delivery
    GROUP BY customer_id
    HAVING MIN(order_date) = MIN(customer_pref_delivery_date)
)

SELECT
    ROUND(
        (COUNT(n.customer_id) / COUNT(DISTINCT d.customer_id)) * 100,
        2
    ) AS immediate_percentage
FROM new_table n
RIGHT JOIN Delivery d
    ON n.delivery_id = d.delivery_id;