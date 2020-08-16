SELECT concat('Approved: ', name) AS name,
       grade
FROM students
WHERE grade >= 7
ORDER BY grade DESC;
