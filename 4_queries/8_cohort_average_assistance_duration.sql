SELECT AVG(completed_at - started_at) AS average_total_duration 
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- HAVING AVG(SUM(completed_at - started_at));
-- ORDER BY average_total_duration;