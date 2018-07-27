describe Clients;
describe Services;
describe Employees;
describe Wages;

alter table wages add working_hour number(3);
alter table wages modify working_hour integer;
alter table wages rename column working_hour to working_hours;
alter table wages drop column working_hours;

select * from Services;
select * from Clients;
select * from Employees;
select * from Wages;
select Income from services where Income>5000;
select (sysdate-entry_date)/365 as Period from Employees ;

update Employees set Employee_Name='Rana Mia' where ID='R-100';
delete from Employees where ID='R-107';