1> CREATE DATABASE university_db;
2> CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
)
3> CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INT NOT NULL DEFAULT 3,
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
);
4> CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL
);
5> CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
6> CREATE TABLE health_records (
    record_id INT PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    blood_group VARCHAR(10)
)
7>
    1> INSERT INTO departments VALUES 
        (1, 'computer science'),
        (2, 'mathematics'),
        (3, 'physics')

    2> INSERT INTO courses VALUES 
        (1, 'database systems', 4, 1),
        (2, 'algorithms', 3, 1),
        (3, 'calculus', 4, 2),
        (4, 'quantum', 5, 3)

    3> INSERT INTO students VALUES 
        (1,'alice'),
        (2, 'bob'),
        (3,'charlie'),
        (4, 'samy'),
        (5, 'eva')

    4> INSERT INTO enrollments VALUES 
        (1, 1, 1),
        (2, 2, 1),
        (3, 3, 2),
        (4, 3, 3),
        (5, 4, 3),
        (6, 4, 4)

    5> INSERT INTO health_records VALUES
        (1, 1, 'A+'),
        (2, 2, 'B+'),
        (3, 3, 'O-'),
        (4, 4, 'AB+'),
        (5, 5, 'A-')
        