/*
Select the day and the total assignments.
Order the results by day.
This query only requires the assignments table.
*/

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;
/* \i 3_queries_group-by/2_assignments_group_by_day_greater10.sql */