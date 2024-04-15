# Write your MySQL query statement below
Select coalesce(unique_id,null) as unique_id,
       name
from Employees emp 
left join EmployeeUNI empuni
on emp.id = empuni.id
