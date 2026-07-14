-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Update, Drop and Recreate Views
-- ==========================================================

USE StudentServicesDB;


-- ==========================================================
-- DROP EXISTING VIEW
-- ==========================================================

DROP VIEW IF EXISTS StudentDetails_View;



-- ==========================================================
-- RECREATE VIEW WITH ADDITIONAL COLUMN
-- ==========================================================

CREATE VIEW StudentDetails_View AS

SELECT

Students.StudentID,
Students.FirstName,
Students.LastName,
Students.Email,
Students.Phone,
Departments.DepartmentName

FROM Students

INNER JOIN Departments

ON Students.DepartmentID =
Departments.DepartmentID;



-- ==========================================================
-- DISPLAY UPDATED VIEW
-- ==========================================================

SELECT *
FROM StudentDetails_View;



-- ==========================================================
-- END OF VIEW MODIFICATION
-- ==========================================================