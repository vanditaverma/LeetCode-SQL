# Write your MySQL query statement below
Select p.product_id, 
       COALESCE(ROUND(SUM(price*units)/SUM(units),2),0) as average_price
from prices p
left join UnitsSold us
on p.product_id = us.product_id
and  us.purchase_date between p.start_date and p.end_date
group by product_id
