-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear

.mode box

SELECT
    s.StudentId,
    s.FirstName,
    s.LastName,
    2022 AS EnrolmentYear
FROM Student AS s
WHERE EXISTS (
    SELECT 1
    FROM Enrolment AS e
    WHERE e.StudentId = s.StudentId
      AND e.AcademicYear = 2022
)
ORDER BY s.StudentId;
