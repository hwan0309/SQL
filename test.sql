-- 학과 테이블 생성
CREATE TABLE DEPARTMENTS(
	DepartmentID int PRIMARY KEY,
    DepartmentName varchar(255) NOT NULL
    );
    
-- 학생 테이블 생성 . 학과테이블과 1:다 관계설정 
CREATE TABLE Students(
	StudnetID int PRIMARY KEY,
    StudnetName varchar(255) NOT NULL,
    DepartmentID int,
    FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
    );
    
-- 교수테이블 생성, 학과테이블과 1:다 관계설정
CREATE TABLE Professors(
	ProfessorsID int PRIMARY KEY,
    ProfessorsName varchar(255) NOT NULL,
    DepartmentID int,
    Email varchar(255),
    Phone varchar(20),
    FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID)
    );
    
-- 개설과목 테이블 생성, 교수테이블과 1:다 관계설정
CREATE TABLE Objects(
	ObjectsID int PRIMARY KEY,
    ObjectsName varchar(255) NOT NULL,
    ProfessorsID int,
    FOREIGN KEY(ProfessorsID) REFERENCES Professors(ProfessorsID)
    );
    
