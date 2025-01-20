SELECT SUM(assignment_submissions.duration) AS total_duration 
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = student.id
WHERE students.name = 'Ibrahim Schimmel';