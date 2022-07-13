create database student_management;
use student_management;
create table class (
id int primary key auto_increment,
`name` varchar(45)
);
insert into class (`name`) values ('le hong son'),('nguyen tan tai');
select * from class;
create table teacher (
id int primary key auto_increment,
`name` varchar(45),
age int,
country varchar(45)
);
insert into teacher (`name`,age,country) values ('le hong son', 24 , 'viet nam'),('nguyen tan tai', 26, 'trung quoc');
select * from teacher;
