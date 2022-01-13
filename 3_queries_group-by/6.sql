/*
Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

Select the name of the student, their average completion time, and the average suggested completion time.
Order by average completion time from smallest to largest.
Only get currently enrolled students.
This will require data from students, assignment_submissions, and assignments.
*/

SELECT students.name, AVG(assignment_submissions.duration) as average_individual, AVG(assignments.duration) as average_all
FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_individual;