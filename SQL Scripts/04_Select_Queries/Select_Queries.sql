-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 4: SELECT QUERIES
-- ==========================================================

USE StudentServicesDB;


-- ==========================================================
-- 1. Display all students
-- ==========================================================

SELECT * 
FROM Students;


-- ==========================================================
-- 2. Display all departments
-- ==========================================================

SELECT *
FROM Departments;


-- ==========================================================
-- 3. Display students with their department names
-- ==========================================================

SELECT
Students.StudentID,
Students.FirstName,
Students.LastName,
Departments.DepartmentName

FROM Students

INNER JOIN Departments

ON Students.DepartmentID = Departments.DepartmentID;



-- ==========================================================
-- 4. Display courses with departments
-- ==========================================================

SELECT
Courses.CourseName,
Courses.Duration,
Departments.DepartmentName

FROM Courses

INNER JOIN Departments

ON Courses.DepartmentID = Departments.DepartmentID;



-- ==========================================================
-- 5. Display students enrolled in courses
-- ==========================================================

SELECT

Students.FirstName,
Students.LastName,
Courses.CourseName,
Enrollment.DateEnrolled

FROM Enrollment

INNER JOIN Students

ON Enrollment.StudentID = Students.StudentID

INNER JOIN Courses

ON Enrollment.CourseID = Courses.CourseID;



-- ==========================================================
-- 6. Display assessment results
-- ==========================================================

SELECT

Students.FirstName,
Students.LastName,
Assessments.AssessmentType,
Assessments.Marks,
Assessments.Grade

FROM Assessments

INNER JOIN Students

ON Assessments.StudentID = Students.StudentID;



-- ==========================================================
-- 7. Count students per department
-- ==========================================================

SELECT

Departments.DepartmentName,
COUNT(Students.StudentID) AS Total_Students

FROM Departments

LEFT JOIN Students

ON Departments.DepartmentID = Students.DepartmentID

GROUP BY Departments.DepartmentName;



-- ==========================================================
-- END OF SELECT QUERIES
-- ==========================================================