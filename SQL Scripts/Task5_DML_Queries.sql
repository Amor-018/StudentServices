-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- TASK 5: DML OPERATIONS
-- Student Name: ______________________
-- Admission No: ______________________
-- ==========================================================

/*===========================================================
  TASK 5(a): INSERT TEST DATA
===========================================================*/

-- Departments
SELECT * FROM departments;

-- Courses
SELECT * FROM courses;

-- Lecturers
SELECT * FROM lecturers;

-- Students
SELECT * FROM students;

-- Modules
SELECT * FROM modules;

-- Enrollment
SELECT * FROM enrollment;

-- Assessments
SELECT * FROM assessments;

-- Clubs
SELECT * FROM clubs;

-- Club Members
SELECT * FROM club_members;

-- Hostels
SELECT * FROM hostels;

-- Hostel Allocation
SELECT * FROM hostel_allocation;


/*===========================================================
  TASK 5(b): SELECT QUERIES
===========================================================*/

-- i) Students with names starting with letter B

SELECT *
FROM students
WHERE FirstName LIKE 'B%';


-- ii) Departments located in Block A

SELECT *
FROM departments
WHERE Location='Block A';


-- iii) Students in class CS L6A

SELECT *
FROM students
WHERE Class='CS L6A';


-- iv) Clubs with no members

SELECT
    c.ClubID,
    c.ClubName
FROM clubs c
LEFT JOIN club_members cm
ON c.ClubID = cm.ClubID
WHERE cm.StudentID IS NULL;


/*===========================================================
  TASK 5(c): UPDATE & DELETE
===========================================================*/

-- i) Update student contact details

UPDATE students
SET
Phone='0700000000',
Email='updated@studentservices.ac.ke'
WHERE StudentID=1;


-- ii) Change student enrollment status

UPDATE students
SET EnrollmentStatus='On Attachment'
WHERE StudentID=1;


-- iii) Change club chairperson

UPDATE clubs
SET Chairperson='John Kamau'
WHERE ClubID=1;


-- iv) Deregister clubs without members

DELETE FROM clubs
WHERE ClubID NOT IN
(
SELECT ClubID
FROM club_members
-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- TASK 5: DML OPERATIONS
-- Student Name: ______________________
-- Admission No: ______________________
-- ==========================================================

/*===========================================================
  TASK 5(a): INSERT TEST DATA
===========================================================*/

-- Departments
SELECT * FROM departments;

-- Courses
SELECT * FROM courses;

-- Lecturers
SELECT * FROM lecturers;

-- Students
SELECT * FROM students;

-- Modules
SELECT * FROM modules;

-- Enrollment
SELECT * FROM enrollment;

-- Assessments
SELECT * FROM assessments;

-- Clubs
SELECT * FROM clubs;

-- Club Members
SELECT * FROM club_members;

-- Hostels
SELECT * FROM hostels;

-- Hostel Allocation
SELECT * FROM hostel_allocation;


/*===========================================================
  TASK 5(b): SELECT QUERIES
===========================================================*/

-- i) Students with names starting with letter B

SELECT *
FROM students
WHERE FirstName LIKE 'B%';


-- ii) Departments located in Block A

SELECT *
FROM departments
WHERE Location='Block A';


-- iii) Students in class CS L6A

SELECT *
FROM students
WHERE Class='CS L6A';


-- iv) Clubs with no members

SELECT
    c.ClubID,
    c.ClubName
FROM clubs c
LEFT JOIN club_members cm
ON c.ClubID = cm.ClubID
WHERE cm.StudentID IS NULL;


/*===========================================================
  TASK 5(c): UPDATE & DELETE
===========================================================*/

-- i) Update student contact details

UPDATE students
SET
Phone='0700000000',
Email='updated@studentservices.ac.ke'
WHERE StudentID=1;


-- ii) Change student enrollment status

UPDATE students
SET EnrollmentStatus='On Attachment'
WHERE StudentID=1;


-- iii) Change club chairperson

UPDATE clubs
SET Chairperson='John Kamau'
WHERE ClubID=1;


-- iv) Deregister clubs without members

DELETE FROM clubs
WHERE ClubID NOT IN
(
SELECT ClubID
FROM club_members
);

/*===========================================================
  TASK 5(d): JOIN QUERIES
===========================================================*/

-- i) Lecturers and the subjects they teach

