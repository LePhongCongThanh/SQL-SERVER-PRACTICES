https://leetcode.com/problems/queries-quality-and-percentage/submissions/990850126/
# Write your MySQL query statement below
With CTE as (SELECT *, rating/position as c, if(rating < 3,1,0) as d
from Queries
)
SELECT query_name, round(avg(c),2) as quality, round(sum(d)*100/count(d),2) as poor_query_percentage
FROM CTE
group by query_name
