-- To be able to see how many assistance requests any student has requested
SELECT COUNT(assistance_requests.*) AS total_assistance,
 students.name AS name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;