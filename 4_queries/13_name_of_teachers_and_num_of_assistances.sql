/*
Name of Teachers and Number of Assistances
We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.

Perform the same query as before, but include the number of assistances as well.
*/


SELECT distinct(teachers.name) as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02' 
GROUP BY teacher, cohorts.name
ORDER BY teacher;


/*
 \i 4_queries/13_name_of_teachers_and_num_of_assistances.sql
*/