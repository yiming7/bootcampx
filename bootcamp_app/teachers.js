const { Pool } = require('pg');

const pool = new Pool({
  user: 'yiming',
  host: 'localhost',
  database: 'bootcampx'
}
);

const cohortName = process.argv[2] || 'JUL30';
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`];

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`,values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});