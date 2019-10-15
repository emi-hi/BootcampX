/*
Get the total number of assistance_requests for a teacher.

Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.
*/

SELECT teachers.name, count(assistance_requests.*) as total_assistances
from teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
GROUP BY name
HAVING name = 'Waylon Boehm';



/*
 \i 4_queries/1_teacher_assistance_requests.sql
*/