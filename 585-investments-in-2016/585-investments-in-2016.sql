# Write your MySQL query statement below
SELECT ROUND(SUM(TIV_2016),2) AS TIV_2016 FROM Insurance a
#exists here 
WHERE EXISTS (SELECT * FROM Insurance WHERE PID <> a.PID AND TIV_2015 = a.TIV_2015)
AND NOT EXISTS (SELECT * FROM Insurance WHERE PID <> a.PID AND (LAT,LON) = (a.LAT,a.LON));