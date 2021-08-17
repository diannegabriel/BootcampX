-- See the number of assignments that each day has and the total duration of assignments for each day
SELECT day, 
  COUNT(*) AS number_of_assignments,
  SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;