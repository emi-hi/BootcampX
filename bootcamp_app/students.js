

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryArgs = process.argv.splice(2);
const cohort = queryArgs[0];
const max_results = queryArgs[1];
const values = [`%${cohort}%`, max_results]


pool.query(`
SELECT students.id, students.name, cohort_id as cohort_id, cohorts.name as cohort_name
FROM students
JOIN cohorts 
on students.cohort_id = cohorts.id
WHERE cohorts.name LIKE $1
LIMIT $2;
`, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
  })
})
.catch(err => console.error('query error', err.stack));