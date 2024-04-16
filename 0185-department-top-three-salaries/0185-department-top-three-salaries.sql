/* Write your T-SQL query statement below */

select dname as Department,
       ename as Employee,
       salary as Salary
from (
select distinct d.name as dname, 
                e.name as ename,
                e.salary as salary,
                DENSE_RANK() OVER (partition by d.name order by e.salary desc) as rank
        from employee e  join department d
        on d.id = e.departmentId
        group by d.name,e.name,e.salary) as a
where rank <=3;

     