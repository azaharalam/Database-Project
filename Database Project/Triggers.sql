

--Trigger for Number of services given.


set serveroutput on

create or replace trigger services_given
before insert on services
for each row

declare
 nosp number(4);
begin
    select services_provided into nosp from Clients where Serial_no=:new.Client_ID;
    nosp:=nosp+1;
    update Clients set Services_provided=nosp where Serial_no=:new.Client_ID;
end;



--Trigger for enter age


set serveroutput on

create or replace trigger setAge
before insert on Employees
for each row

declare
	dur number(5,2);

begin

    :new.Age:=(sysdate-:new.Birthdate)/365;
    dur:=(sysdate-:new.Entry_Date)/365;

    if(dur<5) then 
    	:new.Category:='C';
    elsif(dur<10) then
    	:new.Category:='B';
    else
    	:new.Category:='A';
    end if;
    
end;


--TRIGGER for setWage



create or replace trigger setWage
before insert on Wages
for each row

declare
	empID varchar(20);
	cat varchar(10);
	serviceID number(4);
	serviceDate Wages.Service_Date%type;

begin
     empID:=:new.Employee_ID;
     select Category into cat from Employees where ID=empID;

     if(cat='A') then
     	:new.Wage:=1000;
     elsif(cat='B') then
     	:new.Wage:=800;
     else 
     	:new.Wage:=500;
     end if;
     
     :new.Payment_date:=sysdate;
     
     serviceID:=:new.Services_ID;
     
     select Service_date into serviceDate from Services where serial_no=serviceID;
     :new.Service_date:=serviceDate;
    
end;



--Trigger for Income


create or replace trigger setIncome
before insert on Income
for each row

declare
	ServiceID number (4);
	rate number(2);
	ppl number(4);
	sm number(6);

begin
     ServiceID:=:new.Service_ID;
     select People  , Rate into ppl, rate from Services where Serial_no=ServiceID;
     :new.Income:=ppl*rate;

     select sum(wage) into sm from wages where services_ID=ServiceID; 
		     
     :new.Wages_Given:=sm;
     
     :new.Gross_Profit:=ppl*rate-sm;
     
 
end;



