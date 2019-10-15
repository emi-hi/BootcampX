/*
Cohort Average Assistance Duration
We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.

Calculate the average total duration of assistance requests for each cohort.

Use the previous query as a sub query to determine the duration per cohort.
Return a single row average_total_duration
*/
SELECT AVG(total_duration) as average_total_duration from 
(SELECT cohorts.name, sum(completed_at-started_at) as total_duration FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration) AS total_duration



/*
 \i 4_queries/9_cohort_average_assistance_duration.sql
*/