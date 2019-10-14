/*
Select the day and the total assignments.
Order the results by day.
This query only requires the assignments table.
*/

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;

/* \i 3_queries_group-by/1_assignments_group_by_day.sql */