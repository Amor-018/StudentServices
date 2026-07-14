-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 2: Create All Tables
-- ==========================================================

USE StudentServicesDB;

-- ===========================
-- COURSES TABLE
-- ===========================

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    CourseDuration VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- ===========================
-- STUDENTS TABLE
-- ===========================

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    DepartmentID INT,
    Address VARCHAR(150),

    Class VARCHAR(50),
    EnrollmentStatus VARCHAR(30) DEFAULT 'In Session',
    FeeBalance DECIMAL(10,2) DEFAULT 0,

    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);

-- ===========================
-- LECTURERS TABLE
-- ===========================

CREATE TABLE Lecturers (
    LecturerID INT PRIMARY KEY,
    LecturerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);

-- ===========================
-- MODULES TABLE
-- ===========================

CREATE TABLE Modules (
    ModuleID INT PRIMARY KEY,
    ModuleName VARCHAR(100),
    CreditHours INT,
    CourseID INT,
    FOREIGN KEY (CourseID)
    REFERENCES Courses(CourseID)
);

-- ==========================================================
-- STUDENT SERVICES MANAGEMENT SYSTEM
-- Task 2: Create All Tables (Continuation)
-- ==========================================================

USE StudentServicesDB;


-- ===========================
-- ENROLLMENT TABLE
-- ===========================

CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    DateEnrolled DATE,

    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID),

    FOREIGN KEY (CourseID)
    REFERENCES Courses(CourseID)
);


-- ===========================
-- HOSTELS TABLE
-- ===========================

CREATE TABLE Hostels (
    HostelID INT PRIMARY KEY,
    HostelName VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Capacity INT
);


-- ===========================
-- HOSTEL ALLOCATION TABLE
-- ===========================

CREATE TABLE Hostel_Allocation (
    AllocationID INT PRIMARY KEY,
    StudentID INT,
    HostelID INT,
    RoomNumber VARCHAR(20),
    AllocationDate DATE,

    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID),

    FOREIGN KEY (HostelID)
    REFERENCES Hostels(HostelID)
);


-- ===========================
-- CLUBS TABLE
-- ===========================

CREATE TABLE Clubs (
    ClubID INT PRIMARY KEY,
    ClubName VARCHAR(100) NOT NULL,
    Description VARCHAR(255)
);


-- ===========================
-- CLUB MEMBERS TABLE
-- ===========================

CREATE TABLE Club_Members (
    MemberID INT PRIMARY KEY,
    StudentID INT,
    ClubID INT,
    DateJoined DATE,

    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID),

    FOREIGN KEY (ClubID)
    REFERENCES Clubs(ClubID)
);


-- ===========================
-- ASSESSMENTS TABLE
-- ===========================

CREATE TABLE Assessments (
    AssessmentID INT PRIMARY KEY,
    StudentID INT,
    AssessmentType VARCHAR(50),
    Marks DECIMAL(5,2),
    Grade VARCHAR(5),

    FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID)
);


-- ==========================================================
-- END OF TABLE CREATION SCRIPT
-- ==========================================================