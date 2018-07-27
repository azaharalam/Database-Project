insert into Clients(Serial_No,Name,Contact_No,Email,Address,Suggested_By) values(Clients_Serial.nextval,'Sorfuddin ',01713544562,'Sorrf@gmail.com','Kamar Para','Hazi Nafees');
insert into Clients(Serial_No,Name,Contact_No,Email,Address,Suggested_By) values(Clients_Serial.nextval,'Jhontu',01712234125,Null,'Kamar Para',Null);
insert into Clients(Serial_No,Name,Contact_No,Email,Address,Suggested_By) values(Clients_Serial.nextval,'Tahsin',01712557562,'Tahsin@gmail.com','Adarsha para','Tamim');
insert into Clients(Serial_No,Name,Contact_No,Email,Address,Suggested_By) values(Clients_Serial.nextval,'Dipto',01712544761,'Dipto@gmail.com','Kamal Kachhna','Munna');
insert into Clients(Serial_No,Name,Contact_No,Email,Address,Suggested_By) values(Clients_Serial.nextval,'Ahmed',01521304249,Null,Null,Null);


insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(Services_Serial.nextval,to_date('01-01-2018','DD-MM-YYYY'),to_date('01-01-2018','DD-MM-YYYY'),1,1000,'Zilla porisod' ,'Marriage',20,Null);
insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(Services_Serial.nextval,to_date('10-01-2018','DD-MM-YYYY'),to_date('11-01-2018','DD-MM-YYYY'),2,100,'Zilla Porisod','Picnic',20,Null);
insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(Services_Serial.nextval,to_date('15-01-2018','DD-MM-YYYY'),to_date('16-01-2018','DD-MM-YYYY'),3,400,'Zilla Porisod','Marriage',20,Null);
insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(Services_Serial.nextval,to_date('22-01-2018','DD-MM-YYYY'),to_date('23-01-2018','DD-MM-YYYY'),4,500,'Zilla Porisod','Marriage',20,Null);
insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(Services_Serial.nextval,to_date('31-01-2018','DD-MM-YYYY'),to_date('01-02-2018','DD-MM-YYYY'),5,300,'Zilla Porisod','Marriage',20,Null);


insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-100','Rana',to_date('17-01-1995','DD-MM-YYYY'),'A','M',to_date('17-01-1978','DD-MM-YYYY'),01812533518,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-102','Rafee',to_date('17-01-2005','DD-MM-YYYY'),'A','M',to_date('17-01-1978','DD-MM-YYYY'),01512532518,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-103','Sobuj',to_date('17-01-2008','DD-MM-YYYY'),'B','M',to_date('17-01-1988','DD-MM-YYYY'),01712522518,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-105','Sabbir',to_date('17-01-2016','DD-MM-YYYY'),'B','M',to_date('17-01-1988','DD-MM-YYYY'),01712532218,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address)values(Employees_Serial.nextval,'R-104','Rana',to_date('17-01-2001','DD-MM-YYYY'),'C','M',to_date('17-01-1978','DD-MM-YYYY'),01712532028,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-101','Kona',to_date('17-01-2012','DD-MM-YYYY'),'C','M',to_date('17-01-1995','DD-MM-YYYY'),01712532222,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-106','Manik',to_date('17-01-2017','DD-MM-YYYY'),'C','M',to_date('17-01-1998','DD-MM-YYYY'),01712532234,null);
insert into Employees(Serial_No,ID,Employee_Name,Entry_Date,Category,Gender,Birthdate,Contact_No,Address) values(Employees_Serial.nextval,'R-107','Rony',to_date('17-01-2010','DD-MM-YYYY'),'C','M',to_date('17-01-1992','DD-MM-YYYY'),01712532891,null);

insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-100','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-102','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-105',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-104','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-103',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-106','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-101','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,1,1,'R-107',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,2,2,'R-104','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,2,2,'R-103',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,3,3,'R-100','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,3,3,'R-102','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,3,3,'R-105',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,4,4,'R-104','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,4,4,'R-103',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,4,4,'R-100','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,4,4,'R-102','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,5,5,'R-105',null);
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,5,5,'R-104','Sobuj');
insert into Wages(serial_no,Services_ID ,Clients_Id ,Employee_ID,Reference_Name) values(Wages_Serial.nextVal,5,5,'R-103',null);

insert into Income(Serial_No,Service_ID) values(Income_serial.nextval,1);
insert into Income(Serial_No,Service_ID) values(Income_serial.nextval,2);
insert into Income(Serial_No,Service_ID) values(Income_serial.nextval,3);
insert into Income(Serial_No,Service_ID) values(Income_serial.nextval,4);
insert into Income(Serial_No,Service_ID) values(Income_serial.nextval,5);

commit;