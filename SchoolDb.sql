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
('хімія'),
('українська література'),
('математика'),
('фізичне виховання'),
('українська мова'),
('англійська мова'),
('історія україни'),
('інформатика'),
('трудове навчання'),
('музичне мистецтво'),
('фізика');

INSERT INTO Teachers
(LName,FName,MName)
VALUES
('Притаманний', 'Олег','Владиславович'),
('Шевченко', 'Владислав','Олегович'),
('Сторожук', 'Надія','Вікторівна'),
('Бойко', 'Оксана','Олександрівна'),
('Романовський', 'Ростислав','Данилович'),
('Богданович', 'Андрій','Олегович'),
('Стасенко', 'Андрій','Дмитрович'),
('Вишняк', 'Олександр','Сергійович'),
('Бондарчук', 'Дмитро','Вадимович'),
('Слободянюк', 'Вадим','Анатолійович'),
('Козолій', 'Ірина','Андріївна');


INSERT INTO TeatcherAndLessons
(TeacherID,LessonName)
VALUES
(1, 'хімія'),
(2, 'українська література'),
(3, 'математика'),
(4, 'фізичне виховання'),
(5, 'українська мова'),
(6, 'англійська мова'),
(7, 'історія україни'),
(8, 'інформатика'),
(9, 'трудове навчання'),
(10, 'музичне мистецтво'),
(11, 'фізика');

INSERT INTO Students
(LName,FName, [Address])
VALUES
('Стажко', 'Роман', 'вул.Героїв України 21 буд.9 кв.12'),
('Кривчун', 'Владислав', 'вул.Слави буд.12 кв.31 '),
('Боліла', 'Катерина', 'вул. Антоновича буд.102 кв.46'),
('Юрченко', 'Андрій', 'вул. Липська буд.6 кв.61 '),
('Ткачук', 'Марія', 'вул. Богдана Хмельницького буд.85 кв.35 '),
('Черниш', 'Богдан', 'вул. Лесі Українки буд.23 кв.76'),
('Юдін', 'Гліб', 'вул. Олеся Гончара буд.19 кв.67'),
('Костюченко', 'Назарій', 'вул. Магістральна буд.108 кв.80'),
('Колісов', 'Антон', 'вул. Чернігівська буд.205 кв.91'),
('Байскова', 'Ліна', 'вул. Сонячна буд.39 кв.60'),
('Жовтенко', 'Анжела', 'вул. Зоряна буд.43 кв.61');

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
