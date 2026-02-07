-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

.mode box 

SELECT 
d.DepartmentName AS DepartmentName,
COUNT (e.EnrolmentId) as TotalEnrolments 

FROM Department AS d 
JOIN Course AS c    
    ON d.DepartmentId = c.DepartmentId 
JOIN Enrolment AS e 
    ON c.CourseId = e.CourseId 

GROUP BY d.DepartmentName
ORDER BY d.DepartmentName;

