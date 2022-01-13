/*
Busy Days
The same query as before, but only return rows where total assignments is greater than or equal to 10.
*/

SELECT day, COUNT(id) as total_assignment
FROM assignments
GROUP BY day
HAVING COUNT(id) >= 10
ORDER BY day;