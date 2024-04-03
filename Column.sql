-- Departments 객체생성
INSERT INTO DEPARTMENTS (DepartmentID, DepartmentName) VALUES
(101,'경영학과');


-- Students 객체생성
INSERT INTO Students (StudentID, StudentName, Height, DepartmentID) VALUES
(1, 'Kim', 181,101),
(2, 'Yoon', 182,101),
(3, 'Lee', 183,101),
(4, 'Si', 184,101);

-- Professors 객체생성
INSERT INTO Professors(ProfessorID, ProfessorName, DepartmentID) VALUES
(01,'janny',101),
(02,'Danny',101),
(03,'Dreak',101),
(04,'Alie',101);


-- Courses 객체생성
INSERT INTO Courses(CourseID, CourseName, ProfessorID,CourseStart,CourseEnd) VALUES
(111,'과학' ,01,'2000-01-01','2000-01-31'),
(112,'경영',02,'2000-01-01','2000-01-31'),
(113,'철학',03,'2000-01-01','2000-01-31'),
(114,'경제',04,'2000-01-01','2000-01-31');

-- Objects 객체생성
INSERT INTO Objects(ObjectID, ObjectName) VALUES
(010,'수학'),
(011,'자바'),
(012,'파이썬'),
(013,'씨퀄');



