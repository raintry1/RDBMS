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
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (1,"rain","male","2026-08-07",99,"raim@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (2,"aayush","male","2026-08-07",99,"aayush@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (3,"aayushi","female","2026-08-07",99,"aayushi@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (4,"ramia","female","2026-08-07",99,"ramia@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (5,"yuvraj","male","2026-08-07",99,"yuvraj@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (6,"om","male","2026-08-07",99,"om@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (7,"tnisha","female","2026-08-07",99,"tnisha@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (8,"anarkli","female","2026-08-07",99,"anarkli@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (9,"mogembo","male","2026-08-07",99,"mogembo@mail.com",1234567890);
insert into student (studentid,studentname,gender,dob,persentage,email,mobile) values (10,"ghost","male","2026-08-07",99,"ghost@mail.com",1234567890);

select *from student;


create table department
(
deptid int primary key,
deptname varchar(100) not null,
location varchar(100)
);
insert into department(deptid,deptname,location)values(101,"computer","2nd flor");
insert into department(deptid,deptname,location)values(102,"civil","2nd flor");
insert into department(deptid,deptname,location)values(103,"electriacal","3nd flor");
insert into department(deptid,deptname,location)values(104,"macheical","1nd flor");
insert into department(deptid,deptname,location)values(105,"chemical","2nd flor");

select *from department;


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
insert into faculity (fid,faculityname,designation,salary,deptid) values (1,"rahul","teacher","20000",101);
insert into faculity (fid,faculityname,designation,salary,deptid) values (2,"ram","teacher","20000",102);
insert into faculity (fid,faculityname,designation,salary,deptid) values (3,"khush","teacher","20000",103);
insert into faculity (fid,faculityname,designation,salary,deptid) values (4,"mhesh","teacher","20000",104);
insert into faculity (fid,faculityname,designation,salary,deptid) values (5,"kausal","teacher","20000",105);

select *from faculity;

create table cource
(
courceid int primary key,
coursename varchar(100)
);

insert into cource (courceid,coursename)values(1,"computer");
insert into cource (courceid,coursename)values(2,"civil");
insert into cource (courceid,coursename)values(3,"mecheniacal");
insert into cource (courceid,coursename)values(4,"chemical");
insert into cource (courceid,coursename)values(5,"electriacal");

select *from cource;

create table enrollment1
(
enrollid int primary key,
courceid int,
foreign key (courceid)
references cource(courceid)
);

insert into enrollment1(enrollid,courceid)values(1,1);
insert into enrollment1(enrollid,courceid)values(2,2);
insert into enrollment1(enrollid,courceid)values(3,3);
insert into enrollment1(enrollid,courceid)values(4,4);
insert into enrollment1(enrollid,courceid)values(5,5);

select *from enrollment1;

select *from student;
select *from department;
select *from faculity;
select *from cource;
select *from enrollment1;





