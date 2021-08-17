-- To be able to see how many assistance requests any teacher has completed
SELECT COUNT(assistance_requests.*) AS total_assistance,
 teachers.name AS name
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;