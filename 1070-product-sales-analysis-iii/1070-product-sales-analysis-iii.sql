# Write your MySQL query statement below
SELECT product_id, year AS first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN
(SELECT product_id, FIRST_VALUE(year) OVER (PARTITION BY product_id ORDER BY year) AS first_year
FROM Sales)
    
#   or giving ranks and select rank 1
/*select product_id, year as first_year, quantity, price
from(
select *,
rank() over(partition by product_id order by year) as year_rnk
from sales) as tbl
where year_rnk = 1
*/
