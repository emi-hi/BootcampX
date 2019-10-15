/*
Most Confusing Assignments
We need to know which assignments are causing the most assistance requests.

List each assignment with the total number of assistance requests with it.

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
*/


SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests on assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;


/*
 \i 4_queries/10_most_confusing_assignment.sql
*/