--
-- File generated with SQLiteStudio v3.4.4 on Sun Oct 13 11:42:31 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: course
CREATE TABLE IF NOT EXISTS course (
    course_id   INTEGER PRIMARY KEY,
    name         TEXT,
    creditPoints INTEGER);
INSERT INTO course (course_id, name, creditPoints) VALUES (101, 'TOáN H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (102, 'V?T Lý', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (103, 'HóA H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (104, 'SINH H?C', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (105, 'KHOA H?C MáY TíNH', 6);
INSERT INTO course (course_id, name, creditPoints) VALUES (106, 'KINH T? H?C', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (107, 'TâM Lý H?C', 4);
INSERT INTO course (course_id, name, creditPoints) VALUES (108, 'K? THU?T', 5);
INSERT INTO course (course_id, name, creditPoints) VALUES (109, 'L?CH S?', 3);
INSERT INTO course (course_id, name, creditPoints) VALUES (110, 'NGôN NG? ANH', 3);

-- Table: employee
CREATE TABLE IF NOT EXISTS "employee" (
    course_id   employee_id PRIMARY KEY,
    name    TEXT,
    surname TEXT,
    jobTitle TEXT
);
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (101, 'Nguy?n', 'Anh', 'Giáo su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (102, 'Tr?n', 'Bình', 'Phó Giáo su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (103, 'Lê', 'Chi?n', 'Gi?ng viên');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (104, 'Ph?m', 'Dung', 'Gi?ng viên chính');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (105, 'Ð?', 'Hoàng', 'Giáo su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (106, 'Vu', 'Kiên', 'Gi?ng viên');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (107, 'Bùi', 'Lan', 'Tr? lý Giáo su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (108, 'Hoàng', 'M?nh', 'Giáo su');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (109, 'Phan', 'Ng?c', 'Gi?ng viên chính');
INSERT INTO employee (course_id, name, surname, jobTitle) VALUES (110, 'Ðinh', 'Phong', 'Phó Giáo su');

-- Table: program
CREATE TABLE IF NOT EXISTS program (
    program_id PRIMARY KEY,
    name TEXT,    
    creditPoints    INTERGER,
    yearCommenced INTERGER
);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (201, 'Chuong trình Toán h?c', 120, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (202, 'Chuong trình V?t lý', 130, 2016);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (203, 'Chuong trình Hóa h?c', 125, 2017);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (204, 'Chuong trình Sinh h?c', 135, 2018);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (205, 'Chuong trình Khoa h?c máy tính', 150, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (206, 'Chuong trình Kinh t? h?c', 120, 2016);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (207, 'Chuong trình Tâm lý h?c', 130, 2017);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (208, 'Chuong trình K? thu?t', 140, 2018);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (209, 'Chuong trình L?ch s?', 125, 2015);
INSERT INTO program (program_id, name, creditPoints, yearCommenced) VALUES (210, 'Chuong trình Ngôn ng? Anh', 120, 2016);

-- Table: student
CREATE TABLE IF NOT EXISTS student (
    student_id   INTEGER PRIMARY KEY,
    name         TEXT,
    surname      TEXT,
    dateOfBirth  TEXT,
    yearEnrolled INTEGER
);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (1, 'Adam', 'Van A', '1999-03-15', 2017);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (2, 'Tr?n', 'Th? B', '2000-11-25', 2018);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (3, 'Lê', 'Minh C', '1998-07-10', 2016);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (4, 'Ph?m', 'Qu?c D', '2001-02-20', 2019);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (6, 'Vu', 'Van F', '2000-09-12', 2018);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (7, 'Bùi', 'Th? G', '1999-04-30', 2017);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (8, 'Hoàng', 'Van H', '1998-06-05', 2016);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (9, 'Phan', 'Th? I', '2001-12-01', 2019);
INSERT INTO student (student_id, name, surname, dateOfBirth, yearEnrolled) VALUES (10, 'Ðinh', 'Van J', '2000-08-14', 2018);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
