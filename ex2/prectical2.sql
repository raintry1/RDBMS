create database prectical1;
use prectical1;

create table student
(
studentid int primary key,
studentname varchar(50),
gender varchar(10),
dob date,
persentage decimal,
email varchar(100) unique,
mobile varchar(10)
);

insert into student (studentid, studentname, gender, dob, persentage, email, mobile) values 
(1, "mogambo", "male", "2026-08-07", 95, "mogambo@mail.com", "9876543210"),
(2, "gabbar", "male", "2026-08-07", 88, "gabbar@mail.com", "9876543211"),
(3, "shakaal", "male", "2026-08-07", 92, "shakaal@mail.com", "9876543212"),
(4, "katiya", "male", "2026-08-07", 85, "katiya@mail.com", "9876543213"),
(5, "crime master gogo", "male", "2026-08-07", 90, "gogo@mail.com", "9876543214"),
(6, "tony stark", "male", "2026-08-07", 99, "tonystark@mail.com", "9876543215"),
(7, "steve rogers", "male", "2026-08-07", 91, "steverogers@mail.com", "9876543216"),
(8, "natasha romanoff", "female", "2026-08-07", 96, "natasha@mail.com", "9876543217"),
(9, "wanda maximoff", "female", "2026-08-07", 98, "wanda@mail.com", "9876543218"),
(10, "thor", "male", "2026-08-07", 89, "thor@mail.com", "9876543219");

select *from student;

create table department
(
deptid int primary key,
deptname varchar(100) not null,
location varchar(100)
);

insert into department (deptid, deptname, location) values 
(101, "computer", "2nd floor"),
(102, "civil", "2nd floor"),
(103, "electrical", "3rd floor"),
(104, "mechanical", "1st floor"),
(105, "chemical", "2nd floor");

select *from department;

create table faculity
(
fid int primary key,
faculityname varchar(100),
designation varchar(100),
salary int,
deptid int,
foreign key(deptid) references department(deptid)
);

insert into faculity (fid, faculityname, designation, salary, deptid) values 
(1, "mr india", "head professor", 50000, 101),
(2, "bruce banner", "senior professor", 45000, 102),
(3, "doctor strange", "professor", 40000, 103),
(4, "nick fury", "dean", 60000, 104),
(5, "peter parker", "assistant professor", 30000, 105);

select *from faculity;

create table cource
(
courceid int primary key,
coursename varchar(100)
);

insert into cource (courceid, coursename) values 
(1, "computer engineering"),
(2, "civil engineering"),
(3, "mechanical engineering"),
(4, "chemical engineering"),
(5, "electrical engineering");

select *from cource;

create table enrollment1
(
enrollid int primary key,
courceid int,
foreign key (courceid) references cource(courceid)
);

insert into enrollment1 (enrollid, courceid) values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

select *from enrollment1;

select *from student;
select *from department;
select *from faculity;
select *from cource;
select *from enrollment1;
