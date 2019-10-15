/*
Name of Teachers That Assisted
We need to know which teachers actually assisted students during any cohort.

Get the name of all teachers that performed an assistance request during a cohort.

Select the instructor's name and the cohort's name.
Don't repeat the instructor's name in the results list.
Order by the instructor's name.
This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.
*/


SELECT distinct(teachers.name) as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02' 
ORDER BY teacher;


/*
 \i 4_queries/12_name_of_teachers_that_assisted.sql
*/