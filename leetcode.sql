https://leetcode.com/problems/queries-quality-and-percentage/submissions/990850126/
# Write your MySQL query statement below
With CTE as (SELECT *, rating/position as c, if(rating < 3,1,0) as d
from Queries
)
SELECT query_name, round(avg(c),2) as quality, round(sum(d)*100/count(d),2) as poor_query_percentage
FROM CTE
group by query_name

https://leetcode.com/problems/monthly-transactions-i/submissions/990884899/
# Write your MySQL query statement below 
WITH CTE as ( SELECT id,country, state, amount, DATE_FORMAT(trans_date,'%Y-%m') as month
FROM TRANSACTIONS)
SELECT month, country, count(Amount) as trans_count, 
sum(if(state = "approved",1,0)) as approved_count, 
sum(amount) as trans_total_amount,
sum(if(state = "approved", amount, 0)) as approved_total_amount
FROM CTE
GROUP BY month, country
