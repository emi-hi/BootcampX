
SELECT SUM(duration) as total_duration
FROM assignment_submissions
JOIN students
ON (students.id = assignment_submissions.student_id)
JOIN cohorts
ON (students.cohort_id = cohorts.id)
WHERE cohorts.name = 'FEB12';


/*
2_queries_joins/2_cohort_total_duration.sql
*/