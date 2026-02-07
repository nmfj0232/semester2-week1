-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName

.mode box 

SELECT DISTINCT 

s.StudentId, 
s.FirstName, 
s.LastName, 
c.CourseName 

FROM Student AS s 
JOIN Enrolment AS e 
    ON s.StudentId = e.StudentId 
JOIN Course AS c 
    ON e.CourseId = c.CourseId; 


