show databases;
CREATE DATABASE MUSKAN;
USE MUSKAN;

-- Create Students Table
CREATE TABLE Students (
    RegistrationNumber INT PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    FacultyID INT,
    DepartmentID INT,
    ProjectID INT,
    FOREIGN KEY (FacultyID) REFERENCES Faculties(FacultyID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create Faculties Table
CREATE TABLE Faculties (
    FacultyID INT PRIMARY KEY,
    Name VARCHAR(100),
    Dean VARCHAR(100),
    Address VARCHAR(255),
    Extension INT,
    SizeOfInstructors INT,
    SizeOfStudents INT,
    Supervisor INT
);

-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Head VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    Title VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    SupervisorID INT,
    FOREIGN KEY (SupervisorID) REFERENCES Faculties(Supervisor)
);

-- Create Courses Table
CREATE TABLE Courses (
    CourseID VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(100),
    CreditHours INT,
    Grade CHAR(1),
    GradePoints INT,
    Status VARCHAR(20),
    Semester INT
);

-- Inserting Data into Departments Table
INSERT INTO Departments (DepartmentID, Name, Head, PhoneNumber)
VALUES (1, 'Computer Science and Engineering', 'Dr. Iftikhar', '2522'),
       (2, 'Materials Engineering', 'Dr. Jens Lagergren', NULL);

-- Inserting Data into Faculties Table
INSERT INTO Faculties (FacultyID, Name, Dean, Address, Extension, SizeOfInstructors, SizeOfStudents, Supervisor)
VALUES (1, 'Faculty of Computer Science and Engineering', 'Dr. Iftikhar', 'Faculty of Computer Science and Engineering, Block 2, GIK Institute', 2521, 45, 1105,45),
       (2, 'Faculty of Materials and Chemical Engineering', 'Dr. Jens Lagergren', 'Faculty of Materials and Chemical Engineering, Block 4, GIK Institute', 2426, 10, 83,22);

-- Inserting Data into Projects Table
INSERT INTO Projects (ProjectID, Title, StartDate, EndDate, SupervisorID)
VALUES (6, 'Towards Data Science', '2024-01-11', '2025-01-10', NULL),
       (45, 'Environment Sustainability', '2024-02-20', '2025-02-19', 22);

-- Inserting Data into Courses Table
INSERT INTO Courses (CourseID, Title, CreditHours, Grade, GradePoints, Status, Semester)
VALUES ('CH101', 'Applied Chemistry & Environment', 3, 'A', 12, 'Pass', 1),
       ('CS101', 'Computing & Artificial Intelligence', 4, 'A', 16, 'Pass', 1),
       ('HM101', 'Communication Skills', 3, 'A', 12, 'Pass', 1),
       ('MT101', 'Calculus I', 3, 'A', 12, 'Pass', 1),
       ('PH101', 'Applied Physics', 3, 'A', 12, 'Pass', 1),
       ('CH161', 'Occupational Health & Safety', 1, 'A', 4, 'Pass', 1),
       ('CS112', 'Object-oriented Programming & Design', 4, 'B', 12, 'Pass', 2),
       ('ES111', 'Probability & Statistics', 3, 'B', 9, 'Pass', 2),
       ('HM102', 'Critical Thinking & Expository Writing', 3, 'C', 6, 'Pass', 2),
       ('MM101', 'Materials & Nanotechnology', 3, 'D', 3, 'Pass', 2),
       ('MT102', 'Differential Equations & Linear Algebra I', 3, 'A', 12, 'Pass', 2),
       ('CE221', 'Digital Logic Design', 4, 'F', 0, 'Fail', 3),
       ('CS202', 'Information & Communication Technologies', 3, 'F', 0, 'Fail', 3),
       ('CS221', 'Data Structures & Algorithms', 4, 'F', 0, 'Fail', 3),
       ('CS231', 'Discrete Mathematics', 3, 'I', NULL, 'Incomplete', 3),
       ('ES205', 'Advanced Linear Algebra', 3, 'W', NULL, 'Withdrawn', 3);

Drop table Faculties;
Drop table Projects, Courses, Departments, Students;
Show tables;
ALTER TABLE Faculties ADD INDEX idx_supervisor (Supervisor);
SELECT * FROM Students; 
SELECT * FROM Faculties;
SELECT * FROM Projects; 
SELECT * FROM Courses;
SELECT * FROM Departments; 

INSERT INTO STUDENTS (RegistrationNumber, Name, PhoneNumber, Address, FacultyID, departmentID, projectID) Values (2020001,'Asad Irfan', '', 'House 8 Street 16 DHA Phase II Sector A Islamabad Pakistan',1,1,NULL);
INSERT INTO STUDENTS (RegistrationNumber, Name, PhoneNumber, Address, FacultyID, departmentID, projectID) Values (2020002,'Ayesha Khan', '00923345633068', 'Rontgenvagen 5 lgh 1101, 14169, Stockholm Sweden',1,1,45);
INSERT INTO STUDENTS (RegistrationNumber, Name, PhoneNumber, Address, FacultyID, departmentID, projectID) Values (2021001,'Behram Afgan Khan', '0046729086229', '',2,2,6);
UPDATE Departments
SET PhoneNumber = '1234'
WHERE Head = 'Dr.Iftikhar';

SELECT d.Name
FROM Departments d
JOIN Faculties f ON d.Head = f.Dean
WHERE f.SizeOfStudents = 1105;

SELECT s.Name, c.Title, c.Grade, c.Status
FROM Students s
JOIN Courses c ON s.RegistrationNumber = c.RegistrationNumber
WHERE s.Name = 'Asad Irfan';

SELECT s.StudentName, s.RegistrationNumber, c.Title AS CourseTitle, sc.CourseGrade
FROM Students s
JOIN StudentCourses sc ON s.RegistrationNumber = sc.RegistrationNumber
JOIN Courses c ON sc.CourseID = c.CourseID
WHERE sc.Semester = 1;

SELECT AVG(s.StudentCGPA) AS AverageCGPA
FROM Students s
JOIN Faculties f ON s.FacultyID = f.FacultyID
WHERE f.Name = 'Faculty of Computer Science and Engineering';

SELECT 
    f.Name AS FacultyName,
    AVG(s.CGPA) AS AverageCGPA
FROM 
    Students s
JOIN 
    Faculties f ON s.FacultyID = f.FacultyID
GROUP BY 
    f.Name;
SELECT 
    s.Name AS StudentName,
    c.CourseID,
    c.Title,
    c.CreditHours,
    c.Grade,
    c.Status
FROM 
    Students s
JOIN 
    Courses c ON s.RegistrationNumber = c.RegistrationNumber
WHERE 
    s.Name = 'Ayesha Khan'
    AND c.Semester = 1;
    



























SELECT * FROM Students; 
SELECT * FROM Faculties;
SELECT * FROM Projects; 
SELECT * FROM Courses;
SELECT * FROM Departments; 


SELECT s.Name FROM Students s 
JOIN  Faculties f 
ON s.FacultyID=f.FacultyID
WHERE f.NAME='Faculty of Materials and Chemical Engineering';

SELECT p.Title, f.Name FROM Projects p 
JOIN  Faculties f 
ON p.SupervisorID=f.Supervisor;

SELECT s.*
FROM Students s JOIN Faculties f 
ON s.FacultyID=f.FacultyID 
WHERE f.Name='Faculty of Computer Science and Engineering'; 


SELECT Semester, AVG(GradePoints) as Average 
FROM COURSES
GROUP BY Semester;