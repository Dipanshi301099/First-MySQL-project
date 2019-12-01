create database firstcollege;

use firstcollege;

create table Faculty(Fid int, Fname varchar(100), Qualification varchar(50), Deptid int);
create table student(Sid int, Sname varchar(100), Branch varchar(50), marks int);
create table department(deptid int, dname varchar(20));

insert into Faculty values(1, 'Aman','B.Tech',1);
insert into Faculty values(2, 'Mohan','M.Tech',1);
insert into Faculty values(3, 'Vishal','M.Tech',2);
insert into Faculty values(4, 'Priya','Ph.D',2);
insert into Faculty values(5, 'Ravi','Ph.D',3);
insert into Faculty values(6, 'Aarti','M.Tech',2);

select * from Faculty;

insert into student values(1, 'Lalit','IT', 75);
insert into student values(2, 'Mahesh','IT', 90);
insert into student values(3, 'Sagar','CSE', 92);
insert into student values(4, 'Arun','CSE', 45);
insert into student values(5, 'shikha','ECE', 56);
insert into student values(6, 'Anand','ECE', 78);
insert into student values(7, 'Parul','IT', 82);

select * from student;

insert into department values(1,'IT');
insert into department values(2,'CSE');
insert into department values(3,'ECE');

select * from department;

select fid, fname from faculty;

select branch from student;
select distinct branch from student;

select distinct qualification, deptid from faculty;

select fid, fname from faculty where qualification='B.Tech'; 

select * from student;

select * from student order by sname;
select * from student order by sname desc;
select * from student order by sname desc, marks asc;


select * from faculty order by qualification;
select * from faculty order by field(qualification,'M.tech','Ph.D','B.Tech');

select * from department;

insert into department values(4,'EEE');
select * from department;
insert into department values(5,'ICE');
select * from department;

update department
set dname = 'Applied Sc.'
where deptid = 5;

select * from department;

delete from department
where deptid = 5;

select * from department;

delete from department
where deptid = 3;

select * from department;

delete from department
limit 2;
select * from department;