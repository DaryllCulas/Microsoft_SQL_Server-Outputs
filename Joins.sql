CREATE DATABASE sample;


CREATE TABLE students(
     studentID INT IDENTITY(2023001,1) PRIMARY KEY,
     studentName VARCHAR(255),
     age INT,
     gender VARCHAR(255),
);

INSERT INTO students (studentName, age, gender)
VALUES ('John', 18, 'Male'),
       ('Emily', 19, 'Female'),
       ('Michael', 20, 'Male'),
       ('Jessica', 18, 'Female'),
       ('William', 19, 'Male');

SELECT * FROM students;

/*****************************/


CREATE TABLE Grades (
    CourseID INT IDENTITY(12,1) PRIMARY KEY,
    studentID INT,
    Course VARCHAR(255),
    Grade VARCHAR(2),
    FOREIGN KEY (studentID) REFERENCES students(studentID)
);

INSERT INTO Grades (studentID, Course, Grade)
VALUES (2023001, 'Math', '85'),
       (2023002, 'Science', '92'),
       (2023003, 'English', '78'),
       (2023004, 'History', '89'),
       (2023005, 'TVL', '95');


SELECT * FROM Grades;


SELECT students.studentID, students.studentName, Grades.CourseID, Grades.Course, Grades.Grade
FROM students
INNER JOIN Grades ON students.studentID = Grades.studentID;

SELECT students.studentID, students.studentName, Grades.CourseID, Grades.Course, Grades.Grade
FROM students
LEFT JOIN Grades ON students.studentID = Grades.studentID;


SELECT students.studentID, students.studentName, Grades.CourseID, Grades.Course, Grades.Grade
FROM students
RIGHT JOIN Grades ON students.studentID = Grades.studentID;


SELECT students.studentID, students.studentName, Grades.CourseID, Grades.Course, Grades.Grade
FROM students
FULL OUTER JOIN Grades ON students.studentID = Grades.studentID;





DELETE FROM students;
DROP TABLE IF EXISTS students;



DELETE FROM Grades;
DROP TABLE IF EXISTS Grades;