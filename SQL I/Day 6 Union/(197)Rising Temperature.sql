# Write your MySQL query statement below
SELECT 
    Weather.id as id
FROM
    Weather 
JOIN
    Weather W 
ON 
    DATEDIFF(Weather.recordDate, w.recordDate) = 1
    AND Weather.temperature > w.temperature;