

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryArgs = process.argv.splice(2);
const cohort = queryArgs[0];
const max_results = queryArgs[1]


pool.query(`
SELECT distinct(teachers.name) as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
JOIN students on assistance_requests.student_id = students.id
JOIN cohorts on cohorts.id = students.cohort_id
WHERE cohorts.name LIKE '%${cohort}%'
ORDER BY teacher
LIMIT ${max_results || 5};
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));