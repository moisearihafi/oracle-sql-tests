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






