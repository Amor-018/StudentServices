-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2026 at 03:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentservicesdb`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `accounts_view`
-- (See below for the actual view)
--
CREATE TABLE `accounts_view` (
`StudentID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`FeeBalance` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `AssessmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `AssessmentType` varchar(50) DEFAULT NULL,
  `Marks` decimal(5,2) DEFAULT NULL,
  `Grade` varchar(5) DEFAULT NULL
) ;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`AssessmentID`, `StudentID`, `AssessmentType`, `Marks`, `Grade`) VALUES
(4, 1, 'CAT', 18.00, 'A'),
(12, 4, 'CAT', 16.00, 'A'),
(13, 5, 'CAT', 15.50, 'B'),
(14, 6, 'CAT', 19.00, 'A'),
(15, 7, 'CAT', 12.00, 'C'),
(16, 8, 'CAT', 18.50, 'A'),
(17, 9, 'CAT', 14.00, 'B'),
(18, 10, 'CAT', 17.00, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `AttachmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `FirmName` varchar(100) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`AttachmentID`, `StudentID`, `FirmName`, `StartDate`, `EndDate`, `Status`) VALUES
(1, 1, 'Safaricom', '2026-05-01', '2026-08-31', 'In Progress'),
(2, 2, 'KCB Bank', '2026-05-01', '2026-08-31', 'Completed'),
(3, 3, 'Kenya Power', '2026-05-01', '2026-08-31', 'In Progress'),
(4, 4, 'Microsoft Kenya', '2026-05-01', '2026-08-31', 'Completed'),
(5, 5, 'Google Kenya', '2026-05-01', '2026-08-31', 'In Progress'),
(6, 6, 'Equity Bank', '2026-05-01', '2026-08-31', 'Completed'),
(7, 7, 'IBM Kenya', '2026-05-01', '2026-08-31', 'In Progress'),
(8, 8, 'Huawei Kenya', '2026-05-01', '2026-08-31', 'Completed'),
(9, 9, 'NCBA Bank', '2026-05-01', '2026-08-31', 'In Progress'),
(10, 10, 'KenGen', '2026-05-01', '2026-08-31', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `ClubID` int(11) NOT NULL,
  `ClubName` varchar(100) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Chairperson` varchar(100) DEFAULT NULL,
  `Patron` varchar(100) DEFAULT NULL,
  `YearFormed` int(11) DEFAULT 2023
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`ClubID`, `ClubName`, `Description`, `Chairperson`, `Patron`, `YearFormed`) VALUES
(1, 'Computer Science Club', 'A club for programming and technology activities', 'John Kamau', 'Dr. James Mwangi', 2023),
(2, 'Business Club', 'A club for entrepreneurship and business activities', 'Faith Wanjiku', 'Prof. Mary Wanjiku', 2023),
(3, 'Sports Club', 'A club for games and sporting activities', 'Kevin Otieno', 'Dr. Peter Otieno', 2023),
(4, 'Drama Club', 'Promotes acting and stage performances', 'Mercy Chebet', 'Ms. Grace Achieng', 2023),
(5, 'Music Club', 'Encourages music and choir activities', 'Samuel Kariuki', 'Dr. David Kiptoo', 2023),
(6, 'Debate Club', 'Develops public speaking and debating skills', 'Ruth Njeri', 'Dr. Faith Njeri', 2023),
(7, 'Environmental Club', 'Promotes environmental conservation', 'Dennis Mwangi', 'Mr. Kevin Mutiso', 2023),
(8, 'Journalism Club', 'Enhances writing and reporting skills', 'Grace Achieng', 'Dr. Ruth Chebet', 2023),
(9, 'Robotics Club', 'Focuses on robotics and automation', 'Peter Otieno', 'Prof. Samuel Kariuki', 2023),
(10, 'Photography Club', 'Develops photography and media skills', 'Mary Wanjiku', 'Dr. Esther Nyambura', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `club_members`
--

CREATE TABLE `club_members` (
  `MemberID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `ClubID` int(11) DEFAULT NULL,
  `DateJoined` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club_members`
--

INSERT INTO `club_members` (`MemberID`, `StudentID`, `ClubID`, `DateJoined`) VALUES
(1, 1, 1, '2026-02-01'),
(2, 2, 2, '2026-02-02'),
(3, 3, 3, '2026-02-03'),
(4, 4, 4, '2026-02-04'),
(5, 5, 5, '2026-02-05'),
(6, 6, 6, '2026-02-06'),
(7, 7, 7, '2026-02-07'),
(8, 8, 8, '2026-02-08'),
(9, 9, 9, '2026-02-09'),
(10, 10, 10, '2026-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseName`, `Duration`, `DepartmentID`) VALUES
(1, 'Bachelor of Computer Science', '4 Years', 1),
(2, 'Bachelor of Business Studies', '4 Years', 2),
(3, 'Diploma in Information Technology', '3 Years', 3),
(4, 'Diploma in Civil Engineering', '3 Years', 3),
(5, 'Diploma in Hospitality Management', '2 Years', 4),
(6, 'Diploma in Education', '4 Years', 5),
(7, 'Diploma in Nursing', '3 Years', 6),
(8, 'Diploma in Agriculture', '2 Years', 8),
(9, 'Diploma in Architecture', '4 Years', 9),
(10, 'Diploma in Applied Mathematics', '3 Years', 10);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dean_view`
-- (See below for the actual view)
--
CREATE TABLE `dean_view` (
`CourseName` varchar(100)
,`TotalStudents` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `HeadOfDepartment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`, `Location`, `HeadOfDepartment`) VALUES
(1, 'Computer Science', 'Block A', 'Dr. James Kariuki'),
(2, 'Business Studies', 'Block B', 'Dr. Mary Wanjiku'),
(3, 'Electrical Engineering', 'Block C', 'Eng. Peter Mwangi'),
(4, 'Hospitality', 'Block D', 'Ms. Grace Achieng'),
(5, 'Automotive Engineering', 'Block E', 'Mr. David Mutua'),
(6, 'Computer Science', 'Main Campus', 'Dr. Otieno'),
(7, 'Business Studies', 'Town Campus', 'Dr. Wanjiku'),
(8, 'Information Technology', 'Main Campus', 'Mr. Kamau'),
(9, 'Architecture', 'Block I', 'Prof. Samuel Kariuki'),
(10, 'Mathematics', 'Block J', 'Dr. Esther Nyambura');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `EnrollmentID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `DateEnrolled` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`EnrollmentID`, `StudentID`, `CourseID`, `DateEnrolled`) VALUES
(1, 1, 1, '2026-01-15'),
(2, 2, 2, '2026-01-16'),
(3, 3, 3, '2026-01-17'),
(4, 4, 4, '2026-01-15'),
(5, 5, 5, '2026-01-16'),
(6, 6, 6, '2026-01-17'),
(7, 7, 7, '2026-01-18'),
(8, 8, 8, '2026-01-19'),
(9, 9, 9, '2026-01-20'),
(10, 10, 10, '2026-01-21');

