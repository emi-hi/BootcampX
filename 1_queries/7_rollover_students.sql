/*
started in one cohort, gotten sick, and had to finish in a different cohort. We'll call this type of student a rollover student.

Select all rollover students.

Get the student's name, student's start_date, cohort's name, and cohort's start_date.
Alias the column names to be more descriptive.
Order by the name of the cohort
*/

SELECT students.name as student_name,  cohorts.name as cohort_name, cohorts.start_date as cohort_start,students.start_date as student_start
FROM students
JOIN cohorts ON (students.cohort_id = cohorts.id)
WHERE students.start_date != cohorts.start_date;