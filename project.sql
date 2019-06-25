create database school_system;

use school_system;
create table student(
studentrollno int (10) primary key,
dob int (10) not null,
gender varchar(10)not null,
address varchar(30)not null,
fname varchar(30)not null,
lname varchar(30)not null,
cnic int(20)not null,
age int(30)not null,
reg_date int (30) not null,
class_id int(30)not null);



create table section(
section_id int (20) primary key not null,
section_name int(20) not null,
no_of_student int(20) not null);

create table class(
class_id int (30) not null primary key,
class_fee int(50) not null);


create table guardian(
p_no int(10) primary key not null,
studentrollno int(10)not null,
gender varchar(10)not null,
address varchar(30)not null,
fname varchar(30)not null,
lname varchar(30)not null,
cnic int(20)not null,
email varchar(30)not null,
relation varchar(30)not null);

create table subjects(
subject_id int (30)primary key not null,
title varchar(30) not null,
class_id int (10) not null,
groups varchar (30) not null);


create table teacher(
teacher_id int (10) primary key,
dob int (10) not null,
gender varchar(10)not null,
address varchar(30)not null,
fname varchar(30)not null,
lname varchar(30)not null,
cnic int(20)not null,
age int(30)not null,
salary int (30) not null,
desgination int(30)not null,
marital_st varchar(30)not null);


create table timetable(
room_no int(30) not null,
teacher_id int (10),
subject_id int (30),
section_id int (20)not null,
time int (30)not null,
day varchar(20)not null,
primary key (teacher_id,subject_id));

create table fee_structure(
class_id int (10) primary key,
fee int (20)not null);

create table fee(
class_id int (10) primary key,
studentrollno int (10),
nettotal int (20)not null,
fine int (20)not null,
charges int (20)not null,
type int (20)not null,
discount int (20)not null);

create table results(
studentrollno int (10)not null,
subject_id int (10)not null,
firstterm int (20) not null,
secongterm int (20) not null,
thirdterm int (20) not null,
fourthterm int (20) not null);








