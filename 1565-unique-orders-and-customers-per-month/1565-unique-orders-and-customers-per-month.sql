# Write your MySQL query statement below
SELECT LEFT(order_date, 7) AS month,
        # Or 2nd way to get year and month
        # DATE_FORMAT(order_date, '%Y-%m') AS month,
        COUNT(DISTINCT order_id) AS order_count,
        COUNT(DISTINCT customer_id) AS customer_count
FROM Orders
WHERE invoice>20
GROUP BY 1