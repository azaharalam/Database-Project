drop table Services;

create table Services(Serial_No number(4) not null,Booking_Date varchar(12) not null,Service_Date varchar(12) not null,
	Client_Name varchar(15) not null,Contact_No number(11) not null,People number(6) not null,Community_Center varchar(15) ,
	Type Varchar(12) not null,Rate number(2) not null,Income number(6) not null, Advance number(6) not null, Wages_given number(6) not null,
	Gross_Profit Number(6) not null);