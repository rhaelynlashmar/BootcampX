SELECT assignments.id AS id, day, chapter, name, COUNT(*) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id, day, chapter, name
ORDER BY total_requests DESC;