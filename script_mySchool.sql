-- Create the database
CREATE DATABASE school;
GO

-- Use the created database
USE school;
GO

-- Create Students table
CREATE TABLE Students (
    student_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    date_of_birth DATE,
    gender CHAR(6) CHECK (gender IN ('Male', 'Female')),
    email NVARCHAR(100)
);
GO

-- Create Courses table
CREATE TABLE Courses (
    course_id INT IDENTITY(1,1) PRIMARY KEY,
    course_name NVARCHAR(100),
    course_description NVARCHAR(MAX)
);
GO

-- Create Enrollments table (relationship table)
CREATE TABLE Enrollments (
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
GO

-- Insert data into Students table
INSERT INTO Students (first_name, last_name, date_of_birth, gender, email) VALUES
('John', 'Doe', '2000-01-15', 'Male', 'johndoe@example.com'),
('Jane', 'Smith', '1999-05-22', 'Female', 'janesmith@example.com'),
('Michael', 'Brown', '2001-08-12', 'Male', 'michaelbrown@example.com'),
('Emily', 'Davis', '2000-02-18', 'Female', 'emilydavis@example.com'),
('Daniel', 'Johnson', '2002-03-30', 'Male', 'danieljohnson@example.com'),
('Sophia', 'Wilson', '1998-11-25', 'Female', 'sophiawilson@example.com'),
('James', 'Martinez', '2001-07-10', 'Male', 'jamesmartinez@example.com'),
('Emma', 'Garcia', '1999-12-01', 'Female', 'emmagarcia@example.com'),
('Ethan', 'Miller', '2000-06-19', 'Male', 'ethanmiller@example.com'),
('Olivia', 'Anderson', '2001-09-05', 'Female', 'oliviaanderson@example.com');
GO

-- Insert data into Courses table
INSERT INTO Courses (course_name, course_description) VALUES
('Mathematics', 'An introduction to algebra, calculus, and geometry.'),
('Physics', 'Fundamentals of mechanics, optics, and thermodynamics.'),
('Chemistry', 'Study of matter, chemical reactions, and the periodic table.'),
('Biology', 'Introduction to cell biology, genetics, and ecosystems.'),
('Computer Science', 'Basics of programming, data structures, and algorithms.'),
('History', 'A study of ancient civilizations, wars, and revolutions.'),
('English Literature', 'Analysis of classic and contemporary literary works.'),
('Economics', 'Principles of microeconomics and macroeconomics.'),
('Art', 'Exploration of painting, sculpture, and other visual arts.'),
('Philosophy', 'Examination of ethical theories, logic, and metaphysics.');
GO

-- Insert data into Enrollments table
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-09-01'),  -- John Doe enrolled in Mathematics
(2, 2, '2023-09-02'),  -- Jane Smith enrolled in Physics
(3, 3, '2023-09-03'),  -- Michael Brown enrolled in Chemistry
(4, 4, '2023-09-04'),  -- Emily Davis enrolled in Biology
(5, 5, '2023-09-05'),  -- Daniel Johnson enrolled in Computer Science
(6, 6, '2023-09-06'),  -- Sophia Wilson enrolled in History
(7, 7, '2023-09-07'),  -- James Martinez enrolled in English Literature
(8, 8, '2023-09-08'),  -- Emma Garcia enrolled in Economics
(9, 9, '2023-09-09'),  -- Ethan Miller enrolled in Art
(10, 10, '2023-09-10'); -- Olivia Anderson enrolled in Philosophy
GO
