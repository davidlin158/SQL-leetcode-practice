# Write your MySQL query statement below
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    #use group concat here, to get all the word in one cell. sep automatically is ',' and order by is asc automatically as well.
    GROUP_CONCAT(DISTINCT product) AS products
FROM Activities
GROUP BY sell_date;
