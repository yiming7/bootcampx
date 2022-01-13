/*
Get the total number of assignment submissions for each cohort.

Select the cohort name and total submissions.
Order the results from greatest to least submissions.
*/

SELECT cohorts.name, COUNT(assignment_submissions.id) as total_submission
FROM cohorts JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submission DESC;