-- --------------------------------------------------------

--
-- Stand-in structure for view `exam_performance_view`
-- (See below for the actual view)
--
CREATE TABLE `exam_performance_view` (
`StudentID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`AssessmentType` varchar(50)
,`Marks` decimal(5,2)
,`Grade` varchar(5)
,`SupplementaryStatus` varchar(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hod_view`
-- (See below for the actual view)
--
CREATE TABLE `hod_view` (
`StudentID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`DepartmentName` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `HostelID` int(11) NOT NULL,
  `HostelName` varchar(100) NOT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`HostelID`, `HostelName`, `Location`, `Capacity`) VALUES
(1, 'Mau Hostel', 'Main Campus', 200),
(2, 'Kilimanjaro Hostel', 'Main Campus', 150),
(3, 'Aberdare Hostel', 'Town Campus', 100),
(4, 'Mt. Kenya Hostel', 'Main Campus', 180),
(5, 'Elgon Hostel', 'West Campus', 120),
(6, 'Longonot Hostel', 'East Campus', 140),
(7, 'Kenya Hostel', 'South Campus', 160),
(8, 'Ruwenzori Hostel', 'North Campus', 130),
(9, 'Nyandarua Hostel', 'Main Campus', 170),
(10, 'Cherangany Hostel', 'West Campus', 150);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_allocation`
--

CREATE TABLE `hostel_allocation` (
  `AllocationID` int(11) NOT NULL,
  `StudentID` int(11) DEFAULT NULL,
  `HostelID` int(11) DEFAULT NULL,
  `RoomNumber` varchar(20) DEFAULT NULL,
  `AllocationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostel_allocation`
--

INSERT INTO `hostel_allocation` (`AllocationID`, `StudentID`, `HostelID`, `RoomNumber`, `AllocationDate`) VALUES
(1, 1, 1, 'A101', '2026-01-20'),
(2, 2, 2, 'B202', '2026-01-21'),
(3, 3, 3, 'C303', '2026-01-22'),
(4, 4, 4, 'D404', '2026-01-23'),
(5, 5, 5, 'E505', '2026-01-24'),
(6, 6, 6, 'F606', '2026-01-25'),
(7, 7, 7, 'G707', '2026-01-26'),
(8, 8, 8, 'H808', '2026-01-27'),
(9, 9, 9, 'I909', '2026-01-28'),
(10, 10, 10, 'J1010', '2026-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `LecturerID` int(11) NOT NULL,
  `LecturerName` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`LecturerID`, `LecturerName`, `Email`, `Phone`, `DepartmentID`) VALUES
(1, 'Dr. Otieno', 'otieno@college.ac.ke', '0711111111', 1),
(2, 'Dr. Wanjiku', 'wanjiku@college.ac.ke', '0722222222', 2),
(3, 'Mr. Kamau', 'kamau@college.ac.ke', '0733333333', 3),
(4, 'John Kamau', 'john.kamau@studentservices.ac.ke', '0712345678', 1),
(5, 'Grace Wanjiku', 'grace.wanjiku@studentservices.ac.ke', '0723456789', 2),
(6, 'Peter Otieno', 'peter.otieno@studentservices.ac.ke', '0734567890', 3),
(7, 'Faith Njeri', 'faith.njeri@studentservices.ac.ke', '0745678901', 4),
(8, 'Samuel Kariuki', 'samuel.kariuki@studentservices.ac.ke', '0756789012', 5),
(9, 'Ruth Chebet', 'ruth.chebet@studentservices.ac.ke', '0767890123', 6),
(10, 'Kevin Mutiso', 'kevin.mutiso@studentservices.ac.ke', '0778901234', 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lecturer_view`
-- (See below for the actual view)
--
CREATE TABLE `lecturer_view` (
`LecturerName` varchar(100)
,`SubjectName` varchar(100)
,`HoursPerTerm` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `ModuleID` int(11) NOT NULL,
  `ModuleName` varchar(100) NOT NULL,
  `CreditHours` int(11) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`ModuleID`, `ModuleName`, `CreditHours`, `CourseID`) VALUES
(1, 'Database Management Systems', 3, 1),
(2, 'Programming Fundamentals', 4, 1),
(3, 'Business Communication', 3, 2),
(4, 'Information Systems', 3, 3),
(5, 'Database Management Systems', 3, 1),
(6, 'Computer Networks', 3, 1),
(7, 'Web Development', 4, 2),
(8, 'Software Engineering', 4, 2),
(9, 'Financial Accounting', 3, 3),
(10, 'Operating Systems', 4, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `registrar_view`
-- (See below for the actual view)
--
CREATE TABLE `registrar_view` (
`StudentID` int(11)
,`FirstName` varchar(50)
,`LastName` varchar(50)
,`Class` varchar(50)
,`EnrollmentStatus` varchar(30)
,`DepartmentID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `EnrollmentStatus` varchar(30) DEFAULT 'In Session',
  `FeeBalance` decimal(10,2) DEFAULT 0.00
) ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FirstName`, `LastName`, `Gender`, `DateOfBirth`, `Phone`, `Email`, `DepartmentID`, `Address`, `Class`, `EnrollmentStatus`, `FeeBalance`) VALUES
(1, 'John', 'Mwangi', 'Male', '2003-05-12', '0700000000', 'updated.email@studentservices.ac.ke', 1, NULL, 'CS L6A', 'On Attachment', 15000.00),
(2, 'Mary', 'Wanjiru', 'Female', '2002-08-20', '0723456789', 'mary.wanjiru@gmail.com', 2, NULL, 'CS L6A', 'In Session', 8000.00),
(3, 'Kevin', 'Otieno', 'Male', '2004-01-15', '0734567890', 'kevin.otieno@gmail.com', 3, NULL, 'CS L6B', 'In Session', 12000.00),
(4, 'Brian', 'Mutiso', 'Male', '2003-05-12', '0712345678', 'brian.mutiso@studentservices.ac.ke', 1, 'Nairobi', 'CS L6B', 'In Session', 5000.00),
(5, 'Faith', 'Wanjiku', 'Female', '2002-09-18', '0723456789', 'faith.wanjiku@studentservices.ac.ke', 2, 'Nakuru', 'CS L6C', 'In Session', 20000.00),
(6, 'Kevin', 'Otieno', 'Male', '2004-01-22', '0734567890', 'kevin.otieno@studentservices.ac.ke', 3, 'Kisumu', 'CS L6C', 'In Session', 3000.00),
(7, 'Mercy', 'Chebet', 'Female', '2003-07-10', '0745678901', 'mercy.chebet@studentservices.ac.ke', 4, 'Eldoret', 'CS L6A', 'In Session', 9000.00),
(8, 'Samuel', 'Kariuki', 'Male', '2002-11-30', '0756789012', 'samuel.kariuki@studentservices.ac.ke', 5, 'Nyeri', 'CS L6B', 'In Session', 17000.00),
(9, 'Ruth', 'Njeri', 'Female', '2003-03-15', '0767890123', 'ruth.njeri@studentservices.ac.ke', 6, 'Thika', 'CS L6C', 'In Session', 6000.00),
(10, 'Dennis', 'Mwangi', 'Male', '2004-08-25', '0778901234', 'dennis.mwangi@studentservices.ac.ke', 7, 'Machakos', 'CS L6A', 'In Session', 11000.00);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `LecturerID` int(11) DEFAULT NULL,
  `ModuleID` int(11) DEFAULT NULL,
  `HoursPerTerm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `LecturerID`, `ModuleID`, `HoursPerTerm`) VALUES
(1, 'Programming Fundamentals', 1, 1, 45),
(2, 'Database Systems', 2, 2, 40),
(3, 'Computer Networks', 3, 3, 42),
(4, 'Web Development', 4, 4, 38),
(5, 'Software Engineering', 5, 5, 40),
(6, 'Operating Systems', 6, 6, 44),
(7, 'Data Structures', 7, 7, 36),
(8, 'Accounting Principles', 8, 8, 32),
(9, 'Engineering Mathematics', 9, 9, 48),
(10, 'Hospitality Management', 10, 10, 30);

-- --------------------------------------------------------

--
-- Stand-in structure for view `workload_view`
-- (See below for the actual view)
--
CREATE TABLE `workload_view` (
`LecturerName` varchar(100)
,`TotalHours` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `accounts_view`
--
DROP TABLE IF EXISTS `accounts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `accounts_view`  AS SELECT `students`.`StudentID` AS `StudentID`, `students`.`FirstName` AS `FirstName`, `students`.`LastName` AS `LastName`, `students`.`FeeBalance` AS `FeeBalance` FROM `students` ;

-- --------------------------------------------------------

--
-- Structure for view `dean_view`
--
DROP TABLE IF EXISTS `dean_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dean_view`  AS SELECT `c`.`CourseName` AS `CourseName`, count(`e`.`StudentID`) AS `TotalStudents` FROM (`courses` `c` join `enrollment` `e` on(`c`.`CourseID` = `e`.`CourseID`)) GROUP BY `c`.`CourseName` ;

-- --------------------------------------------------------

--
-- Structure for view `exam_performance_view`
--
DROP TABLE IF EXISTS `exam_performance_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exam_performance_view`  AS SELECT `s`.`StudentID` AS `StudentID`, `s`.`FirstName` AS `FirstName`, `s`.`LastName` AS `LastName`, `a`.`AssessmentType` AS `AssessmentType`, `a`.`Marks` AS `Marks`, `a`.`Grade` AS `Grade`, CASE WHEN `a`.`Grade` = 'D' THEN 'Supplementary Required' ELSE 'Passed' END AS `SupplementaryStatus` FROM (`students` `s` join `assessments` `a` on(`s`.`StudentID` = `a`.`StudentID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `hod_view`
--
DROP TABLE IF EXISTS `hod_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hod_view`  AS SELECT `s`.`StudentID` AS `StudentID`, `s`.`FirstName` AS `FirstName`, `s`.`LastName` AS `LastName`, `d`.`DepartmentName` AS `DepartmentName` FROM (`students` `s` join `departments` `d` on(`s`.`DepartmentID` = `d`.`DepartmentID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `lecturer_view`
--
DROP TABLE IF EXISTS `lecturer_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lecturer_view`  AS SELECT `l`.`LecturerName` AS `LecturerName`, `sub`.`SubjectName` AS `SubjectName`, `sub`.`HoursPerTerm` AS `HoursPerTerm` FROM (`lecturers` `l` join `subjects` `sub` on(`l`.`LecturerID` = `sub`.`LecturerID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `registrar_view`
--
DROP TABLE IF EXISTS `registrar_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `registrar_view`  AS SELECT `students`.`StudentID` AS `StudentID`, `students`.`FirstName` AS `FirstName`, `students`.`LastName` AS `LastName`, `students`.`Class` AS `Class`, `students`.`EnrollmentStatus` AS `EnrollmentStatus`, `students`.`DepartmentID` AS `DepartmentID` FROM `students` ;

-- --------------------------------------------------------

--
-- Structure for view `workload_view`
--
DROP TABLE IF EXISTS `workload_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `workload_view`  AS SELECT `l`.`LecturerName` AS `LecturerName`, sum(`sub`.`HoursPerTerm`) AS `TotalHours` FROM (`lecturers` `l` join `subjects` `sub` on(`l`.`LecturerID` = `sub`.`LecturerID`)) GROUP BY `l`.`LecturerName` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`AssessmentID`),
  ADD KEY `fk_assessment_student` (`StudentID`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`AttachmentID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`ClubID`);

--
-- Indexes for table `club_members`
--
ALTER TABLE `club_members`
  ADD PRIMARY KEY (`MemberID`),
  ADD KEY `fk_member_student` (`StudentID`),
  ADD KEY `fk_member_club` (`ClubID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `fk_course_department` (`DepartmentID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`EnrollmentID`),
  ADD KEY `fk_enrollment_student` (`StudentID`),
  ADD KEY `fk_enrollment_course` (`CourseID`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`HostelID`);

--
-- Indexes for table `hostel_allocation`
--
ALTER TABLE `hostel_allocation`
  ADD PRIMARY KEY (`AllocationID`),
  ADD KEY `fk_allocation_student` (`StudentID`),
  ADD KEY `fk_allocation_hostel` (`HostelID`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`LecturerID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ModuleID`),
  ADD KEY `fk_module_course` (`CourseID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `fk_student_department` (`DepartmentID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`),
  ADD KEY `LecturerID` (`LecturerID`),
  ADD KEY `ModuleID` (`ModuleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `AssessmentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `ClubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `club_members`
--
ALTER TABLE `club_members`
  MODIFY `MemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `EnrollmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `HostelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hostel_allocation`
--
ALTER TABLE `hostel_allocation`
  MODIFY `AllocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `LecturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `ModuleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `fk_assessment_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Constraints for table `club_members`
--
ALTER TABLE `club_members`
  ADD CONSTRAINT `club_members_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `club_members_ibfk_2` FOREIGN KEY (`ClubID`) REFERENCES `clubs` (`ClubID`),
  ADD CONSTRAINT `fk_member_club` FOREIGN KEY (`ClubID`) REFERENCES `clubs` (`ClubID`),
  ADD CONSTRAINT `fk_member_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `fk_course_department` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `fk_enrollment_course` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`);

--
-- Constraints for table `hostel_allocation`
--
ALTER TABLE `hostel_allocation`
  ADD CONSTRAINT `fk_allocation_hostel` FOREIGN KEY (`HostelID`) REFERENCES `hostels` (`HostelID`),
  ADD CONSTRAINT `fk_allocation_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `hostel_allocation_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `hostel_allocation_ibfk_2` FOREIGN KEY (`HostelID`) REFERENCES `hostels` (`HostelID`);

--
-- Constraints for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD CONSTRAINT `lecturers_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `fk_module_course` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_student_department` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`LecturerID`) REFERENCES `lecturers` (`LecturerID`),
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`ModuleID`) REFERENCES `modules` (`ModuleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
