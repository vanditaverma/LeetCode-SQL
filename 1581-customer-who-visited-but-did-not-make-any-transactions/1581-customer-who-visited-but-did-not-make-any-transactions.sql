# Write your MySQL query statement below
Select customer_id,
       count(v.visit_id) as count_no_trans
from visits v
where not exists (select visit_id from transactions t where t.visit_id = v.visit_id)
group by customer_id