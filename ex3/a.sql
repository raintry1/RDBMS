create database prectical3;
use prectical3;

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
(7, "steve roger", "male", "2026-08-07", 91, "steverogers@mail.com", "9876543216"),
(8, "natasha", "female", "2026-08-07", 96, "natasha@mail.com", "9876543217"),
(9, "wanda", "female", "2026-08-07", 98, "wanda@mail.com", "9876543218"),
(10, "thor", "male", "2026-08-07", 89, "thor@mail.com", "9876543219");

select *from student;

select studentname from student ;

select studentid from student  where studentid between 8 and 10;

select *from student where gender in ('male');

select distinct studentid from student;

select *from student where studentid=1;

select *from student where persentage>95;

select *from student where studentname like 'n%';
select *from student where studentname like '%a';
select *from student where studentname like '_a%';
select *from student where studentname like 'w___a';
select *from student where studentname like '_a___';
select *from student where studentname like 'n%a';
select *from student where studentname like 'n___%';

select *from student where studentid=8 and persentage=96;
select *from student where studentid=8 or persentage=98;
select *from student where  not gender='male';

select studentid as id , persentage+5 as marks from student;

select *from student where email is null;

select *from student;


select *from student order by studentname;
select *from student order by studentname desc;

select *from student limit 5;
select count(*) as totalstudent from student;


select *from student;
