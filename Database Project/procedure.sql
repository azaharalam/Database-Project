create or replace procedure e_count
is
	cnt number(2);
begin
	select count(employee_name) into cnt from employee;
	dbms_output.put_line('number ' || cnt);
end;

set serveroutput on;
begin
	e_count;
end;
/


