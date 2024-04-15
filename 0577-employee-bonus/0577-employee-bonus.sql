# Write your MySQL query statement below

Select name,COALESCE(bonus,null) as bonus 
from employee emp 
left join bonus b
on emp.empId = b.empId
where b.bonus < 1000 or bonus is NULL