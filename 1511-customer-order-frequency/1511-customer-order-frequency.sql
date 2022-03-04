# Write your MySQL query statement below

SELECT 
    customer_id,
    name
FROM Customers 
# get use to using, instead of just single line
JOIN Orders USING(customer_id) 
JOIN Product USING(product_id)
GROUP BY customer_id
# having + if here can solve it. important
HAVING 
    SUM(
        IF(MONTH(order_date) = 6, quantity, 0) * price
    ) >= 100 AND 
    SUM(
        IF(MONTH(order_date) = 7, quantity, 0) * price
    ) >= 100;
