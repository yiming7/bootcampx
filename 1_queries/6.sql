/*
Once a student graduates, the career services department needs to keep track of their activity on Github. If a graduate has not linked their Github account, we need to contact them to do so.

Get all graduates without a linked Github account.

Get their name, email, and phone.
*/

SELECT name, email, phone
FROM students
WHERE end_date IS NOT NULL AND github IS NULL;