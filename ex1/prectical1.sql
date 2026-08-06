create database prectical1;
use prectical1;

create table student
(
studentid int primary key,
studentname varchar(50),
gender varchar(10),
dob date,
persentage decimal,
email varchar(100)unique,
mobile varchar(10)
);

create table department
(
deptid int primary key,
deptname varchar(100) not null,
location varchar(100)
);

create table faculity
(
fid int primary key,
faculityname varchar(100),
designation varchar(100),
salary int ,
deptid int,
foreign key(deptid)
references department(deptid)
);


create table cource
(
courceid int primary key,
coursename varchar(100)
);

create table enrollment1
(
enrollid int primary key,
courceid int,
foreign key (courceid)
references cource(courceid)

);

select *from student;
select *from department;
select *from faculity;
select *from cource;
select *from enrollment1;




