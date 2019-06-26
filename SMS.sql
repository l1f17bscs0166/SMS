create database SMS;
use SMS;
create table Students
(Reg_no 	int(10)			PRIMARY KEY,
fname		varchar(20) 	NOT NULL,    
lname		varchar(20)		NOT NULL,    
CNIC		varchar(15)		NOT NULL,    
DOB			date			NOT NULL,    
Gender		varchar(6)		NOT NULL,    
Address		varchar(50)		NOT NULL,    
Reg_date	date			NOT NULL    
);
CREATE TABLE S_Phone_No
(
Reg_no		int(10),
Ph_no		int(10),
PRIMARY KEY(Reg_no,Ph_no)
);
CREATE TABLE Teachers
(
teacher_id		int(10)		PRIMARY KEY,
dob	 			Date		NOT NULL,
gender			varchar(10)	NOT NULL,    
fname			varchar(30)	NOT NULL,    
lname			varchar(30)	NOT NULL,    
cnic			int(20)		NOT NULL,    
age				int(30)		NOT NULL,    
salary			int(30)		NOT NULL,    
desgination		varchar(30)	NOT NULL,    
marital_st		varchar(30)	NOT NULL,    
Sub_ID			int(10)		NOT NULL
);
CREATE TABLE T_Phone_No
(
T_id		int(10)		NOT NULL,
Phone		int(10)		NOT NULL,
PRIMARY KEY(T_id, Phone)
);
CREATE TABLE Subjects
(
subject_id		int(10)			PRIMARY KEY,
title			varchar(30)		NOT NULL,
Group_type 		varchar(30) 	NOT NULL,    
CL_id			int(10)			NOT NULL	
);

CREATE TABLE Section
(
section_id		int(20)		PRIMARY KEY,
section_name	varchar(20)	NOT NULL,    
no_of_student	int(20)		NOT NULL,    			
CT_ID			int(10)		NOT NULL
);

CREATE TABLE Timetable
(
room_no		int(30)		NOT NULL,    
C_time		time		NOT NULL,    
day			varchar(20)	NOT NULL,    
T_id		int(10)		not null,
sub_id		int(10)		not null,
sec_id		int(10)		not null
);

CREATE TABLE Class
(
class_id		int(10)		PRIMARY KEY,
class_fee		int(50)		NOT NULL    
);

CREATE TABLE Guardian
(
Reg_no		int(10)			NOT NULL,	
Ph_no    	int(10)			NOT NULL, 	
address		varchar(30)		NOT NULL,    
fname		varchar(30)		NOT NULL,    
lname		varchar(30)		NOT NULL,    
cnic	 	int(20)			NOT NULL,    
email		varchar(30)		NOT NULL,    
relation	varchar(30)		NOT NULL,    
PRIMARY KEY(Reg_no,cnic)
);

CREATE TABLE Fee
(
Nettotal	int(20) 	NOT NULL,    
fine	 	int(20)		NOT NULL,    
charges	 	int(20)		NOT NULL,    
Type  		varchar(20)	NOT NULL,    
discount	int(20)		NOT NULL,
Reg_No		int(10)		NOT NULL,
CL_id		int(10)		NOT NULL,
PRIMARY KEY(Reg_No, CL_id)
);

CREATE TABLE Result
(
firstterm	int(20)	NOT NULL,    
secondterm	int(20)	NOT NULL,    
thirdterm	int(20)	NOT NULL,    
fourthterm	int(20)	NOT NULL,    
QA			int(20)	NOT NULL,    
Finals		int(20)	NOT NULL,
Reg_no		int(10)	NOT NULL,
TID 			int(10)	NOT NULL,
primary key(Reg_no,TID)
);

create table studies
(
reg_no int(10),
sub_id int(10)
);

Alter table S_phone_no add constraint foreign key (reg_no) references students(reg_no);
Alter table guardian add constraint foreign key (reg_no) references students(reg_no);
Alter table Result add constraint foreign key (reg_no) references students(reg_no);
Alter table T_phone_no add constraint foreign key (T_id) references teachers(teacher_id);
Alter table Fee add constraint foreign key (cl_id) references class(class_id);
Alter table Subjects add constraint foreign key (cl_id) references class(class_id);
Alter table teachers add constraint foreign key (sub_id) references Subjects (subject_id);
Alter table section add constraint foreign key (CT_id) references  teachers (teacher_id);
Alter table timetable add constraint foreign key (sub_id) references subjects(subject_id);
Alter table timetable add constraint foreign key (T_id) references teachers(teacher_id);
Alter table timetable add constraint foreign key (sec_id) references section(section_id);
Alter table timetable add constraint primary key(room_no,C_time,day);
Alter table studies add constraint foreign key (reg_no) references students(reg_no);
Alter table studies add constraint foreign key (sub_id) references subjects(subject_id);