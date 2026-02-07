-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth

.mode box 

SELECT DISTINCT
Student.StudentId AS StudentId,
Student.FirstName AS FirstName, 
Student.LastName AS LastName, 
Student.DateOfBirth AS DateOfBirth

FROM Student
ORDER BY DateOfBirth DESC 
LIMIT 5 ;

