drop table Wages;
drop table Income;
drop table Services;
drop table Employees;
drop table Clients;


drop sequence Services_Serial;
drop sequence Clients_Serial;
drop sequence Employees_Serial;
drop sequence Wages_Serial;
drop sequence Income_Serial;

create table Clients(
	Serial_No number(4) not null,
	Name varchar(15) not null,
	Contact_No number(11) not null unique,
	Email varchar(24),
	Address varchar(20),
	Services_Provided number(2) default 1,
	Suggested_By varchar(20),
	primary key(Serial_No));

create sequence Clients_Serial 
	start with 1 
	increment by 1 
	maxvalue 9999 
	nocycle 
	nocache ;

create table Services(
	Serial_No number(4) not null,
	Booking_Date date not null,
	Service_Date date not null,
	Client_Id Number(4) not null,
	People number(6) not null,
	Community_Center varchar(15) ,
	Type Varchar(12) not null,
	Rate number(2) not null,
	Advance number(6) default 0,
	primary key (Serial_No), 
	foreign key(Client_Id) References Clients(Serial_No) on delete cascade);

create sequence Services_Serial 
	start with 1 
	increment by 1 
	maxvalue 9999 
	nocycle 
	nocache;

create table Employees(
	Serial_No number(4) not null,
	ID varchar(6) not null,
	Employee_Name varchar(15) not null,
	Entry_Date date not null,
	Category varchar(10),
	Gender Varchar(10) default 'Male' not null,
	Birthdate date ,
	Age number(5,2),
	Contact_No number(11) unique,
	Address Varchar(15) ,
	Primary Key (ID));

create sequence Employees_Serial 
	start with 1 
	increment by 1 
	maxvalue 9999 
	nocycle 
	nocache;

create table Wages(
	serial_no number(4) not null,
	Service_Date Date , 
	Services_ID number(4) not null,
	Clients_Id number(4) not null,
	Employee_ID varchar(6) not null,
	wage number(5),
	Payment_date date,
	Reference_Name Varchar(15),
	foreign key(Employee_ID)References Employees(ID) on delete cascade,
	foreign key(Services_ID)References Services(Serial_No) on delete cascade,
	foreign key(Clients_Id) References Clients(Serial_No) on delete cascade);


create sequence Wages_Serial
	start with 1
	increment by 1
	maxvalue 9999
	nocycle 
	nocache;



create table Income(
	Serial_No number(4) not null,
	Service_ID Number not null,
	Income number(6), 
	Wages_given number(6),
	Gross_Profit Number(6)
	);


create sequence Income_Serial
	start with 1
	increment by 1
	maxvalue 9999
	nocycle 
	nocache;

commit ;
