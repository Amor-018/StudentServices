-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 5: UPDATE AND DELETE OPERATIONS
-- ==========================================================

USE StudentServicesDB;


-- ==========================================================
-- UPDATE OPERATIONS
-- ==========================================================


-- Update student phone number

UPDATE Students

SET Phone = '0711223344'

WHERE StudentID = 1;



-- Update student address

UPDATE Students

SET Address = 'Nairobi CBD'

WHERE StudentID = 2;



-- Update department location

UPDATE Departments

SET Location = 'Main Campus'

WHERE DepartmentID = 3;



-- Update assessment grade

UPDATE Assessments

SET Grade = 'A'

WHERE AssessmentID = 1;



-- ==========================================================
-- DELETE OPERATIONS
-- ==========================================================


-- Delete a club member record

DELETE FROM Club_Members

WHERE MemberID = 2;



-- Delete an assessment record

DELETE FROM Assessments

WHERE AssessmentID = 3;



-- ==========================================================
-- VERIFY UPDATED DATA
-- ==========================================================

SELECT * FROM Students;

SELECT * FROM Assessments;


-- ==========================================================
-- END OF UPDATE AND DELETE
-- ==========================================================
-- ==========================================================