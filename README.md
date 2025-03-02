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

##SCREENSHOT of TEACHERS TABLE

![Student](https://github.com/user-attachments/assets/255fc2d2-3545-4e18-a142-7aed603acbc0)


##SCREENSHOT of SUBJECTS TABLE

![Student](https://github.com/user-attachments/assets/6ce5487d-69f2-4e76-962e-cc25e0b44ac3)


##SCREENSHOT of STUDENTS TABLE

![Student](https://github.com/user-attachments/assets/b4f07e69-b796-4591-b70b-a5cc784e440e)



##SCREENSHOT of ENROLLMENTS

![Student](https://github.com/user-attachments/assets/98b62290-6f9f-4a1a-8f66-888ab1439ab8)


##RELATIONSHIPS

![Relationships](https://github.com/user-attachments/assets/669dcddc-8508-49a5-a329-c141affdc55d)


##SELECTING (JOINS)

![select](https://github.com/user-attachments/assets/e7f823ee-3e2b-49b7-ac6a-4098b6dd335d)

##UPDATE THE RECORDS

![update](https://github.com/user-attachments/assets/6c6ff853-7fd8-4dff-a471-35cba35b3589)

##INSERTING RECORDS

![insert](https://github.com/user-attachments/assets/1b96bfeb-1c3c-462f-81d5-8cc2eb57f880)


##DELETING A RECORD

![delete](https://github.com/user-attachments/assets/10ce7aac-f0a1-4737-b7b8-792361de94f7)







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


##INSERTING_RECORDS

---INSERTING teachers table records

INSERT INTO TEACHERS (TEACHER_ID,TEACHER_NAME) VALUES(1,'Mr.Anderson');
INSERT INTO TEACHERS (TEACHER_ID,TEACHER_NAME) VALUES(2,'Ms.Johnson');
INSERT INTO TEACHERS (TEACHER_ID,TEACHER_NAME) VALUES(3,'Mrs.Williams');
INSERT INTO TEACHERS (TEACHER_ID,TEACHER_NAME) VALUES(4,'Mr.Moise');

COMMIT;

--inserting subjects table records..
INSERT INTO SUBJECTS (SUBJECT_ID,SUBJECT_NAME,TEACHER_ID) VALUES(101,'Math',1);
INSERT INTO SUBJECTS (SUBJECT_ID,SUBJECT_NAME,TEACHER_ID) VALUES(102,'English',2);
INSERT INTO SUBJECTS (SUBJECT_ID,SUBJECT_NAME,TEACHER_ID) VALUES(103,'Science',1);
INSERT INTO SUBJECTS (SUBJECT_ID,SUBJECT_NAME,TEACHER_ID) VALUES(104,'History',3);


COMMIT;
--inserting students table records

INSERT INTO STUDENTS (STUDENT_ID,STUDENT_NAME) VALUES(1,'John');
INSERT INTO STUDENTS (STUDENT_ID,STUDENT_NAME) VALUES(2,'Emilly');
INSERT INTO STUDENTS (STUDENT_ID,STUDENT_NAME) VALUES(3,'Michael');

COMMIT;
--inserting Enrollments table record
INSERT INTO ENROLLMENTS (STUDENT_ID,SUBJECT_ID,ENROLL_DATE) VALUES(1,102,21-SEPT-24);
INSERT INTO ENROLLMENTS(STUDENT_ID,SUBJECT_ID,ENROLL_DATE) VALUES(2,103,22-SEPT-24);
INSERT INTO ENROLLMENTS(STUDENT_ID,SUBJECT_ID,ENROLL_DATE) VALUES(2,104,23-SEPT-24);
INSERT INTO ENROLLMENTS(STUDENT_ID,SUBJECT_ID,ENROLL_DATE) VALUES(3,101,22-SEPT-24);

COMMIT;






 
