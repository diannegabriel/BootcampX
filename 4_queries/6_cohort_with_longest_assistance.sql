-- Original answer (wrong):
-- SELECT cohorts.name AS name,
-- AVG(completed_at - started_at) AS average_assistance_request_duration
-- FROM assistance_requests
-- JOIN students ON student_id = students.id
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- WHERE AVG(completed_at - started_at) > (
--   SELECT average_assistance_request_duration
--   FROM assistance_requests
--   JOIN students ON student_id = students.id
--   JOIN cohorts ON students.cohort_id = cohorts.id
--   GROUP BY cohorts.name
-- )
-- GROUP BY cohorts.name;

SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;