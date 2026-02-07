-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

.mode box


SELECT 
    s.StudentId,
    s.FirstName,
    s.LastName,
    SUM(CASE WHEN e.Grade >= 40 THEN c.Credits ELSE 0 END) AS TotalCreditsPassed
FROM Student AS s
LEFT JOIN Enrolment AS e
    ON s.StudentId = e.StudentId
LEFT JOIN Course AS c
    ON e.CourseId = c.CourseId
GROUP BY 
    s.StudentId,
    s.FirstName,
    s.LastName
ORDER BY
    s.StudentId;
