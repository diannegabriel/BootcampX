-- To calculate the total number of assignment_submissions for all students
SELECT count(assignment_submissions.*) as total_submissions
FROM assignment_submissions;

-- To calculate the total number of assignment_submissions for each student individually, and output the totals next to the student's name
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;

-- To calculate the total number of assignment_submissions for each currently enrolled student individually, and output the totals next to the student's name
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;

-- To return currently enrolled students who's total submissions are less than 100 
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;