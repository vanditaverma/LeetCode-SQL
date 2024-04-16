# Write your MySQL query statement below


select class 
from (select class, count(student) as counts from courses group by class having counts  >= 5)
 as new_t