/*
Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.
 */

SELECT cohorts.name, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students on cohorts.id = students.cohort_id
JOIN assignment_submissions on assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY  count(assignment_submissions.*) DESC


/* \i 3_queries_group-by/4_total_assignment_submissions.sql */