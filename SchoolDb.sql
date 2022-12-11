USE SchoolDb
GO
CREATE TABLE Teachers
(
TeacherID int IDENTITY NOT NULL PRIMARY KEY,
LName varchar(25) NOT NULL,
FName varchar(25) NOT NULL,
MName varchar(25) NOT NULL,
)
GO

CREATE TABLE Lessons
(
LessonID int IDENTITY NOT NULL,
LessonName varchar(25) NOT NULL PRIMARY KEY,
)
GO

CREATE TABLE TeatcherAndLessons
(
TeacherID int NOT NULL FOREIGN KEY REFERENCES Teachers(TeacherID) ON DELETE CASCADE ON UPDATE CASCADE,
LessonName varchar(25) NOT NULL FOREIGN KEY REFERENCES Lessons(LessonName) ON DELETE CASCADE ON UPDATE CASCADE,
)
GO

CREATE TABLE Students
(
StudentID int IDENTITY NOT NULL PRIMARY KEY,
LName varchar(25) NOT NULL,
FName varchar(25) NOT NULL,
[Address] varchar(50) NOT NULL,
)
GO

CREATE TABLE Classes
(
ID int IDENTITY NOT NULL,
ClassNumber int NOT NULL PRIMARY KEY,
)
GO

CREATE TABLE StudentsForConcreteClasses
(
StudentID int NOT NULL FOREIGN KEY REFERENCES Students(StudentID) ON DELETE CASCADE ON UPDATE CASCADE,
ClassNumber int NOT NULL FOREIGN KEY REFERENCES Classes(ClassNumber) ON DELETE CASCADE ON UPDATE CASCADE,
)
GO

CREATE TABLE ClassroomTeachers
(
ClassNumber int NOT NULL FOREIGN KEY REFERENCES Classes(ClassNumber) ON DELETE CASCADE ON UPDATE CASCADE,
TeacherID int NOT NULL FOREIGN KEY REFERENCES Teachers(TeacherID) ON DELETE CASCADE ON UPDATE CASCADE,
)
GO

INSERT INTO Lessons
(LessonName)
VALUES
('����'),
('��������� ���������'),
('����������'),
('������� ���������'),
('��������� ����'),
('��������� ����'),
('������ ������'),
('�����������'),
('������� ��������'),
('������� ���������'),
('������');

INSERT INTO Teachers
(LName,FName,MName)
VALUES
('�����������', '����','�������������'),
('��������', '���������','��������'),
('��������', '����','³�������'),
('�����', '������','������������'),
('������������', '���������','���������'),
('����������', '�����','��������'),
('��������', '�����','���������'),
('������', '���������','���������'),
('���������', '������','���������'),
('����������', '�����','�����������'),
('������', '�����','�������');


INSERT INTO TeatcherAndLessons
(TeacherID,LessonName)
VALUES
(1, '����'),
(2, '��������� ���������'),
(3, '����������'),
(4, '������� ���������'),
(5, '��������� ����'),
(6, '��������� ����'),
(7, '������ ������'),
(8, '�����������'),
(9, '������� ��������'),
(10, '������� ���������'),
(11, '������');

INSERT INTO Students
(LName,FName, [Address])
VALUES
('������', '�����', '���.����� ������ 21 ���.9 ��.12'),
('�������', '���������', '���.����� ���.12 ��.31 '),
('�����', '��������', '���. ���������� ���.102 ��.46'),
('�������', '�����', '���. ������� ���.6 ��.61 '),
('������', '����', '���. ������� ������������� ���.85 ��.35 '),
('������', '������', '���. ��� ������� ���.23 ��.76'),
('���', '���', '���. ����� ������� ���.19 ��.67'),
('����������', '������', '���. ����������� ���.108 ��.80'),
('������', '�����', '���. ���������� ���.205 ��.91'),
('��������', '˳��', '���. ������� ���.39 ��.60'),
('��������', '������', '���. ������ ���.43 ��.61');

INSERT INTO Classes
(ClassNumber)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11);

INSERT INTO StudentsForConcreteClasses
(StudentID, ClassNumber)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

INSERT INTO ClassroomTeachers
(ClassNumber, TeacherID)
VALUES
(1, 3),
(2, 5),
(3, 4),
(4, 1),
(5, 2),
(6, 6),
(7, 8),
(8, 9),
(9, 7),
(10, 11),
(11, 10);


SELECT * FROM Teachers
SELECT * FROM Students
SELECT * FROM Lessons
SELECT * FROM Classes
SELECT * FROM TeatcherAndLessons
SELECT * FROM StudentsForConcreteClasses
SELECT * FROM ClassroomTeachers

	DROP TABLE TeatcherAndLessons
	DROP TABLE Teachers
	DROP TABLE Lessons
	DROP TABLE Students
	DROP TABLE Classes
	DROP TABLE StudentsForConcreteClasses
	DROP TABLE ClassroomTeachers
