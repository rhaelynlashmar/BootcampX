SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_duration DESC;