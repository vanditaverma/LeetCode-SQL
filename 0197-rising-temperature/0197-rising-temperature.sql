# Write your MySQL query statement below
SELECT distinct w1.id
FROM weather w1
JOIN weather w2 
where w1.recordDate = w2.recordDate +INTERVAL 1 day
and w1.temperature > w2.temperature
ORDER BY w2.id;
