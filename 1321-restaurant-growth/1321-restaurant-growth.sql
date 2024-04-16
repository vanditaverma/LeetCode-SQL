# Write your MySQL query statement below
with cte as (
select distinct visited_on,min(visited_on) over() as first_day,
sum(amount) over(order by visited_on range between interval 6 day preceding and current row) as amount
from Customer )
select visited_on, amount,round(amount/7,2) as average_amount
from cte where datediff(visited_on,first_day)>=6