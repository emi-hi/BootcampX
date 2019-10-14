SELECT cohorts.name, count(*) AS student_count FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY count(*);

/* \i 3_queries_group-by/3_large_cohorts.sql */