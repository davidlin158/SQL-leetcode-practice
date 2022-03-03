# Write your MySQL query statement below
# when avg it automatically sum no need of avg(sum())
SELECT a.country_name,
CASE WHEN AVG(weather_state)<=15 THEN "Cold"
WHEN AVG(weather_state)>=25 THEN "Hot"
ELSE "Warm" END as weather_type FROM Countries as a
JOIN Weather as b
ON a.country_id=b.country_id
#faster way to find date
WHERE Year(b.day) = 2019 
AND Month(b.day) = 11 
GROUP BY a.country_id;





