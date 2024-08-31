create database vikrantsoft

use vikrantsoft

Create table Student
(
StudentID bigint primary key identity(1,1),
FullName nvarchar(50),
DateOfBirth Date,
Gender nvarchar(15),
Address nvarchar(100),
ContactNumber nvarchar(12),
Email nvarchar(50),
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate())
)
ALTER TABLE Student ADD Photo nvarchar(max);


Create table Class
(
ClassID bigint primary key identity(1,1),
ClassName Nvarchar(50),
TeacherID bigint,
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate())
)


Create table Teachers
(
TeacherID bigint primary key identity(1,1),
FullName nvarchar(50),
SubjectID bigint,
ContactNumber nvarchar(12),
Email nvarchar(50),
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate())

)
ALTER TABLE Teachers ADD RoleType bigint;
ALTER TABLE Teachers ADD Photo nvarchar(max);


Create Table Subjects
(
SubjectID bigint primary key identity(1,1),
SubjectName nvarchar(50),
Description nvarchar(500),
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate())
)


Create table Enrollment
(
EnrollmentID bigint primary key identity(1,1),
StudentID bigint,
ClassID bigint,
EnrollmentDate Datetime Default(GetDate()),
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate())
)

Create table Attendance
(
AttendanceID bigint primary key identity(1,1),
StudentID bigint,
ClassID bigint,
Date datetime default(GetDate()),
Status bit default 0,
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate()),
)

Create Table Grade
(
GradeID bigint primary key identity(1,1),
StudentID bigint,
SubjectID bigint,
ClassID bigint,
Marks int,
IsDeleted bit default 0,
CreatedOn Datetime Default(GetDate()),
)
