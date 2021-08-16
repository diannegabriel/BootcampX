-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

SELECT students.name AS student_name,
  students.email AS email,
  cohorts.name AS cohort_name,
  cohorts.start_date AS start_date
FROM students
FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;