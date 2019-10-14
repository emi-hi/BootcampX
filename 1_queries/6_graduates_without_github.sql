SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL

/* 1_queries/6_graduates_without_github.sql */