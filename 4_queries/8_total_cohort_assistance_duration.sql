/*
Total Cohort Assistance Duration
We need to be able to see the total amount of time being spent on an assistance request for each cohort. This number will tell use how much time is being spent on assistance requests for each cohort.

Get the total duration of all assistance requests for each cohort.

Select the cohort's name and the total duration the assistance requests.
Order by total_duration.
Look at the ERD to see how to join the tables.
*/

SELECT cohorts.name, sum(completed_at-started_at) as total_duration FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;



/*
 \i 4_queries/8_total_cohort_assistance_duration.sql
*/