# oracle-sql-tests
School management system 
Our database School management system  School Management System helps teachers focus more on teaching and less on administrative tasks by streamlining attendance, grading, communication, and scheduling processes. It empowers teachers with real-time data and communication tools, improving both classroom management and student engagement.

OUR DATABASE was created in oracle expression 

OUR DATABASE has 4 tables 
>TEACHERS TABLE
>SUBJECTS
>STUDENTS
>ENROLLMENTS

Each has it's attributes and the relationship with other tables.

IN TEACHERS TABLE we have the following attributes :
  teacher_id
  teacher_name 
IN SUBJECTS TABLE we have the following attributes:
    subject_id
    subject_name   
    teacher_id 
IN STUDENTS TABLE we have the following attributes
    student_id 
    student_name
IN ENROLLMENTS TABLE we have the following attributes:
    student_id 
    subject_id 
    enroll_date

    SCRIPTS QUERIES  USED TO CREATE TABLES

    --create teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL,
    
);

##TEACHERS TABLE
--create subjects table
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL
);

 ##STUDENTS TABLE
 -- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,

);
##ENROLLMENS TABLE
- Create enrollments table (many-to-many relationship)
CREATE TABLE enrollments (
    student_id INT,
    subject_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id) ON DELETE CASCADE
);




 
