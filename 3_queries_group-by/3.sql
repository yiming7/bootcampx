/*
Get all cohorts with 18 or more students.

Select the cohort name and the total students.
Order by total students from smallest to greatest.
*/

SELECT cohorts.name, COUNT(students.id)
FROM cohorts JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY COUNT(students.id);