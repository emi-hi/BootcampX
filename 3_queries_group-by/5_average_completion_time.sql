/*
Get currently enrolled students' average assignment completion time.

Select the students name and average time from assignment submissions.
Order the results from greatest duration to least greatest duration.
A student will have a null end_date if they are currently enrolled
*/


SELECT students.name as student_name, AVG(assignment_submissions.duration) as average_duration
FROM students
JOIN assignment_submissions ON student_id = students.id 
WHERE students.end_date IS null
GROUP BY students.name
ORDER BY average_duration DESC;





/* \i 3_queries_group-by/5_average_completion_time.sql */
