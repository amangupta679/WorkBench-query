show databases;
use prolifics ; 
create table course(course_name text,course_dur int, course_fee double , faculty_name text);
insert into course values("core java",2,2000,"Ajay"),("Adv Java",2,3000,"Miller");

insert into course values("dotnet",2,3000,"aasf"),("py",2,40000,"zebra");
select * from course ; 
create table student(student_id int , student_name text , student_mobile bigint, student_add text
);

-- insert into student values(8001,"babu",568456848,xyz);
insert into student values((8001,"babu",568456848,xyz),(9001,"asdgg",4357345,xysfhz));
create table student_course_registration(stud_id int,course_name text);
insert into student_course_registration values((8001 ,"core java",),(8002,"dotnet"),(8002,"core java"));
select * from student ; 
select * from student_course_registration;

drop table employee;  
create table employee(emp_id int , emp_name text,emp_type varchar(11), salary double , no_hours int , rate_hour double);
desc employee ; 
