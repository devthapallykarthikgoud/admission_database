#SQL Challenge 1 Admission Management System
#PART 1 — DDL TASKS (Structure Creation)
#Task 1  Create Database
create database admission_db2;
use admission_db2;
#Task 2  Create Table: Departments
create table departments(
department_id int,
department_name varchar(30)
);
insert into departments values(101,'Computer Science'),
(102,'Data Science'),
(103,'Mechanical Engineering'),
(104,'Civil Engineering'),
(105,'Electronics');

#Task 3 — Create Table: Students

create table students(
student_id int,
student_name varchar(30),
email varchar(100),
phone varchar(50),
gender varchar(30),
department_id int,
foreign key(department_id) references departments(department_id)
);
#adding primary key to dept_id
alter table departments
add primary key(department_id);

alter table students
add admission_date date;
#Task 5 — Insert Data into Students
INSERT INTO students (
    student_id, student_name, email, phone, gender, department_id, admission_date
) VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Male', 101, '2024-01-15'),
(2, 'Priya Verma', 'priya@gmail.com', '9123456780', 'Female', 102, '2024-02-01'),
(3, 'Samuel D''Souza', 'samuel@gmail.com', '9898989898', 'Male', 103, '2024-01-10'),
(4, 'Ayesha Khan', 'ayesha@yahoo.com', '9786543210', 'Female', 101, '2024-03-12'),
(5, 'Sneha Reddy', 'sneha@gmail.com', '9000012345', 'Female', 105, '2024-03-01'),
(6, 'Ajay Singh', 'ajay@gmail.com', '9998877665', 'Male', 102, '2024-02-10'),
(7, 'Sai Teja', 'saiteja@gmail.com', '9700001111', 'Male', 104, '2024-02-25'),
(8, 'John Peter', 'john@gmail.com', '8800223344', 'Male', 103, '2024-01-22'),
(9, 'Anjali Mehra', 'anjali@gmail.com', '7894561230', 'Female', 101, '2024-03-14'),
(10, 'Deepika Rao', 'deepika@gmail.com', '8123456700', 'Female', 105, '2024-03-05');

select * from students;
-- PART 3 — DML TASKS (Update, Delete, Select)

-- Task 6 — UPDATE Operation
-- Update a student’s phone number.
#rahul Sharma's phone should be updated to 9999999999.
set sql_safe_updates=0;
update students
set phone='9999999999'
where student_name='rahul sharma';

#Task 7  UPDATE Operation
-- Update a student’s department.
-- Example Scenario:
--  Change Ayesha Khan's department from 101 → 102.
update students
set department_id = 102 
where student_name='ayesha khan';

#Task 8 — DELETE Operation
#Delete a student record using student_id.
-- Example Scenario:
-- Delete the student with student_id = 3.
delete from students
where student_id=3;

#Task 9 — DELETE Operation
#Delete a department record.
-- Example Scenario:
--  Delete the department with department_id = 105.
# remove all students in department 105
delete from students
where department_id=105;
#delete department_id 105
delete from departments
where department_id=105;

#Task 10 — SELECT Operation
-- Retrieve all student records.
select * from students;











