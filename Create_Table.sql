CREATE DATABASE mydatabase;
USE mydatabase;


-- 학과테이블 생성
-- 학과와 학생은 1:다 관계, 학과는 많은 학생을 가질 수 있다, 학생은 한 학과에 소속된다.
-- 학과코드, 학과명
CREATE TABLE DEPARTMENTS(
    DepartmentID int PRIMARY KEY,
    DepartmentName varchar(255) NOT NULL
);

-- 학생테이블 생성. 학과테이블과 1:다 관계설정
-- 학번, 성명, 키, 학과코드
CREATE TABLE Students(
    StudentID int PRIMARY KEY,
    StudentName varchar(255) NOT NULL, 
    Height DECIMAL(5,2),
    DepartmentID int,
    FOREIGN KEY(DepartmentID) REFERENCES DEPARTMENTS(DepartmentID) 
);

-- 교수테이블 생성, 학과테이블과 1:다 관계설정
-- 학과와 교수는 1:다 관계 학과는 많은 교수를 가질 수 있다, 교수는 한 학과에 소속된다
-- 교수코드, 교수명, 학과코드
CREATE TABLE Professors(
    ProfessorID int PRIMARY KEY, 
    ProfessorName varchar(255) NOT NULL, 
    DepartmentID int,
    FOREIGN KEY(DepartmentID) REFERENCES DEPARTMENTS(DepartmentID)
);

-- 개설과목테이블 생성, 교수테이블과 1:다 관계설정
-- 개설과목은 1:다 관계, 교수는 많은 과목을 가르칠 수 있다, 과목은 강의하는 교수 한명이 지정된다.
-- 과목코드, 과목명, 교수코드, 시작일, 종료일
CREATE TABLE Courses(
    CourseID int PRIMARY KEY,
    CourseName varchar(255) NOT NULL, 
    ProfessorID int,
    CourseStart date,
    CourseEnd date,
    FOREIGN KEY(ProfessorID) REFERENCES Professors(ProfessorID)
);

-- 과목테이블 생성
CREATE TABLE Objects(
    ObjectID int PRIMARY KEY, 
    ObjectName varchar(255) NOT NULL 
);

-- 수강과목테이블 생성, 학생 테이블과 과목 테이블을 다:다 관계설정 (join 대신 테이블 생성)
-- 학생은 다:다 관계, 과목은 수강하는 많은 학생을 가진다, 학생은 많은 과목을 수강할 수 있다.
-- 학번, 과목코드
CREATE TABLE Enrollments(
    StudentID int, 
    ObjectID int, 
    EnrollmentDate date,
    PRIMARY KEY (StudentID, ObjectID), 
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (ObjectID) REFERENCES Objects(ObjectID) 
);



    
    
    
    
    

    
    
    
