# oracle-sql-tests
# School Database System

## Project Description

This project is a simple school database system that manages teachers, subjects, students, and their enrollments. The system organizes the relationships between:
- **Teachers**: who teach subjects.
- **Subjects**: which are assigned to teachers.
- **Students**: who enroll in different subjects.

The relationships are structured as follows:
- One-to-Many relationship between **Teachers** and **Subjects**.
- Many-to-Many relationship between **Students** and **Subjects** using the **Enrollments** table.

## Database Structure

### Tables:

1. **Teachers**: Stores teacher information (e.g., `teacher_id`, `teacher_name`).
2. **Subjects**: Stores subject information (e.g., `subject_id`, `subject_name`, `teacher_id`).
3. **Students**: Stores student information (e.g., `student_id`, `student_name`).
4. **Enrollments**: Links students and subjects, recording enrollment dates (e.g., `student_id`, `subject_id`, `enroll_date`).



## SQL Schema

```sql
-- Create teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_name VARCHAR(50) NOT NULL
);

-- Create subjects table
CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id) ON DELETE SET NULL
);

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);

-- Create enrollments table (many-to-many relationship)
CREATE TABLE enrollments (
    student_id INT,
    subject_id INT,
    enroll_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id) ON DELETE CASCADE,
    PRIMARY KEY (student_id, subject_id)
);


 
