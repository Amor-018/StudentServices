-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 3: Insert Test Data
-- ==========================================================

USE StudentServicesDB;


-- ===========================
-- DEPARTMENTS DATA
-- ===========================

INSERT INTO Departments
(DepartmentName, Location, HeadOfDepartment)
VALUES
('Computer Science','Main Campus','Dr. Otieno'),
('Business Studies','Town Campus','Dr. Wanjiku'),
('Information Technology','Main Campus','Mr. Kamau');


-- ===========================
-- COURSES DATA
-- ===========================

INSERT INTO Courses
(CourseID, CourseName, CourseDuration, DepartmentID)
VALUES
(1,'Bachelor of Computer Science','4 Years',1),
(2,'Bachelor of Business Administration','4 Years',2),
(3,'Diploma in Information Technology','3 Years',3);


-- ===========================
-- STUDENTS DATA
-- ===========================

INSERT INTO Students
(StudentID, FirstName, LastName, Gender, DateOfBirth, Phone, Email, DepartmentID, Address, Class)
VALUES
(1,'John','Mwangi','Male','2003-05-12','0712345678',
'john@gmail.com',1,'Nairobi','CS Year 3'),

(2,'Mary','Wanjiru','Female','2002-08-20','0723456789',
'mary@gmail.com',2,'Thika','Business Year 4'),

(3,'Kevin','Otieno','Male','2004-01-15','0734567890',
'kevin@gmail.com',3,'Kiambu','IT Year 2');


-- ===========================
-- LECTURERS DATA
-- ===========================

INSERT INTO Lecturers
(LecturerID,LecturerName,Email,Phone,DepartmentID)
VALUES
(1,'Mr. Maina','maina@gmail.com','0700000001',1),
(2,'Dr. Wambui','wambui@gmail.com','0700000002',2),
(3,'Mr. Kariuki','kariuki@gmail.com','0700000003',3);


-- ===========================
-- MODULES DATA
-- ===========================

INSERT INTO Modules
(ModuleID,ModuleName,CreditHours,CourseID)
VALUES
(1,'Database Management Systems',3,1),
(2,'Programming Fundamentals',4,1),
(3,'Business Communication',3,2);


-- ===========================
-- ENROLLMENT DATA
-- ===========================

INSERT INTO Enrollment
(EnrollmentID,StudentID,CourseID,DateEnrolled)
VALUES
(1,1,1,'2025-09-01'),
(2,2,2,'2025-09-01'),
(3,3,3,'2025-09-01');


-- ===========================
-- HOSTELS DATA
-- ===========================

INSERT INTO Hostels
(HostelID,HostelName,Location,Capacity)
VALUES
(1,'Sunrise Hostel','Main Campus',200),
(2,'Green Hostel','Town Campus',150);


-- ===========================
-- HOSTEL ALLOCATION DATA
-- ===========================

INSERT INTO Hostel_Allocation
(AllocationID,StudentID,HostelID,RoomNumber,AllocationDate)
VALUES
(1,1,1,'A101','2025-09-02'),
(2,2,2,'B203','2025-09-02');


-- ===========================
-- CLUBS DATA
-- ===========================

INSERT INTO Clubs
(ClubID,ClubName,Description)
VALUES
(1,'Computer Club','Technology and programming activities'),
(2,'Business Club','Entrepreneurship activities');


-- ===========================
-- CLUB MEMBERS DATA
-- ===========================

INSERT INTO Club_Members
(MemberID,StudentID,ClubID,DateJoined)
VALUES
(1,1,1,'2025-09-10'),
(2,2,2,'2025-09-10');


-- ===========================
-- ASSESSMENTS DATA
-- ===========================

INSERT INTO Assessments
(AssessmentID,StudentID,AssessmentType,Marks,Grade)
VALUES
(1,1,'CAT',18,'A'),
(2,2,'End Term',55,'B'),
(3,3,'CAT',15,'B');


-- ==========================================================
-- END OF INSERT TEST DATA
-- ==========================================================