SELECT
    l.LecturerID,
    l.LecturerName,
    s.SubjectName,
    s.HoursPerTerm
FROM lecturers l
INNER JOIN subjects s
ON l.LecturerID = s.LecturerID;


-- ii) Clubs with their patrons and chairpersons

SELECT
    ClubName,
    Patron,
    Chairperson
FROM clubs;


-- iii) Students in a specific class with their hostel details

SELECT
    st.StudentID,
    st.FirstName,
    st.LastName,
    st.Class,
    h.HostelName,
    ha.RoomNumber
FROM students st
INNER JOIN hostel_allocation ha
ON st.StudentID = ha.StudentID
INNER JOIN hostels h
ON ha.HostelID = h.HostelID
WHERE st.Class = 'CS L6A';


-- iv) Students attached in the same firm for a specified attachment period

SELECT
    st.StudentID,
    st.FirstName,
    st.LastName,
    a.FirmName,
    a.StartDate,
    a.EndDate,
    a.Status
FROM students st
INNER JOIN attachments a
ON st.StudentID = a.StudentID
WHERE a.StartDate = '2026-05-01'
AND a.EndDate = '2026-08-31';


/*===========================================================
  TASK 5(e): AGGREGATE QUERIES
===========================================================*/

-- i) Total number of students per course

SELECT
    c.CourseName,
    COUNT(e.StudentID) AS TotalStudents
FROM courses c
INNER JOIN enrollment e
ON c.CourseID = e.CourseID
GROUP BY c.CourseName;


-- ii) Average marks per department

SELECT
    d.DepartmentName,
    AVG(a.Marks) AS AverageMarks
FROM departments d
INNER JOIN students s
ON d.DepartmentID = s.DepartmentID
INNER JOIN assessments a
ON s.StudentID = a.StudentID
GROUP BY d.DepartmentName;


-- iii) Membership per club per year

SELECT
    c.ClubName,
    YEAR(cm.DateJoined) AS MembershipYear,
    COUNT(cm.StudentID) AS TotalMembers
FROM clubs c
INNER JOIN club_members cm
ON c.ClubID = cm.ClubID
GROUP BY c.ClubName, YEAR(cm.DateJoined);


-- iv) Total marks for a given student

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    SUM(a.Marks) AS TotalMarks
FROM students s
INNER JOIN assessments a
ON s.StudentID = a.StudentID
WHERE s.StudentID = 1
GROUP BY s.StudentID, s.FirstName, s.LastName;


-- v) Students currently on attachment per department

SELECT
    d.DepartmentName,
    s.FirstName,
    s.LastName,
    a.FirmName,
    a.Status
FROM students s
INNER JOIN departments d
ON s.DepartmentID = d.DepartmentID
INNER JOIN attachments a
ON s.StudentID = a.StudentID
WHERE a.Status = 'In Progress';


-- vi) Attachment completion rates per course

SELECT
    c.CourseName,
    COUNT(a.AttachmentID) AS TotalAttachments,
    SUM(CASE WHEN a.Status = 'Completed' THEN 1 ELSE 0 END) AS CompletedAttachments
FROM courses c
INNER JOIN enrollment e
ON c.CourseID = e.CourseID
INNER JOIN attachments a
ON e.StudentID = a.StudentID
GROUP BY c.CourseName;


-- vii) Hostel occupancy rates

SELECT
    h.HostelName,
    h.Capacity,
    COUNT(ha.StudentID) AS OccupiedSpaces,
    ROUND((COUNT(ha.StudentID)/h.Capacity)*100,2) AS OccupancyRate
FROM hostels h
LEFT JOIN hostel_allocation ha
ON h.HostelID = ha.HostelID
GROUP BY h.HostelID, h.HostelName, h.Capacity;


-- viii) Club participation trends over multiple years

SELECT
    YEAR(DateJoined) AS ParticipationYear,
    COUNT(StudentID) AS TotalParticipants
FROM club_members
GROUP BY YEAR(DateJoined);


-- ix) Lecturer workload (hours taught per term)

SELECT
    l.LecturerName,
    SUM(s.HoursPerTerm) AS TotalHoursPerTerm
FROM lecturers l
INNER JOIN subjects s
ON l.LecturerID = s.LecturerID
GROUP BY l.LecturerName;


/*===========================================================
                END OF TASK 5 DML SCRIPT
===========================================================*/