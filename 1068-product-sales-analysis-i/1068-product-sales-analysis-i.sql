# Write your MySQL query statement below
Select product_name,
       year,
       price
from sales s
join product p
on s.product_id = p.product_id
