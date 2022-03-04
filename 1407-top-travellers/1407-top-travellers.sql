# Write your MySQL query statement below
SELECT DISTINCT u.name, 
# here since donald doesn't have any ride, it will return null, use ifnull to avoid.
IFNULL(SUM(distance) OVER (PARTITION BY user_id), 0) as travelled_distance 
FROM Rides r RIGHT JOIN Users u ON r.user_id = u.id 
ORDER BY travelled_distance DESC, name
