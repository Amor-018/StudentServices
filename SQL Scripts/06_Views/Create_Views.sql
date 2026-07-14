-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 6: CREATE VIEWS
-- ==========================================================

USE StudentServicesDB;


-- ==========================================================
-- VIEW 1: Student Details View
-- ==========================================================

CREATE VIEW StudentDetails_View AS

SELECT

Students.StudentID,
Students.FirstName,
Students.LastName,
Students.Gender,
Students.Phone,
Departments.DepartmentName

FROM Students

INNER JOIN Departments

ON Students.DepartmentID =
Departments.DepartmentID;



-- ==========================================================
-- VIEW 2: Course Details View
-- ==========================================================

CREATE VIEW CourseDetails_View AS

SELECT

Courses.CourseID,
Courses.CourseName,
Courses.Duration,
Departments.DepartmentName

FROM Courses

INNER JOIN Departments

ON Courses.DepartmentID =
Departments.DepartmentID;



-- ==========================================================
-- VIEW 3: Assessment Results View
-- ==========================================================

CREATE VIEW AssessmentResults_View AS

SELECT

Students.FirstName,
Students.LastName,
Assessments.AssessmentType,
Assessments.Marks,
Assessments.Grade

FROM Students

INNER JOIN Assessments

ON Students.StudentID =
Assessments.StudentID;


-- ==========================================================
-- END OF CREATE VIEWS
-- ==========================================================