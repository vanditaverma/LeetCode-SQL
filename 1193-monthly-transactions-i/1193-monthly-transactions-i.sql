# Write your MySQL query statement below



SELECT DATE_FORMAT(trans_date, '%Y-%m') as month, 
       country,
       count( trans_date) as trans_count,
       SUM(case when state = 'approved' then 1 else 0 end) as approved_count,
       sum(amount) as trans_total_amount,
       sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
FROM TRANSACTIONS 
GROUP BY DATE_FORMAT(trans_date, '%Y-%m'), country;
